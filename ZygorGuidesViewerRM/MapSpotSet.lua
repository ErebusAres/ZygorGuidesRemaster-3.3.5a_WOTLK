local ZGV = ZygorGuidesViewer ; if not ZGV then return end

local table,string,tonumber,ipairs,pairs,setmetatable,tinsert = table,string,tonumber,ipairs,pairs,setmetatable,tinsert

local MapSpotSet = { }
ZGV.MapSpotSetProto = MapSpotSet
ZGV.MapSpotSetProto_mt = { __index=MapSpotSet }

local BZL=ZGV.BZL

function MapSpotSet:New()
	return setmetatable({['spots']={},['visible']=true},ZGV.MapSpotSetProto_mt)
end

function MapSpotSet:NewRaw(title,tit,data)
	local set = MapSpotSet.New()
	set.title=title
	set.title_short=tit
	set.rawdata=data
	return set
end

local function split(str,sep)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

--local baditems={}
--- parse ONE guide section into usable arrays.
function MapSpotSet:ParseRaw()
	local text = self.rawdata
	if not text then return nil,"No text!",0 end
	local index = 1

	local prevmap
	local prevlevel = 1

	local set = self
	local spot

	text = text .. "\n"

	local linecount=0

	local function COLOR_LOC(s) return "|cffffee77"..s.."|r" end

	local _


	while (index<#text) do
		local st,en,line=string.find(text,"%s*(.-)%s*\n",index)
		if not en then break end
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then return nil,linecount,"More than 100000 lines!?" end

		line = line:gsub("//.*$","") .."|";

		local chunkcount=1

		for chunk in line:gmatch("%s*(.-)%s*|+") do
			local cmd,params = chunk:match("([^%s]*)%s?(.*)")

			    if cmd=="map" then
				prevmap = params
				if BZL[prevmap] then prevmap=BZL[prevmap] end
			elseif cmd=="author" then
				set.author=params
			elseif cmd=="description" then
				set.description=params

			-- node types
			elseif cmd=="at" then
				-- create new node
				spot = ZGV.MapSpotProto:New("at",prevlevel)
				set:AddSpot(spot)

				-- fill it!
				local map,x,y,dist = ZGV:ParseMapXYDist(params)

				if BZL[map] then map=BZL[map] end

				spot.map = map or prevmap
				prevmap = spot.map

				spot.x = x
				spot.y = y
				spot.dist = dist

				if not spot.map then
					return nil,"'"..cmd.."' has no map parameter, neither has one been given before.",linecount,chunk
				end

				spot.itemsource="drops"

			-- step parameters
			elseif cmd=="level" or cmd=="lv" then
				prevlevel=tonumber(params)
				spot.level=prevlevel
			elseif cmd=="title" then
				spot.title=params
			elseif cmd=="desc" then
				spot.desc=params
				--ZGV:Print(spot.desc)

--[[
			elseif cmd=="@" then
				local map,x,y
				map,x,y = params:match("(.+),([0-9.]+),([0-9.]+)")
				if not map then
					x,y = params:match("([0-9.]+),([0-9.]+)")
				end
				if not x then
					map = params
				end
				if not map then
					map = prevmap
				end
				step['map']=map
				prevmap=map
				if x or y then
					step['x']=x
					step['y']=y
				end
--]]

			-- node subcommands
			elseif cmd=="from" then
				params=params:gsub(",%s+",",")
				spot.mobsraw = params
				local mobs = split(params,",")
				spot.mobspre = mobs
				spot.mobs = {}
				for i,mob in ipairs(mobs) do
					local name,plural = mob:match("^(.+)(%+)$")
					if not plural then name=mob end

					local nm,id = ZGV:ParseID(name)
					
					local name,tip = ZGV:GetTranslatedNPC(id)

					tinsert(spot.mobs,{name=nm or name,id=id,pl=plural and true or false})
				end

				spot.itemsource="drop"

			elseif cmd=="vendor" then
				spot.vendor,spot.vendorid = ZGV:ParseID(params)

				spot.itemsource="vendor"
				spot.title = spot.title or spot.vendor

			elseif cmd=="item" then
				params = params..","
				for itemstr in params:gmatch("%s*(.-)%s*,") do
					-- create the goods
					local object = { type="item" }
					tinsert(spot.objects,object)

					-- first, extract the count
					local name,perc = itemstr:match("^(.+) ([0-9]+)%%$")
					if not name then name=itemstr end
					object.perc = perc

					-- alias?
					local alias=ZGV.MapSpotNodeAliases[name]
					if alias then
						if type(alias)=="table" then
							-- woot, alias
							object.item=alias
						elseif type(alias)=="number" then
							object.item={id=alias} -- and that's all we have
						end
					else
						object.item={}
						object.item.name,object.item.id = ZGV:ParseID(name)
						if not object.item.id then --and not baditems[name] 
							ZGV:Print("|cffff6600ERROR: unknown item |cffffaa00"..name.."|cffff6600 in the gold guide|r")
							--baditems[name]=true
						end
					end


					if object.perc then object.perc=tonumber(object.perc) end

					-- something missing?
					if not object.item then return nil,"no parameter",linecount,chunk end
					--[[
					if goal.target:match("%+%+") then
						if goal.target:match("%+%+$") then
							goal.target = goal.target:gsub("%+%+","")
							goal.targets = goal.target
						else
							local sing,pl = goal.target:match("(.+)%+%+%+(.+)")
							if not sing or not pl then
								sing = goal.target:gsub("([^%s%+]+)++([^%s%+]+)","%1")
								pl = goal.target:gsub("([^%s%+]+)++([^%s%+]+)","%2")
							end
							goal.target = sing
							goal.targets = pl
						end
					end
					--]]

					if spot.itemsource=="vendor" then object.vendor=1 end
				end

			end

			chunkcount=chunkcount+1
			if chunkcount>20 then
				return nil,"More than 20 chunks in line",linecount,line
			end
		end

		--[[
		if #TableKeys(node)>0 then
			if not node then return nil,"What? Unknown data before first node, or what?",linecount,line end
			-- so there's something to record? go ahead.
		end
		--]]

	end

	self.rawdata=nil
	return true
end

function MapSpotSet:AddSpot(spot)
	spot.parentSet = self
	spot.num=#self.spots+1
	tinsert(self.spots,spot)
end

function MapSpotSet:Show()
	self.visible=true
	for s,spot in ipairs(self.spots) do
		spot:Show()
	end
end

function MapSpotSet:GetSpotsInRange(into)
	local ret=into or {}
	local tinsert=tinsert
	for s,spot in ipairs(self.spots) do
		if spot.waypoint and spot.waypoint.minimapFrame and spot.waypoint.minimapFrame:IsShown() and spot.waypoint.minimapFrame.dist and spot.waypoint.minimapFrame.dist<=ZGV.db.profile.golddetectiondist then
			tinsert(ret,spot)
		end
	end
	table.sort(ret,function(a,b) return a.waypoint.minimapFrame.dist and a.waypoint.minimapFrame.dist and a.waypoint.minimapFrame.dist<b.waypoint.minimapFrame.dist or false end)
	return ret
end

function MapSpotSet:UpdateVisibilities()
	for s,spot in ipairs(self.spots) do
		spot:UpdateVisibility()
	end
end





function ZGV:GetMapSpotsInRange()
	local ret={}
	local tinsert=tinsert
	for i,set in ipairs(self.registeredmapspotsets) do
		set:GetSpotsInRange(ret)
	end
	return ret
end

function ZGV:GetMapSpotsInZone()
	local ret={}
	local tinsert=tinsert
	for i,set in ipairs(self.registeredmapspotsets) do
		for s,spot in ipairs(set.spots) do
			if spot.waypoint and not spot.hidden and spot.map==GetRealZoneText() then
				tinsert(ret,spot)
			end
		end
	end
	return ret
end

function ZGV:GetAllMapSpots()
	local ret={}
	local tinsert=tinsert
	for i,set in ipairs(self.registeredmapspotsets) do
		for s,spot in ipairs(set.spots) do
			tinsert(ret,spot)
		end
	end
	return ret
end

function ZGV:UpdateMapSpots()
	for i,set in ipairs(self.registeredmapspotsets) do
		for s,spot in ipairs(set.spots) do
			spot:UpdateVisibility()
		end
	end
end

function ZGV:UpdateMapSpotVisibilities()
	for i,set in ipairs(self.registeredmapspotsets) do
		set:UpdateVisibilities()
	end
	ZGV.Pointer.Overlay_OnEvent(ZGV.Pointer.OverlayFrame,"WORLD_MAP_UPDATE")
	self:UpdateFrame(true)
end