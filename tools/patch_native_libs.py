#!/usr/bin/env python3
"""Repatch every Meta host baked into the Oculus native libraries.

The OVR Platform SDK, the platform plugin, the avatar SDK and the mobileconfig
fetcher all embed Oculus/Facebook hostnames as string constants.  This script
rewrites them to the self-hosted GhostVR backend.

A constant is rewritten in place.  When the replacement is longer than the
original it grows into the constants that follow, so the script first works out
which of those are still reachable (by a relocation slot, a pointer table entry,
or a pc-relative code reference).  Reachable neighbours are copied to unused
space in `.rodata` and every pointer that addressed them is repointed.  The run
finishes with two assertions: no Meta endpoint survives, and every reachable
constant still reads exactly as it did before the patch.

Run from the repository root:  python3 tools/patch_native_libs.py [--dry-run]
"""

from __future__ import annotations

import bisect
import re
import struct
import sys
from pathlib import Path

HOST = "ghostvr.pamplemouche.com"
BASE_URL = f"https://{HOST}"
GRAPH_URL = f"{BASE_URL}/v3.1/"

ROOT = Path(__file__).resolve().parent.parent
LIBDIR = ROOT / "decompiled" / "Oculus" / "lib" / "armeabi-v7a"

MOBILECONFIG = "libxplat_mobileconfig_FBMobileConfigCore_FBMobileConfigCoreAndroid.so"

# Hosts that name a Meta service.  `s3.amazonaws.com/o.oculuscdn.com/...` is an
# S3 bucket path, not a Meta server, so a string carrying that prefix is left
# alone.  `git-ro.vip.facebook.com` is build metadata baked into the compiler
# banner; rewriting it would corrupt a `--version` string for no benefit.
_META_LABELS = (
    rb"oculus|facebook|fbcdn|fbsbx|fburl|oculuscdn|instagram|workplace"
    rb"|camera-app|facebook-program|onavo|expresswifi|internet"
)
_META_HOST_RE = re.compile(
    rb"(?:[A-Za-z0-9-]+\.)*(?:" + _META_LABELS + rb")\.(?:com|net|org)"
)
_IGNORE_NEEDLES = (b"s3.amazonaws.com/", b"git-ro.vip.facebook.com", b"in3.facebook.com")

STUN = f"stun:stun.{HOST}:3478"
DASHBOARD_HINT = (
    "ovr_PlatformInitializeWithAccessToken: You passed in an app ID of 0.  "
    f"Find or create your app ID at {HOST}."
)
AVATAR_URL = f"{BASE_URL}/%llu?access_token=OC%%7C%s%%7C&fields="

# (library, vaddr of the constant, replacement)
PATCHES = [
    # libovrplatform.so (32-bit)
    ("libovrplatform.so", 0x210B19, GRAPH_URL),     # https://graph.facebook.com/v3.1/
    ("libovrplatform.so", 0x22990F, BASE_URL),      # https://graph.oculus.com
    ("libovrplatform.so", 0x2397FA, HOST),          # edge-mqtt.facebook.com
    ("libovrplatform.so", 0x22C2E2, DASHBOARD_HINT),
    ("libovrplatform.so", 0x206A6E, STUN),          # stun:stun.fbsbx.com:3478
    # libovrplatformplugin.so (32-bit)
    ("libovrplatformplugin.so", 0x17219C, BASE_URL),
    ("libovrplatformplugin.so", 0x17A0E1, GRAPH_URL),
    ("libovrplatformplugin.so", 0x17B777, HOST),
    ("libovrplatformplugin.so", 0x178555, STUN),
    # libovravatar.so (32-bit)
    ("libovravatar.so", 0x2AC2A8, AVATAR_URL),
    # libovrplatform_64.so
    ("libovrplatform_64.so", 0x3E6A98, GRAPH_URL),
    ("libovrplatform_64.so", 0x400E28, BASE_URL),
    ("libovrplatform_64.so", 0x411E28, HOST),
    ("libovrplatform_64.so", 0x403AD8, DASHBOARD_HINT),
    ("libovrplatform_64.so", 0x3DB840, STUN),
    # libovravatar_64.so
    ("libovravatar_64.so", 0x2E792F, AVATAR_URL),
]

