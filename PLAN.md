# ZygorGuidesViewer Remaster Plan

Date: 2026-02-09
Owner: ErebusAres + Codex
Scope: Remaster the ZygorGuidesViewer GUI while preserving guide content and core functionality.
Target: World of Warcraft 3.3.5a (build 12340).

## Objectives
- Remaster the GUI (frames, options, menu, skinning) with a modernized layout and UX.
- Keep the legacy GUI available as an option, defaulting to the new remastered GUI.
- Preserve guide content exactly as-is (no edits to guide text/steps).
- Preserve functional behavior: guide progression, arrow navigation, coordinates, step logic, waypoints, and guide parsing.
- Remove unused/dead code or files not referenced by the addon entrypoints.
- Retain attribution to original authors and ZygorGuides concept.

## Constraints
- Guides must remain byte-for-byte identical to the originals.
- Functional logic must remain intact unless explicitly required by GUI changes.
- All changes should be done within .\ZygorGuidesViewerRM for the remastered addon.
- Old source lives under .\Workspace\ZygorGuidesPlus_3.3.5a-WOTLK and is treated as read-only reference.
- Scope is strictly for WoW 3.3.5a WOTLK build 12340.

## Sources of Truth
- Addon entrypoints (.toc) and referenced XML files.
- Existing guide data in .\Workspace\ZygorGuidesPlus_3.3.5a-WOTLK\ZygorGuidesViewer\Guides\
- GUI reference in ..\Github\Goals\gui.lua (needs access approval).

## Inventory Notes (Initial)
- ZygorGuidesViewer.toc includes embeds.xml, Localization, files.xml, Guides\Autoload.xml.
- files.xml references MapCoords.lua, Dev.lua, MapSpotsDetector.lua which are not present in the old source.
- Old file list includes MapCoords_.lua (underscore) but files.xml expects MapCoords.lua.
- These discrepancies must be reconciled before cloning into the new addon folder.

## Plan
1. Baseline audit
   - Parse .toc and files.xml to build a definitive load list.
   - Diff load list vs on-disk files to detect missing or unused files.
   - Identify guide data location and ensure immutable copy to new addon.

2. Clone and structure
   - Create a clean .\ZygorGuidesViewerRM structure mirroring required folders.
   - Copy only required core files and guide data; keep guides untouched.
   - Keep old source in Workspace as reference; do not modify.

3. GUI remaster
   - Refactor frame XML and Lua for layout (ViewerFrame, MenuFrame, Options, Skin/Skins).
   - Introduce new GUI patterns based on ..\Github\Goals\gui.lua (options + build preview popout).
   - Ensure existing functional hooks remain intact (step updates, arrow, pointer, map, etc.).

4. Cleanup and hardening
   - Remove unused files not referenced by .toc/.xml or runtime load paths.
   - Ensure no guide content is modified during refactors.
   - Add/confirm credits and attribution in .toc or a NOTICE file.

5. Verification
   - Validate load order with a lightweight lint pass (manual/rg).
   - Ensure all referenced files exist and are included.
   - Smoke test logic: guide selection, step progression, arrow navigation.

## Checklist
- [ ] Confirm access to ..\Github\Goals\gui.lua for GUI reference.
- [ ] Build definitive load map from ZygorGuidesViewer.toc + files.xml.
- [ ] Resolve missing file refs: MapCoords.lua / Dev.lua / MapSpotsDetector.lua.
- [ ] Identify unused folders or files not in load map (candidate cleanup).
- [ ] Create remaster folder layout in .\ZygorGuidesViewerRM.
- [ ] Copy guide data (Guides\) without modification.
- [ ] Copy necessary core Lua/XML files to remaster folder.
- [ ] Remaster GUI: frames, options, menu, skins.
- [ ] Preserve legacy GUI option and default to remastered GUI.
- [ ] Preserve functional hooks and public APIs.
- [ ] Add/verify attribution.
- [ ] Validate no guide text changes.
- [ ] Final pass: ensure .toc consistency and zero missing references.

## Decisions
- Base .toc: ZygorGuidesViewer.toc (non-beta).
- Attribution: keep in .toc only.
- Legacy GUI: keep available as an option, default to remastered GUI.

