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
