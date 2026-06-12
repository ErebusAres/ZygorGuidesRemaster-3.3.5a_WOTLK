local me = ZygorGuidesViewer
if not me then return end

local ZGV=ZygorGuidesViewer
local L = ZGV.L
local BZL = ZGV.BZL

local Astrolabe

local tinsert=tinsert


---------------------------------------------------------------------------
-- Travel Advisor - Lightweight cross-zone routing for 3.3.5a
-- Uses Astrolabe distance to pick closest transit, LibTaxi for FP awareness.
---------------------------------------------------------------------------

local TA_Astrolabe = DongleStub and (({pcall(DongleStub,"Astrolabe-0.4-Zygor")})[2] or ({pcall(DongleStub,"Astrolabe-0.4")})[2])
local TA_LibTaxi = LibStub and ({pcall(LibStub,"LibTaxi-1.0")})[2]

local zoneContinentCache = {}
local zoneNumberCache = {}

local function FormatWaypointLocation(goal, fallbackMap)
	if not goal then return nil end
	local map = goal.map or fallbackMap
	local x, y = goal.x, goal.y
	if not map or not x or not y then return nil end
	return ("%s (%d,%d)"):format(map, x, y)
end

local function GetZoneContinent(zoneName)
	if zoneContinentCache[zoneName] then return zoneContinentCache[zoneName] end
	local c, z = ZGV:GetMapZoneNumbers(zoneName)
	if c and c > 0 then
		zoneContinentCache[zoneName] = c
		zoneNumberCache[zoneName] = z
		return c
	end
	return nil
end

local function GetZoneNumber(zoneName)
	if zoneNumberCache[zoneName] then return zoneContinentCache[zoneName], zoneNumberCache[zoneName] end
	GetZoneContinent(zoneName)
	return zoneContinentCache[zoneName], zoneNumberCache[zoneName]
end

-- Compute Astrolabe distance from player to a zone coordinate
local function DistToPoint(zone, x, y)
	if not TA_Astrolabe then return 999999 end
	local pc, pz, px, py = TA_Astrolabe:GetCurrentPlayerPosition()
	if not pc or not px then return 999999 end
	local c, z = GetZoneNumber(zone)
	if not c then return 999999 end
	local dist = TA_Astrolabe:ComputeDistance(pc, pz, px, py, c, z, x/100, y/100)
	return dist or 999999
end

-- Transit routes: {fromCont, toCont, faction, mode, instruction, zone, x, y, arrivalCont, arrivalZone}
local TRANSIT_ROUTES = {
	-- Alliance: EK <-> Kalimdor
	{2, 1, "Alliance", "ship", "Take the boat from Menethil Harbor to Theramore", "Wetlands", 4.6, 57.3},
	{1, 2, "Alliance", "ship", "Take the boat from Theramore to Menethil Harbor", "Dustwallow Marsh", 71.6, 56.2},
	{2, 1, "Alliance", "ship", "Take the boat from Stormwind Harbor to Auberdine", "Stormwind City", 18.4, 25.6},
	{1, 2, "Alliance", "ship", "Take the boat from Auberdine to Stormwind", "Darkshore", 32.4, 43.8},
	-- Horde: EK <-> Kalimdor
	{2, 1, "Horde", "zeppelin", "Take the zeppelin from Undercity to Orgrimmar", "Tirisfal Glades", 60.7, 58.8},
	{1, 2, "Horde", "zeppelin", "Take the zeppelin from Orgrimmar to Undercity", "Durotar", 50.9, 13.8},
	{2, 1, "Horde", "zeppelin", "Take the zeppelin from Grom'gol to Orgrimmar", "Stranglethorn Vale", 31.6, 29.2},
	{1, 2, "Horde", "zeppelin", "Take the zeppelin from Orgrimmar to Grom'gol", "Durotar", 50.9, 13.8},
	-- Alliance: to Northrend
	{2, 4, "Alliance", "ship", "Take the boat from Stormwind Harbor to Valiance Keep", "Stormwind City", 18.4, 25.6},
	{1, 4, "Alliance", "ship", "Take the boat from Auberdine to Valiance Keep", "Darkshore", 32.4, 43.8},
	-- Horde: to Northrend
	{2, 4, "Horde", "zeppelin", "Take the zeppelin from Undercity to Vengeance Landing", "Tirisfal Glades", 60.7, 58.8},
	{1, 4, "Horde", "zeppelin", "Take the zeppelin from Orgrimmar to Warsong Hold", "Durotar", 50.9, 13.8},
	-- Northrend back
	{4, 2, "Alliance", "ship", "Take the boat from Valiance Keep to Stormwind", "Borean Tundra", 59.7, 69.1},
	{4, 1, "Horde", "zeppelin", "Take the zeppelin from Warsong Hold to Orgrimmar", "Borean Tundra", 41.6, 53.6},
	{4, 2, "Horde", "zeppelin", "Take the zeppelin from Vengeance Landing to Undercity", "Howling Fjord", 77.6, 28.2},
	-- Outland via Dark Portal
	{2, 3, nil, "portal", "Go through the Dark Portal in Blasted Lands", "Blasted Lands", 58.0, 58.0},
	{3, 2, nil, "portal", "Go through the Dark Portal in Hellfire Peninsula", "Hellfire Peninsula", 89.0, 50.0},
	-- Dalaran portals (Northrend hub - instant, always prefer if player is in Dalaran)
	{4, 2, "Alliance", "portal", "Use the Stormwind portal in Dalaran", "Dalaran", 40.1, 62.8},
	{4, 2, "Horde", "portal", "Use the Undercity portal in Dalaran", "Dalaran", 55.4, 37.8},
	{4, 1, "Alliance", "portal", "Use the Darnassus portal in Dalaran", "Dalaran", 37.6, 63.3},
	{4, 1, "Horde", "portal", "Use the Orgrimmar portal in Dalaran", "Dalaran", 58.2, 38.5},
	{4, 3, nil, "portal", "Use the Shattrath portal in Dalaran", "Dalaran", 46.1, 33.5},
	-- Shattrath portals (Outland hub)
	{3, 2, "Alliance", "portal", "Use the Stormwind portal in Shattrath", "Shattrath City", 57.2, 48.2},
	{3, 1, "Alliance", "portal", "Use the Darnassus portal in Shattrath", "Shattrath City", 56.8, 49.5},
	{3, 1, "Horde", "portal", "Use the Orgrimmar portal in Shattrath", "Shattrath City", 56.8, 49.5},
}

