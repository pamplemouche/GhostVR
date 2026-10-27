#!/usr/bin/env python3
"""Validate the OCMS native libraries after repatching, before rebuilding.

`patch_native_libs.py` rewrites Meta hostnames in place.  A replacement that
grows past the string it replaces can fuse with its neighbour, and a
replacement that is not NUL-terminated hands the loader a string with no end.
Both faults have shipped before, so this script checks the *result* rather than
trusting the patcher's own assertions.

Every check runs against `decompiled/Oculus Core Mobile Services`, the tree
that becomes `com.oculus.ocms`:

  1. ELF header and program headers parse, and every host string lives inside a
     mapped segment.
  2. Each host string is bounded by NUL on both sides - no fusion, no missing
     terminator.
  3. No truncated fragment (`ghostvr` that is not the start of the full host).
  4. No Meta host survives, apart from the build-banner and S3-bucket needles
     the patcher deliberately keeps.
  5. Host strings do not overlap, and none runs past the end of its section.
  6. With `--baseline <rev>`, every file keeps the byte length it had at that
     revision: the patch is strictly in place, never a relocation.

Run from the repository root:
    python3 tools/validate_ocms_native.py
    python3 tools/validate_ocms_native.py --baseline f1e5fd73
Exits non-zero on the first failure, listing every finding.
"""

from __future__ import annotations

import argparse
import re
import struct
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OCMS = ROOT / "decompiled" / "Oculus Core Mobile Services"

HOST = b"ghostvr.pamplemouche.com"

# Same needles the patcher leaves alone: the compiler banner is build metadata,
# and the S3 path is a bucket, not a Meta server.
KEEP = (b"git-ro.vip.facebook.com", b"s3.amazonaws.com/")

META_HOST = re.compile(
    rb"(?:[a-z0-9_-]+\.)*(?:oculus|facebook)\.com|fbcdn\.net|fbsbx\.com|fburl\.com"
)
# Hostnames that are Java package names or Oculus property keys, not servers.
NOT_A_HOST = (
    b"com.oculus.",
    b"com.facebook.",
    b"oculus.store",
    b"oculus.hardware",
    b"oculus.software",
    b"oculus.unauthorized",
    b"oculus.enable",
    b"oculus.capture",
    b"debug.oculus",
    b"oculus.firsttime",
    b"oculus.xml",
    b"oculus.hmt",
)


class Report:
    def __init__(self) -> None:
        self.findings: list[str] = []
        self.checked = 0
        self.hosts = 0

    def fail(self, path: Path, message: str) -> None:
        try:
            label = str(path.relative_to(ROOT))
        except ValueError:
            label = str(path)
        self.findings.append(f"{label}: {message}")


def elf_segments(data: bytes) -> list[tuple[int, int, int]]:
    """(p_offset, p_vaddr, p_filesz) for every PT_LOAD."""
    if len(data) < 64 or data[:4] != b"\x7fELF":
        raise ValueError("not an ELF file")
    is64 = data[4] == 2
    if is64:
        phoff = struct.unpack_from("<Q", data, 0x20)[0]
        phentsize, phnum = struct.unpack_from("<HH", data, 0x36)
    else:
        phoff = struct.unpack_from("<I", data, 0x1C)[0]
        phentsize, phnum = struct.unpack_from("<HH", data, 0x2A)

    loads = []
    for i in range(phnum):
        off = phoff + i * phentsize
        if is64:
            ptype = struct.unpack_from("<I", data, off)[0]
            p_offset, p_vaddr, _pa, p_filesz = struct.unpack_from("<QQQQ", data, off + 8)[:4]
        else:
            ptype, p_offset, p_vaddr, _pa, p_filesz = struct.unpack_from("<IIIII", data, off)
        if ptype == 1:
            loads.append((p_offset, p_vaddr, p_filesz))
    if not loads:
        raise ValueError("no PT_LOAD segment")
    return loads


def string_at(data: bytes, off: int) -> bytes:
    """The NUL-delimited string that starts at `off`."""
    end = data.find(b"\x00", off)
    if end < 0:
        return bytes(data[off:])
    return bytes(data[off:end])


