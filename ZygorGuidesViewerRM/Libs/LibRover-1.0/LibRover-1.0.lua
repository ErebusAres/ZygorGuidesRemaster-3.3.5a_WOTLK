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

local name,addon = ...
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

local Astrolabe = DongleStub("Astrolabe-ZGV")
local LibTaxi = LibStub("LibTaxi-1.0")


local tinsert,tremove,ipairs,pairs,debugprofilestop = tinsert,tremove,ipairs,pairs,debugprofilestop

do
	local LIB_MAJOR, LIB_MINOR = "LibRover-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)

	--[[
	if not Lib then -- ookay, REPLACE the old thing! This is evil, I know.
		Lib = LibStub:GetLibrary(LIB_MAJOR, LIB_MINOR)
		if not Lib.is_stub then  return  end
		Lib.is_stub=nil
	end
	--]]

	if Lib then

		local BZ = LibStub("LibBabble-SubZone-3.0")
		local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

		local function TryBZL(text)
			if type(text)~="string" then return text end
			return BZL[text] or text
		end

		-- let's get famous
		addon.LibRover = Lib
		_G['LibRover'] = Lib

		local yield = coroutine.yield
		local resume = coroutine.resume

		-- Localization stub:
		local L = {}
		setmetatable(L,{__index=function(self,k) return rawget(self,k) or k end})
		Lib.L=L

		Lib.data = Lib.data or addon.LibRoverData     addon.LibRoverData = nil

		Lib.opennodes = LibRover_NodeSetHeap:New()

		Lib.banned_nodes = {}
		Lib.onlies = {}

		local WEAK_VALUES={__mode='v'}
		Lib.nodes = {all={},taxi={},id={},mageteleport={},useitem={},['start']={},['end']={},['temp']={}}
		-- if a node falls out of the 'all', drop it everywhere.
		local allnodes = Lib.nodes.all
		--setmetatable(Lib.nodes.taxi,WEAK_VALUES)
		--setmetatable(Lib.nodes.id,WEAK_VALUES)
		--setmetatable(Lib.nodes.mageteleport,WEAK_VALUES)

		local MAGE_TELEPORT_COST = 20
		local MAGE_TELEPORT_COST_STORMWIND = 30    -- Stormwind Mage Tower is a bitch to get out of.
		local ITEM_USE_COST = 30
		local COST_CROSSCONTINENT_DEFAULT = 20
		local COST_SHIP_DEFAULT = 240

		local opened_count
		local closed_count

		Lib.knowntaxis = {}  -- managed by LibTaxi


		-- intercrossable zone pairs
		Lib.greenborders = {}

		Lib.standing_still_time = 0

		Lib.cfg = {
			use_cot = true,
			use_mage_teleport = true,
			use_item_teleports = true,
			use_last_resort = true, -- Warlock summons/Courtesy portals
			avoid_highlevel_zones = true,
			strip_arrivals=true,
			use_hearth = true,
			use_astral_recall = true,
		}


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

		local area_maps_table=GetAreaMaps()

		local function getdist(node1,node2)
			local dist,xd,yd = Astrolabe:ComputeDistance(node1.m,node1.f,node1.x,node1.y,node2.m,node2.f,node2.x,node2.y)
			if dist==0 and node1.c~=node2.c or (node1.c==node2.c and node1.c==-1 and node1.m~=node2.m) then dist=nil end   -- the latter condition shouldn't matter anymore, since we moved to Astrolabe systems instead of continents
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

		local function playerpos()
			local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor -- WHY OH WHY do I have to do it like that ;_;
			local lam,laf,lax,lay = unpack(Astrolabe.LastPlayerPosition)
			local x,y = Astrolabe:TranslateWorldMapPosition( lam, laf, lax, lay, m, f )
			if not x or x<0 or y<0 or x>1 or y>1 then x,y=nil,nil end
			return m,f,x,y
		end
		Lib.playerpos=playerpos

		local function myassert(test,msg,...)
			if not test then
				ERRORS=ERRORS or {}  -- global!
				tinsert(ERRORS,{...})
				error(msg,2)
			end
		end

		function Lib.zone_is_exo_or_belf(map) -- dual purpose:
			return map==464 or map==476 or map==471 or map==894  -- exo & co.
				or map==463 or map==462 or map==480 or map==893  -- smoon & co.
		end
		-- This magic makes a bitmask out of which parts of Eastern see each other.
		-- They're all split by bays and seas, which cannot be flown over, so this is needed for sane navigation.
		-- Result - only zones sharing a "part bit" see each other directly.
		local easterns_init = {
			[1]={22,23,20,892,21,24,684,382,26, 16}, --northmost, down to Arathi (common)
			[2]={16, 40,700}, --middle: arathi,wetlands,twilight
			[4]={40,700, 27,35,17,866,895,28,29,30,864,301,36,38,19,689,37,673,34,39,32,38}, -- southern part: wetlands,twilight... and the rest
			[8]={341}, -- ironforge don't fly nowhere.
		}
		local easterns={}
		for bits,zones in pairs(easterns_init) do
			for z,zone in pairs(zones) do
				easterns[zone]=(easterns[zone] or 0) + bits
			end
		end
		setmetatable(easterns,{__index=function() return 255 end}) -- holy crap, this will suck - but hey, SOMEONE put a node out in continent space...
		function Lib.zone_same_eastern_part(map1,map2)
			return bit.band(easterns[map1],easterns[map2])>0
		end
		function Lib.zone_is_barad(map)
			return map==708 or map==709
		end
		function Lib.zone_is_vash(map)
			return map==613 or map==610 or map==614 or map==615
		end





		function Lib:UpdateConfig(v)
			v = v or ZGV.db.profile.pathfinding_mode
			if v=="1fastest" then Lib.cfg.use_hearth=true Lib.cfg.use_item_teleports=true Lib.cfg.use_astral_recall=true Lib.cfg.prefer_taxi=false
			elseif v=="2nocd" then Lib.cfg.use_hearth=false Lib.cfg.use_item_teleports=false Lib.cfg.use_astral_recall=false Lib.cfg.prefer_taxi=false
			elseif v=="3lazy" then Lib.cfg.use_hearth=true Lib.cfg.use_item_teleports=true Lib.cfg.use_astral_recall=true Lib.cfg.prefer_taxi=true
			end
		end



		local function MapName(id,floor)
			if type(id)=="table" then id,floor=id.m,id.f end
			if id==811 and (floor==3 or floor==4) then id=905 end --Shrine of Seven Stars
			return ZGV.Pointer.GetMapNameByID2(tonumber(id) or 0,floor or 0) or "(map "..tostring(id).."?)"
		end
		Lib.MapName=MapName

		local link_walk_greenborders = {mode="walk", interx=1}

		local function AddNode(node)
			--if not self.nodes[node.l[1]] then self.nodes[node.l[1]]={} end
			table.insert(allnodes,node)
			if (node.type) then
				if not Lib.nodes[node.type] then Lib.nodes[node.type]={} --[[setmetatable(Lib.nodes[node.type],{__mode="v"}) --]] end
				--setmetatable(Lib.nodes[node.type],WEAK_VALUES)
				table.insert(Lib.nodes[node.type],node)
			end

			-- sanitize continent, coordinates, floor
			node.c = node.c or Astrolabe.WorldMapSize[node.m].system or node.m  --Lib.ContinentsByID[node.m]
			if node.x>1 then node.x,node.y=node.x/100,node.y/100 end
			node.m = ZGV.Pointer:SanitizePhase(node.m)
			node.f = ZGV:SanitizeMapFloor(node.m,node.f)

			local ni = #allnodes
			node.num=ni

			-- set node.region, if applicable. BEFORE neighbours, ffs.
			node:AssignRegion()
			node:AssignSpecialMap()

			--if node.m==341 then node.nofly=1 end  --ironforge, experimental nofly
			if Lib.data.zoneflags[node.m] then
				for k,v in pairs(Lib.data.zoneflags[node.m]) do
					if node[k]==nil then node[k]=v end
				end
			end

			-- sanitize metadata
			node.radius=tonumber(node.radius)

			--setmetatable(node.n,{__mode="k"})

			-- connect to other nodes, by automatic linkage (taxi, ground, fly)
			for i,v in pairs(allnodes) do
				if v~=node then
					-- endnode only gets linked TO.
					if node.type~="end" then node:DoLinkage(v) end
					-- startnode and inns don't get linked TO, only FROM.
					if node.type~="start" and node.type~="inn" then v:DoLinkage(node) end
				end
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

		local function ParseDataCond(data)
			if type(data.cond)=="string" then
				local err
				data.cond_fun,err = loadstring("return "..data.cond)
				if err then error(err.." in parsing '"..data.cond.."'") end
			elseif type(data.cond)=="function" then
				data.cond_fun = data.cond
				data.cond=nil
			end
		end

		local function CloneTable(tab)
			local t={}
			for k,v in pairs(tab) do t[k]=v end
			return t
		end


		local LAST_NODE  -- to use with @+ pseudo-id in data

		function handle_indoors(node)
			local regionobj,err = Lib.NodeRegions:AddNewRegion{name=node.indoors,mapzone=node.m,zonematch="*/*/*/".. node.indoors,indoors=node.indoors and 1,nofly=1}
			if regionobj then
				node:AssignRegion(regionobj)
				--n2.zone=regionobj.zone
				--n2.realzone=regionobj.realzone
				--n2.subzone=regionobj.subzone
				node.minizone=regionobj.minizone  -- will be there after zonematch is parsed
			else
				error(err or "wtf? oddly bad simpleregion definition: ".. node.indoors)
			end
			node.indoors=not not node.indoors
		end

		local function __SmartAddTextNodes(text,deftype)
			local data

			deftype=deftype or "misc"

			-- by default, nodes are "misc" and connect as "walk".

			-- Extract the (A:TYPE) faction+type marker. Ugly, but there it is.
			local text1,faction,ntype,text2 = text:match("^(.-)%((.):(.-)%)(.-)$")
			text=text1 and text1..text2 or text
			-- faction check
			local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
			if faction==enemyfac then return end
			-- type default: border
			if ntype=="_" then ntype=nil end
			ntype=ntype and ntype:lower()


			-- Powerhorse: extract all {data:blablabla} tags.

			local data={mode=ntype or "walk"}
			while text:find("{") do
				local text1,key,val,text2 = text:match("^(.-){(.-):(.-)}(.-)$")
				if key then
					local num = tonumber(val)
					if num then val=num end
					data[key]=val
					text=text1..text2
				end
			end

			if data.style=="portal_dungeon" then
				ntype="portal"
				data.mode="portal"
			end

			text=text:gsub("\\>","%%GT%%")


			-- Powerhorse #2: parse "zone 12,34 -to- zone 55,66"

			local mxy1,dir,mxy2 = text:match("^(.-)%s+%-([xto]+)%-%s+(.-)$")
			if not mxy1 then mxy1 = text end -- OMG one node!?
			local m1,f1,x1,y1,id1,dat1 = LibRover_Node:Parse(mxy1)
			local m2,f2,x2,y2,id2,dat2 = LibRover_Node:Parse(mxy2)
			local twoway = dir=="x"


			-- 5.4.0 check
			local build=tonumber(select(4,GetBuildInfo()),nil)
			if build<50400 then
				if m1==951 or m2==951 then return end
				if m1==953 or m2==953 then return end
				if m1==955 or m2==955 then return end
			end


			local n1 = x1 and LibRover_Node:New({m=m1,f=f1,x=x1,y=y1,id=id1,type=ntype or deftype}) or (id1=="+" and LAST_NODE) or Lib.nodes.id[id1]
			local n2 = x2 and LibRover_Node:New({m=m2,f=f2,x=x2,y=y2,id=id2,type=ntype or deftype}) or Lib.nodes.id[id2]

			LAST_NODE = n2 or n1

			if id1 and not m1 and not n1 then error(("Node id @%s not found"):format(id1)) end
			if id2 and not m2 and not n2 then error(("Node id @%s not found"):format(id2)) end
			if not n1 then error(("Cannot make a node from %s/%d %.1f,%.1f @%s"):format(tostring(m1),tonumber(f1),tonumber(x1),tonumber(y1),id1 or "")) end

			local link12,link21,link1m

			-- parse condition, if any
			ParseDataCond(data)

			if dat1 then for k,v in pairs(dat1) do n1[k]=v end end
			if x1 then AddNode(n1) end --new!
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				if x2 then AddNode(n2) end
				-- we have a proper second node! link to it

				link12 = CloneTable(data)
				link12.hardwired=true

				n1:AddNeigh(n2,link12)
			end

			if twoway then
				if n2 then
					-- normal return trip
					link21 = CloneTable(data)
					n2:AddNeigh(n1,link21)
					link21.hardwired=true
				elseif m2 then
					-- "Zone 12,34 x Zone"? Write a dual-map node. We only have one node here with a multiple personality.
					if not n1.ms then n1.ms={} end
					local link1m = {}
					n1.ms[m2]=link1m
					for k,v in pairs(data) do link1m[k]=v end
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

				if not data.dontsetborder then -- allow for some linkages that are NOT special
					n1.border = n1.border and "multi" or n2
					if n2 then  n2.border = n2.border and "multi" or n1  end
					if n1.border==n2 then n1.bordermeta=link12 end
					if n2 and n2.border==n1 then n2.bordermeta=link21 end
				end

			else
				-- single node!!
				for k,v in pairs(data) do n1[k]=v end
			end

			if data.style=="portal_dungeon" then
				link12.template = "portalDungeonEnter" -- note: these are TRAVEL MODES, so they're verbs.
				link21.template = "portalDungeonExit"
			end

			if n1 and n1.indoors then handle_indoors(n1) end
			if n2 and n2.indoors then handle_indoors(n2) end

			-- Spells and items are silly. We add them like node attributes, but they really become link attributes eventually.
			HandleSpellsAndItems(n1,link12)

			--assert(n1,"No coords in SmartAddNode(\""..text.."\")")
			--[[
			if n2 then
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s %.1f,%.1f"):format(GetMapNameByID(m1),x1,y1, twoway and "x" or "to", GetMapNameByID(m2),x2,y2))
			else
				Lib:Debug(("New smart node: %s %.1f,%.1f  %s  %s"):format(GetMapNameByID(m1),x1,y1, twoway and "x" or "to", GetMapNameByID(m2)))
			end
			--]]

			return n1,n2
		end

		local def_deftype = "walk"
		local function __SmartAddArrayNodes(data,deftype)
			deftype=deftype or def_deftype

			-- faction check
			local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
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
			if x1 then AddNode(n1) end --new!
			-- we surely have the first node, right?
			if n2 then
				if dat2 then for k,v in pairs(dat2) do n2[k]=v end end
				if x2 then AddNode(n2) end
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
			data.n1=n1
			data.n2=n2

			-- define some more details about the nodes' linkage.
			if n1 and (n2 or n1.ms) then
				data.mode=data.mode or "walk"  -- this is link metadata. Assign a mode of travel.

				-- If the node is closely bound with another (quite likely, since they're usually added in pairs), store the (hint to the) linkage separately.
				-- This way a node that's later known to have 5 neighbours, can quickly tell one of the neighbours as the SPECIAL neighbour.
				-- But, if the node ALREADY has a special neighbour... then delete this; it's a multi-special whore node.

				if not data.dontsetborder then -- allow for some linkages that are NOT special
					n1.border = n1.border and "multi" or n2
					if n2 then  n2.border = n2.border and "multi" or n1  end
				end
			end

			if n1 and n1.indoors then handle_indoors(n1) end
			if n2 and n2.indoors then handle_indoors(n2) end

			-- Spells and items are silly. We add them like node attributes, but they really become link attributes.
			HandleSpellsAndItems(n1,data)

			return n1,n2
		end

		local function tostr(data)
			while type(data)=="table" do data=next(data) end
			return data or ""
		end

		local actiontitle_funcs = {
			['building'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter building" else return "Exit building" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit building" else return "Enter building" end end,
			},
			['cave'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter cave" else return "Exit cave" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit cave" else return "Enter cave" end end,
			},
			['mine'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter mine" else return "Exit mine" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit mine" else return "Enter mine" end end,
			},
			['tunnel'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter tunnel" else return "Exit tunnel" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit tunnel" else return "Enter tunnel" end end,
			},
			['barrow'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter barrow" else return "Exit barrow" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit barrow" else return "Enter barrow" end end,
			},
			['tomb'] = {
				['enter'] = function(self,fromnode,tonode) if tonode==self.border then return "Enter tomb" else return "Exit tomb" end end,
				['exit'] = function(self,fromnode,tonode) if tonode==self.border then return "Exit tomb" else return "Enter tomb" end end,
			},
		}

		local function SmartAddNode(data,deftype)
			-- all-purpose "map x,y x map x,y"
			local aok,n1,n2
			local DEV=true--ZGV.DEV
			if type(data)=="string" then
				if DEV then aok,n1,n2 = pcall(__SmartAddTextNodes,data,deftype)
				else n1,n2=__SmartAddTextNodes(data,deftype)  aok=true  end
				if not aok then error("|cffff0000NODE ERROR:|r "..n1.." in SmartAddNode(\""..data.."\")") end
			elseif type(data)=="table" then
				if data[1]=="REGION" then
					Lib.NodeRegions:AddNewRegion(data)
				elseif data[1]=="MAP" then
					Lib.SpecialMapNodeData:AddMap(Lib.data.MapIDsByName[data.map],data.floor or 0,data.extra)
				else
					if DEV then aok,n1,n2 = pcall(__SmartAddArrayNodes,data,deftype)
					else n1,n2=__SmartAddArrayNodes(data,deftype)  aok=true  end
					if not aok then error("|cffff0000NODE ERROR:|r "..n1.." in SmartAddNode({\" "..tostr(data[1]).." \",\" "..tostr(data[2]).." \"...})") end
				end
			end

			if n1 and n2 and n1.bordermeta then
				if actiontitle_funcs[n1.bordermeta.template] then
					n1.actiontitle=actiontitle_funcs[n1.bordermeta.template].enter
					n2.actiontitle=actiontitle_funcs[n1.bordermeta.template].exit
					n1.bordermeta.template=nil
					n2.bordermeta.template=nil
				end
			end

			return n1,n2
		end


		function Lib.greenborders:CanCross(id1,id2)
			return (self[id1] and self[id1][id2]) or (self[id2] and self[id2][id1])
		end

		local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"

		--[[================ INITIALIZE NODES ===============]]--

		local function InitializeTaxis()
			for c,cont in pairs(LibTaxi.taxipoints) do
				for z,zone in pairs(cont) do
					z=Lib.data.MapIDsByName[z] or z
					if type(z)=="table" then z=z[1] end
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							node.m = z
							node.type = "taxi"
							-- other fields are already there, how convenient!
							AddNode(LibRover_Node:New(node))
						end
					end
				end
			end
			-- DON'T clear taxis. They're good for lookups by other addons.
			-- Though we could clean up the enemy faction...
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

		Lib.ContinentsByID = {[13]=1,[14]=2,[466]=3,[485]=4,[862]=6}  -- main continents, somehow they're unnamed, the bastards.
		Lib.MapFloorCountCache = {}
		Lib.MapLevels = {}
		setmetatable(Lib.MapLevels,{__index=function() return 0 end})

		local function _StartupThread()
			local t1 = debugprofilestop()
			local t2=t1

			Lib.frame:RegisterEvent("ACHIEVEMENT_EARNED")
			Lib.frame:RegisterEvent("RECEIVED_ACHIEVEMENT_LIST")
			Lib.frame:RegisterEvent("LEARNED_SPELL_IN_TAB")
			Lib.frame:RegisterEvent("PLAYER_CONTROL_GAINED")
			Lib.frame:RegisterEvent("PLAYER_CONTROL_LOST")
			Lib.frame:RegisterEvent("UNIT_EXITING_VEHICLE")
			Lib.frame:RegisterEvent("UNIT_ENTERING_VEHICLE")
			Lib.frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
			Lib.frame:RegisterEvent("TAXIMAP_OPENED")
			Lib.frame:RegisterEvent("WORLD_MAP_UPDATE")
			Lib.frame:RegisterEvent("ZONE_CHANGED")
			Lib.frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
			Lib.frame:RegisterEvent("NEW_WMO_CHUNK")  -- subzone change, or entering a building
			Lib.frame:RegisterEvent("LOADING_SCREEN_DISABLED")
			Lib.frame:SetScript("OnUpdate", function(frame,elapsed) Lib:OnUpdate(elapsed) end)

			--Lib.MapLevels[770]=84 -- 770 is a phase in Twlight Highlands and it returns 0 for GetCurrentMapLevelRange() this is a fix for that since it breaks the taxi system.
				-- off with her head! Just sanitize as above.

			--local t2b=debugprofilestop()  print("LibRover initialization: sanitizing ",t2b-t2)  t2=t2b
			-- @~ 135ms

			Lib.MapLevels[614]=80 -- 3 sub zones in Vashj'ir that returned 0 as their level... Thank you blizzard.  They're just subzones of Vashj'ir #613.
			Lib.MapLevels[615]=80
			Lib.MapLevels[610]=80
			Lib.MapLevels[499]=65 -- Isle of Quel'Danas. Had 0 for whatever reason but FP is learned automatically at 65

			--Panda Land Levels hardcoded until GetCurrentMapLevelRange() works for them.
			Lib.MapLevels[808]=1
			Lib.MapLevels[809]=87
			Lib.MapLevels[806]=85
			Lib.MapLevels[811]=90
			Lib.MapLevels[810]=88
			Lib.MapLevels[858]=89
			Lib.MapLevels[807]=86
			Lib.MapLevels[857]=86
			Lib.MapLevels[873]=87
			Lib.MapLevels[929]=90

			LibRover_Node:InterfaceWithLib(Lib)
			LibRover_NodeSet:InterfaceWithLib(Lib)
			LibRover_NodeSetHeap:InterfaceWithLib(Lib)
			LibRover_Region:InterfaceWithLib(Lib)

			t2 = debugprofilestop()
			Lib:CheckMaxSpeeds()
			--local t2b=debugprofilestop()  Lib:Debug("Initialization: maxspeeds |cffffeeaa%.3f",t2b-t2)  t2=t2b

			yield("maxspeeds")

			local f=1
			local thisrun=t2
			for i=1,#area_maps_table do
				local id=area_maps_table[i]
				local sane_id = ZGV.Pointer:SanitizePhase(id)
				if GetMapNameByID(sane_id) then
					SetMapByID(sane_id)
					Lib.ContinentsByID[id]=GetCurrentMapContinent()
					Lib.MapLevels[id]=GetCurrentMapLevelRange() --minimum.
					--Lib.MapFloorCountCache[id]=Astrolabe.WorldMapSize[sane_id].floorMin or GetNumDungeonMapLevels() or 0
				end
				if id%50==0 then yield("maps",f) f=f+1 end
			end
			yield("maps done",f)

			t2 = debugprofilestop()

			do -- INITIALIZE SETUP
				for i,text in ipairs(Lib.data.basenodes.setup) do
					SmartAddNode(text)
				end
				Lib.data.basenodes.setup = nil
			end

			do -- INITIALIZE ADVANCED
				for i,pair in ipairs(Lib.data.basenodes.advanced) do
					SmartAddNode(pair)
				end
				Lib.data.basenodes.advanced = nil
			end

			do -- INITIALIZE ZONE FLAGS
				for id,data in pairs(Lib.data.zoneflags) do
					if type(id)=="string" then
						local oldid=id
						id=Lib.data.MapIDsByName[id]
						Lib.data.zoneflags[id]=data
						Lib.data.zoneflags[oldid]=nil
					end
				end
			end
			yield("zoneflags")

			--local t2b=debugprofilestop()  Lib:Debug("Initialization: setup, advanced, zoneflags |cffffeeaa%.3f",t2b-t2)  t2=t2b


			do -- INITIALIZE TAXIS
				--t2 = debugprofilestop()
				-- add map IDs to taxis
				InitializeTaxis()
				-- if available, try to glean known taxi routes. Otherwise assume they're not known.
				if LibTaxi and ZGV.db then
					LibTaxi:Startup(ZGV.db.char.taxis)
				end
				--local t2b=debugprofilestop()  Lib:Debug("Initialization: taxis |cffffeeaa%.3f",t2b-t2)  t2=t2b
			end
			yield("taxis")

			do -- INITIALIZE INNS
				t2 = debugprofilestop()
				for z,zone in pairs(Lib.data.basenodes.inns) do
					if type(z)=="string" then
						local z2=Lib.data.MapIDsByName[z]
						if type(z2)=="table" then z2=z2[1] end
						assert(z2,"bad zone: "..z)
						z=z2
					end
					--local c=Lib.ContinentsByID[z]
					for n,node in ipairs(zone) do
						if node.faction~=enemyfac then
							node.m = z
							node.type = "inn"
							-- other fields are already there, how convenient!
							node.title=node.name
							AddNode(LibRover_Node:New(node))
						end
					end
				end
				--local t2b=debugprofilestop()  Lib:Debug("Initialization: inns |cffffeeaa%.3f",t2b-t2)  t2=t2b
				--@~50ms
			end
			yield("inns")

			do -- INITIALIZE GREEN BORDERS
				-- special cases, these zones are inter-crossable easily.
				for pi,pair in ipairs(Lib.data.greenborders) do
					local z1 = Lib.data.MapIDsByName[pair[1]]
					if type(z1)=="table" then z1=z1[1] end
					local z2 = Lib.data.MapIDsByName[pair[2]]
					if type(z2)=="table" then z2=z2[1] end
					assert(z1,"Bad zone "..pair[1])
					assert(z2,"Bad zone "..pair[2])
					local iz1=Lib.greenborders[z1] or {}   iz1[z2]=1   Lib.greenborders[z1] = iz1
					local iz2=Lib.greenborders[z2] or {}   iz2[z1]=1   Lib.greenborders[z2] = iz2
				end
				Lib.data.greenborders=nil
			end
			yield("green borders")

			do -- INITIALIZE BORDERS
				for c,cont in pairs(Lib.data.basenodes.borders) do  -- yes, c is useless
					for d,data in ipairs(cont) do
						SmartAddNode(data,"border")
					end
					yield("borders "..c)
				end
				Lib.data.basenodes.borders = nil
				--local t2b=debugprofilestop()  print("LibRover initialization: borders ",t2b-t2)  t2=t2b
				--@~230ms
			end


			do -- INITIALIZE TRAVEL
				for d,data in ipairs(Lib.data.basenodes.travel) do
					SmartAddNode(data)
					if d%10==0 then yield("travel") end
				end
				Lib.data.basenodes.travel = nil
				--local t2b=debugprofilestop()  print("LibRover initialization: travel ",t2b-t2)  t2=t2b
				--@~320ms
			end
			yield("travel")



			do -- INITIALIZE EXPLICIT FLOORING
				--t2 = debugprofilestop()
				-- This is just silly.
				local i=0
				for id,data in pairs(Lib.data.basenodes.MapsWithExplicitFloors) do
					for n,node in ipairs(data) do
						SmartAddNode(node)
						i=i+1  if i%10==0 then yield("flooring") end
					end
					Lib.data.basenodes.MapsWithExplicitFloors[id]=true
					--i=i+1  if i%1==0 then yield("flooring") end
				end
				-- don't delete it, it'll come in handy to check which maps NEED explicit floor crossing.
				--local t2b=debugprofilestop()  Lib:Debug("Initialization: flooring |cffffeeaa%.3f",t2b-t2)  t2=t2b
			end
			yield("flooring")

			--@~380ms



			do -- INITIALIZE PORTKEYS
				local i,item
				for i,item in ipairs(Lib.data.portkeys) do while(1) do
					local dest=item.destination
					-- make sure it's pointing to a node.
					if dest=="HEARTH" then -- leave it
					elseif type(dest)=="string" then
						-- make a node, or find one
						item.destination = SmartAddNode(dest)
						if not item.destination then break end -- Invalid location.
						item.destination.onlyhardwire = true
					elseif type(dest)=="table" then
						item.destination.onlyhardwire = true
					end

					item.link=item.link or {}
					local link=item.link
					link.item=item.item
					link.spell=item.spell
				break end end
			end

			yield("portkeys")

			--Lib:Debug("Initialization total: |cffffeeaa%.3f",debugprofilestop()-t1)

			return true
		end

		local thread

		function Lib:StopStartup()
			-- "forget" the init frame
			self:Debug("Stopping startup OnUpdate cycle.")
			self.F:Hide()
			self.F:SetScript("OnUpdate",nil)
			self.startup_thread=nil
		end

		local STARTUP_INTENSITY=50
		Lib.startuptimes={}
		function Lib:StartupStep()
			if not ZGV.loading_screen_disabled then return end
			if not self.startup_thread then self:Debug("No startup thread.") self:StopStartup() return end
			if not ZGV.guidesloaded then return end

			local thisframe=0

			while thisframe<STARTUP_INTENSITY do
				local t=debugprofilestop()
				local good,ret = coroutine.resume(self.startup_thread)
				t=debugprofilestop()-t
				thisframe=thisframe+t
				self.startuptimes[ret]=(self.startuptimes[ret] or 0) + t
				self.startuptimes.total=(self.startuptimes.total or 0) + t
				Lib:Debug("Initialization: %s |cffffeeaa%d|rms",tostring(ret),t)


				if not good then
					self.ready=nil
					self:StopStartup()
					ZGV:Print("ERROR initializing LibRover, check the Lua errors and report them, please.")
					error(tostring(ret or "?").."\nin\n".. (debugstack(thread) or "no stack"))
				else
					if ret==true then
						self:StopStartup()
						self:Debug("Startup complete! -------------")
						self.ready=true
						self.startup_thread=nil

						if self.find_after_load then
							self:Debug("Unwrapping an early set FindPath!")
							self:FindPath(unpack(self.find_after_load))
							self.find_after_load=nil
						end

						break
					else
						--self:Debug("pending...")
					end
				end
			end
		end

		function Lib:DoStartup()
			self:UpdateConfig()
			if self.F then return end
			self.F=CreateFrame("FRAME")
			self.F:Show()
			self.F:SetScript("OnUpdate",function() Lib:StartupStep() end)
			self.startup_thread = coroutine.create(_StartupThread)
		end



		--[[====]]--



		-- uhhh, WHY!???
		local function GetPlayerPos()
			local m,f,x,y = Astrolabe:GetCurrentPlayerPosition()
			if m==13 or m==14 or m==0 or m==689 or m==-1 or m==485 or m==466 or m==613 or m==862 then
				-- bad pos, better get the last
				m,f,x,y=unpack(Astrolabe.LastPlayerPosition)
			end
			return m,f,x,y
		end


		 -- LEGACY, OBSOLETE, only used by the |fly lines

			function Lib:GetNearestTaxi()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local m,f,x,y = playerpos()
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
				--pmap = GetCurrentMapAreaID()
				if not Astrolabe then return end
				local mindist=999999
				local minnode
				local m,f,x,y = playerpos()
				if not x then return end
				for n,node in ipairs(Lib.nodes.taxi) do
					if node.m and node.x and node.y and node.m == m then
						local dist = Astrolabe:ComputeDistance(m,f,x,y,node.m,node.f,node.x,node.y)
						if dist and dist<mindist then mindist,minnode=dist,node end
					end
				end
				return minnode,mindist
			end

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

		-- Adds instant travel modes to starting node
		function Lib:SetupInitialQuickTravel(current)
			local hearthlocation;
			local bind=GetBindLocation()

			local function FindBindLocation(bind)
				local found
				for i,node in ipairs(Lib.nodes.inn) do
					if bind==TryBZL(node.name) then
						Lib:Debug(" - Found hearth node: \"|cffffffff%s|r\" = |cffffee00%s" , bind, node:tostring())
						return node
					end
				end
				Lib:Debug("|cffff8844 No idea where player's hearthstone is bound to: |cffff8800%s",bind)
				return nil
			end

			if Lib.cfg.use_mage_teleport then
				local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
				--local is_mage = select(2,UnitClass("player"))=="MAGE"
				-- teleports allowed at all
				for i,node in ipairs(Lib.nodes.mageteleport) do
					if IsSpellKnown(node.spell) and GetSpellCooldown(node.spell)==0 then
						local meta = {mode="teleport",cost=MAGE_TELEPORT_COST}
						current:AddNeigh(node,meta)
						if node.spell==50977 then node.template="deathgate" end
						if node.spell==3561 then meta.cost = MAGE_TELEPORT_COST_STORMWIND end  -- Stormwind Mage Tower is a bitch to get out of.
					elseif Lib.cfg.use_last_resort then
						if node.faction and (node.faction=="B" or node.faction~=enemyfac) then
							current:AddNeigh(node,{mode="courtesy",cost=20000}) --Crazy cost to not use it unless this is only way to get to this continent.
							node.template="courtesymage"
						end
					end
				end
			end


			if not hearthlocation then hearthlocation = FindBindLocation(bind) end


			local userlevel = UnitLevel("player")

			for i,port in ipairs(Lib.data.portkeys) do while 1 do
				-- first let's get rid of bad conditions
				if port.cond and not port.cond() then break end
				if port.use_hearth_cd and not Lib.cfg.use_hearth then  break  end  -- obviously
				if not port.use_hearth_cd and port.item and not Lib.cfg.use_item_teleports then  break  end  -- obviously, too
				if port.is_astral and not Lib.cfg.use_astral_recall then  break  end  -- captain?
				if port.maxlevel and userlevel>port.maxlevel then  break  end -- we can't use this item
				if port.item and (GetItemCount(port.item)==0 or not IsUsableItem(port.item)) then  break  end
				if port.spell and not IsSpellKnown(port.spell) then  break  end

				local cdFunc = port.spell and GetSpellCooldown or GetItemCooldown
				local coolstart,cooldur,coolavail = cdFunc(port.spell or port.item or 0)
				local coolrem = max(0,coolstart+cooldur-GetTime())
				if port.item and coolavail==0 then break end ----------------

				-- seems fine, let's find a destination
				local dest,link=port.destination,port.link

				-- make sure it's pointing to a node.
				if dest=="HEARTH" then  dest = hearthlocation  end
				if not dest then  break  end ----------------

				local raritycost = (port.cooldown or 0)/72 --30m cd = 25 extra cost.

				if port.item then
					link.mode = port.item~=6948 and "useitem" or "hearth"
					link.cost = (port.cost or 0) + coolrem + ITEM_USE_COST + raritycost
				elseif port.spell then
					link.mode = "spell"
					link.cost = (port.cost or 0) + coolrem + raritycost
				end
				link.time = 20

				link.spell=port.spell
				current:AddNeigh(dest,link)
			break end end

		end


		local start_is_new,end_is_new

		function Lib:FindPath(am,af,ax,ay,bm,bf,bx,by, handler, extradata, force_new, quiet)
			--if ax>=1 then ax,ay=ax/100,ay/100 end
			--if bx>=1 then bx,by=bx/100,by/100 end

			self.quiet = quiet
			self.success_endnode = nil
			self.low_priority = false

			self.updating = true

			--if UnitOnTaxi("player") then

			--[[
			if self.delayed_by_taxi then
				Lib:Debug("&LibRover path delayed by taxi. Will resume upon landing.")
				--self.delayed_by_taxi = true
				self.calculating=false
				return
			end
			--]]

			if am==0 then
				--local m,f=ZGV.CurrentMapID,ZGV.CurrentMapFloor
				am,af,ax,ay = playerpos()
				if not am or not ax or am==0 then
					Lib:Debug("FindPath current pos unknown, failing")
					Lib:ReportFail()
					return
				end
				self.start_is_player=true
				--[[
				local x,y = Astrolabe:TranslateWorldMapPosition( am, af, ax, ay, m, f )
				if x and y and x>0 and y>0 and x<1 and y<1 then
					am,af,ax,ay=m,f,x,y
					--Lib:Debug("We're actually in %s at %.1f %.1f", GetMapNameByID(lam) or lam,lax*100,lay*100)
				end
				--]]
			end

			af = ZGV:SanitizeMapFloor(am,af)
			bf = ZGV:SanitizeMapFloor(bm,bf)

			Lib:CheckMaxSpeeds()

			--if lam==13 or lam==14 or lam==0 or lam==689 or lam==-1 or lam==485 or lam==466 then
				-- Guess which zone we're in. SILLY.

			Lib:Debug("FindPath:  |cffaaff88%s|r/%d |cffffffff%.1f|r,|cffffffff%.1f|r --> |cffaaff88%s|r/%d |cffffffff%.1f|r,|cffffffff%.1f|r",
				am and GetMapNameByID(am) or am or "nil",af,ax and ax*100 or 0,ay and ay*100 or 0,
				bm and GetMapNameByID(bm) or bm or "nil",bf,bx and bx*100 or 0,by and by*100 or 0)

			if not self.ready then
				self.find_after_load={am,af,ax,ay,bm,bf,bx,by,handler,extradata,force_new}
				self:Debug("FindPath: Saving for after startup")
				return handler and handler("PROGRESS")
			end


			if not am or not af or not bm or not bf or am==0 or bm==0 then self:ReportFail() return end
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
			if not start_is_new and not end_is_new then self:UpdateNow() return end

			lam,laf,lax,lay,lbm,lbf,lbx,lby=am,af,ax,ay,bm,bf,bx,by

			self.extradata = extradata



			lastupdate=999

			self.PathFoundHandler = handler



			wipe(Lib.debug_time)
			Lib.debug_count_compares=0
			Lib.debug_frames_total=0
			opened_count=0
			closed_count=0

			self.calculating = true
			self.calculation_step = 0

			closed_count = 0

			self.thread = coroutine.create(self.StepForever)

			hardmax = self.quiet and hardmaxidle or hardmaxfirst



			self.path_initialized=false

			-- NOW, EVERYTHING IS SET UP. Initialization and calculation kicks off in frame updates.
		end

		-- These fields get REMOVED from the nodes when clearing.
		local temp_fields = {cost=1,time=1,mycost=1,mytime=1,heur=1,score=1,status=1,parentlink=1,parent=1,prev=1,['next']=1,text=1,maplabel=1,toend=1,taxiFinal=1, link=1,a_b=1,a_b__c_d=1,costdesc=1}

		function Lib:InitializePath()

			-- CLEAR OLD START/END

			self:Debug("InitializePath: starting -->")

			local all=Lib.nodes.all
			if start_is_new then
				wipe(self.nodes['start'])
				for ni=#all,1,-1 do if all[ni].type=="start" then tremove(all,ni) break end end
			end
			if end_is_new then
				wipe(self.nodes['end'])
				for ni=1,#all do while all[ni] and all[ni].type=="end" do tremove(all,ni) end end
			end
			if #self.nodes.temp>0 then
				wipe(self.nodes.temp)
				for ni=1,#all do while all[ni] and all[ni].type=="temp" do tremove(all,ni) end end
			end

			self:Debug("InitializePath: cleared old nodes, %d left",#all)

			-- make neighbours forget our linkage
			for ni,node in ipairs(Lib.nodes.all) do
				node:RemoveNeighType("temp",start_is_new and "start",end_is_new and "end")  -- three for the price of one!
			end

			self:Debug("InitializePath: cleared linkage")



			-- INSTALL NEW START/END NODES

			if end_is_new then
				self.endnode = LibRover_Node:New{m=lbm,f=lbf,x=lbx,y=lby,type="end",title=Lib.extradata and Lib.extradata.title,
				zone=Lib.extradata and Lib.extradata.waypoint_zone,realzone=Lib.extradata and Lib.extradata.waypoint_realzone,subzone=Lib.extradata and Lib.extradata.waypoint_subzone,minizone=Lib.extradata and Lib.extradata.waypoint_minizone,
				region=Lib.extradata and Lib.extradata.waypoint_region,
				indoors=Lib.extradata and not not Lib.extradata.waypoint_indoors
				}
				AddNode(self.endnode)

				self.copyendnode = LibRover_Node:New{m=lbm,f=bf,x=lbx,y=lby,type="temp",warlocksummon=true,onlyhardwire=true}
				AddNode(self.copyendnode)

				 self:Debug("Initialized end node #".. self.endnode.num .. " with copy #".. self.copyendnode.num.." "..tostring(self.copyendnode))
			end

			if start_is_new or self.force_next then
				self.startnode = LibRover_Node:New{m=lam,f=laf,x=lax,y=lay,type="start",player=self.start_is_player}
				-- guess region by subzonetext, if any region matches that.
				if self.startnode.player then
					self.startnode.zone=BZR[GetZoneText()] or ""
					self.startnode.realzone=BZR[GetRealZoneText()] or ""
					self.startnode.subzone=BZR[GetSubZoneText()] or ""
					self.startnode.minizone=BZR[GetMinimapZoneText()] or ""
					self.startnode.indoors=not Astrolabe.minimapOutside
				end

				Lib:SetupInitialQuickTravel(self.startnode)

				if Lib.cfg.use_last_resort then
					for i,node in ipairs(Lib.nodes.temp) do
						if node.warlocksummon then
							self.startnode:AddNeigh(node,{mode="courtesy",cost=30000}) --Don't use this unless there is no other possible path.
							node.template="courtesywarlock"
						end
					end
				end

				-- This allows for forcing the next node to be visited - like, flying on a taxi enforces the destination point.
				if self.force_next then
					self.startnode:AddNeigh(self.force_next,{mode="taxi",cost=-9999})  -- this should guarantee that this one will be most promising, yes?
					if self.force_next.tostring then
						Lib:Debug("InitializePath: Forced next node: ".. self.force_next:tostring() )
					else
						Lib:Debug("InitializePath: Forced next node... WHAT!? How is that a node!?  Storing in global FORCENODE, check this!!")
						FORCENODE = self.force_next
					end
					--self.delayed_by_taxi=true
				end

				AddNode(self.startnode)

				self:Debug("Initialized start node #".. self.startnode.num)
			end

			if self.extradata and self.extradata.multiple_ends then
				-- this TRANSFORMS the ends into nodes! Supply plain data, don't get recycled.
				self:Debug("WHOA! Multiple endpoints %d",#self.extradata.multiple_ends+1)
				for i,data in ipairs(self.extradata.multiple_ends) do
					local node = LibRover_Node:New(data)
					node.type="end"
					AddNode(node)
				end
			end



			-- clear calculation garbage
			-- moved to after all nodes are set up, because some nodes (multiple endpoints!) used to persist through the endnode wipe, and retained their status/cost from the previous cycle.
			if start_is_new and end_is_new then
				for ni,node in ipairs(Lib.nodes.all) do
					for field,val in pairs(node) do
						if temp_fields[field] then node[field]=nil end
					end
				end
			elseif start_is_new then
				for ni,node in ipairs(Lib.nodes.all) do
					for field,val in pairs(node) do
						if temp_fields[field] then node[field]=nil end
					end
				end
			elseif end_is_new then
				-- smart stuff: clear just the endpoint to speed up calculations
			end

			self.startnode.score=0
			self.startnode.cost=0
			self.startnode.time=0

			self:Debug("InitializePath: cleared temp fields")



			--[[
			if not self.importedTaxis then
				self:RebuildNodes()
				self.importedTaxis = true
			end
			--]]


			------ SET UP OPEN NODES

			if start_is_new and end_is_new then
				self.opennodes:Clear()
				self.opennodes:Add(self.startnode)
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
			end

			if Lib.debug_cnodes then ZGV.Pointer:ClearWaypoints("manual") end

			self:Debug("InitializePath: done. <--")

			self.path_initialized = true
		end

		function Lib:FindImpossiblePath(map)
			Lib:Debug("FindImpossiblePath")
			map = map or lbm
			local fac = UnitFactionGroup("player")
			local impossible=false
			local arrowtext=""


			--TODO add worgen and Golbin areas.
			--Vashji and Deepholm

			if self.ContinentsByID[map]==6 and not (IsQuestFlaggedCompleted(31736) or IsQuestFlaggedCompleted(31767))  then
				--Pandaria
				Lib:Debug("Impossible path to Pandaria.")
				local title
				if fac=="Alliance" then
					title = ZGV.Localizers:GetQuestData(29548).title
				else
					title = ZGV.Localizers:GetQuestData(29690).title
				end
				impossible=true
				arrowtext="To get to Pandaria,\nyou must first complete quest "..title.."."
			elseif (map==606 or map==683) and not IsSpellKnown(90267) then --Mount Hyjal
				Lib:Debug("Impossible path to Mount Hyjal.")
				impossible=true
				arrowtext="You need your GetSpellInfo(90267)\nto fly to Mount Hyjal."
			elseif map==882 --Unga Ingoo
			 or map==899 --Arena of Annihilation --map is named Proving Grounds
			 or map==878 --A Brewing Storm
			 or map==884 --Brewmoon Festival
			 or map==900 --Crypt of Forgotten Kings
			 or map==9999 --Greenstone Village --Don't know these map ids yet.
			 or map==906 --Theramore's Fall
			 then

				local title=map~=899 and GetMapNameByID(map) or "Arena of Annilhilation" --TODO Localize Area of Annilhilation
				Lib:Debug("Impossible path to a scenario "..title)
				impossible=true
				arrowtext="Use the Dungeon Finder to queue\nfor the "..title.." Scenario."

			elseif map==808 and fac~="Neutral" then -- Can't get to Panda area
				Lib:Debug("Impossible path to Panda Starter Area... Stop looking at the Panda starter guide.")
				arrowtext="You can't get there,\n that is the Panda Starter Area."
				impossible=true
			end

			--TODO make rainbow bridge for Dungeons. Doesn't make sense to check for every dungeon location
			--but if there is not path to it, we can always say "Queue for it in Dungeon Finder"
			--This will not be done here, but is related.

			if impossible then
				--TODO make sure travel system doesn't try to calculate a route.
				--TODO set the text of the arrow to arrowtext
				--TODO Hide waypoint/ants? Set waypoint to end point?
				ZGV:Debug(arrowtext)
			end
		end

		function Lib:UpdateNow(quiet)
			if not self.updating then return end
			lastupdate=999
			lax=-999
			self.calculating=false -- yes, false; need to restart, so stop calculating, start updating, wait for FindLastPath call.
			self.quiet=quiet
			--self.updatepaused=nil
		end


		local function assertfmt(test,msg,...)
			if not test then error(msg:format(...)) end
		end

		local WALKSPEED=7

		local colors={['portal']="|cffff8800",['taxi']="|cff88ff00"}

		-- THIS gets called in the Lib.thread coroutine.
		function Lib:StepForever()
			local code,ret = "PENDING",nil
			local safe=0

			while not self.path_initialized do
				Lib:InitializePath()
				yield("PENDING")
			end

			self:Debug("StepForever: initialized, proceeding")

			repeat
				code,ret = self:StepPath()
				if not code then code="ERROR" end
				--print("Step: ",code, "do we have success?",not not self.success_endnode)
				if code=="SUCCESS" then
					--assert(ret,"Success with no end? wtf?")
					--assert(ret.type=="end","Success with type "..ret.type.."? wtf?")
					if not self.success_endnode then
						self.success_endnode=ret
						yield(code)
					else
						-- keep quiet. We know the result already, this happening again means we found ANOTHER end node. Ignore it, we only care for the first.
						code="PENDING"
					end
					self.low_priority = true -- to finish up
				elseif code=="END" then
					-- ?
				else
					yield(code)
				end

				safe=safe+1  if (safe>10000) then print "FAAAAIL!" return end
			until code=="END" or code=="ERROR" -- it can also be PENDING, SUCCESS or TIMEOUT.
			return code,ret
		end

		Lib.PlayerFlags = {}
		setmetatable(Lib.PlayerFlags,{__index=function(t,i) return rawget(t,i) or "" end})

		--local dists_to_portals = {}
		--Lib.dists_to_portals = dists_to_portals

		local tmp_neighs = {}
		local tmp_modefly = {mode="fly"}

		Lib.DO_HEUR = false

		Lib.debug_nodes = {}

		function Lib:StepPath()  -- THE WORKHORSE.
			local _
			self.calculation_step = self.calculation_step + 1

			--self:Debug("Starting StepPath step %d, %d open nodes",self.calculation_step,self.opennodes:Length())

			 local debug_time_cheapest_1 = debugprofilestop()

			local current = self.opennodes:RemoveCheapest()
			if not current then  return "END"  end  --END, fail if no success was reported before

			 Lib.debug_time.cheapest = Lib.debug_time.cheapest + debugprofilestop() - debug_time_cheapest_1



			 local debug_time_initial_1 = debugprofilestop()

			current.status="closed"
			closed_count=closed_count+1

			if current.type=="end" then  return "SUCCESS",current  end


			-- fix current node's map, if phasing
			--current.m = ZGV.Pointer:SanitizePhase(current.m)
			current.f = ZGV:SanitizeMapFloor(current.m,current.f)


			local speeds = self.maxspeedinzone[current.m]
			local maxspeed,runspeed,flyspeed = unpack(speeds)
			runspeed = runspeed*0.8  -- you don't run in a beeline, always. Best not overestimate this flawed transportation method.


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

					if Lib.cfg.use_last_resort then
						for i,node in ipairs(Lib.nodes.temp) do
							if node.warlocksummon then
								tinsert(neighs,{node,{mode="courtesy",cost=30000}}) --Don't use this unless there is not other possible path.
								node.template="courtesywarlock"
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

			local cost_debugging = ZGV.db.profile.debug

			local end_node_for_early_return

			local lib_debug_onodes = Lib.debug_onodes
			local lib_debug_nodes = Lib.debug_nodes
			local lib_debug_nodes_any = next(Lib.debug_nodes)
			local lib_banned_nodes = Lib.banned_nodes
			local lib_banned_nodes_any = next(Lib.banned_nodes)
			local lib_debug_badnodes = Lib.debug_badnodes
			local lib_debug_time = Lib.debug_time

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


				local mode=neighlink.mode

				if neigh.status~="closed"
				and (not neighlink.cond_fun or neighlink.cond_fun())
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

					local mycost,mytime

					--[[  DETERMINE THE MOVEMENT COST, BASING ON LINK MODE ]]--

					if neighlink.cost and mode~="taxi" then -- explicit cost given, don't use any mode-based templates (taxis still use their own times)
						mytime = neighlink.cost  -- timetabled!

					elseif mode == "taxi" then
						if neigh.known and not current.missing then -- current.missing == Thereamore's flight path is gone when it's destroyed.
							mytime = neighlink.cost  -- timetabled!
									or
									getdist(current,neigh) * 1.2 -- taxis fly in wide curves...
										/ (WALKSPEED*4.5) -- roughly?
							if IsSpellKnown(117983) then
								mytime=mytime*0.8
								if cost_debugging then costdesc = costdesc .. "guild perk taxi bonus; " end
							end -- Guild Perk Ride like the Wind.
						else
							mytime=99999
							if cost_debugging then costdesc = costdesc .. "no fly to strange taxi; " end
						end
					elseif mode == "tram" then
						--mycost = 120.00  -- 2 minutes.
						mytime = 300.00  -- make it suck
					--[[
					elseif mode == "teleport" or mode=="hearth" or mode=="astralrecall" or mode=="useitem" then
						mytime = neighlink.cost
						--if ZGV.db.profile.pathfinding_preferfly then mycost=mycost*0.3 end
					elseif mode == "courtesy" then
						mytime = neighlink.cost
					--]]
					elseif mode=="portal" then
						mytime = neighlink.cost or 15.00 -- to avoid "teleport 10 feet away" silliness
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

					else

						local dist=neighlink.dist
						if not dist then
							dist=getdist(current,neigh)
							neighlink.dist=dist
							if dist>999999 then dist=2000 end
						end
						local speedcost = (mode=="fly" and flyspeed or runspeed) * WALKSPEED
						--print(neigh.num," costs ",runspeed,"runspeed for ",dist)
						mytime = dist / speedcost
						--(Astrolabe:ComputeDistance(current.m,current.f or 0,current.x,current.y, neigh.m,neigh.f or 0,neigh.x,neigh.y) or 99999999)*speedcost
						-- divide by movement speed later
					end

					if mode=="fly" and (not current.parentlink or current.parentlink.mode~="fly") then
						mytime = mytime+5
						if cost_debugging then costdesc = costdesc .. "mountup +5; " end
					end

					-- get some sane fallback...
					mytime = mytime or neighlink.cost or 0

					if mytime>100000 then
						mytime=10
						if cost_debugging then costdesc = costdesc .. "sanitized impossible or no time; " end
					end  -- sanitize "impassable" links

					-- by now, mytime should contain estimated travel TIME. Apply generic COST mods now.

					mycost = mycost or mytime

					--if neighlink.hardwired then mycost=mycost*0.6 end
					if neigh.costmod or current.costmod then
						mycost=mycost*tonumber(neigh.costmod or current.costmod)
						if cost_debugging then costdesc = costdesc ..  "costmod "..(neigh.costmod or current.costmod).."; " end
					end

					if neighlink.mud then
						mycost=mycost*neighlink.mud
						if cost_debugging then costdesc = costdesc .. "mud "..neighlink.mud.."; " end
					end  -- Normally, we wouldn't even see this; but startnode is allowed to "see through thick fog" to latch onto the nodes.

					if mode=="walk" and Lib.cfg.avoid_highlevel_zones and Lib.MapLevels[neigh.m]-UnitLevel("player")>=2 then
						mycost = mycost * ( 1 + (Lib.MapLevels[neigh.m]-UnitLevel("player"))*0.2 )
						if cost_debugging then costdesc = costdesc .. "high level avoid; " end
					end

					if (mode=="walk" or mode=="fly") and Lib.cfg.prefer_taxi then
						if maxspeed > 2 then
							mycost=mycost*5
							if cost_debugging then costdesc = costdesc .. "prefer taxi, cost*5; " end
						else
							mycost = mycost*2
							if cost_debugging then costdesc = costdesc .. "prefer taxi, cost*2; " end
						end --Don't want to use hearth too much. If maxspeed = 2 then we can't move quick anyhow so walking is already bad.
					end

					-- Don't start at taxis that are unknown and complicated.
					if mode=="walk" and neigh.type=="taxi" and not neigh.known and (neigh.quest or neigh.factionid or neigh.condition or neigh.class) then
						-- don't walk to unknown special taxis
						mycost=99999
						if cost_debugging then costdesc = costdesc .. "no walk to strange taxi; " end
					end

					-- Seriously frown upon banned nodes :)
					if lib_banned_nodes_any and lib_banned_nodes[neigh] then
						mycost=mycost+99999
						if cost_debugging then costdesc = costdesc .. "banned; " end
					end

					-- ban by quest/faction
					if (neigh.factionid and select(3,GetFactionInfoByID(neigh.factionid))<neigh.factionstanding)
					or (neigh.quest and not IsQuestFlaggedCompleted(neigh.quest))
					or (neigh.class and select(2,UnitClass("player"))~=neigh.class)
					then -- Class only! woo
						mycost = mycost+99999
						if cost_debugging then costdesc = costdesc .. "bad faction/quest/class; " end
					end

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

					-- cost calculation is over.

					local cost = current.cost + mycost
					local time = current.time + mytime
					local heur = 0


					--[[  DO HEURISTICS (OR NOT)  ]]--
					--[[
					if self.DO_HEUR then
						local endn=self.endnode
						heur = getdist(neigh,endn) *4
						if heur<99999999 then heur=heur/self.maxspeedinzone[neigh.m][1] end
					elseif self.DO_HEUR2 then
						-- find all portals and distances. CACHED.
						--dists_to_portals[neigh]
						--if not dists then dists={} dists_to_portals[neigh]=dists end
						local endn=self.endnode
						if neigh.type=="portal" then
							heur=0 --instant favourite
						else
							local heur=neigh.toend
							if not heur then heur=getdist(neigh,endn) neigh.toend=heur end
							heur=heur*5
							local minheur=dists_to_portals[neigh]
							if not minheur then
								minheur=99999999
								for ni,nport in ipairs(self.nodes.portal) do  if nport.c==neigh.c then
									h=getdist(neigh,no)
									if h<minheur then  minheur=h  end
								end  end
								--dists_to_portals[neigh]=minheur
							end
							heur=min(heur,minheur)
							if heur<99999999 and heur>0 then heur=heur/self.maxspeedinzone[neigh.m][1] end
							--print(heur)
						end
					end
					--]]


					-- or perhaps just our path is better?
					if lib_debug_onodes or (lib_debug_nodes_any and lib_debug_nodes[neigh.num]) then
						Lib:Debug ("From [%d]: %s%s|r (%s %.1f), c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r",current.num, colors[neigh.type] or "",neigh:tostring(), mode,mycost, cost,heur,cost+heur)
					end

					local updated
					if not neigh.cost or cost<neigh.cost then
						if lib_debug_onodes or (lib_debug_nodes_any and lib_debug_nodes[neigh.num]) then
							if neigh.cost then
								Lib:Debug ("Updating node: %s%s|r (%s), c=%.1f>%.1f, h=%.1f>%.1f, sc=%.1f>|cffddffdd%.1f|r", colors[neigh.type] or "",neigh:tostring(), mode, neigh.cost,cost,neigh.heur,heur,neigh.score,cost+heur)
							else
								--Lib:Debug (("Opening node: %s%s|r, c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r"):format(colors[neigh.type] or "",neigh:tostring(),cost,heur,cost+heur))
								Lib:Debug ("Opening node: %s%s|r (%s), c=%.1f, h=%.1f, sc=|cffddffdd%.1f|r", colors[neigh.type] or "",neigh:tostring(), mode, cost,heur,cost+heur)
							end
							--ZGV.Pointer:SetWaypoint(neigh.m,neigh.f,neigh.x,neigh.y,{title=neigh:tostring(true),overworld=true})
						end
						neigh.cost,neigh.heur,neigh.score = cost,heur,cost+heur
						neigh.time = time
						neigh.parentlink = neighlink
						neigh.mytime = mytime
						neigh.mycost = mycost
						neigh.parent = current
						neigh.costdesc = costdesc
						updated=true
					end
					-- With the heaps used for open nodes, NEVER ALLOW THE NODE SCORE TO INCREASE. This screws things royally.

					 lib_debug_time.scoring = lib_debug_time.scoring + debugprofilestop() - debug_time_scoring_1

					 local debug_time_adding_1 = debugprofilestop()

					if updated then
						if neigh.status=="open" then
							-- just update it. RESORT THE FUCKING HEAP!! ... or not... depending on options in NodeSetHeap
							--[[
							if neigh.warlocksummon then
								self:Debug("COURTESY %d %s IS OPEN, BUBBLING!",neigh.num,tostring(neigh))
								BUBBLED=neigh
								self:Debug("Index ".. tostring(self.opennodes.indices[neigh]))
								self.opennodes:BubbleUp(neigh)
								self:Debug("Index ".. tostring(self.opennodes.indices[neigh]))
							else
							end
							--]]
							self.opennodes:BubbleUp(neigh)
						else
							self.opennodes:Add(neigh)
							--[[
							if neigh.warlocksummon then
								self:Debug("COURTESY %d %s ADDED TO OPEN! from %d = %s", neigh.num, tostring(neigh), current.num,tostring(current))
								self:Debug("Index ".. tostring(self.opennodes.indices[neigh]))
							end
							--]]
							opened_count=opened_count+1
						end
					end

					 lib_debug_time.adding = lib_debug_time.adding + debugprofilestop() - debug_time_adding_1

					if neigh.type=="end" then
						end_node_for_early_return = neigh
					end

				else
					-- closed or otherwise invalid

					 lib_debug_time.neighblah = lib_debug_time.neighblah + debugprofilestop() - debug_time_neighblah_1

					-- local debug_time_closed_1 = debugprofilestop()

					if lib_debug_badnodes and neigh.status~="closed" then
						local reason=""
						if (neighlink.cond_fun and not neighlink.cond_fun()) then reason=reason.." failed condition " end
						if (mode=="fly" and not flyspeed) then reason=reason.." can't fly " end
						if (neigh.onlydst and neigh.onlydst~=current) then reason=reason.." only dst "..neigh.onlydst.num.."!="..current.num end
						Lib:Debug ("Not opening node: %s%s|r, cost %d, heur %d, score |cffddffdd%.2f|r - %s", colors[neigh.type] or "",neigh:tostring(),neigh.cost,neigh.heur,neigh.cost+neigh.heur, reason)
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
				Lib:Debug ("Closing node: [%d] %s%s|r, cost %d, heur %d, score |cffddffdd%.2f|r. Opened: %d", current.num,colors[current.type] or "",current:tostring(),current.cost or 99999999,current.heur or 0,(current.cost or 99999999)+(current.heur or 0), opened_count)
				Lib:Debug ("Step %d: %d open, %d closed, time %.1f", self.calculation_step,dictsize(self.opennodes),closed_count,cost or 0)

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

			if end_node_for_early_return then
				--return "EARLYSUCCESS",end_node_for_early_return
			end

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

		-- This is a kind of a nightmare data set, but it has to be traveled in the written order - plain pairs(travel_locale) would screw the order.

		-- These tags have to    -- what? ~sinus
		local travel_locale = {
			{'taxi_taxi__taxi_taxi',"arrivefp"},
			{'forced_taxi__taxi_taxi',"Arrive at {name}, {map}\nFly again to {next_name}, {next_map}"},
			--{'taxi_taxi__taxi_taxi',"arrive"},
			{'*_taxi__taxi_taxi',"taxi"}, {'taxi_taxi',"arrivefp"},
			{'taxi',"Talk to {npc}\nFly to {next_name}, {next_map}"},
			{'taxidumb',"Arrive at your destination"},

			{'*_ship__ship_ship',"Ride the boat to {next_port}"}, {'ship_ship',"arrive"},
			{'*_zeppelin__zeppelin_zeppelin',"Ride the zeppelin to {next_port}"}, {'zeppelin_zeppelin',"arrive"},

			{'*_*__pandarope_*',"Click the rope on the ground\nto swing to {next_map}"},

			{'*_portal__portal_*',"portalclick"}, {'portal*_*',"arrive"},
			{'*_portal__portalauto_*',"portalauto"},-- {'portalauto_X',"arrive"},
			{'*_portal__portalDungeonEnter_*',"portalauto"},-- {'portaldungeon_X',"arrive"},
			{'*_portal__portalDungeonExit_*',"Use the portal to exit {map}"},-- {'portaldungeon_X',"arrive"},
			{'portalauto',"Enter portal to {next_map}"},
			{'portaldungeon',"Enter portal to {next_map}"},
			{'portalclick',"Click portal to {next_map}"},
			{'*_teleportnamed',"Teleport to {next_name}"},
			--{'portal',"Click portal to {next_map}\nTeleport to {next_map}"},
			{'*_pinkportal',"Go through the pink portal to {next_map}"},
			{'*_*__pinkportal_*',"Go through the pink portal to {next_map}"},
			{'*_*__darkportal_*',"Enter the huge green portal\nTeleport to {next_map}"},
			{'*_darkportal',"Enter the huge green portal\nTeleport to {next_map}"},
			{'*_*__cityportal_*',"Enter the circular portal\nTeleport to {next_map}"},
			{'*_cityportal',"Enter the circular portal\nTeleport to {next_map}"},
			{'*_blackcat',"Talk to the Nightsaber Rider\nto travel {next_name}"},
			{'*_moltentele',"Talk to Lothos Riftwaker\n Teleport to {next_map}"},
			{'*_orbofcommand',"Click on Orb of Command\n Teleport to {next_map}"},
			{'*_dragonrider',"Talk to the dragon\n Arrive at {next_map}"},
			{'*__transporter_*',"Enter the transporter"},
			{'transporter_*',"Exit the transporter"},

			{'walk_border',"walk_map"}, {'border_border',"walk_map"},

			{'arrive',"Arrive at {map}"},
			{'arrivefp',"Arrive at {name}, {map}"},

			{'*_tram__tram_tram',"tram"}, {'tram_tram',"arrive"},
			{'tram',"Ride the tram to {next_map}"},

			{'deathgate',"Cast Death Gate to Acherus"},
			{'teleport',"Cast teleport to {map}"},

			{'courtesymage',"Find a Mage to teleport you to {map}\nThere is no direct path"},
			{'courtesywarlock',"There is no path to {map} for you."},
			{'courtesy',"Use a Courtesy!"},

			{'teleport_ask',"Use a Mage Portal to {map}"},
			{'useitem',"Use {item}"},

			{'hearth',"Hearth to {name}"},
			{'astralrecall',"Cast Astral Recall to {name}"},

			{'*_door',"Click to open the door"},
			{'walk',"Go to {node}"},
			{'swim',"Swim to {node}"},
			{'walk_map',"Go to {bordermap}"},
			{'fly',"Go to {node}"},
			{'travel','walk'},
		}
		-- And, this is for fast lookups.
		local travel_locale_keys={}  for i,pair in ipairs(travel_locale) do travel_locale_keys[pair[1]]=pair[2] end

		local function AngleBetween(n1,n2,n3)
			if not (n1 and n2 and n3) then return 99 end
			local a1 = n2:GetAngleTo(n1)
			local a2 = n2:GetAngleTo(n3)
			if not (a1 and a2) then return 99 end
			local d = math.abs(a2-a1)
			if d>180 then d=360-d end
			return d
		end

		Lib.RESULTS_SKIPPED_START = {}
		Lib.RESULTS_SKIPPED_END = {}

		local n
		function Lib:ReportPath(endnode)
			local results = {}
			self.RESULTS = results

			wipe(Lib.RESULTS_SKIPPED_START)
			wipe(Lib.RESULTS_SKIPPED_END)

			-- do the backwards walk
			while endnode do
				--local t={}
				--for k,v in pairs(endnode) do t[k]=v end
				--table.insert(results,1,t)
				endnode.link=endnode.parentlink
				table.insert(results,1,endnode)
				endnode = endnode.parent
			end

			-- now walk forward. This could be done backwards, too, but it just a nuisance do to so.

			-- If a node is close enough to the starting node... just let its own neighbours be ours.
			-- This should result in seamless skipping of the node.
			-- PATH COMPLETION IS ACHIEVED HERE.



			--=========== HAIRPIN OPTIMIZATION

			-- try to skip the first point, if it's close and an acute angle

			local sn,n1,n2=results[1],results[2],results[3]

			--if (n1.type=="border" or n1.type=="fly" or n1.type=="walk")
			while sn and n1 and n2
			and n2.link and (n2.link.mode=="walk" or n2.link.mode=="border" or n2.link.mode=="fly")
			and (n1.link.mode=="walk" or n1.link.mode=="fly")
			and not n1.border_in_flight
			--and n2.border
			and
				(
					-- standing on the point
					(getdist(sn,n1)<(tonumber(n1.radius) or (IsFlying("player") and 50 or 20))
					and (sn.f==n1.f or n1.optaway)		-- if n1 is a midpoint (See Pointer.lua: ~2000) then allow the floors to be ignored.
					and sn.region==n1.region)
					--or getdist(n1,n2.border)<(IsFlying("player") and 50 or 20)
					or
					--(n2.type=="border" and n2.border and getdist(n1,n2)+getdist(n1,n2.border)-getdist(n2,n2.border)<100)  -- n1 is between n2 and n2.border
					(
						-- or standing next to the point, acute angle, same floor
						AngleBetween(sn,n1,n2)<45-- and getdist(sn,n1)<getdist(n1,n2)
						and sn.f==n1.f and n1.f==n2.f and sn.region==n1.region and n1.region==n2.region
					)
					--[[
					or
					(
						-- standing directly between this and next, any floor (staircase?)
						and AngleBetween(sn,n1,n2)<15 -- and getdist(sn,n1)<getdist(n1,n2)
						and ((sn.f==n1.f) or (sn.f==n2.f))
					)
					--]]
					or
					(
						getdist(sn,n1)+getdist(sn,n2)-getdist(n1,n2)<50
						--and ((sn.f==n1.f) or (sn.f==n2.f) or (sn.region==n1.region) or (n1.region==n2.region))
						and (sn.f==n1.f and sn.region==n1.region)
					)
				)
				-- "skip if standing on first node ; also if hairpin detected, but only all on same floor"
			and not (n1.testflags and not n1.flagtestresult)
			and not (n2.testflags and not n2.flagtestresult)
			do
				Lib:Debug("|cffff8800skipped starting node|r: %s",n1:tostring())
				-- remove n1 from between sn and n2
				sn.link=n1.link
				n1.optaway = nil
				tremove(results,2)
				tinsert(Lib.RESULTS_SKIPPED_START,n1)
				sn,n1,n2=results[1],results[2],results[3]
			end

			-- repeat for pre-end point. UGLY.

			if #results>2 then
				-- try to skip the pre-last point, if it's close and an acute angle
				local n1,n2,en=results[#results-2],results[#results-1],results[#results]

				if n2.link and (n2.link.mode=="walk" or n2.link.mode=="border" or n2.link.mode=="fly")
				and (n1.f==n2.f and n2.f==en.f) and (n1.minimapzone==n2.minimapzone and n2.minimapzone==en.minimapzone)
				--and n2.border
				and ( getdist(n2,en)<(n2.radius or 20)  or  (getdist(n2,en)<(n2.radius or 20)*3 and AngleBetween(n1,n2,en)<45) )
				then
					Lib:Debug("|cffff8800skipped pre-ending node|r: %s",n2:tostring())
					-- remove n1 from between sn and n2
					n1.link=n2.link
					tremove(results,#results-1)
					tinsert(Lib.RESULTS_SKIPPED_END,n1)
				end
			end

			--============ HAIRPIN OPTIMIZATION ENDS.


			-- TAXI DISPLAY PREPARATION: find the final flight and stamp it onto all flights in a sequence.

			local final_node
			for i=#results-1,2,-1 do  while true do --find the flights that are not final
				-- go backwards, so that we meet the final nodes first.

				local n,np,npp,nn=results[i],results[i-1],results[i-2],results[i+1]

				--[[  VISUAL AID:

				Typical case:
				 (START) -----> (taxi) ==> (taxi) ==> (taxi) -----> (whatever) -----> (taxi) ==> (taxi) ----> (END)

				Simple in-progress case: ... just arrive
				 (START) -----> (taxi, cost<0) -----> (END)

				Keep-flying in-progress case:
				 (START) -----> (taxi, cost<0) ==> (taxi) ==> (taxi) ==> (taxi) -----> (END)

				--]]

				if n.type=="taxi" -- no point in checking other nodes, is there :)
				and n.taxioperator~="blackcat" then --These don't connect like most taxi nodes.
					if (np.type=="taxi" and np.type~="blackcat") --or n.cost<0 -- there's a taxi before this, or player's currently on one
					and (nn.type~="taxi" or nn.taxioperator=="blackcat")
					then  -- we're an endpoint!
						final_node = n  -- remember this, will stamp nodes before us with this
						Lib:Debug("&LR_TAXIFINAL Taxi result %d is new final %s",i,final_node.name)
						n.taxiFinal=true
						n.taxiDestination=nil -- If we are a final then we don't have any Destinations.
						--n.is_arrival = true -- (n.cost>0)  -- forced-arrival low-costies ARE NOT arrivals.

					elseif final_node then  -- we're a start or midpoint

					--if n.cost>0  -- negative cost? could be, when the taxi was marked as current in progress.
					--if final_node  -- is known (but isn't us)
					--then
						Lib:Debug("&LR_TAXIFINAL Taxi result %d is %s, final = %s",i,n.name,final_node.name)
						n.taxiDestination = final_node
						--if np.type=="taxi" then n.is_arrival = true end  -- we're not the first, and not the last, so we're a skipped midpoint.
					end
				else
					final_node = nil
				end
			break end end



			for n=1,#results do while(1) do
				local node = results[n]

				node.prev = results[n-1]
				node.next = results[n+1]

				local nextnode = node.next
				local text

				if node.link and node.link.mode=="fly" and node.indoors then node.link.mode="walk" end

				--if not node.link then break end --continue

				local travelmode = node.link and (node.link.template or node.link.mode) or "walk"  -- how we get to this point
				local nodetype = node.template or node.type or (node.type=="start" and "start") or "*"  -- this point type

				--[[
				if Lib.cfg.use_mage_teleport==true and travelmode=="teleport" and not IsSpellKnown(node.spell) then
					-- not a mage? use courtesy or something?
				end
				--]]

				if node.link and node==node.link.n1 and nextnode==node.link.n2 then text=node.link.dir1 end
				if node.link and node==node.link.n2 and nextnode==node.link.n1 then text=node.link.dir2 end

				text = text or node:GetActionTitle(node.prev,node.next)-- or node.title or (node.link and node.link.title)

				-- Determine proper wording for the node.
				local a_b = travelmode .. "_" .. nodetype
				local a_b__c_d = ""
				if nextnode then
					if Lib.zone_is_vash(node.m) and Lib.zone_is_vash(nextnode.m) and travelmode=="walk" then travelmode="swim" end
					a_b__c_d = travelmode .. "_" .. nodetype .. "__" .. (nextnode.link and (nextnode.link.template or nextnode.link.mode) or "walk") .. "_" .. (nextnode.template or nextnode.type or "*")
				end

				node.a_b = a_b
				node.a_b__c_d = a_b__c_d

				if not text then
					-- Try for a fast match first
					--text = travel_locale[a_b__c_d] or travel_locale[a_b] or travel_locale[travelmode] or travel_locale[nodetype] or "walk"

					-- Okay, wildcards it is, then.
					-- First, try to match full current and next node types and travel modes.
					-- For example, fly_ship__ship_ship means this node has us flying to the pier, while the next is a ship connection to the destination port.
					if DEBUG_MATCHING then Lib:Debug("%d. [%d] trying to match, in order: |cffaadd55%s , %s , %s , %s",n,node.num,a_b__c_d,a_b,travelmode,nodetype) end
					for i,patpair in ipairs(travel_locale) do
						local pat=patpair[1] :gsub("%*","%%w*")
						if a_b__c_d:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cffaaff00%s",pat) end   break end
						if a_b:match("^"..pat.."$") then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff77ff00%s",pat) end   break end
						if travelmode==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff44ff00%s",pat) end   break end
						if nodetype==pat  then text=patpair[2]   if DEBUG_MATCHING then Lib:Debug("- matched |cff00ff00%s",pat) end   break end
					end
				else
					if DEBUG_MATCHING then Lib:Debug("%d. [%d] already set (by action title) to |cffaadd55%s",n,node.num,text) end
				end

				text=text or "walk"

				if (a_b=="taxi_taxi" or a_b=="ship_ship" or a_b=="zeppelin_zeppelin" or a_b=="portal_portal" or text=="arrive")
				 and node~=Lib.force_next then  -- prepare to skip the point... oh shit oh shit
					node.is_arrival=true
				end
				if node==Lib.force_next and node.a_b__c_d=="taxi_taxi__taxi_taxi" then
					text='forced_taxi__taxi_taxi'
				end

				if DEBUG_MATCHING then Lib:Debug("-- finally matched: |cff00ff88%s",text) end

				while (travel_locale_keys[text]) do text=travel_locale_keys[text] end   -- do redirects

				local nextmap = GetMapNameByID(nextnode and (nextnode.taxiDestination and nextnode.taxiDestination.m or nextnode.m) or 0)

				-- Show "Portal to Vashj'ir" instead of "Portal to Shimmering Expanses" et al.
				if nextnode and nextnode.type=="portal" and (nextnode.m==610 or nextnode.m==614 or nextnode.m==615) then  nextmap=GetMapNameByID(613)  end

				-- All these TryBZL is attempting to localize each element before it gets put into the complete string.
				local text = text
					:gsub("{node}",TryBZL(node:GetText(node.prev,node.next)) or "?")
					:gsub("{name}",TryBZL(node.name) or "?")
					:gsub("{next_name}",nextnode and (nextnode.taxiDestination and TryBZL(nextnode.taxiDestination.name) or TryBZL(nextnode.extitle) or TryBZL(nextnode.name)) or "?")
					:gsub("{map}",TryBZL(MapName(node)))
					:gsub("{next_map}",nextnode and nextnode.title and TryBZL(nextnode.title) or TryBZL(nextmap) or "?")
					:gsub("{next_port}",nextnode and nextnode.port and TryBZL(nextnode.port)..", "..TryBZL(nextmap) or TryBZL(nextmap) or "?port?")
					:gsub("{bordermap}",nextnode and nextnode.border==node and TryBZL(MapName(nextnode)) or TryBZL(MapName(node)))
					:gsub("{item}", GetItemInfo(node.item or (node.link and node.link.item) or 0) or "item")
					:gsub("{npc}",TryBZL(node.npc) or "?")
				node.text = TryBZL(text)

				node.maplabel = node:GetText(node.prev,node.next)
				if ZGV.db.profile.debug then node.maplabel = node.maplabel .. "\n" .. node:tostring() end

				break
			end end

			-- print out. Remove it later!
			--print("path:")
			for i=1,#results do
				local node=results[i]
				local color=""
				if (node.is_arrival) then color="|cff888888" end
				--if not (node.is_arrival and Lib.cfg.strip_arrivals) then
					Lib:Debug (color.."%d. |cff88ff88%s|r -- |cff88ccdd%s|r  (dist %d) |cff8888dd{%s}|r",
					i-1, node.type=="start" and "START" or node.text, node.maplabel,
					node.link and node.link.dist or 0, node.a_b__c_d~="" and node.a_b__c_d or node.a_b or "")
				--end
			end

			lastupdate=0

			if #results==2 then
				if getdist(results[1],results[2])<ZGV.Pointer:GetDefaultStepDist() then return self:ReportArrival() end
			end

			if self.PathFoundHandler then self.PathFoundHandler("success",results,{fromme=self.start_is_player}) end
		end

		function Lib:ReportFail()
			Lib:Debug("NO ROUTE FOUND!")
			if self.PathFoundHandler then self.PathFoundHandler("failure") end
			Lib:Stop()
		end

		function Lib:ReportArrival()
			Lib:Debug("Arrived.")
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

		--local maxpersec = 20000  -- nodes processed

		local hardmaxfirst = 3000 -- don't get greedy
		local hardmaxidle = 1000 -- don't get greedy
		local hardmax = 1000
		local hardmin = 50 -- don't get greedy
		local perframethrot = 0

		-- off the top of my head. elapsed>0.05 (20fps) = setting slow speed. elapsed<0.02 (50fps) = setting full speed.

		local waitphase=0

		Lib.update_interval = 120

		Lib.debug_totaltime = false

		local interval_min=1/12
		local interval_max=1/50

		local tmp_progress = {}

		local debug_pendings=0
		function Lib:OnUpdate(elapsed)
			--if not UnitOnTaxi("player") then  Lib.force_next = nil  end

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
				local sec_per_frame = 1/fps
				--[[
				-- if it's over 60fps, go wild.
				if fps>60 then time_slot = 10.000 + (fps-60)*0.26 --ms
				else time_slot = 10 end  -- making it like 4 frames to calc anything.
				--if perframethrot>hardmax then perframethrot=hardmax end
				--]]
				local free_time = sec_per_frame-elapsed
				time_slot = max(ZGV.db.profile.pathfinding_speed or 0.001,free_time*1000)  -- in ms!!

				if InCombatLockdown() or self.low_priority then time_slot=1 end  -- force SLOW updates in combat, still 1ms is a pretty chunk of time.

				if Lib.debug_totaltime then time_slot=5000 end

				time_slot_remaining=time_slot

				Lib.debug_frames_total = Lib.debug_frames_total + 1

				local debug_time_all_1 = debugprofilestop()

				local hardlimit=10000
				while time_slot_remaining>=0 and self.calculating do
					--perframethrot = perframethrot - self:StepPath()
					local slot_time=debugprofilestop()

					local debug_time_allcalc_1=debugprofilestop()
					if coroutine.status(self.thread)=="dead" then return end
					resumed,code,ret = resume(self.thread,self,time_slot_remaining) -- returns num as count of nodes covered. nil if ending.
					Lib.debug_time.allcalc=Lib.debug_time.allcalc+debugprofilestop()-debug_time_allcalc_1

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
						error("{{"..(code or "").."}}")
					end

					slot_time=debugprofilestop()-slot_time
					time_slot_remaining=time_slot_remaining-slot_time

					if not code or code=="ERROR" or code=="END" then self.calculating = nil end

					if code=="SUCCESS" and not self.can_optimize_for_end then self.calculating = nil end

					hardlimit=hardlimit-1
					if hardlimit<0 then break end
				end

				debug_time_all_1=debugprofilestop()-debug_time_all_1

				Lib.debug_time.all = Lib.debug_time.all + debug_time_all_1

				if code=="PENDING" then
					debug_pendings = debug_pendings + 1
					if debug_pendings<5 or debug_pendings%10==0 then
						Lib:Debug("Calc pending %s, frame %s (calcs: %d) in %.2fms.",
						Lib.success_endnode and "AFTER" or "MAIN",Lib.debug_frames_total,Lib.calculation_step,debug_time_all_1)
					end
				else
					Lib:Debug("This pass: [%s] = |cffffffff%.2f|rms. Done |cffffff88%d|r calculations over |cff88ffff%d|r frames:\n"
					.." compared |cff88ff88%d|r nodes in |cffffffff%.2f|r ms, opened |cff88ff88%d|r, closed |cff88ff88%d|r \n"
					--.." cheapest |cffffffff%.2f|r, initial |cffffffff%.2f|r, overhead |cffffffff%.2f|r, blah |cffffffff%.2f|r, scoring |cffffffff%.2f|r, adding |cffffffff%.2f|r ms, closed |cffffffff%.2f|r, final |cffffffff%.2f|r    \n"
					.." cheapest |cffffffff%.2f|r, initial |cffffffff%.2f|r, overhead |cffffffff%.2f|r, blah |cffffffff%.2f|r, scoring |cffffffff%.2f|r, adding |cffffffff%.2f|r ms    \n"
					.." calc total |cffffffff%.2f|r ms, total time |cffffffff%.2f|r ms   \n"
					.."(found: %s)",
					(code or "nil"),debug_time_all_1,
					Lib.calculation_step,Lib.debug_frames_total,
					Lib.debug_count_compares,Lib.debug_time.cheapest,opened_count,closed_count,

					Lib.debug_time.cheapest, Lib.debug_time.initial, Lib.debug_time.neighoverhead, Lib.debug_time.neighblah, Lib.debug_time.scoring, Lib.debug_time.adding, --Lib.debug_time.closed, Lib.debug_time.final,

					Lib.debug_time.allcalc, Lib.debug_time.all,

					Lib.success_endnode and "YES" or "NO"

					)
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
					self:ReportPath(self.success_endnode)
					self:Cleanup() -- does nothing so far
				elseif code=="END" then
					if self.success_endnode then
						--self:ReportPath(self.success_endnode)
						self:ReportPath(self.success_endnode)
						if self.can_optimize_for_end then self.optimizing_for_end = true end
					else
						self:ReportFail()
					end
					self:Cleanup() -- does nothing so far
				elseif code=="ERROR" then
					self:ReportFail()
				else
					error("WTF_CALC? Code %s, endnode %s",code,self.success_endnode and "YES" or "NO")
				end

				--ZGV:Debug("&LibRover Ela %.2f, sec_per %.2f, Time slot: %.2f, taken: %.2f, covered %d steps", elapsed*1000,sec_per_frame*1000, time_slot,time_slot-time_slot_remaining,self.calculation_step)

				--print("Processed "..count.." nodes"..(self.calculating and "" or " - DONE"))

				if perframethrot<0 or not self.calculating then perframethrot=0 end

				lastupdate = 0

			elseif self.updating and not self.delayed_by_taxi and not InCombatLockdown() and lbm then

				if UnitOnTaxi("player") or ZGunitOnTaxi then
					-- Trickiness. Restart path searching, with a different starting point: at the taxi destination.
					-- FindLastPath was called above, but that doesn't matter much - we're just injecting something into the start node.
					if not self.force_next and not self.force_next_failed then lastupdate=999 else lastupdate=-5 end
					self.force_next = LibTaxi.LastTaxi and LibTaxi.LastTaxi.node
					self.force_next_failed = not self.force_next
					lax=-998

					--self.PathFoundHandler("progress",nil,{progress=self.calculation_step*0.02})
				else
					self.force_next = nil
				end

				-- normal
				--self.taxisuggested=false
				lastupdate = lastupdate + elapsed
				if lastupdate>Lib.update_interval then
					local m,f,x,y = playerpos()
					if ZGunitOnTaxi then lay=(lay or 0)-1 end
					if m and x and (x~=lax or y~=lay) then
						self:FindPath(m,f,x,y,lbm,lbf,lbx,lby,self.PathFoundHandler, self.extradata,nil, self.quiet)
					end
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

		function Lib:Abort()
			Lib.updating=false
			Lib.calculating=false
			Lib.thread=nil
			lam,laf,lax,lay,lbm,lbf,lbx,lby = nil
			Lib:Debug("LibRover aborting")
		end

		function Lib:Stop()
			Lib.calculating=false
			Lib.thread=nil
			Lib:Debug("LibRover stopping gracefully, will update")
		end

		Lib.maxspeedinzone={}
		local default_speeds={1,1,nil}
		setmetatable(Lib.maxspeedinzone,{__index=function(t,i) return default_speeds end})

		function Lib.HasAchievement(id)
			return select(4,GetAchievementInfo(id))
		end
		local HasAchievement=Lib.HasAchievement

		local last_speed_check=0

		function Lib:CheckMaxSpeeds()
			local time=GetTime()
			if time-last_speed_check<1 then return end
			last_speed_check=time

			local maxspeed =
					(HasAchievement(5180) and 3.1) --master riding: epic flight
				    or (HasAchievement(892) and 2.8) --artisan riding: fast flight
				    or (HasAchievement(890) and 1.5) --expert riding: flight
				    or (HasAchievement(889) and 1.0) --journeyman riding: fast ride
				    or (HasAchievement(891) and 0.6) --apprentice riding: normal ride
				    or 0 -- this is thanks to Maldivia, who is a fucking genius

			local coldflying = IsSpellKnown(54197)
			local flightlicense = IsSpellKnown(90267)
			local pandarialicense = IsSpellKnown(115913)

			if ZGV and ZGV.db then  -- debug overrides
				maxspeed=ZGV.db.profile.debug_librover_maxspeed or maxspeed
				if ZGV.db.profile.debug_librover_flightcold~=nil then coldflying=ZGV.db.profile.debug_librover_flightcold end
				if ZGV.db.profile.debug_librover_flightazeroth~=nil then flightlicense=ZGV.db.profile.debug_librover_flightazeroth end
				if ZGV.db.profile.debug_librover_flightpandaria~=nil then pandarialicense=ZGV.db.profile.debug_librover_flightpandaria end
			end

			local ridespeed = min(maxspeed,1.0)

			Lib.speeds = {
				["Azeroth"] = 1.0 + ( flightlicense and maxspeed or ridespeed ), --Azeroth (flying with flightlicense)
				["Outland"] = 1.0 + maxspeed, --Outland (flying)
				["Northrend"] = 1.0 + ( coldflying    and maxspeed or ridespeed ), --Northrend (flying with coldflying)
				["Pandaria"] = 1.0 + ( pandarialicense and maxspeed or ridespeed ), --Pandaria (flying with pandarialicense)
			}
			if IsSpellKnown(78633) then for k,v in pairs(Lib.speeds) do if v>1 then Lib.speeds[k]=v*1.1 end end end

			for _,zoneid in ipairs(area_maps_table) do
				local zonedata = Astrolabe.WorldMapSize[zoneid]
				local system = zonedata and (zonedata.system or zonedata.systemParent)
				if system then
					local speed
					if system==13 or system==14 or system==640 then speed=Lib.speeds["Azeroth"]
					elseif system==485 then speed=Lib.speeds["Northrend"]
					elseif system==466 then speed=Lib.speeds["Outland"]
					elseif system==862 then speed=Lib.speeds["Pandaria"]
					else speed=1.0 end

					local runspeed = min(speed,2.0)
					local flyspeed = (speed>2.4 and not Lib.zone_is_exo_or_belf(zoneid) and not Lib.zone_is_barad(zoneid)) and speed
					if Lib.zone_is_vash(zoneid) then flyspeed=2.4 end
					Lib.maxspeedinzone[zoneid]={ flyspeed or runspeed, runspeed, flyspeed }
				end
			end
		end

		local function warn(message)
			local _, ret = pcall(error, message, 3)
			geterrorhandler()(ret)
		end

		Lib.DarkshoreCatSpells = { --Spell are gathered from UNIT_SPELLCAST_SUCCEEDED and indicate the destination.
			[64403] = "Darkshore Cat 3", -- 1->3
			[64408] = "Darkshore Cat 5", -- 2->5
			[64409] = "Darkshore Cat 1", -- 3->1
			[64410] = "Darkshore Cat 2", -- 5->2
			[65152] = "Darkshore Cat 4", -- 3->4
			[65153] = "Darkshore Cat 1", -- 4->1
		}

		local function onEvent(this, event, arg1, arg2, arg3, arg4, arg5)
			if event=="ADDON_LOADED" and arg1==addonName then
				--Lib.ready=true  -- TODO added a ZGV.db check for sanity, test how it is working in real life
				Lib:Debug("ADDON_LOADED %s, let's get this show on the road.",addonName)
				Lib:DoStartup()
			end

			if not Lib.ready then return end

			if event=="ACHIEVEMENT_EARNED" or event=="LEARNED_SPELL_IN_TAB" or event=="RECEIVED_ACHIEVEMENT_LIST" then
				Lib:CheckMaxSpeeds()
			elseif event=="PLAYER_CONTROL_LOST" then  --getting on a taxi
				Lib:Debug("We're flying!")
				ZGunitOnTaxi=true
				Lib:UpdateNow()
			elseif event=="PLAYER_CONTROL_GAINED" or event=="UNIT_EXITING_VEHICLE" then  --getting off a taxi or vehicle
				Lib:Debug("Got off taxi.")
				ZGunitOnTaxi=false
				Lib.delayed_by_taxi=nil
				SetMapToCurrentZone()  -- EVIL.
				Lib:UpdateNow()
			elseif event == "UNIT_ENTERING_VEHICLE"
			 and UnitVehicleSkin("player")=="INTERFACE\\PLAYERACTIONBARALT\\NATURAL.BLP"
			 and GetCurrentMapAreaID()==42 then
				Lib:Debug("We're flying!(kinda)")
				ZGunitOnTaxi=true
				Lib:UpdateNow()
			elseif event=="UNIT_SPELLCAST_SUCCEEDED" and Lib.DarkshoreCatSpells[arg5] then
				LibTaxi.LastTaxi = {fullname = Lib.DarkshoreCatSpells[arg5]..", Darkshore"}
				LibTaxi.LastTaxi.node = LibTaxi:FindTaxi(Lib.DarkshoreCatSpells[arg5])
				if LibTaxi.LastTaxi.node then
					LibTaxi.LastTaxi.name,LibTaxi.LastTaxi.zone = LibTaxi.LastTaxi.node.name,GetMapNameByID(LibTaxi.LastTaxi.node.m)
				else
					LibTaxi.LastTaxi.name,LibTaxi.LastTaxi.zone = LibTaxi.LastTaxi.fullname:match("(.*), (.*)")
				end

			elseif event=="WORLD_MAP_UPDATE" then
				--lastupdate = 999  -- soft force update; this happens too often
			elseif event=="ZONE_CHANGED" or event=="ZONE_CHANGED_NEW_AREA" or event=="LOADING_SCREEN_DISABLED" or event=="NEW_WMO_CHUNK" then
				Lib:Debug("Got event %s, updating",event)
				Lib:UpdateNow("quiet") -- hard force update, but quiet
			elseif event=="TAXIMAP_OPENED" then	-- highlight suggested taxi destination

				local taxiframe = TaxiFrame
				local glow = taxiframe.LibRover_glow
				if not glow then
					glow = taxiframe:CreateTexture(nil,"ARTWORK")
					taxiframe.LibRover_glow = glow
					glow:SetTexture("Interface/SPELLBOOK/UI-GlyphFrame-Glow")
					glow:SetBlendMode("ADD")
					glow:SetSize(48,48)
				end
				glow:Hide()

				--Lib:UpdateTaxis()
				if Lib.RESULTS and
				not (Lib.extradata and Lib.extradata.waypoint and Lib.extradata.waypoint.type=="way" and not ZGV.db.profile.visible)  -- do NOTHING if current path was guide-driven.
				then
					for k,node in ipairs(Lib.RESULTS) do
						if node and node.type=="taxi" and node.taxiFinal then

							for i=1,NumTaxiNodes() do
								local x,y=TaxiNodePosition(i)
								x,y=floor(x*1000),floor(y*1000)
								if x < 100 then x = "0"..x end
								if y < 100 then y = "0"..y end
								local myTaxiTag = x..":"..y

								if TaxiNodeGetType(i)~="NONE" and (node.taxitag and node.taxitag == myTaxiTag or TaxiNodeName(i):find(node.name,0,true)) then
									local b = _G["TaxiButton"..i]

									-- hop on automatically?
									if ZGV.db.profile.autotaxi and b:GetID() and not IsAltKeyDown() then
										Dismount()
										TakeTaxiNode(b:GetID())
									end

									-- glow it!
									--glow:SetSize(64,64)  glow:SetPoint("CENTER",b,"CENTER",8,-7)
									glow:SetPoint("CENTER",b,"CENTER",6,-5)
									UIFrameFlash(glow,0.4,0.4,5.0,true,0,0,1)
									glow:Show()

									break
								end
							end
						end
					end
					return
				end
			end
		end

		Lib.frame = LibRoverFrame or CreateFrame("Frame", "LibRoverFrame")
		Lib.frame:RegisterEvent("ADDON_LOADED") -- register the rest later
		Lib.frame:SetScript("OnEvent", onEvent)

		function Lib:ShowAllNodes(nodetype)
			nodetype=nodetype or "all"
			local m = GetCurrentMapAreaID()
			for ni,n in ipairs(Lib.nodes[nodetype]) do
				if n.m==m then
					ZGV.Pointer:SetWaypoint(n.m,n.f,n.x,n.y,{title=n:tostring(true),qqtruesize=n.radius or 200})
				end
			end
		end

		function PlayerCompletedQuest(id)
			local completedquests = GetQuestsCompleted()
			if not completedquests then return end
			return completedquests[id]
		end

		if tonumber(select(2,GetBuildInfo()),nil)>=15799 then PlayerCompletedQuest=IsQuestFlaggedCompleted end

		function Lib:GoSlow()
			maxpersec = 1
		end

		function Lib:Debug(msg,...)
			ZGV:Debug("&_SUB &LibRover ".. msg, ...)
		end

		function Lib:IsWintergraspControlled()
			if WorldMapFrame:IsVisible() then return false end  -- sinus: can't go changing the map when it's open!
			SetMapByID(501) --set map to Wintergrasp
			for i=1,GetNumMapLandmarks() do
				local name,_,textureIndex,_,_ = GetMapLandmarkInfo(i);
				if ( name == "Wintergrasp Fortress") then
					if ( textureIndex == 79 ) then
						if UnitFactionGroup("player")=="Horde" then
							SetMapToCurrentZone()
							return true
						end
					elseif ( textureIndex == 82 ) then
						if UnitFactionGroup("player")=="Alliance" then
							SetMapToCurrentZone()
							return true
						end
					end
				end
			end
			SetMapToCurrentZone()
			return false
		end

		function Lib.ShowDebugMenu(button,but)
			self=Lib
			if not button.menu then button.menu = CreateFrame("FRAME",button:GetName().."Menu",button,"UIDropDownMenuTemplate") end
			UIDropDownMenu_SetAnchor(button.menu, 0, 0, "TOP", button, "BOTTOM")
			local menu = {}
			--tinsert(menu,{ text = "aaa",  isTitle = true,notCheckable=true, })
			tinsert(menu,{ text = "All Nodes",  notCheckable=true, func=function() LibRover:ShowAllNodes() end })
			EasyMenu(menu,button.menu,nil,0,0,"MENU",10)
			UIDropDownMenu_SetWidth(button.menu, 300)
		end

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