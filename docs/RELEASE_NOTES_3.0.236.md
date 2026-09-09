# ZygorGuidesViewerRM 3.0.236

- Fixes the 3.0.235 startup regression that could repeatedly report `Pointer.lua:1026: attempt to index field 'OverlayFrame' (a nil value)` when loading while dead.
- Defers corpse-marker creation until the pointer overlay and arrow frames are initialized; the established post-startup waypoint call and retry then create the corpse arrow normally.
- Reduces the guide submenu hover delay from 0.15 to the reporter-tested 0.075 seconds.
- Adds regression coverage for pre-startup corpse deferral and the updated hover timing.

The settings-wheel ERROR #132 remains under investigation. The newest crash report still records `Current Addon: (null)` and `Current Addon function: UNKNOWN`, so this release fixes the confirmed Lua error flood without claiming that the native client crash is resolved.

Thanks to wazerstar for the clean-addon retest, error stack, and menu timing feedback.
