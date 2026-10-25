#!/usr/bin/env python3
"""Repoint the Meta hosts inside the Oculus Hermes bytecode bundles.

The React Native surfaces (Home, Store, Settings, Explore, ...) ship as Hermes
bytecode containers.  Their string arena is suffix-packed: several entries can
point into the middle or the tail of a longer entry, so a byte range may be
read by more than one string.  Overwriting a host in place is therefore only
safe once every other entry that shares those bytes has been moved elsewhere.

This script parses the container header, walks the string table, and rewrites
each ASCII string that names a Meta host.  Before a rewrite it relocates every
sharing entry into arena bytes that nothing currently reads, so no live string
is ever corrupted.  The arena keeps its size, so no section in the file moves;
only string-table and overflow-table entries are rewritten.

Two limits are deliberate, and both end in "skip", never in a partial write:

* A container whose string table does not decode cleanly is refused.  Guessing
  at a layout would corrupt the bundle, and a corrupt React Native bundle is a
  hard startup failure.  The `Oculus Home` bundles are Hermes bytecode version
  53, whose header layout differs from the version 61 container this script
  understands (`HorizonBundle.js.hbc`); they are skipped until that layout is
  handled, and the hosts they still name are recorded in
  `tools/patched_tree_baseline.txt`.
* A container whose arena has no free run and cannot grow is refused, because
  the bytecode that follows addresses the arena with absolute offsets.

Run from the repository root:
    python3 tools/patch_hermes_bundle.py [--dry-run] [bundle ...]
"""

from __future__ import annotations

import re
import struct
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DECOMPILED = ROOT / "decompiled"

HOST = "ghostvr.pamplemouche.com"

MAGIC = 0x1F1903C103BC1FC6
BYTECODE_VERSION = 1

# Android package names that merely contain a Meta domain.
PACKAGE_IDS = (b"com.oculus.companion.server", b"com.facebook.")

# Ordered so escaped (regex source) forms and subdomains win over bare hosts.
HOST_RULES = [
    (re.compile(rb"(?:[\w-]+\.)*oculus\\\.com"), rb"ghostvr\\.pamplemouche\\.com"),
    (re.compile(rb"(?:[\w-]+\.)*facebook\\\.com"), rb"ghostvr\\.pamplemouche\\.com"),
    (re.compile(rb"(?:[\w-]+\.)*oculus\.com"), HOST.encode()),
    (re.compile(rb"(?:[\w-]+\.)*facebook\.com"), HOST.encode()),
    (re.compile(rb"(?:[\w-]+\.)*fbcdn\.net"), HOST.encode()),
    (re.compile(rb"(?:[\w-]+\.)*fbsbx\.com"), HOST.encode()),
    (re.compile(rb"fburl\.com"), HOST.encode()),
]

DEFAULT_BUNDLES = sorted(
    p for p in DECOMPILED.rglob("*")
    if p.suffix in (".hbc", ".bcbundle") and p.is_file()
)

# A decoded entry must look like text: printable ASCII, or UTF-16 of it.
MIN_ACCEPTED = 0.98


def span(is_utf16: int, length: int) -> int:
    """Bytes occupied by an entry.

    `length` in the string table counts UTF-16 code units, not bytes, so a
    UTF-16 entry occupies twice the storage an ASCII entry of the same length
    does. Treating the two alike under-runs every range computation, which
    silently clobbers the neighbouring UTF-16 strings.
    """
    return length * 2 if is_utf16 else length


