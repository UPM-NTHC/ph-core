"""Verify every retained release, exact packages, aliases, publication JSON, and RSS."""
import json
import urllib.parse
import xml.etree.ElementTree as ET
from pathlib import Path
from phcorelib import *

def verify(fetch, inventory, external=False):
    root = Path("site")
    manifest = json.loads((root / "phcore/release-manifest.json").read_text())
    for path in ("/phcore", "/phcore/"):
        require(
   	    b"<html" in fetch("/phcore/").lower(),
            "Current homepage missing"
	)
    checked = set()
    for release in manifest["releases"]:
        tag = release["tag"]
        prefix = "/phcore/" + urllib.parse.quote(tag, safe="") + "/"
        require(b"<html" in fetch(prefix).lower(), "Version homepage missing: " + tag)
        for marker, expected in (("DEPLOYED_VERSION", tag), ("DEPLOYED_COMMIT", release["commit"])):
            require(fetch(prefix + marker).decode().strip() == expected, "Wrong release marker: " + tag)
        path = "phcore/" + tag + "/package.tgz"
        require(sha(fetch(prefix + "package.tgz")) == sha((root / path).read_bytes()), "Wrong version package: " + tag)
        checked.add(prefix + "package.tgz")
    current = next(r for r in manifest["releases"] if r["tag"] == manifest["current"])
    for marker, expected in (("DEPLOYED_VERSION", current["tag"]), ("DEPLOYED_COMMIT", current["commit"])):
        require(fetch("/phcore/" + marker).decode().strip() == expected, "Wrong current marker")
    for name in ("package.tgz", "package.r4.tgz"):
        require(sha(fetch("/phcore/" + name)) == sha((root / "phcore" / name).read_bytes()), "Wrong current " + name)
    for name in ("package-list.json", "release-manifest.json"):
        require(json.loads(fetch("/phcore/" + name)) == json.loads((root / "phcore" / name).read_text()), "Wrong " + name)
    require(b"<html" in fetch("/phcore/" + current.get("entry", "")).lower(), "Current language homepage missing")
    feed = fetch("/package-feed.xml")
    require(feed == (root / "package-feed.xml").read_bytes(), "Feed does not match this container")
    parsed = ET.fromstring(feed)
    require(parsed.tag == "rss" and parsed.get("version") == "2.0", "Not RSS 2.0")
    require(len(parsed.findall("./channel/item")) == len(inventory), "RSS item count differs")
    if external:
        for item in inventory:
            if item["package_id"] == "fhir.ph.core":
                data = fetch(urllib.parse.urlsplit(item["url"]).path)
                canonical = CANONICAL
            else:
                data = download(item["url"], attempts=3)
                canonical = ORIGIN + "/pheref"
                marker_url = item["url"].rsplit("/", 1)[0] + "/DEPLOYED_COMMIT"
                require(download(marker_url, 4096, attempts=3).decode().strip() == item["commit"], "External feed source commit mismatch")
            validate_package(data, item["tag"], item["package_id"], canonical)
            require(sha(data) == item["sha256"], "Feed artifact digest mismatch")
    print("PASS: all retained versions, package hashes, current aliases, publication JSON, and RSS")
