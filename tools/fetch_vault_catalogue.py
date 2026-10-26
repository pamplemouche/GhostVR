#!/usr/bin/env python3
"""Fetch the Gear VR Vault catalogue and turn it into store data for the worker.

`vault.gearvr.net` is a WordPress site whose `product` post type is the Gear VR
back catalogue: ~865 entries, each with a title, a description and a link to an
APK under `/APK/`. It is the only surviving source for most of these binaries,
so the store is built from it rather than from Meta's retired catalogue.

This tool is read-only and only talks to the vault. It writes:

  data/vault_catalogue.json   - every product, keyed by package name

The worker loads that file to answer the store's GraphQL queries. Downloading
the APKs themselves is a separate step (see `fetch_vault_apks.py`): the
catalogue is small and belongs in git, the binaries do not.

Usage:
    python3 tools/fetch_vault_catalogue.py
    python3 tools/fetch_vault_catalogue.py --limit 20   # quick smoke run
"""

from __future__ import annotations

import argparse
import html
import json
import re
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / "data" / "vault_catalogue.json"

API = "https://vault.gearvr.net/wp-json/wp/v2/product"
PER_PAGE = 100
# The vault is a small shared host; be a good citizen and keep the pace modest.
DELAY_SECONDS = 0.25

APK_URL = re.compile(r"https?://vault\.gearvr\.net/APK/([A-Za-z0-9._+-]+\.apk)", re.I)


def get(url: str, tries: int = 4) -> tuple[bytes, dict]:
    last: Exception | None = None
    for attempt in range(tries):
        try:
            request = urllib.request.Request(url, headers={"User-Agent": "GhostVR-catalogue/1.0"})
            with urllib.request.urlopen(request, timeout=45) as response:
                return response.read(), dict(response.headers)
        except (urllib.error.URLError, TimeoutError) as error:
            last = error
            time.sleep(1.5 * (attempt + 1))
    raise RuntimeError(f"gave up on {url}: {last}")


def text_of(field) -> str:
    """WordPress returns `{"rendered": "..."}` for most rich fields."""
    if isinstance(field, dict):
        return field.get("rendered", "")
    return field or ""


def strip_html(raw: str) -> str:
    # Drop the download link block first: it is chrome, not a description.
    raw = re.sub(r"<a[^>]*>\s*Download[^<]*</a>", " ", raw, flags=re.I)
    raw = re.sub(r"<br\s*/?>|</p>", "\n", raw, flags=re.I)
    raw = re.sub(r"<[^>]+>", " ", raw)
    raw = html.unescape(raw)
    raw = re.sub(r"[ \t]+", " ", raw)
    raw = re.sub(r"\n\s*\n+", "\n", raw)
    return raw.strip()


def apk_name_from(product: dict) -> str | None:
    """The APK filename is the package name, e.g. `com.Foo.Bar.apk`."""
    for match in APK_URL.finditer(text_of(product.get("content"))):
        return match.group(1)
    # Some entries link the file without the scheme.
    for match in re.finditer(r"/APK/([A-Za-z0-9._+-]+\.apk)", text_of(product.get("content"))):
        return match.group(1)
    return None


def package_of(apk_name: str) -> str:
    return apk_name[: -len(".apk")] if apk_name.lower().endswith(".apk") else apk_name


def collect(limit: int | None) -> dict:
    catalogue: dict[str, dict] = {}
    page = 1
    seen = 0
    while True:
        url = f"{API}?per_page={PER_PAGE}&page={page}&orderby=title&order=asc"
        body, headers = get(url)
        items = json.loads(body)
        if not items:
            break
        for item in items:
            apk = apk_name_from(item)
            if not apk:
                # A handful of entries are prose pages with no binary; skip them
                # rather than listing an app that cannot be installed.
                continue
            package = package_of(apk)
            catalogue[package] = {
                "package_name": package,
                "apk": apk,
                "display_name": html.unescape(text_of(item.get("title"))).strip(),
                "description": strip_html(text_of(item.get("content"))),
                "slug": item.get("slug", ""),
                "vault_url": item.get("link", ""),
                "updated": item.get("modified_gmt") or item.get("modified") or "",
            }
            seen += 1
            if limit and seen >= limit:
                return catalogue
        total_pages = int(headers.get("X-WP-TotalPages", "1") or "1")
        print(f"  page {page}/{total_pages} - {len(catalogue)} apps", flush=True)
        if page >= total_pages:
            break
        page += 1
        time.sleep(DELAY_SECONDS)
    return catalogue


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--limit", type=int, default=None, help="stop after N apps (smoke test)")
    parser.add_argument("--out", type=Path, default=OUT)
    args = parser.parse_args()

    print(f"fetching {API} ...")
    catalogue = collect(args.limit)
    if not catalogue:
        print("no products found - refusing to overwrite", file=sys.stderr)
        return 1

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(
        json.dumps(catalogue, indent=1, sort_keys=True, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    try:
        shown = args.out.relative_to(ROOT)
    except ValueError:
        shown = args.out
    print(f"wrote {len(catalogue)} apps -> {shown}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
