#!/usr/bin/env python3
"""Check the Worker's GraphQL answers against the decompiled client models.

`GRAPHQL_PAYLOAD` in `src/index.js` is a superset of every `/graphql` response
the phone app can deserialize, and the app's models are plain Gson POJOs.  That
combination fails silently in two ways that both end on the generic error
screen:

* a key the model declares is missing, so the field stays null and the first
  consumer that dereferences it throws (or Gson rejects the body outright);
* a value whose JSON kind does not match the declared field type, which Gson
  rejects with `JsonSyntaxException`.

This script walks each `/graphql` response class exactly the way the client
does - unwrapping the `@SingleEntryMapResponse` envelope when the class is
annotated - and reports every mismatch.  Enums are checked against their real
constants, collections must be arrays, and nested objects recurse.

Run from the repository root:
    python3 tools/check_graphql_payload.py [--quiet]

Exits non-zero when any class has a problem, so it is usable as a gate.
"""

from __future__ import annotations

import argparse
import glob
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
# Every decompiled tree that carries `/graphql` response models.  OCMS is its
# own package with its own `/graphql` methods (`LibraryMethods$Methods`), so it
# has to be listed here or its models are never checked against the payload.
TREES = ("decompiled/Oculus/smali", "decompiled/Oculus/smali_classes2",
         "decompiled/Oculus/smali_classes3",
         "decompiled/Oculus Core Mobile Services/smali")

FIELD_RE = re.compile(
    r'^\.field public (\w+):(\[?L?[\w/$;]+);((?:\n[ \t].*)*)', re.M)
SER_RE = re.compile(r'SerializedName;\s*\n\s*value = "([^"]+)"')
ENUM_CONST_RE = re.compile(r'\.field public static final enum (\w+):')

COLLECTIONS = {
    'java/util/List', 'java/util/ArrayList', 'java/util/Set',
    'java/util/HashSet', 'java/util/Collection', 'java/util/Iterable',
    'java/util/LinkedList', 'com/google/common/collect/ImmutableList',
    'com/google/common/collect/ImmutableSet',
}
MAPS = {
    'java/util/Map', 'java/util/HashMap', 'java/util/LinkedHashMap',
    'com/google/common/collect/ImmutableMap',
}
STRINGS = {'java/lang/String', 'java/lang/CharSequence'}
NUMBERS = {'java/lang/Integer', 'java/lang/Long', 'java/lang/Double',
           'java/lang/Float', 'java/lang/Short'}
MAX_DEPTH = 14


def load_classes() -> dict[str, dict]:
    classes: dict[str, dict] = {}
    for tree in TREES:
        for path in glob.glob(str(ROOT / tree / '**/*.smali'), recursive=True):
            text = Path(path).read_text(encoding='utf-8', errors='ignore')
            if not text.startswith('.class'):
                continue
            match = re.match(r'\.class[^\n]*?\sL([\w/$]+);', text)
            if not match:
                continue
            fields = []
            for field in FIELD_RE.finditer(text):
                serialized = SER_RE.search(field.group(3))
                fields.append((field.group(1),
                               serialized.group(1) if serialized else field.group(1),
                               field.group(2)))
            classes[match.group(1)] = {
                'fields': fields,
                'annotated': 'SingleEntryMapResponse' in text,
                'enum': '.super Ljava/lang/Enum;' in text,
                'constants': ENUM_CONST_RE.findall(text),
            }
    return classes


def declared_kind(descriptor: str, classes: dict) -> str:
    if descriptor.startswith('['):
        return 'array'
    if descriptor in ('I', 'J', 'S', 'B', 'D', 'F', 'C'):
        return 'number'
    if descriptor == 'Z':
        return 'bool'
    if not descriptor.startswith('L'):
        return 'any'
    name = descriptor[1:].rstrip(';')
    if name in classes and classes[name]['enum']:
        return 'enum:' + name
    if name in STRINGS:
        return 'string'
    if name == 'java/lang/Boolean':
        return 'bool'
    if name in NUMBERS:
        return 'number'
    if name in COLLECTIONS:
        return 'array'
    if name in MAPS:
        return 'object'
    if name.startswith('java/') or name.startswith('com/google/'):
        return 'any'
    return 'object'


def json_kind(value) -> str:
    if value is None:
        return 'null'
    if isinstance(value, bool):
        return 'bool'
    if isinstance(value, (int, float)):
        return 'number'
    if isinstance(value, str):
        return 'string'
    if isinstance(value, list):
        return 'array'
    if isinstance(value, dict):
        return 'object'
    return 'other'


def graphql_response_classes(classes: dict) -> list[str]:
    """Classes returned by a method whose Retrofit annotation is /graphql."""
    used: set[str] = set()
    for tree in TREES:
        for path in glob.glob(str(ROOT / tree / '**/*.smali'), recursive=True):
            text = Path(path).read_text(encoding='utf-8', errors='ignore')
            if '/graphql' not in text:
                continue
            for block in re.split(r'\n\.method ', text)[1:]:
                if '/graphql' not in block:
                    continue
                if 'http/GET' not in block and 'http/POST' not in block:
                    continue
                for found in re.finditer(r'L(com/oculus/[\w/$]+Response);', block):
                    name = found.group(1)
                    if name in classes and classes[name]['fields']:
                        used.add(name)
    return sorted(used)


def walk(cls, node, path, depth, classes, problems, seen):
    if depth <= 0 or cls not in classes or not isinstance(node, dict):
        return
    for field, serialized, descriptor in classes[cls]['fields']:
        where = f'{path}.{serialized}'
        want = declared_kind(descriptor, classes)
        if serialized not in node:
            problems.append((where, f'MISSING want={want} field={field} class={cls}'))
            continue
        value = node[serialized]
        got = json_kind(value)
        if want == 'any' or got == 'null':
            continue
        if want.startswith('enum:'):
            enum = want[5:]
            if got != 'string' or value not in classes[enum]['constants']:
                problems.append((where, 'ENUM want one of '
                                 f'{classes[enum]["constants"]} got={json.dumps(value)}'))
            continue
        if want != got:
            problems.append((where, f'TYPE want={want} got={got} '
                             f'val={json.dumps(value)[:34]} field={field} class={cls}'))
            continue
        if want == 'object':
            nested = descriptor[1:].rstrip(';')
            if nested not in seen:
                walk(nested, value, where, depth - 1, classes, problems,
                     seen | {nested})


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--quiet', action='store_true',
                        help='only print the summary line')
    args = parser.parse_args()

    source = (ROOT / 'src/index.js').read_text(encoding='utf-8')
    match = re.search(r'const GRAPHQL_PAYLOAD = (\{.*?\});\n', source, re.S)
    if not match:
        print('GRAPHQL_PAYLOAD not found in src/index.js', file=sys.stderr)
        return 2
    payload = json.loads(match.group(1))

    classes = load_classes()
    targets = graphql_response_classes(classes)
    problems: list[tuple[str, str]] = []
    for cls in targets:
        root = classes[cls]['fields'][0][1]
        body = {root: payload}
        instance = body[root] if classes[cls]['annotated'] else body
        walk(cls, instance, root, MAX_DEPTH, classes, problems, frozenset({cls}))

    if not args.quiet:
        for where, message in problems:
            print(f'  {where:70} {message}')
    print(f'graphql classes: {len(targets)}, problems: {len(problems)}')
    return 1 if problems else 0


if __name__ == '__main__':
    raise SystemExit(main())
