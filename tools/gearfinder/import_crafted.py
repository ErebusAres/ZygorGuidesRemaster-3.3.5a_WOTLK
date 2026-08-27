#!/usr/bin/env python3
"""Reproducible, offline import of SnaxxNZ's Discussion #28 crafted data.

No scraping is performed. Equip restrictions come from the pinned AzerothCore
snapshot, not ARL recommendation flags or blank scraped tooltip fields.
"""
import argparse
import csv
import hashlib
import json
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
DATA = Path(__file__).parent / "data"
ADDON = ROOT / "ZygorGuidesViewerRM"
SQL_COMMIT = "4d9d1d4b5723e819c5c390f6ca1177283dbfb8e3"
SQL_SHA256 = "bd4859be01946ca1521f7896f558f665e1e1d98890757a3df30e717b62768cc6"
SQL_URL = f"https://raw.githubusercontent.com/azerothcore/azerothcore-wotlk/{SQL_COMMIT}/data/sql/base/db_world/item_template.sql"
PROFESSIONS = {"Alchemy": 171, "Blacksmithing": 164, "Engineering": 202,
               "Jewelcrafting": 755, "Leatherworking": 165, "Tailoring": 197}
EXPANSIONS = {"Classic": 0, "The Burning Crusade": 1, "Wrath of the Lich King": 2}
# These strings are the contributor's ARL-derived labels, NOT canonical names.
# Their Axesmith/Hammersmith labels were reversed; retaining the underlying ID
# lets GetSpellInfo display the correct, localized specialization in the client.
RECIPE_SPECS = {"": 0, "Armorsmith": 9788, "Weaponsmith": 9787,
    "Master Swordsmith": 17039, "Master Axesmith": 17040, "Master Hammersmith": 17041,
    "Gnomish Engineer": 20219, "Goblin Engineer": 20222,
    "Spellfire Tailoring": 26797, "Mooncloth Tailoring": 26798, "Shadoweave Tailoring": 26801,
    "Specialty 10657": 10656, "Specialty 10659": 10658, "Specialty 10661": 10660}
SKIP_RECIPES = {
    13240: "Goblin Mortar reload, not a second new item",
    61481: "ARL repeats plate item 44742 for a leather recipe; output needs independent verification",
    61482: "ARL repeats plate item 44742 for a mail recipe; output needs independent verification",
}
FIELDS = ["entry", "name", "class", "subclass", "Quality", "InventoryType", "ItemLevel",
    "RequiredLevel", "RequiredSkill", "RequiredSkillRank", "requiredspell", "AllowableClass",
    "AllowableRace", "bonding", "armor", "block", "RandomProperty", "RandomSuffix"]
FIELDS += [f"stat_{kind}{i}" for i in range(1, 11) for kind in ("type", "value")]
STAT_NAMES = {3: "agility", 4: "strength", 5: "intellect", 6: "spirit", 7: "stamina",
    12: "defenseRating", 13: "dodgeRating", 14: "parryRating", 15: "blockRating",
    31: "hitRating", 32: "critRating", 35: "resilienceRating", 36: "hasteRating",
    37: "expertiseRating", 38: "attackPower", 39: "rangedAttackPower", 43: "mp5",
    44: "armorPenRating", 45: "spellPower", 46: "healthRegen", 47: "spellPenetration"}


def read_rows():
    rows = []
    for profession in sorted(PROFESSIONS):
        with (DATA / (profession + ".csv")).open(encoding="utf-8-sig", newline="") as f:
            for row in csv.DictReader(f):
                assert row["profession"] == profession
                rows.append(row)
    assert len({r["recipeSpellID"] for r in rows}) == len(rows), "Duplicate recipe IDs"
    return rows


def build_snapshot(sql_path, rows):
    raw = sql_path.read_bytes()
    assert hashlib.sha256(raw).hexdigest() == SQL_SHA256, "Unexpected SQL snapshot; review before updating pin"
    sql = raw.decode("utf-8")
    columns = re.findall(r"^  `([^`]+)`", sql, re.M)
    wanted = {int(r["itemID"]) for r in rows}
    items = {}
    for match in re.finditer(r"\((\d+),((?:'(?:\\.|[^'\\])*'|[^'()])*)\)[,;]", sql):
        itemid = int(match[1])
        if itemid not in wanted:
            continue
        values = re.findall(r"'(?:\\.|[^'\\])*'|[^,]+", match[1] + "," + match[2])
        assert len(values) == len(columns)
        def decode(value):
            if value.startswith("'"):
                return re.sub(r"\\(.)", r"\1", value[1:-1])
            return None if value == "NULL" else float(value) if "." in value else int(value)
        item = dict(zip(columns, map(decode, values)))
        items[str(itemid)] = {key: item[key] for key in FIELDS}
    assert set(map(int, items)) == wanted
    # One stable line per item keeps source-control reviews manageable.
    lines = ['{', '  "source": ' + json.dumps(SQL_URL) + ',', '  "sha256": ' + json.dumps(SQL_SHA256) + ',', '  "items": {']
    ordered = sorted(items, key=int)
    for index, key in enumerate(ordered):
        lines.append('    ' + json.dumps(key) + ': ' + json.dumps(items[key], ensure_ascii=False, sort_keys=True) + (',' if index < len(ordered)-1 else ''))
    lines += ['  }', '}', '']
    (DATA / "verified_items.json").write_text('\n'.join(lines), encoding="utf-8", newline="\n")


