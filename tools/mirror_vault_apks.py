#!/usr/bin/env python3
"""Mirror the Gear VR APKs off vault.gearvr.net onto storage we control.

The vault has to stay the source of truth for *metadata* (it is someone else's
site and we must not proxy it), but the binaries should not be hot-linked
forever either: a ~100 MB download per install, several hundred titles, and an
origin we do not own. This copies them somewhere we do.

Storage is whatever `--dest` points at:

    --dest ./mirror              a local directory
    --dest r2://ghostvr-apk      a Cloudflare R2 bucket, via `wrangler r2`

After mirroring, point the worker at the copy:

    python3 tools/build_store_payload.py --apk-base https://apk.example.com

`--apk-base` is written into `src/store_data.js`, and `apkUri()` prefers it over
the vault URL. Nothing else changes.

The run is resumable: an object that is already present at the right size is
skipped, so an interrupted mirror can simply be re-run. `--limit` mirrors only
the first N entries, which is what to use for a smoke test.

Usage:
    python3 tools/mirror_vault_apks.py --dest ./mirror --limit 2
    python3 tools/mirror_vault_apks.py --dest r2://ghostvr-apk --workers 4
"""

from __future__ import annotations

import argparse
import concurrent.futures
import json
import shutil
import subprocess
import sys
import urllib.error
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
CATALOGUE = ROOT / "data" / "vault_catalogue.json"
VAULT_BASE = "https://vault.gearvr.net/APK"

# The vault rejects the default urllib agent on some paths; it is a WordPress
# site behind a CDN, so present a normal browser UA.
HEADERS = {"User-Agent": "Mozilla/5.0 (compatible; GhostVR-mirror/1.0)"}


class Destination:
    """Where a mirrored APK goes. One implementation per scheme."""

    def exists(self, key: str, size: int) -> bool:
        raise NotImplementedError

    def put(self, key: str, path: Path) -> None:
        raise NotImplementedError

    def describe(self, key: str) -> str:
        raise NotImplementedError


class LocalDestination(Destination):
    def __init__(self, root: Path) -> None:
        self.root = root
        self.root.mkdir(parents=True, exist_ok=True)

    def exists(self, key: str, size: int) -> bool:
        target = self.root / key
        return target.exists() and target.stat().st_size == size

    def put(self, key: str, path: Path) -> None:
        shutil.copy2(path, self.root / key)

    def describe(self, key: str) -> str:
        return str(self.root / key)


class R2Destination(Destination):
    """Cloudflare R2 through the wrangler CLI, so no extra credentials."""

    def __init__(self, bucket: str) -> None:
        self.bucket = bucket

    def _list(self) -> set[str]:
        try:
            out = subprocess.run(
                ["npx", "--yes", "wrangler", "r2", "object", "list", self.bucket, "--json"],
                capture_output=True, text=True, check=True,
            ).stdout
            return {entry["key"] for entry in json.loads(out or "[]")}
        except (subprocess.CalledProcessError, json.JSONDecodeError, FileNotFoundError):
            # An unreadable listing just means nothing is known to exist; the
            # upload is idempotent, so re-uploading is safe, only slower.
            return set()

    def exists(self, key: str, size: int) -> bool:
        return key in self._list()

    def put(self, key: str, path: Path) -> None:
        subprocess.run(
            ["npx", "--yes", "wrangler", "r2", "object", "put",
             f"{self.bucket}/{key}", "--file", str(path)],
            check=True,
        )

    def describe(self, key: str) -> str:
        return f"r2://{self.bucket}/{key}"


def make_destination(spec: str) -> Destination:
    if spec.startswith("r2://"):
        return R2Destination(spec[len("r2://"):].strip("/"))
    return LocalDestination(Path(spec).expanduser().resolve())


def remote_size(url: str) -> int | None:
    """Content-Length of a vault APK, or None if the server will not say."""
    request = urllib.request.Request(url, headers=HEADERS, method="HEAD")
    try:
        with urllib.request.urlopen(request, timeout=60) as response:
            length = response.headers.get("Content-Length")
            return int(length) if length else None
    except (urllib.error.URLError, ValueError):
        return None


def download(url: str, target: Path) -> int:
    """Download to a temporary file, then rename, so a partial file is never
    mistaken for a complete one by the skip-if-present check."""
    partial = target.with_suffix(target.suffix + ".part")
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=600) as response, partial.open("wb") as out:
        shutil.copyfileobj(response, out, length=1024 * 1024)
    partial.replace(target)
    return target.stat().st_size


def mirror_one(entry: tuple[str, dict], dest: Destination, cache: Path, dry_run: bool) -> str:
    package, info = entry
    apk = info["apk"]
    url = f"{VAULT_BASE}/{apk}"

    expected = remote_size(url)
    if expected is None:
        return f"skip  {apk}: vault did not report a size"

    if dest.exists(apk, expected):
        return f"have  {apk} ({expected / 1048576:.0f} MiB)"
    if dry_run:
        return f"would {apk} ({expected / 1048576:.0f} MiB)"

    try:
        got = download(url, cache / apk)
    except (urllib.error.URLError, OSError) as error:
        return f"FAIL  {apk}: {error}"

    if got != expected:
        return f"FAIL  {apk}: got {got} bytes, expected {expected}"
    dest.put(apk, cache / apk)
    (cache / apk).unlink()
    return f"ok    {apk} ({got / 1048576:.0f} MiB)"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dest", required=True, help="directory, or r2://<bucket>")
    parser.add_argument("--catalogue", type=Path, default=CATALOGUE)
    parser.add_argument("--workers", type=int, default=2, help="parallel downloads")
    parser.add_argument("--limit", type=int, default=0, help="only the first N (0 = all)")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    if not args.catalogue.exists():
        print(f"no catalogue at {args.catalogue}; run tools/fetch_vault_catalogue.py first",
              file=sys.stderr)
        return 1

    catalogue = json.loads(args.catalogue.read_text(encoding="utf-8"))
    entries = sorted(catalogue.items())
    if args.limit:
        entries = entries[: args.limit]

    dest = make_destination(args.dest)
    cache = ROOT / ".mirror-cache"
    cache.mkdir(exist_ok=True)

    total = 0
    failures = 0
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        futures = [pool.submit(mirror_one, entry, dest, cache, args.dry_run) for entry in entries]
        for future in concurrent.futures.as_completed(futures):
            line = future.result()
            print(line, flush=True)
            if line.startswith("ok"):
                total += 1
            elif line.startswith("FAIL"):
                failures += 1

    print(f"\n{len(entries)} considered, {total} mirrored, {failures} failed")
    if failures:
        print("re-run to retry the failures; completed objects are skipped")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