class Bundle:
    """A Hermes container's header, string table and string storage.

    The layout is parsed from the header rather than assumed: the function
    headers, string kinds and identifier hashes come first, then the small
    string table, the overflow table, and finally the shared string storage.
    """

    # sizeof(BytecodeFileHeader) and sizeof(SmallFuncHeader) for the bytecode
    # versions this container family uses.
    HEADER_SIZE = 97
    FUNC_HEADER_SIZE = 16

    def __init__(self, data: bytes):
        self.data = data
        magic, version = struct.unpack_from("<QI", data, 0)
        if magic != MAGIC:
            raise ValueError("not a Hermes bytecode container")
        self.version = version

        (self.function_count, self.string_kind_count, self.identifier_count,
         self.string_count, self.overflow_count, self.storage_size) = struct.unpack_from("<6I", data, 40)

        def align(value, to):
            return (value + to - 1) // to * to

        self.table_off = align(
            align(self.HEADER_SIZE, 32)
            + self.function_count * self.FUNC_HEADER_SIZE
            + self.string_kind_count * 4
            + self.identifier_count * 4,
            4,
        )
        self.overflow_off = self.table_off + self.string_count * 4
        self.storage_off = self.overflow_off + self.overflow_count * 8
        self.storage_end = self.storage_off + self.storage_size

        if self.storage_end > len(data):
            raise ValueError("string storage runs past the end of the file")

        self.entries = [self._parse_entry(i) for i in range(self.string_count)]
        self._validate()

    def _validate(self) -> None:
        """Refuse containers whose table does not decode cleanly.

        Guessing at a layout we cannot verify would corrupt the bundle, and a
        corrupted React Native bundle is a hard startup failure, so a container
        that does not decode is skipped rather than patched.
        """
        decoded = 0
        for is_utf16, offset, length, _overflow in self.entries:
            if offset is None or length == 0:
                continue
            raw = self.data[self.storage_off + offset : self.storage_off + offset + length]
            if len(raw) != length:
                continue
            if is_utf16:
                if length % 2:
                    continue
                text = raw.decode("utf-16-le", "replace")
            else:
                text = raw.decode("ascii", "replace")
            if any(ord(char) < 32 and char not in "\t\n\r" for char in text):
                continue
            decoded += 1
        if decoded < self.string_count * MIN_ACCEPTED:
            raise ValueError(
                f"string table did not decode cleanly "
                f"({decoded}/{self.string_count} entries); bytecode version "
                f"{self.version} layout unsupported"
            )

    def _parse_entry(self, index: int):
        (value,) = struct.unpack_from("<I", self.data, self.table_off + index * 4)
        is_utf16 = value & 1
        field = (value >> 1) & 0x7FFFFF
        length = (value >> 24) & 0xFF
        if length == 0xFF:
            if field >= self.overflow_count:
                return [is_utf16, None, 0, field]
            offset, length = struct.unpack_from("<II", self.data, self.overflow_off + field * 8)
            return [is_utf16, offset, span(is_utf16, length), field]
        return [is_utf16, field, span(is_utf16, length), None]

    def blob(self, index: int, data: bytes | None = None) -> bytes:
        _is_utf16, offset, length, _overflow = self.entries[index]
        if offset is None:
            return b""
        source = self.data if data is None else data
        return bytes(source[self.storage_off + offset : self.storage_off + offset + length])

    def write_entry(self, data: bytearray, index: int) -> None:
        """Write an entry back, converting the byte length to table units.

        `entries` carries byte lengths so every range computation is uniform;
        the table itself stores UTF-16 lengths in code units.
        """
        is_utf16, offset, length, overflow = self.entries[index]
        if offset is None:
            return
        units = length // 2 if is_utf16 else length
        if overflow is None:
            struct.pack_into(
                "<I", data, self.table_off + index * 4,
                (is_utf16 & 1) | (offset << 1) | (units << 24),
            )
        else:
            struct.pack_into(
                "<I", data, self.table_off + index * 4,
                (is_utf16 & 1) | (overflow << 1) | (0xFF << 24),
            )
            struct.pack_into("<II", data, self.overflow_off + overflow * 8, offset, units)


def rewrite(text: bytes) -> bytes:
    if any(pkg in text for pkg in PACKAGE_IDS):
        return text
    out = text
    for pattern, replacement in HOST_RULES:
        out = pattern.sub(replacement, out)
    return out