local TAXI_POINTS = {
	["Borean Tundra"] = {
		{name="Fizzcrank Airstrip", faction="Alliance", x=56.57, y=20.06},
		{name="Valiance Keep", faction="Alliance", x=58.96, y=68.29},
		{name="Warsong Hold", faction="Horde", x=40.36, y=51.40},
		{name="Bor'gorok Outpost", faction="Horde", x=49.65, y=11.05},
		{name="Taunka'le Village", faction="Horde", x=77.76, y=37.77},
		{name="Transitus Shield", faction="Neutral", x=33.13, y=34.44},
		{name="Amber Ledge", faction="Neutral", x=45.32, y=34.49},
		{name="Unu'pe", faction="Neutral", x=78.54, y=51.53},
	},
	["Crystalsong Forest"] = {
		{name="Windrunner's Overlook", faction="Alliance", x=72.17, y=80.97},
		{name="Sunreaver's Command", faction="Horde", x=78.54, y=50.41},
	},
	["Dalaran"] = {
		{name="Dalaran", faction="Neutral", x=72.18, y=45.77},
	},
	["Dragonblight"] = {
		{name="Stars' Rest", faction="Alliance", x=29.18, y=55.32},
		{name="Fordragon Hold", faction="Alliance", x=39.52, y=25.91},
		{name="Wintergarde Keep", faction="Alliance", x=77.00, y=49.79},
		{name="Agmar's Hammer", faction="Horde", x=37.51, y=45.76},
		{name="Kor'kron Vanguard", faction="Horde", x=43.85, y=16.94},
		{name="Venomspite", faction="Horde", x=76.48, y=62.21},
		{name="Wyrmrest Temple", faction="Neutral", x=60.32, y=51.55},
		{name="Moa'ki", faction="Neutral", x=48.51, y=74.39},
	},
	["Grizzly Hills"] = {
		{name="Amberpine Lodge", faction="Alliance", x=31.31, y=59.11},
		{name="Westfall Brigade", faction="Alliance", x=59.89, y=26.68},
		{name="Conquest Hold", faction="Horde", x=21.99, y=64.43},
		{name="Camp Oneqwah", faction="Horde", x=64.96, y=46.93},
	},
	["Howling Fjord"] = {
		{name="Fort Wildervar", faction="Alliance", x=60.06, y=16.11},
		{name="Valgarde Port", faction="Alliance", x=59.79, y=63.24},
		{name="Westguard Keep", faction="Alliance", x=31.26, y=43.98},
		{name="Camp Winterhoof", faction="Horde", x=49.56, y=11.59},
		{name="Vengeance Landing", faction="Horde", x=79.04, y=29.71},
		{name="New Agamand", faction="Horde", x=52.01, y=67.38},
		{name="Apothecary Camp", faction="Horde", x=25.98, y=25.07},
		{name="Kamagua", faction="Neutral", x=24.66, y=57.77},
	},
	["Icecrown"] = {
		{name="The Shadow Vault", faction="Alliance", x=43.74, y=24.38},
		{name="The Shadow Vault", faction="Horde", x=43.74, y=24.38},
		{name="Argent Tournament Grounds", faction="Neutral", x=72.59, y=22.61},
		{name="Death's Rise", faction="Neutral", x=19.34, y=47.78},
		{name="Crusaders' Pinnacle", faction="Neutral", x=79.41, y=72.36},
		{name="The Argent Vanguard", faction="Neutral", x=87.80, y=78.07},
	},
	["Sholazar Basin"] = {
		{name="River's Heart", faction="Neutral", x=50.13, y=61.36},
		{name="Nesingwary Base Camp", faction="Neutral", x=25.27, y=58.44},
	},
	["The Storm Peaks"] = {
		{name="Frosthold", faction="Alliance", x=29.50, y=74.33},
		{name="Grom'arsh Crash-Site", faction="Horde", x=36.19, y=49.39},
		{name="Camp Tunka'lo", faction="Horde", x=65.41, y=50.60},
		{name="K3", faction="Neutral", x=40.75, y=84.55},
		{name="Dun Niffelem", faction="Neutral", x=62.63, y=60.93},
		{name="Ulduar", faction="Neutral", x=44.49, y=28.19},
		{name="Bouldercrag's Refuge", faction="Neutral", x=30.65, y=36.32},
	},
	["Wintergrasp"] = {
		{name="Valiance Landing Camp", faction="Alliance", x=71.98, y=30.95},
		{name="Warsong Camp", faction="Horde", x=21.62, y=34.95},
	},
	["Zul'Drak"] = {
		{name="Light's Breach", faction="Neutral", x=32.18, y=74.39},
		{name="Ebon Watch", faction="Neutral", x=14.01, y=73.58},
		{name="The Argent Stand", faction="Neutral", x=41.55, y=64.43},
		{name="Zim'Torga", faction="Neutral", x=60.04, y=56.71},
		{name="Gundrak", faction="Neutral", x=70.46, y=23.28},
	},
	["Durotar"] = {
		{name="Orgrimmar", faction="Horde", x=49.65, y=59.21},
	},
	["Eversong Woods"] = {
		{name="Fairbreeze Village", faction="Horde", x=43.94, y=69.98},
		{name="Silvermoon City", faction="Horde", x=54.37, y=50.73},
		{name="Falconwing Square", faction="Horde", x=46.25, y=46.79},
	},
	["Ghostlands"] = {
		{name="Tranquillien", faction="Horde", x=45.42, y=30.52},
	},
	["Tirisfal Glades"] = {
		{name="Undercity", faction="Horde", x=63.26, y=48.55},
	},
	["Eastern Plaguelands"] = {
		{name="Light's Hope Chapel", faction="Alliance", x=75.85, y=53.41},
		{name="Light's Hope Chapel", faction="Horde", x=75.81, y=53.29},
	},
}

local currentAdvice = nil
local lastAdviceSig = nil
local currentLibRoverPath = nil

local function IsTaxiForFaction(taxi)
	if not taxi then return false end
	local faction = UnitFactionGroup("player")
	return taxi.faction == "Neutral" or taxi.faction == faction
end

local function IsTaxiKnown(taxi)
	if not taxi or not TA_LibTaxi then return false end
	local known = TA_LibTaxi:GetTaxisEnglish()
	return known and known[taxi.name]
end

local function FindBestTaxiPoint(zone, requireKnown)
	local points = TAXI_POINTS[zone]
	if not points then return nil end
	local best, bestDist
	for _, taxi in ipairs(points) do
		if IsTaxiForFaction(taxi) and (not requireKnown or IsTaxiKnown(taxi)) then
			local dist = DistToPoint(zone, taxi.x, taxi.y)
			if not best or dist < bestDist then
				best = taxi
				bestDist = dist
			end
		end
	end
	return best
end

local function FindNearestKnownTaxi(continent)
	local best, bestZone, bestDist
	for zone, points in pairs(TAXI_POINTS) do
		if GetZoneContinent(zone) == continent then
			for _, taxi in ipairs(points) do
				if IsTaxiForFaction(taxi) and IsTaxiKnown(taxi) then
					local dist = DistToPoint(zone, taxi.x, taxi.y)
					if not best or dist < bestDist then
						best = taxi
						bestZone = zone
						bestDist = dist
					end
				end
			end
		end
	end
	return best, bestZone
end

local function GetTaxiAdvice(playerZone, destZone, playerCont)
	local source = FindBestTaxiPoint(playerZone, true)
	local sourceZone = playerZone
	if not source then
		source, sourceZone = FindNearestKnownTaxi(playerCont)
	end
	local destination = FindBestTaxiPoint(destZone, true)
	if not source or not destination then return nil end
	return {
		mode = "taxi",
		text = ("Fly to %s"):format(destination.name),
		zone = sourceZone,
		x = source.x,
		y = source.y,
	}
end

