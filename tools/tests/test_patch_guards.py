#!/usr/bin/env python3
"""Regression tests for the binary-patch corruption guards.

`libchrome.so` shipped a fused host that the tree checker did not see, because
the rule required the host to survive twice in a NUL-free run and the fusion
left only one intact copy.  These tests pin the rule that catches it.

Run from the repository root:  python3 tools/tests/test_patch_guards.py
"""

from __future__ import annotations

import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "tools"))

import check_patched_tree as checker  # noqa: E402

HOST = b"ghostvr.pamplemouche.com"

# The bytes that shipped in `decompiled/Oculus Browser/lib/armeabi-v7a/libchrome.so`:
# three Facebook hosts were overwritten and their overruns landed on each other,
# so only the final host is intact.
FUSED = (
    b"www.gmail.com\x00"
    b"https://ghostvr.pampl"
    b"https://ghostvr.pamplemouche.c"
    b"ghostvr.pamplemoughostvr.pamplemouche.com\x00"
    b"\x00.doubleclick.com\x00"
)


def _findings(blob: bytes) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp:
        path = Path(tmp) / "sample.so"
        path.write_bytes(blob)
        findings: list[str] = []
        checker.check_fused(path, findings)
        return findings


def test_fused_blob_is_flagged() -> None:
    findings = _findings(FUSED)
    assert findings, "a fused host blob must be reported"
    assert any("truncated host fragment" in f for f in findings), findings


def test_single_occurrence_fusion_is_flagged() -> None:
    # Exactly the blind spot: one intact host, plus a mangled prefix, and the
    # run does not carry the host twice.
    blob = b"\x00https://ghostvr.pampl" + HOST + b"\x00"
    assert blob.count(HOST) == 1
    findings = _findings(blob)
    assert any("truncated host fragment" in f for f in findings), findings


def test_clean_strings_are_not_flagged() -> None:
    clean = (
        b"\x00" + HOST + b"\x00"
        b"https://" + HOST + b"\x00"
        b"stun:stun." + HOST + b":3478\x00"
        b"ovr_PlatformInitializeWithAccessToken: find your app ID at " + HOST + b".\x00"
        b"\x00"
    )
    assert _findings(clean) == [], _findings(clean)


def test_padded_host_is_not_flagged() -> None:
    # The OCMS mobileconfig libraries pad a shorter replacement with NULs.
    blob = b"\x00" + HOST + b"/\x00" + b"\x00" * 19 + HOST + b"/\x00"
    assert _findings(blob) == [], _findings(blob)


def test_leading_dot_host_is_not_flagged() -> None:
    # `.ghostvr.pamplemouche.com` is the cookie-domain form, and it mirrors the
    # `.facebook.com` literal it replaced.  It is a complete host, not a
    # fragment, so the guard must leave it alone.
    blob = b"\x00graph.\x00." + HOST + b"/\x00"
    assert _findings(blob) == [], _findings(blob)


def main() -> int:
    tests = [v for k, v in sorted(globals().items()) if k.startswith("test_")]
    failed = 0
    for test in tests:
        try:
            test()
            print(f"  ok   {test.__name__}")
        except AssertionError as error:
            failed += 1
            print(f"  FAIL {test.__name__}: {error}")
    print(f"\n{len(tests) - failed} passed, {failed} failed")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
