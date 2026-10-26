#!/usr/bin/env python3
"""Check the worker answers every field the client's own queries ask for.

The VR app builds its GraphQL documents in smali with `<placeholder>` arguments
(`ApiDispatcher.smali`), and the React bundles build theirs from fragments baked
into Hermes bytecode. Both are easy to get subtly wrong: a field the client asks
for and the worker does not return is `undefined` in the Relay store, and the
screen reading it throws rather than degrading.

This takes each real query, substitutes the placeholders, posts it to the worker
and walks the response alongside the query, reporting every requested leaf that
came back missing. It is the check that found `app_store` being served at the
top level while the query asked for it under `viewer`.

    python3 tools/check_query_coverage.py
    python3 tools/check_query_coverage.py --base https://ghostvr.pamplemouche.com
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import urllib.parse
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DISPATCHER = ROOT / "decompiled" / "Oculus" / "smali" / "com" / "oculus" / "horizon" / "api" / "ApiDispatcher.smali"

# Values for the `<placeholder>` arguments the app fills in at runtime. The
# exact values do not matter to the shape check, only that they parse.
SUBSTITUTIONS = {
    "pic_dimension": "360x360",
    "sent_after": "0",
    "app_store_override": "null",
    "machine_id": "ghostvr-check",
    "category": "games",
    "genre": "",
    "price": "",
    "controller": "",
    "ordering": "",
    "cursor": "",
    "count": "20",
    "input": "{}",
}


def extract_queries(path: Path) -> list[str]:
    """Long GraphQL documents embedded as smali string literals."""
    if not path.exists():
        return []
    text = path.read_text(encoding="utf-8", errors="surrogateescape")
    queries = []
    for match in re.finditer(r'const-string(?:/jumbo)?\s+v\d+,\s*"((?:[^"\\]|\\.)*)"', text):
        literal = match.group(1).encode("utf-8", "surrogateescape").decode("unicode_escape")
        # Documents are long and start with a query, mutation or fragment.
        if len(literal) > 300 and re.match(r"\s*(query|mutation|viewer\(|node\(|me\(|fragment)", literal):
            queries.append(literal)
    return list(dict.fromkeys(queries))


def substitute(query: str) -> str:
    def replace(match: re.Match) -> str:
        return SUBSTITUTIONS.get(match.group(1), "0")

    return re.sub(r"<([a-z_]+)>", replace, query)


def parse_selection(query: str) -> list[dict]:
    """Parse a GraphQL document into a tree of requested selections.

    Each node is `{"name": str, "alias": str, "children": [...]}`. This is not a
    full parser - it does not need to be - but it does track nesting and skips
    arguments, so a field is only compared against the object that should hold
    it. Comparing flat name sets instead reports a field as missing whenever its
    parent is an empty list, which is the normal case for a fresh account.

    Two Oculus-specific spellings need care, because both look like fields:

    - `notifications.notification_type(room_invite)` - a `.arg(value)` chain on
      a field, which in this dialect means an argument, not a child selection.
    - `cover_landscape_image.size(360x203) as thumbnail` - `as` names an alias.
    """
    text = re.sub(r"#[^\n]*", "", query)
    tokens = re.findall(r'"[^"]*"|[A-Za-z_][A-Za-z0-9_]*|\{|\}|\(|\)|:|\.|\[|\]|@', text)

    root: list[dict] = []
    stack: list[list[dict]] = [root]
    pending: dict | None = None
    depth_paren = 0
    index = 0

    while index < len(tokens):
        token = tokens[index]
        if token == "(":
            depth_paren += 1
        elif token == ")":
            depth_paren -= 1
        elif depth_paren == 0 and token == "{":
            if pending is not None:
                pending["children"] = []
                stack.append(pending["children"])
                pending = None
            else:
                stack.append([])
        elif depth_paren == 0 and token == "}":
            if len(stack) > 1:
                stack.pop()
        elif depth_paren == 0 and re.match(r"[A-Za-z_]", token):
            if token in {"query", "mutation", "subscription", "fragment", "on"}:
                index += 1
                continue
            if token == "as":
                # `... as <alias>` - rename the selection just opened.
                if stack[-1]:
                    index += 1
                    if index < len(tokens):
                        stack[-1][-1]["alias"] = tokens[index]
                index += 1
                continue
            if index > 0 and tokens[index - 1] == ".":
                # An argument on the preceding field, not a child selection.
                index += 1
                continue
            if index + 1 < len(tokens) and tokens[index + 1] == ":":
                # `alias: realName`
                alias = token
                index += 2
                name = tokens[index] if index < len(tokens) else alias
            else:
                alias = name = token
            pending = {"name": name, "alias": alias, "children": []}
            stack[-1].append(pending)
        index += 1

    return root


def find_gaps(selections: list[dict], payload, path: str = "") -> list[str]:
    """Requested fields whose parent exists in the response but which are absent.

    A missing field under a parent that is itself absent, null, or an empty list
    is not a gap: there is no object to carry it. Those are reported by the
    parent instead, once.
    """
    gaps: list[str] = []

    if isinstance(payload, list):
        if not payload:
            return gaps
        for item in payload:
            gaps.extend(find_gaps(selections, item, path))
        return gaps

    if not isinstance(payload, dict):
        return gaps

    for selection in selections:
        key = selection["alias"]
        if key not in payload:
            gaps.append(f"{path}.{key}" if path else key)
            continue
        if selection["children"]:
            gaps.extend(find_gaps(selection["children"], payload[key], f"{path}.{key}" if path else key))

    return gaps


# Fields the client *asks for* but has no model field to deserialize into, so it
# cannot read them back and their absence cannot affect anything. Keep this
# short, and only add a name after checking that no class declares the field -
# the point of the check is to catch the cases where one does.
NOT_IN_MODEL = {
    # Selected in the store list query, but no class under
    # `com/oculus/horizon/api/` declares a `sku` field. Only the durable-IAP
    # response item has one, and that is a different query.
    "sku",
    # Selected on `viewer.user`, but `api/common/user/User` declares no
    # `account_creation_time` field and no class declares `creation_time`.
    "account_creation_time",
    # Selected on `viewer.user`, but `User` declares no `reachability_data`
    # field; the only other mention is a mutation input in
    # `ReachabilityChecksMethods`, which is a different document.
    "reachability_data",
}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--base", default="https://ghostvr.pamplemouche.com")
    parser.add_argument("--dispatcher", type=Path, default=DISPATCHER)
    args = parser.parse_args()

    queries = extract_queries(args.dispatcher)
    if not queries:
        print(f"no queries found in {args.dispatcher}", file=sys.stderr)
        return 1

    total_gaps = 0
    for query in queries:
        filled = substitute(query)
        url = f"{args.base}/oculus/graphql?" + urllib.parse.urlencode({"q": filled})
        request = urllib.request.Request(url, headers={"User-Agent": "ghostvr-check"})
        try:
            with urllib.request.urlopen(request, timeout=60) as response:
                payload = json.loads(response.read() or b"{}")
        except Exception as error:  # noqa: BLE001 - report and continue
            print(f"FAIL  request error: {error}")
            total_gaps += 1
            continue

        selections = parse_selection(filled)
        gaps = [
            gap for gap in find_gaps(selections, payload)
            if gap.rsplit(".", 1)[-1] not in NOT_IN_MODEL
        ]
        head = filled.strip().split("(", 1)[0][:48]
        if gaps:
            total_gaps += len(gaps)
            print(f"GAP   {head}: {len(gaps)} field(s) absent")
            for gap in gaps[:40]:
                print(f"        {gap}")
            if len(gaps) > 40:
                print(f"        ... and {len(gaps) - 40} more")
        else:
            print(f"ok    {head}: every requested field answered")

    print(f"\n{len(queries)} query document(s), {total_gaps} missing field(s)")
    return 1 if total_gaps else 0


if __name__ == "__main__":
    raise SystemExit(main())
