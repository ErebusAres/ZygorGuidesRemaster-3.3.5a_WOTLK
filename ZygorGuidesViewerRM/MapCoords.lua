--ooo change
assert (ZygorGuidesViewer,"Zygor Guides Viewer not loaded properly!")

local ZGV=ZygorGuidesViewer
local MapCoords = {}
ZGV.MapCoords = MapCoords

local Astrolabe = nil
if DongleStub then
	local ok, lib = pcall(DongleStub, "Astrolabe-0.4-Zygor")
	if ok and lib then
		Astrolabe = lib
	else
		ok, lib = pcall(DongleStub, "Astrolabe-ZGV")
		if ok and lib then
			Astrolabe = lib
		else
			ok, lib = pcall(DongleStub, "Astrolabe-0.4")
			if ok and lib then
				Astrolabe = lib
			end
		end
	end
end
if not Astrolabe and LibStub then
	local ok, lib = pcall(LibStub, "Astrolabe-0.4-Zygor")
	if ok and lib then
		Astrolabe = lib
	else
		ok, lib = pcall(LibStub, "Astrolabe-0.4")
		if ok and lib then
			Astrolabe = lib
		end
	end
end
if not Astrolabe then
	error("Astrolabe library not found (Astrolabe-ZGV or Astrolabe-0.4).")
end

MapCoords.Debug = ZGV.Debug

local throttle=0

local WorldmapCoordFrame_OnUpdate

function MapCoords:HandleWorldmapCoords()
	if ZGV.db.profile.mapcoords then
		local f
		if not self.worldmapcoordframe then
			f = CreateFrame("FRAME",nil,WorldMapFrame)
			f.playercoord = f:CreateFontString("OVERLAY",nil,"GameFontHighlightSmall")
			f.cursorcoord = f:CreateFontString("OVERLAY",nil,"GameFontHighlightSmall")
			self.worldmapcoordframe = f
			f:SetScript("OnUpdate", WorldmapCoordFrame_OnUpdate)
		else
			f = self.worldmapcoordframe
		end
		
		f.cursorcoord:SetPoint("TOPLEFT", WorldMapPositioningGuide, "BOTTOM", 100, -11)
		f.playercoord:SetPoint("TOPLEFT", WorldMapPositioningGuide, "BOTTOM", -100, -11)

		-- Show the frame
		f:Show()
	elseif self.worldmapcoordframe then
		self.worldmapcoordframe:Hide()
	end
end


-- Code courtesy ckknight
local WorldMapDetailFrame = WorldMapDetailFrame
local GetCursorPosition = GetCursorPosition
local function GetCurrentCursorPosition()
	local wmdf=WorldMapDetailFrame
	local cx,cy = GetCursorPosition()
	local l,t,w,h = wmdf:GetLeft(), wmdf:GetTop(), wmdf:GetWidth(), wmdf:GetHeight()
	local scale = wmdf:GetEffectiveScale()
	local cy = (t - cy/scale) / h
	if cy<0 or cy>1 then return end
	local cx = (cx/scale - l) / w
	if cx<0 or cx>1 then return end
	-- finally
	return cx, cy
end
--[[
local coord_fmt = "%%.%df, %%.%df"
function RoundCoords(x,y,prec)
	local fmt = coord_fmt:format(prec, prec)
	return fmt:format(x*100, y*100)
end
--]]

local throttle
local function WorldmapCoordFrame_OnUpdate(self, elapsed)
	throttle=throttle+elapsed ; if throttle<0.05 then return end ; elapsed=throttle ; throttle=0

	if not ZGV.db.profile.mapshowcoords then return end

	local c,z,x,y = Astrolabe:GetCurrentPlayerPosition()

	if not x or not y then
		self.Player:SetText("Player: ---")
	else
		self.Player:SetFormattedText("Player: %s", RoundCoords(x, y, opt.mapcoords.playeraccuracy))
	end

	local cX, cY = GetCurrentCursorPosition()

	if not cX or not cY then
		self.Cursor:SetText("Cursor: ---")
	else
		self.Cursor:SetFormattedText("Cursor: %s", RoundCoords(cX, cY, opt.mapcoords.cursoraccuracy))
	end

end


---------------------------------------------------------------------------
-- LibRover Map Infrastructure
-- Bridges retail-style numeric mapIDs with 3.3.5a (continent, zone) pairs.
-- Provides: ZGV.GetMapInfo, ZGV.GetMapContinent, ZGV.GetMapNameByID,
--           ZGV.GetMapFloorNameByID, ZGV.GetCurrentMapID, MapCoords.Mdist
---------------------------------------------------------------------------

