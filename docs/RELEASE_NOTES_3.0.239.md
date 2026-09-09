# ZygorGuidesViewerRM 3.0.239

- Fixes `Goal.lua:388: attempt to index field 'taxis' (a nil value)` during early flight-path goal evaluation.
- Makes auxiliary and auto-skip checks tolerate the brief period before deferred world startup creates the saved taxi table.
- Preserves normal flight-path completion as soon as the existing taxi startup supplies known paths.
- Adds regression coverage for evaluation both before and after taxi initialization.

The AceEvent path shown in the report is only the event dispatcher; the confirmed fault was Zygor reading its own taxi state too early.

Thanks to wazerstar for the complete revision 238 error stacks.
