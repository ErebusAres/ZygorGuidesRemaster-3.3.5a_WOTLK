local ZGV = ZGV

-- GLOBAL Spoo

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local ZGVG=ZGV.Gold
local FONT=ZGV.Font

local Goldguide = ZGV.Goldguide

Goldguide.Crafting = {}
local Crafting=Goldguide.Crafting

Goldguide.CraftingItemToSpell = {}
Goldguide.EnchantToScroll = Goldguide.EnchantToScroll or {}
Goldguide.SkillLevels = {}
setmetatable(Goldguide.SkillLevels,{__index=function() return 0 end}) -- if not defined skill level is at 0

local vendor_reagents = {
	[65893] = 30000000, -- Sands of time
	[44499] = 30000000, -- Salvaged Iron Golem Parts
	[44501] = 10000000, -- Goblin-Machined Piston
	[44500] = 15000000, -- Elementium-Plated Exhaust Pipe
	}

local bop_reagents = {
	[124124] = true, -- Blood of Sargeras
	[120945] = true, -- Primal Spirit
	[111366] = true, -- Gearspring Parts
	[111556] = true, -- Hexweave Cloth
	[110611] = true, -- Burnished Leather
	[108257] = true, -- Truesteel Ingot
	[98717] = true, -- Balanced Trillium Ingot
	[98619] = true, -- Celestial Cloth
	[94111] = true, -- Lightning Steel Ingot
	[82447] = true, -- Imperial Silk
	[54440] = true, -- Dreamcloth
	}

function Goldguide:InitialiseCraftingChores()
	Goldguide.Chores = Goldguide.Chores or {}
	Goldguide.Chores.Crafting = Goldguide.Chores.Crafting or {}
	table.wipe(Goldguide.Chores.Crafting)
	table.wipe(Goldguide.CraftingItemToSpell)
	table.wipe(Goldguide.SkillLevels)

	-- get current skill levels
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		ZGV.db.char.SkillsKnown = ZGV.db.char.SkillsKnown or {}
		for i,prof in pairs(ZGV.db.char.SkillsKnown) do
			Goldguide.SkillLevels[prof.parentskillID or prof.skillID or -1] = prof.level
		end
		for skillname,prof in pairs(ZGV.skills or {}) do
			if prof and prof.level and prof.level > 0 then
				Goldguide.SkillLevels[prof.parentskillID or prof.skillID or -1] = prof.level
			end
		end
	else
		local profs={GetProfessions()}
		for i,prof in pairs(profs) do
			local _,_,rank,_,_,_,skillline = GetProfessionInfo(prof)
			Goldguide.SkillLevels[skillline] = rank
		end
	end

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		local allRecipes = ZygorGuidesViewer and ZygorGuidesViewer.Professions and ZygorGuidesViewer.Professions.AllRecipes or {}
		for skillid,recipelist in pairs(allRecipes) do
			if Goldguide.SkillLevels[skillid]>0 then
				for _,recipe in pairs(recipelist) do
					recipe.reagentcount=nil
					Crafting:New(recipe)
					
					if recipe.producttype=="enchant" then -- remap enchant to scroll
						recipe.productid = Goldguide.EnchantToScroll[recipe.spell] or recipe.productid
					end
				end
			end
		end
	else
		for skillid,recipelist in pairs((ZGV.db.char and ZGV.db.char.RecipesKnown) or {}) do
			for _,recipe in pairs(recipelist) do if recipe.productid then
				recipe.reagentcount=nil
				Crafting:New(recipe)
				
				if recipe.producttype=="enchant" then -- remap enchant to scroll
					recipe.productid = Goldguide.EnchantToScroll[recipe.spell] or recipe.productid
				end
			end end
		end
	end

	for recipeindex,recipedata in pairs(Goldguide.Chores.Crafting) do
		if recipedata.productid then
			Goldguide.CraftingItemToSpell[recipedata.productid]=recipeindex
		end
	end
end

function Crafting:New(data)
	data.cached_display=nil
	data.cached_tooltip=nil
	data.reagentcount=nil
	data.actions=nil
	setmetatable(data,{__index=Crafting,__lt=Crafting.sorting})
	table.insert(Goldguide.Chores.Crafting,data)
end

function Crafting:GetRecipeReagents()
	if self.reagentcount then return self.reagentcount end

	self.reagentcount={}
	self.reagentfarmable={}
	self.actions={}

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		for _,reagent in pairs(self.reagents) do
			self.reagentcount[reagent.id]=(self.reagentcount[reagent.id] or 0)+reagent.num
		end
	else
		for reagentid,reagentcount in pairs(self.reagents) do
			self.reagentcount[reagentid]=(self.reagentcount[reagentid] or 0)+reagentcount
		end
	end
	return self.reagentcount
end