-- Cache of mapID -> mapInfo tables
local ZGV_mapcache = {}

-- mapID -> {continent, zone} for Astrolabe integration
local mapID_to_cz = {}
-- {continent, zone} -> mapID reverse lookup
local cz_to_mapID = {}
-- mapID -> zone name
local mapID_to_name = {}

-- MAPDATA for Mdist distance calculations
-- Format: MAPDATA[mapID] = {continentIndex, yOffset, xOffset, height, width}
MapCoords.MAPDATA = {}
local MAPDATA = MapCoords.MAPDATA

-- Continent mapIDs from data.lua
local CONTINENT_MAPIDS = {
	[1414] = 1, -- Kalimdor
	[1415] = 2, -- Eastern Kingdoms
	[1945] = 3, -- Outland
	[113]  = 4, -- Northrend
	[947]  = 0, -- Azeroth (world)
}

local CONTINENT_INDEX_TO_MAPID = {
	[1] = 1414, -- Kalimdor
	[2] = 1415, -- Eastern Kingdoms
	[3] = 1945, -- Outland
	[4] = 113,  -- Northrend
	[0] = 947,  -- Azeroth
}

-- Populate lookup tables from LibRover data and Astrolabe WorldMapSize.
-- Called once during LibRover:DoStartup() initialization.
local mapInfoInitialized = false
function MapCoords:InitializeMapInfo()
	if mapInfoInitialized then return end
	if not LibRover or not LibRover.data or not LibRover.data.MapIDsByName then return end

	local MapIDsByName = LibRover.data.MapIDsByName

	-- Build reverse lookup: mapID -> zone name
	-- Also store in LibRover.data.MapNamesByID for compatibility
	LibRover.data.MapNamesByID = LibRover.data.MapNamesByID or {}
	LibRover.data.FloorByID = LibRover.data.FloorByID or {}

	for zoneName, mapData in pairs(MapIDsByName) do
		for floor, mapID in pairs(mapData) do
			if type(floor) == "number" then
				if floor == 0 then
					mapID_to_name[mapID] = zoneName
					LibRover.data.MapNamesByID[mapID] = LibRover.data.MapNamesByID[mapID] or {zoneName, floor}
				end
				LibRover.data.FloorByID[mapID] = floor
			end
		end
	end

	-- Build mapID <-> (continent, zone) mapping using GetMapZones()
	for cont = 1, 4 do
		local zones = {GetMapZones(cont)}
		for zoneIdx, zoneName in ipairs(zones) do
			-- MapIDsByName is keyed by English names; the client may report localized ones (e.g. Portuguese).
			local mapData = MapIDsByName[zoneName] or (ZGV.BZR and ZGV.BZR[zoneName] and MapIDsByName[ZGV.BZR[zoneName]])
			if mapData and mapData[0] then
				local mapID = mapData[0]
				mapID_to_cz[mapID] = {cont, zoneIdx}
				cz_to_mapID[cont .. "_" .. zoneIdx] = mapID
			end
		end
	end

	-- Special case: Scarlet Enclave
	if MapIDsByName["Plaguelands: The Scarlet Enclave"] then
		local mapID = MapIDsByName["Plaguelands: The Scarlet Enclave"][0]
		if mapID then
			mapID_to_cz[mapID] = {5, 1}
			cz_to_mapID["5_1"] = mapID
		end
	end

	-- Add continent entries themselves
	for mapID, contIdx in pairs(CONTINENT_MAPIDS) do
		mapID_to_cz[mapID] = {contIdx, 0}
	end

	-- Populate MAPDATA from Astrolabe's WorldMapSize for Mdist
	-- Astrolabe WorldMapSize: WorldMapSize[continent] = {width, height, zoneData={...}}
	-- WorldMapSize[continent][zoneIdx] = {width, height, xOffset, yOffset}
	local WorldMapSize = Astrolabe and rawget(_G, "WorldMapSize")
	-- WorldMapSize may be local to Astrolabe. Try to access via internal path.
	if not WorldMapSize then
		-- Access through Astrolabe's upvalue - fallback approach
		-- We'll compute distances using Astrolabe:ComputeDistance instead
	end

	-- For each known mapID, compute MAPDATA using Astrolabe
	for mapID, cz in pairs(mapID_to_cz) do
		local c, z = cz[1], cz[2]
		if c >= 1 and c <= 4 and z > 0 then
			-- Use Astrolabe:ComputeDistance to derive zone dimensions
			-- Width: distance from (0, 0.5) to (1, 0.5) in the same zone
			-- Height: distance from (0.5, 0) to (0.5, 1) in the same zone
			local width = Astrolabe:ComputeDistance(c, z, 0, 0.5, c, z, 1, 0.5)
			local height = Astrolabe:ComputeDistance(c, z, 0.5, 0, c, z, 0.5, 1)
			-- Get position in continent coords for cross-zone distance
			-- Astrolabe gives us continent-level coordinates via zone 0
			local cx1, cy1 = Astrolabe:TranslateWorldMapPosition(c, z, 0, 0, c, 0)
			if width and height and cx1 and cy1 then
				-- continent instance index for same-continent checks
				MAPDATA[mapID] = {c, cy1 or 0, cx1 or 0, height or 0, width or 0}
			end
		elseif z == 0 and c >= 1 and c <= 4 then
			-- Continent-level entry
			local contWidth = Astrolabe:ComputeDistance(c, 0, 0, 0.5, c, 0, 1, 0.5)
			local contHeight = Astrolabe:ComputeDistance(c, 0, 0.5, 0, c, 0, 0.5, 1)
			if contWidth and contHeight then
				MAPDATA[mapID] = {c, 0, 0, contHeight, contWidth}
			end
		end
	end

	-- Also handle dungeon/instance mapIDs that have explicit continent data
	for zoneName, mapData in pairs(MapIDsByName) do
		local contMapID = mapData.c
		if contMapID and mapData[0] then
			local mapID = mapData[0]
			local contIdx = CONTINENT_MAPIDS[contMapID]
			if contIdx and not mapID_to_cz[mapID] then
				mapID_to_cz[mapID] = {contIdx, 0} -- dungeons map to continent, zone 0
			end
		end
	end

	-- Build mapType info for ZGV_mapcache
	-- Continents
	for mapID, contIdx in pairs(CONTINENT_MAPIDS) do
		local name = mapID_to_name[mapID] or "Unknown"
		ZGV_mapcache[mapID] = {
			mapID = mapID,
			name = name,
			mapType = (mapID == 947) and Enum.UIMapType.World or Enum.UIMapType.Continent,
			parentMapID = (mapID == 947) and nil or 947,
		}
	end

	-- Zones
	for mapID, cz in pairs(mapID_to_cz) do
		if not ZGV_mapcache[mapID] then
			local c, z = cz[1], cz[2]
			local name = mapID_to_name[mapID] or "Unknown"
			local parentMapID = CONTINENT_INDEX_TO_MAPID[c] or 947

			-- Determine type
			local mapType = Enum.UIMapType.Zone
			local mapData = LibRover.data.MapIDsByName[name]
			if mapData and mapData.instance then
				mapType = Enum.UIMapType.Dungeon
			end

			ZGV_mapcache[mapID] = {
				mapID = mapID,
				name = name,
				mapType = mapType,
				parentMapID = parentMapID,
			}
		end
	end

	-- Also build entries for dungeon/instance floors
	for zoneName, mapData in pairs(MapIDsByName) do
		if mapData.instance then
			for floor, mapID in pairs(mapData) do
				if type(floor) == "number" and not ZGV_mapcache[mapID] then
					local contMapID = mapData.c or 947
					ZGV_mapcache[mapID] = {
						mapID = mapID,
						name = zoneName,
						mapType = Enum.UIMapType.Dungeon,
						parentMapID = contMapID,
					}
					if not mapID_to_name[mapID] then
						mapID_to_name[mapID] = zoneName
					end
				end
			end
		end
	end

	mapInfoInitialized = true