def lua(value):
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, str):
        return json.dumps(value, ensure_ascii=False)
    if isinstance(value, dict):
        return "{ " + ", ".join(f"{k} = {lua(v)}" for k, v in value.items()) + " }"
    if isinstance(value, list):
        return "{ " + ", ".join(lua(v) for v in value) + " }"
    if value is None:
        return "nil"
    return str(value)


def generate(rows):
    snapshot = json.loads((DATA / "verified_items.json").read_text(encoding="utf-8"))
    assert snapshot["source"] == SQL_URL and snapshot["sha256"] == SQL_SHA256
    items = snapshot["items"]
    base = (ADDON / "Data-WOTLK/GearFinderCraftedSources.lua").read_text(encoding="utf-8")
    existing = set(map(int, re.findall(r"^\s*\[(\d+)\]\s*=", base, re.M)))
    db_ids = set(map(int, re.findall(r"^\s*\[(\d+)\]=", (ADDON / "ZygorItemDB.lua").read_text(encoding="utf-8"), re.M)))
    imported, groups, excluded, legacy = {}, {}, [], set()
    for row in sorted(rows, key=lambda r: int(r["recipeSpellID"])):
        spell, itemid = int(row["recipeSpellID"]), int(row["itemID"])
        reason = SKIP_RECIPES.get(spell)
        if "Removed / Retired" in row["source"]:
            reason = "Legacy/retired learning source: not newly added; existing curated entry, if any, is preserved"
            if itemid in existing:
                legacy.add(itemid)
        if reason:
            excluded.append({"recipeSpellID": spell, "itemID": itemid, "reason": reason})
            continue
        assert itemid not in imported, f"Unreviewed duplicate output {itemid}"
        item = items[str(itemid)]
        profession = row["profession"]
        assert int(row["requiredLevel"] or 0) == item["RequiredLevel"], (itemid, "required level")
        assert int(row["itemLevel"]) == item["ItemLevel"], (itemid, "item level")
        assert item["RequiredSkill"] in (0, PROFESSIONS[profession]), (itemid, "equip profession")
        assert row["specialization"] in RECIPE_SPECS, (itemid, "recipe specialization")
        expansion = EXPANSIONS[row["expansion"]]
        level = item["RequiredLevel"]
        category = "leveling"
        if expansion == 2 and (level >= 80 or (item["RequiredSkillRank"] >= 400 and item["ItemLevel"] >= 187)):
            resilience = any(item[f"stat_type{i}"] == 35 and item[f"stat_value{i}"] > 0 for i in range(1, 11))
            category = "raid" if item["ItemLevel"] >= 219 else "pvp" if resilience else "pre_raid"
        band = "1-60" if level and level <= 60 else "61-70" if level and level <= 70 else "71-80" if level else "profession-gated"
        group = f"expanded_{profession.lower()}_{expansion}_{category}_{band.replace('-', '_')}"
        groups[group] = {"key": group, "name": f"{profession} crafted gear ({band})", "sourceType": "crafted",
            "profession": profession, "minLevel": 0, "expansionLevel": expansion, "category": category}
        imported[itemid] = {"requirementsVersion": 2, "profession": profession, "minLevel": level,
            "minSkill": int(row["skill"]), "equipSkill": item["RequiredSkillRank"], "equipSpellID": item["requiredspell"],
            "recipeSpecializationSpellID": RECIPE_SPECS[row["specialization"]], "recipeSpellID": spell,
            "recipeSource": row["source"], "bind": {0: "none", 1: "bop", 2: "boe", 3: "bou"}[item["bonding"]],
            "professionOnly": bool(item["RequiredSkill"] or item["requiredspell"] or item["bonding"] == 1),
            "allowableClassMask": item["AllowableClass"], "expansionLevel": expansion, "sourceGroup": group}
    # Only retain groups needed for newly added items. Existing categories stay intact.
    used_groups = {v["sourceGroup"] for i, v in imported.items() if i not in existing}
    lines = ["-- Generated by tools/gearfinder/import_crafted.py; do not edit by hand.",
        "-- Crafted research: SnaxxNZ, Discussion #28; recipe metadata: Ackis Recipe List v2.01.",
        "-- Equip restrictions: pinned AzerothCore item_template; see tools/gearfinder/README.md.",
        "local ZGV = ZygorGuidesViewer", "if not (ZGV and ZGV.ItemScore) then return end",
        "local sources = ZGV.ItemScore.GearFinderCraftedSources", "if not sources then return end", "local imported = {"]
    for itemid, entry in sorted(imported.items()):
        lines.append(f"  [{itemid}] = {lua(entry)}, -- {items[str(itemid)]['name']}")
    lines += ["}", "local groups = {"]
    for group in sorted(used_groups):
        lines.append(f"  {group} = {lua(groups[group])},")
    legacy_lua = "{ " + ", ".join(f"[{i}] = true" for i in sorted(legacy)) + " }"
    lines += ["}", "local legacy = " + legacy_lua, "local seen = {}", "for _, source in pairs(sources) do",
        "  for itemid, entry in pairs(source.items or {}) do", "    local extra = imported[itemid]",
        "    if extra then", "      for key, value in pairs(extra) do",
        '        if key ~= "sourceGroup" and key ~= "expansionLevel" then entry[key] = value end',
        "      end", "      seen[itemid] = true", "    end", "    if legacy[itemid] then",
        '      entry.recipeSource = "Legacy/retired recipe - check for an established crafter or server availability"',
        "    end", "  end", "end",
        "for itemid, entry in pairs(imported) do", "  if not seen[itemid] then",
        "    local key = entry.sourceGroup", "    if not sources[key] then",
        "      sources[key] = groups[key]", "      sources[key].items = {}", "    end",
        "    sources[key].items[itemid] = entry", "  end", "end"]
    missing = sorted(set(imported) - db_ids)
    lines += ["", "-- Equippable Alchemy trinkets omitted by the base armor/weapon-only export.",
        "-- Never overwrite the maintained base DB or mark these records as live-resolved.",
        "if ZygorItemDB and ZygorItemDB.items then", "  local supplements = {"]
    for itemid in missing:
        item = items[str(itemid)]
        assert item["InventoryType"] == 12, (itemid, "unexpected missing slot")
        stats = {}
        for i in range(1, 11):
            kind, value = item[f"stat_type{i}"], item[f"stat_value{i}"]
            if value:
                assert kind in STAT_NAMES, (itemid, kind)
                stats[STAT_NAMES[kind]] = value
        record = {"n": item["name"], "i": item["ItemLevel"], "q": item["Quality"], "s": "Trinket",
            "cl": item["AllowableClass"], "rc": item["AllowableRace"], "rl": item["RequiredLevel"],
            "rs": [item["RequiredSkill"], item["RequiredSkillRank"]],
            "st": stats, "ar": item["armor"], "bk": item["block"], "bd": item["bonding"]}
        lines.append(f"    [{itemid}] = {lua(record)},")
    lines += ["  }", "  for itemid, entry in pairs(supplements) do",
        "    if not ZygorItemDB.items[itemid] then ZygorItemDB.items[itemid] = entry end", "  end", "end", ""]
    report = {"inputRows": len(rows), "inputUniqueItems": len({r['itemID'] for r in rows}),
        "inputSHA256": {p + ".csv": hashlib.sha256((DATA / (p + ".csv")).read_bytes()).hexdigest() for p in sorted(PROFESSIONS)},
        "verificationSQLSHA256": SQL_SHA256,
        "importedItems": len(imported), "newItems": len(set(imported) - existing),
        "updatedExistingItems": len(set(imported) & existing), "totalCraftedItems": len(existing | set(imported)),
        "newGroups": len(used_groups), "supplementalItemRecords": missing,
        "preservedLegacyItems": sorted(legacy),
        "newItemsByProfession": dict(sorted(Counter(v['profession'] for i,v in imported.items() if i not in existing).items())),
        "excludedRecipes": excluded}
    return "\n".join(lines), json.dumps(report, indent=2, sort_keys=True) + "\n"


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--snapshot-sql", type=Path)
    p.add_argument("--output", type=Path, default=ADDON / "Data-WOTLK/GearFinderCraftedExpanded.lua")
    p.add_argument("--check", action="store_true")
    args = p.parse_args()
    rows = read_rows()
    if args.snapshot_sql:
        assert not args.check
        build_snapshot(args.snapshot_sql, rows)
    code, report = generate(rows)
    report_path = DATA / "import_report.json"
    if args.check:
        assert args.output.read_text(encoding="utf-8") == code, "Generated Lua is out of date"
        assert report_path.read_text(encoding="utf-8") == report, "Import report is out of date"
        print("Crafted import is reproducible and up to date")
    else:
        args.output.write_text(code, encoding="utf-8", newline="\n")
        report_path.write_text(report, encoding="utf-8", newline="\n")
        print(report)


if __name__ == "__main__":
    main()
