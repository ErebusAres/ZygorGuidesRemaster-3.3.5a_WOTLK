# Zygor Guides Viewer Remaster (3.3.5a WotLK)

This is a remastered UI/UX fork of Zygor Guides Viewer for **World of Warcraft 3.3.5a (build 12340)**, intended for private servers (e.g., TrinityCore). It is intended to **replace the original Zygor Guides Viewer addon** for 3.3.5a.

## What's New

- **Remastered UI** (default) with modernized layout and styling.
- **Legacy UI still available** for those who want the original look.
- Guide content is preserved and expanded where applicable (e.g., additional imported guides).
- Functional behavior preserved: step progression, waypoints, parsing, etc.
- New remaster skins including **Goals** theme.

## Installation

1. Exit World of Warcraft completely.
2. Open your AddOns folder:
   - `%WoWFolder%\Interface\AddOns\`
3. Remove any existing Zygor folders:
   - Delete `ZygorGuidesViewer`
   - Delete `ZygorTalentAdvisor`; Optionally, if you plan to reinstall ZygorTalentAdvisor.
4. Download or clone this repository.
5. Copy the folder **`ZygorGuidesViewerRM`**, Optionally: **`ZygorTalentAdvisor`** into your AddOns directory:
   - `%WoWFolder%\Interface\AddOns\ZygorGuidesViewerRM`
   - `%WoWFolder%\Interface\Addons\ZygorTalentAdvisor`
6. Start the game and enable:
   - **Zygor Guides Viewer Remastered**
   - **Zygor Talent Advisor** (optional)

## Notes

- This project is designed for **WotLK 3.3.5a (build 12340)**.
- This remaster focuses on UI/UX and guide organization for 3.3.5a; core logic is preserved.
- `ZygorTalentAdvisor` is included for convenience. It has not been modified and is provided only to consolidate the addon package.

## Localization Status (Estimated)

These percentages are a repository-snapshot estimate, not a final QA-certified metric.
Last updated: **February 13, 2026**.

Method used:
- Compared each locale against `Localization/enUS.lua` and `Localization/NPCs_enUS.lua`.
- Counted entries as "completed" when a locale entry exists and differs from enUS text.
- Overall estimate is weighted by total string count (`Main` + `NPCs`).

| Locale | Main (Estimated) | NPCs (Estimated) | Overall (Estimated) |
|---|---:|---:|---:|
| deDE | 50.50% | 75.48% | 74.71% |
| esES | 2.68% | 67.41% | 65.42% |
| frFR | 49.50% | 68.15% | 67.58% |
| koKR | 0.00% | 80.06% | 77.60% |
| ruRU | 60.20% | 80.14% | 79.53% |
| zhCN | 53.85% | 77.06% | 76.35% |
| zhTW | 53.85% | 80.80% | 79.97% |

Notes:
- `Main` localization key coverage varies by locale; some files intentionally only include partial overrides.
- `NPCs` files currently have substantial coverage but still miss a large set of enUS IDs in several locales.
- Current `deDE` NPC key coverage: **8827 / 9430** entries.
- Values above should be treated as close estimates for planning and contribution prioritization.

## Localization Support Wanted

If you can help with localization, support is welcome and appreciated.

Areas where help is most valuable:
- Filling missing `NPCs_*` ID entries from `NPCs_enUS.lua`.
- Translating missing/English-fallback keys in `Localization/*.lua`.
- Spot-checking terminology consistency (quests, classes, factions, locations) for WotLK 3.3.5a.

If you contribute, please keep placeholders/formatting intact (`%s`, `%d`, color codes, `|n`) and avoid changing IDs/keys.

## Known Issues

- Some imported guides may be incomplete or require content beyond 3.3.5a; if a guide behaves oddly, disable it in `Guides/Autoload.xml` and report the issue.
- This remaster targets 3.3.5a (build 12340) only. Newer expansion data is intentionally excluded.

## Credits

All credit for the original Zygor Guides concept and content belongs to the original creators. This remaster focuses on UI/UX modernization and packaging for 3.3.5a private server use.

## Example Image(s)

<img width="436" height="264" alt="image" src="https://github.com/user-attachments/assets/f0dddbf0-7bfa-4b95-a250-0692c7690921" />
<img width="586" height="260" alt="image" src="https://github.com/user-attachments/assets/e6b85c9c-8835-4e49-96b1-608ad9944b0f" />
<img width="637" height="197" alt="image" src="https://github.com/user-attachments/assets/cd258eb1-ebb6-420d-9516-4abe9d75d88c" />
<img width="443" height="687" alt="image" src="https://github.com/user-attachments/assets/b3f2c2ef-2bef-4ca4-b033-37c314b151d5" />