def patch_bundle(path: Path, dry_run: bool) -> str:
    bundle = Bundle(path.read_bytes())
    data = bytearray(bundle.data)

    refs = [0] * bundle.storage_size
    for _is_utf16, offset, length, _overflow in bundle.entries:
        for i in range(offset, min(offset + length, bundle.storage_size)):
            refs[i] += 1

    def occupy(offset, length, delta):
        for i in range(offset, min(offset + length, bundle.storage_size)):
            refs[i] += delta

    def free_run(need):
        start = None
        for i, count in enumerate(refs):
            if count == 0:
                if start is None:
                    start = i
            else:
                if start is not None and i - start >= need:
                    return start
                start = None
        if start is not None and bundle.storage_size - start >= need:
            return start
        return None

    def relocate(index):
        is_utf16, offset, length, overflow = bundle.entries[index]
        blob = bundle.blob(index, bytes(data))
        start = free_run(length)
        if start is None:
            return False
        data[bundle.storage_off + start : bundle.storage_off + start + length] = blob
        occupy(start, length, +1)
        occupy(offset, length, -1)
        bundle.entries[index] = [is_utf16, start, length, overflow]
        return True

    # Collect the strings that name a Meta host, in either encoding.
    pending = {}
    for i in range(bundle.string_count):
        is_utf16, offset, length, _overflow = bundle.entries[i]
        if offset is None or length == 0:
            continue
        raw = bundle.blob(i)
        codec = "utf-16-le" if is_utf16 else "ascii"
        try:
            text = raw.decode(codec)
        except UnicodeDecodeError:
            continue
        new_text = rewrite(text.encode(codec)).decode(codec)
        if new_text != text:
            pending[i] = new_text.encode(codec)

    if not pending:
        return "nothing to rewrite"
    rewritten = len(pending)

    moved = 0
    # A pass shrinks-or-fits strings in place; a second pass grows strings into
    # freshly freed arena space.
    for _ in range(bundle.string_count):
        if not pending:
            break
        progress = False

        for i in list(pending):
            blob = pending[i]
            _is_utf16, offset, length, overflow = bundle.entries[i]
            if len(blob) > length:
                continue
            end = offset + len(blob)
            sharers = [
                j for j in range(bundle.string_count)
                if j != i and bundle.entries[j][1] < end
                and offset < bundle.entries[j][1] + bundle.entries[j][2]
            ]
            if any(not relocate(j) for j in sharers):
                continue
            moved += len(sharers)
            data[bundle.storage_off + offset : bundle.storage_off + end] = blob
            occupy(offset, length, -1)
            occupy(offset, len(blob), +1)
            bundle.entries[i] = [_is_utf16, offset, len(blob), overflow]
            del pending[i]
            progress = True

        for i in list(pending):
            blob = pending[i]
            is_utf16, offset, length, overflow = bundle.entries[i]
            start = free_run(len(blob))
            if start is None:
                continue
            data[bundle.storage_off + start : bundle.storage_off + start + len(blob)] = blob
            occupy(start, len(blob), +1)
            occupy(offset, length, -1)
            bundle.entries[i] = [is_utf16, start, len(blob), overflow]
            del pending[i]
            progress = True

        if not progress:
            raise ValueError(
                f"cannot relocate {len(pending)} strings: the string arena is "
                f"full ({bundle.storage_size} bytes, no free run), and the "
                f"bytecode that follows uses absolute offsets, so the arena "
                f"cannot grow in place"
            )

    for i in range(bundle.string_count):
        bundle.write_entry(data, i)

    if len(data) != len(bundle.data):
        raise SystemExit(f"{path.name}: size changed, refusing to write")

    if not dry_run:
        path.write_bytes(bytes(data))
    return f"rewrote {rewritten} strings ({moved} neighbours relocated)"


def main() -> int:
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    dry = "--dry-run" in sys.argv
    bundles = [Path(a) for a in args] if args else DEFAULT_BUNDLES
    for path in bundles:
        try:
            summary = patch_bundle(path, dry)
        except ValueError as error:
            print(f"  {path.relative_to(ROOT)}: skipped ({error})")
            continue
        print(f"  {path.relative_to(ROOT)}: {summary}")
    print(f"\n{'[dry-run] ' if dry else ''}Hermes bundles patched")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
