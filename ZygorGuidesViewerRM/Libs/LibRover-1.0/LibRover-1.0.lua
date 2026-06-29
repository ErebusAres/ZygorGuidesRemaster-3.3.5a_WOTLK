--[[
Name: LibRover-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library calculating travel paths from point A to point B.
Dependencies: None
License: MIT
]]

local addonName,addon = ...

-- BabbleZone or somesuch heavily suggested. This library uses English map names.

local MAJOR_VERSION = "LibRover-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

local tostring=tostring --Getting a nil value sometimes. Localizing to see if it address the issue.

-- GLOBAL EasyFork,Spoo,UIDropDownFork_SetAnchor,UIDropDownFork_SetWidth
-- GLOBAL LibRover_Node,LibRover_NodeSet,LibRover_NodeSetHeap,LibRover_Region
-- GLOBAL LibRoverFrame,ZygorGuidesViewer,ZygorGuidesViewerPointerOverlay
-- GLOBAL DEBUG_MATCHING
-- removed, unused:
-- GLOBAL SetMapByID,SetMapToCurrentZone
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

local HBD = LibStub("HereBeDragons-ZGV")
local LibTaxi = LibStub("LibTaxi-1.0")
local AceTimer = LibStub("AceTimer-3.0")

--localize
local LibRover_Node = LibRover_Node
local LibRover_NodeSet = LibRover_NodeSet
local LibRover_NodeSet = LibRover_NodeSet
local LibRover_Region = LibRover_Region


