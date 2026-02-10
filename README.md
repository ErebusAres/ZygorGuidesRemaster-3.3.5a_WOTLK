# Zygor Guides Viewer Remaster (3.3.5a WotLK)

This is a remastered UI/UX fork of Zygor Guides Viewer for **World of Warcraft 3.3.5a (build 12340)**, intended for private servers (e.g., TrinityCore). It is intended to **replace the original Zygor Guides Viewer addon** for 3.3.5a.

## What�s New
- **Remastered UI** (default) with modernized layout and styling.
- **Legacy UI still available** for those who want the original look.
- Guide content is preserved and expanded where applicable (e.g., additional imported guides).
- Functional behavior preserved: step progression, waypoints, parsing, etc.
- New remaster skins including **Goals** theme.

## Installation
1. Download or clone this repo.
2. Copy the folder **`ZygorGuidesViewerRM`** into your WoW AddOns directory:
   - `%WoWFolder%\Interface\AddOns\ZygorGuidesViewerRM`
3. Start the game and enable **Zygor Guides Viewer Remastered** in the AddOns list.
4. Remove the original Zygor Guides Viewer folder from your AddOns directory.
5. Install this remaster fresh to avoid conflicts.

## Notes
- This project is designed for **WotLK 3.3.5a (build 12340)**.
- This remaster focuses on UI/UX and guide organization for 3.3.5a; core logic is preserved.
- The old `ZygorTalentAdvisor` folder is not required for the remaster.

## Known Issues
- Some imported guides may be incomplete or require content beyond 3.3.5a; if a guide behaves oddly, disable it in `Guides/Autoload.xml` and report the issue.
- This remaster targets 3.3.5a (build 12340) only. Newer expansion data is intentionally excluded.

## Credits
All credit for the original Zygor Guides concept and content belongs to the original creators. This remaster focuses on UI/UX modernization and packaging for 3.3.5a private server use.
