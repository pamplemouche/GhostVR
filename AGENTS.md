# GhostVR

Repatch of the Oculus Gear VR APK so every server request goes to the
self-hosted backend `ghostvr.pamplemouche.com` (a Cloudflare Worker in
`src/index.js`) instead of Meta's servers.

## Layout

- `src/index.js` - the Worker. Single entry point, `fetch` dispatches on path.
- `tools/` - offline patch scripts run against the decompiled trees.
- `decompiled/` - apktool output for the Oculus apps (~1.1 GB, tracked).

## Patch tools

Run from the repository root. Every tool supports `--dry-run`; prefer it first.
Pass absolute paths when patching a single file, otherwise the tool falls back
to its default file list.

| Tool | Target |
| --- | --- |
| `tools/patch_smali_hosts.py` | host literals in `smali*/` |
| `tools/patch_resources.py` | `res/` string and XML resources |
| `tools/patch_native_libs.py` | hosts inside `lib/**/*.so` |
| `tools/patch_certificate_pinning.py` | network security config / pinning |
| `tools/patch_hermes_bundle.py` | React Native Hermes bundles |
| `tools/check_graphql_payload.py` | `/graphql` answers vs. client models |

`patch_smali_hosts.py` skips `IntentModule.smali`: that file holds the runtime
redirect table itself, so rewriting its `oculus.com` / `facebook.com` literals
would disable the link-out redirect instead of extending it.

## Hermes bundles

The React Native surfaces (Home, Store, Settings, ...) ship as Hermes bytecode
containers with two layouts:

- version 61 (`.hbc`) - 4-byte string table entries. Supported.
- version 53 (`.bcbundle`) - 8-byte string table entries. Not yet supported.

`patch_hermes_bundle.py` validates that a container's string table decodes
cleanly before touching it and skips containers it cannot parse. Guessing at an
unverified layout corrupts the bundle, and a corrupt bundle is a hard startup
failure, so never relax this check to force a patch through.

Two traps have already shipped a corrupt bundle once:

- A string-table `length` counts UTF-16 code units, not bytes. A UTF-16 entry
  therefore occupies `2 * length` bytes in the arena. Range computations must
  use the byte span, or they under-run and clobber the neighbouring strings.
- `HorizonBundle.js.hbc` has a completely full string arena (no free byte) and
  its function bodies store **absolute** file offsets (they are not a separate
  offset space), so the arena cannot be grown in place without rewriting every
  function header. The tool now refuses to write instead of corrupting the
  file. Repointing that bundle needs a real recompile of the JS, not a patch.

Neither bundle can be repointed by rewriting its string table, and that is
fine: none of the Meta URLs left inside them are on a request path.

- The bundles do not store a GraphQL host. They read `graphURI` /
  `graphBatchURI` out of the `RelayAPIConfig` native module, so patching
  `RelayAPIConfigModule` redirects all of their Relay traffic.
- The remaining literals are link-out targets (marketing, legal, support). Our
  host is longer than Meta's, so they cannot be patched in place either.

Link-outs are instead rewritten at runtime, in
`com/facebook/react/modules/intent/IntentModule.rewriteExternalUrl`. It is
called from `openURL` (the funnel the `IntentAndroid` module exposes to the
bundles) and from `NetworkingModule.sendRequestInternal` (the funnel for fetch
and XHR), and replaces an `oculus.com` / `facebook.com` host (bare or as a
subdomain) with the self-hosted host while preserving scheme, path and query.
Note the matcher tests the *host component*, not a substring: a substring test
for `.oculus.com` also rewrites `our.intern.facebook.com` and would let the
path of `nfe.prefeitura.sp.gov.br` masquerade as a host.

The container header (`BytecodeFileHeader`) is 97 bytes and is padded to a
64-byte boundary before the function headers:

```
align(97, 64) + functionCount*16 + stringKindCount*4 + identifierCount*4
```

then align to 4, then the string table, the overflow table, and the storage.

## Structured host attributes