local function CanUseLibRoverPath()
	if ZGV then ZGV.LibRover = ZGV.LibRover or _G.LibRover end
	return ZGV
		and ZGV.db
		and ZGV.db.profile
		and ZGV.db.profile.pathfinding
		and ZGV.db.profile.travel_use_librover == true
		and ZGV.LibRover
		and ZGV.LibRover.QueueFindPath
		and ZGV.LibRover.Abort
end

local function IsDeathKnightStarterZone(zone)
	if not zone or zone == "" then return false end
	local scarlet = ZGV and ZGV.BZL and ZGV.BZL["Plaguelands: The Scarlet Enclave"] or "Plaguelands: The Scarlet Enclave"
	return zone == scarlet
		or zone == "Plaguelands: The Scarlet Enclave"
		or zone == "Acherus: The Ebon Hold"
end

local function StartLibRoverIfNeeded()
	if not ZGV or not ZGV.LibRover or not ZGV.LibRover.DoStartup then return end
	if ZGV.LibRover.ready or ZGV.LibRover.startup_thread or ZGV.LibRover.initializing then return end
	ZGV.LibRover:DoStartup()
end

local function GetMapIDForGoal(goal, fallbackMap)
	local map = goal and goal.map or fallbackMap
	if type(map) == "number" then return map end
	if type(map) == "string" and ZGV.LibRover and ZGV.LibRover.GetMapByNameFloor then
		local mapID = ZGV.LibRover:GetMapByNameFloor(map)
		return mapID
	end
	return nil
end

local function GetAstrolabeZoneForMapID(mapID)
	if ZGV.MapCoords and ZGV.MapCoords.GetAstrolabeCoords then
		local c, z = ZGV.MapCoords:GetAstrolabeCoords(mapID)
		if c and z then return c, z end
	end
	local name = ZGV.GetMapNameByID and ZGV.GetMapNameByID(mapID)
	if name and name ~= "nil" then
		return ZGV:GetMapZoneNumbers(name)
	end
end

local function CacheLibRoverPath(path)
	currentLibRoverPath = nil
	if not path then return end
	currentLibRoverPath = {}
	for _, node in ipairs(path) do
		if node and node.m and node.x and node.y then
			local mapname = ZGV.GetMapNameByID and ZGV.GetMapNameByID(node.m)
			currentLibRoverPath[#currentLibRoverPath + 1] = {
				m = node.m,
				x = node.x,
				y = node.y,
				type = node.type,
				mode = node.link and node.link.mode,
				mapname = mapname,
			}
		end
	end
end

local function PickNextLibRoverNode(path)
	if not path then return nil end
	for i = 2, #path do
		local node = path[i]
		if node and node.type ~= "end" and not node.player and node.m and node.x and node.y then
			return node
		end
	end
	return path[2]
end

local GetTravelAdvice

local function ShowDirectWaypoint(finalWaypoint, reason)
	if not ZGV or not ZGV.Pointer or not finalWaypoint then return end
	if finalWaypoint.minimapFrame then
		if reason then finalWaypoint.errortext = reason end
		ZGV.Pointer:ShowArrow(finalWaypoint)
		return
	end
	local goal = finalWaypoint.goal
	local way = ZGV.Pointer:SetWaypoint(nil, finalWaypoint.map, finalWaypoint.x, finalWaypoint.y, {
		title = finalWaypoint.t or "Destination",
		titleloc = finalWaypoint.titleloc,
		goal = goal,
		onminimap = "always",
		overworld = true,
	})
	if way and reason then way.errortext = reason end
end

local function ShowTravelAdviceWaypoint(finalWaypoint)
	if not ZGV or not ZGV.Pointer or not finalWaypoint or not GetTravelAdvice then return false end
	local destZone = finalWaypoint.map
	if not destZone or destZone == GetRealZoneText() then return false end
	local advice = GetTravelAdvice(destZone)
	if not advice then return false end
	if advice.zone and advice.x and advice.y then
		ZGV.Pointer:ClearWaypoints("route")
		local way = ZGV.Pointer:SetWaypoint(nil, advice.zone, advice.x, advice.y, {
			title = advice.text,
			type = "route",
			travelDestZone = destZone,
			travelTitle = true,
			onminimap = "always",
			overworld = true,
		})
		if way then
			way.t = advice.text
			way.travelTitle = true
			ZGV.Pointer:ShowArrow(way)
			return true
		end
	elseif advice.text then
		finalWaypoint.t = advice.text
		finalWaypoint.travelTitle = true
		ShowDirectWaypoint(finalWaypoint)
		return true
	end
	return false
end

local function StartLibRoverPath(finalWaypoint)
	if not CanUseLibRoverPath() or not finalWaypoint or not finalWaypoint.goal then return false end
	StartLibRoverIfNeeded()
	local goal = finalWaypoint.goal
	if goal.waypoint_notravel then return false end
	if IsDeathKnightStarterZone(GetRealZoneText()) or IsDeathKnightStarterZone(finalWaypoint.map) then return false end
	local mapID = GetMapIDForGoal(goal, finalWaypoint.map)
	local x = goal.x
	local y = goal.y
	if not mapID or not x or not y then return false end
	if x > 1 or y > 1 then
		x = x / 100
		y = y / 100
	end

	local token = {}
	ZGV.activeLibRoverWaypointToken = token
	ZGV.Pointer.DestinationWaypoint = finalWaypoint

	local function LibRoverPathHandler(state, path, ext, reason)
		if not ZGV or ZGV.activeLibRoverWaypointToken ~= token then return end
		state = type(state) == "string" and state:lower() or state
		if state == "progress" then
			if not ShowTravelAdviceWaypoint(finalWaypoint) then ShowDirectWaypoint(finalWaypoint) end
			return
		end
		if state == "failure" then
			currentLibRoverPath = nil
			if not ShowTravelAdviceWaypoint(finalWaypoint) then ShowDirectWaypoint(finalWaypoint, reason) end
			return
		end
		if state ~= "success" then return end

		CacheLibRoverPath(path)
		local node = PickNextLibRoverNode(path)
		if not node then return end
		local c, z = GetAstrolabeZoneForMapID(node.m)
		if not c or not z then return end

		ZGV.Pointer:ClearWaypoints("route")
		local title = node.text
			or (node.GetTextAsItinerary and node:GetTextAsItinerary())
			or node.maplabel
			or finalWaypoint.t
			or "Travel"
		local routeWaypoint = ZGV.Pointer:SetWaypoint(c, z, node.x, node.y, {
			title = title,
			type = "route",
			onminimap = "always",
			overworld = true,
			pathnode = node,
			travelTitle = true,
		})
		if routeWaypoint then
			routeWaypoint.goal = finalWaypoint.goal
			routeWaypoint.titleloc = finalWaypoint.titleloc
			routeWaypoint.travelTitle = true
			ZGV.Pointer:ShowArrow(routeWaypoint)
		end
	end

	if not ShowTravelAdviceWaypoint(finalWaypoint) then ShowDirectWaypoint(finalWaypoint) end
	ZGV.LibRover:Abort("before guide waypoint path", "quiet")
	ZGV.LibRover:QueueFindPath(0, 0, 0, mapID, x, y, LibRoverPathHandler, { title = finalWaypoint.t or "Destination", waypoint = finalWaypoint })
	return true
end

