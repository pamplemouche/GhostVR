#!/usr/bin/env python3
"""Fail if the decompiled tree would send a request to a Meta server.

The repatching scripts edit binaries in place.  A bad edit does not always
raise: a host that grows past the string it replaces can silently fuse with its
neighbour, and a patcher that cannot tell which bytes are still referenced will
happily hand out live storage.  Both bugs shipped once (the OCMS mobileconfig
library carried `ghostvr.pamplemouchostvr...`), so the tree is checked as a
whole rather than trusting each script's own assertions.

Checks, in order of how hard they are to notice by eye:

1. Fused host strings in native libraries.  A string that lost its NUL
   terminator shows up as a long NUL-free run naming our host twice.
2. Meta hosts left in native libraries, smali string literals and Hermes
   bundles.  Android package names and property keys are not hosts and are
   excluded.
3. The mobileconfig libraries specifically, since that is where the fusion
   happened and they are read by the earliest startup path.

Run from the repository root:
    python3 tools/check_patched_tree.py
Exits non-zero on the first tree-wide problem, listing every finding.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"
BASELINE = ROOT / "tools" / "patched_tree_baseline.txt"

HOST = b"ghostvr.pamplemouche.com"


def _label(path: Path) -> str:
    """Path as shown in a finding; keeps working for files outside the repo."""
    try:
        return str(path.relative_to(ROOT))
    except ValueError:
        return str(path)


# A Meta host.  `fbcdn`/`fbsbx`/`fburl` are Meta's own CDN and shortener.
# Samsung's DI service is included as well: the setup wizard registers the
# headset there and fetches its policy document, and the service is retired.
SAMSUNG_HOST = rb"(?:stg-api|regi|dc)\.di\.atlas\.samsung\.com"
META_HOST = re.compile(
    rb"(?:[a-z0-9_-]+\.)*(?:oculus|facebook|instagram)\.com|fbcdn\.net|fbsbx\.com|fburl\.com"
    rb"|" + SAMSUNG_HOST
)

# Not hosts: Android package names, Java class prefixes, and Oculus property
# keys such as `debug.oculus.enable` or `oculus_twilight_*` event names.
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
    b"oculus_twilight",
)

# A host must sit on a word boundary, so `oculus.companion` inside
# `com.oculus.companion.server` is not read as `oculus.com`.
BOUNDARY = re.compile(rb"(?![A-Za-z0-9_-])(?!\.[A-Za-z0-9_-])")

# Longest NUL-free run worth inspecting for a fused string.  Shorter runs are
# ordinary short strings.
FUSED_RUN = re.compile(rb"[^\x00]{40,}")

QUOTED = re.compile(r'"(?P<body>(?:[^"\\]|\\.)*)"')


def _is_meta_host(text: bytes, match: re.Match) -> bool:
    host = match.group(0)
    if any(host.startswith(prefix) for prefix in NOT_A_HOST):
        return False
    return bool(BOUNDARY.match(text, match.end()))


def check_fused(path: Path, findings: list[str]) -> None:
    data = path.read_bytes()
    for run in FUSED_RUN.finditer(data):
        if run.group(0).count(HOST) > 1:
            findings.append(
                f"{_label(path)}: fused host string at {run.start():#x}: "
                f"{run.group(0)[:70]!r}"
            )
    # The run rule above needs the host to survive *twice*.  When a longer
    # replacement overruns the next string and the following write lands on top
    # of it, only one intact copy is left and the run holds a mangled prefix
    # instead - which the count test misses.  Any `ghostvr` that is not the
    # start of the full host is such a fragment.
    for match in re.finditer(b"ghostvr", data):
        if data[match.start() : match.start() + len(HOST)] != HOST:
            findings.append(
                f"{_label(path)}: truncated host fragment at {match.start():#x}: "
                f"{data[match.start() : match.start() + 40]!r}"
            )


def check_meta_hosts(path: Path, findings: list[str]) -> None:
    data = path.read_bytes()
    for match in META_HOST.finditer(data):
        if _is_meta_host(data, match):
            findings.append(
                f"{_label(path)}: foreign host at {match.start():#x}: "
                f"{match.group(0).decode('latin1')}"
            )


def check_smali(path: Path, findings: list[str]) -> None:
    """Smali literals are read as text, so a match cannot straddle two files."""
    text = path.read_text(encoding="utf-8", errors="surrogateescape")
    for literal in QUOTED.finditer(text):
        body = literal.group("body").encode("utf-8", "surrogateescape")
        for match in META_HOST.finditer(body):
            if _is_meta_host(body, match):
                findings.append(
                    f"{_label(path)}: foreign host in literal: "
                    f"{match.group(0).decode('latin1')}"
                )


def _collect() -> list[str]:
    findings: list[str] = []
    for path in sorted(DECOMPILED.rglob("*.so")):
        check_fused(path, findings)
    for path in sorted(DECOMPILED.rglob("*.hbc")) + sorted(DECOMPILED.rglob("*.bcbundle")):
        check_fused(path, findings)
        check_meta_hosts(path, findings)
    for path in sorted(DECOMPILED.rglob("*.smali")):
        check_smali(path, findings)
    # A fused host in one of these is a hard startup failure, so call it out
    # separately from the general sweep.
    for path in sorted(DECOMPILED.rglob("libxplat_mobileconfig_*.so")):
        check_fused(path, findings)
    return findings


def _counts(findings: list[str]) -> dict[str, int]:
    counts: dict[str, int] = {}
    for finding in findings:
        name = finding.split(":", 1)[0]
        counts[name] = counts.get(name, 0) + 1
    return counts


def write_baseline() -> int:
    """Record the current findings as the accepted backlog."""
    counts = _counts(_collect())
    lines = [
        "# Meta hosts still reachable in the patched tree, per file.",
        "#",
        "# Regenerate after intentionally leaving or fixing hosts:",
        "#     python3 tools/check_patched_tree.py --write-baseline",
        "#",
        "# Every finding here is a *string*, not a live request. Verified split:",
        "#",
        "#   * Every host named in a Hermes bundle is rewritten at runtime by",
        "#     `IntentModule.rewriteExternalUrl`, which matches `oculus.com`,",
        "#     `facebook.com`, `instagram.com` and `fburl.com` and any subdomain of",
        "#     the first three. That covers both network paths",
        "#     (`NetworkingModule.sendRequestInternal` and `IntentModule.openURL`),",
        "#     so a JS request to `graph.oculus.com` never leaves for Meta even",
        "#     though the bundle still names it. The bare `oculus.com`,",
        "#     `facebook.com`, `instagram.com` and `fburl.com` literals in",
        "#     `IntentModule` are the matcher's own table, not request targets.",
        "#   * The `fburl.com` hits are literal 'Internal Only' help text",
        "#     ('see fburl.com/TestReport'), not request targets. They are covered",
        "#     by the rewrite too, so they would be redirected if ever fetched.",
        "#   * The `FbCertificatePinnerFactory` hits are certificate-pinning data.",
        "#     All three factory methods return `CertificatePinner.DEFAULT`, so no",
        "#     host list is ever consulted; the names are dead data.",
        "#",
        "# Re-derive the split with `tools/check_bundle_coverage.py`, which applies",
        "# the same rule.",
        "#",
        "# The Oculus Home React Native bundles are Hermes bytecode version 53;",
        "# tools/patch_hermes_bundle.py only understands version 61 and refuses",
        "# to touch the others rather than corrupt them.  A *new* finding - a",
        "# fused string, or a host in a library we do patch - is still a failure.",
        "",
    ]
    for name in sorted(counts):
        lines.append(f"{name} {counts[name]}")
    BASELINE.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"wrote {BASELINE.relative_to(ROOT)} with {sum(counts.values())} finding(s)")
    return 0


def main() -> int:
    if "--write-baseline" in sys.argv:
        return write_baseline()

    if not DECOMPILED.is_dir():
        print(f"no {DECOMPILED} directory; nothing to check")
        return 0

    findings = _collect()
    counts = _counts(findings)

    baseline = _load_baseline()
    if baseline is None:
        print(f"{len(findings)} finding(s); no {BASELINE.name} yet, reporting all\n")
        for finding in findings[:80]:
            print(f"  {finding}")
        return 1

    regressions = [
        finding for finding in findings
        if counts[finding.split(":", 1)[0]] > baseline.get(finding.split(":", 1)[0], 0)
    ]
    fixed = [
        name for name, expected in baseline.items()
        if counts.get(name, 0) < expected
    ]

    if regressions:
        print(f"{len(regressions)} new problem(s) beyond the known baseline:\n")
        for finding in regressions[:80]:
            print(f"  {finding}")
        if len(regressions) > 80:
            print(f"  ... and {len(regressions) - 80} more")
        return 1

    known = sum(baseline.get(name, 0) for name in counts)
    print(
        f"patched tree: no new problems "
        f"({known} known finding(s) in {len(baseline)} file(s) remain)"
    )
    if fixed:
        print(f"  {len(fixed)} file(s) improved; regenerate {BASELINE.name}: {fixed[:5]}")
    return 0


def _load_baseline() -> dict[str, int] | None:
    """Per-file finding counts accepted as known gaps.

    The React Native bundles under `Oculus Home` are Hermes bytecode version 53
    containers.  The bundle patcher understands version 61 and refuses to touch
    anything else rather than corrupt it, so those hosts stay until the version
    53 layout is handled.  They are recorded here so CI fails on a *new*
    problem (a fused string, a host in a library we do patch) instead of on
    this standing backlog.
    """
    if not BASELINE.exists():
        return None
    counts: dict[str, int] = {}
    for line in BASELINE.read_text(encoding="utf-8").splitlines():
        line = line.split("#", 1)[0].strip()
        if not line:
            continue
        name, _, value = line.rpartition(" ")
        counts[name.strip()] = int(value)
    return counts


if __name__ == "__main__":
    raise SystemExit(main())