# Packed run of graph hosts with no reachable entry; refilled in place.
SPAN_FILLS = [(MOBILECONFIG, 0x66BFA, 0x66CB2, 7)]

POINTER_TABLE_SECTIONS = (".data.rel.ro", ".data.rel.ro.local")


# ---------------------------------------------------------------------------
# ELF layout
# ---------------------------------------------------------------------------


def elf_layout(data: bytes):
    is64 = data[4] == 2
    if is64:
        phoff = struct.unpack_from("<Q", data, 0x20)[0]
        phentsize, phnum = struct.unpack_from("<HH", data, 0x36)
        shoff = struct.unpack_from("<Q", data, 0x28)[0]
        shentsize, shnum, shstrndx = struct.unpack_from("<HHH", data, 0x3A)
    else:
        phoff = struct.unpack_from("<I", data, 0x1C)[0]
        phentsize, phnum = struct.unpack_from("<HH", data, 0x2A)
        shoff = struct.unpack_from("<I", data, 0x20)[0]
        shentsize, shnum, shstrndx = struct.unpack_from("<HHH", data, 0x2E)

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

    sections = {}
    strtab = struct.unpack_from("<Q" if is64 else "<I", data, shoff + shstrndx * shentsize + (0x18 if is64 else 0x10))[0]
    for i in range(shnum):
        off = shoff + i * shentsize
        if is64:
            name_off = struct.unpack_from("<I", data, off)[0]
            addr, s_off, size = struct.unpack_from("<QQQ", data, off + 16)
            entsize = struct.unpack_from("<Q", data, off + 56)[0]
        else:
            name_off = struct.unpack_from("<I", data, off)[0]
            addr, s_off, size = struct.unpack_from("<III", data, off + 12)
            entsize = struct.unpack_from("<I", data, off + 36)[0]
        name = data[strtab + name_off : data.find(b"\x00", strtab + name_off)].decode("latin1")
        sections[name] = {"addr": addr, "offset": s_off, "size": size, "entsize": entsize}
    return is64, loads, sections


def to_offset(loads, vaddr: int) -> int:
    for p_offset, p_vaddr, p_filesz in loads:
        if p_vaddr <= vaddr < p_vaddr + p_filesz:
            return p_offset + (vaddr - p_vaddr)
    raise ValueError(f"vaddr {vaddr:#x} is not mapped")


def cstr(data, off: int) -> bytes:
    end = data.find(b"\x00", off)
    return bytes(data[off:end])


# ---------------------------------------------------------------------------
# Reachability
# ---------------------------------------------------------------------------


def reachable_addresses(data: bytes, is64: bool, sections) -> set[int]:
    """Addresses the dynamic linker or the code can still reach.

    Relocation slots cover everything the linker fixes up, including entries in
    `.data.rel.ro` that are themselves relocated.  `.got`/`.data` pointer words
    cover tables the linker leaves alone.  Disassembly covers the constants that
    are addressed relative to the program counter with no table at all.
    """
    n = 8 if is64 else 4
    fmt = "<Q" if is64 else "<I"
    reachable: set[int] = set()

    for name in (".rel.dyn", ".rela.dyn"):
        section = sections.get(name)
        if not section:
            continue
        entsize = section["entsize"] or (24 if is64 else 8)
        for k in range(section["offset"], section["offset"] + section["size"], entsize):
            slot = struct.unpack_from("<Q" if is64 else "<I", data, k)[0]
            if slot + n <= len(data):
                reachable.add(struct.unpack_from(fmt, data, slot)[0])

    for name in POINTER_TABLE_SECTIONS:
        section = sections.get(name)
        if not section:
            continue
        start = section["offset"]
        for k in range(start, start + section["size"] - n + 1, n):
            value = struct.unpack_from(fmt, data, k)[0]
            if value:
                reachable.add(value)

    reachable |= pc_relative_addresses(data, is64, sections)
    return reachable