function GetTravelAdvice(destZone)
	if not destZone then return nil end
	local playerZone = GetRealZoneText()
	if playerZone == destZone then return nil end

	local sig = playerZone .. ">" .. destZone
	if sig == lastAdviceSig then return currentAdvice end
	lastAdviceSig = sig

	local playerCont = GetZoneContinent(playerZone)
	local destCont = GetZoneContinent(destZone)
	if not playerCont or not destCont then currentAdvice = nil return nil end

	if playerCont == destCont then
		currentAdvice = GetTaxiAdvice(playerZone, destZone, playerCont)
		return currentAdvice
	end

	-- Different continent: find closest transit point to player
	local faction = UnitFactionGroup("player")
	local candidates = {}
	for _, route in ipairs(TRANSIT_ROUTES) do
		if route[1] == playerCont and route[2] == destCont then
			if route[3] == nil or route[3] == faction then
				local dist = DistToPoint(route[6], route[7], route[8])
				-- Portals are instant travel - heavily discount their distance
				if route[4] == "portal" then dist = dist * 0.1 end
				tinsert(candidates, { route = route, dist = dist })
			end
		end
	end

	-- Sort by distance (closest first)
	table.sort(candidates, function(a, b) return a.dist < b.dist end)

	local best = candidates[1] and candidates[1].route
	if best then
		currentAdvice = { mode = best[4], text = best[5], zone = best[6], x = best[7], y = best[8] }
	else
		currentAdvice = { mode = "walk", text = "Travel to " .. destZone }
	end
	return currentAdvice
end

local function TravelAdvisor_Clear()
	currentAdvice = nil
	lastAdviceSig = nil
	currentLibRoverPath = nil
	if ZGV and ZGV.Pointer then ZGV.Pointer:ClearWaypoints("route") end
	if ZGV and ZGV.LibRover and ZGV.LibRover.Abort and (ZGV.LibRover.ready or ZGV.LibRover.updating or ZGV.LibRover.calculating) then
		ZGV.LibRover:Abort("clear guide waypoint path", "quiet")
	end
end

function me:GetLibRoverPath() return currentLibRoverPath end
function me:GetLibRoverModes() return nil end
function me:ClearLibRoverPath() TravelAdvisor_Clear() end

local function GetTravelArrowTitle(destZone)
	local advice = GetTravelAdvice(destZone)
	if not advice then return nil end
	local colors = { taxi="|cff88ff00", ship="|cff5588ff", zeppelin="|cff5588ff", portal="|cffaa55ff" }
	return (colors[advice.mode] or "|cffffffff") .. advice.text .. "|r"
end

local function GetRemasterArrowTitle(self,goal,explicitTitle)
	local useRemasterPointer =
		(self and self.db and self.db.profile and self:IsRemasterSkin())
		or (self and self.Pointer and self.Pointer.IsRetailRemasterArrowEnabled and self.Pointer:IsRetailRemasterArrowEnabled())
	if not useRemasterPointer then
		return (explicitTitle and explicitTitle ~= "") and explicitTitle or nil
	end
	if not goal then return nil end

	if goal.action=="accept" and goal.quest then
		return ("Accept '%s'"):format(goal.quest)
	end
	if goal.action=="turnin" and goal.quest then
		return ("Turn in '%s'"):format(goal.quest)
	end
	if goal.action=="talk" and goal.npc then
		return ("Talk to %s"):format(goal.npc)
	end
	if goal.action=="goto" and goal.npc then
		return ("Talk to %s"):format(goal.npc)
	end
	if goal.action=="goto" and (goal.map or goal.x or goal.y) and not goal.npc then
		if goal.map and goal.x and goal.y then
			return ("Go to %s %.1f,%.1f"):format(goal.map,goal.x,goal.y)
		elseif goal.x and goal.y then
			return ("Go to %.1f,%.1f"):format(goal.x,goal.y)
		end
		return "Go to destination"
	end
	if goal.action=="kill" and goal.target then
		return ("Kill %s"):format(goal.target)
	end
	if (goal.action=="get" or goal.action=="collect") and goal.target then
		return ("Collect %s"):format(goal.target)
	end
	if goal.action=="goldcollect" and goal.target then
		return ("Farm %s"):format(goal.target)
	end
	if goal.action=="fpath" and goal.param then
		return ("Take flight to %s"):format(goal.param)
	end
	if goal.routegroup then
		local step = goal.parentStep
		if step then
			for _,g in ipairs(step.goals) do
				if g.action and g.action~="goto" and g.target then
					if g.action=="goldcollect" then return ("Farm %s in this area"):format(g.target) end
					if g.action=="kill" then return ("Kill %s in this area"):format(g.target) end
					if g.action=="collect" or g.action=="get" then return ("Collect %s in this area"):format(g.target) end
					break
				end
			end
		end
		return "Follow the path"
	end
	if goal.GetText then
		local raw = goal:GetText(true)
		if raw and raw~="" then
			raw = raw:gsub("|c%x%x%x%x%x%x%x%x",""):gsub("|r","")
			raw = raw:gsub("%s+%(%d+/%d+%)$","")
			raw = raw:gsub("%s+%d+%%$","")
			if raw:match("^(Accept%s+)") or raw:match("^(Turn in%s+)") or raw:match("^(Talk to%s+)") or raw:match("^(Kill%s+)") or raw:match("^(Get%s+)") or raw:match("^(Collect%s+)") then
				return raw:gsub("^(Get%s+)","Collect ")
			end
		end
	end
	return (explicitTitle and explicitTitle ~= "") and explicitTitle or nil
end

function me:getXY(id)
	self:Debug("getXY "..id)
	return (id % 10001)/10000, math.floor(id / 10001)/10000
end

local addonnames = {"none","internal","cart2","carbonite","tomtom"}
local addonnum = {}
for i=1,#addonnames do addonnum[addonnames[i]]=i end

function me:ConnectWaypointAddon(addon)
	if not addon then addon=self.db.profile.waypointaddon end
end

function me:AutodetectWaypointAddon()
	self.autodetectingwaypointaddon = true
	self:Print(L["waypointaddon_detecting"])

	local checks = {"cart2","carbonite","tomtom","internal"}
	for i=1,#checks do
		if self:IsWaypointAddonReady(checks[i]) then
			return checks[i]
		end
	end

	-- else
	self:Print(L["waypointaddon_notdetected"])
end

function me:GetWaypointAddon()
	return addonnum[self.db.profile.waypointaddon] or 0
end

function me:SetWaypointAddon(info,addon)
	if not addon then addon=info end
	if type(addon)=="number" then addon=addonnames[addon] end
	if not addon then
		-- try to autodetect
		addon = self:AutodetectWaypointAddon()
		if not addon then addon="none" end
	end
	addon=addon:gsub("[0-9]-_","")

	self:Debug("Setting waypoint addon: "..addon)
	if addon~="none" and not self:IsWaypointAddonReady(addon) then
		self:Print(L["waypointaddon_fail"]:format(L["opt_group_addons_"..addon]))
		return
	end

	-- disconnect the current addon
	--if (addon~=self.db.profile.waypointaddon) then
	self:UnsetWaypointAddon()
	--end

	self.db.profile.waypointaddon = addon
	--self.iconsregistered = false
	--self.iconregistryretries = 0
	self.ConnectedWaypointer = self.WaypointFunctions[addon]

	self:Print(L["waypointaddon_set"]:format(L["opt_group_addons_"..addon]))

	self:SetWaypoint()
