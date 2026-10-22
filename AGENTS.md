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

## Environment notes

- The patchers are memory hungry on the large bundles; run them under
  `ulimit -v` and keep them streaming/mmap based.
- `hermes-dec` and `hbctool` (pip) are useful references for the v61 layout but
  do not parse v53 at all.