## Open Questions
- Should the remaster keep Libs as-is, or only those referenced by embeds.xml?

## Risks
- Hidden runtime dependencies not referenced in .toc/files.xml.
- GUI changes inadvertently altering functional flow or event handling.
- Partial guide copy could break guide autoload or indexing.

## Next Actions
- Confirm access to ..\Github\Goals\gui.lua.
- Review .toc vs files.xml mismatches and decide how to resolve.
- Decide base .toc to drive the remaster.


# Errors / Issues:
```
1x ZygorGuidesViewer-2.0.1327\ZygorGuidesViewer.lua:2409: attempt to index global 'ZygorGuidesViewerFrameScrollScrollBarTrackerTexture' (a nil value)
ZygorGuidesViewer-2.0.1327\ZygorGuidesViewer.lua:294: in function <...rface\AddOns\ZygorGuidesViewer\ZygorGuidesViewer.lua:286>
(tail call): ?:
<in C code>: ?
<string>:"safecall Dispatcher[1]":9: in function <[string "safecall Dispatcher[1]"]:5>
(tail call): ?:
AceAddon-3.0-12 (DBM-Core):558: in function `EnableAddon'
AceAddon-3.0-12 (DBM-Core):651: in function <...Ons\DBM-Core\Libs\Ace3\AceAddon-3.0\AceAddon-3.0.lua:636>
<in C code>: in function `LoadAddOn'
Interface\FrameXML\UIParent.lua:235: in function `UIParentLoadAddOn':
Interface\FrameXML\UIParent.lua:258: in function `CombatLog_LoadUI':
Interface\FrameXML\UIParent.lua:482: in function <Interface\FrameXML\UIParent.lua:454>:

  ---
```