--[[
	if (self.db.profile.waypointaddon=="none") then
		self.optionsmap.args.minicons.disabled = true
	else
		self.optionsmap.args.minicons.disabled = false
	end
	LibStub("AceConfigRegistry-3.0"):NotifyChange("ZygorGuidesViewer")
]]--
end

me.WaypointFunctions = {}

me.WaypointFunctions['tomtom'] = {
	isready = function()
		-- make SURE we have TomTom and not Carbonite emulating it
		return not not (TomTom and TomTom.events) -- make sure it's not Carbonite ;P
	end,
	setwaypoint = function (self,goalnumORx,y,title)
		self:Debug("placing TomTom waypoint")

		self:ClearTomTomWaypoints()
		if goalnumORx==false then return end

		if y then
			self:CreateTomTomWaypointXY(goalnumORx,y,title,true)
		else
			self:CreateTomTomWaypoints(goalnumORx)
		end
	end,
	addmapnote = function (self,zone,x,y,data)
		if BZL[zone] then zone=BZL[zone] end
		self:CreateTomTomWaypointZXY(zone,x,y,data.title,false)
	end,
	disconnect = function(self)
		-- TomTom can ask for clearing all waypoints; Carbonite should not.
		if StaticPopupDialogs["TOMTOM_REMOVE_ALL_CONFIRM"] then StaticPopupDialogs["TOMTOM_REMOVE_ALL_CONFIRM"]:OnAccept() end

		-- Carbonite doesn't do this, either
		if TomTomCrazyArrow then TomTomCrazyArrow:Hide() end
	end
}

me.WaypointFunctions['carbonite'] = {
	isready = function()
		return not not (Nx and Nx.TTAW)
	end,
	setwaypoint = function (self,goalnumORx,y,title)
		self:Debug("placing Carbonite waypoint")

		-- clear waypoints
		local map=Nx.Map:GeM(1)
		if map then wipe(map.Tar) end

		if goalnumORx==false then return end

		if y then
			self:CreateTomTomWaypointXY(goalnumORx,y,title)
		else
			self:CreateTomTomWaypoints(goalnumORx)
		end
	end,
	clearmapnotes = function (self)
		local folders = Nx.Fav:FiF("Notes")
		for i,fol in ipairs(folders) do
			for j=1,#fol do
				if fol[j] and fol[j]:match("~#~.*%(ZG%)~") then
					tremove(fol,j)
					j=j-1
				end
			end
		end
		Nx.Fav:Upd()
	end,
	addmapnote = function (self,zone,x,y,data)
		--[[
		local folder=Nx.Fav:FiF("Zygor Guides")
		if not folder then
			folder=Nx.Fav:AdF1("Zygor Guides")
		end
		local fav = Nx.Fav:FiF1("Gold Guide","Name",folder)
		if not fav then
			fav=Nx.Fav:AdF2("Gold Guide",folder)
			fav["ID"]=maI
			sort(fav,function(a,b) return a["Name"]<b["Name"] end)
		end
		--]]


		if BZL[zone] then zone=BZL[zone] end
		local carbZone = Nx.MNTI1[zone] --zone IDs
		local fav = Nx.Fav:GNF(carbZone)
		local s=Nx.Fav:CrI("N",0,(data and data.title or "Gold Spot") .. " (ZG)",3,carbZone,x,y)
		Nx.Fav:AdI1(fav,nil,s)
		-- ...
		Nx.Fav:Upd()
		--Nx:TTSTCZXY(contid,zoneid,x,y,data and data.title,false,true,true,nil)  -- cont,zone,x,y,name,persist,minimap,world,data
	end,
	disconnect = function(self)
		-- remove waypoints
		local Nx=Nx
		for i=1,10000 do Nx:TTRW(i) end
	end
}

me.WaypointFunctions['cart2'] = {
	isready = function()
		return not not (Cartographer_Notes and Cartographer_Notes:IsActive() and Cartographer_Notes.externalDBs)
	end,

	clearmapnotes = function (self)
	end,
	addmapnote = function (self,zone,x,y,data)
	end,

	setwaypoint = function (self,goalnumORx,y,title)
		self:Debug("Setting cart2 waypoint")
		--self:Debug(self.CurrentStep.mapnote)
	--[[		
		if self.oldnote then
			Cartographer_Notes:DeleteNote(self.oldzone,self.oldnote)
		end
	--]]
		self:ClearCartographerWaypoints()
		if goalnumORx==false then return end

		if y then
			self:CreateCartographerWaypointXY(goalnumORx,y,title)
		else
			self:CreateCartographerWaypoints(goalnumORx)
		end

		--[[
		local queue = Cartographer_Waypoints.Queue
		for i,v in ipairs(queue) do
			if v and v.Db=="ZygorGuides" then
				table.remove(queue,i)
			end
		end
		--]]

		--local note = Cartographer_Notes:SetNote(zone,x/100,y/100,"Circle","ZygorGuidesViewer",'manual',true,'title',)
	--		if mapnote and mapzone and Cartographer_Notes.externalDBs then
	--			Cartographer_Waypoints:SetNoteAsWaypoint(mapzone,mapnote)
	--		end
	--		self.oldzone = zone
	end,
	disconnect = function(self)
		self:ClearCartographerWaypoints()
		--if Cartographer_Notes and Cartographer_Notes.externalDBs and Cartographer_Notes.externalDBs["ZygorGuidesViewer"] then 
		Cartographer_Notes:UnregisterNotesDatabase("ZygorGuidesViewer")
	end
}

me.WaypointFunctions['cart3'] = {
	isready = function()
		return not not (Cartographer3 and Cartographer3.db)
	end,
	disconnect = function(self)
		--[[
		if Cartographer3 and Cartographer3.db then
			self:Print("Cartographer3 disconnected.")
		else
			self:Print("Cartographer3 not connected.")
		end
		--]]
	end
}

me.WaypointFunctions['metamap'] = {
	isready = function()
		return false
	end
}

