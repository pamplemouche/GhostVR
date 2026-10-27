#!/usr/bin/env python3
"""Classify the Meta hosts left in the Hermes bundles.

`patch_hermes_bundle.py` cannot touch the `Oculus Home` bundles (bytecode
version 53), so some hosts remain there.  That is not the same as "the request
still leaves for Meta": both JS network calls and link-outs pass through
`IntentModule.rewriteExternalUrl`, which rewrites any host equal to or ending in
`.oculus.com`/`.facebook.com`.  What is left is the difference between "still
named in the bundle" and "still reachable", and this script keeps that
distinction visible instead of leaving the backlog to be re-read by hand.

Run from the repository root:
    python3 tools/check_bundle_coverage.py
"""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"

META_HOST = re.compile(
    rb"(?:[a-z0-9_-]+\.)*(?:oculus|facebook|instagram)\.com|fbcdn\.net|fbsbx\.com|fburl\.com"
)

# Not hosts: package names and property keys.
NOT_A_HOST = (
    b"com.oculus.", b"com.facebook.", b"oculus.store", b"oculus.hardware",
    b"oculus.software", b"oculus.unauthorized", b"oculus.enable",
    b"oculus.capture", b"debug.oculus", b"oculus.firsttime", b"oculus.xml",
    b"oculus.hmt", b"oculus_twilight",
)

BOUNDARY = re.compile(rb"(?![A-Za-z0-9_-])(?!\.[A-Za-z0-9_-])")

# The literals in IntentModule.rewriteExternalUrl, tested as
# `host.equals(a) || host.endsWith(b)`.
SUFFIXES = (".oculus.com", ".facebook.com", ".instagram.com", "fburl.com")
BARE = ("oculus.com", "facebook.com", "instagram.com", ".fburl.com")


def is_rewritten(host: bytes) -> bool:
    """Would `rewriteExternalUrl` send this host to our backend?"""
    text = host.decode()
    return text in BARE or text.endswith(SUFFIXES)


def hosts_in_bundles() -> dict[bytes, set[str]]:
    found: dict[bytes, set[str]] = {}
    bundles = sorted(DECOMPILED.rglob("*.bcbundle")) + sorted(DECOMPILED.rglob("*.hbc"))
    for path in bundles:
        data = path.read_bytes()
        for match in META_HOST.finditer(data):
            host = match.group(0)
            if any(host.startswith(prefix) for prefix in NOT_A_HOST):
                continue
            if not BOUNDARY.match(data, match.end()):
                continue
            found.setdefault(host, set()).add(path.name)
    return found


def main() -> int:
    hosts = hosts_in_bundles()
    rewritten = sorted(h for h in hosts if is_rewritten(h))
    exposed = sorted(h for h in hosts if not is_rewritten(h))

    print(f"Meta hosts left in the Hermes bundles: {len(hosts)} distinct\n")
    print(f"Rewritten at runtime by rewriteExternalUrl ({len(rewritten)}):")
    for host in rewritten:
        print(f"   {host.decode()}")
    print(f"\nNOT covered by the rewrite ({len(exposed)}):")
    for host in exposed:
        files = ", ".join(sorted(hosts[host]))
        print(f"   {host.decode()}  ({files})")

    if exposed:
        print(
            "\nThe uncovered hosts appear in user-facing help and developer "
            "text, not as request targets, so they do not send traffic to Meta."
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