function Crafting:CalculateDetails(refresh)
	--if self.calculated_details and not refresh then return end
	local name = GetSpellInfo(self.spell)
	if name then self.name = name end

	local trends = ZGV.Gold.servertrends

	self:GetRecipeReagents()
	self.materials = 0
	for item,count in pairs(self.reagentcount) do
		if vendor_reagents[item] then
			self.materials=self.materials+(vendor_reagents[item]*count) -- special high priced vendor reagents
		else
			self.materials=self.materials+ZGVG:GetSellPrice(item,count)
		end
	end
	self.sellprice = self.productid and ZGVG:GetSellPrice(self.productid,1) or 0
	self.profit = math.max(self.sellprice-self.materials,0)

	self.demand = 0
	local trend = self.productid and trends and trends.items and trends.items[self.productid]
	if trend then
		self.demand = trend.sold
	end

	if (self.learned or ZGV.Gold.any_recipe) and self.demand and self.demand>0 then
		self.status = 0 -- known, in demand - easy mode
	elseif self.demand and self.demand>0 then
		self.status = 1 -- unknown, in demand, valid skill level - adv mode
	else
		self.status = 2 -- unknown, not in demand, or above skill level - expert mode
	end

	local ahstatus = 0
	local flags,status_override = Goldguide:GetItemFlagsAndStatus(self)
	self.flags=flags

	local not_scored = true
	if status_override then
		ahstatus = status_override
	else	
		ahstatus = 0
		for i,flag in pairs(flags) do
			ahstatus = ahstatus + ZGV.Gold.Auctions.Flags[string.upper(flag)].mod
			not_scored = false
		end
	end

	self.ahstatus = ahstatus
	self.not_scored = not_scored

	--local name = GetSpellInfo(self.spell)
	--if name then self.name = name end

	self.calculated_details=true
end

function Crafting:GetDisplayInfo(refresh)
	if self.cached_display and not refresh then return unpack(self.cached_display) end

	self.needsRefresh=false

	local iname,_,quality,_,_,_,_,_,_,icon = ZGV:GetItemInfo(self.productid)
	local name = GetSpellInfo(self.spell)

	if not name then self.needsRefresh=true end

	name=name or ""

	if quality then
		name=(ZGV:GetItemQualityColorCode(quality) or "")..name	
	end

	--name=name.." ("..ZGV.GetMoneyString(self.sellprice)..") ("..self.demand..")"

	local status="●"
	if self.status==0 then
		status = "|cff00ff00●|r"
	elseif self.status==1 then
		status = "|cffffff00●|r"
	else
		status = "|cffff0000●|r"
	end	

	self.cached_display={
		icon,
		name,
		status,
		ZGV.GetMoneyString(self.materials),
		ZGV.GetMoneyString(self.profit),
		}

	return unpack(self.cached_display)
end

function Crafting:IsValidChore()
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	self.valid=false

	local query = string.lower(Goldguide.MainFrame.MenuFrame.SearchEdit:GetText())
	if query and query~="" then 
		if self.name and not string.match(string.lower(self.name), query) then return false,"name query" end
	end

	-- 0 is All proffs
	if ZGV.db.profile.gold_crafting_type~=0 and ZGV.db.profile.gold_crafting_type~=self.skill then return false,"type filter" end

	local valid_level = Goldguide.SkillLevels[self.skill] and Goldguide.RecipeLevels[self.spell] and Goldguide.SkillLevels[self.skill] > Goldguide.RecipeLevels[self.spell]

	if ZGV.db.profile.gold_crafting_mode>=2 then
		if not valid_level then return false,"above skill level, not browseable" end
		if not (self.learned or ZGV.Gold.any_recipe) then return false,"unknown recipe, not browseable" end
		self.valid=true
		return true
	end

	if self.cost==0 then return false,"no cost calculated" end
	if self.profit==0 then return false,"no profit" end

	-- easy 0 - recipe, profit, demand
	-- adv 1  -	    profit, demand
	-- expert 2 -	    profit
	if ZGV.db.profile.gold_crafting_mode<2 and (not valid_level or self.demand==0) then return false,"no demand or above skill, not expert" end
	if ZGV.db.profile.gold_crafting_mode<1 and not (self.learned or ZGV.Gold.any_recipe) then return false,"unknown recipe, not advanced" end

	self.valid=true
	return true
end

function Crafting.dynamic_sort(a,b)
	return Goldguide.dynamic_sort("crafting",a,b, --[["demand","pos-zero-nil",--]] ZGV.db.profile.goldsort['crafting'][1],ZGV.db.profile.goldsort['crafting'][2], "profit","asc", "name","asc")
end

function Crafting:add_line(txt) self.guide = self.guide .. txt .. " \n" end

