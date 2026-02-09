-- A MapSpot represents one node of a MapSpot type guide.

local ZGV = ZygorGuidesViewer ; if not ZGV then return end

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

local MapSpot = {}
ZGV.MapSpotProto = MapSpot
ZGV.MapSpotProto_mt = { __index=MapSpot }

local L = ZGV.L

function MapSpot:New(spottype,level)
	return setmetatable({['type']=spottype or "at",['level']=level, ['objects']={}},ZGV.MapSpotProto_mt);
end

function MapSpot:AreRequirementsMet()
	--[[
	local raceclass=true
	if self.requirement then
		raceclass=false
		for i,v in pairs(self.requirement) do if ZGV:RaceClassMatch(v) then raceclass=true break end end
	end
	if not raceclass then return false end

	if self.condition_visible and not self.condition_visible() then return false end

	return true
	--]]
	-- wrong
end

function MapSpot:GetTitle()
	if self.title then return self.title end
	if self.vendor then return self.vendor end
	return "?"
end

function MapSpot:IsInRange()
	return not self.waypoint.hideminimap
	--[[
	local guide=self.parentGuide
	if self.num<#guide.steps then
		return guide.steps[self.num+1]
	else
		guide=ZGV:GetGuideByTitle(self.parentGuide.next)
		if guide then
			return guide.steps[1]
		else
			return nil
		end
	end
	--]]
end

function MapSpot:IsVisible()
	if self.parentSet then
		return self.parentSet.visible and not self.hidden
	else
		return false
	end
end

-- Called for a marker, presumably containing a reference to a MapSpot.
local function MapSpot_waypoint_OnUpdate(waypoint)
	if waypoint.spot then waypoint.spot:OnUpdate() end
end

local function MapSpot_waypoint_OnEnter(waypoint,...)
	if waypoint.spot then waypoint.spot:OnEnter(...) end
end

local function MapSpot_waypoint_OnEvent(waypoint)
	if waypoint.spot then waypoint.spot:OnEvent() end
end

function MapSpot:Show()
	if not self.waypoint then
		self.waypoint = ZGV.Pointer:SetWaypoint(nil,self.map,self.x,self.y,{title=self:GetTitle(),type="poi",icon=ZGV.DIR .. "\\Skin\\minimaparrow-gold-dot",edgeicon=ZGV.DIR .. "\\Skin\\minimaparrow-gold-edge",overworld=false,onminimap="zonedistance"})
		if not self.waypoint then return end
		self.waypoint.spot = self
		self.waypoint.OnUpdate = MapSpot_waypoint_OnUpdate
		self.waypoint.OnEnter = MapSpot_waypoint_OnEnter
		self.waypoint.OnEvent = MapSpot_waypoint_OnEvent
	end
	self:UpdateVisibility()
	return self.waypoint
end

function MapSpot:GetObjectsOfType(objtype,onlyvis)
	if self.objects then
		local ret={}
		for o,obj in ipairs(self.objects) do
			if obj.item and (obj[objtype] or obj.item[objtype] or (objtype=="drop" and not obj.item.ore and not obj.item.skin and not obj.item.herb and not obj.item.vendor and not obj.vendor)) then
				if not onlyvis or not obj.hidden then
					tinsert(ret,obj)
				end
			end
		end
		if #ret>0 then return ret else return nil end
	end
end

local function MapSpot_ObjectToString(obj)
	if obj.type=="item" and not obj.hidden then
		local id = obj.item.id
		local data = id and ZGV:GetItemData(id) or ""
		local perc = ""
		if obj.perc then perc=(" (%d%%)"):format(obj.perc) end
		if obj.toohard then
			local skill=""
			if obj.item.ore then skill=(" (Mining %d)"):format(obj.item.ore) end
			if obj.item.skin then skill=(" (Skinning %d)"):format(obj.item.skin) end
			if obj.item.herb then skill=(" (Herbalism %d)"):format(obj.item.herb) end
			obj.string = data..perc..skill
		else
			obj.string = data..perc
		end
		obj.icon = "|T"..(GetItemIcon(obj.item.id) or "")..":13:13:0:0:64:64:4:60:4:60|t"
		obj.iconstring = obj.icon.." "..obj.string
	else
		obj.string = ""
		obj.iconstring = ""
	end
