#!/usr/bin/env python3
"""Disable the Facebook certificate pinning in the decompiled smali.

The SDK ships a pinner that hard-codes the SHA-256 pins of Meta's certificate
chain and applies them to `facebook.com`, `fbcdn.net`, `fbsbx.com` and
`oculus.com`.  Redirecting those domains to our host would pin *our* host to
Meta's certificates and every TLS handshake would fail, so the pinner is
disabled instead: the factory methods now hand back the stock
`CertificatePinner.DEFAULT`, which performs no additional pinning, and the
pin-installation helper becomes a no-op.

Run from the repository root:  python3 tools/patch_certificate_pinning.py [--dry-run]
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"

# Every decompiled copy of the pinner factory.
TARGETS = (
    "Oculus/smali/com/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory.smali",
    "Oculus VR/smali/com/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory.smali",
    "Oculus Core Mobile Services/smali/com/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory.smali",
    "Oculus app runtime/smali/com/oculus/common/httpclient/FbCertificatePinnerFactory.smali",
)

DEFAULT_PINNER = "Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;"

# `create(J)`, `createPinnerWithoutFallback()` and `createWithRampart(J)`.
FACTORY = re.compile(
    r"(\.method public static (?:create|createPinnerWithoutFallback|createWithRampart)\([^)]*\)"
    r"Lokhttp3/CertificatePinner;\n)"
    r"(?P<body>.*?)"
    r"(\n\.end method)",
    re.S,
)
LOCALS = re.compile(r"^\s*\.locals\s+(?P<count>\d+)\s*$", re.M)

# `addPinsToBuilder(Builder, String[])` — turn the pin installer into a no-op.
ADD_PINS = re.compile(
    r"(\.method private static addPinsToBuilder\(Lokhttp3/CertificatePinner\$Builder;"
    r"\[Ljava/lang/String;\)V\n)"
    r"(?P<body>.*?)"
    r"(\n\.end method)",
    re.S,
)


def _neutral_factory(match: re.Match) -> str:
    signature, body, tail = match.group(1), match.group("body"), match.group(3)
    locals_match = LOCALS.search(body)
    registers = locals_match.group(0).strip() if locals_match else ".locals 1"
    return (
        f"{signature}"
        f"    {registers}\n\n"
        f"    .prologue\n"
        f"    sget-object v0, {DEFAULT_PINNER}\n\n"
        f"    return-object v0"
        f"{tail}"
    )


def _neutral_add_pins(match: re.Match) -> str:
    signature, body, tail = match.group(1), match.group("body"), match.group(3)
    locals_match = LOCALS.search(body)
    registers = locals_match.group(0).strip() if locals_match else ".locals 0"
    return f"{signature}    {registers}\n\n    .prologue\n\n    return-void{tail}"


def patch_file(path: Path, dry_run: bool) -> list[str]:
    original = path.read_text(encoding="utf-8", errors="surrogateescape")
    updated, factories = FACTORY.subn(_neutral_factory, original)
    updated, installers = ADD_PINS.subn(_neutral_add_pins, updated)
    if updated == original:
        return []
    if not dry_run:
        path.write_text(updated, encoding="utf-8", errors="surrogateescape")
    return [f"{factories} factory method(s), {installers} installer method(s)"]


def main() -> int:
    dry = "--dry-run" in sys.argv
    for relative in TARGETS:
        path = DECOMPILED / relative
        if not path.exists():
            print(f"  missing: {relative}")
            continue
        for summary in patch_file(path, dry):
            print(f"  {relative}: {summary}")
    print(f"\n{'[dry-run] ' if dry else ''}certificate pinning disabled")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