local function EscapeGuideText(text)
	if not text then return nil end
	return tostring(text):gsub("|","\\|"):gsub("_","\\_")
end

local function GetSortedReagentEntries(reagentcount)
	local entries = {}
	for itemid,itemcount in pairs(reagentcount or {}) do
		table.insert(entries, {
			itemid = itemid,
			itemcount = itemcount,
			name = ZGV:GetItemInfo(itemid) or ("item:" .. tostring(itemid)),
		})
	end
	table.sort(entries, function(a,b) return a.name < b.name end)
	return entries
end

local function GetMatchingFarmGuides(itemname)
	if not (itemname and Goldguide.farming_guides) then return nil end
	local matches = {}
	for _,guide in pairs(Goldguide.farming_guides) do
		local guideTitle = guide and (guide.title_short or guide.title)
		if type(guideTitle)=="string" and string.match(guideTitle, itemname) and Goldguide.Common.AreRequirementsMet(guide) then
			table.insert(matches, guide)
		end
	end
	if #matches == 0 then return nil end
	table.sort(matches, function(a,b)
		return (a.title_short or a.title or "") < (b.title_short or b.title or "")
	end)
	return matches
end

function Crafting:GenerateGuide()
	self:GetRecipeReagents()
	local productname = ZGV:GetItemInfo(self.productid)
	if not productname then
		ZGV:ScheduleTimer(function() 
			Crafting.GenerateGuide(self)
		end,0.1)
		return
	end

	self.guide = ""
	local reagentEntries = GetSortedReagentEntries(self.reagentcount)
	local farmGuideMatches = {}
	local farms_found = false
	for _,entry in ipairs(reagentEntries) do
		local matches = GetMatchingFarmGuides(entry.name)
		if matches then
			farmGuideMatches[entry.itemid] = matches
			farms_found = true
		end
	end

	-- Step 1 - intro
	self:add_line("step")
	self:add_line(ZGV_T("'_This is a dynamic crafting guide._"))
	self:add_line(ZGV_T("'We will make ")..EscapeGuideText(productname))
	self:add_line("'")
	self:add_line(ZGV_T("'Required reagents:"))
	for _,entry in ipairs(reagentEntries) do
		self:add_line("itemname "..entry.itemcount.." "..entry.itemid)
	end
	if not (self.learned or ZGV.Gold.any_recipe) then
		self:add_line("'"..L["gold_crafting_guide_needrecipe"])
	end
	self:add_line("confirm")

	-- Step 2 -- optionally teach the recipe if we have the source data for it
	if not (self.learned or ZGV.Gold.any_recipe) and self.source then
		self:add_line("step recipe_source")
		self:add_line("'"..L["gold_crafting_guide_recipesource"])
		self:add_line(EscapeGuideText(self.source))
		self:add_line("confirm")
	end

	-- Step 3 -- show reagent sources
	self:add_line("step reagents_buy")
	self:add_line("'"..L["gold_crafting_guide_obtainreagents"])
	for _,entry in ipairs(reagentEntries) do
		local price = ZGVG:GetSellPrice(entry.itemid)
		if not bop_reagents[entry.itemid] and price and price > 0 then
			self:add_line(("buy %d %d maxprice %d"):format(entry.itemcount,entry.itemid,price))
			self:add_line(("tip "..L["gold_crafting_guide_maxprice"]):format(ZGV.GetMoneyString(price):gsub("|","%%PIPE%%")))
		else
			self:add_line(("get %d %d"):format(entry.itemcount,entry.itemid))
		end
	end

	if farms_found then
		self:add_line("'"..L["gold_crafting_guide_farmoptional"].." |confirm |next reagents_farm")
	end

	-- Step 4 -- craft subreagents, if any
	if next(self.actions) then
		for _,action in pairs(self.actions) do
			self:add_line("step")
			self:add_line("'"..L["gold_crafting_guide_createsubreagents"])
			self:add_line("create "..action.count.." "..action.productid..'|n')
		end
	end				

	-- Step 5 -- craft product
	self:add_line("step product_create")
	self:add_line("'"..L["gold_crafting_guide_createfinal"])
	self:add_line("create 1 "..EscapeGuideText(productname).."##"..self.productid..'|n')

	-- Step 6 -- optional farms
	if farms_found then
		self:add_line("step reagents_farm")
		self:add_line("'"..L["gold_crafting_guide_farmguides"])
		for _,entry in ipairs(reagentEntries) do
			local matches = farmGuideMatches[entry.itemid]
			if matches then
				self:add_line("'"..EscapeGuideText(entry.name)..":")
				for _,guide in ipairs(matches) do
					local guideTitle = guide.title_short or guide.title
					if guideTitle and guide.title then
						self:add_line(EscapeGuideText(guideTitle).." |confirm |next "..guide.title)
					end
				end
			end
		end
		self:add_line("'"..L["gold_crafting_guide_backtoshopping"].." |confirm |next reagents_buy")
	end

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		ZGV.GuideMenuTier = "CLA"
	else
		ZGV.GuideMenuTier = "WOD"
	end

	local title = "GOLD\\Crafting\\"..productname
	for i=#ZGV.registeredguides,1,-1 do
		local v = ZGV.registeredguides[i]
		-- prevent duplicates
		if v.title==title then table.remove(ZGV.registeredguides,i) end
	end
	ZGV:RegisterGuide(title,self.guide)
	ZGV:SetGuide(title,1)

	-- Store last five crafting guides for reuse
	ZGV.db.char.goldguide_crafting_guides = ZGV.db.char.goldguide_crafting_guides or {}
	local goldguide_crafting_guides = ZGV.db.char.goldguide_crafting_guides
	for i,v in pairs(goldguide_crafting_guides) do
		-- prevent clones of the same guide being stored
		if v.productid == self.productid then table.remove(goldguide_crafting_guides,i) end
	end
	table.insert(goldguide_crafting_guides,1,{
		productid=self.productid,
		chore=self
	})
	if #goldguide_crafting_guides>5 then table.remove(goldguide_crafting_guides) end