A bare hostname is required in some resource positions, and a path there is a
hard parse failure that aborts the app at startup. `patch_resources.py` keeps
`<domain>` bodies (network security config) and `android:host` (manifest intent
filters) bare, moving any path to a sibling `android:pathPrefix`. Do not let a
plain host rewrite rule append `/support` inside those positions.

## Subdomain templates in smali

Some hosts are assembled at runtime rather than stored whole, so rewriting the
host literal alone leaves a dead subdomain in front of it:

- `ServerProtocol.getDialogAuthority()` formatted `m.%s`, and
  `getGraphUrlBase()`/`getGraphVideoUrlBase()` formatted `https://graph.%s`.
  With `FacebookSdk.FACEBOOK_COM` pointing at the self-hosted host these
  produced `m.ghostvr.pamplemouche.com` and `graph.ghostvr.pamplemouche.com`,
  neither of which resolves. The OAuth dialog is built from the first one, so
  the sign-in page silently failed to load. Both are now `%s`.
- `RelayAPIConfigModule.getGraphURI` prepends a `mGraphSubdomain` field plus a
  literal `.` to the host. Emptying the field is not enough: the builder still
  emits `https://.ghostvr.pamplemouche.com/...`, and a leading-dot label makes
  the name unresolvable (the same failure `getDialogAuthority()` had). The
  method now appends `mGraphDomain` directly. `HorizonReactPackage$22` passes an
  empty subdomain, so both the `/graphql` and `/graphqlbatch` URIs it hands to
  the React Native bundles are correct.

That method is the only source of the Relay endpoint for the Hermes bundles:
every `reactnative.*.bcbundle` and `HorizonBundle.js.hbc` reads `graphURI` /
`graphBatchURI` out of the `RelayAPIConfig` native module rather than storing a
host of its own. Fixing it redirects the whole JS GraphQL surface, so the Meta
hosts that remain inside those bundles (a `graph.{tier}.oculus.com` template and
several marketing/legal links) are not on the request path.

When adding a host, grep the smali for `%s`-style templates and for fields named
`*Subdomain` / `*_FORMAT` before assuming the rewrite is complete. Dead
`private static final` format fields still matter: they are real string
constants that a rebuild keeps in the dex, and a future call site would pick
them up.

## Native library patching

`tools/patch_native_libs.py` patches two ways:

- A hand-written `PATCHES` table of `(library, vaddr, replacement)` for the
  libraries whose strings grow (the OVR Platform SDK and avatar SDK). Growth is
  safe only when the neighbours are unreachable, which the script proves by
  checking relocation slots, pointer tables and pc-relative references, moving
  any reachable neighbour into spare `.rodata`.
- `--scan` plus automatic discovery for every other `.so` in every app. The
  replacement here is padded to the original length, so it can never spill into
  a neighbour and needs no reachability analysis. This is what covers the
  OCMS and `x86` copies, which the table alone missed.

`--scan` is the source of truth for what is left; the run asserts on it at the
end. The regex has to cover the whole Meta label set, not just
`oculus`/`facebook`: `flash-graph.camera-app.net`, `graph.onavo.com`,
`z-graph.expresswifi.com` and `graph.facebook-program.com` sit in the same
mobileconfig host list. A too-narrow regex lets the assertion pass while a Meta
host survives.

Two strings are deliberately left alone: `s3.amazonaws.com/o.oculuscdn.com/...`
is an S3 bucket path rather than a Meta server, and `git-ro.vip.facebook.com` is
build metadata inside a compiler banner. Re-running the patcher must be a no-op;
confirm with `md5sum` over `decompiled/**/*.so` before and after.

## Backend routes

`src/index.js` serves the self-hosted endpoint. Two details that are easy to
get wrong:

- Relay batches operations into a single `POST /graphqlbatch` with a JSON
  **array** body. `graphqlResponse` expects the parameter-shaped object that
  `readParams` produces, so each entry has to be flattened through
  `asQueryParams` first; passing the raw entry throws `params.get is not a
  function`.
