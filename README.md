# Zygor Guides Viewer Remaster

Remastered Zygor Guides Viewer for **World of Warcraft: Wrath of the Lich King (WotLK) 3.3.5a (build 12340)**.

A remastered version of the classic Zygor Guides Viewer, updated for WotLK 3.3.5a private servers with a cleaner UI and maintained compatibility.

This project keeps the classic Zygor workflow while delivering a cleaner remastered presentation and active upkeep for the 3.3.5a community.

[![Download](https://img.shields.io/badge/Download-Addon-2ea043?style=for-the-badge&labelColor=555555)](https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK/archive/refs/heads/main.zip)
[![Install](https://img.shields.io/badge/Install-Quickly-8250df?style=for-the-badge&labelColor=555555)](#-quick-install)
[![Help](https://img.shields.io/badge/Help-Localize-f0883e?style=for-the-badge&labelColor=555555)](#-support-wanted-localization-qa)
[![Safety](https://img.shields.io/badge/Safety-VirusTotal_Report-1f6feb?style=for-the-badge&labelColor=555555)](https://www.virustotal.com/gui/url/d55dfec1532a98b39fc87a1a4f34c06b644de5988b24288bf207610b0c1b46fa/detection)

![Guides Included](https://img.shields.io/badge/Guides-Included-orange) ![Last Commit](https://img.shields.io/github/last-commit/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK?label=Updated&color=brightgreen) ![WoW Compatible](https://img.shields.io/badge/For-WoW-yellow) ![Era WotLK 3.3.5a](https://img.shields.io/badge/Era-WotLK_3.3.5a-blue)

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/T6T01U9GMM)

## Version

- Version: ![Version](https://img.shields.io/github/commit-activity/t/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK?label=Version%203.0.&color=1f6feb)
- Intended client: **WotLK 3.3.5a / 12340**

## Who This Is For

This addon is intended for:

- World of Warcraft **WotLK 3.3.5a (build 12340)** clients
- Private server environments (for example TrinityCore-based servers)
- Players who want the classic Zygor guide experience with a cleaner UI

This project is primarily focused on **WotLK 3.3.5a**. Other clients may work, but support and testing are centered on 3.3.5a.

## What You Get

- Step-by-step leveling and quest progression guidance.
- Arrow and waypoint navigation while you play.
- Structured objective flow (accept, complete, and turn-in).
- A cleaner, more readable viewer UI designed for long play sessions.
- Includes talent guidance via the bundled `ZygorTalentAdvisor` module inside `ZygorGuidesViewerRM`.

## What Stayed the Same

Core 3.3.5a-era behavior is preserved:

- Guide parser and step engine.
- Map and waypoint workflow.
- Legacy guide execution patterns.
- Base `ZygorTalentAdvisor` behavior and structure.

## What's New in the Remaster

- Cleaner, retail-inspired UI shell for both guide browsing and options.
- New standalone Guide Manager (Home / Featured / Current / Recent) with category sidebar, search, favorites, and folder-style tree behavior.
- New in-app Options experience with categorized navigation, searchable pages, and improved layout consistency.
- Remastered waypoint arrow and objective text styling updates, including clearer action/title/distance presentation and distance color gradients.
- Accessibility improvements including colorblind presets and simplified noun-color handling for better readability.
- Ongoing compatibility focus for 3.3.5a environments and expanded guide coverage where applicable.

## Included Components

1. `ZygorGuidesViewerRM` - Remastered viewer and guide runtime.
2. `ZygorTalentAdvisor` - bundled inside `ZygorGuidesViewerRM` and loaded as part of the addon package.

## Key Controls

- Minimap icon:
  - Left-click toggles the guide viewer.
  - Right-click opens the Guide Manager.
  - Shift + Right-click opens options.
- Viewer toolbar:
  - Guides left-click opens the legacy quick guide dropdown.
  - Guides right-click opens the Guide Manager.
  - Settings left-click opens quick settings.
  - Settings right-click opens Guide Manager options.

## Quick Install

### Installation Overview

1. Download the ZIP.
2. Extract to `Interface\AddOns\`.
3. Launch the game.
4. Enable the addon.

### Detailed Steps

1. Close World of Warcraft.
2. Open `%WoWFolder%\Interface\AddOns\`.
3. Remove older folders if present:
   - `ZygorGuidesViewer`
   - `ZygorTalentAdvisor`
   - This avoids mixed files from older releases.
4. Copy this folder into `AddOns`:
   - `ZygorGuidesViewerRM`
5. Confirm the top-level folder exists:
   - `Interface\AddOns\ZygorGuidesViewerRM\ZygorGuidesViewerRM.toc`
6. Launch the game and enable the addon.

## Common Issues

**Addon not showing in-game**

- Make sure the folder structure is:
  - `Interface\AddOns\ZygorGuidesViewerRM\ZygorGuidesViewerRM.toc`
- Do not nest folders (no double folder level).

**Out of date warning**

- Enable **Load out of date AddOns** on the character select screen.

**Guide not progressing**

- Some imported guides may not fully match 3.3.5a data.
- See the Known Issues section below.

## Update Notes

1. Install or update the `ZygorGuidesViewerRM` folder as a single addon package.
2. `/reload` is usually enough for Lua-only changes.
3. A full relaunch is safer when files, XML includes, assets, or bundled modules change.

## Guide Profiles

- Current default guide content is the remastered, TrinityCore-oriented profile for WotLK 3.3.5a private servers.
- An optional Alliance fallback profile exists at `Guides\Leveling_Original\ZygorGuidesAlliance.lua`.
- That fallback is original, unmodified classic Zygor content and should only be used if the remastered default route is problematic for a specific session.

## Localization

Localization key coverage is complete across shipped locales (`Main` + `NPCs`) with placeholder and format-consistency checks.

Current focus is community QA review:

- natural phrasing in live gameplay context,
- terminology consistency,
- official localized NPC proper names,
- encoding and readability verification.

Localization was largely AI-assisted and should be treated as needing community review until native-speaker QA confirms quality.

### Community Credits

- [`mikki33`](https://github.com/mikki33) for providing Russian localization changes and review updates.
- [`yad`](https://github.com/yad) for the localized quest databases, integration work, and reproducible AzerothCore data generator contributed in pull request #88.

## Support Wanted (Localization QA)

If you can validate translations in-game, your help is very welcome.

Please report:

- mistranslations,
- awkward phrasing,
- broken placeholders (`%s`, `%d`, `|n`, color codes),
- incorrect NPC names,
- encoding artifacts.

## Safety and Trust

This addon is fully open source and can be inspected before use.

- [![VirusTotal Report](https://img.shields.io/badge/VirusTotal-View_Report-3bb143?style=flat-square)](https://www.virustotal.com/gui/url/d55dfec1532a98b39fc87a1a4f34c06b644de5988b24288bf207610b0c1b46fa/detection)
- You can review all files and changes directly in this repository.
- A VirusTotal scan of the download link is provided for transparency.

## Changelog

### Revision 216 - 3.0.216

- Limited future Gear Finder items to the same five-level look-ahead window used for future dungeons.
- Prevented low-level characters from being directed to a nearby-entry-level dungeon for drops requiring dozens of additional levels.
- Updated addon version metadata to 3.0.216.

### Revision 215 - 3.0.215

- Added 63 verified WotLK 3.3.5 Russian quest-name corrections contributed by @mikki33 in pull request #96.
- Kept the corrections in the maintained locale override layer so future AzerothCore database regeneration cannot erase them.
- Updated addon version metadata to 3.0.215.

### Revision 214 - 3.0.214

- Prevented guide progress checks and the built-in waypoint arrow from resetting a visible compact world map to the player's current zone when Mapster, ElvUI, or another addon displays the map in a window.
- Preserved the stale-coordinate refresh used by local route points whenever the world map is closed.
- Updated addon version metadata to 3.0.214.

### Revision 213 - 3.0.213

- Added localized quest-name databases for deDE, esES, esMX, frFR, ruRU, zhCN, and zhTW with enUS fallback, based on the contribution from @yad in pull request #88.
- Kept custom private-server quest names in a separate maintained override so regenerated AzerothCore data cannot erase them.
- Fixed intermittent BoE equip attempts by targeting the exact scored bag copy instead of an ambiguous identical item name, preserving the pending bind confirmation, and deferring the comparison until combat ends.
- Skipped pure travel steps when every sequential task before the next destination is already complete or would be skipped, with conservative guards for remaining work, guide jumps, and unfinished repeat conditions. Credit @opicron for the feature report and initial design in issue #95.
- Updated addon version metadata to 3.0.213.

### Revision 212 - 3.0.212

- Wrapped legacy quick-guide pagination ranges in brackets so structural submenu entries are visually distinct from guide level ranges.
- Kept the labels locale-neutral without adding untranslated UI text.
- Updated addon version metadata to 3.0.212.

### Revision 211 - 3.0.211

- Fixed zhCN startup failing because the locale loaded before the main viewer object existed, and hardened the same initialization path for koKR and zhTW.
- Paginated oversized legacy quick-guide folders into groups of 25 so every guide remains reachable on smaller displays or larger UI scales.
- Kept native cascading guide menus and custom settings dropdowns clamped to the screen, including submenu frames created on demand.
- Reviewed and adapted the initial guide-menu patch supplied by @Polypheides in issue #92.
- Updated addon version metadata to 3.0.211.

## Notes

- Intended target client is **WotLK 3.3.5a (12340)**.
- It may work on other versions, but compatibility is not guaranteed.
- `ZygorTalentAdvisor` is bundled and loaded from within `ZygorGuidesViewerRM`.

## Known Issues

- Arrow scale/position drift:
  - On some setups, changing Waypoint Arrow Scale can shift the arrow position unexpectedly.
  - Resetting arrow position may not fully normalize the anchor in all UI/minimap addon combinations.
  - Status: deferred for now.

- Some imported guides may be incomplete or not fully aligned to 3.3.5a data.
- If a guide behaves incorrectly, disable it in `ZygorGuidesViewerRM/Guides/Autoload.xml` and report it.

## Q&A

**Is this remaster free?**

Yes. This remastered version is and will remain free.

**Where should I download it from?**

Use the main repository download link in this README.

**Are third-party mirrors or repacks safe?**

Not always. Use other sites/downloads at your own risk.

## Credits

Original Zygor Guides concept and content belong to the original creators.

This remaster focuses on UI/UX modernization, packaging quality, compatibility maintenance, and localization completion for the 3.3.5a player community.

## Example Images

### New Guide + Options Menus

![options menu display](docs/images/options-menu-display.png)
![guide manager selection preview](docs/images/guide-manager-selection-preview.png)
<img width="1248" height="845" alt="image" src="https://github.com/user-attachments/assets/6d66d7d6-67bc-4c52-bbb5-5cea38e5bbde" />

### New Pointer Arrow

![new pointer arrow](docs/images/new-arrow.gif)

### ... With Colorblind Options

![colorblind deuteran](docs/images/new-arrow-deuteran.gif)
![colorblind protan](docs/images/new-arrow-protan.gif)
![colorblind tritan](docs/images/new-arrow-tritan.gif)

### New And Legacy Looks

<img width="436" height="264" alt="Viewer Step Flow" src="https://github.com/user-attachments/assets/f0dddbf0-7bfa-4b95-a250-0692c7690921" />
<img width="586" height="260" alt="Guide Window Layout" src="https://github.com/user-attachments/assets/e6b85c9c-8835-4e49-96b1-608ad9944b0f" />
<img width="637" height="197" alt="Waypoint and Route Display" src="https://github.com/user-attachments/assets/cd258eb1-ebb6-420d-9516-4abe9d75d88c" />
<img width="443" height="687" alt="Talent Advisor Panel" src="https://github.com/user-attachments/assets/b3f2c2ef-2bef-4ca4-b033-37c314b151d5" />

### New Route and Loop guide modes

<img width="433" height="247" alt="image" src="https://github.com/user-attachments/assets/579b6acb-df5e-4f40-8ef3-7d6b33e1015d" />
<img width="436" height="248" alt="image" src="https://github.com/user-attachments/assets/a845b881-2831-43e3-bd26-5287f9783d68" />