me.WaypointFunctions['internal'] = {
	isready = function(self)
		return not not self.Pointer.ready
	end,
	setwaypoint = function (self,goalnumORx,y,title)
		if UnitIsDeadOrGhost("player") then return end -- don't overwrite the stinking arrow
		self.Pointer:ClearWaypoints("way")
		self.Pointer:ClearWaypoints("route")
		if goalnumORx==false then return end
		if not y then
			local goals={}
			local firstpoint,lastpoint
			local points = {}
			local preferredDisplayGoal
			local lastDisplayGoal
			local displayActions = {
				accept=true, turnin=true, talk=true, ["goto"]=true, use=true, buy=true,
				get=true, collect=true, goldcollect=true, goal=true, kill=true, from=true,
			}
			local function IsNavOnly(goal)
				return goal and goal.action=="goto" and not goal.npc
			end
			if not self.CurrentStep or not self.CurrentStep.goals then return end
			if goalnumORx then goals={self.CurrentStep.goals[goalnumORx]} else for i=1,#self.CurrentStep.goals do if self.CurrentStep.goals[i].x then tinsert(goals,self.CurrentStep.goals[i]) end end end

			-- Travel Advisor: detect cross-zone goals
			local currentZone = GetRealZoneText()
			local crossZoneDest = nil
			local advancedTravelGoal = nil
			for _,goal in ipairs(goals) do
				local gmap = goal.map or (self.CurrentStep and self.CurrentStep.map)
				if gmap and not goal.localmap and gmap ~= currentZone and goal.x and goal.y then
					crossZoneDest = gmap
					if not goal.force_noway and not goal.waypoint_notravel then
						advancedTravelGoal = goal
					end
					break
				end
			end
			if crossZoneDest and advancedTravelGoal and CanUseLibRoverPath() then
				local gmap = advancedTravelGoal.map or (self.CurrentStep and self.CurrentStep.map) or crossZoneDest
				local waypointTitle =
					advancedTravelGoal.title
					or GetRemasterArrowTitle(self, advancedTravelGoal, title)
					or self.CurrentStep:GetTitle()
					or (gmap and advancedTravelGoal.x and ("%s %d,%d"):format(gmap, advancedTravelGoal.x, advancedTravelGoal.y))
					or L['waypoint_step']:format(self.CurrentStepNum)
				local travelWaypoint = {
					t = waypointTitle,
					map = gmap,
					x = advancedTravelGoal.x,
					y = advancedTravelGoal.y,
					goal = advancedTravelGoal,
					titleloc = FormatWaypointLocation(advancedTravelGoal, gmap),
				}
				if StartLibRoverPath(travelWaypoint) then return end
			end
			if not goalnumORx then
				for i=1,#self.CurrentStep.goals do
					local g = self.CurrentStep.goals[i]
					if g and displayActions[g.action] and not g.force_noway and not IsNavOnly(g) then
						local complete,possible = g:IsComplete()
						if not complete and possible then
							preferredDisplayGoal = g
							break
						end
					end
				end
				if not preferredDisplayGoal then
					for i=1,#self.CurrentStep.goals do
						local g = self.CurrentStep.goals[i]
						if g and displayActions[g.action] and not g.force_noway and not IsNavOnly(g) then
							local complete = g:IsComplete()
							if not complete then
								preferredDisplayGoal = g
								break
							end
						end
					end
				end
				for i=1,#self.CurrentStep.goals do
					local g = self.CurrentStep.goals[i]
					if g and displayActions[g.action] and not g.force_noway and not IsNavOnly(g) then
						lastDisplayGoal = g
					end
				end
			end
			-- For route/path goals, find first and last indices to only show endpoint markers
			local routeFirst, routeLast, activeRouteGoal
			for k,goal in ipairs(goals) do
				if goal.routegroup then
					if not routeFirst then routeFirst = k end
					routeLast = k
					if not activeRouteGoal then
						local complete,possible = goal:IsComplete()
						if not complete and possible then
							activeRouteGoal = goal
						end
					end
				end
			end
			for k,goal in ipairs(goals) do
				-- Skip middle route waypoints on the map, but keep the currently active
				-- route point so the arrow can retarget as the generated goto goals advance.
				if goal.routegroup and routeFirst and k ~= routeFirst and k ~= routeLast and goal ~= activeRouteGoal then
					-- skip, ant trail covers these
				elseif not goal.force_noway then
					local gmap = goal.map or (self.CurrentStep and self.CurrentStep.map) or GetRealZoneText()
					local waypointTitle =
						goal.title
						or GetRemasterArrowTitle(self,goal,title)
						or self.CurrentStep:GetTitle()
						or (gmap and goal.x and ("%s %d,%d"):format(gmap,goal.x,goal.y))
						or L['waypoint_step']:format(self.CurrentStepNum)
					local way = self.Pointer:SetWaypoint (nil,goal.localmap and nil or gmap,goal.x,goal.y,{
						title=waypointTitle,
						titleloc=FormatWaypointLocation(goal, gmap),
						goal=goal,
						localmap=goal.localmap,
						onminimap="always",
						overworld=true
					})
					if way then
						-- Shrink route endpoint markers
						if goal.routegroup then
							way.minimapFrame.icon:SetSize(8, 8)
							way.worldmapFrame.icon:SetSize(12, 12)
							way.worldmapFrame:SetSize(12, 12)
						end
						if not firstpoint then firstpoint=way end
						lastpoint=way
						table.insert(points,{goal=goal,way=way})
					else
						self:Print("Unable to create waypoint: "..tostring(gmap).." "..tostring(goal.x).." "..tostring(goal.y))
					end
				end
			end
			local selected
			-- Strict top-to-bottom progression through sub-goals, but prefer
			-- non-navigation goals over pure goto markers.
			for _,p in ipairs(points) do
				local complete,possible = p.goal:IsComplete()
				if not complete and possible and not IsNavOnly(p.goal) then selected=p.way break end
			end
			if not selected then
				for _,p in ipairs(points) do
					local complete = p.goal:IsComplete()
					if not complete and not IsNavOnly(p.goal) then selected=p.way break end
				end
			end
			for _,p in ipairs(points) do
				if selected then break end
				local complete,possible = p.goal:IsComplete()
				if not complete and possible then selected=p.way break end
			end
			if not selected then
				for _,p in ipairs(points) do
					local complete = p.goal:IsComplete()
					if not complete then selected=p.way break end
				end
			end
			if selected then
				if preferredDisplayGoal and selected.goal and IsNavOnly(selected.goal) then
					selected.goal = preferredDisplayGoal
					selected.t =
						preferredDisplayGoal.title
						or GetRemasterArrowTitle(self,preferredDisplayGoal,title)
						or self.CurrentStep:GetTitle()
						or (preferredDisplayGoal.map and preferredDisplayGoal.x and ("%s %d,%d"):format(preferredDisplayGoal.map,preferredDisplayGoal.x,preferredDisplayGoal.y))
						or L['waypoint_step']:format(self.CurrentStepNum)
					selected.titleloc = FormatWaypointLocation(preferredDisplayGoal, preferredDisplayGoal.map or (self.CurrentStep and self.CurrentStep.map) or GetRealZoneText())
				end
				-- Travel Advisor: when cross-zone, override arrow to point at transit location
				local libRoverStarted = StartLibRoverPath(selected)
				if crossZoneDest and not libRoverStarted and not (selected.goal and selected.goal.waypoint_notravel) then
					local advice = GetTravelAdvice(crossZoneDest)
					if advice and advice.zone and advice.x and advice.y then
						-- Create a waypoint at the transit point (boat dock, zeppelin tower, portal)
						local transitWay = self.Pointer:SetWaypoint(nil, advice.zone, advice.x, advice.y, {
							title = advice.text,
							type = "route",
							travelDestZone = crossZoneDest,
							travelTitle = true,
							onminimap = "always",
							overworld = true,
						})
						if transitWay then
							selected = transitWay
							selected.t = advice.text
							selected.travelTitle = true
						end
					elseif advice then
						selected.t = advice.text
						selected.travelTitle = true
					end
				end
				self.Pointer:ShowArrow (selected)
			elseif lastpoint then
				-- All goals complete or none selectable: keep location fallback, but show
				-- the final meaningful objective title for better context.
				if lastDisplayGoal then
					lastpoint.goal = lastDisplayGoal
					lastpoint.t =
						lastDisplayGoal.title
						or GetRemasterArrowTitle(self,lastDisplayGoal,title)
						or self.CurrentStep:GetTitle()
						or (lastDisplayGoal.map and lastDisplayGoal.x and ("%s %d,%d"):format(lastDisplayGoal.map,lastDisplayGoal.x,lastDisplayGoal.y))
						or L['waypoint_step']:format(self.CurrentStepNum)
					lastpoint.titleloc = FormatWaypointLocation(lastDisplayGoal, lastDisplayGoal.map or (self.CurrentStep and self.CurrentStep.map) or GetRealZoneText())
				end
				self.Pointer:ShowArrow (lastpoint)
			elseif firstpoint then
				self.Pointer:ShowArrow (firstpoint)
			end
		else
			self.Pointer:SetWaypoint (nil,nil,goalnumORx,y,{title=title,persistent=true,overworld=true})
		end
	end,
	addmapnote = function (self,zone,x,y,data)
		if BZL[zone] then zone=BZL[zone] end
		local way = self.Pointer:SetWaypoint (nil,zone,x,y,{title=data.title or ("%s %d,%d"):format(zone,x,y),persistent=true,overworld=true})
	end,
	disconnect = function(self)
		self.Pointer:ClearWaypoints()
	end
}