- The router matches paths by prefix, so `/graphql` is checked after
  `/graphqlbatch`. Reordering those two silently misroutes every batch.

## Authentication

The real accounts live on the Pamplemouche backend (`arc.pamplemouche.com`,
`POST /api/login {username, password}`). The Oculus client only knows
"email + password", so the pseudo is typed into the email field and forwarded
as `username`; `handleAuthLogin` calls `arcLogin()` and keeps the returned
identity in a module-level `currentUser`, the same way `pinIsSet` works.
`identity()` and `accessToken()` read it, so every viewer/profile payload and
every token reflects the signed-in account; `handleLogout` clears it.

A failed login is not fatal. The app still needs a session to reach its offline
surfaces, so `arcLogin` returning `null` leaves the fallback identity in place
rather than answering an error.

Two client-side validators block a pseudo shorter than an email/8-char password
before the request is ever sent, so both were relaxed:

- `EmailValidator.validate` no longer runs `Patterns.EMAIL_ADDRESS`; it rejects
  only null/blank, so a pseudo passes.
- `PasswordValidator.validate` drops the minimum from 8 to 4 and drops the
  `ContainsUsername` check, because a pseudo is not an email.

`/pamp/` is the per-user passthrough to the Pamplemouche API. `/pamp/me`
answers the identity, coin balance and loadout in one body; every other
`/pamp/<path>` is forwarded verbatim to `${ARC_BASE}/api/<path>` with the
session's bearer token, so the shop can grow without touching the Worker.

## Onboarding roadblocks

`RoadblocksHelper` in the `Oculus` tree gates the main screen. `MainActivity
.onPostResume()` calls `checkRoadblocks()` on every resume, and the helper
returns early the moment one roadblock applies. Two consequences:

- `shouldShowPinRoadblock()` reads `MeManager.me().is_pin_set`, which
  `MeManager.reloadFromPersistentStore()` rebuilds from the **server** response
  on every refresh. The PIN step does persist `setPinSet(true)` locally
  (`UserRoadblockIntroActivity.onActivityResult`), but the next `refresh()`
  overwrites it, so an unset `is_pin_set` re-shows the "Create Oculus PIN"
  screen forever.
- Every roadblock *after* the PIN one was unreachable while the PIN gate always
  fired. `UserRoadblockHSWShowChecker.shouldShowRoadblock()` returns `true` by
  default, so clearing only the PIN gate just moves the loop to the HSW /
  controller roadblock. `checkRoadblocks()` is a no-op here, and
  `shouldShowPinRoadblock()` returns `false`, so setup lands on `MainActivity`.

The backend also flips `is_pin_set` to `true` after `POST /change_pin` so a
fresh install does not depend on the client patch alone.

## Gatekeeper refresh

`GET /features` answers `ConfigUpdater.fetchAsync()`, which `afterLoginAsync()`
runs right after login and which `forceUpdateConfigAsync()` runs on every
config refresh. The response body is `{ data: [ { results: [...] } ] }` and
`RefreshGatekeepersResponse$Data.results` is a positional `List<Boolean>`, one
entry per requested `projects[]` value - not a map keyed by gatekeeper name.

`ConfigUpdater.onRefreshGatekeepers()` asserts
`values.size() == names.size()` (`Preconditions.checkArgument`) while iterating
the names, and the Retrofit callback executor is
`retrofit/android/MainThreadExecutor`, so a short list throws on the UI thread
and takes the process down. The handler used to return an empty `results` for
every request, which is exactly that crash on the first post-login refresh.
`handleFeatures` now echoes one boolean per requested project.

Values matter as much as the count: `ConfigController.getGatekeeper(name)`
defaults to `false` for anything the server does not set, and
`FragmentFactoryImpl.newDefaultFragment()` opens the feed fragment only when
`oculus_horizon_feed_default` is true - otherwise the home screen becomes the
store. `ENABLED_GATEKEEPERS` therefore turns the two feed gates on and leaves
every other gate at its default.

## GraphQL response envelope

`ApiResponseConverter` (`com/oculus/http/core/ApiResponseConverter`) decides the
envelope, and it has two modes:

- The target type is annotated `@SingleEntryMapResponse` (`UserInfoResponse`,
  `FeedResponse`'s siblings, `UniversalSearchResponse`, ...). The body is
  deserialized as a `Map<String, T>`, and `getObjectFromJsonMapResponse` then
  requires **exactly one** entry and returns its value. The key itself is
  discarded, so the name does not matter - only that there is one.
- The target type is not annotated. The body is deserialized straight onto the
  class, so the JSON keys must be the class's own `@SerializedName` values.

A body of `{<rootField>: VALUE}` satisfies both at once:

- plain class      -> `VALUE` is read off the field named `<rootField>`
- annotated class  -> the single key is dropped and `VALUE` becomes the class

`graphqlResponse()` therefore returns `{ [root]: GRAPHQL_PAYLOAD }`, where
`GRAPHQL_PAYLOAD` is a superset built from every `/graphql` response class in
the decompiled trees (fields, nested types and enum defaults). The root field
comes from `rootFieldOf()`, which handles both shapes the app emits:
`query { viewer { .. } }` and the call-style `me() { .. }` / `node(<id>) { .. }`.

Two envelope bugs were fixed here, and both produced the same user-visible
failure - every screen fell into its error branch and rendered
`common_error_generic_title` ("Une erreur s'est produite."):

- The old body was `{data: {...}}`. Annotated classes unwrapped to `{...}`
  (the inner object), which then lacked the root key; plain classes read a
  non-existent `data` field. Neither matched.
- The old `graphqlResponse` keyword-matched the query and returned only the
  roots it recognised, so a `viewer` object could arrive without `feed`.

Because the payload is one module-level literal, a per-request field like
`is_pin_set` has to be applied at read time. `applyPinState()` walks the object
and flips `is_pin_set` when `pinIsSet` is set; without it `MeManager.refresh()`
would overwrite the local pin flag from a frozen `false` and re-show the
"Create Oculus PIN" roadblock forever.

The same literal is identity-free, so `graphqlResponse()` also has to fold in
the signed-in user at read time. It is not enough to overlay four keys onto
whatever subtree the payload happens to have: `viewer`, `me`, `user` and `node`
all address the signed-in user, and each is deserialized into a different
class, so each needs the full `viewerUser()` shape merged on top of its own
fields:

- `node(<user_id>)` (`SocialMethods.getProfile` -> `ProfileFragment`) is the
  crash that mattered. Its result goes to `ProfileHeaderViewHolder`, which
  dereferences `name`, `profile_photo.uri`, `avatar_image.uri`,
  `online_platforms`, `friend_status`, `presence_status` and `mutual_friends`.
  The payload's `node` entry used to hold only `{default_applications: []}`, so
  every one of those reads was a null deref.
- `node(<application_id>)` (`SocialMethods.getAchievements` ->
  `AchievementsResponse`) wants `display_name`, `cover_landscape_image` and
  `grouping.achievement_definitions.nodes` on the *same* root, so the table's
  `node` subtree is merged in underneath the user shape and each query reads
  only the keys it asked for.
- `viewer` additionally keeps its privacy/feed block (`VIEWER_ONLY_FIELDS`);
  merging the user shape over the whole payload would otherwise drop it.

`viewer.user` needs the full shape too - `MyUserProfileResponse.Viewer.user` is
a concrete `User`. Verify the whole thing by replaying the real query strings
from `SocialMethods.smali` through `worker.fetch`, not with a synthetic
`viewer { ... }`.

Verify with the invariants, not by eye:

- every `/graphql` response class has exactly one public field whose
  `@SerializedName` exists as a top-level key in `GRAPHQL_PAYLOAD`;
- for a plain (non-annotated) class the payload key must equal that class's own
  root field, because the body is mapped directly onto it;
- no plain class declares more than one field (otherwise a single-key body
  could not satisfy it).

Some fields are genuinely nullable and every consumer null-guards them:
`current_party` (`PlatformPluginManager$5`, `PartyCallManagerImpl$6`) and
`default_digital_payment_method`. Those stay `null` rather than empty objects.

The same "concrete POJO, no null check" rule applies to types, not just keys,
and a wrong type is as fatal as a missing key. Gson throws
`JsonSyntaxException` when a scalar lands on an object field (or the reverse),
and that surfaces as the same generic error screen. `GRAPHQL_PAYLOAD` used to
carry several such mismatches - `user_quality_rating` as the string `"UNKNOWN"`
where `Item$AndroidBinary` declares `Item$QualityRating`, `notifications` as an
array where `User` declares `User$GameInviteList`, `app_binary_info` as an
array where the field is `AppBinaryInfo`, `cloud_file_wildcards` and
`app_binary_updates` as objects missing their nested key, `query_map_from_uuid`
and `mutation_upload_map` as arrays where the fields are objects. Every value
now matches its declared type, and the nullable ones (`user_quality_rating`,
`head_tracking`) are `null` so no nested object has to be invented.

Check this with `tools/check_graphql_payload.py`, not by eye: for every
`/graphql` response class it walks the payload the same way the client
deserializes it and asserts each value's JSON kind against the declared field
type (enums must be one of the enum's constants, lists must be arrays, objects
must recurse). It exits non-zero on any mismatch.

## Is the Home UI server-served?

No. The VR shell (`Oculus Home`) ships its React Native and ReactVR surfaces as
local assets (`assets/src/...`, `reactnative.HOME.bcbundle`,
`reactnative.STORE.bcbundle`) and `Oculus Home/smali` contains no remote bundle
URL. The phone app is the same: `HorizonBundle.js.hbc` is local. Neither shell
fetches its UI from a server.

What *is* server-driven is the data those surfaces render. The bundles hold no
GraphQL host; they read `graphURI` / `graphBatchURI` from the `RelayAPIConfig`
native module, so pointing that module at the backend redirects every Relay
call. The remaining Meta URLs inside the bundles are link-outs, not data
fetches. There is therefore nothing to re-host for the UI itself - the app
already renders its own screens and only needs the endpoints to answer.

## Environment notes

- The patchers are memory hungry on the large bundles; run them under
  `ulimit -v` and keep them streaming/mmap based.
- `hermes-dec` and `hbctool` (pip) are useful references for the v61 layout but
  do not parse v53 at all.

## Hand-written smali: branch polarity

Only two methods in the whole tree are hand-written rather than decompiler
output - `EmailValidator.validate` and `IntentModule.rewriteExternalUrl`. A
decompiler names its labels `:cond_N` / `:goto_N`; descriptive names
(`:ret`, `:done`, `:invalid`, `:host_loop`) mean a human wrote it. To find them
again, flag any method whose labels are not all `cond|goto|try_start|try_end|
pswitch|sswitch|array|catch`.

Both were written with the branch conditions inverted, which is easy to do
because the mnemonics are backwards from the Java they replace:

- `if-eqz` branches when the value **is zero/null**
- `if-nez` branches when the value **is non-zero/non-null**
- `if-gez` branches when the value is **`>= 0`**
- `if-ltz` branches when the value is **`< 0`**

`if-ltz`/`if-gez` are the trap: `lt`/`ge` describe the *fall-through* case, not
the branch. The originals confirm it - `EmailValidator` used
`if-nez` after `Matcher.matches()` to mean "did not match", and
`CameraRollManager` uses `if-ltz` after `indexOf` to mean "not found". A
reliable way to check an edit is to transcribe the method's opcodes into a
throwaway interpreter and run the real inputs through it.

The two bugs this caused were both silent and total:

- `EmailValidator.validate` ended up rejecting *every* non-empty string, so
  both a pseudo and a real address produced "Veuillez saisir une adresse e-mail
  valide" with no way past the login screen.
- `rewriteExternalUrl` returned its input unchanged for every URL, so the whole
  runtime redirect (fetch/XHR via `NetworkingModule`, link-outs via
  `IntentModule.openURL`) was dead while appearing installed.