def pc_relative_addresses(data: bytes, is64: bool, sections) -> set[int]:
    """Constants reached by `ldr rd, [pc, #imm]` / `add rd, pc, #imm`."""
    try:
        import capstone
    except ImportError as exc:
        # Returning an empty set here is not a graceful degradation: every
        # constant reached only by a pc-relative load would look unreachable, so
        # `allocate()` could hand out .rodata that is still live and the
        # corruption assertions below would have nothing to compare against.
        # That is how the OCMS mobileconfig library shipped a fused string.
        raise RuntimeError(
            "capstone is required: without it the patcher cannot tell which "
            ".rodata bytes are still referenced and will corrupt the library"
        ) from exc

    section = sections.get(".text")
    if not section:
        return set()
    fmt = "<Q" if is64 else "<I"
    n = 8 if is64 else 4
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM if is64 else capstone.CS_MODE_THUMB)
    md.detail = True

    found: set[int] = set()
    off = section["offset"]
    end = off + section["size"]
    while off < end:
        insn = next(md.disasm(data[off : off + 4], off), None)
        if insn is None:
            off += n
            continue
        ops = insn.operands
        if insn.mnemonic.startswith("ldr") and len(ops) == 2 and ops[1].type == capstone.arm.ARM_OP_MEM:
            if ops[1].mem.base == capstone.arm.ARM_REG_PC:
                literal = ((insn.address + 4) & ~3) + ops[1].mem.disp
                if 0 <= literal < len(data) - n + 1:
                    found.add(struct.unpack_from(fmt, data, literal)[0])
        elif insn.mnemonic.startswith("add") and len(ops) == 3:
            # add rd, pc, #imm
            if ops[1].type == capstone.arm.ARM_OP_REG and ops[1].reg == capstone.arm.ARM_REG_PC \
               and ops[2].type == capstone.arm.ARM_OP_IMM:
                found.add(((insn.address + 4) & ~3) + ops[2].imm)
        elif insn.mnemonic.startswith("adr"):
            for op in ops:
                if op.type == capstone.arm.ARM_OP_IMM:
                    found.add(op.imm)
        off += insn.size
    return found


def free_runs(data: bytes, sections, reachable: set[int], min_length: int):
    """Zero-filled `.rodata` runs no reachable pointer lands inside."""
    section = sections.get(".rodata")
    if not section:
        return []
    ordered = sorted(reachable)
    runs = []
    start = section["offset"]
    end = start + section["size"]
    i = start
    while i < end:
        if data[i] != 0:
            i += 1
            continue
        j = i
        while j < min(end, len(data)) and data[j] == 0:
            j += 1
        if j - i >= min_length:
            k = bisect.bisect_left(ordered, i)
            if not (k < len(ordered) and ordered[k] < j):
                runs.append(i)
        i = j
    return runs


def meta_strings(data: bytes) -> list[tuple[int, bytes]]:
    """Every string in `data` that still names a Meta host."""
    found = set()
    for match in _META_HOST_RE.finditer(data):
        start = data.rfind(b"\x00", 0, match.start()) + 1
        end = data.find(b"\x00", match.start())
        if end < 0:
            continue
        text = bytes(data[start:end])
        if not any(skip in text for skip in _IGNORE_NEEDLES):
            found.add((start, text))
    return sorted(found)


