# Release Notes - 3.0.196

## Fixed

- Fixed issue #75, where LibRover could spam `attempt to index local 'pos' (a number value)` during pathfinding if another addon loaded a partial `C_Map` compatibility shim first.
- `Lib:GetPlayerPosition()` now accepts both retail-style `{ x =, y = }` position tables and WotLK shim-style `x, y` numeric returns from `C_Map.GetPlayerMapPosition()`.
- The existing `UnitPosition()` fallback remains unchanged for clients where `C_Map.GetPlayerMapPosition()` does not return usable coordinates.

## Validation

- Syntax checked `Libs/LibRover-1.0/LibRover-1.0.lua` and `Ver.lua` in the live addon checkout.