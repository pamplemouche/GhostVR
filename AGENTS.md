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

Validation patterns count as hosts too. `CustomApiEndpointValidator` compiled
three regexes in its static initializer, two of which still pinned the
`graph.<tier>.oculus.com` dev tiers for the "disable certificate check" path.
`isDisabledUriValid()`/`isDisableHostNameValid()` have no callers left in this
build, so they are inert, but the pattern is a real string constant and now
points at the self-hosted host like the others.

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

## GraphQL queries arrive with `<placeholder>` tokens, not values

The client never interpolates its own documents. `ApiDispatcher.smali` holds the
query literals with `<placeholder>` tokens intact and sends the values in a
sibling `query_params` field, which `GraphQLParamsHelper.encodeParams()` builds
from the request's `getParams()` map. The real server expands them; a self-hosted
one has to as well.

`substitutePlaceholders()` in the worker does that before anything reads the
query. Without it the section id was the literal `<category>`, so `nodeIdOf()`
matched nothing, the store fell back to the whole catalogue, and every paging
request answered all 562 items at once - `.first(<count>)` and `.after(<cursor>)`
were both invisible.

Two shapes matter:

- A flat string value (`category`, `count`, `cursor`, `pic_dimension`, ...) is
  substituted verbatim.
- A nested map is inlined as JSON. `app_binary_update(<params>)` carries
  `params = {app_id, installed_version_code}`, so the expanded document contains
  `{"app_id":"gv:.."}` and the key is **quoted** - the readers that pull values
  out of it have to accept `"app_id"` as well as `app_id`.

`appIdOf()`, `storeSectionResponse()` and `storeItemResponse()` each expand the
document themselves, because `graphqlResponse()` dispatches to them before it
has the expanded query in hand.

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


## Binary patchers: never patch in place without checking the result

The repatching scripts rewrite host strings inside native libraries, and a host
that is longer than the one it replaces overruns into whatever follows. In a
packed `.rodata` run that neighbour is the *next* host string, which has no
relocation entry, so the overrun silently fuses the two:
`ghostvr.pamplemouchostvr.pamplemouche.com/`. That shipped once and caused a
hard startup crash in OCMS.

Two rules follow, and both are enforced by `tools/check_patched_tree.py`:

- **A required dependency must not degrade to "skip the safety check".**
  `capstone` was an optional import in `pc_relative_addresses()`; without it the
  function returned an empty set, every constant looked unreachable, and the
  corruption assertions compared against nothing. It is now a hard requirement
  (`tools/requirements.txt`) and raises on import failure. When a check cannot
  run, fail the build - do not return "nothing found".
- **When a value grows, handle the next patch target, not just reachable
  data.** `patch_library()` relocated *reachable* neighbours that a longer
  value would overwrite, but a later patch target sitting in the same packed
  run was neither reachable nor relocated, so its own write landed on top of
  the new value. It is now dropped and its surviving tail blanked.

`check_patched_tree.py` looks for the failure directly: a NUL-free run of 40+
bytes naming the host twice. Run it after any patcher change. It also checks
for Meta hosts left in `.so`, smali literals and Hermes bundles, with a
per-file baseline in `tools/patched_tree_baseline.txt` so a *new* problem fails
while the known backlog does not.

## Hermes bundles: two layouts, only one handled

`HorizonBundle.js.hbc` is bytecode version 61; the `Oculus Home` React Native
bundles are version 53. `patch_hermes_bundle.py` parses v61 (header size 97,
`sizeof(SmallFuncHeader)` 16, counts at file offset 40). The v53 header puts its
counts elsewhere, and the layout could not be confirmed, so those bundles are
skipped and their remaining hosts are baselined. Do not guess the v53 offsets -
a wrong table offset corrupts the bundle, which is a hard startup failure.
`hermes-dec`/`hbctool` do not parse v53 either.

## Local account: there is none

`src/index.js` used to fall back to a canned identity (`USER_ID`/`ACCESS_TOKEN`)
whenever nobody was signed in, so a wrong password still returned a valid
session and the login screen was decorative. The account now comes only from
`POST https://arc.pamplemouche.com/api/login`.

## The session lives in the token, never in module state

`currentUser` used to be a module-level variable. That is wrong on Workers: a
module is not a process, so each request may be served by a different isolate
and isolates are evicted at will. The login set the variable in one isolate and
every later request landed elsewhere, read "signed out", and bounced the client
back to login - the resync loop that made the core service look like it was
crashing on a timer. Reproduced in `tools/tests/test_backend.mjs` by importing
the worker twice and switching between the two instances.

Two carriers now hold the session, both HMAC-signed with `SESSION_SECRET`:

- the bearer token, which is what the app actually uses; and
- a cookie, for the browser.

The token matters most. `OculusAuthorizationInterceptor.getAuthorization()`
reads the access token out of the app's own credential store and
`Authorization.generate()` sends it as `Bearer <token>`; the app never sends or
reads cookies for its API calls, and `AuthDatastore` is interface-only here, so
nothing is persisted server-side. The token is also opaque to the client -
`AccessTokenUtils` only *builds* the logged-out form `OC|appId|loginToken`, it
never parses one - so the session rides inside it:

```
OC|<base64url(json payload)>|<hmac sha256>
```

`fetch` accepts either carrier (`sessionFromToken` then `sessionFromRequest`)
and every handler takes the resulting `session` as its last argument. When you
add a route that answers with a viewer or profile payload, thread `session`
through the same way; there is no `requireSession()` helper, and reading module
state again would reintroduce the loop.

The PIN flag rides in the session too, because `change_pin` and the following
`MeManager.refresh()` can land on different isolates.

## Samsung's DI service is part of the setup wizard

`com.samsung.android.app.vrsetupwizard` registers the headset with Samsung and
fetches a policy document from `*.di.atlas.samsung.com` before the wizard
completes. The service is retired, so the call could only time out and be
retried. `patch_smali_hosts.py` rewrites those three hosts and
`check_patched_tree.py` fails on any that remain. The policy parser
(`com.samsung.a.a.a.a.e.a`) requires `rc == 1000` and then reads `rint`, `lgt`,
`dom`, `uri`, `bat-uri`, `dq-w`, `oq-w`, `dq-3g`, `oq-3g` with unguarded
accessors - a partial body throws inside the parser, so all of them must be
present.

## The bundle hosts are mostly cosmetic, not reachable

Before treating a Meta host left in a Hermes bundle as a live leak, check
whether the runtime redirect already covers it. `IntentModule.rewriteExternalUrl`
rewrites any host equal to, or ending in, `.oculus.com` / `.facebook.com`, and
it is called from both network paths:

- `NetworkingModule.sendRequestInternal` - every JS `fetch`/XHR.
- `IntentModule.openURL` - every link-out.

So a JS request to `graph.oculus.com` never leaves for Meta even though the
bundle still names it. `tools/check_bundle_coverage.py` splits the remaining
hosts into "rewritten at runtime" and "not covered" so the backlog is not
re-read by hand. As of this writing: 15 distinct hosts, 14 rewritten, and only
`fburl.com` uncovered - and that one appears solely in user-facing help and
developer-doc text, not as a request target.

The same split holds for the 203 findings in `tools/patched_tree_baseline.txt`:
re-derived by host, all but the 13 `fburl.com` hits name a host the runtime rule
rewrites. The `fburl.com` hits are literal "Internal Only: ... see
fburl.com/TestReport" strings in report-abuse dialogs. So the backlog is
cosmetic in full, and the baseline carries that note so it is not re-opened as
a leak.

Two consequences:

- The unpatched v53 bundles are **not** a functional blocker. Native-side
  requests are covered by the `.so`/smali patching (the tree is clean there).
- `rewriteExternalUrl` is hand-written and had inverted branches once already.
  Its host array is fixed at 4 and its loop bound is hard-coded at 2, so adding
  a host means changing both. Do not touch it to close a cosmetic text-link
  leak; the risk is to the redirect everything else depends on.

## The store is served from a generated catalogue, not the static table

`src/store_data.js` is generated from `data/vault_catalogue.json` by
`tools/build_store_payload.py` and imported by the worker. It holds every Gear
VR title the vault knows about (562 as of this writing), keyed by a `gv:<id>`
item id. Regenerate it after refreshing the catalogue:

    python3 tools/fetch_vault_catalogue.py      # -> data/vault_catalogue.json
    python3 tools/build_store_payload.py        # -> src/store_data.js

The store's three GraphQL surfaces are answered from it in `graphqlResponse`:

- `viewer() { app_store { sections } }` - `appStorePayload()`. Note the static
  `GRAPHQL_PAYLOAD` has `app_store` at the *top level*, but the query asks for it
  under `viewer`, and the viewer branch only carries `VIEWER_ONLY_FIELDS`; so it
  has to be rebuilt here or the store home renders no sections at all.
- `node(<category>) { all_items.first(n).after(c) }` - `storeSectionResponse()`.
  Cursors are plain offsets; `.first()`/`.after()` must be honoured or the first
  request pulls a whole section and `has_next_page` lies.
- `app_binary_update(app_id: <id>) { new_binary { uri } }` - the install URI.