def discover_patches(path: Path) -> list[tuple[int, str, str]]:
    """Every Meta host string in `path`, as (vaddr, replacement, original).

    Used for the libraries that have no hand-written table entry.  The
    replacement is padded to the original length when it is shorter, so the
    patch stays inside the string and can never reach a neighbour.
    """
    data = path.read_bytes()
    _is64, loads, _sections = elf_layout(data)
    found: dict[int, tuple[str, str]] = {}
    for match in _META_HOST_RE.finditer(data):
        start = data.rfind(b"\x00", 0, match.start()) + 1
        end = data.find(b"\x00", match.start())
        if end < 0:
            continue
        original = bytes(data[start:end]).decode("latin1")
        if any(skip.decode() in original for skip in _IGNORE_NEEDLES):
            continue
        replacement = original.replace(match.group(0).decode("latin1"), HOST)
        if replacement == original:
            continue
        if len(replacement) < len(original):
            replacement += "\x00" * (len(original) - len(replacement))
        try:
            vaddr = _vaddr_of(loads, start)
        except ValueError:
            continue
        found[vaddr] = (replacement, original)
    return [(v, found[v][0], found[v][1]) for v in sorted(found)]


def scan() -> int:
    """Report the Meta host strings still embedded in each native library."""
    for so in sorted((ROOT / "decompiled").rglob("*.so")):
        entries = discover_patches(so)
        if not entries:
            continue
        print(f"{so.relative_to(ROOT)}")
        for _vaddr, replacement, original in entries:
            print(f"    {original}  ->  {replacement.rstrip(chr(0))}")
    return 0


# ---------------------------------------------------------------------------
# Patching
# ---------------------------------------------------------------------------


