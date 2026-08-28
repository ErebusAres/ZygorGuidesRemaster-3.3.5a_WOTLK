# ItemScore regressions

Run from the repository root with Lua 5.1 or newer:

```powershell
lua tools/itemscore/test_live_stats.lua ZygorGuidesViewerRM
```

The test extracts the actual live-stat parser block and the active/context
scorers, with small game API stubs. It reads the shipped item database and Blood
Tank weights. Before revision 222 it reproduces Dalaran Sentry Wristbraces armor
being counted twice (1,166 instead of 583), yielding 142.38 instead of 95.74.

Coverage includes live canonical/alias keys, duplicate API aliases, lower and
zero live values replacing DB fallbacks, missing-live-data fallback, block/DPS/
socket structural stats, defense, additive tooltip-only contributions, and
active/alternate-profile score parity for the supported tank classes.

The Frostpaw Champion fixture uses 645 armor, 23 strength, 34 stamina, and 19
defense rating (107.50 under uncapped Blood Tank weights). It is an illustrative
random-suffix fixture consistent with the reported score, not a capture of the
user's exact item. In-game item tooltips and current defense remain necessary
to assess a specific character's replacement safely. This test does not claim
to validate total-loadout defense thresholds or custom-server stat changes.
