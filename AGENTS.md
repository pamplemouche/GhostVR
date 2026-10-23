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

## Environment notes

- The patchers are memory hungry on the large bundles; run them under
  `ulimit -v` and keep them streaming/mmap based.
- `hermes-dec` and `hbctool` (pip) are useful references for the v61 layout but
  do not parse v53 at all.