APK hosting: the binaries are ~100 MB each and there are hundreds, so they
cannot live in git (100 MB per-file limit). The URI handed out is the vault URL
(`https://vault.gearvr.net/APK/<pkg>.apk`) unless `apk_base` is set in
`src/store_data.js`, in which case that origin wins. The client accepts any
HTTPS origin: `fb_network_security_config.xml` trusts the system store and
allows cleartext, and the store download does not go through the
certificate-pinning helper. To self-host, pass `--apk-base` to the builder.

Item nodes must satisfy `Item.isValidApplication()`, which the store's
`StoreUtils.filterForSupportedItems` calls before rendering: `__typename` must
be exactly `"Application"` and `latest_supported_binary.package_name` must be
non-null. A node failing that check is silently dropped, so a wrong `__typename`
looks exactly like an empty store.

### Checking that every requested field is answered

A field the client selects and the worker does not return is `undefined` in the
Relay store, and the screen that reads it throws rather than degrading - which
on-device shows up as a blank screen or a crash with no useful log. The client's
own documents are the specification, and they are all present in the tree:

    python3 tools/check_query_coverage.py                      # against production
    python3 tools/check_query_coverage.py --base http://127.0.0.1:8791

It extracts the long query literals from `ApiDispatcher.smali`, substitutes the
`<placeholder>` arguments, posts each to the worker and walks the response
alongside the parsed query, reporting every requested field that came back
missing. Two Oculus-specific spellings need care and the parser handles them:
`field.arg(value)` is an argument (not a child selection) and `... as alias`
renames one.

It reports `0 missing field(s)` as of this writing. The allow-list
`NOT_IN_MODEL` holds the three names the client asks for but has no class field
to deserialize into (`sku`, `account_creation_time`, `reachability_data`), so
nothing can read them; each entry is annotated with where it was checked.

Fields worth knowing about, because each one is a crash rather than a blank:

- `current_offer` - `StoreUtils.createStoreItemModel` reads
  `current_offer.price` with **no null check on `current_offer`**, so a null
  there is a NullPointerException while building every tile in the list. It must
  be a real object; the catalogue is free, so it is priced at zero.
- `cinema_video` - read as an object by the detail view; a missing key throws.
- `required_input_device` - selected by the list query. It was being deleted
  from the shallow list response to save bytes, which is not worth it for a
  single null: the field went undefined in the store.
- `linked_accounts_info.facebook_account.needs_password_to_unlink` - the static
  `GRAPHQL_PAYLOAD` also carries `linked_accounts_info` and wins over
  `linkedAccounts()`, so the table copy has to hold every `FBConnectAccount`
  field too.

## Gatekeepers: the Home menu is gated, and the request shape matters

`oculus_vrshell_enable_system_utilities` is the gatekeeper behind the Home
pull-out menu (`HorizonGatekeeperFetcherModule.getSystemUtilitiesEnabled()`).
It is served to the shell by the phone app's `GatekeeperContentProvider`, which
reads it from `/features`.

The VR shell does **not** use the Retrofit `projects[]` spelling. It builds its
own request (`GateKeepers.gkList` + `GK_API_PATH = "features"`):

    /features?projects[0]=<gk>&projects[1]=<gk>&...

and parses the reply as `data[0].results[i]` with `JSONArray.getBoolean(i)`
(`GateKeepers$3`). Matching only `projects[]` therefore saw zero projects,
answered an empty `results`, and `getBoolean(i)` threw - which left *every*
gatekeeper false, including the menu. `gatekeeperProjects()` now accepts
`projects[N]`, `projects[]` and comma-joined values.

The phone app's `projects[]` spelling repeats the key, one entry per project.
`URLSearchParams.keys()` yields a repeated key once per occurrence, so iterating
it and calling `getAll()` returned the values N times and `results` grew to N*N
entries. The client zips `results` positionally against the names it asked for,
so the extra entries were read as values for projects that were never requested.
`gatekeeperProjects()` de-duplicates the keys and orders indexed keys by their
index rather than by query-string order.

The enabled set is a deliberate allow-list, not "everything": turning on a
feature whose backend does not exist swaps a hidden surface for a crash.
Live-video, messenger, party calls, Skyline multi-device and Worlds stay off.

## Crash reports are the only diagnostic for on-device failures

There is no debugger on the headset. The client's bug reporter POSTs to
`/oculus/report_bug`, and on a crash it includes the stack trace.
`handleBugReport()` logs the body to the Worker invocation log, so it is
recoverable with `wrangler tail`. When a surface crashes, reproduce it and read
the trace there before guessing at the response shape.

A JSON body on an *image* path is not "no picture" - it is an undecodable
stream and the image loader throws. `profile_photo.uri`, `avatar_image.uri` and
the store's cover art must all resolve to real PNG bytes (`handleAvatar()`).
