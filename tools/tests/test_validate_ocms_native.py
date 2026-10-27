#!/usr/bin/env python3
"""Regression tests for the OCMS native-library validator.

`validate_ocms_native.py` is only useful if it actually fails on a broken
library.  Each test below mutates a real OCMS library in memory and asserts the
validator reports the fault, plus one clean case that must stay silent.

Run from the repository root:  python3 tools/tests/test_validate_ocms_native.py
"""

from __future__ import annotations

import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
sys.path.insert(0, str(ROOT / "tools"))

import validate_ocms_native as validator  # noqa: E402

SAMPLE = (
    ROOT
    / "decompiled"
    / "Oculus Core Mobile Services"
    / "lib"
    / "armeabi-v7a"
    / "libxplat_mobileconfig_FBMobileConfigCore_FBMobileConfigCoreAndroid.so"
)

HOST = b"ghostvr.pamplemouche.com/"


def _findings(blob: bytes) -> list[str]:
    with tempfile.TemporaryDirectory() as tmp:
        path = Path(tmp) / "sample.so"
        path.write_bytes(blob)
        report = validator.Report()
        validator.check_library(path, report)
        return report.findings


def test_clean_library_is_silent() -> None:
    assert _findings(SAMPLE.read_bytes()) == []


def test_true_fusion_is_reported() -> None:
    data = bytearray(SAMPLE.read_bytes())
    first = data.find(HOST)
    second = data.find(HOST, first + 1)
    assert second > 0, "sample must carry two adjacent host strings"
    # Fill the whole gap so the two strings become one NUL-free run.
    data[first + len(HOST) : second] = b"/" * (second - first - len(HOST))
    findings = _findings(bytes(data))
    assert any("fused string" in f for f in findings), findings


def test_truncated_fragment_is_reported() -> None:
    data = bytearray(SAMPLE.read_bytes())
    off = data.find(HOST)
    data[off : off + 22] = b"ghostvr.pampl"
    findings = _findings(bytes(data))
    assert any("truncated host fragment" in f for f in findings), findings


def test_meta_host_is_reported() -> None:
    data = bytearray(SAMPLE.read_bytes())
    off = data.find(b"ghostvr.pamplemouche.com")
    width = len(b"ghostvr.pamplemouche.com")
    data[off : off + width] = b"graph.oculus.com".ljust(width, b"x")
    findings = _findings(bytes(data))
    assert any("Meta host still present" in f for f in findings), findings


def test_unterminated_host_at_eof_is_reported() -> None:
    data = bytearray(SAMPLE.read_bytes())
    off = data.find(HOST)
    findings = _findings(bytes(data[: off + len(HOST)]))
    assert any("runs to EOF" in f for f in findings), findings


def test_java_package_names_are_not_hosts() -> None:
    # `com.facebook.common.manifest` is a package, not a server; it must not be
    # reported even though it matches the Meta-host pattern.
    assert validator.NOT_A_HOST
    findings = _findings(SAMPLE.read_bytes())
    assert not any("com.facebook" in f for f in findings), findings


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
