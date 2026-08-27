# Crafted Gear Finder data

This importer incorporates the six-profession dataset researched and contributed
by [SnaxxNZ](https://github.com/SnaxxNZ) in
[Discussion #28](https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK/discussions/28#discussioncomment-18170326).
The contribution expands practical crafted coverage without changing item scores.

## Sources and reproducibility

The original CSVs are kept unchanged in `data/`:

- [Alchemy.csv](https://github.com/user-attachments/files/31496957/Alchemy.csv)
- [Blacksmithing.csv](https://github.com/user-attachments/files/31496958/Blacksmithing.csv)
- [Engineering.csv](https://github.com/user-attachments/files/31496959/Engineering.csv)
- [Jewelcrafting.csv](https://github.com/user-attachments/files/31496960/Jewelcrafting.csv)
- [Leatherworking.csv](https://github.com/user-attachments/files/31496961/Leatherworking.csv)
- [Tailoring.csv](https://github.com/user-attachments/files/31496962/Tailoring.csv)

Recipe IDs, outputs, skills, acquisition flags, and recipe specialization IDs were
reproduced against Ackis Recipe List v2.01. The contributor's
[extraction script](https://github.com/user-attachments/files/31497694/arl_to_csv.py)
was reviewed, not adopted as the production importer. It tries Evowow, WotLKDB,
and Wowhead in that order but does not record the successful endpoint. Its
Wowhead URL columns are reference links, not evidence of the actual scraped feed.

`verified_items.json` is a reproducible, item-scoped projection of
[AzerothCore item_template at commit 4d9d1d4](https://github.com/azerothcore/azerothcore-wotlk/blob/4d9d1d4b5723e819c5c390f6ca1177283dbfb8e3/data/sql/base/db_world/item_template.sql).
The full SQL SHA-256 is
`bd4859be01946ca1521f7896f558f665e1e1d98890757a3df30e717b62768cc6`.
This pinned source supplies actual equip skills, equip specialization spell IDs,
class masks, bindings, levels, and the six missing Alchemy trinket records.
The full 16 MB SQL download is not needed for ordinary regeneration and is not
kept in the repository.

From the repository root (Python 3.10+):

```powershell
py -3 -B tools/gearfinder/import_crafted.py
py -3 -B tools/gearfinder/import_crafted.py --check
lua tools/gearfinder/test_crafted.lua ZygorGuidesViewerRM
```

For exact Lua 5.1 validation, `test_lua51.py` uses the optional `lupa.lua51`
module. It accepts an addon directory and, optionally, a temporary Lupa install
directory; the addon itself has no Python or Lupa dependency.

To reproduce the pinned verification snapshot, download the exact linked SQL
revision and use `--snapshot-sql path/to/item_template.sql`. A hash mismatch
fails rather than silently adopting newer data. `--output` supports a live-first
release candidate path; `--check` never rewrites files. No importer command
performs network requests or executes the downloaded SQL.

## Runtime contract

`Data-WOTLK/GearFinderCraftedExpanded.lua` is generated and loads immediately after
the existing curated source table. It adds 1,089 distinct items and updates the
requirements on 332 existing entries. The combined finder has 1,437 distinct
crafted items. Existing group membership, category, expansion, and source-level
minimum levels remain unchanged; the import never duplicates an existing item.

Version-2 item records separate these fields:

| Field | Meaning |
| --- | --- |
| `minSkill` | Recipe crafting skill; enforced for self-crafted BoP acquisition |
| `equipSkill` | Profession skill needed to wear/use the finished item, including BoE |
| `equipSpellID` | Actual equip specialization, checked independently of skill |
| `recipeSpecializationSpellID` | Crafter specialization; enforced for BoP acquisition, not a BoE buyer |
| `allowableClassMask` | Actual item restriction, not ARL's suggested class flags |
| `recipeSource` | Acquisition context for the recipe, not a promise of availability or a drop rate |

The original CSV's Axesmith/Hammersmith labels are swapped; the importer recovers
their underlying spell IDs. Client-localized spell names are used for display.
Leatherworking's raw learning IDs are normalized to the actual specialization
spell IDs. Localized profession skill-line names are resolved through the client.

Ordinary BoEs remain available to non-crafters. Profession-restricted BoEs use
their equip skill, while a BoP target still requires the character to be able to
craft it. Tooltips distinguish these requirements and show recipe acquisition
context. Rare recipe sources do not automatically exclude a tradable result.

New groups retain expansion provenance separately from character-level bands.
Sub-80 items are leveling sources unless they are Wrath profession-gated gear
with skill 400+ and item level 187+. Eligible Wrath endgame crafts are raid sources
at item level 219+, otherwise PvP when they have resilience, otherwise pre-raid.
Existing curated classifications override this rule. Existing source toggles,
max-level exclusions, progression mode, and item scoring remain in place.

## Deliberate exceptions and limitations

See `data/import_report.json` for exact counts and excluded recipe IDs.

- Goblin Mortar's reload is not a second item acquisition.
- ARL repeats plate goggles item 44742 for recipes 61481/61482. Those two recipes
  remain excluded pending independent output verification; verified recipe 61483
  supplies the plate item once. No guessed leather/mail replacements are added.
- Thirteen retired recipe rows are not newly imported. Four already-curated
  Glacial items remain available with a legacy/availability warning; nine other
  legacy items, including Classic Icebane, are not added.
- Six Alchemy trinkets have inventory slots but trade-goods item classification.
  Their supplemental records do not overwrite the base item DB or bypass live
  tooltip resolution. Passive/on-use spell effects and random suffixes are still
  handled by the existing scorer; the import does not invent flat stat weights.
- Recipe knowledge, Auction House stock/prices, material cost, and realm-specific
  retired content are not known to this offline source list. This is expanded
  coverage, not a guarantee that every craft is available on every realm.

The regression suite loads the actual generated data and extracts the actual
finder helpers. It checks every version-2 record's skill and level boundaries,
equip specializations, class restrictions, non-crafter BoEs, BoP acquisition,
Russian skill names, the 3.3.5 spellbook fallback, metadata propagation, tooltips,
and unchanged source/progression behavior. In-client testing is still required.
