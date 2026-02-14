# Zygor Guides Viewer Remaster

Remastered Zygor Guides Viewer for **World of Warcraft: Wrath of the Lich King (WotLK) 3.3.5a (build 12340)**.

This project keeps the classic Zygor workflow while delivering a cleaner remastered presentation and active upkeep for the 3.3.5a community.

[![Install Addon](https://img.shields.io/badge/Install-Addon-orange?style=for-the-badge)](https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK/archive/refs/heads/main.zip)
[![Quick Install](https://img.shields.io/badge/Open-Quick_Install-6f42c1?style=for-the-badge)](#-quick-install)
[![Localization QA](https://img.shields.io/badge/Help-Localization_QA-yellow?style=for-the-badge)](#-support-wanted-localization-qa)
[![VirusTotal Report](https://img.shields.io/badge/VirusTotal-URL_Report-success?style=for-the-badge)](https://www.virustotal.com/gui/url/d55dfec1532a98b39fc87a1a4f34c06b644de5988b24288bf207610b0c1b46fa/detection)

![Guides Included](https://img.shields.io/badge/Guides-Included-brightgreen) ![2025 Updated](https://img.shields.io/badge/2025-Updated-blue) ![For WotLK](https://img.shields.io/badge/For-WotLK_3.3.5a-orange)

## 🔖 Version

- 📦 Addon version: **3.0**
- 🔢 Revision: **66**
- 🎮 Intended client: **WotLK 3.3.5a / 12340**

## ⭐ What You Get

- 🗺️ Step-by-step leveling and quest progression guidance.
- 🧭 Arrow and waypoint navigation while you play.
- ✅ Structured objective flow (accept, complete, and turn-in).
- 🎨 Remastered viewer UI that is easier to read during long sessions.
- 🧠 Included talent guidance through `ZygorTalentAdvisor`.

## 🧱 Core Compatibility

Core 3.3.5a-era behavior is preserved:

- 📘 Guide parser and step engine.
- 🧭 Map and waypoint workflow.
- ⚙️ Legacy guide execution patterns.
- 🧠 Base `ZygorTalentAdvisor` behavior and structure.

## ✨ What This Remaster Improves

- 🎨 Cleaner UI presentation without changing core guide logic.
- 🧰 Improved package layout for easier installation and maintenance.
- 🔧 Ongoing compatibility focus for 3.3.5a environments.
- 📚 Expanded guide coverage where applicable in this branch.
- 🧩 `ZygorTalentAdvisor` is included as the second component of this package, with additional guide content integrated in the remaster.

## 📦 Included Components

1. `ZygorGuidesViewerRM` - Remastered viewer and guide runtime.
2. `ZygorTalentAdvisor` - Bundled as part of this package, based on original behavior, and expanded with additional guide content in this remaster.

## 🚀 Quick Install

1. Close World of Warcraft.
2. Open `%WoWFolder%\Interface\AddOns\`.
3. Remove older folders if present:
   - `ZygorGuidesViewer`
   - `ZygorTalentAdvisor`
   - This avoids mixed files from older releases.
4. Copy these folders into `AddOns`:
   - `ZygorGuidesViewerRM`
   - `ZygorTalentAdvisor`
5. Confirm both are top-level folders:
   - `Interface\AddOns\ZygorGuidesViewerRM\ZygorGuidesViewerRM.toc`
   - `Interface\AddOns\ZygorTalentAdvisor\ZygorTalentAdvisor.toc`
6. Launch the game and enable both addons.

## 🌍 Localization

Localization key coverage is complete across shipped locales (`Main` + `NPCs`) with placeholder and format-consistency checks.

Current focus is community QA review:

- natural phrasing in live gameplay context,
- terminology consistency,
- official localized NPC proper names,
- encoding and readability verification.

Localization was largely AI-assisted and should be treated as needing community review until native-speaker QA confirms quality.

## 🤝 Support Wanted (Localization QA)

If you can validate translations in-game, your help is very welcome.

Please report:

- mistranslations,
- awkward phrasing,
- broken placeholders (`%s`, `%d`, `|n`, color codes),
- incorrect NPC names,
- encoding artifacts.

## 🔒 Safety and Trust

Community-maintained addons are often labeled as risky without clear evidence. This project is fully inspectable as source code, and users are encouraged to review files before use.

- [![VirusTotal Report](https://img.shields.io/badge/VirusTotal-View_Report-3bb143?style=flat-square)](https://www.virustotal.com/gui/url/d55dfec1532a98b39fc87a1a4f34c06b644de5988b24288bf207610b0c1b46fa/detection)
- This repository is public, so you can audit changes, scripts, and addon behavior directly.

## 📝 Notes

- Intended target client is **WotLK 3.3.5a (12340)**.
- It may work on other versions, but compatibility is not guaranteed.
- `ZygorTalentAdvisor` is a separate addon folder by WoW design (its own `.toc`) while still being part of this package.

## ⚠️ Known Issues

- Some imported guides may be incomplete or not fully aligned to 3.3.5a data.
- If a guide behaves incorrectly, disable it in `ZygorGuidesViewerRM/Guides/Autoload.xml` and report it.

## 🙏 Credits

Original Zygor Guides concept and content belong to the original creators.

This remaster focuses on UI/UX modernization, packaging quality, compatibility maintenance, and localization completion for the 3.3.5a player community.

## 🖼️ Example Images

<img width="436" height="264" alt="Viewer Step Flow" src="https://github.com/user-attachments/assets/f0dddbf0-7bfa-4b95-a250-0692c7690921" />
<img width="586" height="260" alt="Guide Window Layout" src="https://github.com/user-attachments/assets/e6b85c9c-8835-4e49-96b1-608ad9944b0f" />
<img width="637" height="197" alt="Waypoint and Route Display" src="https://github.com/user-attachments/assets/cd258eb1-ebb6-420d-9516-4abe9d75d88c" />
<img width="443" height="687" alt="Talent Advisor Panel" src="https://github.com/user-attachments/assets/b3f2c2ef-2bef-4ca4-b033-37c314b151d5" />
