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


# --- The runtime rewrite table -------------------------------------------
#
# `IntentModule.rewriteExternalUrl` is the only thing that stops a JS request
# to a Meta host from leaving the device: the bundles still name those hosts,
# and they are Hermes bytecode that `patch_hermes_bundle.py` cannot rewrite.
# The literals in the method are therefore load-bearing, and the coverage
# checker in `check_bundle_coverage.py` has to mirror them exactly.  These
# tests read both files and fail if they drift apart.

import re as _re  # noqa: E402

INTENT_MODULE = (
    ROOT / "decompiled/Oculus/smali_classes2/com/facebook/react/modules/"
    "intent/IntentModule.smali"
)


def _rewrite_body() -> str:
    src = INTENT_MODULE.read_text(encoding="utf-8", errors="surrogateescape")
    return _re.search(
        r"\.method public static rewriteExternalUrl.*?\n(.*?)\n\.end method",
        src, _re.S,
    ).group(1)


def _rewrite_table() -> tuple[list[str], list[str]]:
    """The (bare, suffix) pairs the patched method tests, read from the smali."""
    literals = _re.findall(r'const-string v6, "([^"]*)"', _rewrite_body())
    return literals[0::2], literals[1::2]


def test_rewrite_table_covers_every_bundle_host() -> None:
    import check_bundle_coverage as coverage

    bare, suffix = _rewrite_table()
    assert coverage.BARE == tuple(bare), (coverage.BARE, bare)
    assert coverage.SUFFIXES == tuple(suffix), (coverage.SUFFIXES, suffix)
    for host in coverage.hosts_in_bundles():
        assert coverage.is_rewritten(host), (
            f"{host.decode()} is named in a bundle but the rewrite misses it"
        )


def test_rewrite_table_matches_its_array_size() -> None:
    # A mismatch here means the loop would walk off the end of the array, or
    # silently ignore the last pair.
    body = _rewrite_body()
    size = int(
        _re.search(r"const/(?:4|16) v4, 0x([0-9a-f]+)", body).group(1), 16
    )
    bound = int(
        _re.findall(r"const/4 v5, 0x([0-9a-f]+)\n\n    if-ge v3, v5", body)[-1], 16
    )
    bare, suffix = _rewrite_table()
    assert len(bare) == len(suffix), (bare, suffix)
    assert size == len(bare) + len(suffix), (size, bare, suffix)
    assert bound == size // 2, (bound, size)


def test_rewrite_covers_instagram_and_fburl() -> None:
    # The hosts the coverage checker used to miss.
    import check_bundle_coverage as coverage

    for host in (b"api.instagram.com", b"www.instagram.com", b"fburl.com"):
        assert coverage.is_rewritten(host), host


def test_rewrite_leaves_foreign_hosts_alone() -> None:
    import check_bundle_coverage as coverage

    for host in (b"example.com", b"notinstagram.com.evil.com", b"github.com"):
        assert not coverage.is_rewritten(host), host


# --- The tree-wide scan coverage -----------------------------------------
#
# The sweep used to walk only the file kinds a patcher rewrites (`.so`, `.hbc`,
# `.bcbundle`, `.smali`).  A Meta host can also sit in a payload no patcher
# touches - Chromium's `resources.pak`, a resource XML - where a silent
# re-introduction was invisible to CI.  These tests pin that the remainder is
# scanned too, so the blind spot cannot come back.

def test_scan_extends_beyond_patched_file_kinds() -> None:
    # The declared set must not be everything, or the extra sweep is a no-op.
    assert ".pak" not in checker.PATCHED_SUFFIXES
    assert ".xml" not in checker.PATCHED_SUFFIXES


def test_unpatched_file_kind_is_scanned() -> None:
    with tempfile.TemporaryDirectory() as tmp:
        path = Path(tmp) / "resources.pak"
        path.write_bytes(b"\x00https://www.facebook.com\x00")
        findings: list[str] = []
        checker.check_meta_hosts(path, findings)
        assert findings, "a host in a .pak must be reported"


def test_patched_kind_is_not_double_counted() -> None:
    # A `.smali` host is reported once, by the smali pass.  The extra sweep
    # must skip the patched kinds or every finding would count twice.
    assert checker.PATCHED_SUFFIXES == {".so", ".hbc", ".bcbundle", ".smali"}


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