do
	local LIB_MAJOR, LIB_MINOR = "LibRover-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)
	AceTimer:Embed(Lib)
	local LibRover=Lib
	_G['LibRover']=LibRover


	local
	  tinsert,tremove,ipairs,pairs,next,debugprofilestop,tonumber,table,wipe,type,assert,error,pcall,print,debugstack
	= tinsert,tremove,ipairs,pairs,next,debugprofilestop,tonumber,table,wipe,type,assert,error,pcall,print,debugstack
	local
	  IsSpellKnown,UnitLevel,IsQuestFlaggedCompleted
	= IsSpellKnown,UnitLevel,C_QuestLog.IsQuestFlaggedCompleted
	local yield,resume,co_create,co_status = coroutine.yield,coroutine.resume,coroutine.create,coroutine.status

	local ZGV

	Lib.IsClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
	Lib.IsClassicTBC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
	Lib.IsClassicWOTLK = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
	Lib.IsRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE

	--[[
	if not Lib then -- ookay, REPLACE the old thing! This is evil, I know.
		Lib = LibStub:GetLibrary(LIB_MAJOR, LIB_MINOR)
		if not Lib.is_stub then  return  end
		Lib.is_stub=nil
	end
	--]]

	if Lib then

		local BZ = LibStub("LibBabble-SubZone-3.0")
		local BZL = BZ:GetUnstrictLookupTable()
		local BZR = setmetatable({_table=BZ:GetReverseLookupTable()},{__index=function(t,k) return t._table[k] or k end})

		local function TryBZL(text)
			if type(text)~="string" then return text end
			return BZL[text] or text
		end

		-- let's get famous
		addon.LibRover = Lib
		_G['LibRover'] = Lib


		-- Localization stub:
		local L = {}
		setmetatable(L,{__index=function(self,k) return rawget(self,k) or k end})
		Lib.L=L


		Lib.do_border_opti = false


		Lib.data = Lib.data or addon.LibRoverData     addon.LibRoverData = nil

		Lib.opennodes = LibRover_NodeSetHeap:New()

		Lib.banned_nodes = {}
		Lib.onlies = {}
		Lib.delayeddata = {}

		Lib.taxislinked={}
		
		Lib.tempstore = setmetatable({},{__mode='k',__index=function(t,k) local n={} t[k]=n return n end})
		local tempstore = Lib.tempstore


		Lib.startup_modules_funcs = {}


		local WEAK_VALUES={__mode='v'}
		Lib.nodes = {all={},taxi={},id={},mageteleport={},useitem={},['start']={},['end']={},['temp']={},['by_map']={},['by_cont']={}}
		-- if a node falls out of the 'all', drop it everywhere.
		local allnodes = Lib.nodes.all
		--setmetatable(Lib.nodes.taxi,WEAK_VALUES)
		--setmetatable(Lib.nodes.id,WEAK_VALUES)
		--setmetatable(Lib.nodes.mageteleport,WEAK_VALUES)

		local COST_MAGE_TELEPORT = 20
		local COST_PORTAL = 10
		local COST_TRAM = 300
		local COST_ITEM = 30
		local COST_CROSSCONTINENT_DEFAULT = 20
		local COST_SHIP_DEFAULT = 240
		local COST_FAILURE = 100000 -- anything above means failed path
		local COST_FORCED = -1000000  -- guaranteed best
		local COST_MOUNTUP = 2.0  -- 1.5 + decision
		local BASE_MOVEMENT_SPEED = BASE_MOVEMENT_SPEED
		local colors={['portal']="|cffff8800",['taxi']="|cff88ff00"}

		local COSTMOD_COMFORT_TAXI = 0.5
		local COSTMOD_WALK = 1.2
		local COSTMOD_HOSTILE = 1

		local TAXI_NODE_RADIUS = 1
		local STANDING_ON_NODE_RADIUS = 10
		local STANDING_ON_NODE_RADIUS_FLIGHT = 50
		local STANDING_ON_NODE_RADIUS_END = 20

		Lib.FINDPATH_MAX_RETRIES = 10

		local COOLDOWN_SPELL = Lib.IsClassic and 29515 or 61304

		local opened_count
		local closed_count

		Lib.knowntaxis = {}  -- managed by LibTaxi


		-- intercrossable zone pairs
		Lib.greenborders = {}

		Lib.standing_still_time = 0

		Lib.NODE_SOURCES = {}  -- DEV

		Lib.cfg = {
			use_cot = true,
			use_mage_teleport = true,
			use_item_teleports = true,
			--use_last_resort = true, -- Warlock summons/Courtesy portals
			avoid_highlevel_zones = true,
			strip_arrivals=true,
			use_hearth = true,
			use_ghearth = true,
			use_astral_recall = true,
			frown_on_portals = false,
			blow_item_cd_ratio = 0,
			use_taxi = true,

			remove_hairpins = true,
			remove_standing = true
		}

		Lib.cfgNodeOverride = {}

		function Lib:GetCFG(field)
			if self.cfgNodeOverride[field]==nil then return self.cfg[field] end
			return self.cfgNodeOverride[field]
		end

		Lib.COST_FORCED = COST_FORCED
		Lib.COST_FAILURE = COST_FAILURE

		--local maxpersec = 20000  -- nodes processed
		local hardmaxfirst = 3000 -- don't get greedy
		local hardmaxidle = 1000 -- don't get greedy
		local hardmax = 1000
		local hardmin = 50 -- don't get greedy
		local perframethrot = 0

		local lastupdate=0

		local debug_time_cheapest_1
		local debug_time_all_1
		Lib.debug_count_compares=0
		Lib.debug_frames_total=0

		--[[
		local TYPE_BORDER = 1
		local TYPE_TAXI = 3
		local TYPE_START = 4
		local TYPE_END = 5

		local WAY_GROUND = 1
		local WAY_SHIP = 2
		local WAY_TAXI = 3
		local WAY_FLY = 4
		local WAY_PORTAL = 5
		local WAY_ZEPPELIN = 6
		--]]

		local Mdist
		local function getdist(node1,node2)
			if not Mdist then Mdist=ZGV.MapCoords.Mdist end
			if not node1.x or not node2.x then return 99999999 end
			local dist,xd,yd = Mdist(node1.m,node1.x,node1.y,node2.m,node2.x,node2.y)
			if dist==0 and (node1.c~=node2.c or (node1.c==node2.c and node1.c==-1 and node1.m~=node2.m)) then dist=nil end
			return dist or 99999999,xd,yd
		end
		Lib.GetDist=getdist

		local function dictsize(dict)
			local i=0
			for _,__ in pairs(dict) do i=i+1 end
			return i
		end

		local function map_breaks_stuff()
			return WorldMapFrame:IsShown() and (GetPlayerMapPosition("player")==0)
		end

		--[[
		local function playerpos()
			local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor -- WHY OH WHY do I have to do it like that ;_;
			local lax,lay,lam,laf = LibRover:GetPlayerPosition()
			local x,y = Astrolabe:TranslateWorldMapPosition( lam, laf, lax, lay, m, f )
			--if not x or x<0 or y<0 or x>1 or y>1 then x,y=nil,nil end
			return m,f,x,y
		end
		Lib.playerpos=playerpos
		--]]

		local function myassert(test,msg,...)  --unused
			if not test then
				Lib.ERRORS=Lib.ERRORS or {}
				tinsert(Lib.ERRORS,{...})
				error(msg,2)
			end
		end


		local MAPENUM={
			["KALIMDOR"]=12,
			["EASTERNKINGDOMS"]=13,
			["OUTLAND"]=101,
			["NORTHREND"]=113,
			["PANDARIA"]=424,
			["DRAENOR"]=572,
			["BROKENISLES"]=619,
			["ARGUS"]=905,
			["ZANDALAR"]=875,
			["KULTIRAS"]=876,
			["NAZJATAR"]=1355,
			["SHADOWLANDS"]=1550,
			["DEEPHOLM"]=207,

			["ARATHIHIGHLANDS"]=14,
			["BADLANDS"]=15,
			["BLASTEDLANDS"]=17,
			["BURNINGSTEPPES"]=36,
			["COLDRIDGEVALLEY"]=427,
			["DEADWINDPASS"]=42,
			["DEATHKNELL"]=465,
			["DUNMOROGH"]=27,
			["DUSKWOOD"]=47,
			["EASTERNPLAGUELANDS"]=23,
			["ELWYNNFOREST"]=37,
			["EVERSONGWOODS"]=94,
			["GHOSTLANDS"]=95,
			["GILNEAS"]=179,
			["HILLSBRADFOOTHILLS"]=25,
			["IRONFORGE"]=87,
			["ISLEOFQUELDANAS"]=122,
			["LOCHMODAN"]=48,
			["NEWTINKERTOWN"]=469,
			["NORTHERNSTRANGLETHORN"]=50,
			["NORTHSHIRE"]=425,
			["REDRIDGEMOUNTAINS"]=49,
			["RUINSOFGILNEAS"]=217,
			["RUINSOFGILNEASCITY"]=218,
			["RUINSOFLORDAERON"]=908,
			["SEARINGGORGE"]=32,
			["SILVERMOONCITY"]=110,
			["SILVERPINEFOREST"]=21,
			["STORMWINDCITY"]=84,
			["STRANGLETHORNVALE"]=224,
			["SUNSTRIDERISLE"]=467,
			["SWAMPOFSORROWS"]=51,
			["THECAPEOFSTRANGLETHORN"]=210,
			["THEHINTERLANDS"]=26,
			["TIRISFALGLADES"]=18,
			["TOLBARAD"]=244,
			["TOLBARADPENINSULA"]=245,
			["TWILIGHTHIGHLANDS"]=241,
			["UNDERCITY"]=90,
			["VASHJIR"]=203,
			["WESTERNPLAGUELANDS"]=22,
			["WESTFALL"]=52,
			["WETLANDS"]=56,

			["ABYSSALDEPTHS"]=204,
			["KELPTHARFOREST"]=201,
			["SHIMMERINGEXPANSE"]=205,
		}

		if Lib.IsClassic or Lib.IsClassicTBC or Lib.IsClassicWOTLK then
			MAPENUM={
				["KALIMDOR"]=1414,
				["EASTERNKINGDOMS"]=1415,

				["ARATHIHIGHLANDS"]=1417,
				["BADLANDS"]=1418,
				["BLASTEDLANDS"]=1419,
				["BURNINGSTEPPES"]=1428,
				["DEADWINDPASS"]=1430,
				["DUNMOROGH"]=1426,
				["DUSKWOOD"]=1431,
				["EASTERNPLAGUELANDS"]=1423,
				["ELWYNNFOREST"]=1429,
				["HILLSBRADFOOTHILLS"]=1424,
				["IRONFORGE"]=1455,
				["LOCHMODAN"]=1432,
				["REDRIDGEMOUNTAINS"]=1433,
				["SEARINGGORGE"]=1427,
				["SILVERPINEFOREST"]=1421,
				["STORMWINDCITY"]=1453,
				["STRANGLETHORNVALE"]=1434,
				["SWAMPOFSORROWS"]=1435,
				["THEHINTERLANDS"]=1425,
				["TIRISFALGLADES"]=1420,
				["UNDERCITY"]=1458,
				["WESTERNPLAGUELANDS"]=1422,
				["WESTFALL"]=1436,
				["WETLANDS"]=1437,
			}
		end

		-- This magic makes a bitmask out of which parts of Eastern see each other.
		-- They're all split by bays and seas, which cannot be flown over, so this is needed for sane navigation.
		-- Result - only zones sharing a "part bit" see each other directly.
		local easterns_init = {
			-- ignore VERY north areas; you can't fly in BElf zones anyway. Blizzard, srsly?
			[1]={MAPENUM["TIRISFALGLADES"],MAPENUM["UNDERCITY"],MAPENUM["WESTERNPLAGUELANDS"],MAPENUM["EASTERNPLAGUELANDS"],MAPENUM["SILVERPINEFOREST"],MAPENUM["HILLSBRADFOOTHILLS"],MAPENUM["ARATHIHIGHLANDS"],MAPENUM["THEHINTERLANDS"]}, --northmost, down to Arathi (common)
			[2]={MAPENUM["ARATHIHIGHLANDS"], MAPENUM["WETLANDS"]}, --middle: arathi,wetlands
			[4]={MAPENUM["WETLANDS"],MAPENUM["TWILIGHTHIGHLANDS"], MAPENUM["DUNMOROGH"],MAPENUM["NEWTINKERTOWN"],MAPENUM["COLDRIDGEVALLEY"],MAPENUM["LOCHMODAN"],MAPENUM["SEARINGGORGE"],MAPENUM["BADLANDS"],MAPENUM["BURNINGSTEPPES"],MAPENUM["ELWYNNFOREST"],MAPENUM["NORTHSHIRE"],MAPENUM["REDRIDGEMOUNTAINS"],MAPENUM["WESTFALL"],MAPENUM["DUSKWOOD"],MAPENUM["DEADWINDPASS"],MAPENUM["SWAMPOFSORROWS"],MAPENUM["STRANGLETHORNVALE"],MAPENUM["NORTHERNSTRANGLETHORN"],MAPENUM["THECAPEOFSTRANGLETHORN"],MAPENUM["BLASTEDLANDS"]}, -- southern part: wetlands,twilight... and the rest
		}

		if Lib.IsRetail then
			table.insert(easterns_init[1],MAPENUM["DEATHKNELL"])
			table.insert(easterns_init[1],MAPENUM["RUINSOFGILNEAS"])
			table.insert(easterns_init[2],MAPENUM["TWILIGHTHIGHLANDS"]) -- middle: twilight
		end

		local easterns={}
		local bit_or,bit_and=bit.bor,bit.band
		for bits,zones in pairs(easterns_init) do
			for z,zone in pairs(zones) do
				easterns[zone]=bit_or(easterns[zone] or 0,bits)
			end
		end
		Lib.easterns=easterns
		setmetatable(easterns,{__index=function() return 255 end}) -- holy crap, this will suck - but hey, SOMEONE put a node out in continent space...
		function Lib.zone_same_eastern_part(map1,map2)
			return bit_and(easterns[map1],easterns[map2])>0
		end

		function Lib:UpdateConfig(profile)
			Lib.cfg.use_hearth=profile.travelusehs
			Lib.cfg.use_ghearth=profile.traveluseghs
			Lib.cfg.use_dhearth=profile.travelusedhs
			Lib.cfg.use_item_teleports=profile.traveluseitems
			Lib.cfg.use_whistle=profile.travelusewhistle
			Lib.cfg.pathfinding_comfort=profile.pathfinding_comfort
			--Lib.cfg.prefer_taxi=profile.travelprefertaxi

			Lib.cfg.use_astral_recall=profile.travelusespells
			--Lib.cfg.frown_on_portals=profile.travelusespells
			Lib.cfg.use_mage_teleport=profile.travelusespells
		end

		function Lib:GetCooldownWithoutGCD(what,id)
			local start,dur,active
			if what=="spell" then start,dur,active=GetSpellCooldown(id)
			elseif what=="item" then start,dur,active=GetItemCooldown(id)
			else return 0,0,0,0
			end
			if dur>0 then 
				local gcdtime,gcd = GetSpellCooldown(COOLDOWN_SPELL) -- spell created for checking global cooldowns
				if gcdtime>0 and dur<=gcd then -- don't flash spell cooldown for gcd, but show if cooldown is greater
					start,dur=0,0
				end
			end
			return start,dur,active
		end





		local function MapName(id,floor,usename)
			if type(id)=="table" then id,floor=id.m,id.f end
			--if id==811 and (floor==3 or floor==4) then id=905 end --Shrine of Seven Stars
			if usename then
				local mapname = ZGV.GetMapNameByID(tonumber(id) or 0,floor or 0) or "(map "..tostring(id).."?)"
				local floorname = ZGV.GetMapFloorNameByID(tonumber(id) or 0,floor or 0)
				if mapname==floorname then return mapname else return floorname end  -- mapname.." - "..
			else
				return ZGV.GetMapNameByID(tonumber(id) or 0,floor or 0) or "(map "..tostring(id).."?)"
			end
		end
		Lib.MapName=MapName

		local link_walk_greenborders = {mode="walk", interx=1}

		local nodes_by_map=Lib.nodes.by_map
		local nodes_by_cont=Lib.nodes.by_cont

		local function AddNode(node,dontlink)
			--if not self.nodes[node.l[1]] then self.nodes[node.l[1]]={} end

			if node.m and not node.x then return nil end

			-- sanitize continent, coordinates, floor
			node.c = node.c or ZGV.GetMapContinent(node.m)  --Lib.ContinentsByID[node.m]
			if not node.x then error("Failed to add map node "..(#allnodes+1).." type "..node.type) end
			if node.x>1 then node.x,node.y=node.x/100,node.y/100 end
			node.f = node.f or Lib.data.FloorByID[node.m] or 0
			--node.f = ZGV:SanitizeMapFloor(node.m,node.f) -- with bfa changes, we should already have sane uimapid here

			table.insert(allnodes,node)
			local ni = #allnodes
			node.num=ni

			if (node.type) then
				if not Lib.nodes[node.type] then Lib.nodes[node.type]={} --[[setmetatable(Lib.nodes[node.type],{__mode="v"}) --]] end
				--setmetatable(Lib.nodes[node.type],WEAK_VALUES)
				table.insert(Lib.nodes[node.type],node)

				if node.type~="end" and node.type~="start" and node.type~="temp" then
					if not nodes_by_map[node.m] then nodes_by_map[node.m]={} end
					table.insert(nodes_by_map[node.m],node)
					if not nodes_by_cont[node.c] then nodes_by_cont[node.c]={} end
					table.insert(nodes_by_cont[node.c],node)
				end
			end

			-- set node.region, if applicable. BEFORE neighbours, ffs.
			node:AssignRegion()
			node:AssignSpecialMap()

			if Lib.data.ZoneMeta[node.m] then
				for k,v in pairs(Lib.data.ZoneMeta[node.m]) do
					if node[k]==nil then node[k]=v end
				end
			end

			-- sanitize metadata
			node.radius=tonumber(node.radius)

			--setmetatable(node.n,{__mode="k"})

			-- connect to other nodes, by automatic linkage (walk or fly)
			local ntype
			local function DoLinkage_in_scope(scope)
				if scope then for i,v in ipairs(scope) do
					if v~=node then
						-- endnode only gets linked TO.
						if ntype~="end" then node:DoLinkage(v) end
						-- startnode and inns don't get linked TO, only FROM.
						if ntype~="start" and ntype~="inn" then v:DoLinkage(node) end
					end
				end end
			end
			if not dontlink then
				ntype=node.type
				DoLinkage_in_scope(nodes_by_cont[node.c])  -- todo: narrow down to zone, if player can't fly on continent
				if ntype=="start" and Lib.nodes["end"][1] then DoLinkage_in_scope(Lib.nodes["end"]) end  -- supporting multiple endpoints
				if ntype=="start" and Lib.nodes["temp"][1] then DoLinkage_in_scope(Lib.nodes["temp"]) end
			end

			--[[
			-- now done differently through the intelligent Lib.greenborders
			for pi,pair in ipairs(Lib.greenborders) do
				if node.m==pair[1] or node.m==pair[2] then
					for ni2,node2 in ipairs(Lib.nodes.all) do
						if (node~=node2) and ((node2.m==pair[1]) or (node2.m==pair[2])) then
							node.n[node2]=link_walk_greenborders
							node2.n[node]=link_walk_greenborders
						end
					end
				end
			end
			--]]

			if node.id then Lib.nodes.id[node.id]=node end

			return node
		end

		--[[
		local function ParseFullNode(text)
			local text2,faction,ntype = text:match("^(.-) %((.):(.-)%)$")
			text=text2 or text
			local mxy1,dir,mxy2 = text:match("^(.-)%s+([xto]+)%s+(.-)$")
			local m1,x1,y1 = ParseMapXY(mxy1)
			local m2,x2,y2
			if mxy2 then m2,x2,y2 = ParseMapXY(mxy2) end

			if ntype=="_" then ntype=nil end
			return m1,x1,y1,m2,x2,y2,dir=="x",faction,ntype
		end
		--]]

		--[[-- REGIONS --]]--
		-- All this jazz allows us to Lib.NodeRegions:Assign(node) and the node gets .region set to the name of a matching region. All automagically.

		Lib.NodeRegions = { }

		function Lib.NodeRegions:Assign(node)

			for ri,region in ipairs(self) do if region:Contains(node) then node:AssignRegion(region) break end end
		end
		function Lib.NodeRegions:AddNewRegion(data)
			local 	region = LibRover_Region:New(data)
			tinsert(self,region)
			return region
		end



		-- Intersect segments A (x1,y1 : x2,y2) and B (x1,y1 : x2,y2).
		local function getIntersection(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2)
			-- line coefficients
			local aA=ay2-ay1
			local aB=ax1-ax2
			local aC=aA*ax1+aB*ay1
			local bA=by2-by1
			local bB=bx1-bx2
			local bC=bA*bx1+bB*by1
		
			local det = aA*bB-bA*aB
			if abs(det)<0.0001 then
				return nil -- parallel
			else
				local intx = (bB*aC-aB*bC)/det
				local inty = (aA*bC-bA*aC)/det
				return intx,inty
			end
		end
		Lib.getIntersection = getIntersection

		local function doesIntersect(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2)
			if ax1==ax2 then ax1=ax1+0.0001 end -- perfect verticals/horizontals are a bitch.
			if ay1==ay2 then ay1=ay1+0.0001 end
			if bx1==bx2 then bx1=bx1+0.0001 end
			if by1==by2 then by1=by1+0.0001 end
			if max(ax1,ax2)<min(bx1,bx2) then return false,"no overlap x1" end
			if max(bx1,bx2)<min(ax1,ax2) then return false,"no overlap x2" end
			if max(ay1,ay2)<min(by1,by2) then return false,"no overlap y1" end
			if max(by1,by2)<min(ay1,ay2) then return false,"no overlap y2" end
			local intx,inty = getIntersection(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2)
			if not intx then return false,"parallel" end
			if ax1>ax2 then ax1,ax2=ax2,ax1 end
			if ay1>ay2 then ay1,ay2=ay2,ay1 end
			if bx1>bx2 then bx1,bx2=bx2,bx1 end
			if by1>by2 then by1,by2=by2,by1 end
			if  intx>=ax1 and intx<=ax2
			and inty>=ay1 and inty<=ay2
			and intx>=bx1 and intx<=bx2
			and inty>=by1 and inty<=by2  then return true end
			return false,"out"
		end
		Lib.doesIntersect = doesIntersect

		function Lib.IsSegmentWalledN(n1,n2)
			return Lib.IsSegmentWalled(Lib.nodes.all[n1],Lib.nodes.all[n2])
		end
		function Lib.IsSegmentWalled(node1,node2)
			if node1.m~=node2.m then return false,"no wall as not same map" end
			local walls = Lib.walls[node1.m]
			if not walls then return false,"no wall on map" end
			local n1x,n1y,n2x,n2y = node1.x,node1.y,node2.x,node2.y
			for wi,wall in ipairs(walls) do
				local segments=wall.segments
				for si,points in ipairs(segments) do
					local cross,desc = doesIntersect(n1x,n1y,n2x,n2y,points[1],points[2],points[3],points[4])
					--print ("doesIntersect? ",wi,si,n1x,n1y,n2x,n2y,points[1],points[2],points[3],points[4]," = ",cross,desc)
					if cross then return true,wi,si,wall.penalty end
				end
			end
			return false
		end

		Lib.walls = {}


		local function HandleSpellsAndItems(node,link)
			if node.spell then
				node.spell=tonumber(node.spell)
				tinsert(Lib.nodes.mageteleport,node)
			end
			if node.item then
				node.item=tonumber(node.item)
				tinsert(Lib.nodes.useitem,node)
			end
		end

		
		local cond_env = setmetatable({  -- some fancy functions for node conditions to use
			PlayerIsOnQuest = function(id)  return C_QuestLog.IsOnQuest(id)  end,
			PlayerCompletedQuest = C_QuestLog.IsQuestFlaggedCompleted,
			QuestActiveOrComplete = function(id) return C_QuestLog.IsOnQuest(id) or C_QuestLog.IsQuestFlaggedCompleted(id) end,
			UnitLevel = function() return ZGV:GetPlayerPreciseLevel() end,
			PlayerLevel = function() return ZGV:GetPlayerPreciseLevel() end,
			covenant = function(covenant) return false end, -- no covenants in 3.3.5a
			covenantnetwork = function() return false end, -- no covenants in 3.3.5a
		},{__index=_G})
		
		local function ParseDataCond(data)
			if type(data.cond)=="string" then
				local err
				data.cond_fun,err = loadstring("return "..data.cond)
				if err then error(err.." in parsing '"..data.cond.."'") end
			elseif type(data.cond)=="function" then
				data.cond_fun = data.cond
				data.cond="(function)"
			end
			if data.cond_fun then setfenv(data.cond_fun,cond_env) end
		end

		local function CloneTable(tab)
			local t={}
			for k,v in pairs(tab) do t[k]=v end
			return t
		end


		local LAST_NODE  -- to use with @+ pseudo-id in data

		local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
		local myfac = UnitFactionGroup("player"):sub(1,1)

		local function AddError(fmt,...)
			Lib.ERRORS = Lib.ERRORS or {}
			tinsert(Lib.ERRORS,fmt:format(...))
		end

		local function __SmartAddTextNodes(text,deftype,dontlink)
			local data

			deftype=deftype or "misc"
			local ntype

			local origtext = text

			-- by default, nodes are "misc" and connect as "walk".

			-- Powerhorse: extract all {data:blablabla} tags.

			local conndata={mode="walk"}
			repeat
				local text1,key,val,text2 = text:match("^(.-){(.-):(.-)}(.-)$")
				if key then
					if key=="fac" and val==enemyfac then return end  -- quick exit if faction is wrong
					if key=="mode" then val=val and val:lower() ntype=val end  -- ZEPPELIN->zeppelin. Gets copied to node.type too!
					local num = tonumber(val)
					if num then val=num end
					conndata[key]=val
					text=text1..text2
				end
			until not key

			text=text:gsub("\\>","%%GT%%")


			-- Powerhorse #2: parse "zone 12,34 -to- zone 55,66"

			local mxy1,dir,mxy2 = text:match("^(.-)%s+%-([xto]+)%-%s+(.-)$")
			
			if not mxy1 then mxy1 = text end -- OMG one node!?
			local m1,f1,x1,y1,id1,dat1 = LibRover_Node:Parse(mxy1)

			local m2,f2,x2,y2,id2,dat2
			if mxy2 then m2,f2,x2,y2,id2,dat2 = LibRover_Node:Parse(mxy2) end
			
			local twoway = dir=="x"

			-- Parse returns either m,f,x,y,id,data ... or just id.

			if not m1 and not id1 then return AddError("Cannot parse first node #%d : %s",#Lib.nodes.all+1,origtext) end
			if dir and not m2 and not id2 then return AddError("Cannot parse second node #%d : %s",#Lib.nodes.all+1,origtext) end


			local n1 = x1 and LibRover_Node:New({m=m1,f=f1,x=x1,y=y1,id=id1,type=ntype or deftype}) or (id1=="+" and LAST_NODE) or Lib.nodes.id[id1]
			local n2 = x2 and LibRover_Node:New({m=m2,f=f2,x=x2,y=y2,id=id2,type=ntype or deftype}) or Lib.nodes.id[id2]

			LAST_NODE = n2 or n1  -- for reference using @+

			if id1 and not m1 and not n1 then return AddError("Node id @%s not found : %s",id1,origtext) end
			if id2 and not m2 and not n2 then return AddError("Node id @%s not found : %s",id2,origtext) end
			if not n1 then return AddError("Cannot make a node from %s/%d %.1f,%.1f @%s  : %s",tostring(m1),tonumber(f1),tonumber(x1),tonumber(y1),id1 or "", origtext) end

			local link12,link21,link1m

			-- parse condition, if any
			ParseDataCond(conndata)

			if n1 and n2 and conndata.replace then -- don't make a new connection! Just modify an existing one (if any)
				for i,nodemeta in ipairs(n1.n) do if nodemeta[1]==n2 then for k,v in pairs(conndata) do nodemeta[2][k]=v end end end
				if twoway then
					for i,nodemeta in ipairs(n2.n) do if nodemeta[1]==n1 then for k,v in pairs(conndata) do nodemeta[2][k]=v end end end
				end
				return -- that's it, this was just a replacement for an existing (automatic?) connection.
			end

			if dat1 then
				ParseDataCond(dat1)
				for k,v in pairs(dat1) do n1[k]=v end
			end
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				-- we have a proper second node! link to it

				link12 = CloneTable(conndata)
				link12.hardwired=true

				n1:AddNeigh(n2,link12)
			end

			if twoway then
				if n2 then
					-- normal return trip
					link21 = CloneTable(conndata)
					n2:AddNeigh(n1,link21)
					link21.hardwired=true
				elseif m2 then
					-- "Zone 12,34 x Zone"? Write a dual-map node. We only have one node here with a multiple personality.
					if not n1.ms then n1.ms={} end
					link1m = {}
					n1.ms[m2]=link1m
					for k,v in pairs(conndata) do link1m[k]=v end
				end
			else
				--if n2 then n2.onlydst=n1 end
			end

			-- define some more details about the nodes' linkage.
			if n1 and (n2 or n1.ms) then
				if link12 then link12.mode = link12.mode or ntype or "walk" end -- this is link metadata. Assign a mode of travel.
				if link21 then link21.mode = link21.mode or ntype or "walk" end  -- this is link metadata. Assign a mode of travel.
				if link1m then link1m.mode = link1m.mode or ntype or "walk" end  -- this is link metadata. Assign a mode of travel.

				-- If the node is closely bound with another (quite likely, since they're usually added in pairs), store the (hint to the) linkage separately.
				-- This way a node that's later known to have 5 neighbours, can quickly tell one of the neighbours as the SPECIAL neighbour.
				-- But, if the node ALREADY has a special neighbour... then delete this; it's a multi-special whore node.

				if not conndata.dontsetborder then -- allow for some linkages that are NOT special
					if n1.border then
						n1.borders = n1.borders or {}
						n1.borders[n1.border]=n1.bordermeta
						n1.borders[n2]=link12
						n1.border="multi"
					else
						n1.border=n2
						n1.bordermeta=link12
					end
					if n2 then
						if n2.border then
							n2.borders = n2.borders or {}
							n2.borders[n2.border]=n2.bordermeta
							n2.borders[n1]=link21
							n2.border="multi"
						else
							n2.border=n1
							n2.bordermeta=link21
						end
					end
				end
			end

			if conndata.autotype=="portal_dungeon" then
				n1.type="portal"
				n2.type="portal"
				link12.mode="portal"
				link12.template = "portalDungeonEnter" -- note: these are TRAVEL MODES, so they're verbs.
				link21.mode="portal"
				link21.template = "portalDungeonExit"
			end

			-- delayed adding, to account for optimizations using .border data above
			if x1 and n1 then AddNode(n1,dontlink) end
			if x2 and n2 then AddNode(n2,dontlink) end

			-- Spells and items are silly. We add them like node attributes, but they really become link attributes eventually.
			HandleSpellsAndItems(n1,link12)

			--assert(n1,"No coords in SmartAddNode(\""..text.."\")")
			--[[
			if n2 then
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s %.1f,%.1f"):format(ZGV.GetMapNameByID(m1),x1,y1, twoway and "x" or "to", ZGV.GetMapNameByID(m2),x2,y2))
			else
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s"):format(ZGV.GetMapNameByID(m1),x1,y1, twoway and "x" or "to", ZGV.GetMapNameByID(m2)))
			end
			--]]

			return n1,n2
		end

		local def_deftype = "walk"
		local function __SmartAddArrayNodes(data,deftype,dontlink)
			deftype=deftype or def_deftype

			-- faction check
			if data.faction==enemyfac then return end

			-- by default, nodes are "misc" and connect as "walk".

			-- Powerhorse #2: parse "zone 12,34 to zone 55,66"
			local m1,f1,x1,y1,id1,dat1 = LibRover_Node:Parse(data[1])
			local m2,f2,x2,y2,id2,dat2 = LibRover_Node:Parse(data[2])
			data[1]=nil
			data[2]=nil

			if data.set_def_type then def_deftype=data.set_def_type end
			if not m1 and not m2 and not id1 and not id2 then return end

			local n1 = x1 and LibRover_Node:New({m=m1,f=f1,x=x1,y=y1,id=id1,type=dat1 and dat1.type or data.mode or deftype}) or (id1=="+" and LAST_NODE) or Lib.nodes.id[id1]
			local n2 = x2 and LibRover_Node:New({m=m2,f=f2,x=x2,y=y2,id=id2,type=dat2 and dat2.type or data.mode or deftype}) or Lib.nodes.id[id2]

			LAST_NODE = n2 or n1

			if id1 and not m1 and not n1 then error(("Node id @%s not found"):format(id1)) end
			if id2 and not m2 and not n2 then error(("Node id @%s not found"):format(id2)) end
			if not n1 then error(("Cannot make a node from %s/%d %.1f,%.1f @%s"):format(tostring(m1),tonumber(f1 or 0),tonumber(x1 or 0),tonumber(y1 or 0),id1 or "")) end

			if dat1 then for k,v in pairs(dat1) do n1[k]=v end end
			if x1 then AddNode(n1,dontlink) end --new!
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				if x2 then AddNode(n2,dontlink) end
				-- we have a proper second node! link to it

				if n1.c~=n2.c and data.mode~="ship" and data.mode~="zeppelin" then  -- continent crossing, distance will be extreme, and it's not a ship, oddly
					data.cost=data.cost or COST_CROSSCONTINENT_DEFAULT -- just assume 20s and get over it.
					data.time=data.cost or COST_CROSSCONTINENT_DEFAULT
				end

				data.hardwired=1

				n1:AddNeigh(n2,data)

				if n1.type=="portal" and n2.type=="portal" and not data.mode then data.mode="portal" end
			end

			data.mode=data.mode or deftype

			-- parse condition, if any
			ParseDataCond(data)

			if not data.oneway then
				if n2 then
					-- normal return trip, same type
					n2:AddNeigh(n1,data)
				elseif m2 then
					-- "Zone 12,34 x Zone"? Write a dual-map node. We only have one node here with a multiple personality.
					if not n1.ms then n1.ms={} end
					n1.ms[m2]=data
				end
			else
				--if n2 then n2.onlydst=n1 end
			end
			data.oneway=nil

			-- remember which node was first - for order-specific linkages.
			-- no, don't. ancient code is ancient
			-- data.n1=n1
			-- data.n2=n2

			-- define some more details about the nodes' linkage.
			if n1 and (n2 or n1.ms) then
				data.mode=data.mode or "walk"  -- this is link metadata. Assign a mode of travel.

				-- If the node is closely bound with another (quite likely, since they're usually added in pairs), store the (hint to the) linkage separately.
				-- This way a node that's later known to have 5 neighbours, can quickly tell one of the neighbours as the SPECIAL neighbour.
				-- But, if the node ALREADY has a special neighbour... then delete this; it's a multi-special whore node.

				if not data.dontsetborder then -- allow for some linkages that are NOT special
					local link12,link21  -- TODO: fix to make it work like __SmartAddTextNodes above, this is a bandaid
					link12 = CloneTable(data)
					link12.hardwired=true
					if n1.border then
						n1.borders = n1.borders or {}
						n1.borders[n1.border]=n1.bordermeta
						n1.borders[n2]=link12
						n1.border="multi"
					else
						n1.border=n2
						n1.bordermeta=link12
					end
					if n2 then
						link21 = CloneTable(data)
						link21.hardwired=true
						if n2.border then
							n2.borders = n2.borders or {}
							n2.borders[n2.border]=n2.bordermeta
							n2.borders[n1]=link21
							n2.border="multi"
						else
							n2.border=n1
							n2.bordermeta=link21
						end
					end
				end
			end

			-- Spells and items are silly. We add them like node attributes, but they really become link attributes.
			HandleSpellsAndItems(n1,data)

			return n1,n2
		end

		local function tostr(data)
			while type(data)=="table" do data=next(data) end
			return data or ""
		end

		--[[ Unfinished rework.
		local function actiontitle_atob(self,prevnode,nextnode)
			if nextnode==self.border then return self.text_atob end
			if prevnode==self.border then return self.text_btoa end
		end
		local function actiontitle_btoa(self,prevnode,nextnode)
			if nextnode==self.border then return self.text_btoa end
			if prevnode==self.border then return self.text_atob end
		end
		local function set_atob(n1,n2,atob,btoa)
			n1.btoa=atob
		--]]

		
		local function a_to_b (self,fromnode,tonode)
			if tonode==self.border then 
				return (self.bordermeta and (self.bordermeta.title_atob1 or self.bordermeta.title_atob or self.bordermeta.title))
			end  
			if fromnode==self.border then 
				return (self.bordermeta and (self.bordermeta.title_btoa2 or self.bordermeta.title_btoa or self.bordermeta.title))
			end
		end
		local function b_to_a (self,fromnode,tonode)
			if tonode==self.border then 
				return (self.bordermeta and (self.bordermeta.title_btoa1 or self.bordermeta.title_btoa or self.bordermeta.title))
			end  
			if fromnode==self.border then 
				return (self.bordermeta and (self.bordermeta.title_atob2 or self.bordermeta.title_atob or self.bordermeta.title))
			end 
		end

		local function SmartAddNode(data,deftype,dontlink)
			-- all-purpose "map x,y x map x,y"
			local aok,n1,n2
			local DEV=true--ZGV.DEV

			if tostring(data):find("-- ",1,true) then
				if ZGV.db.profile.debug_display then tinsert(Lib.NODE_SOURCES,setmetatable({},{__tostring=function() return tostring(data):gsub("\n"," "):sub(1,100) end}))  end
				return
			end

			if type(data)=="string" then
				if DEV then aok,n1,n2 = pcall(__SmartAddTextNodes,data,deftype,dontlink)
				else n1,n2=__SmartAddTextNodes(data,deftype,dontlink)  aok=true  end
				if not aok then error("|cffff0000NODE ERROR:|r "..n1.." in SmartAddNode(\""..data.."\")") end
			elseif type(data)=="table" then
				if data[1]=="REGION" then
					Lib.NodeRegions:AddNewRegion(data)
				elseif data[1]=="MAP" then
					Lib.SpecialMapNodeData:AddMap(Lib.data.MapIDsByName[data.map],data.floor or 0,data.extra)
				else
					if DEV then aok,n1,n2 = pcall(__SmartAddArrayNodes,data,deftype,dontlink)
					else n1,n2=__SmartAddArrayNodes(data,deftype,dontlink)  aok=true  end
					if not aok then error("|cffff0000NODE ERROR:|r "..n1.." in SmartAddNode({\" "..tostr(data[1]).." \",\" "..tostr(data[2]).." \"...})") end
				end
			end

			if n1 and n2 and n1.bordermeta then
				-- get data from connection_templates if {template:xxxx} is valid
				local template = Lib.data.connection_templates[n1.bordermeta.template]
				if template then  for k,v in pairs(template) do  n1.bordermeta[k]=template[k] n2.bordermeta[k]=template[k] end  end
				if n1.bordermeta.title or n1.bordermeta.title_atob or n1.bordermeta.title_atob1 then
					n1.actiontitle=a_to_b
					n2.actiontitle=b_to_a
				end
			end

			if ZGV.db.profile.debug_display and n1 then
				tinsert(Lib.NODE_SOURCES,setmetatable({n1,n2},{__tostring=function() return "["..(n1.num)..(n2 and ","..n2.num or "").."] "..tostring(data):gsub("\n"," "):sub(1,100)..(#data>100 and "..." or "") end}))
				n1.source_DEV = tostring(data)
				if n2 then n2.source_DEV = tostring(data) end
			end

			return n1,n2
		end


		function Lib.greenborders:CanCross(id1,id2,loud)
			local si1=self[id1]
			if si1 and si1[id2] and si1[id2]>0 then return true end
			local si2=self[id2]
			if si2 and si2[id1] and si2[id1]>0 and not (si1 and si1[id2] and si1[id2]<0) then return true end -- other way only if not defined as oneway
		end

		--[[================ INITIALIZE NODES ===============]]--

		local function InitializeTaxis(dontlink)
			-- add in alphabetical order!
			for c,cont in ZGV.OrderedPairs(LibTaxi.taxipoints) do
				for z,zone in ZGV.OrderedPairs(cont) do
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							local map = Lib:GetMapByNameFloor(z,node.f)
							assert(map,"initialise taxis, bad zone/floor: "..z.." "..(node.f or ""))
							node.m = map
							node.type = "taxi"
							node.radius = TAXI_NODE_RADIUS
							-- other fields are already there, how convenient!
							AddNode(LibRover_Node:New(node),dontlink)
						end
					end
				end
			end
			-- DON'T clear unknown taxis. They're good for lookups by other addons.

			-- link taxis together
			for i,n1 in ipairs(ZGV.LibRover.nodes.taxi) do
				for j,n2 in ipairs(ZGV.LibRover.nodes.taxi) do
					local cost = n1.taxicosts and (n1.taxicosts[n2] or n1.taxicosts[n2.taxinodeID or n2.taxitag])
					if cost then
						n1:AddNeigh(n2,{mode="taxi",cost=(cost>0) and cost})  -- if cost is 0, then it's unknown, dammit... let's not put one in, and let LibRover approximate it on calculation.
						Lib.taxislinked[n1.num.."-"..n2.num]=true
						for i,np in ipairs(n1.n) do
							if np[1]==n2 and np[2].mode=="walk" then
								tremove(n1.n,i)
								break
							end
						end
					end
					--[[
						if (n1.taxioperator~="blackcat" and n2.taxioperator~="blackcat") or cost then
							-- maybe don't do ground linkage?
						end
					--]]
				end
			end
		end

		local function RemoveUselessWalkLinks()
			local nodes=Lib.nodes.all
			local nn=#nodes
			for i1=1,nn-1 do
				for i2=i1+1,nn do
					local n1=nodes[i1]
					local n2=nodes[i2]
					if n1.type=="taxi" and n2.type=="taxi" and Lib.taxislinked[i1.."-"..i2] then -- remove walk
						for i,np in ipairs(n1.n) do
							if np[1]==n2 and np[2].mode=="walk" then
								tremove(n1.n,i)
								break
							end
						end
					end
				end
			end
		end

		Lib.SpecialMapNodeData = {}
		function Lib.SpecialMapNodeData:AddMap(map,floor,data)
			local mapdata = self[map]
			if not mapdata then  mapdata={}  self[map]=mapdata  end
			mapdata[floor]=data
		end
		function Lib.SpecialMapNodeData:Assign(node)
			local mapdata = self[node.m]
			local floordata = mapdata and mapdata[node.f]
			if floordata then
				node.dark = node.dark or floordata.dark
				node.nofly = node.nofly or floordata.nofly
			end
		end

		Lib.MapFloorCountCache = {}
		




		local TOTALPROGRESS_DATA = {
			{"start",0}, --ms
			{"maxspeeds",5},
			{"taxis",96},
			{"inns",13},
			{"greenborders",0},
			{"walls",0},
			{"borders",24},
			{"transit",46},
			{"flooring",40},
			{"indoors",0},
			{"dungeonentrances",30},
			{"dungeonfloors",30},
			{"dolinkage",1260},
			{"portkeys",2400},
		} -- look at LibRover.startuptimes to see real values and maybe adjust these sometimes.
		local TOTALPROGRESSES = {}
		local TOTALPROGRESS_TIME=0
		for i,TP in ipairs(TOTALPROGRESS_DATA) do TOTALPROGRESS_TIME=TOTALPROGRESS_TIME+TP[2] end
		for i,TP in ipairs(TOTALPROGRESS_DATA) do TP[2]=TP[2]/TOTALPROGRESS_TIME end
		local base=0
		for i,TP in ipairs(TOTALPROGRESS_DATA) do
			TOTALPROGRESSES[TP[1]]={ base=base,size=TP[2] }
			base=base+TP[2]
		end
		Lib.TOTALPROGRESSES=TOTALPROGRESSES

		local STARTUP_INTENSITY=2  -- ms per tick; keep very low to avoid lag in 3.3.5a
		Lib.startuptimes={}
		local startup_modules_order={}
		local startup_modules_last
		Lib.init_progress=0

		Lib.StartupTimesLog = {}

		Lib.initframes = 0

		local function resetStartupTime()
			Lib.startup_now=debugprofilestop()
		end
		local function punchStartupTime(desc)
			Lib.startup_framecount=Lib.startup_framecount+1
			local t2b = debugprofilestop()
			local time = t2b-Lib.startup_now
			tinsert(Lib.StartupTimesLog,("%d ms - %s (%s frames, %d ms avg)"):format(time,desc,Lib.startup_framecount,time/Lib.startup_framecount))
			Lib.startup_now=t2b
			Lib.startup_framecount=0
		end
		local function pauseStartupTime()
			Lib.startup_pausetime = debugprofilestop()
		end
		local function resumeStartupTime()
			Lib.startup_now = Lib.startup_now + debugprofilestop() - Lib.startup_pausetime
		end
		local function maybeYield(module,progress,quiet)
			local y2=debugprofilestop()
			if y2-Lib.startup_yieldtimer<STARTUP_INTENSITY then return end --
			pauseStartupTime()
			Lib.startup_framecount=Lib.startup_framecount+1
			yield(module,progress,quiet)
			Lib.startup_yieldtimer=debugprofilestop()
			resumeStartupTime()
		end

		local function _StartupThread()
			local Lib=Lib
			Lib.startup_starttime = debugprofilestop()
			Lib.startup_now=Lib.startup_starttime
			--local Lib.startup_pausetime
			Lib.startup_framecount=0
						
			Lib.startup_yieldtimer=debugprofilestop()

			punchStartupTime("start")

			Mdist=ZGV.MapCoords.Mdist

			if Lib.IsRetail then
				Lib.frame:RegisterEvent("ACHIEVEMENT_EARNED")
				Lib.frame:RegisterEvent("RECEIVED_ACHIEVEMENT_LIST")
				Lib.frame:RegisterEvent("UNIT_EXITING_VEHICLE")
				Lib.frame:RegisterEvent("UNIT_ENTERING_VEHICLE")
			end

			Lib.frame:RegisterEvent("LEARNED_SPELL_IN_TAB")
			Lib.frame:RegisterEvent("UNIT_FLAGS")
			Lib.frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
			--Lib.frame:RegisterEvent("WORLD_MAP_UPDATE")
			Lib.frame:RegisterEvent("ZONE_CHANGED")
			Lib.frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
			Lib.frame:RegisterEvent("ZONE_CHANGED_INDOORS")
			Lib.frame:RegisterEvent("NEW_WMO_CHUNK")  -- subzone change, or entering a building
			Lib.frame:RegisterEvent("LOADING_SCREEN_DISABLED")
			Lib.frame:SetScript("OnUpdate", function(frame,elapsed) Lib:OnUpdate(elapsed) end)

			--punchStartupTime("sha2")
			--Lib:Sha2Data()

			--Lib.MapLevels[770]=84 -- 770 is a phase in Twlight Highlands and it returns 0 for GetCurrentMapLevelRange() this is a fix for that since it breaks the taxi system.
				-- off with her head! Just sanitize as above.

			punchStartupTime("sanitizing")  -- @~ 135ms

			-- work ZoneMeta:
			do
				local segment="zoneflags"
				local ZoneMeta=Lib.data.ZoneMeta
				-- convert Map Name/4 to mapid
				local zm_new = {}
				for k,v in pairs(ZoneMeta) do
					if type(k)=="string" and k:find("/",1,true) then
						local id=Lib:GetMapByNameFloor(k)
						if id then zm_new[id]=v else error("Wrong zone name in LibRover.data.ZoneMeta: "..k) end
					end
				end
				for k,v in pairs(zm_new) do ZoneMeta[k]=v end

				local CosmicMap = 946
				if Lib.IsClassic then CosmicMap = 947 end

				-- apply global settings
				if C_Map and C_Map.GetMapChildrenInfo and Enum and Enum.UIMapType then
					local children = C_Map.GetMapChildrenInfo(CosmicMap --[[=cosmic]],Enum.UIMapType.Micro,true)
					for i,map in ipairs(children) do
						ZoneMeta[map.mapID] = ZoneMeta[map.mapID] or {}
						for k,v in pairs(ZoneMeta["ALL_MICROS"]) do if ZoneMeta[map.mapID][k]==nil then ZoneMeta[map.mapID][k]=v end end
					end
				end
				-- make it respond with defaults to all queries
				local dummy={}
				setmetatable(ZoneMeta,{__index=function() return dummy end})
				punchStartupTime(segment)
				yield(segment,1)
			end
			resetStartupTime()
			
			if ZGV.db.char.BakedCache then
				LibRover.data.neighbourhood=ZGV.db.char.BakedCache
				print("LibRover: using baked cache from SV")
			end
			

			Lib:ProcessBakedNeighbourCache()  -- takes about 0.17s
			yield("process cache") Lib.startup_framecount=Lib.startup_framecount+1

			Lib:CheckMaxSpeeds()
			LibRover_Node:NeighbourhoodCache_Localize()

			punchStartupTime("maxspeeds")

			Lib.startup_framecount=Lib.startup_framecount+1
			yield("maxspeeds") Lib.startup_framecount=Lib.startup_framecount+1
			
			resetStartupTime()

			--Lib.startup_now = debugprofilestop()

			local use_cache=true
			if ZGV.db.profile.force_travel_cache then  Lib.data.version = Lib.data.version or {}  Lib.data.version.nodes_version=999  Lib.data.neighbourhood=Lib.data.neighbourhood or {}  Lib.data.neighbourhood.version=999  end
			if (not LibRover.data.version or not LibRover.data.version.nodes_version or not LibRover.data.neighbourhood or LibRover.data.neighbourhood.version ~= LibRover.data.version.nodes_version)
			or ZGV.db.profile.travel_do_full_linking_at_startup
			then
				Lib.STATUS_version_mismatch = (not LibRover.data.version or not LibRover.data.version.nodes_version or not LibRover.data.neighbourhood or LibRover.data.neighbourhood.version ~= LibRover.data.version.nodes_version)
				Lib.data.neighbourhood=nil
				use_cache=nil
				if ZGV.DEV then
					ZGV.Frame.Border:SetBackdropColor(1,0,0,1)
					ZGV.Frame.Border:SetBackdropBorderColor(1,0,0,1)
					ZGV:Print("|cffff0000LibRover says versions of data and cache don't match, or cache was disabled manually.\n|rIf you're working on map data, ignore this.")
				else
					ZGV:ErrorThrow("Error in travel system: map cache version mismatch. Cache is disabled. Please report this!")
				end
				
				LibRover_Node:NeighbourhoodCache_Kill()
			end  -- or don't use it after all.
			Lib.use_cache = use_cache


			do -- INITIALIZE SETUP
				for i,text in ipairs(Lib.data.basenodes.setup) do
					SmartAddNode(text,nil,use_cache)
				end
				Lib.data.basenodes.setup = nil
			end

			punchStartupTime("setup")


			repeat
				Lib.startup_framecount=Lib.startup_framecount+1
				yield("startup_suspended")
			until ZGV.db.profile.pathfinding ---------==============  H A L T   H E R E  ================-----

			
			Lib.initializing=true  -- OK, past this point we can admit it.


			do -- INITIALIZE ADVANCED
				local segment="advanced"
				for i,pair in ipairs(Lib.data.basenodes.advanced) do
					SmartAddNode(pair,nil,use_cache)
				end
				Lib.data.basenodes.advanced = nil

				punchStartupTime(segment)
				Lib.startup_framecount=Lib.startup_framecount+1
				yield(segment,1)
			end
			

			do -- INITIALIZE GREEN BORDERS
				local segment="green borders"
				-- special cases, these zones are inter-crossable easily.
				for pi,pair in ipairs(Lib.data.greenborders) do
					local z1 = Lib:GetMapByNameFloor(pair[1])
					local z2 = Lib:GetMapByNameFloor(pair[2])
					local oneway = pair[3]
					assert(z1,"initialise green borders, Bad zone "..pair[1])
					assert(z2,"initialise green borders, Bad zone "..pair[2])
					local iz1=Lib.greenborders[z1] or {}   iz1[z2]=1   Lib.greenborders[z1] = iz1
					local iz2=Lib.greenborders[z2] or {}   iz2[z1]=oneway and -1 or 1   Lib.greenborders[z2] = iz2
				end
				Lib.data.greenborders=nil

				-- TESTING... maximize speed in greenbordered zones

				punchStartupTime(segment)
				yield(segment,1)
			end

			resetStartupTime()

			do -- INITIALIZE WALLS
				local segment="walls"
				for zone,zdata in ZGV.OrderedPairs(Lib.data.walls or {}) do
					local zname,f = zone:match("^(.-)%s*/%s*(.-)$")
					local mapid,floor = Lib:GetMapByNameFloor(zname or zone,f)
					for i,points in ipairs(zdata) do
						if type(points)=="string" then points=(" "):split(points) end  -- parse "11,22 22,24 35,53 24,56 loop penalty=2"

						local loop=false
						if points[#points]=="loop" then loop=true tremove(points) end

						local penalty=tostring(points[#points]):match("penalty=(%d+)")
						if penalty then tremove(points) tremove(points) end

						if #points%2~=0 then error("Number of wall coords not even. "..tostring(zone).." "..tostring(i)) end
						if #points<4 then error("Too few points in wall. "..tostring(zone).." "..tostring(i)) end

						local wall={segments={},nodes={},penalty=penalty}
						for pn=1,#points,2 do
							local nextpn=pn+2   if nextpn>#points then if loop then nextpn=1 else nextpn=nil end end -- make a loop
							if nextpn then tinsert(wall.segments,{points[pn]/100,points[pn+1]/100,points[nextpn]/100,points[nextpn+1]/100}) end
							if penalty then
								wall.penalty=penalty  -- passable, but penalized
							else -- not passable, add to avoided areas
								
								--[[
								local node=AddNode(
									LibRover_Node:New({m=mapid,f=floor,x=points[pn],y=points[pn+1],type="wall"}),
									dontlink
								)
								tinsert(wall.nodes,node)
								--]] 
								-- ^ No, don't add corner nodes, they mess up penalties. Find some other way to ease passage - add bridges or separate corner nodes.
							end
						end
						Lib.walls[mapid]=Lib.walls[mapid] or {}
						tinsert(Lib.walls[mapid],wall)
					end
				end
				punchStartupTime(segment)
				yield(segment,1)
			end


			do -- INITIALIZE TAXIS
				local segment="taxis"

				-- add map IDs to taxis
				InitializeTaxis(use_cache)
				-- if available, try to glean known taxi routes. Otherwise assume they're not known.

				punchStartupTime(segment)
				yield(segment,1)
			end

			resetStartupTime()

			do -- INITIALIZE INNS
				local segment="inns"
				local count=0	for z,zone in pairs(Lib.data.basenodes.inns) do  count=count+1  end
				local progress=0
				for z,zone in ZGV.OrderedPairs(Lib.data.basenodes.inns) do
					--local c=Lib.ContinentsByID[z]
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							local map = Lib:GetMapByNameFloor(z,node.f)
							assert(map,"initialise inns, bad zone/floor: "..z.." "..(node.f or ""))

							node.m = map
							node.type = "inn"
							-- other fields are already there, how convenient!
							--node.title=node.name
							AddNode(LibRover_Node:New(node),use_cache)
						end
					end
					progress=progress+1
					maybeYield(segment,progress/count)
				end
				punchStartupTime(segment)
				yield(segment,1)
			end

			---- EVERYTHING ABOVE happens pretty fast. The init stages BELOW take a few seconds each.
			
			resetStartupTime()

			
			do -- INITIALIZE BORDERS
				local segment="borders"
				local count=0	for d,data in ipairs(Lib.data.basenodes.borders) do  count=count+1  end
				local progress=0
				for d,data in ipairs(Lib.data.basenodes.borders) do
					SmartAddNode(data,"border",use_cache)
					progress=progress+1
					if d%5==0 then maybeYield(segment,progress/count)  end
				end
				Lib.data.basenodes.borders = nil
				punchStartupTime(segment)  --@~230ms
				yield(segment,1)
			end
			

			do -- INITIALIZE TRANSIT
				local segment="transit"
				local count=#Lib.data.basenodes.transit
				for d,data in ipairs(Lib.data.basenodes.transit) do
					SmartAddNode(data,nil,use_cache)
					if d%2==0 then  maybeYield(segment,d/count)  end
				end
				Lib.data.basenodes.transit = nil
				--local t2b=debugprofilestop()  print("LibRover initialization: travel ",t2b-Lib.startup_now)  Lib.startup_now=t2b
				--@~320ms
				punchStartupTime(segment)  --@~320ms
				yield(segment,1)
			end


			do -- INITIALIZE EXPLICIT FLOORING
				local segment="flooring"
				local i=0
				local count=0  for id,zonedata in pairs(Lib.data.basenodes.FloorCrossings) do count=count+1 end
				local progress=0
				-- for id,zonedata in ZGV.OrderedPairs(Lib.data.basenodes.FloorCrossings) do --bfa alpha
				for id,zonedata in ZGV.OrderedPairs(Lib.data.basenodes.FloorCrossings) do
					progress=progress+1
					for n,nodedata in ipairs(zonedata) do
						local node1,node2=SmartAddNode(nodedata,nil,use_cache)
						if node1 then node1.flooring=true end
						if node2 then node2.flooring=true end
						i=i+1  if i%5==0 then  maybeYield(segment,progress/count)  end
					end
					
					Lib.data.basenodes.FloorCrossings[id]=true  -- don't delete the entry, it'll come in handy to check WHICH maps need explicit floor crossing.
					--i=i+1  if i%1==0 then yield(segment) end
				end
				punchStartupTime(segment)  --@~380ms
				yield(segment,1)
			end
			

			do -- INITIALIZE INDOOR AREAS
				local segment="indoors"
				local i=0
				local count=0  for id,data in pairs(Lib.data.basenodes.indoorzones) do count=count+1 end
				local progress=0
				-- for id,data in ZGV.OrderedPairs(Lib.data.basenodes.indoorzones) do -- bfa alpha
				for id,data in ZGV.OrderedPairs(Lib.data.basenodes.indoorzones) do
					progress=progress+1
					for n,node in ipairs(data) do
						SmartAddNode(node,nil,use_cache)
						i=i+1  if i%5==0 then  maybeYield(segment,progress/count)  end
					end
					Lib.data.basenodes.indoorzones[id]=nil
				end
				punchStartupTime(segment)  --@~380ms
				yield(segment,1)
			end

			
			do -- INITIALIZE DUNGEON ENTRANCES
				local segment="dungeonentrances"
				local count=#Lib.data.basenodes.DungeonEntrances
				for d,data in ipairs(Lib.data.basenodes.DungeonEntrances) do
					SmartAddNode(data,nil,use_cache)
					if d%2==0 then  maybeYield(segment,d/count)  end
				end
				Lib.data.basenodes.DungeonEntrances = nil
				--local t2b=debugprofilestop()  print("LibRover initialization: travel ",t2b-Lib.startup_now)  Lib.startup_now=t2b
				--@~320ms
				punchStartupTime(segment)  --@~320ms
				yield(segment,1)
			end


			do -- INITIALIZE DUNGEON FLOORS
				local segment="dungeonfloors"
				local i=0
				local count=0  for id,zonedata in pairs(Lib.data.basenodes.DungeonFloors) do count=count+1 end
				local progress=0
				for id,zonedata in ZGV.OrderedPairs(Lib.data.basenodes.DungeonFloors) do
					progress=progress+1
					for n,nodedata in ipairs(zonedata) do
						local node1,node2=SmartAddNode(nodedata,nil,use_cache)
						if node1 then node1.flooring=true end
						if node2 then node2.flooring=true end
						i=i+1  if i%5==0 then  maybeYield(segment,progress/count)  end
					end
					
					Lib.data.basenodes.FloorCrossings[id]=true  -- store it for floors-needed lookups
				end
				Lib.data.basenodes.DungeonFloors=nil
				
				punchStartupTime(segment)  --@~380ms
				yield(segment,1)
			end
			

			do -- Find dark nodes and list them for quick lookup
				for nid,node in ipairs(Lib.nodes.all) do
					if node.selfregion then
						local regionobj,err = Lib.NodeRegions:AddNewRegion{name="selfregion_"..nid,mapzone=node.m,centernode=node,radius=node.regionradius,nofly=1}
						if regionobj then node:AssignRegion(regionobj) end
					end
				end
			end
				

			
			
			resetStartupTime()

			punchStartupTime("dolinkage")  --@~380ms

			-- initialize linkage from pre-baked neighbourhood data.
			if use_cache then
				local i=0
				local allcount=#Lib.nodes.all

				local merged_neighcache = {}

				-- if cache is set to silent, do not display node count mismatch warning 
				local debug_baking="Opening baked cache: "

				Lib.SuppressWarnings = Lib.data.neighbourhood.silent 

				for worldflighttype,data in ZGV.OrderedPairs(Lib.data.neighbourhood) do  repeat
					if worldflighttype~="neither" then
						local world,mode = worldflighttype:match("(.*) (.*)")
						if world and ((Lib.speeds[world][2]>1) == (mode=="walk")) then
							-- trash it
							debug_baking = debug_baking .. " |cffff8888"..worldflighttype
							table.wipe(data)
							break --continue
						end
					end
					if type(data)~="table" then break end --continue
					-- merge it!
					debug_baking = debug_baking .. " |cff88ff88"..worldflighttype
					for ni,nd in pairs(data) do
						if merged_neighcache[ni] then print("LibRover: ERROR! Node "..ni.." present twice in cached data!") end
						merged_neighcache[ni]=nd
					end
				until true  end
				Lib:Debug(debug_baking)

				merged_neighcache.count = Lib.data.neighbourhood.count
				merged_neighcache.version = Lib.data.neighbourhood.version

				Lib.data.neighbourhood=merged_neighcache
				for node1_num,neighs in pairs(Lib.data.neighbourhood) do
					local node1=allnodes[node1_num]
					if node1 then
						for node2_num,extra in pairs(neighs) do
							local node2=allnodes[node2_num]
							if node2 and node1.border~=node2 then
								node1:DoLinkage(node2)
							end
						end
						i=i+1
						if i%20==0 then  maybeYield("dolinkage",i/allcount)  end
					end
				end
			end
			LibRover_Node:NeighbourhoodCache_Kill()
			
			--[[
			local t1=debugprofilestop()
			RemoveUselessWalkLinks()
			local t2=debugprofilestop()
			ZGV:Debug("&_WARN killing walks took "..t2-t1)
			--]]

			yield("dolinkage",1)
			resetStartupTime()
			
			do -- INITIALIZE PORTKEYS
				local count=#Lib.data.portkeys
				local progress=0
				for i,item in ipairs(Lib.data.portkeys) do repeat
					progress=progress+1
					if item.destA and item.destH then
						item.destination = UnitFactionGroup("player")=="Alliance" and item.destA or item.destH
					end
					-- make sure it's pointing to a node.
					if type(item.destination)=="string" and item.destination:sub(1,1)~="_" then
						-- make a node, or find one
						item.destination = SmartAddNode(item.destination)
						if not item.destination then item.ERROR="bad destination" break end -- Invalid location.
					end
					if type(item.destination)=="table" then -- all is correct
						item.destination.onlyhardwire_to = true
					end
					if item.spell==1459 then item.subtype="deathgate" end  -- unused?

					item.link=item.link or {}
					local link=item.link
					link.item=item.item
					link.spell=item.spell

					if i%5==0 then maybeYield("portkeys",progress/count)  end

				until true end
			end

			punchStartupTime("portkeys")  --@~
			Lib.startup_framecount=Lib.startup_framecount+1
			yield("portkeys",1)


			for i,namefunc in ipairs(Lib.startup_modules_funcs) do
				local name,func = unpack(namefunc)
				func(Lib)
				yield(name,1)
			end
			

			Lib:Debug("&lr_init Initialization total: |cffffeeaa%.3f",debugprofilestop()-Lib.startup_starttime)

			if Lib.use_cache and not Lib.SuppressWarnings and #Lib.nodes.all~=Lib.data.neighbourhood.count then
				local s = "WARNING: Travel system reports map node count mismatch. Faction "..myfac..", "..#Lib.nodes.all.." nodes present, " .. tostring(Lib.data.neighbourhood.count) .. " expected."
				Lib.STATUS_node_count_mismatch = true
				if ZGV.DEV then
					ZGV.Frame.Border:SetBackdropColor(1,0,0,1)
					ZGV.Frame.Border:SetBackdropBorderColor(1,0,0,1)
					s = s .. "\nDEVs: If you're working on map data, increase the version number in LibRover/data. Bake the cache when you're done.\n|cffffdd00Travel system is UNRELIABLE now! |cffff0000Do not commit this!!|r"
					ZGV:Print(s)
				else
					s = s .. "\nPlease file a bug report with the above message. You might want to disable the Travel System temporarily, as it's unstable now. We're sorry about that."
					ZGV:ErrorThrow(s)
				end
			end

			return true
		end


		function Lib:StopStartup()
			-- "forget" the init timer/frame
			self:Debug("Stopping startup cycle.")
			if self.startup_timer then
				self:CancelTimer(self.startup_timer)
				self.startup_timer = nil
			end
			if self.F and type(self.F) == "table" then
				self.F:Hide()
				self.F:SetScript("OnUpdate",nil)
			end
			if self.F == true then self.F = nil end
			self.startup_thread=nil
		end

		function Lib:ProcessBakedNeighbourCache()
			local d1=debugprofilestop()
			local cache = Lib.data.neighbourhood
			if not cache or not next(cache) or not cache[1] or type(cache[1])~="string" then return end
			-- so someone pasted in raw strings. No sweat.

			local out = {}
			local t1=debugprofilestop()
			for i,s in ipairs(cache) do
				--print("Processing baked:\n"..s:sub(1,50))
				local fout,err = loadstring("return {\n"..s.."\n}")  -- why the newlines? Because there could be just a comment inside.
				if not fout then error("Error in baked map cache: "..tostring(err).."\n"..s:sub(1,50)) end
				local ret=fout() -- compiled line as table
				--out["RAW"..i]=ret
				if type(ret)=="table" then
					for k,v in pairs(ret) do out[k]=v end  -- assimilate
				else
					error("Error in baked map cache: not a table returned by:\n"..s:sub(1,50))
				end
				if debugprofilestop()-t1>STARTUP_INTENSITY and coroutine.running() then coroutine.yield("process baked cache") t1=debugprofilestop() end
			end

			--print(("Rebaking took %.3fs"):format(debugprofilestop()-d1))

			Lib.data.neighbourhood = out

			--Spoo(nil,nil,Lib.data.neighbourhood)
		end

		function Lib:StartupStep(timeleft)
			if not ZGV.loading_screen_disabled then return end
			if not self.startup_thread then self:Debug("No startup thread.") self:StopStartup() return end

			-- 3.3.5a: Do exactly ONE coroutine resume per tick to prevent lag.
			-- The coroutine yields after ~STARTUP_INTENSITY ms of work.
			local t=debugprofilestop()
			local good,module,progress,quiet = resume(self.startup_thread)
			module=module or "?"
			if module=="startup_suspended" then return end
			t=debugprofilestop()-t
			self.startuptimes[module]=(self.startuptimes[module] or 0) + t
			self.startuptimes.total=(self.startuptimes.total or 0) + t
			Lib.initframes=Lib.initframes+1
			if TOTALPROGRESSES[module] then Lib.init_progress = TOTALPROGRESSES[module].base+TOTALPROGRESSES[module].size*(progress or 0) end

			if startup_modules_last~=module then tinsert(startup_modules_order,module) startup_modules_last=module end

			if not good then
				self.ready=nil
				local stack = debugstack(self.startup_thread)
				local errmsg = module
				self:StopStartup()
				ZGV:Print("ERROR initializing LibRover, check the Lua errors and report them, please.")
				error("\""..tostring(errmsg or "?").."\"\nin\n".. (stack or "(no stack)"))
			elseif module==true then
				-- Summarize initialization steps.
				if ZGV.db.profile.debug then self:ShowStartupSummary() end

				self:StopStartup()
				self:Debug("Startup complete! -------------")
				self.ready=true
				self.startup_thread=nil
				ZGV:Print("|cff00ff00LibRover:|r Node graph ready!")

				if self.find_after_load then
					self:Debug("Unwrapping an early set FindPath!")
					self:FindPath(unpack(self.find_after_load))
					self.find_after_load=nil
				else
					if ZGV.Pointer and ZGV.Pointer.PathFoundHandler then ZGV.Pointer.PathFoundHandler("failure") end
					if ZGV.ShowWaypoints then ZGV:ShowWaypoints() end
				end
			end
		end

		function Lib:DoStartup()
			ZGV = ZygorGuidesViewer  -- That's local. Trimming down taint. Taint once and get over it.

			-- Initialize map info tables (3.3.5a compat: bridges retail mapIDs with Astrolabe)
			if ZGV.MapCoords and ZGV.MapCoords.InitializeMapInfo then
				ZGV.MapCoords:InitializeMapInfo()
			end

			if ZGV.db and ZGV.db.profile and not ZGV.db.profile.pathfinding then return true end

			STARTUP_INTENSITY = ZGV.STARTUP_INTENSITY or STARTUP_INTENSITY
			--Lib:RecordVindicaar() --use realtime map check now
			LibRover_Node:InterfaceWithLib(Lib)
			LibRover_NodeSet:InterfaceWithLib(Lib)
			LibRover_NodeSetHeap:InterfaceWithLib(Lib)
			LibRover_Region:InterfaceWithLib(Lib)

			self:UpdateConfig(ZGV.db.profile)
			if self.F then return end
			if not ZGV.LIBROVER_MANAGED_STARTUP then  -- ZGV will need to call LibRover:StartupStep(timeleft) to start it up.
				-- 3.3.5a: use a timer instead of OnUpdate to avoid freezing the game.
				-- Runs every 0.1s with 5ms budget, giving the game 95% of each tick.
				self.F = true -- flag to prevent re-entry
				self.startup_timer = self:ScheduleRepeatingTimer(function() Lib:StartupStep() end, 0.1)
			else
				tinsert(ZGV.startups,{"Travel System",function()
					while (Lib.startup_thread) do
						local timeleft=yield(Lib.init_progress*100) or STARTUP_INTENSITY
						Lib:StartupStep(timeleft) -- will take up to <timeleft> time
					end
				end})
			end
			self.startup_thread = co_create(_StartupThread)
		end



		--[[====]]--



		-- uhhh, WHY!???
		--[[
		local function GetPlayerPos()
			local m,f,x,y = Astrolabe:GetCurrentPlayerPosition()
			if m==13 or m==14 or m==0 or m==689 or m==-1 or m==485 or m==466 or m==613 or m==862 then
				-- bad pos, better get the last
				m,f,x,y=unpack(Astrolabe.LastPlayerPosition)
			end
			return m,f,x,y
		end
		--]]


		 -- LEGACY, OBSOLETE, only used by the |fly lines
		 --[[
			function Lib:GetNearestTaxi()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local x,y,m,f = LibRover:GetPlayerPosition()
				if not x then return end
				for n,node in ipairs(Lib.nodes.taxi) do
					if node.m and node.x and node.y then
						local dist = Astrolabe:ComputeDistance(m,f,x,y,node.m,node.f,node.x,node.y)
						if dist and dist<mindist then mindist,minnode=dist,node end
					end
				end
				return minnode,mindist
			end

			function Lib:GetNearestTaxiInZone()
				--pmap = ZGV.GetCurrentMapID()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local x,y,m,f = LibRover:GetPlayerPosition()
				if not x then return end
				for n,node in ipairs(Lib.nodes.taxi) do
					if node.m and node.x and node.y and node.m == m then
						local dist = Astrolabe:ComputeDistance(m,f,x,y,node.m,node.f,node.x,node.y)
						if dist and dist<mindist then mindist,minnode=dist,node end
					end
				end
				return minnode,mindist
			end
		--]]

		--[[
			--- Parse the taxis table, changing map
			function Lib:ImportTaxis(taxiset)
				local knownTaxis = self.LibTaxi.master
				for name,data in pairs(taxiset) do
					if type(data)~="number" then
						if knownTaxis[name] then
							if type(data[1]=="table") then -- new style, proper
								local loc=data[1]
								if type(loc[1])=="string" then -- lo
								--TODO everything
								end
							end
							if type(data[3])=="table" then
								-- table = faction-specific data
								if UnitFactionGroup("player")=="Alliance" then
									data[3],data[4] = data[3][1],data[3][2]
								else
									data[3],data[4] = data[4][1],data[4][2]
								end
							end

							self:AddNode({l={data[1],data[2],data[3],data[4]},taxi={"taxi"..data[1]},id="taxi"..data[1],t="taxi",t2=name})
						end
					end
				end
			end

			function Lib:ImportBorders()
				for name,data in pairs(self.basenodes_borders) do
					self:AddNode({
						l={data[1][1],data[1][2],data[1][3],data[1][4]},
						to={{data[1][1],data[1][2]},{data[2][1],data[2][2]}},
						t="border",
						t2={data[3],data[4]},
						n={}
					})
				end
			end
		--]]

		local lam,laf,lax,lay, lbm,lbf,lbx,lby

		--]=]

		Lib.calculation_step_limit = 9999

		Lib.debug_time={}
		setmetatable(Lib.debug_time,{__index=function() return 0 end})

		--[[
		Notes on speeds: [yd/sec]
		run: 7
		mount: 7*1.6=11.2
		fmount: 7*2.2=14
		fly: 7*2.5=17.5
		ffly: 7*4.1=28.7

		taxi storm-iron: 3:36=216
		--]]


		local not_misc_item_modes={ -- used by SetupInitialQuickTravel to filter out travel items handled by options other than traveluseitems
			hearth=true,
			ghearth=true,
			dhearth=true,
			whistle=true
		}

		-- Adds instant travel modes to starting node
		function Lib:SetupInitialQuickTravel(startnode)
			local userlevel = UnitLevel("player")

			if (self.endnode.m~=self.cfgNodeOverride.m) or (self.endnode.x~=self.cfgNodeOverride.x) or (self.endnode.y~=self.cfgNodeOverride.y) then
				table.wipe(self.cfgNodeOverride)
				self.cfgNodeOverride.m = self.endnode.m
				self.cfgNodeOverride.x = self.endnode.x
				self.cfgNodeOverride.y = self.endnode.y
			end

			local bind=GetBindLocation()
			if bind=="The Vindicaar" then
				bind = bind..", "..Lib:GetVindicaarPosition()
			end

			local function FindBindLocation(bind)
				local found,legion
				if IsQuestFlaggedCompleted(44663) then legion=true end

				for i,node in ipairs(Lib.nodes.inn) do
					if not node.garrlevel and bind==TryBZL(node.name) and 
						(node.name~="Dalaran" or node.legion==legion) -- assume Dalaran is in Legion if player completed migration quest
						then
						Lib:Debug("|cff88ff44 Found hearth node: \"|cffffffff%s|r\" = |cffffee00%s" , bind, node:tostring())
						return node
					end
				end
				Lib:Debug("|cffff8844 No idea where player's hearthstone is bound to: |cffff8800%s",bind)
				ZGV.FAILEDHEARTH = bind
				if ZGV.DEV and not Lib.FAILEDHEARTHNAME==bind then geterrorhandler()("Travel has no idea where player's hearthstone is bound to: "..bind) Lib.FAILEDHEARTHNAME=bind end
				return nil
			end

			local function FindGarrisonBindLocation(silent)
				if not (C_Garrison and C_Garrison.GetGarrisonInfo and Enum and Enum.GarrisonType and Enum.GarrisonType.Type_6_0) then return end
				local garrlevel = C_Garrison.GetGarrisonInfo(Enum.GarrisonType.Type_6_0)
				if not garrlevel then return end
				local found
				for i,node in ipairs(Lib.nodes.inn) do
					if garrlevel==node.garrlevel then
						if not silent then Lib:Debug("|cff88ff44 Found garrison hearth node: |cffffee00%s" , node:tostring()) end
						return node
					end
				end
				Lib:Debug("|cffff8844 No idea where player's garrison hearthstone is bound to!")
				return nil
			end
			Lib.FindGarrisonBindLocation = FindGarrisonBindLocation

			local base=2
			local logbase=log(base)
			Lib.debug_portkeys={}
			local bindlocation = FindBindLocation(bind)
			for i,port in ipairs(Lib.data.portkeys) do repeat
				-- first let's get rid of bad conditions

				-- let's find a destination
				local dest,link=port.destination,port.link
				-- make sure it's pointing to a node.
				if dest=="_HEARTH" then  dest = bindlocation
				elseif dest=="_G_HEARTH" then  dest = FindGarrisonBindLocation()
				elseif dest=="_TAXIWHISTLE" then  dest = self.TaxiWhistlePredictor:PredictWhistle()
				end

				local coolstart,cooldur,coolavail,coolrem
				
				-- denial conditions
				local reject_reason = (function()
					if not dest then  return "no destination"  end ---------------- continue   -- destination NOT found!
					if port.spell and not IsSpellKnown(port.spell) then  return "spell unknown"  end
					if port.item then
						if port.toy and not PlayerHasToy(port.item) then return "no toy"  end -- toy not collected
						if not port.toy and (GetItemCount(port.item)==0 or not IsUsableItem(port.item)) then return "no item"  end
					end
					if (port.mode=="hearth" or port.mode=="ghearth" or port.mode=="dhearth") and not Lib:GetCFG("use_hearth") then  return "use_hearth off"  end  -- obviously
					--if port.mode=="ghearth" and not Lib:GetCFG("use_ghearth") then  return "use_ghearth off"  end  -- obviously
					--if port.mode=="dhearth" and not Lib:GetCFG("use_dhearth") then  return "use_dhearth off"  end  -- obviously
					if port.mode=="whistle" and not Lib:GetCFG("use_whistle") then  return "use_whistle off"  end  -- obviously
					if port.mode=="taxi" and not Lib:GetCFG("use_taxi") then  return "use_taxi off"  end  -- obviously
					if port.item and not (port.mode and not_misc_item_modes[port.mode]) and not Lib:GetCFG("use_item_teleports") then  return "use_item_teleports off"  end  -- don't use items other then hearthstones and whistle
					if port.is_astral and not Lib:GetCFG("use_astral_recall") then  return "use_astral_recall off"  end  -- captain?
					if port.maxlevel and userlevel>port.maxlevel then  return "overleveled"  end -- we can't use this item
					if port.cond and not port.cond() then  return "cond unmet"  end
					if port.item==140192 and (startnode.m==1101 or startnode.m==1101) then rejected=true return "no DHS in class halls" end  -- don't use Dalaran HS in Class Halls

					coolstart,cooldur,coolavail = self:GetCooldownWithoutGCD((port.spell and "spell") or (port.item and "item"),port.spell or port.item)
					if port.item and coolavail==0 then  return "on cd" end ----------------
				end)()

				if reject_reason then
					tinsert(Lib.debug_portkeys,{tostring=function() return ("%s #%d - |cffff0000%s|r")
						:format(port.item and GetItemInfo(port.item) or GetSpellInfo(port.spell) or "name not ready",port.item or port.spell, reject_reason or "?") end,
						data=port
					})
					break  --next item
				end

				coolrem = max(0,coolstart+cooldur-GetTime())

				--[[
				if port.is_astral then
					-- Lets make sure astral recall is going to the right place. If they have Glyph of Astral Fixation then they will port to Sw/Org based on faction. 
					-- Sw/Org copies are saved in destA and destH for ease.
					for i=1,NUM_GLYPH_SLOTS do
						local enabled, glyphType, glyphTooltipIndex, glyphSpell, icon = GetGlyphSocketInfo(i)

						if enabled  
						and glyphType == 2				-- Minor Glyph
						and glyphSpell == 148287 then	-- Glyph of Astral Fixation
							port.destination = enemyfac == "A" and port.destH or port.destA
							break
						end
					end
				end
				--]]

				
				--local rarity_min = 0
				--local rarity_max = base*(log(max(port.cooldown or 0,2))/logbase - 1)
				local raritycost = 0--Lerp(rarity_min,rarity_max,1-Lib:GetCFG("blow_item_cd_ratio")) --30m cd = 25 extra cost.

				local old_raritycost = (port.cooldown or 0)/72 --30m cd = 25 extra cost.

				local casttime=0
				if port.destination=="_HEARTH" then casttime = casttime + (((port.item or port.spell) * math.floor(GetTime()/600))%50)/50*0.1 end  -- random cost noise each 600 seconds

				if port.item then
					link.mode = port.mode or "useitem"
					link.toy = port.toy
					link.cost = casttime + coolrem + (port.cost or 99)
				elseif port.spell then
					link.mode = "spell"
					link.cost = casttime + coolrem + (port.cost or 0)
				end
				link.time = casttime

				if port.title then                                                                            
					link.title = port.title
					dest.title = port.title
				end

				tinsert(Lib.debug_portkeys,{tostring=function() return ("%s #%d - cost:|cffffff44%.1f|rs, cd:|cff88ff00%.1f|rs, item cd:|cff00ff88%.1f|rs, final cost:|cff88aaff%.1f|rs")
					:format(port.item and GetItemInfo(port.item) or GetSpellInfo(port.spell) or "name no ready",port.item or port.spell,
						port.cost or 0,coolrem,port.cooldown or 0,link.cost or -1) end,
					data=port}
					)

				link.spell=port.spell
				startnode:AddNeigh(dest,link)
			until true end

			if Lib.MoleMachineHandler.ready then
				local mole = Lib.MoleMachineHandler:GetMoleLocation()
				if mole then
					--[[
					local mole_node = Lib.nodes['mole'] and Lib.nodes['mole'][1]
					if mole_node then
						mole_node.m=mole.m
						mole_node.x=mole.x
						mole_node.y=mole.y
					else
						LibRover_Node:New{m=mole.m,x=mole.x,y=mole.y,type="mole",noskip=true}
						AddNode(mole_node,"dontlink")
						Lib.nodes['mole'] = Lib.nodes['mole'] or {}
						tinsert(Lib.nodes['mole'],mole_node)
					end
					]]
					local mole_node = LibRover_Node:New{m=mole.m,x=mole.x,y=mole.y,type="temp",noskip=true}
					AddNode(mole_node,"dontlink")
					startnode:AddNeigh(mole_node,{mode="walk"})

					local destinations = Lib.MoleMachineHandler:GetDestinations()
					local meta = {mode="mole",cost=10}
					for i,dest in ipairs(destinations) do
						mole_node:AddNeigh(dest,meta)
					end
				end
			end

			if Lib:GetCFG("use_mage_teleport") then
				--local is_mage = select(2,UnitClass("player"))=="MAGE"
				-- teleports allowed at all
				for i,node in ipairs(Lib.nodes.mageteleport) do
					if (IsSpellKnown(node.spell)) and (not node.cond_fun or node:cond_fun()) then
						local coolstart,cooldur,coolavail = self:GetCooldownWithoutGCD("spell",node.spell)
						local coolrem = max(0,coolstart+cooldur-GetTime())
						local cost = (tonumber(node.casttime) or COST_MAGE_TELEPORT) + coolrem

						local meta = {mode="teleport",cost=cost}
						local valid_spell=true
						--[[ let cond_fun handle this
						if (node.spell==50977 and tonumber(node.zone)==startnode.m and (startnode.f==1 or startnode.f==2)) or -- Deathgate only outside of acherus/1,2 brokenshores/1,2
						   (node.spell==126892 and tonumber(node.zone)==startnode.m) then -- zen pilgrimage only outside new classhall
							valid_spell = false
						end
						--]]
						--ax,ay,am,af = LibRover:GetPlayerPosition()
						if valid_spell then startnode:AddNeigh(node,meta) end
						--if node.spell==50977 then node.subtype="deathgate" end -- moved to node definition
					elseif Lib:GetCFG("use_last_resort") then
						if node.faction and (node.faction=="B" or node.faction~=enemyfac) then
							startnode:AddNeigh(node,{mode="courtesy",cost=20000}) --Crazy cost to not use it unless this is only way to get to this continent.
							node.subtype="courtesymage"
						end
					end
				end
			end

		end


		local start_is_new,end_is_new

		-- PUBLIC
		function Lib:ClearQueue()
			wipe(Lib.delayeddata)
			self.thread=nil --terminate all calculations NOW.
			self.calculating=nil
		end

		-- PUBLIC
		function Lib:QueueFindPath(am,ax,ay,bm,bx,by, handler, extradata, force_new, quiet)
			if self.FAKE_STARTING_POINT_SETUP then  -- don't queue it! store it as fake start.
				self.FAKE_STARTING_POINT = {m=bm,x=bx,y=by, extradata=extradata}
				self.FAKE_STARTING_POINT_SETUP = false
				ZGV:Print(("Fake starting point set at %s %d,%d."):format(ZGV.GetMapNameByID(bm),bx*100,by*100))
				return
			end
			self:Debug("Adding new task for findpath")
			Lib.delayeddata[#Lib.delayeddata+1] = {am=am,ax=ax,ay=ay,bm=bm,bx=bx,by=by, handler=handler, extradata=extradata, force_new=force_new, quiet=quiet}

			if not self.trytofindpathexecute and not self.delayfindpath_timer then
				self:Debug("Timer inactive, starting")
				self.delayfindpath_timer = self:ScheduleRepeatingTimer("DelayFindPath", 0.01)
			end
		end

		function Lib:DelayFindPath()
			if #Lib.delayeddata == 0 then
				self:Debug("No more jobs in queue, stopping timer")
				self:CancelTimer(self.delayfindpath_timer)
				self.delayfindpath_timer = nil
				--self:Abort()
				return
			end
			
			if not Lib.calculating then
				local nextjob = table.remove(Lib.delayeddata, 1)
				self:Debug("Starting next job from queue:")
				self:FindPath(nextjob.am,nextjob.ax,nextjob.ay,nextjob.bm,nextjob.bx,nextjob.by, nextjob.handler, nextjob.extradata, nextjob.force_new, nextjob.quiet)
			end
		end
		
		-- PUBLIC
		function Lib:UpdateNow(quiet,speed)
			if not self.updating then return end
			self:Debug("Updating route NOW. Quiet=%s, speed=%.1f.",tostring(quiet),speed or ZGV.db.profile.pathfinding_speed)
			self.force_update_now = true
			self.calculating=false -- yes, false; need to restart, so stop calculating, start updating, wait for FindPath call.
			self.quiet=quiet
			self.pathfinding_speed_override = speed  -- or nil :)
			--self.updatepaused=nil
		end

		function Lib:IsDestinationImpossible(mymap,destmap)
			destmap = destmap or lbm
			local fac = UnitFactionGroup("player")

			if mymap==destmap then return false,"SAME_MAP","same map" end

			local destcont = ZGV.GetMapContinent(destmap)
			
			local level = ZGV:GetPlayerPreciseLevel()
			local expansion = GetExpansionLevel()
			local EXPANSION_SL = 8


			--TODO add worgen and Golbin areas.
			--Vashji and Deepholm

			local cont = ZGV.GetMapContinent(destmap)

			local canfly = IsSpellKnown(34090) or IsSpellKnown(34091) or IsSpellKnown(90265) -- expert, artisan or master riding skill
			
			if cont==101 and level<10  then
				--Outland
				local title
				return true,"OUTLAND_LOCKED","You can't get to Outland until you're level 10."

			elseif cont==113 and level<10  then
				return true,"NORTHREND_LOCKED","You can't get to Northrend until you're level 10."

			elseif cont==424 and level<10 
			and not (IsQuestFlaggedCompleted(31736) or IsQuestFlaggedCompleted(31767)) 
			and not (ZGV.CurrentGuide and ZGV.CurrentGuide.monkquest and select(2,UnitClass("player"))=="MONK") then
			--Pandaria is level locked, but low level monks can get to peak during monk daily quests
				local title
				local questdata = ZGV.Localizers:GetQuestData(fac=="Alliance" and 29548 or 29690)
				title = questdata and questdata.title
				return true,"PANDARIA_LOCKED","You can't get to Pandaria until you're level 10 and have completed the " .. (title and "quest \""..title.."\"." or "initial quest.")

			elseif false and destmap==808 and fac~="Neutral" then -- Can't get to Panda starter area
				return true,"PANDA_STARTER","You can't get to the Panda Starter Area."

			elseif destmap==198 and not canfly then --Mount Hyjal
				return true,"HYJAL_NEEDS_FLIGHT","You need to be able to fly to go to Hyjal."

			elseif cont==572 and level<10  then
				return true,"DRAENOR_LOCKED","You can't get to Draenor until you're level 10."

			elseif cont==619 and level<10  then
				return true,"LEGION_LOCKED","You can't get to Broken Isles until you're level 10."

			elseif cont==905 and level<45  then
				return true,"ARGUS_LOCKED","You can't get to Argus until you're level 10."

			elseif cont==876 and level<10  then
				return true,"KULTIRAS_LOCKED","You can't get to Kul Tiras until you're level 10."

			elseif cont==875 and level<10  then
				return true,"ZANDALAR_LOCKED","You can't get to Zandalar until you're level 10."

			elseif destcont==1550 and expansion<EXPANSION_SL  then
				return true,"SHADOWLANDS_LOCKED","You need to purchase the Shadowlands expansion to access that area."

			elseif destmap==1961 and not IsQuestFlaggedCompleted(63665) then
				local title
				local questdata = ZGV.Localizers:GetQuestData(63665)
				title = questdata and questdata.title
				return true,"KORTHIA_LOCKED","You can't get to Korthia until have completed the " .. (title and "quest \""..title.."\"." or "initial quest.")

			elseif (destmap==1670 or destmap==1671) and not IsQuestFlaggedCompleted(60151) then
				local title
				local questdata = ZGV.Localizers:GetQuestData(60151)
				title = questdata and questdata.title
				return true,"ORIBOS_LOCKED","You can't get to Oribos until you have completed the " .. (title and "quest \""..title.."\"." or "initial quest.")


			-- TODO EXPANSION check level requirements

			-- TODO EXPANSION Update with new maps
			elseif false and (-- Scenario maps, reachable only through LFG
				destmap==882 --Unga Ingoo 
			 or destmap==899 --Arena of Annihilation --map is named Proving Grounds
			 or destmap==878 --A Brewing Storm
			 or destmap==884 --Brewmoon Festival
			 or destmap==900 --Crypt of Forgotten Kings
			 or destmap==9999 --Greenstone Village --Don't know these map ids yet.
			 or destmap==906 --Theramore's Fall
			)
			 then
				local title=destmap~=899 and ZGV.GetMapNameByID(destmap) or "Arena of Annilhilation" --TODO Localize Area of Annilhilation; GMNBID(899)=="Proving Grounds"...
				return true,"MAP_IS_SCENARIO","You need to use the Looking For Group tool\n to get to the scenario "..title
			end

			--TODO make rainbow bridge for Dungeons. Doesn't make sense to check for every dungeon location
			--but if there is not path to it, we can always say "Queue for it in Dungeon Finder"
			--This will not be done here, but is related.

			--TODO make sure travel system doesn't try to calculate a route.
			--TODO set the text of the arrow to arrowtext
			--TODO Hide waypoint/ants? Set waypoint to end point?

			return false
		end

		-- PUBLIC
		-- CAN be called while the previous one runs. It'll just abandon the old thread.
		function Lib:FindPath(am,ax,ay,bm,bx,by, handler, extradata, force_new, quiet)
			if not ZGV.db.profile.pathfinding then return false end

			--if ax>=1 then ax,ay=ax/100,ay/100 end
			--if bx>=1 then bx,by=bx/100,by/100 end

			self.quiet = quiet
			self.success_endnode = nil
			self.low_priority = false

			self.updating = true

			self.border_opti_gain = 0

			--if UnitOnTaxi("player") then

			--[[
			if self.delayed_by_taxi then
				Lib:Debug("&LibRover path delayed by taxi. Will resume upon landing.")
				--self.delayed_by_taxi = true
				self.calculating=false
				return
			end
			--]]

			if self.FAKE_STARTING_POINT then
				local FSP=self.FAKE_STARTING_POINT
				ax,ay,am = FSP.x,FSP.y,FSP.m
			end
			extradata = extradata or {}

			self.start_is_player=extradata.player
			if am==0 then
				--local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor
				ax,ay,am = LibRover:GetPlayerPosition()

				if not am or not ax or am<=0 then
					-- WAIT! It could be the goddamn Deeprun Tram!
					self:Debug("|cff00ff88FindPath|r: current location unknown! will retry?")
					ax,ay=0,0
				end
				self.start_is_player=true
				extradata.player=true
				--[[
				local x,y = Astrolabe:TranslateWorldMapPosition( am, af, ax, ay, m, f )
				if x and y and x>0 and y>0 and x<1 and y<1 then
					am,af,ax,ay=m,f,x,y
					--Lib:Debug("We're actually in %s at %.1f %.1f", ZGV.GetMapNameByID(lam) or lam,lax*100,lay*100)
				end
				--]]
			end

			--af = af and ZGV:SanitizeMapFloor(am,af,"is_current") -- floors are already converted to maps and sane
			--bf = bf and ZGV:SanitizeMapFloor(bm,bf)


			self:Debug("&_PUSH |cff00ff88FindPath|r:  |cffaaff88%s|r##%d |cffffffff%.1f|r,|cffffffff%.1f|r --> |cffaaff88%s|r##%d |cffffffff%.1f|r,|cffffffff%.1f|r",
				am and ZGV.GetMapNameByID(am) or am or "nil",am or 0,ax and ax*100 or -1,ay and ay*100 or -1,
				bm and ZGV.GetMapNameByID(bm) or bm or "nil",bm or 0,bx and bx*100 or -1,by and by*100 or -1)


			if not am or not bm or am<=0 or bm<=0 or not ax or not ay or (ax==0 and ay==0) then  
				self:Debug("&_POP |cff00ff88FindPath|r |cffff0000failed|r: no start or end location (%s %s,%s to %s %s,%s). Force update? %s",am,ax,ay,bm,bx,by,self.force_update_counter)
				self:ReportFail(GetPlayerFacing() and "Current location unknown.")
				extradata = extradata or {}
				extradata.retries = (extradata.retries or self.FINDPATH_MAX_RETRIES) - 1
				if extradata.retries>0 then
					self:Debug("Scheduling retry: %d",extradata.retries)
					self:QueueFindPath(0,0,0,bm,bx,by, handler, extradata, force_new, quiet)
				else
					self:Debug("Too many retries in path data. Sorry.")
				end
				return
			end

			--if lam==13 or lam==14 or lam==0 or lam==689 or lam==-1 or lam==485 or lam==466 then
				-- Guess which zone we're in. SILLY.

			
			self.extradata = extradata
			self.PathFoundHandler = handler


			wipe(Lib.debug_time)
			Lib.debug_count_compares=0
			Lib.debug_frames_total=0
			opened_count=0
			closed_count=0

			
			local is_impossible,code,reason = self:IsDestinationImpossible(am,bm)
			if is_impossible then
				self:Debug("&_POP |cff00ff88FindPath|r failed, destination impossible: %s, %s.",tostring(code),tostring(reason or ""))
				Lib:ReportFail(reason)
				return
			end


			if not self.ready then
				self.find_after_load={am,ax,ay,bm,bx,by,handler,extradata,force_new}
				self:Debug("&_POP |cff00ff88FindPath|r: Saving for after startup")
				return handler and handler("PROGRESS")
			end

			self:CheckMaxSpeeds()

			--assert(lam,"missing starting map")
			--assert(laf,"missing starting floor")
			--assert(lax and lay,"missing starting coord")
			--assert(lbm,"missing ending map")
			--assert(lbf,"missing ending floor")
			--assert(lbx and lby,"missing ending coord")



			-- Determine if we can't, perhaps, just recalc one end of the data.
			--start_is_new = (am~=lam or af~=laf or ax~=lax or ay~=lay) or force_new
			--end_is_new = (bm~=lbm or bf~=lbf or bx~=lbx or by~=lby) or force_new

			start_is_new=true -- TEMPORARY. It's fast anyway.
			end_is_new=true

			if start_is_new then self.can_optimize_for_end=false end
			if not self.can_optimize_for_end then start_is_new=true end
			if not start_is_new and not end_is_new then  self:UpdateNow()  self:Debug("&_POP |cff00ff88FindPath|r: UpdateNow")  return end

			lam,lax,lay,lbm,lbx,lby=am,ax,ay,bm,bx,by

			self.caller_stack = debugstack(2)

			self.force_update_counter=0


			lastupdate=0

			self.calculating = true
			self.calculation_step = 0

			closed_count = 0

			local hardmax = self.quiet and hardmaxidle or hardmaxfirst

			-- Start new calculation thread basing on data set above.
			-- If there was a previous calculation running... Oh well, orphan it.
			self.thread = co_create(self.StepForever_Threaded)

			self:Debug("&_POP |cff00ff88FindPath|r started .thread, good luck. FindPath ends.")

			-- NOW, EVERYTHING IS SET UP. Initialization and calculation kicks off in frame updates.
		end

		
		
		-- These fields get REMOVED from the nodes when clearing.
		local temp_fields_i = {"cost","time","mycost","mytime","speed","status","parentlink","parent","prev","next","text","maplabel","toend","taxiFinal","taxiDestination","link","a_b","a_b__c_d","costdesc","wayp_override_icon","wayp_override_text","border_optimization","changed_modes"}

		-- private
		function Lib:InitializePath__RemoveStartEnd_Threaded()
			local all=Lib.nodes.all
			--if start_is_new then
				wipe(self.nodes['start'])
				for ni=#all,1,-1 do if all[ni].type=="start" then tremove(all,ni) break end end  -- there could be only one START
			--end
			yield("PENDING")
			--if end_is_new then
				wipe(self.nodes['end'])
				for ni=#all,1,-1 do local n=all[ni] if n.type=="end" then tremove(all,ni) elseif n.type=="misc" then break end end  -- there could be many ENDs
			--end
			yield("PENDING")
			if #self.nodes.temp>0 then
				wipe(self.nodes.temp)
				for ni=#all,1,-1 do local n=all[ni] if n.type=="temp" then tremove(all,ni) elseif n.type=="misc" then break end end  -- there could be many ENDs
			end
			yield("PENDING")
		end

		function Lib:InitializePath_Threaded() --called in as part of StepForever_Threaded only.

			-- CLEAR OLD START/END

			self:Debug("|cff00dd77InitializePath|r towards |cffddddee%d/%d %.02f,%.02f",lbm,lbf,lbx*100,lby*100)

			self.initializing_path = true

			local t0=debugprofilestop()
			local t,t2


			self:InitializePath__RemoveStartEnd_Threaded()
			local all=Lib.nodes.all

			t=debugprofilestop()-t0
			self:Debug("&lr_initpath_v cleared old nodes, %d left (@%.1fms dirty)",#all,t)


			-- make neighbours forget our linkage
			for ni,node in ipairs(all) do
				node:RemoveNeighType("temp",start_is_new and "start",end_is_new and "end")  -- three for the price of one!
			end

			t=debugprofilestop()-t0
			self:Debug("&lr_initpath_v cleared linkage (@%.1fms dirty)",t)

			yield("PENDING")

			-- INSTALL NEW START/END NODES

			if end_is_new then
				self.endnode = LibRover_Node:New{m=lbm,f=lbf,x=lbx,y=lby,type="end",title=Lib.extradata and Lib.extradata.title,
				zone=Lib.extradata and Lib.extradata.waypoint_zone,realzone=Lib.extradata and Lib.extradata.waypoint_realzone,subzone=Lib.extradata and Lib.extradata.waypoint_subzone,minizone=Lib.extradata and Lib.extradata.waypoint_minizone,
				region=Lib.extradata and Lib.extradata.waypoint_region,
				indoors=Lib.extradata and not not Lib.extradata.waypoint_indoors,
				waypoint=Lib.extradata and Lib.extradata.waypoint
				}
				AddNode(self.endnode)

				yield("PENDING")

				if Lib:GetCFG("use_last_resort") then
					self.copyendnode = LibRover_Node:New{m=lbm,f=lbf,x=lbx,y=lby,type="temp",warlocksummon=true,onlyhardwire_to=true}
					AddNode(self.copyendnode)
					self:Debug("&lr_initpath_v Initialized end node #%d with copy #%d %s",self.endnode.num,self.copyendnode.num,tostring(self.copyendnode))
				else
					self:Debug("&lr_initpath_v Initialized end node #%d",self.endnode.num)
				end

			end


			yield("PENDING")

			local timeoff=0
			if self.extradata and self.extradata.multiple_ends then
				-- this TRANSFORMS the ends into nodes! Supply plain data, don't get recycled.
				self:Debug("Multiple endpoints detected: %d, called by %s",#self.extradata.multiple_ends+1,self.caller_stack or "(no stack)")
				local limit=10000
				local t1=debugprofilestop()
				for i,data in ipairs(self.extradata.multiple_ends) do
					local node = LibRover_Node:New(data)
					node.type="end"
					local t01=debugprofilestop()
					AddNode(node) -- don't link endpoints, it's end-pointless
					self:Debug("end node %d added in %.3fms",i,debugprofilestop()-t01)
					limit=limit-1
					if limit<0 then break end

					local t2=debugprofilestop()
					if t2-t1>10 then local to1=debugprofilestop() yield("PENDING")  timeoff=timeoff+debugprofilestop()-to1  t1=t2 end
				end
				self:Debug("Added %d extra endpoint nodes, #%d-#%d", #self.extradata.multiple_ends, (#Lib.nodes.all - #self.extradata.multiple_ends + 1), #Lib.nodes.all)
				if limit<0 then self:Debug("CRAP. multiple_ends limit reached! Refusing to find out of so many.") end
			end

			t=debugprofilestop()-t0
			self:Debug("&lr_initpath_v InitializePath: inited start/end nodes (@%.1fms dirty, %.1fms clean)",t,t-timeoff)

			yield("PENDING")

			if start_is_new or self.force_next then
				self.startnode = LibRover_Node:New{m=lam,f=laf,x=lax,y=lay,type="start",player=self.start_is_player}
				-- guess region by subzonetext, if any region matches that.
				if self.startnode.player then
					self.startnode.zone=BZR[GetZoneText()] or GetZoneText() or ""
					self.startnode.realzone=BZR[GetRealZoneText()] or GetRealZoneText() or ""
					self.startnode.subzone=BZR[GetSubZoneText()] or GetSubZoneText() or ""
					self.startnode.minizone=BZR[GetMinimapZoneText()] or GetMinimapZoneText() or ""
					self.startnode.indoors=IsIndoors()
					self.startnode.swimming=IsSwimming()
					self.startnode.submerged=IsSubmerged()
				end

				Lib:SetupInitialQuickTravel(self.startnode)

				if Lib:GetCFG("use_last_resort") then
					for i,node in ipairs(Lib.nodes.temp) do
						if node.warlocksummon then
							self.startnode:AddNeigh(node,{mode="courtesy",cost=30000}) --Don't use this unless there is no other possible path.
							node.subtype="courtesywarlock"
						end
					end
				end

				-- This allows for forcing the next node to be visited - like, flying on a taxi enforces the destination point.
				if self.force_next then
					local meta = {mode="taxi",cost=COST_FORCED,time=0}
					if self.force_next_manualmeta then meta=self.force_next_manualmeta end
					self.startnode:AddNeigh(self.force_next,meta)  -- this should guarantee that this one will be most promising, yes?
					if self.force_next.tostring then
						Lib:Debug("|cffaaaa00Forced next node:|r %s",self.force_next:tostring() )
					else
						Lib:Debug("Forced next node... WHAT!? How is that a node!?  Storing in global FORCENODE, check this!!")
						Lib.DEBUG_FORCENODE = self.force_next
					end
					--self.delayed_by_taxi=true
				end

				AddNode(self.startnode)

				self:Debug("&lr_initpath_v Initialized start node #%d", self.startnode.num)

				if self.debug_forcepath then  -- put proper "indices" into the forcepath data: 0 for start, leave 1..n alone, set all endpoints to n+1.
					self.debug_forcepath[self.startnode]=0
					print(("|cffeeddaaLibRover DebugPath:|r setting node 0 [start]: %s"):format(self.startnode:tostring()))
					for ni,nend in ipairs(self.nodes["end"]) do
						self.debug_forcepath[nend]=self.debug_forcepath.n+1
						print(("|cffeeddaaLibRover DebugPath:|r setting node %d [end %d]: %s"):format(self.debug_forcepath.n+1,ni,nend:tostring()))
					end
				end
			end

			yield("PENDING")

			-- clear calculation garbage
			-- moved to after all nodes are set up, because some nodes (multiple endpoints!) used to persist through the endnode wipe, and retained their status/cost from the previous cycle.
			--[[
			if start_is_new and end_is_new then
				for ni,node in ipairs(Lib.nodes.all) do
					for field,val in pairs(node) do
						if temp_fields[field] then node[field]=nil end
					end
					count=count+1
				end
			else
			if start_is_new then
				for ni,node in ipairs(Lib.nodes.all) do
					for field,val in pairs(node) do
						if temp_fields[field] then node[field]=nil end
					end
				end
			elseif end_is_new then
				-- smart stuff: clear just the endpoint to speed up calculations
			end
			--]]
			-- start_is_new and end_is_new are both hardcoded to true anyway...
			local count=0
			for ni,node in ipairs(Lib.nodes.all) do
				for i,field in ipairs(temp_fields_i) do
					node[field]=nil
				end
				count=count+1
				if count%500 then yield("PENDING") end
			end
			table.wipe(tempstore)
			yield("PENDING")

			t=debugprofilestop()-t0
			self:Debug("&lr_initpath_v InitializePath: cleared temp fields (@%.1fms)",t)


			self.startnode.cost=0
			self.startnode.time=0


			--[[
			if not self.importedTaxis then
				self:RebuildNodes()
				self.importedTaxis = true
			end
			--]]


			------ SET UP OPEN NODES

			if start_is_new and end_is_new then
				self.opennodes:Clear()
				self.startnode.status="open"
				self.opennodes:Add(self.startnode)
			--[[
				--##start_end_optimization: off
				elseif start_is_new then
					-- full clear, until we get backwards calc running
					self.opennodes:Clear()
					self.opennodes:Add(self.startnode)
				elseif end_is_new then
					-- clear just around ....?
					self.opennodes:Clear()
					for ni,node in ipairs(Lib.nodes.all) do
						if node.status=="canopen" then -- was recently re-neighboured to end
							self.opennodes:Add(node)
						end
					end
					self:Debug("End optimization: starting with ".. self.opennodes:Length().." open nodes!")
			--]]
			end

			t=debugprofilestop()-t0
			self:Debug("&lr_initpath_v InitializePath: opened start nodes (@%.1fms)",t)

			if Lib.debug_cnodes then ZGV.Pointer:ClearWaypoints("manual") end

			self.initializing_path = false

			self:Debug("|cff00dd77InitializePath|r done (@%.1fms)",t)
		end


		local function assertfmt(test,msg,...)
			if not test then error(msg:format(...)) end
		end

		-- THIS gets called in the Lib.thread coroutine.
		function Lib:StepForever_Threaded()
			local code,ret = "PENDING",nil
			local safe=0

			Lib:InitializePath_Threaded() -- yields on its own.
			yield("PENDING")

			--self:Debug("&lr_calc StepForever: initialized, proceeding")

			local _,timeslot

			repeat
				code,ret = self:StepPath()
				if not code then code="ERROR" end
				--print("Step: ",code, "do we have success?",not not self.success_endnode)
				if code=="SUCCESS" then
					--assert(ret,"Success with no end? wtf?")
					--assert(ret.type=="end","Success with type "..ret.type.."? wtf?")
					if not self.success_endnode then
						self.success_endnode=ret
						_,timeslot = yield(code)
					else
						-- keep quiet. We know the result already, this happening again means we found ANOTHER end node. Ignore it, we only care for the first.
						code="PENDING"
					end
					self.low_priority = true -- to finish up
				elseif code=="END" then
					-- ?
				else
					_,timeslot = yield(code)
				end

				-- timeslot unused... yet.

				safe=safe+1  if (safe>10000) then print "FAAAAIL!" return end
			until code=="END" or code=="ERROR" -- it can also be PENDING, SUCCESS or TIMEOUT.
			self.pathfinding_speed_override = nil
			return code,ret
		end

		Lib.PlayerFlags = {}
		setmetatable(Lib.PlayerFlags,{__index=function(t,i) return rawget(t,i) or "" end})

		--local dists_to_portals = {}
		--Lib.dists_to_portals = dists_to_portals

		local tmp_neighs = {}
		local tmp_modefly = {mode="fly"}

		Lib.debug_nodes = {}

		function Lib:StepPath()  -- THE WORKHORSE.
			local _
			self.calculation_step = self.calculation_step + 1

			--self:Debug("Starting StepPath step %d, %d open nodes",self.calculation_step,self.opennodes:Length())

			 local debug_time_cheapest_1 = debugprofilestop()

			local current = self.opennodes:RemoveCheapest()
			if not current then  return "END"  end  --END, fail if no success was reported before

			 Lib.debug_time.cheapest = Lib.debug_time.cheapest + debugprofilestop() - debug_time_cheapest_1


			local TMP_PLAYERLEVEL = UnitLevel("player")

			local _ZoneMeta = Lib.data.ZoneMeta


			 local debug_time_initial_1 = debugprofilestop()

			current.status="closed"
			closed_count=closed_count+1

			if current.type=="end" then  return "SUCCESS",current  end


			-- fix current node's map, if phasing
			--current.m = ZGV.Pointer:SanitizePhase(current.m)
			--current.f = ZGV:SanitizeMapFloor(current.m,current.f)


			local speeds = self.maxspeedinzone[current.m]
			local maxspeed,runspeed,flyspeed = unpack(speeds)


			-- process neighbours:

			-- clone neigh table

			--[[
			local neighs = tmp_neighs

			if Lib.cache_neighs then
				neighs=current.neighs
				if not neighs then neighs={} current.neighs=neighs end
			else
				wipe(neighs)
			end
			--]]

			--[[
			if #neighs==0 then
				-- add all our known neighs, unless they're borders.
				-- border nodes are useless in flight, so ignore them outright.
				for no,nm in pairs(current.n) do
					if not (flyspeed and no.type=="border")  -- if not ignoring borders in flight...
					and not (no.type=="taxi" and nm.mode=="taxi" and not no.known)  -- Disallow ARRIVAL at unknown taxis. Depart from unknown freely - they'll just get learned, big deal...
					then
						tinsert(neighs,{no,nm})
					end

					-- fix neighbouring node's map, if phasing
					--no.m = ZGV.Pointer:SanitizePhase(no.m)
					--no.f = ZGV:SanitizeMapFloor(no.m,no.f)

					if no.testflags then
						-- check flags as follows:  "flag1 == (val1 OR val2 OR val3)  AND  flag2 == (val4 OR val5 OR val6)"
						local allgood=true
						for flag,test in pairs(no.testflags) do
							local thisgood=false

							local function split(str,sep)
								local fields = {}
								str = str..sep
								local tinsert=tinsert
								str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
								return fields
							end

							if type(test)=="string" then
								test=split(test,",")
								no.testflags[flag]=test
							end
							--if type(test)~="table" then test={test} end
							for i,testval in ipairs(test) do
								if Lib.PlayerFlags[flag]==testval then
									thisgood=true
									break
								end
							end
							if not thisgood then allgood=false end
						end
						no.flagtestresult = allgood
					end

					-- FLAGS. Set them according to any nearby nodes.
					if current==Lib.startnode and (no.flagtestresult or not no.testflags or no.steponflag) and no.setflags and current.m==no.m and current.f==no.f and getdist(current,no)<=(no.radius or 20) then
						Lib:Debug("setting flags")
						-- We're on another node nearby, set flags now!
						for flag,set in pairs(no.setflags) do
							local old=Lib.PlayerFlags[flag]
							Lib.PlayerFlags[flag]=set
							if old~=set and ZGV.db.profile.debug then
								ZoneTextString:SetText( "Zygor Nav OMG!" )
								SubZoneTextString:SetText( ("%s = %s"):format(flag,set) )
								FadingFrame_Show( ZoneTextFrame )
								FadingFrame_Show( SubZoneTextFrame )
							end
							Lib:Debug("set flag %s to %s",flag,tostring(set))
						end
					end
				end


				-- add flying mount destinations, if flight is available.
				-- This means let all nodes on the continent see each other, unless some special cases.
				if flyspeed and not current.nofly then
					for ni,no in ipairs(self.nodes.all) do
						if no.status~="closed" and current:CanFlyTo(no) then  tinsert(neighs,{no,tmp_modefly})  end
					end
				end


				-- STARTING CHEATS: mage teleports and inns
				-- copied to FindPath.
				if current==Lib.startnode then
					Lib:SetupInitialQuickTravel(current,neighs)

					if Lib:GetCFG("use_last_resort") then
						for i,node in ipairs(Lib.nodes.temp) do
							if node.warlocksummon then
								tinsert(neighs,{node,{mode="courtesy",cost=30000}}) --Don't use this unless there is not other possible path.
								node.subtype="courtesywarlock"
							end
						end
					end
					-- This allows for forcing the next node to be visited - like, flying on a taxi enforces the destination point.
					if self.force_next then
						tinsert(neighs,{self.force_next,{mode="taxi",cost=-9999}})  -- this should guarantee that this one will be most promising, yes?
						if self.force_next.tostring then
							Lib:Debug("StepPath: Forced next node: ".. self.force_next:tostring() )
						else
							Lib:Debug("StepPath: Forced next node... WHAT!? How is that a node!?  Storing in global FORCENODE, check this!!")
							FORCENODE = self.force_next
						end
						--self.delayed_by_taxi=true
					end
				end
			end
			--]]



			local perstep=0


			--_,allow=yield(0)

			 Lib.debug_time.initial = Lib.debug_time.initial + debugprofilestop() - debug_time_initial_1



			 local debug_time_neighoverhead_1 = debugprofilestop()

			local cost_debugging = ZGV.db.profile.debug_display

			local lib_debug_onodes = Lib.debug_onodes
			local lib_debug_nodes = Lib.debug_nodes
			local lib_debug_nodes_any = next(Lib.debug_nodes)
			local lib_banned_nodes = Lib.banned_nodes
			local lib_banned_nodes_any = next(Lib.banned_nodes)
			local lib_debug_badnodes = Lib.debug_badnodes
			local lib_debug_time = Lib.debug_time
			local lib_debug_fromtonodes = Lib.debug_fromtonodes
			local lib_debug_forcepath = Lib.debug_forcepath
			local lib_debug_banlink = Lib.debug_banlink

			--for i,neighpair in ipairs(current.n) do
			for neigh,neighlink in current:IterNeighs() do
				--local neigh,neighlink = unpack(neighpair)

				-- is in closed list? if yes, bail out

				perstep=perstep+1

				--[[
				if (self.startnode.c==self.endnode.c and self.startnode.c>=0) and (neigh.c~=self.startnode.c or neigh.c==-1) then
					-- useless transcontinent
					self.closednodes[neigh]=true
					neigh.status="closed"
				end
				--]]

				 lib_debug_time.neighoverhead = lib_debug_time.neighoverhead + debugprofilestop() - debug_time_neighoverhead_1

				 local debug_time_neighblah_1 = debugprofilestop()


				-- THIS is a MAJOR CPU SINK for some reason.
				--if neighlink.cond_fun and not neighlink.cond_fun_result then neighlink.cond_fun_result = neighlink.cond_fun() and 1 or 0 end


				local debugged_pair
				if lib_debug_fromtonodes then
					for i,pair in ipairs(lib_debug_fromtonodes) do
						if (pair[1]==current.num or pair[1]==0) and (pair[2]==neigh.num or pair[2]==0) then debugged_pair=true break end
					end
				end
				if lib_debug_forcepath and (lib_debug_forcepath[neigh] or 99)-(lib_debug_forcepath[current] or 99)==1 then
					debugged_pair=true
				end
				if debugged_pair then print("|cffeeddaaLibRover DebugNodes:|r DEBUGGED PAIR:",(current.type=="start" and "start" or current.num),(neigh.type=="end" and "end" or neigh.num)) end

				local mode=neighlink.mode
				local neighlink__ts = tempstore[neighlink]


				
				local border_opt_reject
				if Lib.do_border_opti then
					border_opt_reject = (current.border_optimization and current.border~="multi" and (  -- and aren't limited by current node's optimizations. Optimized nodes only connect out to certain neighs.
					(current.border_optimization=="border" and current.border~=neigh)
					or
					(current.border_optimization=="taxi" and mode~="taxi")
					))

					if border_opt_reject then Lib.border_opti_gain = (Lib.border_opti_gain or 0) + 1 end

				end

				
				
				local neighlink_failed_cond
				if Lib.opti_neighcond then
					if neighlink.cond_fun then
						if neighlink.failed_cond==nil then
							neighlink_failed_cond = not not (neighlink.cond_fun and not neighlink.cond_fun())  -- and aren't failing a condition
							neighlink__ts.failed_cond = neighlink_failed_cond
						else
							neighlink_failed_cond = neighlink__ts.failed_cond
						end
					end
				else
					neighlink_failed_cond = not Lib.ignore_travel_conditions and neighlink.cond_fun and not neighlink.cond_fun()
				end

				-- try to open neighbours who:
				if neigh.status~="closed"  -- aren't closed already
				and not neighlink_failed_cond
				and not border_opt_reject
				--and not (mode=="fly" and not flyspeed)
				--and not (neigh.onlydst and neigh.onlydst~=current)

				-- flags are currently out
				--and not ((current==Lib.startnode) and neigh.testflags and not neigh.flagtestresult)

				then

					local costdesc
					if cost_debugging then costdesc = "" end

					 lib_debug_time.neighblah = lib_debug_time.neighblah + debugprofilestop() - debug_time_neighblah_1

					 local debug_time_scoring_1 = debugprofilestop()

					perstep=perstep+1  -- for throttling

					-- we'll be handling this one, eh? okay, cost calculation

					local mycost,mytime,myspeed

					--[[  DETERMINE THE MOVEMENT COST, BASING ON LINK MODE ]]--

					if neighlink.cost and mode~="taxi" then -- explicit cost given, don't use any mode-based templates (taxis still use their own times)
						mytime = neighlink.cost  -- timetabled!

					elseif mode == "taxi" then
						-- note: taxi flights are not penalized based on taxi point knowledge, due to valid flyovers.
						-- Walk/fly to depart, and walk/fly after arrival are, however.
						if not current.missing then -- current.missing == Thereamore's flight path is gone when it's destroyed.
							mytime = neighlink.cost  -- timetabled!
									or
									getdist(current,neigh) * 1.2 -- taxis fly in wide curves...
										/ (BASE_MOVEMENT_SPEED*4.3) -- roughly?
							if IsSpellKnown(117983) then
								mytime=mytime*0.8
								if cost_debugging then costdesc = costdesc .. "guild perk taxi bonus; " end
							end -- Guild Perk Ride like the Wind.
						end

					elseif mode == "tram" then
						--mycost = 120.00  -- 2 minutes.
						mytime = COST_TRAM  -- make it suck
					--[[
					elseif mode == "teleport" or mode=="hearth" or mode=="astralrecall" or mode=="useitem" then
						mytime = neighlink.cost
						--if ZGV.db.profile.pathfinding_preferfly then mycost=mycost*0.3 end
					elseif mode == "courtesy" then
						mytime = neighlink.cost
					--]]

					elseif mode=="portal" then
						mytime = neighlink.cost or COST_PORTAL -- to avoid "teleport 10 feet away" silliness

						if Lib:GetCFG("frown_on_portals") then mytime = mytime * 5 end	-- Usually portals decrease travel time significantly, so increasing their cost has no effect. But short portal hops are confusing so this makes short hops happen more rarely.

					elseif mode=="ship" or mode=="zeppelin" then
						--mycost = 110.00 + 30.00   -- about 3m40s between trips, half that.  + departure/arrival.
						--mycost = (neighlink.freq or 220.00) / 2   -- about 3m40s between trips, half that.  + departure/arrival.

						--if neighlink.cost then
						--	mytime = neighlink.cost
						--elseif
						if current.c==485 or neigh.c==485 then
							mytime=240 -- 4m between Northrend ships/zeppelins
						else
							mytime = 240
						end

					-- fly to unknown taxi AND run/fly from there? nope! Penalize all movement from there, since we can't penalize arrival (some taxis are valid unknown flyovers)
					--elseif current.type=="taxi" and current:IsTaxiKnown()==false then
					elseif (mode=="walk" or mode=="fly") and current.parentlink and current.parentlink.mode=="taxi" and current:IsTaxiKnown()==false then -- walking from an unknown taxi, means we have LANDED on it. Penalize!
						mytime=COST_FAILURE+1
						if cost_debugging then costdesc = costdesc .. "no arrival at unknown taxi; " end

					else -- walk/fly

						local dist=neighlink.dist
						if not dist then
							dist=getdist(current,neigh)
							neighlink.dist=dist
							--if dist>999999 then dist=2000 end
						end
						local speed = (mode=="fly" and flyspeed or runspeed) * BASE_MOVEMENT_SPEED
						--if mode=="walk" then speed = speed + (speed*speed)/400 end  -- 400yd gets 100% penalty; 800yd gets 200% penalty
						-- ^ NO. Promoted pointless zigzagging.

						if speed==0 then speed=0.001 end  -- some nodes are hardwired for "fly", they'd get 0 speed for non-flyers. Let's assume crawling flight.

						--print(neigh.num," costs ",runspeed,"runspeed for ",dist)
						mytime = dist / speed

						if cost_debugging then costdesc = costdesc .. ("dist %.1f, speed %.1f; "):format(dist,speed) end

						if (mode=="fly" and current.parentlink and current.parentlink.mode~="fly")
						or (mode=="walk" and current.parentlink and current.parentlink.mode~="walk" and speed>1.3 --[[there could be bonuses--]] ) then
							mytime = mytime + COST_MOUNTUP
							if cost_debugging then costdesc = costdesc .. ("mountup; ") end
						end

						myspeed = speed

						--(Astrolabe:ComputeDistance(current.m,current.f or 0,current.x,current.y, neigh.m,neigh.f or 0,neigh.x,neigh.y) or 99999999)*speedcost
						-- divide by movement speed later
					end

					local prevmode = current.parentlink and current.parentlink.mode
					local costprev = neighlink['cost_prev_'..(prevmode or "")]
					if costprev then
						if type(costprev)=="string" and costprev:sub(1,1)=="*" then  mytime = mytime * tonumber(costprev:sub(2))
						else  mytime = costprev  end
						if cost_debugging then costdesc = costdesc .. "costmod_prev_"..prevmode.."="..costprev.."; " end
					end

					-- Walled segments: let borders pass over them, but block walks
					--[[
					if current.m==neigh.m and neigh~=current.border and neighlink.mode=="walk" then
						local walled,walln,segment,penalty = isSegmentWalled(current,neigh)
						if walled then
							mytime=mytime+60
							if cost_debugging then costdesc = costdesc .. "wall +60 "..walln.." "..segment.."; " end
						else
							if debugged_pair then print("Not walled") end
						end
					else
						if debugged_pair then print("Not checking walls") end
					end
					--]]

					-- get some sane fallback...
					mytime = mytime or neighlink.cost or 0

					mytime = mytime + (neighlink.penalty or 0)
						
					--[[
					if mytime>100000 then
						mytime=10
						if cost_debugging then costdesc = costdesc .. "sanitized impossible or no time; " end
					end  -- sanitize "impassable" links
					--]]
					-- This effectively rendered "DON'T USE" links useless. What??

					-- by now, mytime should contain estimated travel TIME. Apply generic COST mods now.

					mycost = mycost or mytime

					--if neighlink.hardwired then mycost=mycost*0.6 end
					if neigh.costmod or current.costmod or neighlink.costmod then
						mycost=mycost*tonumber(neigh.costmod or current.costmod or neighlink.costmod)
						if cost_debugging then costdesc = costdesc ..  "costmod*"..(neigh.costmod or current.costmod or neighlink.costmod).."; " end
					end

					if neighlink.mud then
						mycost=mycost*neighlink.mud
						if cost_debugging then costdesc = costdesc .. "mud*"..neighlink.mud.."; " end
					end  -- Normally, we wouldn't even see this; but startnode is allowed to "see through thick fog" to latch onto the nodes.


					if mode=="walk" then mycost=mycost*COSTMOD_WALK  if cost_debugging then costdesc = costdesc .. "walkcost*"..COSTMOD_WALK.."; " end   end  -- walking sucks, never a beeline

					-- If high level zones are avoided... avoid.
						if mode=="walk" and Lib:GetCFG("avoid_highlevel_zones") then
							local c_hostile = current.regionobj and current.regionobj.hostile
							c_hostile = c_hostile or _ZoneMeta[current.m].hostile -- was: zone.level-TMP_PLAYERLEVEL>=2
							if c_hostile==true then c_hostile = COSTMOD_HOSTILE end
							
							local n_hostile = neigh.regionobj and neigh.regionobj.hostile
							n_hostile = n_hostile or _ZoneMeta[neigh.m].hostile -- was: zone.level-TMP_PLAYERLEVEL>=2
							if n_hostile==true then n_hostile = COSTMOD_HOSTILE end

							local hostile
							if c_hostile and n_hostile then hostile=(c_hostile+n_hostile)/2 else hostile = c_hostile or n_hostile end

							--mycost = mycost * ( 1 + (Lib.data.ZoneContLev[neigh.m].level-TMP_PLAYERLEVEL)*0.2 )
							if hostile then
								mycost = mycost * hostile
								if cost_debugging then costdesc = costdesc .. "hostile*"..hostile.."; " end
							end
						end
					-- ==

					-- Penalize uncomfortable modes of travel.

						local changed_modes = current.changed_modes or 0

						if Lib:GetCFG("pathfinding_comfort")>0
						and mode~="portal" and mode~="teleport" and mode~="ship" and mode~="zeppelin"  -- because those already have walk/fly connection to/from them, would bump the penalty too much
						then

							-- count mode changes on the way, penalize multiple changes
							if mode~=current.mode and mode~="taxi" and current.mode~="taxi" then changed_modes=changed_modes+1 end
						
							if mode=="walk" then
								local mod = 1 + (Lib:GetCFG("pathfinding_comfort") * 1)
								mycost = mycost * mod
								if cost_debugging then costdesc = costdesc .. ("cmft=%d%%,*%.2f; "):format(Lib:GetCFG("pathfinding_comfort")*100,mod) end
							elseif mode=="taxi" then
								--[[ if mode is walk or fly... ]]
								--[[
								if maxspeed > 2 then
									mycost = mycost*3
									if cost_debugging then costdesc = costdesc .. "prefer taxi, cost*3; " end
								else
									mycost = mycost*2
									if cost_debugging then costdesc = costdesc .. "prefer taxi, cost*2; " end
								end --Don't want to use hearth too much. If maxspeed = 2 then we can't move quick anyhow so walking is already bad.
								]]
								local mod = 1 - (Lib:GetCFG("pathfinding_comfort") * COSTMOD_COMFORT_TAXI)
								mycost = mycost * mod
								if cost_debugging then costdesc = costdesc .. ("cmft=%d%%,*%.2f; "):format(Lib:GetCFG("pathfinding_comfort")*100,mod) end
							end

							-- mode change penalty
							local mod = 1 + (Lib:GetCFG("pathfinding_comfort") * changed_modes * 0.2)
							mycost = mycost * mod
							if cost_debugging then costdesc = costdesc .. ("modechange %d*%.2f; "):format(changed_modes,mod) end

						end

					-- ==

					--[[
					if neigh.type=="taxi" and (mode=="walk" or mode=="fly") then -- landing at
						local known,desc = neigh:IsTaxiKnown()               -- taxis that are
						if known==false then                                 -- strictly unknown
							mycost=mycost+COST_FAILURE+20                -- is not allowed :)
						end -- but allow takeoff for known or maybe
						if not known and cost_debugging then costdesc = costdesc .. desc.."|r; " end
					end
					--]]
					-- ==
					if neigh.type=="taxi" and (mode=="walk" or mode=="fly") then -- departing from conditioned taxis is bad
						local known,desc,couldbe = neigh:IsTaxiKnown()
						if known==false and couldbe==false then
							mycost=mycost+COST_FAILURE+20
						end -- but allow takeoff for known or maybe
						if not known and cost_debugging then costdesc = costdesc .. "taxi "..desc.."; " end
					end

					-- Classic: no unknown flyovers
					if Lib.IsClassic or Lib.IsClassicTBC or Lib.IsClassicWOTLK then
						if mode=="taxi" and neigh.known==false then
							mycost=mycost+COST_FAILURE+23
							if cost_debugging then costdesc = costdesc .. "no flyovers; " end
						end
					end

					-- Seriously frown upon banned nodes :)
						if lib_banned_nodes_any and lib_banned_nodes[neigh] then
							mycost=mycost+COST_FAILURE+99
							if cost_debugging then costdesc = costdesc .. "banned; " end
						end
						if lib_debug_banlink and lib_debug_banlink[current.num.."_"..neigh.num.."_"..mode] then
							mycost=mycost+COST_FAILURE+99
							if cost_debugging then costdesc = costdesc .. "banned link; " end
						end
					-- ==

					if not Lib.ignore_travel_conditions and neigh.cond_fun and not neigh.cond_fun() then
						mycost=mycost+COST_FAILURE+21
						if cost_debugging then costdesc = costdesc .. "failed cond_fun; " end
					end

					if neigh.type=="road" and (current.border==neigh or (current.borders and current.borders[neigh])) and mode~="fly" then
						mycost=mycost*0.7
						if cost_debugging then costdesc = costdesc .. "road; " end
					end

					-- Ban nodes by quest/faction.
						if (neigh.factionid and select(3,GetFactionInfoByID(neigh.factionid))<neigh.factionstanding) then
							mycost = mycost+COST_FAILURE+100
							if cost_debugging then costdesc = costdesc .. ("low fac(%s,%s); "):format(neigh.factionid,neigh.factionstanding) end
						elseif (neigh.quest and not IsQuestFlaggedCompleted(neigh.quest)) then
							mycost = mycost+COST_FAILURE+100
							if cost_debugging then costdesc = costdesc .. ("incomp q(%s); "):format(neigh.quest) end
						elseif (neigh.class and select(2,UnitClass("player"))~=neigh.class) then
							mycost = mycost+COST_FAILURE+100
							if cost_debugging then costdesc = costdesc .. ("wrong class(%s); "):format(neigh.class) end
						end
					-- ==

					--[[
					if Lib.onlies and Lib.onlies[neigh.num] and Lib.onlies[neigh.num]~=current.num then
						mycost=mycost+99999
						if cost_debugging then costdesc = costdesc .. "to "..neigh.num.." only from "..Lib.onlies[neigh.num].."; " end
					end
					--]]


					--[[
					-- penalty for switching travel modes
					if ZGV.db.profile.pathfinding_preferfly
					and current.link and current.link.mode~=mode  -- mode changed
					and mode~="taxi"  -- don't penalize for hopping on a taxi, however
					then
						mycost=mycost+30
					end
					--]]

					
					--[[ -- Removed: was causing trouble. When a short flight (<30yd) was followed by a long flight, the first didn't get the mount penalty because it's short, the second didn't either because it followed the previous flight. ~sinus 2017-11-08 18:50 
						if mode=="fly" and ((not current.parentlink and not (IsFlying and IsFlying("player"))) or (current.parentlink and current.parentlink.mode~="fly")) and ((neighlink and neighlink.dist or 9999)>30) then
							mycost = mycost+2
							if cost_debugging then costdesc = costdesc .. "mountup +2; " end
						end
					--]]


					if Lib.RestrictMap and current.m~=Lib.startnode.m then 
						mycost = mycost + COST_FAILURE + 100
					end


					-- cost calculation is over.

					local cost = current.cost + mycost
					local time = current.time + mytime


					-- or perhaps just our path is better?
					if lib_debug_onodes or (lib_debug_nodes_any and lib_debug_nodes[neigh.num]) then
						Lib:Debug ("|cffffffffFrom [%d]: %s%s|r (%s %.1f), c=|cffddffdd%.1f|r",current.num, colors[neigh.type] or "",neigh:tostring(), mode,mycost, cost)
					end

					if debugged_pair then
						print(("|cffeeddaaLibRover DebugNodes:|r Linking %d to %d: came from %s, mode %s, time %.1f, cost %.1f, '%s' (total time %.1f, cost %.1f)"):format(
							current.num, neigh.num, current.parent and current.parent.num or "nowhere", neighlink.mode, mytime,mycost, costdesc or "", time,cost))
					end

					-- UPDATE COST?

					local updated
					if not neigh.cost or cost<neigh.cost then
						if lib_debug_onodes or (lib_debug_nodes_any and lib_debug_nodes[neigh.num]) then
							if neigh.cost then
								Lib:Debug ("Updating node: %s%s|r (%s), c=%.1f>%.1f", colors[neigh.type] or "",neigh:tostring(), mode, neigh.cost,cost)
							else
								--Lib:Debug (("Opening node: %s%s|r, c=|cffddffdd%.1f|r"):format(colors[neigh.type] or "",neigh:tostring(),cost))
								Lib:Debug ("Opening node: %s%s|r (%s), c=%.1f", colors[neigh.type] or "",neigh:tostring(), mode, cost)
							end
							--ZGV.Pointer:SetWaypoint(neigh.m,neigh.f,neigh.x,neigh.y,{title=neigh:tostring(true),overworld=true})
						end
						if debugged_pair then
							print("|cffffffffLinking: ^ NEW BEST!")
						end
						neigh.cost = cost
						neigh.time = time
						neigh.parentlink = neighlink
						neigh.mytime = mytime
						neigh.mycost = mycost
						neigh.parent = current
						neigh.costdesc = costdesc
						neigh.changed_modes = changed_modes
						neigh.speed = speed
						updated=true

						-- border opening optimization: open the OTHER end of the door instead.
						if neigh.border and neigh.border~="multi" then
							if neigh~=current.border and not neigh.border_optimization then -- lock the remote neighbour
								neigh.border_optimization = "border"
							elseif neigh.border_optimization=="border" then -- it's our neighbour, locked! (from the other side?)
								neigh.border_optimization="ignore"
							end

							if lib_debug_onodes then Lib:Debug("Border opti: Node %d is opted for %s",neigh.num,neigh.border_optimization) end

						--[[ This is bullshit. Marking all visible taxis as "departure only" isn't a good idea at all.
						elseif neigh.type=="taxi" and (mode=="walk" or mode=="fly") then
							neigh.border_optimization = "taxi"
							if lib_debug_onodes then Lib:Debug("Border opti: Node %d is opted for %s",neigh.num,neigh.border_optimization) end
						--]]

						end

					end

					 lib_debug_time.scoring = lib_debug_time.scoring + debugprofilestop() - debug_time_scoring_1

					 local debug_time_adding_1 = debugprofilestop()

					-- With the heaps used for open nodes, NEVER ALLOW THE NODE SCORE TO INCREASE. This screws things royally.
					if updated then
						if neigh.status=="open" then
							-- just update it. RESORT THE HEAP.
							self.opennodes:BubbleUp(neigh)
						else
							if lib_debug_forcepath and not debugged_pair then
								-- don't even open this, if we're debugging and this connection does not have two consecutive indices in the debug_forcepath list.
							else
								self.opennodes:Add(neigh)  --TODO: if neigh has a border twin, then open the twin INSTEAD. Later, when working the twin, close this one immediately.
								neigh.status="open"
								opened_count=opened_count+1
							end
						end
					end

					 lib_debug_time.adding = lib_debug_time.adding + debugprofilestop() - debug_time_adding_1

				else
					-- closed or otherwise invalid

					 lib_debug_time.neighblah = lib_debug_time.neighblah + debugprofilestop() - debug_time_neighblah_1

					-- local debug_time_closed_1 = debugprofilestop()

					if lib_debug_badnodes and neigh.status~="closed" then
						local reason=""
						if (neighlink.cond_fun and not neighlink.cond_fun()) then reason=reason.." failed condition " end
						if (mode=="fly" and flyspeed==0) then reason=reason.." can't fly " end
						if (neigh.onlydst and neigh.onlydst~=current) then reason=reason.." only dst "..neigh.onlydst.num.."!="..current.num end
						Lib:Debug ("BAD NODE: %s%s|r, cost |cffddffdd%.2f|r - %s", colors[neigh.type] or "",neigh:tostring(),neigh.cost or -1, reason)
					end

					-- lib_debug_time.closed = lib_debug_time.closed + debugprofilestop() - debug_time_closed_1

				end

				--[[
				if perstep>allow then
					perstep=0
					yield(perstep)
				end
				--]]

				debug_time_neighoverhead_1 = debugprofilestop()

			end -- for i,neighpair in ipairs(neighs)
			--_,allow = yield(perstep)

			 lib_debug_time.neighoverhead = lib_debug_time.neighoverhead + debugprofilestop() - debug_time_neighoverhead_1

			-- local debug_time_final_1 = debugprofilestop()

			if Lib.debug_cnodes or Lib.debug_openclose or (lib_debug_nodes_any and lib_debug_nodes[current.num]) then
				Lib:Debug ("Closing node: [%d] %s%s|r, cost |cffddffdd%.1f|r. Opened: %d", current.num,colors[current.type] or "",current:tostring(),current.cost or 99999999, opened_count)
				Lib:Debug ("Step %d: %d open, %d closed", self.calculation_step,dictsize(self.opennodes),closed_count)

				--[[
				ZGV.Pointer:ClearWaypoints("manual")
				for ni,no in ipairs(self.nodes.all) do
					if no.status=="closed" then
						ZGV.Pointer:SetWaypoint(no.m,no.f,no.x,no.y,{title=no:tostring(true),overworld=true,type="manual"})
					end
				end
				--]]
				ZGV.Pointer:SetWaypoint(current.m,current.f,current.x,current.y,{title=current:tostring(true),overworld=true,type="manual"})
			end

			-- lib_debug_time.final = lib_debug_time.final + debugprofilestop() - debug_time_final_1

			if self.calculation_step>=self.calculation_step_limit then
				return "TIMEOUT",current
			end

			return "PENDING" --continue
		end

		--[[
			Here's what gets nasty.

			Usually, waypoints are depicted as the action that gets you to them. Go to 12,34; Board a boat [and go to destination]; etc.

			However, per request, we'll be violating this rule. Hence, some points will be... special.
			You've been warned.
		--]]

		--[[
			These are the various waypoint descriptions.
			They're matched against, in order:
			 1. (travel-mode)_(destination-type)__(nexttravel-mode)_(nextdestination-type),
			 2. (travel-mode)_(destination-type),
			 3. (travel-mode),
			 4. (destination-type).
			In each case a capital "X" is used as a wildcard.

			"X_ship__ship_ship", for example, means "by 'any means' arriving at a 'ship' point, when a 'ship' travel to a 'ship' next destination follows".
			This of this as a poor man's XPath...
		--]]

		function Lib:Cleanup()
			--self.force_next=nil
		end

		
		
		local point_templates = Lib.data.point_context_templates
		-- And, this is for fast lookups.
		local point_templates_keys={}  for i,pair in ipairs(point_templates) do point_templates_keys[pair[1]]=pair[2] end

		local math_abs = math.abs
		local function AngleBetween(n1,n2,n3)
			if not (n1 and n2 and n3) then return 99 end
			local a1 = n2:GetAngleTo(n1)
			local a2 = n2:GetAngleTo(n3)
			if not (a1 and a2) then return 99 end
			local d = math_abs(a2-a1)
			if d>180 then d=360-d end
			return d
		end

		Lib.RESULTS_SKIPPED_START = {}
		Lib.RESULTS_SKIPPED_END = {}

		function Lib:BuildResults(endnode)
			local results = {}

			-- do the backwards walk
			while endnode do
				--local t={}
				--for k,v in pairs(endnode) do t[k]=v end
				--table.insert(results,1,t)
				endnode.link=endnode.parentlink
				table.insert(results,1,endnode)
				endnode = endnode.parent
			end
			return results
		end

		local n
		function Lib:ReportPath(endnode)
			local results = self:BuildResults(endnode)
			self.RESULTS = results

			wipe(Lib.RESULTS_SKIPPED_START)
			wipe(Lib.RESULTS_SKIPPED_END)

			if self.extradata and self.extradata.reportEnd then
				self.extradata.endnode = endnode
			end

			-- now walk forward. This could be done backwards, too, but it just a nuisance do to so.

			-- If a node is close enough to the starting node... just let its own neighbours be ours.
			-- This should result in seamless skipping of the node.
			-- PATH COMPLETION IS ACHIEVED HERE.



			-- TAXI DISPLAY PREPARATION: find the final flight and stamp it onto all flights in a sequence.
				Lib.RESULTS_ASSUMED_TAXI=false
				for i=2,#results-1 do if results[i].type=="taxi" and results[i].known==nil then Lib.RESULTS_ASSUMED_TAXI=true end end

				local first_taxi
				local taxi_destination
				local prevnode
				for i=2,#results do
					local node=results[i]
					if first_taxi and node.link.mode~="taxi" and node.link.mode~="ferry" then -- we've reached this node NOT by taxi. It could be another taxi, but we don't care.
						-- Assuming a path will NEVER end on a taxi.
						-- prevnode is our final taxi, we're on a node after that.
						prevnode.taxiFinal=true
						local assigned
						for j=i-2,first_taxi,-1 do  -- walk backwards, assigning destination
							if results[j].type=="taxi" then -- sanity
								results[j].taxiDestination=prevnode
								assigned=true
							end
						end
						if assigned then
							Lib:Debug("&lr_taxifinal Detected taxi from %d to %d, destination %s, operator %s.",first_taxi,i-1,prevnode:tostring(),prevnode.taxioperator)
						else
							Lib:Debug("&lr_taxifinal WTF? No taxi destination assigned? Was at #%d, first_taxi was #%s of results, destination was %s. Bad results stored in LibRover.BADRESULTS",i,first_taxi,tostring(prevnode))
							Lib.BADRESULTS=results
						end
						first_taxi=nil
					end
					if not first_taxi and node.type=="taxi" and (node.link.mode=="walk" or node.link.mode=="fly") then --These don't connect like most taxi nodes.
						first_taxi=i
					end
					prevnode=node
				end
			-- TAXI DISPLAY ENDS

			local override_text,override_icon
			local zonemeta=Lib.data.ZoneMeta

			-- PREPARE NODES FOR DISPLAY. Assign titles based on situation.
				for n=1,#results do repeat
					local node = results[n]

					node.prev = results[n-1]
					node.next = results[n+1]

					local nextnode = node.next
					local text


					-- grab overrides, if present.
					if node.override_text then override_text=node.override_text end
					if node.override_icon then override_icon=node.override_icon end


					if node.waypoint and node.waypoint.goal then text = node.waypoint:GetTitle() end  -- DISPLAY JUST WAYPOINT TEXT AT FINAL NODE when it's goal-bound.

					if node.link and node.link.mode=="fly" and node.indoors then node.link.mode="walk" end

					--if not node.link then break end --continue

					local function _GetNodeMode(node)
						return node.link and (node.link.template or node.link.mode) or "walk"  -- how we get to this point
					end
					local function _GetNodeType(node)
						return (node.argushub and "argushub") or node.taxioperator or node.subtype or node.type or "*"  -- this point type
					end

					local travelmode = _GetNodeMode(node)  -- how we get to this point
					local nodetype = _GetNodeType(node)  -- this point type

					if nodetype=="start" then travelmode="start" end

					--[[
					if self:GetCFG("use_mage_teleport") and travelmode=="teleport" and not IsSpellKnown(node.spell) then
						-- not a mage? use courtesy or something?
					end
					--]]

					--if node.link and node==node.link.n1 and nextnode==node.link.n2 then text=node.link.dir1 end
					--if node.link and node==node.link.n2 and nextnode==node.link.n1 then text=node.link.dir2 end

					-- Determine proper wording for the node.
					local a_b = travelmode .. "_" .. nodetype
					local a_b__c_d = ""
					if nextnode then
						if zonemeta[node.m].vashjir and zonemeta[nextnode.m].vashjir and travelmode=="walk" then travelmode="swim" end
						a_b__c_d = travelmode .. "_" .. nodetype .. "__" .. _GetNodeMode(nextnode) .. "_" .. _GetNodeType(nextnode)
					end

					node.a_b = a_b
					node.a_b__c_d = a_b__c_d


					text = text or node:GetActionTitle(node.prev,node.next) or node.title or (node.link and node.link.title)
					-- from trunk: text = text or node:GetActionTitle(node.prev,node.next)-- or node.title or (node.link and node.link.title)

					if not text then
						-- Try for a fast match first
						--text = point_templates[a_b__c_d] or point_templates[a_b] or point_templates[travelmode] or point_templates[nodetype] or "walk"

						-- Okay, wildcards it is, then.
						-- First, try to match full current and next node types and travel modes.
						-- For example, fly_ship__ship_ship means this node has us flying to the pier, while the next is a ship connection to the destination port.
						if DEBUG_MATCHING then Lib:Debug("%d. [%d] trying to match, in order: |cffaadd55%s , %s , %s , %s",n,node.num,a_b__c_d,a_b,travelmode,nodetype) end
						for i,patpair in ipairs(point_templates) do
							local pat=patpair[1] :gsub("%*","%%w*")
							if a_b__c_d:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cffaaff00%s",pat) end   break end
							if a_b:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff77ff00%s",pat) end   break end
							if travelmode==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff44ff00%s",pat) end   break end
							if nodetype==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff00ff00%s",pat) end   break end
						end
					else
						if DEBUG_MATCHING then Lib:Debug("%d. [%d] already set (by action title or default) to |cffaadd55%s",n,node.num,text) end
					end

					text=text or "walk"

					node.is_arrival = (a_b=="taxi_taxi" or a_b=="ship_ship" or a_b=="zeppelin_zeppelin" or a_b=="portal_portal" or a_b=="mole_misc" or text=="arrive" or node.taxioperator)
					 and node~=self.force_next   -- prepare to skip the point... oh shit oh shit

					if node==self.force_next and node.a_b__c_d:match("taxi_.-__taxi_.-") then
						text='forced_taxi__taxi_taxi'
					end
					if node.a_b__c_d:match(".*_taxi__taxi_taxi") then
						local known,desc,couldbe = node:IsTaxiKnown()
						if not known and couldbe then text='taximaybe' end
					end

					if DEBUG_MATCHING then Lib:Debug("-- finally matched: |cff00ff88%s",text) end

					while (point_templates_keys[text]) do text=point_templates_keys[text] end   -- do redirects

					local nextmap = ZGV.GetMapNameByID(nextnode and (nextnode.taxiDestination and nextnode.taxiDestination.m or nextnode.m) or 0)
					-- Show "Portal to Vashj'ir" instead of "Portal to Shimmering Expanses" et al.
					if nextnode and nextnode.type=="portal" and zonemeta[nextnode.m].vashjir then  nextmap=TryBZL("Vashj'ir") end

					-- All these TryBZL is attempting to localize each element before it gets put into the complete string.
					local text = text
						:gsub("{node}",TryBZL(node:GetText(node.prev,node.next)) or "?")
						:gsub("{name}",TryBZL(node.localname or node.name) or "?")
						:gsub("{next_name}",nextnode and (nextnode.taxiDestination and TryBZL(nextnode.taxiDestination.localname or nextnode.taxiDestination.name) or TryBZL(nextnode.extitle) or TryBZL(nextnode.localname) or TryBZL(nextnode.name)) or "?")
						:gsub("{map}",TryBZL(MapName(node)))
						:gsub("{next_map}",nextnode and nextnode.title and TryBZL(nextnode.title) or TryBZL(nextmap) or "?")
						:gsub("{next_title}",nextnode and nextnode.title and TryBZL(nextnode.title) or "?")
						:gsub("{next_port}",nextnode and nextnode.port and TryBZL(nextnode.port)..", "..TryBZL(nextmap) or TryBZL(nextmap) or "?port?")
						:gsub("{bordermap}",nextnode and nextnode.border==node and TryBZL(MapName(nextnode)) or TryBZL(MapName(node)))
						:gsub("{item}", ZGV:GetItemInfo(node.item or (node.link and node.link.item) or 0) or "item")
						:gsub("{npc}",ZGV.Localizers:GetTranslatedNPC(node.npcid,node.npc) or "?")
						:gsub("{spell}",(GetSpellInfo(node.spell) or "Teleport"))

					-- RENDER IT IN!
					
					node.text = TryBZL(text)
					node.maplabel = node:GetText(node.prev,node.next)
					if ZGV.db.profile.debug_display then node.maplabel = node.maplabel .. "\n" .. node:tostring() end
				until true end
			-- NODES PREPARED FOR DISPLAY.



			--== LOOSE START OPTIMIZATION

			if Lib:GetCFG("remove_standing") then

				-- find a node player is standing on
				local standing_node, standing_nr
				local sn=results[1]
				for i=2,#results-1 do if getdist(sn,results[i])<(results[i].radius or STANDING_ON_NODE_RADIUS) then standing_nr=i break end end

				if standing_nr then repeat
					-- check if we can skip all between start (sn) and including standing_nr.
					local dobreak
					for i=2,standing_nr do
						local n=results[i]
						if n.noskip -- TODO: make it... something better?
						or n.type=="portal"
						or n.type=="taxi"
						or n.type=="ship"
						or n.type=="zeppelin"
						then dobreak=true break end  -- Cancel skipping. Just forget it.
					end
					if dobreak then break end

					-- okay then, let's skip some nodes!

					local standing_node = results[standing_nr]
					local sn=results[1]
					repeat
						local nr = results[2]

						sn.link=nr.link
						nr.optaway = nil
						tremove(results,2)
						tinsert(self.RESULTS_SKIPPED_START,{nr,"standing on ["..standing_node.num.."]"})
					until nr==standing_node
				until true end
			end
			--



			--=========== HAIRPIN OPTIMIZATION

			if Lib:GetCFG("remove_hairpins") then

				-- try to skip the first point, if it's close and an acute angle

				local sn,n1,n2=results[1],results[2],results[3]

				-- ugly hack to put in the layered conditions as a debug measure.
				local reason=""
				local function save_reason(r,ret)
					reason=r
					return ret
				end

				
				--if (n1.type=="border" or n1.type=="fly" or n1.type=="walk")
				while sn and n1 and n2
				and (n1.link.mode=="walk" or n1.link.mode=="fly" or n1.link.mode=="road")
				and n2.link and (n2.link.mode=="walk" or n2.link.mode=="fly" or n2.link.mode=="road" or n2.link.mode=="border")
				and not n1.border_in_flight
				--and n2.border
				and
					(
						( -- standing on the point
							true -- now feel free to comment out any line below! wacky hacky syntax trick!
							and getdist(sn,n1)<(tonumber(n1.radius) or (IsFlying and IsFlying("player") and STANDING_ON_NODE_RADIUS_FLIGHT or STANDING_ON_NODE_RADIUS))  -- standing on n1
							and (sn.f==n1.f or n1.optaway)		-- if n1 is a midpoint (See Pointer.lua: ~2000) then allow the floors to be ignored.
							and sn.region==n1.region  -- don't optimize out region entrances
							and save_reason("standing on point, dist "..("%.1f"):format(getdist(sn,n1)).." radius "..(tonumber(n1.radius) or "50/20") , true)
						)
							--or getdist(n1,n2.border)<(IsFlying and IsFlying("player") and 50 or 20)
						or
							--(n2.type=="border" and n2.border and getdist(n1,n2)+getdist(n1,n2.border)-getdist(n2,n2.border)<100)  -- n1 is between n2 and n2.border
						( -- standing next to the point, acute angle, same floor
							true
							-- what if not same floor...
							--and sn.f==n1.f -- and n1.f==n2.f
							and getdist(sn,n1)<getdist(n1,n2) -- skip only at short range
							and AngleBetween(sn,n1,n2)<(90-(getdist(sn,n1)/getdist(n1,n2))*70)
							and sn.region==n1.region --and n1.region==n2.region
							and n1.minimapzone==n2.minimapzone
							and save_reason(("acute angle %d between %d-%d-%d dist %d/%d'"):format(AngleBetween(sn,n1,n2),sn.num,n1.num,n2.num,getdist(sn,n1),getdist(n1,n2)) , true)
						)
							--[[
								or
								(
									-- standing directly between this and next, any floor (staircase?)
									and AngleBetween(sn,n1,n2)<15 -- and getdist(sn,n1)<getdist(n1,n2)
									and ((sn.f==n1.f) or (sn.f==n2.f))
								)
							--]]

							--[[
								or
								(
									-- what is this?
									getdist(sn,n1)+getdist(sn,n2)-getdist(n1,n2)<50
									--and ((sn.f==n1.f) or (sn.f==n2.f) or (sn.region==n1.region) or (n1.region==n2.region))
									and (sn.f==n1.f and sn.region==n1.region)
								)
							--]]
					)
					-- "skip if standing on first node ; also if hairpin detected, but only all on same floor"
				and not (n1.testflags and not n1.flagtestresult)
				and not (n2.testflags and not n2.flagtestresult)
				do
					-- remove n1 from between sn and n2
					sn.link=n1.link
					n1.optaway = nil
					tremove(results,2)
					tinsert(self.RESULTS_SKIPPED_START,{n1,"hairpin: "..(reason or "no reason")})
					local n1removed=n1
					sn,n1,n2=results[1],results[2],results[3]

					-- get its twin, too?
					-- BAH. This fails on case:  sn(region="a"),n1removed(region="a"),n1(region=nil). Erases the region entry. BAD.
					--[[
					if n1 and n1removed.border==n1 and getdist(n1removed,n1)<5 then -- kill them both.
						Lib:Debug("|cffff8800skipped hairpin node's twin|r: %s",n1:tostring())
						sn.link=n1.link
						n1.optaway=nil
						tremove(results,2)
						tinsert(self.RESULTS_SKIPPED_START,n1)
						sn,n1,n2=results[1],results[2],results[3]
					end
					--]]

				end

				-- repeat for pre-end point. UGLY.

				if #results>2 then
					-- try to skip the pre-last point, if it's close and an acute angle
					local n1,n2,en=results[#results-2],results[#results-1],results[#results]


					if n2.link and (n2.link.mode=="walk" or n2.link.mode=="border" or n2.link.mode=="fly")
					and n1.link and (n1.link.mode=="walk" or n1.link.mode=="fly")
					and (n1.f==n2.f and n2.f==en.f) and (n1.minimapzone==n2.minimapzone and n2.minimapzone==en.minimapzone)
					--and n2.border
					and ( getdist(n2,en)<(n2.radius or STANDING_ON_NODE_RADIUS_END)  or  (getdist(n2,en)<(n2.radius or STANDING_ON_NODE_RADIUS_END)*3 and AngleBetween(n1,n2,en)<45) )
					and not (n1.type=="taxi")
					then
						-- remove n1 from between sn and n2
						n1.link=n2.link
						tremove(results,#results-1)
						tinsert(self.RESULTS_SKIPPED_END,{n1,"pre-end"})
					end
				end
			end
			--============ HAIRPIN OPTIMIZATION ENDS.


			for i=1,#results do
				local node=results[i]
				local color=""
				if (node.is_arrival) then color="|cff888888" end

				Lib:Debug (color.."%d. |cff88ff88%s|r -- %s|r",
				i-1, node.type=="start" and "START" or node.text, node:tostring())

				if i==1 and next(LibRover.RESULTS_SKIPPED_START or {}) then
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_START) do
						Lib:Debug("--- SKIPPED: |cffff8800 %s|r  - BECAUSE: %s",nn[1]:tostring(),nn[2])
					end
				end
				
				if i==#results-1 and next(LibRover.RESULTS_SKIPPED_END or {}) then
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_END) do
						Lib:Debug("--- SKIPPED: |cffff8800 %s|r  - BECAUSE: %s",nn[1]:tostring(),nn[2])
					end
				end

			end


			if override_text then results[2].wayp_override_text = override_text end
			if override_icon then results[2].wayp_override_icon = override_icon end

			lastupdate=0

			if #results==2 and not results[2].noskip then
				if getdist(results[1],results[2])<ZGV.Pointer:GetDefaultStepDist() then return self:ReportArrival() end
			end

			if self.PathFoundHandler then 
				local returnData = self.extradata
				returnData.fromme = self.startnode.player
				self.PathFoundHandler("success",results,returnData)
			end

			ZGV:SendMessage("LIBROVER_TRAVEL_REPORTED")

			self.pathfinding_speed_override = nil

		end

		function Lib:ReportFail(reason)
			Lib:Debug("Report: FAIL! %s",tostring(reason))
			if self.PathFoundHandler then self.PathFoundHandler("failure",nil,self.extradata,reason) end
			Lib:Stop()
		end

		function Lib:ReportArrival()
			Lib:Debug("Report: Arrived.")
			if self.PathFoundHandler then self.PathFoundHandler("arrival") end
			Lib:Stop()
		end



		--[[
		function Lib:____RebuildNodes()
			wipe(self.masternodes)

			self:ImportTaxis(self.basenodes_taxis_N)
			if UnitFactionGroup("player")~="Alliance" then
				self:ImportTaxis(self.basenodes_taxis_A)
			else
				self:ImportTaxis(self.basenodes_taxis_H)
			end

			self:ImportBorders()
		end
		--]]

		-- off the top of my head. elapsed>0.05 (20fps) = setting slow speed. elapsed<0.02 (50fps) = setting full speed.

		local waitphase=0

		Lib.update_interval = 30

		Lib.debug_totaltime = false

		local interval_min=1/12
		local interval_max=1/50

		local tmp_progress = {}

		local debug_pendings=0

		local elapsed_for_update=0
		local UPDATE_FREQ=1.0

		local debugprofilestop=debugprofilestop

		local old_ontaxi

		function Lib:OnUpdate(elapsed)

			if self.calculating and self.thread then

				--## Throttle according to framerate.
				--[[
				60fps = 16ms/frame.
				Let's try to appoint 10ms/frame (100fps) and stick to that.
				--]]

				-- if elapsed>interval_min then perframethrot=hardmin
 				-- elseif elapsed>interval_max then perframethrot=((elapsed-interval_max)/(interval_min-interval_max))*(hardmax-hardmin) + hardmin
				-- else perframethrot=hardmax end

				local count=0
				local resumed,code,ret

				local time_slot,time_slot_remaining

				local fps = GetFramerate()
				--local sec_per_frame = 1/fps
				--[[
				-- if it's over 60fps, go wild.
				if fps>60 then time_slot = 10.000 + (fps-60)*0.26 --ms
				else time_slot = 10 end  -- making it like 4 frames to calc anything.
				--if perframethrot>hardmax then perframethrot=hardmax end
				--]]

				--[[ "Try to use up 'leftover' time in a frame". Bullshit. There is NO leftover time.
					local free_time = sec_per_frame-elapsed
					time_slot = max(self.pathfinding_speed_override or ZGV.db.profile.pathfinding_speed or 0.001,free_time*1000)  -- in ms!!

					self:Debug("FPS %.2f, msPF %.2fms, elapsed %.2f, free_time %.2fms, speed %.2fms, slot %.2fms",
						fps,
						sec_per_frame*1000,
						elapsed*1000,
						free_time*1000,
						self.pathfinding_speed_override or ZGV.db.profile.pathfinding_speed or 0.001,
						time_slot)
				--]]

				time_slot = self.pathfinding_speed_override or ZGV.db.profile.pathfinding_speed or 1
				--if fps>60 then time_slot = time_slot + (fps-60)*0.1 end
				
				-- overrides for time slot
				if InCombatLockdown() or self.low_priority then time_slot=1 end  -- force SLOW updates in combat, still 1ms is a pretty chunk of time.
				if Lib.debug_totaltime then time_slot=5000 end

				self:Debug("&lr_calc &_REPLACE lr_calc_1 FPS %.2f, speed %.2fms, slot %.2fms",fps,self.pathfinding_speed_override or ZGV.db.profile.pathfinding_speed or 0.001,time_slot)

				time_slot_remaining=time_slot

				Lib.debug_frames_total = Lib.debug_frames_total + 1

				local debug_time_all_1 = debugprofilestop()

				local hardlimit=10000
				local calcloops=0
				while time_slot_remaining>=0 and self.calculating do
					--perframethrot = perframethrot - self:StepPath()
					local slot_time=debugprofilestop()

					local debug_time_onerun_1=debugprofilestop()
					if co_status(self.thread)=="dead" then self.calculating=false return end
					resumed,code,ret = resume(self.thread,self,time_slot_remaining) -- returns num as count of nodes covered. nil if ending.
					if self.initializing_path then
						Lib.debug_time.initpath = Lib.debug_time.initpath+debugprofilestop()-debug_time_onerun_1
					else
						Lib.debug_time.allcalc=Lib.debug_time.allcalc+debugprofilestop()-debug_time_onerun_1
					end

					--[[
					if not resumed then
						-- restart!
						self.thread = coroutine.create(self.StepForever)
						resumed,num = resume(self.thread,self,perframethrot) -- returns num as count of nodes covered. nil if ending.
					end
					-- MAYBE not restart, since it ends up reviving dead paths
					--]]
					if resumed then
						if type(code)=="number" then
							count=count+code
						elseif code=="SUCCESS" then
							-- force return
							time_slot_remaining=0
						end
					else
						ZGV:Error("Travel System crashed!\n"..(code or ""))
						self.calculating=false
						return
					end

					slot_time=debugprofilestop()-slot_time
					time_slot_remaining=time_slot_remaining-slot_time

					if not code or code=="ERROR" or code=="END" then self.calculating = nil end

					if code=="SUCCESS" and not self.can_optimize_for_end then self.calculating = nil end

					hardlimit=hardlimit-1
					if hardlimit<0 then break end

					calcloops=calcloops+1
				end

				-- Lib:Debug("Calc done, %d loops.",calcloops)

				debug_time_all_1=debugprofilestop()-debug_time_all_1

				Lib.debug_time.all = Lib.debug_time.all + debug_time_all_1

				if code=="PENDING" then
					debug_pendings = debug_pendings + 1
					if debug_pendings<5 or debug_pendings%10==0 then
						Lib:Debug("&lr_calc Calc pending%s, frame %s (calcs: %d) in %.2fms.",
						Lib.success_endnode and " (REFINING)" or "", Lib.debug_frames_total,Lib.calculation_step,debug_time_all_1)
					end
				else -- SUCCESS or END.
					Lib:Debug("&lr_calc Result: %s. Done |cffffff88%d|r calculations over |cff88ffff%d|r frames:\n"
					.." compared |cff88ff88%d|r nodes in |cffffffff%.2f|r ms, opened |cff88ff88%d|r, closed |cff88ff88%d|r \n"
					--.." cheapest |cffffffff%.2f|r, initial |cffffffff%.2f|r, overhead |cffffffff%.2f|r, blah |cffffffff%.2f|r, scoring |cffffffff%.2f|r, adding |cffffffff%.2f|r ms, closed |cffffffff%.2f|r, final |cffffffff%.2f|r    \n"
					.." cheapest |cffffffff%.2f|r, initial |cffffffff%.2f|r, overhead |cffffffff%.2f|r, blah |cffffffff%.2f|r, scoring |cffffffff%.2f|r, adding |cffffffff%.2f|r ms    \n"
					.." init |cffffffff%.2f|r ms + calc total |cffffffff%.2f|r ms = total time |cffffffff%.2f|r ms   \n"
					.."(found: %s)",
					(code or "nil"),
					Lib.calculation_step,Lib.debug_frames_total,
					Lib.debug_count_compares,Lib.debug_time.cheapest,opened_count,closed_count,

					Lib.debug_time.cheapest, Lib.debug_time.initial, Lib.debug_time.neighoverhead, Lib.debug_time.neighblah, Lib.debug_time.scoring, Lib.debug_time.adding, --Lib.debug_time.closed, Lib.debug_time.final,

					Lib.debug_time.initpath, Lib.debug_time.allcalc, Lib.debug_time.all,

					Lib.success_endnode and "YES" or "NO"

					)
				end

				if code=="SUCCESS" and Lib.FORCE_FAILURE then self.success_endnode.cost = COST_FAILURE+123 end

				-- Detect soft failure - path was found, but unacceptably long.
				if code=="SUCCESS" and self.success_endnode and self.success_endnode.cost>=COST_FAILURE and not self.debug_forcepath then
					Lib:Debug("Path found has cost %d, that's unacceptable. Failing. Storing failed path in Lib.RESULTS_FAIL",self.success_endnode.cost)
					Lib.RESULTS_FAIL = self:BuildResults(self.success_endnode)
					code="END"
				end


				if code=="PENDING" then
					--## Show waiting animation.
					if not self.quiet and not self.success_endnode and self.PathFoundHandler then
						tmp_progress.progress = time_slot*0.02
						self.PathFoundHandler("progress",nil,tmp_progress)
					else
						-- just stay quiet
					end
				elseif code=="SUCCESS" then
					--Lib:Debug("Path found in %s frames, %d calcs, %.1f ms.", Lib.debug_frames_total,Lib.calculation_step,Lib.debug_time.all)
					self:ReportPath(self.success_endnode)
					self:Cleanup() -- does nothing so far
				elseif code=="END" then
					--[[
					if self.success_endnode then
						--self:ReportPath(self.success_endnode)
						self:ReportPath(self.success_endnode)
						if self.can_optimize_for_end then self.optimizing_for_end = true end
					else
					--]]
					Lib:Debug("Path FAILED in %s frames, %d calcs, %.1f ms.", Lib.debug_frames_total,Lib.calculation_step,Lib.debug_time.all)
					self:ReportFail("Destination unreachable.")
					--[[
					end
					--]]
					self:Cleanup() -- does nothing so far
				elseif code=="ERROR" then
					Lib:Debug("Path ERROR in %s frames, %d calcs, %.1f ms.", Lib.debug_frames_total,Lib.calculation_step,Lib.debug_time.all)
					self:ReportFail("Error finding path.")
				else
					error("WTF_CALC? Code "..code.." endnode "..(self.success_endnode and "YES" or "NO"))
				end

				--ZGV:Debug("&LibRover Ela %.2f, sec_per %.2f, Time slot: %.2f, taken: %.2f, covered %d steps", elapsed*1000,sec_per_frame*1000, time_slot,time_slot-time_slot_remaining,self.calculation_step)

				--print("Processed "..count.." nodes"..(self.calculating and "" or " - DONE"))

				if perframethrot<0 or not self.calculating then perframethrot=0 end

				lastupdate = 0

			elseif self.updating and not self.delayed_by_taxi and not InCombatLockdown() and lbm and not ZGV.db.profile.disable_travel_updates then

				if UnitOnTaxi("player") or self.unitOnTaxi then
					-- Trickiness. Restart path searching, with a different starting point: at the taxi destination.
					-- FindPath was called above, but that doesn't matter much - we're just injecting something into the start node.
					if not self.force_next and not self.force_next_failed then self.force_update_now=true else lastupdate=-5 end
					self.force_next = LibTaxi.LastTaxi and LibTaxi.LastTaxi.node
					self.force_next_failed = not self.force_next
					lax=-998

					--self.PathFoundHandler("progress",nil,{progress=self.calculation_step*0.02})
				else
					self.force_next = self.force_next_manual
				end

				-- normal
				--self.taxisuggested=false

				-- TODO: This routine is just wrong. It should only follow what an earlier UpdateNow call ordained, and yet it prescribes an all new movement-based update...

				lastupdate = lastupdate + elapsed
				if lastupdate>self.update_interval then
					elapsed_for_update = elapsed_for_update+elapsed
					if elapsed_for_update>UPDATE_FREQ then
						elapsed_for_update=0
						local moved=false
						if self.unitOnTaxi then moved=true end -- force slight move
						if not moved then
							local x,y,m,f = LibRover:GetPlayerPosition()
							if not x or not y then return end -- we're NOT working in mapless places.
							local dist = Mdist(m,x,y,lam,lax,lay)
							if dist and dist>50 then
								--self:Debug("Player moved above %d yd!",dist)
								moved=true
							else
								--self:Debug("Player moved only %d yd, meh.",dist)
							end
						end
						if moved then
							self:Debug("Player moved over 50 yd in the last %d seconds, updating route, quietly.",Lib.update_interval)
							self.pathfinding_speed_override = ZGV.db.profile.pathfinding_speed/5
							self.quiet=true
							self.force_update_now=true
						end
					end
				end

				if self.force_update_now then
					self.force_update_counter = (self.force_update_counter or 0) + 1
					if self.force_update_counter>50 then
						-- retry, in case we started pathfinding while still on loading screen
						self:Debug("Force update: retrying limit reached. Disabling force update.")
						self.force_update_now = false
						self.force_update_counter = 0
						return
					end
					-- self.quiet=false -- leave it to the caller to set.

					local x,y,m
					if self.startnode then
						if self.startnode.player then
							x,y,m = LibRover:GetPlayerPosition()
							if not x or not y then
								self:Debug("Force update: current location is unknown (%s %s %s). May retry: %d/50.",tostring(x),tostring(y),tostring(m),self.force_update_counter)
								return
							end -- we're NOT working in mapless places.
						else
							x,y,m = self.startnode.x,self.startnode.y,self.startnode.m
						end
					else
						self:Debug("Can't force update from an unknown start point!")
						return
					end
					self.force_update_now=false
					self:Debug("Force update: updating!")
					self:FindPath(m,x,y,lbm,lbx,lby,self.PathFoundHandler, self.extradata,nil, self.quiet)
					lastupdate=0
				end
			end

			--[[
			-- Check for how long they've been immobile. Use this for path recalculation.
			if GetUnitSpeed("player")>0 then
				self.standing_still_time = 0
			else
				self.standing_still_time = self.standing_still_time + 1
			end

			if self.standing_still_time>1 then
				self.update_interval = 1
			else
				self.update_interval = 30
			end
			--]]
		end

		--local flylink={mode="fly"}  -- DO NOT USE, breaks cachins.
		--Lib.hearthlink = {mode="hearth",cost=55}  -- down from 150, as it kept preferring a taxi to a hearth. Down from 60 to make it occur more often while leveling.
		--Lib.astralrecall = {mode="astralrecall",cost=30}

		function Lib:Abort(whence,quiet)
			whence=whence or "somewhere"
			self:Debug("Aborting from: %s.",whence)
			wipe(Lib.delayeddata)
			self:CancelTimer(self.delayfindpath_timer)
			self.delayfindpath_timer = nil

			if quiet then self.updating=false end -- act as if nothing got aborted
			local was_updating = self.updating
			self.updating=false
			self.calculating=false
			self.thread=nil
			lam,laf,lax,lay,lbm,lbf,lbx,lby = nil
			if was_updating and ZGV and ZGV.Pointer and ZGV.Pointer.PathFoundHandler then ZGV.Pointer.PathFoundHandler("aborted") end
		end

		function Lib:Stop()
			self.calculating=false
			self.thread=nil
			self:Debug("stopping gracefully, will update")
		end

		Lib.maxspeedinzone={}
		local default_speeds={1,1,0}
		setmetatable(Lib.maxspeedinzone,{__index=function(t,i) return default_speeds end})

		function Lib.HasBuff(name,id)
			local name, _, _, _, _, _, _, _, _, _, spellID = UnitBuff("player",name)
			if spellID == id then
				return true
			end
			return false
		end




		function Lib.HasAchievement(id)
			return select(4,GetAchievementInfo(id))
		end
		local HasAchievement=Lib.HasAchievement

		local last_speed_check=0

		function Lib:CheckMaxSpeeds()
			local time=GetTime()
			if time-last_speed_check<1 then return end
			last_speed_check=time
			
			local playerlevel = UnitLevel("player")

			local SP_APPRENTICE_RIDING = IsSpellKnown(33388)
			local SP_JOURNEYMAN_RIDING = IsSpellKnown(33391)
			local SP_EXPERT_RIDING = IsSpellKnown(34090)
			local SP_ARTISAN_RIDING = IsSpellKnown(34091)
			local SP_MASTER_RIDING = IsSpellKnown(90265)
			local SP_DRAENOR_PATHFINDER = IsSpellKnown(191645)
			local SP_BROKEN_ISLES_PATHFINDER_1 = IsSpellKnown(226342)
			local SP_BROKEN_ISLES_PATHFINDER_2 = IsSpellKnown(233368)
			local SP_BFA_PATHFINDER_1 = IsSpellKnown(281576)
			local SP_BFA_PATHFINDER_2 = IsSpellKnown(278833)
			local SP_GUILDPERK_MOUNTUP = IsSpellKnown(78633)

			local SP_LICENCE_WOTLK = IsSpellKnown(54197)
			local SP_LICENCE_CATA = IsSpellKnown(90267)
			local SP_LICENCE_PANDARIA = IsSpellKnown(115913)

			local BONUS_BROKEN_ISLES_PATHFINDER_1 = SP_BROKEN_ISLES_PATHFINDER_1 and 0.2 or 0
			local BONUS_BFA_PATHFINDER_1 = SP_BFA_PATHFINDER_1 and 0.2 or 0
			local BONUS_GUILDPERK_MOUNTUP = SP_GUILDPERK_MOUNTUP and 0.1 or 0

			local Q_BLESSING_OF_THE_STAG = IsQuestFlaggedCompleted(13567)
			local Q_MEMORIES_SUNLESS_SKIES = IsQuestFlaggedCompleted(63893)

			local groundspeed =
				       ((SP_JOURNEYMAN_RIDING or SP_ARTISAN_RIDING or SP_EXPERT_RIDING or SP_MASTER_RIDING) and (1 + 1.0)) -- +100%
				    or (SP_APPRENTICE_RIDING and (1 + 0.6)) -- +60%
				    or 1

			local flyspeed = 
				       (SP_MASTER_RIDING and (1 + 3.1))  -- +310%
				    or (SP_ARTISAN_RIDING and (1 + 2.8)) -- +280%
				    or (SP_EXPERT_RIDING and (1 + 1.5))  -- +150%
				    or 0

			local canfly = flyspeed>0
			local canfly_in_azeroth = canfly and (Lib.IsRetail or SP_LICENCE_CATA)
			local canfly_in_northrend = canfly and (Lib.IsRetail or SP_LICENCE_WOTLK)
			local canfly_in_pandaria = canfly and (Lib.IsRetail or SP_LICENCE_PANDARIA)
			local canfly_in_draenor = canfly and playerlevel>=20 and (SP_EXPERT_RIDING or SP_ARTISAN_RIDING or SP_MASTER_RIDING)-- and SP_DRAENOR_PATHFINDER
			local canfly_in_legion = canfly and playerlevel>=20 and (SP_EXPERT_RIDING or SP_ARTISAN_RIDING or SP_MASTER_RIDING)-- and SP_BROKEN_ISLES_PATHFINDER_2 -- Broken Isles Pathfinder 2
			local canfly_in_bfa = canfly and playerlevel>=20 and SP_BFA_PATHFINDER_2 -- BfA Pathfinder 2
			local canfly_in_sl = canfly and Q_MEMORIES_SUNLESS_SKIES

			if ZGV and ZGV.db then  -- debug overrides
				flyspeed=ZGV.db.profile.debug_librover_maxspeed or flyspeed
				if ZGV.db.profile.debug_librover_flightdraenor~=nil then canfly_in_draenor=ZGV.db.profile.debug_librover_flightdraenor end
				if ZGV.db.profile.debug_librover_flightlegion~=nil then canfly_in_legion=ZGV.db.profile.debug_librover_flightlegion end
				if ZGV.db.profile.debug_librover_flightbfa~=nil then canfly_in_bfa=ZGV.db.profile.debug_librover_flightbfa end
				if ZGV.db.profile.debug_librover_flightsl~=nil then canfly_in_sl=ZGV.db.profile.debug_librover_flightsl end
			end

			Lib.speeds = {
				["Azeroth"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), canfly_in_azeroth and flyspeed or 0},
				["Outland"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), flyspeed }, --Outland (flying)
				["Northrend"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), canfly_in_northrend and flyspeed or 0},
				["Pandaria"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), canfly_in_pandaria and flyspeed or 0},
				["Draenor"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), canfly_in_draenor and flyspeed or 0 },
				["Legion"] = { groundspeed + max(BONUS_BROKEN_ISLES_PATHFINDER_1,BONUS_GUILDPERK_MOUNTUP), canfly_in_legion and flyspeed or 0 },
				["Argus"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP), 0 }, -- no flying here
				["Zandalar"] = { groundspeed + max(BONUS_BFA_PATHFINDER_1,BONUS_GUILDPERK_MOUNTUP), canfly_in_bfa and flyspeed or 0 },
				["KulTiras"] = { groundspeed + max(BONUS_BFA_PATHFINDER_1,BONUS_GUILDPERK_MOUNTUP), canfly_in_bfa and flyspeed or 0 },
				["Nazjatar"] = { groundspeed + max(BONUS_BFA_PATHFINDER_1,BONUS_GUILDPERK_MOUNTUP), canfly_in_bfa and flyspeed or 0 },
				["Shadowlands"] = { groundspeed + max(BONUS_GUILDPERK_MOUNTUP) , canfly_in_sl and flyspeed or 0 },
			}

			Lib.debug_maxspeeds = {
				['SP_APPRENTICE_RIDING']=SP_APPRENTICE_RIDING,
				['SP_JOURNEYMAN_RIDING']=SP_JOURNEYMAN_RIDING,
				['SP_ARTISAN_RIDING']=SP_ARTISAN_RIDING,
				['SP_EXPERT_RIDING']=SP_EXPERT_RIDING,
				['SP_MASTER_RIDING']=SP_MASTER_RIDING,
				['SP_DRAENOR_PATHFINDER']=SP_DRAENOR_PATHFINDER,
				['SP_BROKEN_ISLES_PATHFINDER_1']=SP_BROKEN_ISLES_PATHFINDER_1,
				['SP_BROKEN_ISLES_PATHFINDER_2']=SP_BROKEN_ISLES_PATHFINDER_2,
				['SP_BFA_PATHFINDER_1']=SP_BFA_PATHFINDER_1,
				['SP_BFA_PATHFINDER_2']=SP_BFA_PATHFINDER_2,
				['SP_GUILDPERK_MOUNTUP']=SP_GUILDPERK_MOUNTUP,
				['Q_BLESSING_OF_THE_STAG']=Q_BLESSING_OF_THE_STAG,
				['groundspeed']=groundspeed,
				['flyspeed']=flyspeed,
				['canfly']=canfly,
				['canfly_in_azeroth']=canfly_in_azeroth,
				['canfly_in_northrend']=canfly_in_northrend,
				['canfly_in_pandaria']=canfly_in_pandaria,
				['canfly_in_draenor']=canfly_in_draenor,
				['canfly_in_legion']=canfly_in_legion,
				['canfly_in_bfa']=canfly_in_bfa,
				['canfly_in_sl']=canfly_in_sl,
			}

			local zonemeta=Lib.data.ZoneMeta
			for zoneid=1,3000 do
				local system = ZGV.GetMapContinent(zoneid)
				local meta = zonemeta[zoneid]
				if (system and Lib.ZoneIsOutdoor(zoneid)) or (meta.flyable==true) then
					local run,fly
					local bonus=0.0
					if system==MAPENUM["EASTERNKINGDOMS"] or system==MAPENUM["KALIMDOR"] or system==MAPENUM["DEEPHOLM"] then run,fly=unpack(Lib.speeds["Azeroth"])
					elseif system==MAPENUM["OUTLAND"] then run,fly=unpack(Lib.speeds["Outland"])
					elseif system==MAPENUM["NORTHREND"] then run,fly=unpack(Lib.speeds["Northrend"])
					elseif system==MAPENUM["PANDARIA"] then run,fly=unpack(Lib.speeds["Pandaria"])
					elseif system==MAPENUM["DRAENOR"] then run,fly=unpack(Lib.speeds["Draenor"])
					elseif system==MAPENUM["BROKENISLES"] then run,fly=unpack(Lib.speeds["Legion"])
					elseif system==MAPENUM["ARGUS"] then run,fly=unpack(Lib.speeds["Argus"])
					elseif system==MAPENUM["ZANDALAR"] then run,fly=unpack(Lib.speeds["Zandalar"])
					elseif system==MAPENUM["KULTIRAS"] then run,fly=unpack(Lib.speeds["KulTiras"])
					elseif system==MAPENUM["NAZJATAR"] then run,fly=unpack(Lib.speeds["Nazjatar"])
					elseif system==MAPENUM["SHADOWLANDS"] then run,fly=unpack(Lib.speeds["Shadowlands"])
					else run,fly=1,0 end

					if meta.flyable==false then fly=0
					elseif meta.vashjir then fly=2.4  -- seahorses are fast
					elseif zoneid==62 and Q_BLESSING_OF_THE_STAG and run<1.55 then run=run+0.1 -- only apply to walking and travel form
					end

					Lib.maxspeedinzone[zoneid]={ max(run,fly), run, fly }
				end
			end

			LibRover_Node:CacheMaxSpeeds()
		end

		local has_flying_mount=false -- cached for 60 seconds (see below).
		function Lib:CanFlyAt(map)  -- unused?
			return Lib.maxspeedinzone[map][3]>0 and (has_flying_mount or Lib:HasFlyingMount())
		end

		local last_checked=GetTime()  -- unused?
		function Lib:HasFlyingMount()
			if Lib.IsClassic then return false end
			if Lib.IsClassicTBC or Lib.IsClassicWOTLK then return true end 
			if GetTime()-last_checked<60 then return has_flying_mount end
			last_checked=GetTime()

			C_MountJournal.GetNumDisplayedMounts()
			for i=1,C_MountJournal.GetNumDisplayedMounts() do
				local mountID = select(12,C_MountJournal.GetDisplayedMountInfo(i))
				local mountType = select(5,C_MountJournal.GetMountInfoExtraByID(mountID))
				if mountType==247 or mountType==248 then
					has_flying_mount=true
					return true
				end
			end
		end

		local function warn(message)
			local _, ret = pcall(error, message, 3)
			geterrorhandler()(ret)
		end

		Lib.DarkshoreCatSpells = { --Spell are gathered from UNIT_SPELLCAST_SUCCEEDED and indicate the destination.
			--[[ -- no longer valid for classic/tbc
			[64403] = "Darkshore Cat 3", -- 1->3
			[64408] = "Darkshore Cat 5", -- 2->5
			[64409] = "Darkshore Cat 1", -- 3->1
			[64410] = "Darkshore Cat 2", -- 5->2
			[65152] = "Darkshore Cat 4", -- 3->4
			[65153] = "Darkshore Cat 1", -- 4->1
			--]]
		}

		Lib.last_zone_event = 0

		local function onEvent(this, event, arg1, arg2, arg3, arg4, arg5)
			local Lib=Lib
			local self=Lib

			if not Lib.ready then return end

			if event=="ACHIEVEMENT_EARNED" or event=="LEARNED_SPELL_IN_TAB" or event=="RECEIVED_ACHIEVEMENT_LIST" then
				Lib:CheckMaxSpeeds()
			elseif event == "UNIT_ENTERING_VEHICLE"
			 and UnitVehicleSkin("player")=="INTERFACE\\PLAYERACTIONBARALT\\NATURAL.BLP"
			 and ZGV.GetCurrentMapID()==62 then -- fixed mapid for bfa
				Lib:Debug("We're flying!(kinda)")
				Lib.unitOnTaxi=true
				Lib:UpdateNow()
			elseif event=="UNIT_SPELLCAST_SUCCEEDED" and Lib.DarkshoreCatSpells[arg3] then
				LibTaxi.LastTaxi = {fullname = Lib.DarkshoreCatSpells[arg3]..", Darkshore"}
				LibTaxi.LastTaxi.node = LibTaxi:FindTaxi(Lib.DarkshoreCatSpells[arg3])
				if LibTaxi.LastTaxi.node then
					LibTaxi.LastTaxi.name,LibTaxi.LastTaxi.zone = LibTaxi.LastTaxi.node.name,ZGV.GetMapNameByID(LibTaxi.LastTaxi.node.m)
				else
					LibTaxi.LastTaxi.name,LibTaxi.LastTaxi.zone = LibTaxi.LastTaxi.fullname:match("(.*), (.*)")
				end

			--elseif event=="WORLD_MAP_UPDATE" then
				--lastupdate = 999  -- soft force update; this happens too often

			elseif event=="ZONE_CHANGED" or event=="ZONE_CHANGED_NEW_AREA" or event=="ZONE_CHANGED_INDOORS" or event=="LOADING_SCREEN_DISABLED" then
				-- instant update
				Lib:Debug("Got event %s, updating",event)
				--print("LibRover: Got event",event,", updating")
				--Lib:RecordVindicaar() --use realtime map check now
				Lib:UpdateNow("quiet",ZGV.db.profile.pathfinding_speed/3) -- hard force update, but quiet
			
			elseif event=="NEW_WMO_CHUNK" then
				-- smart update; WMO chunks are sometimes small and cause series of updates
				local tm=GetTime()
				local MAX_ZONE_CHANGE_FREQ = 5
				if tm-self.last_zone_event>MAX_ZONE_CHANGE_FREQ then
					Lib:Debug("Got event %s, updating",event)
					Lib:UpdateNow("quiet",ZGV.db.profile.pathfinding_speed/3) -- hard force update, but quiet
					self.last_zone_event=tm
					self:ScheduleTimer(function()
						local lastago = GetTime()-Lib.last_zone_event
						Lib:Debug("Checking for map changes after %d sec, last was %d sec ago",MAX_ZONE_CHANGE_FREQ,lastago)
						if lastago<MAX_ZONE_CHANGE_FREQ then
							Lib:Debug("Worth rechecking.")
							Lib:UpdateNow("quiet",ZGV.db.profile.pathfinding_speed/3) -- hard force update, but quiet
						end
					end,5)
				else
					Lib:Debug("Got event %s, too hot (%ds of %ds), waiting",event,tm-self.last_zone_event,MAX_ZONE_CHANGE_FREQ)
					Lib.last_zone_event=tm
				end
			elseif (event=="UNIT_FLAGS" and arg1=="player") then
				local ontaxi = UnitOnTaxi("player")
				if old_ontaxi ~= ontaxi then
					old_ontaxi = ontaxi
					ZGV:SendMessage("ZYGOR_PLAYER_TAXI_CHANGED",ontaxi)

					if ontaxi then
						Lib:Debug("TAXI: We're flying!")
						Lib.unitOnTaxi=true
					else  --getting off a taxi or vehicle
						Lib:Debug("TAXI: Got off taxi.")
						Lib.unitOnTaxi=false
						Lib.delayed_by_taxi=nil
						Lib.force_next = false  -- better overdo it this way than underdo it and leave player in "arrive at" mode
					end
					Lib:UpdateNow()
				end
			end
		end

		function Lib:IsVindicaarIn(name)  -- map ids fixed for bfa
			local map = ZGV.GetCurrentMapID()
			if name=="Eredath" then return map==882 or map==883 or map==884 end
			if name=="Antoran Wastes" then return map==885 or map==886 or map==887 end
			if name=="Krokuun" then return not (map==882 or map==883 or map==884 or map==885 or map==886 or map==887) end
		end

		function Lib:GetVindicaarPosition()  -- map ids fixed for bfa
			local map = ZGV.GetCurrentMapID()
			if (map==882 or map==883 or map==884)  then return "Eredath" end
			if (map==885 or map==886 or map==887)  then return "Antoran Wastes" end
			return "Krokuun"
		end

		Lib.frame = LibRoverFrame or CreateFrame("Frame", "LibRoverFrame")
		Lib.frame:RegisterEvent("ADDON_LOADED") -- register the rest later
		Lib.frame:SetScript("OnEvent", onEvent)

		function Lib:ShowAllNodes(nodetype,do_spoo)
			nodetype=nodetype or "all"
			local ret={}
			local m = WorldMapFrame:GetMapID()
			for ni,n in ipairs(Lib.nodes[nodetype]) do
				if n.m==m then
					local icon_by_status = {closed="ant_ship", open="ant_portal", ['nil']="ant"}
					if do_spoo then tinsert(ret,n) else ZGV.Pointer:SetWaypoint(n.m,n.x,n.y,{title="|cff9999aa"..n:tostring(true):gsub("%(state","|n(state").."|r",qqtruesize=n.radius or 200,icon=ZGV.Pointer.Icons[icon_by_status[n.status or "nil"]],debugnodes=1,pathnode=n,overworld=true,}) end
				end
			end
			if do_spoo then Spoo(nil,nil,ret) end
		end

		function Lib:DEV_ShowAllWalls()
			local mapid = WorldMapFrame:GetMapID()
			for wi,wall in ipairs(Lib.walls[mapid] or {}) do
				for si,seg in ipairs(wall.segments) do
					ZGV.Pointer:SetWaypoint(mapid,seg[1],seg[2],{title=("wall %d/%d/a %.2f,%.2f"):format(wi,si,seg[1]*100,seg[2]*100),icon=ZGV.Pointer.Icons.ant,debugnodes=1,drawlineid=mapid*10000+wi*100+si})
					ZGV.Pointer:SetWaypoint(mapid,seg[3],seg[4],{title=("wall %d/%d/b %.2f,%.2f"):format(wi,si,seg[3]*100,seg[4]*100),icon=ZGV.Pointer.Icons.ant,debugnodes=1,drawlineid=mapid*10000+wi*100+si})
				end
			end
		end


		function Lib:GoSlow()
			hardmaxidle = 1
			hardmaxfirst = 1
		end

		function Lib:Debug(msg,...)
			ZGV:Debug("&_SUB &LibRover ".. msg, ...)
		end

		function Lib:IsWintergraspControlled()
			do return false end -- TODO: reimplement this with C_Map!
			if WorldMapFrame:IsVisible() then return false end  -- sinus: can't go changing the map when it's open!
			ZGV.WMU_Suspend()
			SetMapByID(501) --set map to Wintergrasp
			local ret=false
			for i=1,GetNumMapLandmarks() do
				local _, name, textureIndex
				-- [7.2 prep]
				if ZGV.Patch_7_2 then
					-- 7.2
					name,_,textureIndex,_,_ = C_WorldMap.GetMapLandmarkInfo(i);
				else
					-- 7.1.5
					name,_,textureIndex,_,_ = GetMapLandmarkInfo(i);
				end
				if ( name == "Wintergrasp Fortress") then
					if ( textureIndex == 79 ) then   -- old trunk had 77
						if UnitFactionGroup("player")=="Horde" then
							ret=true
							break
						end
					elseif ( textureIndex == 82 ) then   -- old trunk had 80
						if UnitFactionGroup("player")=="Alliance" then
							ret=true
							break
						end
					end
				end
			end
			SetMapToCurrentZone()
			ZGV.WMU_Resume()
			return ret
		end

		function Lib.ShowDebugMenu(parent,but)
			local self=Lib
			if not Lib.debugmenu then Lib.debugmenu = CreateFrame("FRAME","LibRoverDebugMenu",nil,"UIDropDownForkTemplate") end
			UIDropDownFork_SetAnchor(Lib.debugmenu, 0, 0, "TOP", parent, "BOTTOM")

			if not Lib.debug_overlayrect then Lib.debug_overlayrect = ZGV.ChainCall(ZygorGuidesViewerPointerOverlay:CreateTexture()):SetColorTexture(0,1,0,0.5).__END end

			local mapid = WorldMapFrame:GetMapID()
			local subzones_src
			if C_Map and C_Map.GetMapChildrenInfo then
				subzones_src = C_Map.GetMapChildrenInfo(mapid,nil)
			end
			local subzones_menu = {}
			local current_level = subzones_menu
			if subzones_src then
				for i,map in ipairs(subzones_src) do
					if i%40==0 then -- next level of menu!
						local next_level = {}
						tinsert(current_level,{
							text="more...",
							notCheckable=true, hasArrow=true, menuList = next_level, keepShownOnClick=true
						})
						current_level=next_level
					end
					local m,f = unpack(Lib.data.MapNamesByID[map.mapID] or {})
					local truename = ZGV.GetMapFloorNameByID(map.mapID)
					tinsert(current_level,{
						text=(f and m.."/"..f..": " or "") .. map.name.." ## "..map.mapID .. (truename~=map.name and " ("..truename..")" or ""),
						value=map.mapID,
						notCheckable=true,
						onEnterFunc = function(self)
							local x1,x2,y1,y2
							if C_Map and C_Map.GetMapRectOnMap then
								x1,x2,y1,y2 = C_Map.GetMapRectOnMap(self.value,mapid)
							else
								x1,x2,y1,y2 = 0,1,0,1
							end
							ZGV.ChainCall(Lib.debug_overlayrect)
								:ClearAllPoints()
								:SetPoint("TOPLEFT",x1*Lib.debug_overlayrect:GetParent():GetWidth(),-y1*Lib.debug_overlayrect:GetParent():GetHeight())
								:SetPoint("BOTTOMRIGHT",-(1-x2)*Lib.debug_overlayrect:GetParent():GetWidth(),(1-y2)*Lib.debug_overlayrect:GetParent():GetHeight())
								:Show()
						end,
						onLeaveFunc = function(self)
							Lib.debug_overlayrect:Hide()
						end,
						func=function(self)
							OpenWorldMap(self.value)
						end,
					})
				end
			else
				tinsert(subzones_menu,{text="none", notCheckable=true, isHeader=true})
			end

			local menu = {}
			--tinsert(menu,{ text = "aaa",  isTitle = true,notCheckable=true, })
			tinsert(menu,{ text = "Show nodes and connections", notCheckable=true, hasArrow=true, menuList = {
				{ text = "Hardwired", notCheckable=true, func=function() LibRover:ShowAllNodes() LibRover:DEV_ShowAllWalls() ZGV.Pointer.debug_drawlines_walkfly=false end },
				{ text = "ALL", notCheckable=true, func=function() LibRover:ShowAllNodes() LibRover:DEV_ShowAllWalls() ZGV.Pointer.debug_drawlines_walkfly=true end },
				{ text = "Explore in Spoo",  notCheckable=true, disabled=not Spoo, func=function() LibRover:ShowAllNodes(nil,"spoo") end, tooltipTitle=(not Spoo and "|cffff0000Spoo not loaded!"), tooltipWhileDisabled=true },
			}})
			tinsert(menu,{ text = "Explore nodes", notCheckable=true, hasArrow=true, menuList = {
				{ text = "ALL nodes",  notCheckable=true, disabled=not Spoo, func=function() Spoo(LibRover.nodes) end, tooltipTitle=(not Spoo and "|cffff0000Spoo not loaded!"), tooltipWhileDisabled=true },
				{ text = "Transport items",  notCheckable=true, disabled=not Spoo or not Lib.debug_portkeys, func=function() Spoo(Lib.debug_portkeys) end, tooltipTitle=(not Spoo and "|cffff0000Spoo not loaded!") or (not Lib.debug_portkeys and "|cffff0000No route calculated yet!"), tooltipWhileDisabled=true },
				{ text = "Explore node sources",  notCheckable=true, disabled=not Spoo, func=function() Spoo(LibRover.NODE_SOURCES) end, tooltipTitle=(not Spoo and "|cffff0000Spoo not loaded!"), tooltipWhileDisabled=true },
			}})
			tinsert(menu,{ text = "Is player in region..?",  notCheckable=true, disabled=not Spoo or not Lib.startnode, func=function() Spoo(LibRover:DebugRegionsForPlayer()) end, tooltipTitle=(not Spoo and "|cffff0000Spoo not loaded or no start point!"), tooltipWhileDisabled=true })
			tinsert(menu,{ text = "Show overlay info", notCheckable=true, hasArrow=true, menuList = {
				{ text = "max speeds",  checked=ZGV.db.profile.pointer_dev_showroverzoneinfo, func=function() ZGV.db.profile.pointer_dev_showroverzoneinfo=not ZGV.db.profile.pointer_dev_showroverzoneinfo end }
			}})
			tinsert(menu,{ text = "Debug bad nodes?",  isNotRadio=true, checked=LibRover.debug_badnodes, func=function() LibRover.debug_badnodes = not LibRover.debug_badnodes end })
			tinsert(menu,{ text = "Ignore node conditions?",  isNotRadio=true, checked=Lib.ignore_travel_conditions, func=function() Lib.ignore_travel_conditions = not Lib.ignore_travel_conditions Lib:UpdateNow() end })
			tinsert(menu,{ text = "Subzones of '"..ZGV.GetMapFloorNameByID(mapid).."':",  notCheckable=true, disabled=not subzones_src, hasArrow=not not subzones_src, menuList = subzones_menu, keepShownOnClick=true })
			tinsert(menu,{ text = "Test Flight Whistle", notCheckable=true, func=function() Lib.TaxiWhistlePredictor:PredictWhistle() Lib.TaxiWhistlePredictor:AnnouncePrediction() end })
			tinsert(menu,{ text = "Use fake starting point?", isNotRadio=true, checked=self.FAKE_STARTING_POINT_SETUP or self.FAKE_STARTING_POINT, func=function() Lib:SetupFakeStartingPoint() end})
			tinsert(menu,{ text = "Test: fake location in Garrison",  isNotRadio=true, checked=LibRover.garrison_fix_test, func=function() LibRover.garrison_fix_test = not LibRover.garrison_fix_test end })

			EasyFork(menu,Lib.debugmenu,nil,0,0,"MENU",10)
			UIDropDownFork_SetWidth(Lib.debugmenu, 300)
		end
				
		function Lib.ShowNodeDebugMenu(parent,node)
			local self=Lib
			if not Lib.debugmenu then Lib.debugmenu = CreateFrame("FRAME","LibRoverDebugMenu",nil,"UIDropDownForkTemplate") end
			UIDropDownFork_SetAnchor(Lib.debugmenu, 0, 0, "TOP", parent, "BOTTOM")

			local menu = {}
			--tinsert(menu,{ text = "aaa",  isTitle = true,notCheckable=true, })
			tinsert(menu,{ text = "Inspect node",  func=function()  assert(Spoo,"Spoo not found! Woe!")  Spoo(node) end })
			tinsert(menu,{ text = "Ban node",  checked=LibRover.banned_nodes[node], func=function() LibRover.banned_nodes[node]=not LibRover.banned_nodes[node] LibRover:Debug("Banned node: %s",node:tostring()) LibRover:UpdateNow() end })
			tinsert(menu,{ text = "Force through",  nocCheckable=true, func=function() LibRover.force_next_manual=node  LibRover:Debug("Forcing node: %s",node:tostring()) LibRover:UpdateNow() end })

			EasyFork(menu,Lib.debugmenu,nil,0,0,"MENU",10)
			UIDropDownFork_SetWidth(Lib.debugmenu, 300)
		end

		function LibRover:ShowStartupSummary()
			self.STARTUP_SUMMARY = {}
			for i,module in ipairs(startup_modules_order) do
				tinsert(self.STARTUP_SUMMARY,("%s in %.3fs"):format(type(module)=="string" and module or "-end-",self.startuptimes[module]/1000))
			end
			self:Debug("&lr_init Saved initialization summary in LibRover.STARTUP_SUMMARY")
		end

		function LibRover:SetupFakeStartingPoint()
			if self.FAKE_STARTING_POINT then
				self.FAKE_STARTING_POINT = nil
				self.FAKE_STARTING_POINT_SETUP = false
				ZGV:Print("Fake starting point removed.")
			else
				self.FAKE_STARTING_POINT = nil
				self.FAKE_STARTING_POINT_SETUP = true
				ZGV:Print("Shift-click the map to set a fake starting point.")
			end
		end

		function LibRover:DebugNodes(n1,n2,...)
			if n1=="clear" then print("DebugNodes cleared.") self.debug_fromtonodes=nil return self:DebugNodes(n2,...) end
			if type(n1)=="number" then n1=self.nodes['all'][n1] end
			if type(n2)=="number" then n2=self.nodes['all'][n2] end
			if n1=="start" then n1=self.nodes['start'][1] end
			if n2=="end" then n2=self.nodes['end'][1] end
			if type(n1)=="string" then n1=self:FindNode(n1)[1] end
			if type(n2)=="string" then n2=self:FindNode(n2)[1] end
			if not n1 or not n2 then return self end

			print("Node 1:",n1 and n1:tostring())
			print("Node 2:",n2 and n2:tostring())

			self.debug_fromtonodes = self.debug_fromtonodes or {}

			if n1 and n2 then
				tinsert(self.debug_fromtonodes,{n1.num,n2.num})

				local function yesno(b)
					if b==true then return "|cff00ff00yes|r"
					elseif b==false then return "|cffff5555no|r"
					elseif b then return "|cffff00ff"..tostring(b).."|r"
					else return "|cffffff00-|r"
					end
				end
				local function debugit(n1,n2)
					--local canfly,why = n1:CanFlyTo(n2)
					--print("Test: CanFly?",canfly and yes or no,";",why)
					--local canwalk,why = n1:CanWalkTo(n2,"debug")
					--print("Test: CanWalk?",canwalk and yes or no,";",why)
					local walk,fly,walkwhy,flywhy,mode = n1:DoLinkage(n2,true) --dry run
					if walkwhy and walkwhy:find("different continent") then print("c") walkwhy=walkwhy..((" (%s,%s)"):format(n1.c,n2.c)) end
					print(("Testing linkage:  can fly? %s,%s;  can walk? %s,%s;  link mode=%s"):format(yesno(fly),flywhy or "-",yesno(walk),walkwhy or "-",mode or "-"))
					local meta
					for fi,fou in ipairs(n1.n) do if fou[1]==n2 then meta=fou[2] break end end
					print("Currently linked? ",yesno(not not meta):upper(),", mode:",meta and meta.mode,", cost:",meta and meta.cost)
					print(("Distance: %.1f"):format(getdist(n1,n2)))
				end
				print("Connection "..n1.num.." |cffaaff00→|r "..n2.num..":");
				debugit(n1,n2)
				print("")
				print("Connection "..n1.num.." |cffffaa00←|r "..n2.num..":");
				debugit(n2,n1)
			else
				tinsert(self.debug_fromtonodes,{n1 and n1.num or 0,n2 and n2.num or 0})

				print("Node 1:",n1 and n1:tostring() or "any")
				print("Node 2:",n2 and n2:tostring() or "any")
			end

			if select("#",...)>0 then  print("-")  return self:DebugNodes(n2,...)  end
			return self
		end

		function LibRover:DebugPath(...)
			if not ... or (...=="clear") then
				self.debug_forcepath=nil
				print("|cffeeddaaLibRover DebugPath:|r Cleared.")
			else
				local debug_forcepath={}
				for i=1,select("#",...) do
				print("|cffeeddaaLibRover DebugPath|r set up:")
					local ni = select(i,...)
					local node
					if type(ni)=="string" then
						local nodes = self:FindNode(ni)
						if #nodes==0 then
							print("I have no idea what '",ni,"' is.")
							return
						elseif #nodes>1 then
							print(ni," is not specific enough. Use a node id:")
							for ni,node in ipairs(nodes) do
								print(node.num,"=",node:tostring())
							end
							return
						end
						node=nodes[1]
					else
						node=self.nodes.all[ni]
					end
					if not node then ZGV:Print(("No such node: %d"):format(ni)) break end
					print((" %d. %s"):format(i,node:tostring()))
					debug_forcepath[node]=i
				end
				debug_forcepath.n=select("#",...)
				self.debug_forcepath = debug_forcepath
			end
			self:UpdateNow()
			return self
		end

		function LibRover:DebugRegionsForPlayer()
			local ret = {{__name="Start: "..self.startnode:tostring(),self.startnode}}
			for ri,region in ipairs(self.NodeRegions) do
				local contains,why = region:Contains(self.startnode,1)
				tinsert(ret,{__name=("%s: %s, %s"):format(region.name,contains and "|cff00ff00YES|r" or "|cff880000no|r",why or "-"),region=region})
			end
			return ret
		end

		function LibRover:Explain()
			local types = {
				[Enum.UIMapType.Continent] = "Continent",
				[Enum.UIMapType.Dungeon] = "Dungeon",
				[Enum.UIMapType.Micro] = "Micro",
				[Enum.UIMapType.Zone] = "Zone",
				[Enum.UIMapType.Orphan] = "Orphan",
			}

			  
			local n1 = LibRover.nodes['start'][1]
			local n2 = LibRover.nodes['end'][1]

			local meta
			for fi,fou in ipairs(n1.n) do if fou[1]==n2 then meta=fou[2] break end end

			local n1_info = ZGV.GetMapInfo(n1.m)
			local n2_info = ZGV.GetMapInfo(n2.m)

			local n1_lrname = LibRover.data.MapNamesByID[n1.m][1]
			local n2_lrname = LibRover.data.MapNamesByID[n2.m][1]

			local n1_floor = LibRover.data.FloorByID[n1.m]
			local n2_floor = LibRover.data.FloorByID[n2.m]

			local n1parent_info = ZGV.GetMapInfo(n1_info.parentMapID)
			local n2parent_info = ZGV.GetMapInfo(n2_info.parentMapID)

			local n1continent = ZGV.GetMapContinent(n1.m)
			local n2continent = ZGV.GetMapContinent(n2.m)

			local n1continent_info = ZGV.GetMapInfo(n1continent)
			local n2continent_info = ZGV.GetMapInfo(n2continent)

			local outstring = ""

			outstring = outstring .. "\n" .. ("* %s %s/%d (mapid %d) %.1f,%.1f. Blizzard name of the map is %s.\nMap type is %s on continent %s (%s %d), with parent being %s (%s %d)."):format("You are on", n1_lrname, n1_floor, n1.m, n1.x*100,n1.y*100, n1_info.name, types[n1_info.mapType], n1continent_info.name, types[n1continent_info.mapType], n1.c, n1parent_info.name, types[n1parent_info.mapType], n1_info.parentMapID)
			outstring = outstring .. "\n" .. ("* %s %s/%d (mapid %d) %.1f,%.1f. Blizzard name of the map is %s.\nMap type is %s on continent %s (%s %d), with parent being %s (%s %d)."):format("Target is",  n2_lrname, n2_floor, n2.m, n2.x*100,n2.y*100, n2_info.name, types[n2_info.mapType], n2continent_info.name, types[n2continent_info.mapType], n2.c, n2parent_info.name, types[n2parent_info.mapType], n2_info.parentMapID)
			outstring = outstring .. "\n"
			outstring = outstring .. "\n" .. ("* Are points linked in LibRover? %s %s %s"):format(meta and "yes" or "no", meta and ("mode "..meta.mode) or "",meta and ("cost "..(meta.cost or "?")) or "")

			local canfly,reasonfly = n1:CanFlyTo(n2)
			local canwalk,reasonwalk,penalty = n1:CanWalkTo(n2)

			outstring = outstring .. "\n" .. ("* Does LibRover think you can WALK between them: %s (why: %s) %s"):format(tostring(canwalk),reasonwalk,penalty or "")
			outstring = outstring .. "\n" .. ("* Does LibRover think you can FLY between them: %s (why: %s)"):format(tostring(canfly),reasonfly or "")

			local headeradded = false
			if not ZGV.MapCoords.MAPDATA[n1.m] then
				outstring = outstring .. "\n" .. "Starting point map is missing from MAPDATA. This is bad, and needs devs attention."
			end
			if not ZGV.MapCoords.MAPDATA[n2.m] then
				outstring = outstring .. "\n" .. "Target point map is missing from MAPDATA. This is bad, and needs devs attention."
			end

			if n1.m~=n2.m then
				if n1_lrname==n2_lrname then
					outstring = outstring .. "\n" .. "> Points are on the same map, but not on the same floor. Check if correct floor is used, there is a connection defined between floors, or if that fails, if maps are green bordered."
				else
					outstring = outstring .. "\n" .. "> Points not on the same map. Check if correct map name is used."
				end
			end

			if n1.c~=n2.c then
				if n1_info.mapType==n2_info.mapType and (n1_info.mapType==Enum.UIMapType.Orphan or n1_info.mapType==Enum.UIMapType.Dungeon) then
					outstring = outstring .. "\n" .. "> Points not on the same continent, but are orphans or dungeons. Maybe switching map type to micro will solve this."
				else
					outstring = outstring .. "\n" .. "> Points not on the same continent. Devs will need to chime in."
				end
			end

			if n1_info.mapType==Enum.UIMapType.Orphan then
				outstring = outstring .. "\n" .. "> Start is an orphaned map. It will need to be corrected in mapcoords force_maptype."
			end
			if n2_info.mapType==Enum.UIMapType.Orphan then
				outstring = outstring .. "\n" .. "> Target is an orphaned map. It will need to be corrected in mapcoords force_maptype."
			end

			local goal
			if ZGV.Pointer.current_waypoint and ZGV.Pointer.current_waypoint.goal then
				goal = ZGV.Pointer.current_waypoint.goal
			else
				if ZGV.CurrentStep then
					for i,v in pairs(ZGV.CurrentStep.goals) do
						if v.m==n2.m and v.x==n2.x and v.y==n2.y then
							goal = v
						end
					end
				end
			end

			if goal and (goal.scenario_name or goal.scenario_stagenum or goal.scenario_criteriaid) then
				if not C_Scenario.IsInScenario() then 
					outstring = outstring .. "\n" .. "    Destination goal is within scenario, you have not started it"
				else
					outstring = outstring .. "\n" .. "    Destination goal is within scenario, maybe you need to teleport somewhere first"
				end
			end

			ZGV:ShowDump(outstring)
		end


		function LibRover:DebugBanLink(n1,n2,mode)
			if not n1 then self.debug_banlink=nil return end
			self.debug_banlink = self.debug_banlink or {}
			self.debug_banlink[n1.."_"..n2.."_"..mode]=true
			return self
		end

		function LibRover:DumpAllNodes(zone)
			zone = tonumber(zone) or self.data.MapIDsByName[zone] -- pure numeric zone? supported!
			ZGV:Timerize(
				function(self)
					local s = ("%s %s level %d. %d nodes (data v%d, cache v%d):\n"):format(UnitFactionGroup("player"),UnitClass("player"),UnitLevel("player"),#self.nodes.all,self.data.version.nodes_version,self.data.neighbourhood.version)

					if zone then s = s .. ("(zone %s only)\n"):format(ZGV.ZGV.GetMapNameByID(zone)) end

					ZGV:Print ("Preparing a listing of Travel System map nodes, please wait...")
					yield()

					local force_next,force_prev  -- enforce showing of node pairs when dumping a zone.
					for nn,node in ipairs(self.nodes.all) do  repeat
						if zone and self.nodes.all[nn+1] and zone==self.nodes.all[nn+1].m and self.nodes.all[nn+1].border==node then  force_prev=true  end
						if zone and zone~=node.m and not force_next and not force_prev  then break end  --continue
						force_next,force_prev=false,false
						s = s .. ("%04d. %s /%d %02d,%02d (%s) %s"):format(nn,ZGV.GetMapNameByID(node.m),node.f,node.x*100,node.y*100,node.type, (node.type=="taxi" or node.type=="inn") and node.name  or  (node.id and "@"..node.id)  or  "")
						if node.border == self.nodes.all[nn+1] then  s = s .. " - - "  force_next=true  else  s = s .. "\n"  end
						if nn%100==0 then yield() end
					until true  end
					ZGV:ShowDump(s,"Travel System map nodes listing:")
				end,
			self)
		end


		function LibRover:PathToString(path)
			if type(path)~="table" then return "-none-" end
			local s=""
			for i,node in ipairs(path) do
				if i>1 then s=s.."," end
				s=s .. node.num
			end
			s=s .. (" @ %.1fs"):format(path[#path].cost)
			return s
		end

		function LibRover:FindNode(map,f,x,y)
			if type(map)=="string" and not (f or x or y) then
				map,f,x,y = ZGV.Parser.ParseMapXYDist(map)
			else
				x=x/100
				y=y/100
			end
			local mapid = self.data.MapIDsByName[map] or tonumber(map)
			if not mapid then print("No such map!") end
			local ret={}
			for ni,node in ipairs(self.nodes.all) do
				if node.m==mapid and math.abs(node.x-x)<0.01 and math.abs(node.y-y)<0.01 then
					tinsert(ret,node)
				end
			end
			return ret
		end

		function LibRover:DumpNode(...)
			local ret = self:FindNode(...)
			if Spoo then
				Spoo(nil,nil,ret)
			else
				for i,node in ipairs(ret) do print(node:tostring()) end
			end
		end

		-- PUBLIC
		Lib.GetMapByNameFloorErrors = {}
		function Lib:GetMapByNameFloor(m,f,text)
			if not m then return false end

			if not f and type(m)=="string" and m:find("/") then 
				m,f = m:match("^(.-)%s*/%s*([0-9]+)")
				if f then f=tonumber(f) end
			end

			local zonedata = Lib.data.MapIDsByName[m]
			if not zonedata then text=text or  (m or "-").."/"..(f or "-").." ?"  Lib.GetMapByNameFloorErrors[m]="unknown map - "..text return false end

			local f = tonumber(f or zonedata.default or next(zonedata))
			if not zonedata[f] then text=text or  (m or "-").."/"..(f or "-").." ?"  Lib.GetMapByNameFloorErrors[m.."/"..f]="unknown map/floor - "..text return false end
			return type(zonedata[f])=="number" and tonumber(zonedata[f]) or zonedata[f],f
		end
	
		function Lib:GetFloorByMapID(m)
			if not m then return false end
			local mapdata = Lib.data.MapNamesByID[m]
			if not mapdata then 
				LibRover.UnknownFloors = LibRover.UnknownFloors or {}
				local mapdata = C_Map.GetMapInfo(m)
				if mapdata then
					local mapgroup = C_Map.GetMapGroupID(m)
					LibRover.UnknownFloors[mapdata.name] = {m,mapgroup}
					Lib.data.MapNamesByID[m] = {mapdata.name, 0}
					Lib.data.MapIDsByName[mapdata.name] = {[0]=m}

					local o=""
					for i,v in pairs(LibRover.UnknownFloors) do
						o=o.."\n[\""..i.."\"] = {[0]="..v[1].."},"..(v[2] and " -- mapgroup "..v[2] or "")
					end
					ZGV:ShowDump("Warning, looking for map "..m.." that is not known. Temporary assigning "..mapdata.name..", it may change later. Please give following to devs:\n"..o)
					
					return 0
				end
			end
			if mapdata then
				return mapdata[2]
			else
				return 0
			end
		end

		function Lib:RecordFakeCoords(x,y)
			Lib.FakeDungeonX = x
			Lib.FakeDungeonY = y
		end




		function Lib:GetPlayerPosition()
			local map = C_Map.GetBestMapForUnit("player")
			local instance = ZGV.db.char.fakeinstance or select(8,GetInstanceInfo())
			if not map and instance and Lib.data.InstanceMaps[instance] then 
				return 0,0,Lib.data.InstanceMaps[instance]
			end

			if not map then return 0,0,0 end
			local remap = LibRover.data.RemapData

			local pos,pos_y = C_Map.GetPlayerMapPosition(map,"player")
			local x,y
			
			if type(pos)=="table" then
				x,y=pos.x,pos.y
			elseif type(pos)=="number" and type(pos_y)=="number" then
				x,y=pos,pos_y
			else
				--try a fallback
				y,x=UnitPosition("player")
				if x then x,y = ZGV.HBD:GetZoneCoordinatesFromWorld(x,y,map,false) end
			end

			-- we may want to force parts of map to be treated like it was on another map, regardless of what system tells us
			-- for example scarlet monastery scenario
			local remapfrom,remapnum
			if remap[map] then
				local uy,ux,uz,ui = UnitPosition("player")

				if ux and uy then
					for _,remapdata in ipairs(remap[map]) do
						if (not remapdata.cond or remapdata.cond()) and (uy<=remapdata.top and remapdata.bottom<=uy and ux<=remapdata.left and remapdata.right<=ux) then
							x,y = ZGV.HBD:GetZoneCoordinatesFromWorld(ux,uy,remapdata.target,true)
							if remapdata.offsetx then
								x = x + remapdata.offsetx
								y = y + remapdata.offsety
							end
							remapfrom,remapnum = map,_
							map = remapdata.target
							break
						end
					end
				end
			end
			
			-- fake coords for WoD garrisons, default to middle of the map if no Garrison inn is present, or if inn nodes have not been set up yet
			if (map==582 or map==590) and not x then 
				local inn = Lib.FindGarrisonBindLocation and Lib.FindGarrisonBindLocation("silent")
				return Lib.FakeDungeonX or (inn and inn.x) or 0.5,Lib.FakeDungeonY or (inn and inn.y) or 0.5,map,nil,nil,"VIRTUAL" 
			end
			
			if not x then return Lib.FakeDungeonX or 0,Lib.FakeDungeonY or 0,map end

			return x,y,map,remapfrom,remapnum
		end

		local ENUM_UIMAPTYPE_ZONE = Enum.UIMapType.Zone
		local ENUM_UIMAPTYPE_CONTINENT = Enum.UIMapType.Continent
		function Lib.ZoneIsOutdoor(mapid)
			local mapdata = ZGV.GetMapInfo(mapid)
			return mapdata and (mapdata.mapType==ENUM_UIMAPTYPE_ZONE or mapdata.mapType==ENUM_UIMAPTYPE_CONTINENT)
		end


		do -- Tests
			function Lib:RelocalizeFunctions(fun,fun2) 
				IsQuestFlaggedCompleted=fun 
				IsSpellKnown = fun2
			end

			LibRover.Tests = {}

			LibRover.Tests.TestProto = {}

			function LibRover.Tests.TestProto:New(name, m1,f1,x1,y1, m2,f2,x2,y2, settings, expected_result)
				if type(m1)=="string" then m1=LibRover.data.MapIDsByName[m1] end
				if type(m2)=="string" then m2=LibRover.data.MapIDsByName[m2] end
				if type(m1)=="table" then m1=m1[1] end
				if type(m2)=="table" then m2=m2[1] end
				if x1>1 then x1=x1/100 end
				if y1>1 then y1=y1/100 end
				if x2>1 then x2=x2/100 end
				if y2>1 then y2=y2/100 end

				return setmetatable({name=name,
					m1=m1,f1=f1,x1=x1,y1=y1,
					m2=m2,f2=f2,x2=x2,y2=y2,
					settings=settings, expected_result=expected_result,
					status=nil},{__index=LibRover.Tests.TestProto})
			end

			function LibRover.Tests.TestProto:ToString()
				return ("Test %s (%s): %s %s (t=%d+%d=%d)"):format(
					self.name,(self.status or "pending"),
					self.path and LibRover:PathToString(self.path) or "-no path-",  self.reason or "-no reason-",
					self.calc_time_initpath, self.calc_time_allcalc, self.calc_time_all)
			end

			function LibRover.Tests.TestProto:Run(callback)
				local function test_callback(status,path,extra,reason)
					if status=="progress" then return end

					-- sign off on path
					local test=extra.test

					test.reason = reason  -- if there is one
					test.path = path
					test.status = status
					test.calc_time_initpath = LibRover.debug_time.initpath
					test.calc_time_allcalc = LibRover.debug_time.allcalc
					test.calc_time_all = LibRover.debug_time.all

					LibRover.updating = false

					if callback then callback(test) end
				end

				if self.settings.faction~=myfac then return test_callback("failure",nil,{test=self},"wrong faction test") end
				if self.settings.riding then ZGV.db.profile.debug_librover_maxspeed=self.settings.riding end
				if self.settings.flight then
					if self.settings.flight.Azeroth then ZGV.db.profile.debug_librover_flightazeroth=true end
					if self.settings.flight.Northrend then ZGV.db.profile.debug_librover_flightcold=true end
					if self.settings.flight.Pandaria then ZGV.db.profile.debug_librover_flightpandaria=true end
					if self.settings.flight.Draenor then ZGV.db.profile.debug_librover_flightdraenor=true end
					if self.settings.flight.Legion then ZGV.db.profile.debug_librover_flightlegion=true end
				end

				Lib:QueueFindPath(
					self.m1,self.x1,self.y1,
					self.m2,self.x2,self.y2,
					test_callback,
					{test=self}
				)
			end

			function LibRover.Tests.TestProto:RunPrint()
				self:Run(function(test)
					print(test:ToString())
				end)
			end

			function LibRover.Tests:RunTests(tests,final_callback)
				local next_test_callback,run_next_test
				
				next_test_callback=function()
					-- find next test and run it
					if (run_next_test()) then return end

					-- no test ran? Finish him!
					final_callback(tests)
				end

				run_next_test = function()
					for i,test in ipairs(tests) do
						if not test.status then
							print("starting",test.name,test.status)
							test:Run( --[[ and come back to --]] next_test_callback)
							return true
						end
					end
				end

				run_next_test()
			end

			function LibRover.Tests:RunTestSet(number)
				number=number or 1

				cond_env.UnitLevel = function() return 110 end

				local testsets = {
					[1] = {
						LibRover.Tests.TestProto:New(
							"#1",
							"Shadowglen",0,50,50, "Blasted Lands",0,50,50,
							{faction="H",riding=1,flight={Azeroth=1}},
							"1,2,3,4 blaaa"),
						LibRover.Tests.TestProto:New(
							"#2",
							"Deathknell",0,50,50, "Uldum",0,50,50,
							{faction="H"}, -- walk
							"blabla"),
						LibRover.Tests.TestProto:New(
							"#3",
							"Sholazar Basin",0,50,50, "The Jade Forest",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"mini hordie",
							"Northern Barrens",0,67,40, "Eastern Plaguelands",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"mini hordie",
							"Northern Barrens",0,67,40, "Eastern Plaguelands",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"mini hordie",
							"Northern Barrens",0,67,40, "Eastern Plaguelands",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"mini hordie",
							"Northern Barrens",0,67,40, "Eastern Plaguelands",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"mini hordie",
							"Northern Barrens",0,67,40, "Eastern Plaguelands",0,50,50,
							{faction="H"},
							"blabla"),
						LibRover.Tests.TestProto:New(
							"#4",
							"Darnassus",0,76,52, "Tanaris",0,36,65,
							{faction="A"},
							"0,1,2,3,4 blablabla"),
					}
				}

				local final_callback = function(tests)
					print("TESTS COMPLETE!")
					for i,test in ipairs(tests) do print(test:ToString()) end
					print("LibRover.Tests.LastTest set.")
				end

				local testset = testsets[number]

				LibRover.Tests.LastTestSet = testset

				LibRover.Tests:RunTests(testset,final_callback)
			end
			
		end
	
		do -- TaxiWhistle predictor
			
			local TaxiWhistlePredictor = {}
			Lib.TaxiWhistlePredictor = TaxiWhistlePredictor
			Lib.TWP = TaxiWhistlePredictor
			local TWP=TaxiWhistlePredictor
			
			function TWP:SetupListener()
				if not Lib.IsRetail then return end -- No Whistle on classic servers
				local TWLF = CreateFrame("FRAME")
				TWLF:SetScript("OnEvent", self.FrameOnEvent)

				-- listed in usual startup order
				TWLF:RegisterEvent("UNIT_SPELLCAST_START")
				TWLF:RegisterEvent("UNIT_EXITED_VEHICLE")
				self.Listener = TWLF
				
				--if ZGV.DEV then ZGV:Print("|cffffee00 (DEV) Taxi Whistle|r predictor is ready.") end

				self.ready=true
			end

			function TWP:FindNearestTaxis()
				local x,y,m,f = LibRover:GetPlayerPosition()
				if not x or not y then return end -- we're NOT working in mapless places.

				local taxidists={}
				self.pm,self.pf,self.px,self.py = m,f,x,y
				for c,cont in ZGV.OrderedPairs(LibTaxi.taxipoints) do
					for z,zone in ZGV.OrderedPairs(cont) do
						z=LibRover.data.MapIDsByName[z] or z
						if type(z)=="table" then z=z[1] end
						for n,node in ipairs(zone) do
							if node.faction~=enemyfac  -- obviously
							and not node.taxioperator  -- only normal taxis apply
							and not (not Lib.ignore_travel_conditions and node.cond_fun and not node.cond_fun())  -- not conditioned out
							and node.known  -- obviously!?
							then
								local dist = Mdist(node.m,node.x,node.y,m,x,y)
								if dist then tinsert(taxidists,{node,dist}) end
							end
						end
					end
				end
				sort(taxidists,function(a,b) return a[2]<b[2] end)
				return taxidists
			end

			function TWP:PredictWhistle()  -- the workhorse.
				if not self.ready then return nil end
				local taxidists = self:FindNearestTaxis()
				self.taxidists = taxidists
				if not taxidists then self.predicted_taxi=nil return end
				
				local taxidists_thiszone = {}
				local zone = self.pm  -- set by FindNearestTaxis

				if zone==750 or zone==652 --[[ Thunder Totem ]] then zone=650 --[[ Highmountain ]]   -- Thunder Totem isn't considered a separate zone. Remap it to Highmountain.
				elseif zone==1165 --[[ Dazar'alor ]] then zone=862 --[[ Zuldazar ]] -- Dazar'alor is part of Zuldazar
				elseif zone==1161 --[[ Boralus ]] then zone=895 --[[ Tiragarde Sound ]] -- Boralus is part of Tiragarde Sound
				end

				for t,td in ipairs(taxidists) do repeat
					if not td[1].known then break end  -- ignore unknown taxis
					local taxi_zone = td[1].m
					local force=nil
					
					if taxi_zone==750 or taxi_zone==652 --[[ Thunder Totem ]] then taxi_zone=650 --[[ Highmountain ]]   -- Thunder Totem isn't considered a separate zone. Remap it to Highmountain.
					elseif zone==747 --[[ Dreamgrove ]] and taxi_zone==747 --[[ also Dreamgrove ]] then break -- Dreamgrove is INVALID from inside Dreamgrove, go figure.
					elseif zone==747 --[[ Dreamgrove ]] and taxi_zone==650 --[[ Highmountain ]] then force=true  -- Only Highmountain is valid from inside Dreamgrove, go figure again.
					--if zone==747 --[[ Dreamgrove ]] and taxi_zone~=747 --[[ anything else ]] then taxi_zone=zone end -- Anything's valid from Dreamgrove, except... Dreamgrove.
					elseif zone==641 --[[ Val'sharah ]] and taxi_zone==747 --[[ Dreamgrove ]] then force=true  -- Dreamgrove taxi is valid for Val'sharah.
					elseif taxi_zone==1165 --[[ Dazar'alor ]] then taxi_zone=862 --[[ Zuldazar ]] -- Dazar'alor is part of Zuldazar
					elseif taxi_zone==1161 --[[ Boralus ]] then taxi_zone=895 --[[ Tiragarde Sound ]] -- Boralus is part of Tiragarde Sound
					end
					if taxi_zone==zone or force then  tinsert(taxidists_thiszone,td)  end
				until true end
				self.taxidists_thiszone = taxidists_thiszone

				self.predicted_taxi = taxidists_thiszone[1] and taxidists_thiszone[1][1]
				self.predicted_taxi_dist = taxidists_thiszone[1] and taxidists_thiszone[1][2]
				
				self.whistle_used = time()

				if self.verbose then self:AnnouncePrediction() end

				return self.predicted_taxi
			end

			function TWP:AnnouncePrediction()
				if not self.taxidists_thiszone or not self.predicted_taxi then print("Make a prediction first.") return end
				print(("Expected Flight Master Whistle destinations from |cff88ffff%s/%d %d,%d|r:"):format(ZGV.GetMapNameByID(self.pm),self.pf,self.px*100,self.py*100))
				if self.pm==747 then print("(You're in Dreamgrove. Get ready to be whistled to somewhere in Highmountain...)") end
				for i=1,3 do
					if i>#self.taxidists_thiszone then break end
					local taxi = self.taxidists_thiszone[i][1]
					local dist = self.taxidists_thiszone[i][2]
					print(("%s%d. |cffff88ff%d|r yd - |cffffff88%s|r (|cff88ffff%s/%d %d,%d|r)"):format(i==1 and ">> " or "",i,dist,taxi.name,ZGV.GetMapNameByID(taxi.m),taxi.f,math.round(100*taxi.x),math.round(100*taxi.y),dist))
				end
				print("Any zone:")
				for i=1,3 do
					local taxi = self.taxidists[i][1]
					local dist = self.taxidists[i][2]
					print(("%d. |cffff88ff%d|r yd - |cffffff88%s|r (|cff88ffff%s/%d %d,%d|r)"):format(i,dist,taxi.name,ZGV.GetMapNameByID(taxi.m),taxi.f,math.round(100*taxi.x),math.round(100*taxi.y),dist))
				end

				print(("Predicted destination: |cffffff88%s|r."):format(self.predicted_taxi.name))

				if self:IsOnValidMap() then
					print("Whistle check: passed. Your whistle should be functional here.")
				else
					print("Whistle check: |cffff8888FAILED!|r You're not in a whistlable zone, or you haven't unlocked the whistle.")
					if not GetItemInfo(141605) then print("Actually, you don't HAVE the whistle!") end
				end
				--print("(see ZGV.TaxiWhistle.last_taxi_list for a full list)")
			end

			function TWP:ConfirmPrediction()
				local pm,pf,px,py = self.pm,self.pf,self.px,self.py
				local taxidists = self:FindNearestTaxis()
				if taxidists[1] and taxidists[1][2]<50 then
					local here_taxi,here_dist = unpack(taxidists[1])
					local good_taxi,good_dist = self.predicted_taxi,self.predicted_taxi_dist
					local was_dist = Mdist(here_taxi.m,here_taxi.x,here_taxi.y,pm,px,py)
					if here_taxi==good_taxi then
						print("|cff88ff88We're right where we wanted! Yay! Carry on, soldier!")
					else
						print(("|cffff8888Bummer.|r This is |cffffff88%s|r (|cff88ffff%s/%d %d,%d|r) which was at |cffff88ff%.1f|r yd from departure..."):format(here_taxi.name,ZGV.GetMapNameByID(here_taxi.m),here_taxi.f,math.round(100*here_taxi.x),math.round(100*here_taxi.y),was_dist))
					end
				end
			end

			function TWP:CatchEvent(event,...)
				if event=="UNIT_SPELLCAST_START" and select(1,...)=="player" and select(5,...)==227334 then
					if self.verbose then print("Flight Master Whistle used!") end
					self:PredictWhistle()
				end
				if event=="UNIT_EXITED_VEHICLE" and time()-(self.whistle_used or 0)<60 then  -- did we just arrive?
					if self.verbose then self:ConfirmPrediction() end
				end
			end
			function TWP.FrameOnEvent(frame,event,...)
				TWP:CatchEvent(event,...)
			end

			local valid_maps_legion = {
				[630]=true,	-- Azsuna
				[650]=true,	-- Highmountain
				[634]=true,	-- Stormheim
				[696]=true,
				[680]=true,	-- Suramar
				[750]=true,	-- Thunder Totem
				[739]=true,	-- Trueshot Lodge
				[641]=true,	-- Val'sharah
				[646]=true,	-- Broken Shore
			}
			local valid_maps_argus = {
				[830]=true,	-- Krokuun	
				[882]=true,	-- Eredath
				[885]=true,	-- Antoran Wastes
			}
			local valid_maps_bfa = {
				[1161]=true,	-- Boralus
				[896]=true,	-- Drustvar
				[942]=true,	-- Stormsong Valley
				[1014]=true,	-- Kul Tiras
				[895]=true,	-- Tiragarde Sound
				[863]=true,	-- Nazmir
				[864]=true,	-- Vol'dun
				[1011]=true,	-- Zandalar
				[862]=true,	-- Zuldazar
				[1165]=true,	-- Dazar'alor
			}
			local valid_maps_bfa82 = {
				[1355]=true,	-- Nazjatar
			}

			function TWP:IsOnValidMap()  -- check if whistle can be used here. moved from data_items.
				local m=ZGV.CurrentMapID
				if valid_maps_legion[m] then return true end
				if valid_maps_argus[m] and IsQuestFlaggedCompleted(38995) then return true end
				if valid_maps_bfa[m] and (IsQuestFlaggedCompleted(52450) or IsQuestFlaggedCompleted(51916)) then return true end
				if valid_maps_bfa82[m] and IsQuestFlaggedCompleted(56422) then return true end
				return false
			end

			tinsert(Lib.startup_modules_funcs,{"Setting up Taxi Whistle predictor",function(self)
				self.TaxiWhistlePredictor:SetupListener()
				if ZGV.DEV then
					--if TWP.ready then TWP.verbose=true end
				end
			end})

		end


		do -- Mole Machine handler
			local MoleMachineHandler = {}
			Lib.MoleMachineHandler = MoleMachineHandler
			Lib.MMH = MoleMachineHandler
			local MMH = MoleMachineHandler

			MMH.mole_wait_time = 3*60

			function MMH:SetupListener()
				if select(2,UnitRace("player"))~="DarkIronDwarf" and not ZGV.db.profile.debug_fake_darkiron then return end
				self.ListenerFrame = CreateFrame("FRAME")
				self.ListenerFrame:SetScript("OnEvent", self.FrameOnEvent)
				self.ListenerFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
				self.ready=true
			end

			function MMH.FrameOnEvent(frame,event,arg1,arg2,arg3)
				if event=="UNIT_SPELLCAST_SUCCEEDED" then
					if (arg3==265225 --[[D.I.Mole Machine]] or arg3==168657 --[[bubble wand toy]]) then
						ZGV:Debug("Mole Machine appeared!")
						local x,y,m = LibRover:GetPlayerPosition()
						MMH.last_mole = {time=time(), m=m, x=x, y=y}
						Lib:UpdateNow()
					elseif (arg3>=280906 and arg3<=280924) or arg3==280928 then
						MMH.last_mole = nil
					--[[
					elseif ZGV.DEV and MMH.last_mole and MMH.last_mole.time and time()-MMH.last_mole.time<30 then
						local spellname = GetSpellInfo(arg3)
						if spellname and spellname:find("Mole") then
							ZGV:Error("Mole machine arrival spell: "..arg3)
						end
					--]]
					end
				end
			end

			function MMH:GetMoleLocation()
				if MMH.last_mole and MMH.last_mole.time and time()-MMH.last_mole.time<self.mole_wait_time then
					return MMH.last_mole
				end
			end

			function MMH:GetDestinations()
				if not self.destinations then
					self.destinations = {}
					for i,item in ipairs(Lib.data.portkeys) do  if item.spell==265225 then
						tinsert(self.destinations,item.destination)
					end end
				end
				return self.destinations
			end

			tinsert(Lib.startup_modules_funcs,{"Setting up Mole Machine handler",function(self)
				self.MoleMachineHandler:SetupListener()
			end})

		end

		--[[
		function Lib:Sha2Data()
			LibRover.SHA2TIME=debugprofilestop()
			local x = ZGV.sha2.new256()
			local function add(s)
				if type(s)=="string" then x:add(s) end
			end
			for i,s in ipairs(LibRover.data.basenodes.borders) do  add(s)  end
			for i,s in ipairs(LibRover.data.basenodes.DungeonEntrances) do  add(s)  end
			for i,s in ipairs(LibRover.data.basenodes.DungeonFloors) do  add(s)  end
			for i,m in pairs(LibRover.data.basenodes.FloorCrossings) do  for j,s in ipairs(m) do add(s)  end end
			for i,m in pairs(LibRover.data.basenodes.indoorzones) do  for j,s in ipairs(m) do add(s)  end end
			for i,s in ipairs(LibRover.data.basenodes.transit) do  add(s)  end
			LibRover.SHA2=x:close()
			LibRover.SHA2TIME=debugprofilestop()-LibRover.SHA2TIME
		end
		--]]
	end
end


--[[
local MapZoneCache={}
local cached
local function GetMapZoneNumbers(zonename)
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
--]]