def patch_library(path: Path, patches, fills, dry_run: bool) -> list[str]:
    original = path.read_bytes()
    data = bytearray(original)
    is64, loads, sections = elf_layout(original)
    fmt = "<Q" if is64 else "<I"
    reachable = reachable_addresses(original, is64, sections)
    slots = {}
    for i in range(0, len(original) - (8 if is64 else 4) + 1, 8 if is64 else 4):
        slots.setdefault(struct.unpack_from(fmt, original, i)[0], []).append(i)

    # Baseline of every reachable constant, used to prove nothing was corrupted.
    baseline = {}
    for addr in reachable:
        try:
            baseline[addr] = cstr(original, to_offset(loads, addr))
        except ValueError:
            continue

    log: list[str] = []

    for _lib, start, stop, count in fills:
        foff, fstop = to_offset(loads, start), to_offset(loads, stop)
        live = sorted(a for a in reachable if foff <= a < fstop)
        if live:
            raise ValueError(f"{path.name}: span {start:#x} still reachable: {[hex(a) for a in live]}")
        blob = b"".join(f"{HOST}/\x00".encode() for _ in range(count))
        if len(blob) > fstop - foff:
            raise ValueError(f"{path.name}: span {start:#x} needs {len(blob)}B, has {fstop - foff}B")
        data[foff:fstop] = blob + b"\x00" * (fstop - foff - len(blob))
        log.append(f"    span {start:#x}-{stop:#x}: {count} hosts, pad {fstop - foff - len(blob)}B")

    spare = free_runs(original, sections, reachable, min_length=16)
    next_spare = 0

    def allocate(size: int) -> int:
        nonlocal next_spare
        while next_spare < len(spare):
            candidate = spare[next_spare]
            if candidate + size <= len(original):
                next_spare += 1
                return candidate
            next_spare += 1
        raise ValueError(f"{path.name}: out of spare .rodata space")

    pending = sorted(patches)
    i = 0
    while i < len(pending):
        vaddr, payload = pending[i]
        i += 1
        foff = to_offset(loads, vaddr)
        encoded = payload.encode()
        overrun_end = vaddr + len(encoded)

        # Move every reachable constant this longer value would overwrite.
        for neighbour in sorted(a for a in reachable if vaddr < a <= overrun_end):
            coff = to_offset(loads, neighbour)
            text = cstr(original, coff)
            if not text or bytes(data[coff : coff + len(text)]) != text:
                continue
            dest = allocate(len(text) + 1)
            data[dest : dest + len(text) + 1] = text + b"\x00"
            for slot in slots.get(neighbour, []):
                struct.pack_into(fmt, data, slot, _vaddr_of(loads, dest))
            log.append(f"    moved {text[:26]!r} {neighbour:#x} -> vaddr {_vaddr_of(loads, dest):#x}")
            reachable.discard(neighbour)
            baseline.pop(neighbour, None)

        # A longer value can also swallow a *later patch target*.  Those sit in
        # packed host runs with no reachable entry, so the loop above never
        # moves them.  Applying one afterwards would write it at its stale
        # offset, on top of this value, and fuse the two strings - the
        # corruption seen in the OCMS mobileconfig library.  Drop the swallowed
        # target and blank whatever part of it survives the write.
        swallowed = [(v, p) for v, p in pending[i:] if vaddr < v < overrun_end]
        for other_vaddr, _other in swallowed:
            pending.remove((other_vaddr, _other))
            ooff = to_offset(loads, other_vaddr)
            otext = cstr(original, ooff)
            tail = max(ooff + len(otext) - max(ooff, foff + len(encoded) + 1), 0)
            if tail:
                data[foff + len(encoded) + 1 : ooff + len(otext)] = b"\x00" * tail
            log.append(f"    absorbed pending target {otext[:26]!r} {other_vaddr:#x}")

        old = cstr(original, foff)
        data[foff : foff + len(encoded) + 1] = encoded + b"\x00"
        baseline.pop(vaddr, None)
        log.append(f"    {vaddr:#x}: {old[:42]!r} -> {payload[:42]!r}")

        for slot in slots.get(vaddr, []):
            struct.pack_into(fmt, data, slot, vaddr)

    # --- assertions ------------------------------------------------------
    leftover = meta_strings(bytes(data))
    if leftover:
        raise ValueError(f"{path.name}: Meta endpoints remain: {leftover[:3]}")

    for addr, text in baseline.items():
        if not text:
            continue
        off = to_offset(loads, addr)
        if bytes(data[off : off + len(text)]) != text:
            raise ValueError(f"{path.name}: corrupted reachable constant at {addr:#x}: {text[:40]!r}")

    # A string that lost its NUL terminator shows up as one long NUL-free run
    # carrying our host more than once.  The baseline check above cannot see it:
    # the fused neighbour was never reachable, so it was never recorded.
    host = HOST.encode()
    for run in re.finditer(rb"[^\x00]{40,}", bytes(data)):
        if run.group(0).count(host) > 1:
            raise ValueError(
                f"{path.name}: fused string at {run.start():#x}: {run.group(0)[:60]!r}"
            )

    if not dry_run:
        path.write_bytes(bytes(data))
    return log


def _vaddr_of(loads, file_offset: int) -> int:
    for p_offset, p_vaddr, p_filesz in loads:
        if p_offset <= file_offset < p_offset + p_filesz:
            return p_vaddr + (file_offset - p_offset)
    raise ValueError(f"offset {file_offset:#x} is not mapped")


def main() -> int:
    dry = "--dry-run" in sys.argv
    if "--scan" in sys.argv:
        return scan()
    table_libs = {p[0] for p in PATCHES} | {f[0] for f in SPAN_FILLS}
    for lib in sorted(table_libs):
        patches = [(v, p) for (l, v, p) in PATCHES if l == lib]
        fills = [f for f in SPAN_FILLS if f[0] == lib]
        print(lib)
        for line in patch_library(LIBDIR / lib, patches, fills, dry):
            print(line)

    # Every other library, in every app, is patched from the strings it carries.
    for so in sorted((ROOT / "decompiled").rglob("*.so")):
        if so == LIBDIR / so.name:
            continue  # already handled by the table above
        patches = [(v, replacement) for (v, replacement, _old) in discover_patches(so)]
        if not patches:
            continue
        print(so.relative_to(ROOT))
        for line in patch_library(so, patches, [], dry):
            print(line)

    print(f"\n{'[dry-run] ' if dry else ''}native libraries patched")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