me.WaypointFunctions['none'] = {
	isready = function()
		return true
	end,
	setwaypoint = function (self)
		self:Debug("No waypointing addon connected.")
	end
}

-- call empty funcs under missing indices
local nilfuncs = {__index=function() end}
for k,v in pairs(me.WaypointFunctions) do setmetatable (v,nilfuncs) end


function me:SetWaypoint(...)
	-- Safety fallback: if no external waypointer is active/ready, use internal arrow.
	if (not self.ConnectedWaypointer) or self.db.profile.waypointaddon=="none" then
		if self.WaypointFunctions and self.WaypointFunctions['internal'] and self.WaypointFunctions['internal'].isready(self) then
			self.ConnectedWaypointer = self.WaypointFunctions['internal']
		end
	end
	if not self.ConnectedWaypointer then return end
	if ...~=false and self.db.profile.hidearrowwithguide and not ZGV.Frame:IsShown() then return end
	if not self:IsWaypointAddonReady() then
		if self.WaypointFunctions and self.WaypointFunctions['internal'] and self.WaypointFunctions['internal'].isready(self) then
			self.ConnectedWaypointer = self.WaypointFunctions['internal']
		else
			self:Print("Waypoint addon '"..self.db.profile.waypointaddon.."' failed.")
			return
		end
	end
	self.ConnectedWaypointer.setwaypoint(self,...)
end

function me:UnsetWaypointAddon()
	if not self.ConnectedWaypointer then return end
	local addon = self.db.profile.waypointaddon
	if not addon or addon=="none" then return end

	if not self:IsWaypointAddonEnabled() then
		self:Debug("Not enabled, out.")
		return
	end --nothing to do here, move along

	if not self:IsWaypointAddonReady() then return end

	self.ConnectedWaypointer.disconnect(self)
	self.ConnectedWaypointer = nil

	self:Print(L["waypointaddon_disconnected"]:format(L["opt_group_addons_"..addon]))
end

function me:IsWaypointAddonReady(addon)
	if not addon then addon = self.db.profile.waypointaddon end
	return self.WaypointFunctions[addon].isready(self)
end

function me:IsWaypointAddonEnabled(addon)
	if not addon then addon = self.db.profile.waypointaddon end
	return self.db.profile.waypointaddon==addon and self:IsWaypointAddonReady(addon) -- and self.iconsregistered
end