end

-- Get mapID -> (continent, zone) for Astrolabe functions
function MapCoords:GetAstrolabeCoords(mapID)
	local cz = mapID_to_cz[mapID]
	if cz then return cz[1], cz[2] end
	return nil, nil
end

---------------------------------------------------------------------------
-- ZGV.GetMapInfo(mapID) - returns cached map info table
---------------------------------------------------------------------------
function ZGV.GetMapInfo(mapID)
	if not mapID then return nil end
	if not mapInfoInitialized and LibRover and LibRover.data then
		MapCoords:InitializeMapInfo()
	end
	return ZGV_mapcache[mapID]
end

---------------------------------------------------------------------------
-- ZGV.GetMapContinent(mapID) - walks parent chain to find continent
---------------------------------------------------------------------------
function ZGV.GetMapContinent(mapID)
	local mapInfo = ZGV.GetMapInfo(mapID)
	while mapInfo do
		if mapInfo.mapType == Enum.UIMapType.Dungeon then
			return mapInfo.mapID, "dungeon"
		elseif mapInfo.mapType == Enum.UIMapType.Orphan then
			return mapInfo.mapID, "orphan"
		elseif mapInfo.mapType == Enum.UIMapType.Continent then
			return mapInfo.mapID, mapInfo.name
		end
		mapInfo = ZGV.GetMapInfo(mapInfo.parentMapID)
	end
	return mapID, "Unknown continent"