end

function Crafting:GetTooltipData(refresh)
	if Goldguide.CacheCraftingTooltip[self.spell] and not refresh then return Goldguide.CacheCraftingTooltip[self.spell] end
	-- do not keep it in chore itself, sice we are reusinc arrays from db.knownrecipes, and we do not want to 
	-- have the cached data saved to savedvars

	if refresh then table.wipe(Goldguide.CacheCraftingTooltip[self.spell]) end
	
	Goldguide.CacheCraftingTooltip[self.spell]={items={}}
	local tooltip = Goldguide.CacheCraftingTooltip[self.spell]

	local flags_good,flags_bad = {}, {}
	local flags_string_good,flags_string_bad = "",""

	for i,v in pairs(self.flags) do
		local flag = ZGV.Gold.Auctions.Flags[string.upper(v)]
		if flag.type=="Red" then
			table.insert(flags_bad,flag.name)
		else
			table.insert(flags_good,flag.name)
		end
	end

	flags_string_good = table.concat(flags_good,",")
	flags_string_bad = table.concat(flags_bad,",")

	local statusid = math.min(self.status,10)
	if self.not_scored then statusid="unscored" end
	local flags_description = "Status: "..Goldguide.ITEM_AUCTION_STATUS[statusid][1]..Goldguide.ITEM_AUCTION_STATUS[statusid][2]

	if flags_string_good~="" then flags_description = flags_description.. " |r|cff00ff00(PROS: "..flags_string_good.. ")|r" end
	if flags_string_bad~="" then flags_description = flags_description.. " |r|cffff0000(CONS: "..flags_string_bad.. ")|r" end

	-- Demand
	local trends = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[self.productid]
	local demand=trends and (trends.sold or trends.q_md or (trends.q_lo+trends.q_hi)/2) or 0
	local demand_description = (ZGV_T("Daily demand for item: %s")):format(self.demand or ZGV_T("unknown"));

	-- Recipe
	local recipe_description
	if not (self.learned or ZGV.Gold.any_recipe) then
		if self.source then
			recipe_description = ZGV_T("|cffffff77You do not know the recipe to make this item. Source for it is known.")
		else
			recipe_description = ZGV_T("|cffffff77You do not know the recipe to make this item.")
		end

		local valid_level = Goldguide.SkillLevels[self.skill] > (Goldguide.RecipeLevels[self.spell] or 999)
		if not valid_level then recipe_description = recipe_description..ZGV_T(" You need to have skill level ")..(Goldguide.RecipeLevels[self.spell] or ZGV_T("unknown", 2))..ZGV_T(" to learn it.") end
	end

	--tooltip.header = flags_description .. "\n" .. demand_description .. (recipe_description and "\n" .. recipe_description or "")
	tooltip.header = demand_description .. (recipe_description and "\n" .. recipe_description or "")

	-- Items
	for item,count in pairs(self.reagentcount) do
		local name = ZGV:GetItemInfo(item)
		
		local each,status,total
		if vendor_reagents[item] then
			each=vendor_reagents[item]         -- special high priced vendor reagents
			total=(vendor_reagents[item]*count) -- special high priced vendor reagents
			status=ZGV_T("Vendor reagent")
		else
			each=ZGVG:GetSellPrice(item,1)
			total=ZGVG:GetSellPrice(item,count)
			status=""
		end

		table.insert(tooltip.items,{
			count=count,
			item=name,
			each=ZGV.GetMoneyString(each),
			total=ZGV.GetMoneyString(total),
			status=status,
		})
	end

	return tooltip
end
