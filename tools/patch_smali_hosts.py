#!/usr/bin/env python3
"""Repoint every Meta host literal left in the decompiled smali.

The APK trees already carry a first round of repatching, committed in HEAD.
This script finishes the job: it rewrites the remaining Meta host constants --
certificate-pin domains, the MQTT/analytics endpoints, the Facebook SDK's
internal hosts, the `fburl.com` shorteners, the install-time CDN, the Oculus
identity and support links, and the developer-docs URLs -- so that no request
can leave for a Meta server.

Only whole string literals are touched, and only the host part of them.  A
host must sit on a boundary, so Android package names such as
`com.oculus.companion.server` and event keys such as `oculus_twilight_*` are
never rewritten.

Run from the repository root:  python3 tools/patch_smali_hosts.py [--dry-run]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"

HOST = "ghostvr.pamplemouche.com"

# A Meta host with optional subdomains, plus the already-rewritten host so the
# script is idempotent. Samsung's device-registration/telemetry service is
# included because the setup wizard talks to it for registration and policy;
# it is retired, so those calls only ever time out and retry.
META_HOST = r"(?:[A-Za-z0-9_-]+\.)*(?:oculus|facebook)\.com|fbcdn\.net|fbsbx\.com|fburl\.com"
SAMSUNG_HOST = r"(?:stg-api|regi|dc)\.di\.atlas\.samsung\.com"
HOSTS = rf"(?:{META_HOST}|{SAMSUNG_HOST})"

# Reject a host that is really part of a longer name: `oculus.companion` in
# `com.oculus.companion.server`, `facebook.common` in a factory key.
_BOUNDARY = r"(?![A-Za-z0-9_-])(?!\.[A-Za-z0-9_-])"

# Paths that have a canonical equivalent in the app (see SERVER_REQUESTS.md).
PATH_MAP = {
    "privacy": "www/legal/privacy-policy",
    "terms": "www/legal/terms-of-service",
    "warnings": "www/legal/health-and-safety-warnings",
    "policy": "www/legal/privacy-policy",
    "quest-setup": "www/legal/privacy-policy",
    "legal/thirdpartynotices": "www/legal/thirdpartynotices",
    "legal/privacy-policy": "www/legal/privacy-policy",
    "legal/terms-of-service": "www/legal/terms-of-service",
    "legal/health-and-safety-warnings": "www/legal/health-and-safety-warnings",
    "legal/store-credits": "www/legal/store-credits",
}

# `https://<meta-host>/<path>` and the scheme-relative and bare forms.
_SCHEME_LINK = re.compile(rf"https?://(?:[A-Za-z0-9_-]+\.)*({HOSTS})(\\*)/([A-Za-z0-9_/.-]*){_BOUNDARY}")
_SCHEME_BARE = re.compile(rf"https?://(?:[A-Za-z0-9_-]+\.)*({HOSTS}){_BOUNDARY}")
_BARE_LINK = re.compile(rf"({HOSTS})(\\*)/([A-Za-z0-9_/.-]+){_BOUNDARY}")
_BARE_HOST = re.compile(rf"({HOSTS}){_BOUNDARY}")


def _path_for(host: str, path: str) -> str:
    mapped = PATH_MAP.get(path, path)
    if host.startswith("support.") and not mapped.startswith("support/"):
        return f"support/{mapped}"
    return mapped


def _scheme_link(match: re.Match) -> str:
    host, slashes, path = match.group(1), match.group(2), match.group(3)
    return f"https://{HOST}{slashes}/{_path_for(host, path)}"


def _bare_link(match: re.Match) -> str:
    host, slashes, path = match.group(1), match.group(2), match.group(3)
    return f"{HOST}{slashes}/{_path_for(host, path)}"


RULES = [
    (_SCHEME_LINK, _scheme_link),
    (_SCHEME_BARE, lambda m: f"https://{HOST}"),
    (_BARE_LINK, _bare_link),
    (_BARE_HOST, lambda m: HOST),
]

QUOTED = re.compile(r'"(?P<body>(?:[^"\\]|\\.)*)"')

# Files that must keep their Meta host literals. `IntentModule` holds the
# redirect table itself: it matches those hosts and rewrites the URL onto our
# backend, so patching the table away would disable the redirect.
SKIP_FILES = {
    Path("Oculus/smali_classes2/com/facebook/react/modules/intent/IntentModule.smali"),
}


def patch_file(path: Path, dry_run: bool):
    if path.relative_to(DECOMPILED) in SKIP_FILES:
        return []
    original = path.read_text(encoding="utf-8", errors="surrogateescape")
    changes = []

    def repl(match: re.Match) -> str:
        body = match.group("body")
        updated = body
        for pattern, replacement in RULES:
            updated = pattern.sub(replacement, updated)
        if updated == body:
            return match.group(0)
        changes.append((body, updated))
        return f'"{updated}"'

    updated = QUOTED.sub(repl, original)
    if updated != original and not dry_run:
        path.write_text(updated, encoding="utf-8", errors="surrogateescape")
    return changes


def main() -> int:
    dry = "--dry-run" in sys.argv
    total = 0
    for path in sorted(DECOMPILED.rglob("*.smali")):
        for old, new in patch_file(path, dry):
            print(f"{path.relative_to(ROOT)}\n    {old}\n -> {new}")
            total += 1
    print(f"\n{'[dry-run] ' if dry else ''}{total} literal(s) repatched")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