```
1x ZygorGuidesViewer-2.0.1327\ZygorGuidesViewer.lua:2356: attempt to index field 'db' (a nil value)
ZygorGuidesViewer-2.0.1327\ZygorGuidesViewerFrame.lua:436: in function <...\AddOns\ZygorGuidesViewer\ZygorGuidesViewerFrame.lua:426>

Locals:
self = ZygorGuidesViewerFrame {
 ResizerBottomRight = ZygorGuidesViewerFrame_ResizerBottomRight {}
 ThinFlash = ZygorGuidesViewerFrame_ThinFlash {}
 ResizerBottomLeft = ZygorGuidesViewerFrame_ResizerBottomLeft {}
 ResizerRight = ZygorGuidesViewerFrame_ResizerRight {}
 ResizerLeft = ZygorGuidesViewerFrame_ResizerLeft {}
 ResizerBottom = ZygorGuidesViewerFrame_ResizerBottom {}
 Border = ZygorGuidesViewerFrame_Border {}
 0 = <userdata>
}
ZGVF = ZygorGuidesViewerFrame {
 ResizerBottomRight = ZygorGuidesViewerFrame_ResizerBottomRight {}
 ThinFlash = ZygorGuidesViewerFrame_ThinFlash {}
 ResizerBottomLeft = ZygorGuidesViewerFrame_ResizerBottomLeft {}
 ResizerRight = ZygorGuidesViewerFrame_ResizerRight {}
 ResizerLeft = ZygorGuidesViewerFrame_ResizerLeft {}
 ResizerBottom = ZygorGuidesViewerFrame_ResizerBottom {}
 Border = ZygorGuidesViewerFrame_Border {}
 0 = <userdata>
}
Border = ZygorGuidesViewerFrame_Border {
 Gear3 = ZygorGuidesViewerFrame_Border_Gear3 {}
 TitleBar = ZygorGuidesViewerFrame_Border_TitleBar {}
 Gears = <unnamed> {}
 0 = <userdata>
 Gear1 = ZygorGuidesViewerFrame_Border_Gear1 {}
 Gear2 = ZygorGuidesViewerFrame_Border_Gear2 {}
}
Skipper = ZygorGuidesViewerFrame_Skipper {
 0 = <userdata>
 NextButton = ZygorGuidesViewerFrame_Skipper_NextButton {}
 Step = ZygorGuidesViewerFrame_Skipper_Step {}
 PrevButton = ZygorGuidesViewerFrame_Skipper_PrevButton {}
}
GuideButton = ZygorGuidesViewerFrame_Border_GuideButton {
 c = <table> {}
 ntx = <unnamed> {}
 ptx = <unnamed> {}
 in = ZygorGuidesViewerFrame_Border_GuideButton_in {}
 blink = ZygorGuidesViewerFrame_Border_GuideButton_blink {}
 dorot = <function> defined *:OnLoad:17
 out = ZygorGuidesViewerFrame_Border_GuideButton_out {}
 0 = <userdata>
 htx = <unnamed> {}
 delay = 0
 pos = 0
}
TitleBar = ZygorGuidesViewerFrame_Border_TitleBar {
 0 = <userdata>
}
ZGV = <table> {
 STEPMARGIN_Y = 4
 STEPMARGIN_X = 3
 UPDATE_FACTION_Faction = <function> @ ZygorGuidesViewer\Faction.lua:119:
 RaceClassMatch = <function> @ ZygorGuidesViewer\ZygorGuidesViewer.lua:2727:
 modules = <table> {}
 CancelTimer = <function> @ DBM-Core\Libs\Ace3\AceTimer-3.0\AceTimer-3.0.lua:166:
 completedQuests = <table> {}
 OnGuidesLoaded = <function> @ ZygorGuidesViewer\ZygorGuidesViewer.lua:3445:
 GoalOnLeave = <function> @ ZygorGuidesViewer\ZygorGuidesViewer.lua:3178:
 CacheReputations = <function> @ ZygorGuidesViewer\Faction.lua:39:
 stepframes = <table> {}
 SetIconAlpha = <function> @ ZygorGuidesViewer\Options.lua:1182:
 CreateCartographerWaypoints = <function> @ ZygorGuidesViewer\Waypoints.lua:463:
 SetDefaultModulePrototype = <function> @ DBM-Core\Libs\Ace3\AceAddon-3.0\AceAddon-3.0.lua:440:
 QUEST_PROGRESS = <function> @ ZygorGuidesViewer\QuestAutoAccept.lua:161:
 Options_SetupBlizConfig = <function> @ ZygorGuidesViewer\Options.lua:1133:
 QUEST_COMPLETE = <function> @ ZygorGuidesViewer\QuestAutoAccept.lua:180:
 framesLoaded = true
 IsEnabled = <function> @ DBM-Core\Libs\Ace3\AceAddon-3.0\AceAddon-3.0.lua:482:
 QuestTracking_ResetDailies = <function> @ ZygorGuidesViewer\QuestTracking.lua:203:
 ScheduleTimer = <function> @ DBM-Core\Libs\Ace3\AceTimer-3.0\AceTimer-3.0.lua:113:
 ApplyFrameLayout = <function> @ ZygorGuidesViewer\ZygorGuidesViewerFrame.lua:72:
 registered_groups = <table> {}
 AutodetectWaypointAddon = <function> @ ZygorGuidesViewer\Waypoints.lua:25:
 LostQuestEvent = <function> @ ZygorGuidesViewer\ZygorGuidesViewer.lua:2984:
 CacheRecipes = <function> @ ZygorGuidesViewer\Profession.lua:86:
 RegisterMessage = <function> defined @AckisRecipeList\libs\CallbackHandler-1.0\CallbackHand
  ---
```

```
1x ZygorGuidesViewer-2.0.1327\MapCoords.lua:8: Cannot find a library with name 'Astrolabe-ZGV'
HandyNotes-1.1.5\Libs\Astrolabe\DongleStub.lua:17: in function `DongleStub'
ZygorGuidesViewer-2.0.1327\MapCoords.lua:8: in main chunk

Locals:
t = <table> {
 GetVersion = <function> @ HandyNotes\Libs\Astrolabe\DongleStub.lua:108:
 IsNewerVersion = <function> @ HandyNotes\Libs\Astrolabe\DongleStub.lua:22:
 versions = <table> {}
 log = <table> {}
 Register = <function> @ HandyNotes\Libs\Astrolabe\DongleStub.lua:50:
}
k = "Astrolabe-ZGV"

  ---
```