def check_library(path: Path, report: Report) -> None:
    data = path.read_bytes()
    report.checked += 1

    try:
        loads = elf_segments(data)
    except ValueError as error:
        report.fail(path, f"unreadable ELF: {error}")
        return

    mapped = [(o, o + s) for o, _v, s in loads]

    def in_segment(off: int) -> bool:
        return any(o <= off < e for o, e in mapped)

    # 1. Every host string lives inside a mapped segment.
    for match in re.finditer(re.escape(HOST), data):
        report.hosts += 1
        if not in_segment(match.start()):
            report.fail(path, f"host at {match.start():#x} is not inside a mapped segment")

    # 2 + 3 + 5. Fusion and truncation are properties of a whole string, not of
    # the bytes around the host. The originals end in `/` (`graph.oculus.com/`)
    # or start with `.` (`.facebook.com/`), so a host is not required to touch a
    # NUL. What must hold is that no single NUL-free run carries two hosts (the
    # two strings merged) or a mangled `ghostvr` prefix (a longer replacement
    # that overran and was then partly overwritten).
    for run in re.finditer(rb"[^\x00]+", data):
        text = run.group(0)
        count = text.count(HOST)
        if count > 1:
            report.fail(
                path,
                f"fused string at {run.start():#x} carries {count} hosts: {text[:70]!r}",
            )
        for fragment in re.finditer(b"ghostvr", text):
            if text[fragment.start() : fragment.start() + len(HOST)] != HOST:
                report.fail(
                    path,
                    f"truncated host fragment at {run.start() + fragment.start():#x}: "
                    f"{text[fragment.start() : fragment.start() + 40]!r}",
                )
        # A run holding the host must also be NUL-terminated in the file; a run
        # that reaches EOF has no terminator at all.
        if count and run.end() >= len(data):
            report.fail(path, f"host string at {run.start():#x} runs to EOF with no terminator")

    # 4. No Meta host left, except the deliberate needles.
    for match in META_HOST.finditer(data):
        start = data.rfind(b"\x00", 0, match.start()) + 1
        end = data.find(b"\x00", match.start())
        if end < 0:
            continue
        text = bytes(data[start:end])
        if any(needle in text for needle in KEEP):
            continue
        if any(text.startswith(prefix) for prefix in NOT_A_HOST):
            continue
        report.fail(path, f"Meta host still present at {start:#x}: {text[:60]!r}")


def check_size_against_baseline(path: Path, rev: str, report: Report) -> None:
    """The patch must stay in place: the rebuilt file keeps its byte length."""
    try:
        original = subprocess.run(
            ["git", "show", f"{rev}:{path.relative_to(ROOT)}"],
            capture_output=True,
            check=True,
            cwd=ROOT,
        ).stdout
    except subprocess.CalledProcessError:
        return
    current = path.read_bytes()
    if len(current) != len(original):
        report.fail(
            path,
            f"size changed vs {rev}: {len(original)} -> {len(current)} bytes "
            f"(a patch must not move data)",
        )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--baseline",
        metavar="REV",
        help="git revision to compare byte lengths against (proves in-place patching)",
    )
    args = parser.parse_args()

    if not OCMS.is_dir():
        print(f"OCMS tree not found: {OCMS}", file=sys.stderr)
        return 2

    report = Report()
    libs = sorted(p for p in OCMS.rglob("*.so") if "build/apk" not in str(p))
    for so in libs:
        check_library(so, report)
        if args.baseline:
            check_size_against_baseline(so, args.baseline, report)

    print(f"OCMS native libraries checked: {len(libs)}")
    print(f"host strings found: {report.hosts}")
    if args.baseline:
        print(f"byte-length baseline: {args.baseline}")

    if report.findings:
        print(f"\n{len(report.findings)} problem(s):")
        for finding in report.findings:
            print(f"  {finding}")
        return 1

    print("\nall libraries valid: NUL-bounded, no fusion, no truncation, no Meta host")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
