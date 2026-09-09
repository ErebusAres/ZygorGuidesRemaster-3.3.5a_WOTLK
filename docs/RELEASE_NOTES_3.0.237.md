# ZygorGuidesViewerRM 3.0.237

- Fixes the legacy guide dropdown opening at the wrong vertical position on its first use after login or `/reload`.
- Sets the guide dropdown width before `EasyMenu` performs its initial placement, keeping the first and subsequent openings consistent.
- Prevents the bad first-pass root geometry from carrying into overlapping submenu placement.
- Adds a regression check that preserves the required width-before-open initialization order.

Version 3.0.236's corpse-marker startup fix is confirmed by the reporter: the prior `OverlayFrame` Lua errors no longer occur. The separate settings-wheel ERROR #132 remains under investigation and is not claimed as fixed here.

Thanks to wazerstar for retesting and providing a repeatable `/reload` video of the first-open menu behavior.