end

---------------------------------------------------------------------------
-- ZGV.GetMapNameByID(id, floor) - returns zone name for a mapID
---------------------------------------------------------------------------
function ZGV.GetMapNameByID(id, floor)
	if type(id) == "string" then
		if LibRover then id, floor = LibRover:GetMapByNameFloor(id, floor) end
	end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	return mapInfo and mapInfo.name or "nil"
end

---------------------------------------------------------------------------
-- ZGV.GetMapFloorNameByID(id, floor) - returns floor name for a mapID
---------------------------------------------------------------------------
function ZGV.GetMapFloorNameByID(id, floor)
	if type(id) == "string" then
		if LibRover then id, floor = LibRover:GetMapByNameFloor(id, floor) end
	end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	return mapInfo and (mapInfo.floorname or mapInfo.name) or "nil"
end

---------------------------------------------------------------------------
-- ZGV.GetCurrentMapID() - returns current player mapID
---------------------------------------------------------------------------
function ZGV.GetCurrentMapID()
	local currentmap = C_Map.GetBestMapForUnit("player")
	if not currentmap then return 0 end
	return currentmap
end

---------------------------------------------------------------------------
-- ZGV.GetMapGroupID(id) - returns map group (for floor detection)
---------------------------------------------------------------------------
function ZGV.GetMapGroupID(id, floor)
	return nil -- no floor grouping in 3.3.5a basic implementation
end

---------------------------------------------------------------------------
-- ZGV.MapsOnDifferentFloors(m1, m2) - check if maps are different floors
---------------------------------------------------------------------------
function ZGV.MapsOnDifferentFloors(m1, m2)
	if m1 == m2 then return false end
	-- Check if both belong to the same dungeon
	if not LibRover or not LibRover.data then return false end
	local name1 = mapID_to_name[m1]
	local name2 = mapID_to_name[m2]
	if not name1 or not name2 then return false end
	-- Same dungeon, different floors
	local data1 = LibRover.data.MapIDsByName[name1]
	local data2 = LibRover.data.MapIDsByName[name2]
	if data1 and data2 and data1 == data2 then return true end
	return false
end

---------------------------------------------------------------------------
-- MapCoords.Mdist(map1, x1, y1, map2, x2, y2)
-- Distance calculation using Astrolabe, compatible with LibRover's interface.
-- Coordinates are in 0-1 zone fraction scale.
---------------------------------------------------------------------------
function MapCoords.Mdist(map1, x1, y1, map2, x2, y2)
	if not x1 or not x2 then return nil end

	local c1, z1 = MapCoords:GetAstrolabeCoords(map1)
	local c2, z2 = MapCoords:GetAstrolabeCoords(map2)

	if not c1 or not c2 then return nil end

	local dist, xDelta, yDelta = Astrolabe:ComputeDistance(c1, z1 or 0, x1, y1, c2, z2 or 0, x2, y2)
	return dist, xDelta, yDelta
end

---------------------------------------------------------------------------
-- MapCoords.Mangle(map1, x1, y1, map2, x2, y2)
-- Angle calculation for arrow direction.
---------------------------------------------------------------------------
local PI2 = math.pi * 2
function MapCoords.Mangle(...)
	local dist, dx, dy = MapCoords.Mdist(...)
	if not dx then return nil, nil end
	local angle = math.atan2(-dx, dy)
	if angle > 0 then angle = PI2 - angle else angle = -angle end
	return angle, dist
end

-- Store HBD reference for LibRover compatibility
-- HBD stub: only load if available (registered by LibRover_Compat when LibRover is enabled)
local hbd_ok, hbd_lib = pcall(LibStub, "HereBeDragons-ZGV")
ZGV.HBD = hbd_ok and hbd_lib or nil
