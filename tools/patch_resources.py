#!/usr/bin/env python3
"""Repoint Meta hosts in the decompiled resource files.

Smali and the native libraries are handled by their own scripts; what is left
are the user-facing help, legal and warning links in the resource bundles:
localised `strings.xml`, the Oculus Home translation JSON, and the Samsung
setup-wizard help text.  They are shown to the user and open a browser, so they
must not name a Meta host any more.

Run from the repository root:  python3 tools/patch_resources.py [--dry-run]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"

HOST = "ghostvr.pamplemouche.com"

# A Meta host, optionally with subdomains, plus the already-rewritten host so
# the script is idempotent.
META_HOST = r"(?:[A-Za-z0-9-]+\.)*(?:oculus|facebook)\.com"

# A host is only a host if it is not part of a longer name: the guard rejects
# `oculus.companion` in `com.oculus.companion.server`, while still accepting a
# host at the end of a sentence (`support.oculus.com.`).
_BOUNDARY = r"(?![A-Za-z0-9-])(?!\.[A-Za-z0-9-])"

# Canonical in-app paths, so the rewritten links match the scheme the smali
# already uses (see SERVER_REQUESTS.md).
PATH_MAP = {
    "privacy": "www/legal/privacy-policy",
    "terms": "www/legal/terms-of-service",
    "warnings": "www/legal/health-and-safety-warnings",
    "store-credits": "www/legal/store-credits",
    "legal/privacy-policy": "www/legal/privacy-policy",
    "legal/terms-of-service": "www/legal/terms-of-service",
    "legal/health-and-safety-warnings": "www/legal/health-and-safety-warnings",
    "legal/store-credits": "www/legal/store-credits",
}

# `{=oculus.com\\\\\/terms}` — host, a run of escaping backslashes, then path.
_LINK = re.compile(rf"({META_HOST})(\\*)/([A-Za-z0-9_/-]+){_BOUNDARY}")
# Same shape already on our host: canonicalise the path without re-adding /support.
_CANONICALISE = re.compile(rf"({HOST})(\\*)/([A-Za-z0-9_/-]+){_BOUNDARY}")
# A bare host with no path is the support index.
_SUPPORT = re.compile(rf"({META_HOST}){_BOUNDARY}")
_SCHEME = re.compile(rf"https://(?:www\.)?({META_HOST})/")


def _canonical(match: re.Match) -> str:
    host, slashes, path = match.group(1), match.group(2), match.group(3)
    # Links under support.<meta> keep their support section; other hosts map to
    # the canonical legal/warning paths.
    prefix = "support/" if host.startswith("support.") else ""
    return f"{HOST}{slashes}/{prefix}{PATH_MAP.get(path, path)}"


def _support(_match: re.Match) -> str:
    return f"{HOST}/support"


RULES = [
    (_LINK, _canonical),
    (_CANONICALISE, _canonical),
    (_SUPPORT, _support),
    (_SCHEME, rf"https://{HOST}/"),
]

TARGET_SUFFIXES = (".json", ".xml", ".txt")


def patch_file(path: Path, dry_run: bool):
    original = path.read_text(encoding="utf-8", errors="surrogateescape")
    updated = original
    for pattern, replacement in RULES:
        updated = pattern.sub(replacement, updated)
    if updated == original:
        return 0
    if not dry_run:
        path.write_text(updated, encoding="utf-8", errors="surrogateescape")
    return len([1 for a, b in zip(original.splitlines(), updated.splitlines()) if a != b])


def main() -> int:
    dry = "--dry-run" in sys.argv
    files = 0
    for path in sorted(DECOMPILED.rglob("*")):
        if not path.is_file() or not path.name.endswith(TARGET_SUFFIXES):
            continue
        if patch_file(path, dry):
            print(f"  {path.relative_to(ROOT)}")
            files += 1
    print(f"\n{'[dry-run] ' if dry else ''}{files} resource file(s) repatched")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
