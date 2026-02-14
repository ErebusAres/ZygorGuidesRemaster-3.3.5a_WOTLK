# Zygor Guides Viewer Remaster

Remastered Zygor Guides Viewer for **World of Warcraft 3.3.5a (build 12340)**.

This fork keeps core guide behavior intact while modernizing UI/UX and packaging for private-server use (for example TrinityCore-based realms).

[![Install Addon](https://img.shields.io/badge/Install-Addon-orange?style=for-the-badge)](https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK/archive/refs/heads/main.zip)
[![Quick Install](https://img.shields.io/badge/View-Quick_Install-6f42c1?style=for-the-badge)](#-quick-install)
[![Client](https://img.shields.io/badge/WoW-3.3.5a-blue?style=for-the-badge)](#version)
[![Addon](https://img.shields.io/badge/Version-3.0-brightgreen?style=for-the-badge)](#version)
[![Localization](https://img.shields.io/badge/Localization-AI_Assisted-yellow?style=for-the-badge)](#localization)

## 🔖 Version

- 📦 Addon version: **3.0**
- 🧾 Revision: **63** 
- 🎮 Target client: **3.3.5a / 12340**

## 🧱 Original Addon Baseline

This remaster keeps the core behavior of the original 3.3.5a-era addon stack:

- 📘 Guide parsing and step progression logic.
- 🧭 Waypoint/arrow workflow and map interaction behavior.
- ⚙️ Standard guide execution flow (accept/turn-in/goal tracking patterns).
- 🧠 `ZygorTalentAdvisor` base behavior and structure.

## ✨ What's New In This Remaster

- 🎨 Remastered default UI with cleaner visuals.
- 🧬 Legacy-style behavior preserved for core guide flow.
- 🔧 Guide progression, parser behavior, and waypoint systems retained.
- 📚 Expanded guide bundle support where applicable.
- 🧩 `ZygorTalentAdvisor` is included as part two of this package:
  - based on original functionality,
  - with additional guides/content integrated by you.

## 🚀 Quick Install

1. Close World of Warcraft.
2. Open `%WoWFolder%\Interface\AddOns\`.
3. Remove older folders if present:
   - `ZygorGuidesViewer`
   - `ZygorTalentAdvisor`
4. Copy addon folders into `AddOns`:
   - `ZygorGuidesViewerRM`
   - `ZygorTalentAdvisor`
5. Ensure both are top-level sibling folders:
   - `Interface\AddOns\ZygorGuidesViewerRM\ZygorGuidesViewerRM.toc`
   - `Interface\AddOns\ZygorTalentAdvisor\ZygorTalentAdvisor.toc`
6. Launch game and enable:
   - `Zygor Guides Viewer Remastered`
   - `Zygor Talent Advisor`

## 🌍 Localization

Localization key coverage is complete across shipped locales (`Main` + `NPCs`), including placeholder/format consistency checks.

Current focus is quality verification:
- natural phrasing in context,
- terminology consistency,
- official localized NPC proper names,
- and catching any encoding anomalies.

Localization work was largely AI-assisted and should be treated as review-required until human QA sign-off.

## 🗂️ Package Structure

This repository is shipped as a two-part addon package:

1. `ZygorGuidesViewerRM`
   - remastered viewer/UI layer,
   - guide loading and runtime behavior for 3.3.5a.
2. `ZygorTalentAdvisor`
   - included as part of this package (not a separate recommendation),
   - essentially the original talent advisor behavior,
   - with additional guides/content integrated by you.

## 🤝 Support Wanted (Localization QA)

If you can help verify localization quality, contributions are welcome.

Please prioritize:
- UI/tooltips/step text readability in live gameplay.
- Terminology consistency (quests, classes, factions, locations).
- NPC proper-name validation against official locale clients.
- Reports of mistranslations, awkward wording, encoding artifacts, and placeholder issues.

When submitting fixes:
- keep placeholders/formatting intact (`%s`, `%d`, `|n`, color codes),
- do not alter key names or NPC IDs.

## 📝 Notes

- This remaster is intended for **WotLK 3.3.5a (12340)**.
- It may work on other versions, but compatibility is not guaranteed.
- Newer expansion-era data is not the primary target.
- `ZygorTalentAdvisor` remains a separate folder by WoW addon design (its own `.toc`), but is part of this package.

## ⚠️ Known Issues

- Some imported guides may be incomplete or not fully aligned to 3.3.5a data.
- If a guide behaves incorrectly, disable it in `ZygorGuidesViewerRM/Guides/Autoload.xml` and report it.

## 🙏 Credits

Original Zygor Guides concept and content belong to the original creators.
This project focuses on remastering UI/UX, packaging, and compatibility maintenance for 3.3.5a.