end

function MapSpot:UpdateVisibility()
	local visible,possible=0,0

	if self.objects then
		for o,obj in ipairs(self.objects) do
			possible=possible+1
			if obj.type=="item" then
				local req = ZGV.db.profile.goldreqmode
				local noskill = (obj.item.herb and ZGV:GetSkill("Herbalism").level==0)
					or (obj.item.ore and ZGV:GetSkill("Mining").level==0)
					or (obj.item.skin and ZGV:GetSkill("Skinning").level==0)
				obj.toohard = (obj.item.herb and obj.item.herb>ZGV:GetSkill("Herbalism").level)
					 or (obj.item.ore and obj.item.ore>ZGV:GetSkill("Mining").level)
					 or (obj.item.skin and obj.item.skin>ZGV:GetSkill("Skinning").level)
				
				if req==3 and obj.toohard then
					obj.hidden=true
				elseif req==2 and noskill then
					obj.hidden=true
				else
					obj.hidden=nil
					visible=visible+1
				end
			else
				visible=visible+1
			end

			MapSpot_ObjectToString(obj)
		end
	end
	--ZGV:Debug("Updating visibility for mapspot")

	self.hidden = (possible>0 and visible==0)
	if self.waypoint then self.waypoint.hidden=self.hidden end
end

function MapSpot:Hide()
	if self.waypoint then
		ZGV.Pointer:RemoveWaypoint(self.waypoint)
	end
end

local itemsources={"vendor","drop","ore","herb","skin"}
function MapSpot:FillTooltip(tooltip)
	ZGV:Debug("Filling tooltip (MS set)")  	MS=self
	if self.hidden then return false end

	tooltip:AddLine(self.desc,1,1,1,true)
	if self.objects then
		for s,source in ipairs(itemsources) do
			local objs = self:GetObjectsOfType(source,true)
			if objs then
				local mobs = source=="drop" and self.mobs
				local mobtext
				if mobs then
					mobtext = ""
					for i,mob in ipairs(self.mobs) do
						if #mobtext>0 then mobtext = mobtext .. ", " end
						mobtext = mobtext .. mob.name
					end
				elseif self.vendorid then
					mobtext = self.vendor
				end

				tooltip:AddLine(L['gold_header_'..source]:format(mobtext),0.7,0.7,0.4,true)
				for o,obj in ipairs(objs) do
					if obj.toohard then tooltip:AddLine(obj.iconstring,1,0,0,true) else tooltip:AddLine(obj.iconstring,1,1,1,true) end
				end
			end
		end
	end
	tooltip:SetWidth(200)
end

function MapSpot:OnUpdate()
	if not self.waypoint then return end
	local minimapframe = self.waypoint.minimapFrame
	--print("onupdate "..self.title)
	local oldhide = self.waypoint.hideminimap
	if minimapframe.dist and (minimapframe.dist<ZGV.db.profile.golddetectiondist) then
		self.waypoint.hideminimap=nil
	else
		self.waypoint.hideminimap=true
	end
	if self.waypoint.hideminimap~=oldhide then
		ZGV:UpdateFrame(true)
	end
end

function MapSpot:OnEnter(tooltip)
	return self:FillTooltip(tooltip)
end

function MapSpot:OnLeave(tooltip)
	tooltip:Hide()
end

function MapSpot:OnEvent()
	self:UpdateVisibility()
	--if GetCurrentMapZone()==0 then self.waypoint.hidden=true end
end

function MapSpot:OnClick()
	if self.waypoint then
		ZGV.Pointer:ShowArrow(self.waypoint)
	end
end
