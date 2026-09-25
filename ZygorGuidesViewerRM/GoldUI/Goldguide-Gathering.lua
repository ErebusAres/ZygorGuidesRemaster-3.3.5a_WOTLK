local ZGV = ZGV

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Goldguide = ZGV.Goldguide

Goldguide.GATHERING_TYPES = {
	{ZGV_T("All"),"all",{}},

	{"Herbalism","herbalism",{
		"outland_herbalism",
		"northrend_herbalism",
		"cataclysm_herbalism",
		"pandaria_herbalism",
		"draenor_herbalism",
		"legion_herbalism",
		"kul_tiran_herbalism",
		"zandalari_herbalism",
		"shadowlands_herbalism",
	}},

	{"Mining","mining",{
		"outland_mining",
		"northrend_mining",
		"cataclysm_mining",
		"pandaria_mining",
		"draenor_mining",
		"legion_mining",
		"kul_tiran_mining",
		"zandalari_mining",
		"shadowlands_mining",
	}},
	
	{"Skinning","skinning",{
		"outland_skinning",
		"northrend_skinning",
		"cataclysm_skinning",
		"pandaria_skinning",
		"draenor_skinning",
		"legion_skinning",
		"kul_tiran_skinning",
		"zandalari_skinning",
		"shadowlands_skinning",
	}},

	{"Fishing","fishing",{
		"outland_fishing",
		"northrend_fishing",
		"cataclysm_fishing",
		"pandaria_fishing",
		"draenor_fishing",
		"legion_fishing",
		"kul_tiran_fishing",
		"zandalari_fishing",
		"shadowlands_fishing",
	}},

	{"Enchanting","enchanting",{
		"outland_enchanting",
		"northrend_enchanting",
		"cataclysm_enchanting",
		"pandaria_enchanting",
		"draenor_enchanting",
		"legion_enchanting",
		"kul_tiran_enchanting",
		"zandalari_enchanting",
		"shadowlands_enchanting",
	}},
}

Goldguide.Gathering = {}
local Gathering=Goldguide.Gathering

setmetatable(Goldguide.Gathering,{__index=Goldguide.Common})

function Gathering:New(data)
	data.time=data.time or 60
	data.good_items = data.good_items or {}
	data.bad_items = data.bad_items or {}
	setmetatable(data,{__index=Gathering,__lt=Gathering.sorting})
	table.insert(Goldguide.Chores.Gathering,data)
end

function Gathering:GetDisplayInfo(refresh)
	if self.cached_display and not refresh then return unpack(self.cached_display) end

	self.needsRefresh=false

	-- icon
	local iconitem
	if #self.good_items>0 then 
		iconitem=self.good_items[1].itemdata[1]
	elseif #self.bad_items>0 then 
		iconitem=self.bad_items[1].itemdata[1]
	end
	if not iconitem and self.items and self.items[1] then
		iconitem = self.items[1][1]
	end
	local icon = iconitem and select(10,ZGV:GetItemInfo(iconitem))
	if not icon then self.needsRefresh=true end

	-- rate
	local rate = ("%s"):format(ZGV.GetMoneyString(self.profitperhour)).."/hr"

	-- times
	local isovertime
	if self.scale>=10 then 
		self.scale=10 
		isovertime=true 
	end

	local vendoronly
	if self.profitperhour_is_smart and self.good_items and #self.good_items==0 then vendoronly=true end
	
	local h = floor(self.scale)
	local m = (self.scale-h)*60
	m=m-m%5 --trunc to 10
	if h>2 then m=nil end
	local disptime = (isovertime and "> " or "") .. (h>0 and h.."h" or "") .. (h>0 and m and " " or "") .. (m and (m .. "m") or "")
	if vendoronly then disptime="- " end

	local gold = ZGV.GetMoneyString(self.profitperhour*self.scale)
	local dispgold = vendoronly and "-" or ((isovertime and "> " or "") .. gold)

	self.cached_display={
		icon,
		self.display_name or self.name or (self.guide and self.guide.title_short),
		self.maps,
		rate,
		disptime,
		dispgold
		}

	return unpack(self.cached_display)
end

function Gathering:IsValidChore()
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	self.valid=false

	if ZGV.db.profile.gold_gathering_type~="all" then
		local typevalid = false
		for i,v in ipairs(Goldguide.GATHERING_TYPES) do
			if v[2]==ZGV.db.profile.gold_gathering_type then
				if self.meta.skillreq[v[2]] then typevalid=true end
				for j,w in ipairs(v[3]) do
					if self.meta.skillreq[w] then typevalid=true end
				end
			end
		end
		if not typevalid then return false,"type filter" end
	end
		
	if not ZGV.db.profile.gold_gathering_mode then
		local hasMarketData = Goldguide:HasTrendData()
		if hasMarketData and (#self.good_items<=0 or (self.scale and self.scale<Goldguide.TIER_DEMAND_MEDIUM)) then
			return false,"mode filter"
		end
	end
	local reqs_met,err = self:AreRequirementsMet()
	if not reqs_met then return false,"requirements not met",err end

	local query = string.lower(Goldguide.MainFrame.MenuFrame.SearchEdit:GetText())
	if query and query~="" then 
		if not string.match(string.lower(self.name), query) then return false,"name query" end
	end

	self.valid=true
	return true
end



function Gathering.dynamic_sort(a,b)
	return Goldguide.dynamic_sort("gathering",a,b, "time","zerolast", ZGV.db.profile.goldsort['gathering'][1],ZGV.db.profile.goldsort['gathering'][2], "dispgold","desc", "name","asc")
end
