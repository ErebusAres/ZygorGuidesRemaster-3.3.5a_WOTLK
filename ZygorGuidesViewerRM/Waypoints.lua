local me = ZygorGuidesViewer
if not me then return end

local ZGV=ZygorGuidesViewer
local L = ZGV.L
local BZL = ZGV.BZL

local Astrolabe

local tinsert=tinsert

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
		if goalnumORx==false then return end
		if not y then
			local goals={}
			local firstpoint
			if not self.CurrentStep or not self.CurrentStep.goals then return end
			if goalnumORx then goals={self.CurrentStep.goals[goalnumORx]} else for i=1,#self.CurrentStep.goals do if self.CurrentStep.goals[i].x then tinsert(goals,self.CurrentStep.goals[i]) end end end
			for k,goal in ipairs(goals) do
				if not goal.force_noway then
					local way = self.Pointer:SetWaypoint (nil,goal.map,goal.x,goal.y,{title=title or self.CurrentStep:GetTitle() or (goal.map and goal.x and ("%s %d,%d"):format(goal.map,goal.x,goal.y)) or L['waypoint_step']:format(self.CurrentStepNum),onminimap="always",overworld=true})
					if way then
						if not firstpoint then firstpoint=way end
					else
						self:Print("Unable to create waypoint: "..goal.map.." "..goal.x.." "..goal.y)
					end
				end
			end
			if firstpoint then
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
	if not self.ConnectedWaypointer then return end
	if ...~=false and self.db.profile.hidearrowwithguide and not ZGV.Frame:IsShown() then return end
	if not self:IsWaypointAddonReady() then
		self:Print("Waypoint addon '"..self.db.profile.waypointaddon.."' failed.")
		return
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