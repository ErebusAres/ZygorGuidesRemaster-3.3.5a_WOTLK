--[[
	LibRover_Compat.lua - 3.3.5a Compatibility Shim for LibRover-1.0
	Must be loaded BEFORE all other LibRover files.
	Provides: WOW_PROJECT_ID, Enum.UIMapType, C_QuestLog, C_Map, LibBabble-SubZone-3.0, HereBeDragons-ZGV
]]

local addonName, addon = ...

---------------------------------------------------------------------------
-- 1. WOW_PROJECT_ID constants (don't exist in 3.3.5a)
---------------------------------------------------------------------------
if not WOW_PROJECT_ID then
	WOW_PROJECT_CLASSIC = 2
	WOW_PROJECT_BURNING_CRUSADE_CLASSIC = 5
	WOW_PROJECT_WRATH_CLASSIC = 11
	WOW_PROJECT_MAINLINE = 1
	WOW_PROJECT_ID = WOW_PROJECT_WRATH_CLASSIC
end

---------------------------------------------------------------------------
-- 2. Enum.UIMapType constants (don't exist in 3.3.5a)
---------------------------------------------------------------------------
if not Enum then Enum = {} end
if not Enum.UIMapType then
	Enum.UIMapType = {
		Cosmic = 0,
		World = 1,
		Continent = 2,
		Zone = 3,
		Dungeon = 4,
		Micro = 5,
		Orphan = 6,
	}
end

---------------------------------------------------------------------------
-- 3. C_QuestLog shim (doesn't exist in 3.3.5a)
---------------------------------------------------------------------------
if not C_QuestLog then
	C_QuestLog = {}
	-- IsQuestFlaggedCompleted IS a global in 3.3.5a (added in 3.3.0)
	C_QuestLog.IsQuestFlaggedCompleted = function(questID)
		if _G.IsQuestFlaggedCompleted then
			return _G.IsQuestFlaggedCompleted(questID)
		end
		return false
	end
end
if not C_QuestLog.IsOnQuest then
	C_QuestLog.IsOnQuest = function(questID)
		if not questID then return false end
		local numEntries = GetNumQuestLogEntries()
		for i = 1, numEntries do
			local _, _, _, _, isHeader, _, _, _, questId = GetQuestLogTitle(i)
			if not isHeader and questId == questID then return true end
		end
		return false
	end
end

---------------------------------------------------------------------------
-- 4. C_Map shim (doesn't exist in 3.3.5a)
-- Provides stubs. Real map info is built later by ZGV.GetMapInfo.
---------------------------------------------------------------------------
if not C_Map then
	C_Map = {}

	-- Returns the player's current zone as a retail-style numeric mapID.
	-- Lazily resolves from LibRover.data.MapIDsByName once data is loaded.
	C_Map.GetBestMapForUnit = function(unit)
		if not LibRover or not LibRover.data or not LibRover.data.MapIDsByName then return nil end
		local zoneName = GetRealZoneText()
		local mapData = LibRover.data.MapIDsByName[zoneName]
		if mapData then return mapData[0] end
		-- Try subzone name as fallback
		local subZone = GetSubZoneText()
		if subZone and subZone ~= "" then
			mapData = LibRover.data.MapIDsByName[subZone]
			if mapData then return mapData[0] end
		end
		-- Try MinimapZoneText as last resort
		local miniZone = GetMinimapZoneText and GetMinimapZoneText()
		if miniZone and miniZone ~= "" then
			mapData = LibRover.data.MapIDsByName[miniZone]
			if mapData then return mapData[0] end
		end
		return nil
	end

	-- Returns map info table {mapID, name, mapType, parentMapID}.
	-- Delegates to ZGV.GetMapInfo at runtime (defined in MapCoords.lua).
	C_Map.GetMapInfo = function(mapID)
		if ZygorGuidesViewer and ZygorGuidesViewer.GetMapInfo then
			return ZygorGuidesViewer.GetMapInfo(mapID)
		end
		return nil
	end

	-- Returns child maps. Used during startup for micro zones.
	-- No micro zones in 3.3.5a. Return empty table.
	C_Map.GetMapChildrenInfo = function(mapID, mapType, allDescendants)
		return {}
	end

	-- Returns rect of child on parent map. Only used in debug menu.
	C_Map.GetMapRectOnMap = function(childMapID, parentMapID)
		return 0, 1, 0, 1
	end

	-- Returns map group ID. Used for dungeon floor grouping.
	C_Map.GetMapGroupID = function(mapID)
		return nil
	end

	C_Map.GetMapGroupMembersInfo = function(groupID)
		return nil
	end

	-- Returns player position as a table with .x, .y fields.
	-- In 3.3.5a, GetPlayerMapPosition("player") returns x, y directly.
	C_Map.GetPlayerMapPosition = function(mapID, unit)
		-- Ensure map is set to the correct zone before querying
		SetMapToCurrentZone()
		local x, y = GetPlayerMapPosition(unit or "player")
		if x and y and (x > 0 or y > 0) then
			return { x = x, y = y }
		end
		return nil
	end

	-- Returns min level for the zone. Not directly available in 3.3.5a.
	C_Map.GetMapLevels = function(mapID)
		return nil
	end
end

-- Some 3.3.5a server clients expose a partial C_Map table. Fill only the
-- methods LibRover needs so retail-compatible clients keep their native APIs.
C_Map = C_Map or {}
if not C_Map.GetBestMapForUnit then
	C_Map.GetBestMapForUnit = function(unit)
		if unit and unit ~= "player" then return nil end
		if not LibRover or not LibRover.data or not LibRover.data.MapIDsByName then return nil end
		local zoneName = GetRealZoneText()
		local mapData = zoneName and LibRover.data.MapIDsByName[zoneName]
		if mapData then return mapData[0] end
		local subZone = GetSubZoneText and GetSubZoneText()
		if subZone and subZone ~= "" then
			mapData = LibRover.data.MapIDsByName[subZone]
			if mapData then return mapData[0] end
		end
		local miniZone = GetMinimapZoneText and GetMinimapZoneText()
		if miniZone and miniZone ~= "" then
			mapData = LibRover.data.MapIDsByName[miniZone]
			if mapData then return mapData[0] end
		end
		return nil
	end
end
if not C_Map.GetPlayerMapPosition then
	C_Map.GetPlayerMapPosition = function(mapID, unit)
		SetMapToCurrentZone()
		local x, y = GetPlayerMapPosition(unit or "player")
		if x and y and (x > 0 or y > 0) then
			return { x = x, y = y }
		end
		return nil
	end
end

---------------------------------------------------------------------------
-- 5. WorldMapFrame:GetMapID() stub (for debug menu - not critical)
---------------------------------------------------------------------------
if WorldMapFrame and not WorldMapFrame.GetMapID then
	WorldMapFrame.GetMapID = function(self)
		-- Return 0 - debug menu only
		return 0
	end
end

---------------------------------------------------------------------------
-- 6. OpenWorldMap stub (for debug menu - not critical)
---------------------------------------------------------------------------
if not OpenWorldMap then
	OpenWorldMap = function(mapID)
		ToggleWorldMap()
	end
end

---------------------------------------------------------------------------
-- 7. LibBabble-SubZone-3.0 stub
-- LibRover and Region.lua require this for subzone name localization.
-- On English client, passthrough is sufficient.
---------------------------------------------------------------------------
do
	local libName = "LibBabble-SubZone-3.0"
	if not LibStub:GetLibrary(libName, true) then
		local lib = LibStub:NewLibrary(libName, 1)
		if lib then
			local passthrough_mt = { __index = function(t, k) return k end }
			local lookup = setmetatable({}, passthrough_mt)
			local reverse = setmetatable({}, passthrough_mt)
			function lib:GetUnstrictLookupTable() return lookup end
			function lib:GetLookupTable() return lookup end
			function lib:GetReverseLookupTable() return reverse end
		end
	end
end

---------------------------------------------------------------------------
-- 8. HereBeDragons-ZGV stub
-- LibRover uses HBD:GetZoneCoordinatesFromWorld() as a fallback
-- when C_Map.GetPlayerMapPosition fails (rare in 3.3.5a outdoors).
---------------------------------------------------------------------------
do
	local libName = "HereBeDragons-ZGV"
	if not LibStub:GetLibrary(libName, true) then
		local lib = LibStub:NewLibrary(libName, 1)
		if lib then
			function lib:GetZoneCoordinatesFromWorld(worldX, worldY, mapID, isAbsolute)
				-- Fallback: return nil, caller will handle
				return nil, nil
			end
			function lib:GetWorldCoordinatesFromZone(x, y, mapID)
				return nil, nil, nil
			end
		end
	end
end

---------------------------------------------------------------------------
-- 9. GetInstanceInfo() 8th return (instanceMapID) polyfill
-- Retail returns instanceMapID as 8th value; 3.3.5a only returns 7.
-- We don't need this for 3.3.5a, but ensure it won't error.
-- (select(8, GetInstanceInfo()) naturally returns nil in 3.3.5a)
---------------------------------------------------------------------------

---------------------------------------------------------------------------
-- 10. UnitPosition() polyfill
-- In retail, UnitPosition("player") returns y, x, z, instanceID.
-- In 3.3.5a, this function doesn't exist. Provide a stub.
---------------------------------------------------------------------------
if not UnitPosition then
	UnitPosition = function(unit)
		return nil, nil, nil, nil
	end
end