function me:qRegisterNotes()
	if not self.CurrentStep then return end
	-- use for pre-registering. Cartographer needs that, while TomTom does not.
	
	-- retrying 3 times
	if self.iconsregistered then return end
	if not self.iconregistryretries then self.iconregistryretries=0 end
	if self.iconregistryretries==3 then
		self:Print(L["waypointaddon_fail"]:format(L["opt_group_addons_"..self.db.profile.waypointaddon]))
		if not self.autodetectingwaypointaddon then
			self:AutodetectWaypointAddon()
		end

	end
	if self.iconregistryretries>3 then return end
	self.iconregistryretries = self.iconregistryretries + 1

	if not self:IsWaypointAddonReady() then return end

	--self:Print(L["waypointaddon_connecting"]:format(self.optionsmap.args.waypoints.values[self.db.profile.waypointaddon]))

	local addon = self.db.profile.waypointaddon

	if addon=="tomtom" then
		--[[
		if not self.db.profile.filternotes then
			self:Print("Creating all waypoints for TomTom. This may take a while.")
			local contid,zoneid
			for zone in pairs(self.MapNotes) do
				local zoneTr = BZL[zone]
				contid,zoneid = self:GetMapZoneNumbers(zoneTr)
				self:Debug("contid="..ns(contid).." zoneid="..ns(zoneid).." for "..ns(zoneTr))
				if contid and zoneid and (type(self.MapNotes[zone])=="table") then
					if (TomTom:GetMapFile(contid,zoneid)) then
						for note,mapnote in pairs(self.MapNotes[zone]) do
							x,y = self:getXY(note)
							--self:Debug("x="..ns(x).." y="..ns(y))
							if x and y then
								--self:Debug(GetCurrentMapContinent().." "..ns(note).." "..ns(zone).." x"..ns(x).." y"..tostring(y))
								self.TomTomWaypoints[#self.TomTomWaypoints+1] = TomTom:AddZWaypoint(
									contid,zoneid,x*100,y*100,
									self.MapNotes[zone][note].title, --desc
									false, --persistent
									true, true, --minimap,world
									nil,true, --callbacks,silent
									(zone==self.CurrentStep.mapzone and note==self.CurrentStep.mapnote) --arrow
								)
							end
						end
					else
						self:Print("No map data for continent id "..ns(contid)..", zone id "..ns(zoneid)..", zone "..ns(zone)..", please report.")
					end
				end
			end
		end
		--]]
	elseif addon=="cart2" then
		--[[
		self:Debug("registering database "..#self.MapNotes)
		Cartographer_Notes:RegisterNotesDatabase('ZygorGuides', self.MapNotes, self)
		self:Debug("registered database")

		self:Debug("registering icons")
		if not self.iconsregistered then
			for k,v in pairs(self.icons) do
				Cartographer_Notes:RegisterIcon(k, v)
			end
		end
		--]]
	elseif addon=="internal" then
	end

	self:Print(L["waypointaddon_connected"]:format(L["opt_group_addons_"..addon]))
	self:Debug("registered icons")
	self.iconsregistered = true
	self.iconregistryretries = 0

	self:SetWaypoint()
end





-- icon handlers:

function me:GetNoteScaling(zone,id,data)
	return self.db.profile.iconScale
end

function me:IsNoteHidden(zone,id,data)
	return self.db.profile.filternotes and (not self.CurrentStep or not self.CurrentStep.mapnote or (id~=self.CurrentStep.mapnote) or (zone~=self.CurrentStep.mapzone))
end

function me:IsMiniNoteHidden(zone,id,data)
	return not self.db.profile.minicons or (self.db.profile.filternotes and ((id~=self.CurrentStep.mapnote) or (zone~=self.CurrentStep.mapzone)))
end

function me:GetNoteTransparency(zone,id,data)
	return self.db.profile.iconAlpha
end

function me:GetNoteIcon(zone,id,data)
--	return (not self.db.profile.filternotes and self.CurrentStep and (id==self.CurrentStep.mapnote) and (zone==self.CurrentStep.mapzone)) and "hilite" or data.icon
	return (self.CurrentStep and (id==self.CurrentStep.mapnote) and (zone==self.CurrentStep.mapzone)) and (data.icon=="Square" and "hilitesquare" or "hilite") or data.icon
end



-------------------------- Cartographer stuff

function me:ClearCartographerWaypoints()
	if Cartographer_Waypoints then
		for i,v in ipairs(Cartographer_Waypoints.Queue) do
			v:Cancel()
			Cartographer_Waypoints.Queue[i]=nil
		end
	end
	if Cartographer_Notes and Cartographer_Notes.externalDBs["ZygorGuidesViewer"] then
		Cartographer_Notes:UnregisterNotesDatabase("ZygorGuidesViewer")
	end
end

function me:CreateCartographerWaypoints(goalnum)
	if not self.CurrentStep or not self.CurrentStep.goals then return end

	local x,y,zone

	local db = {version=3}

	local waypoints = {}

	-- set mapnotes for all the coordinates found in step lines
	-- REVERSE direction to create proper waypoint queue
	for i=#self.CurrentStep.goals,1,-1 do
		local g = self.CurrentStep.goals[i]
		if g.x and not g.force_noway then
			zone = g.map
			if zone then
				if self.BZR[zone] then zone = self.BZR[zone] end
				local note = Cartographer_Notes.getID(g.x/100,g.y/100)
				if not db[zone] then db[zone]={} end
				db[zone][note]={icon="Circle",title=g.title or self.CurrentStep.title or g.autotitle or self.CurrentStep:GetTitle() or L['waypoint_step']:format(self.CurrentStepNum)}

				if (i==goalnum) or not goalnum then
					table.insert(waypoints,{zone=zone,note=note})
				end
			end
		end
	end

	Cartographer_Notes:RegisterNotesDatabase("ZygorGuidesViewer",db)

	for i,way in ipairs(waypoints) do
		Cartographer_Waypoints:SetNoteAsWaypoint(way.zone,way.note)
	end

	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
end

function me:CreateCartographerWaypointXY(x,y,title)
	local zone = select(GetCurrentMapZone(), GetMapZones(GetCurrentMapContinent())) -- likely fails in Scarlet Enclave
	Cartographer_Waypoints:AddWaypoint(NotePoint:new(zone, x, y, title or "Waypoint"))
end


function me:UpdateCartographerExport()
	if ((self.db.profile.waypointaddon~="cart2") and (self.db.profile.waypointaddon~="cart3")) then return end  -- or (not self.iconsregistered) 

	Cartographer_Notes:MINIMAP_UPDATE_ZOOM()
	Cartographer_Notes:UpdateMinimapIcons()
	Cartographer_Notes:RefreshMap()
end



-------------------------- TomTom stuff


function me:ClearTomTomWaypoints()
	--self:Debug("Clearing TomTom waypoints:")
	for i,p in ipairs(self.TomTomWaypoints) do
		--self:Debug(p)
		TomTom:RemoveWaypoint(p)
	end
	self.TomTomWaypoints = {}
end

function me:CreateTomTomWaypoints(goalnum)
	--if not Astrolabe.ContinentList[101] then Astrolabe.ContinentList[101] = {[1]="ScarletEnclave"} end
	if not self.CurrentStep or not self.CurrentStep.goals then return end
	
	if (TomTom.profile and TomTom.profile.persistence) then
		TomTom.profile.persistence.cleardistance = 0
	end

--	if self.CurrentStep.mapnote then

	local x,y,zone

	for i=#self.CurrentStep.goals,1,-1 do
		local goal = self.CurrentStep.goals[i]
		if goal.x and not goal.force_noway then
			local contid,zoneid
			contid,zoneid = self:GetMapZoneNumbers(goal.map)  -- localized already on load
			--self:Print("contid:"..(contid or 'nil').." zoneid:"..(zoneid or 'nil'))
			local way = TomTom:AddZWaypoint(
				contid, zoneid,
				goal.x, goal.y,
				goal.title or self.CurrentStep.title or goal.autotitle or self.CurrentStep:GetTitle() or "Step "..self.CurrentStepNum,
				false, --persistent
				true, --minimap
				true, --world
				nil, --custom_callbacks
				true, --silent
				(i==goalnum or not goalnum) --arrow
			)
			--self:Debug("added to TomTom as:"..(way or 'nil'))
			if way then table.insert(self.TomTomWaypoints, way) end
		end

	end

end

function me:CreateTomTomWaypointXY(x,y,title,arrow)
	return self:CreateTomTomWaypointZXY(GetRealZoneText(),x,y,title,arrow)
end

function me:CreateTomTomWaypointZXY(zone,x,y,title,arrow)
	local contid,zoneid = self:GetMapZoneNumbers(zone)
	return self:CreateTomTomWaypointCZXY(contid,zoneid,x,y,title,arrow)
end

function me:CreateTomTomWaypointCZXY(contid,zoneid,x,y,title,arrow)
	self:Debug(x..' '..y)
	local way = TomTom:AddZWaypoint(
		contid, zoneid,
		x, y,
		title or self.CurrentStep.title or "Step "..self.CurrentStepNum,
		false, --persistent
		true, --minimap
		true, --world
		nil, --custom_callbacks
		true, --silent
		arrow --arrow
	)
	if way then table.insert(self.TomTomWaypoints, way) end
end

local MapZoneCache={}
local cached
function me:GetMapZoneNumbers(zonename)
	if zonename==self.BZL["Plaguelands: The Scarlet Enclave"] then return 5,1 end
	cached = MapZoneCache[zonename]
	if cached then return unpack(cached) end
	for cont in pairs{GetMapContinents()} do
		for zone,name in pairs{GetMapZones(cont)} do
			if name==zonename then
				MapZoneCache[zonename]={cont,zone}
				return cont,zone
			end
		end
	end
	return 0
end

-- only for TomTom support, Astrolabe bundled
function me:GetMapZoneFile(zonename)
	Astrolabe = DongleStub("Astrolabe-0.4")
	for cont in pairs{GetMapContinents()} do
		for zone,name in pairs{GetMapZones(cont)} do
			if name==zonename then
				return Astrolabe.ContinentList[cont][zone]
			end
		end
	end
	return ""
end

--EVIL STUFF. Hacking the ORIGINAL GetMapContinents(). This is bad, bad, bad - but Blizzard broke the rules by creating an off-world zone first... ;P
--[[
local continentlist = { GetMapContinents() }
table.insert(continentlist,ZygorGuidesViewer.BZL["Plaguelands: The Scarlet Enclave"])
function GetMapContinents()
	return unpack(continentlist)
end
local _GetMapZones = GetMapZones
function GetMapZones(cont)
	if cont<5 then
		return _GetMapZones(cont)
	else
		return ZygorGuidesViewer.BZL["Plaguelands: The Scarlet Enclave"]
	end
end
--]]
