local ZGV = ZGV

local L = ZGV.L
local CHAIN = ZGV.ChainCall

-- REMOVE AFTER MIGRATION
local ZGVG=ZGV.Gold

if not ZGV.Goldguide then ZGV.Goldguide = {} end
local Goldguide = ZGV.Goldguide

LibStub("AceHook-3.0"):Embed(Goldguide)

Goldguide.TIER_DEMAND_MEDIUM = 0.5
Goldguide.TIER_DEMAND_HIGH = 1.0

Goldguide.ITEM_AUCTION_STATUS = {
	[0] = {"|cffff0000","Bad investment"}, -- 0-4
	[1] = {"|cffff0000","Bad investment"}, -- 0-4
	[2] = {"|cffff0000","Risky investment"}, -- 0-4
	[3] = {"|cffff0000","Risky investment"}, -- 0-4
	[4] = {"|cffff0000","Risky investment"}, -- 0-4
	[5] = {"|cffffff00","Safe investment"}, -- 5-9
	[6] = {"|cffffff00","Safe investment"}, -- 5-9
	[7] = {"|cffffff00","Safe investment"}, -- 5-9
	[8] = {"|cffffff00","Safe investment"}, -- 5-9
	[9] = {"|cffffff00","Safe investment"}, -- 5-9
	[10] = {"|cff00ff00","Good investment"}, -- 10+
	unscored = {"|cff777777","Unknown"}
}

local CRAFTING_SKILLS={"All","Mining","Jewelcrafting","Enchanting","Inscription","Blacksmithing","Engineering","Alchemy","Tailoring","Leatherworking","Cooking"}

local function is_gold_route_guide(guide)
	if not guide then return false end
	local gtype = guide.type
	if gtype=="GOLD" or gtype=="PROFESSIONS" or gtype=="profession" then
		return true
	end
	return false
end

local function collect_item_ids(itemrows)
	local ids = {}
	for _,item in pairs(itemrows or {}) do
		local itemid = item and item[1]
		if itemid then ids[itemid] = true end
	end
	return ids
end

local function count_keys(tbl)
	local n = 0
	for _ in pairs(tbl or {}) do n = n + 1 end
	return n
end

local function count_matches(text, pattern)
	local n = 0
	if not text or text == "" then return 0 end
	for _ in text:gmatch(pattern) do n = n + 1 end
	return n
end

local function collect_goldcollect_ids(rawdata)
	local ids = {}
	if not rawdata or rawdata == "" then return ids end
	for itemid in rawdata:gmatch("|goldcollect [^#\n]-##(%d+)") do
		ids[tonumber(itemid)] = true
	end
	for itemid in rawdata:gmatch("\ngoldcollect [^#\n]-##(%d+)") do
		ids[tonumber(itemid)] = true
	end
	return ids
end

local function get_primary_skill(skillreq)
	if not skillreq then return nil end
	for skillname in pairs(skillreq) do
		return tostring(skillname):lower()
	end
end

local function has_route_actions(rawdata, primarySkill)
	if not rawdata or rawdata == "" then return false, "no raw guide steps" end
	local hasObjectClick = rawdata:find("\nclick ", 1, true) ~= nil
	local hasGenericClick = rawdata:find("\nClick ", 1, true) ~= nil
	local hasKill = rawdata:find("\nKill ", 1, true) ~= nil or rawdata:find("\nkill ", 1, true) ~= nil
	local hasCastFishing = rawdata:find("cast Fishing##", 1, true) ~= nil
	local hasFishText = rawdata:find("Fish in", 1, true) ~= nil or rawdata:find("Fish from", 1, true) ~= nil
	local hasGoto = rawdata:find("|goto ", 1, true) ~= nil
	local hasPath = rawdata:find("\npath", 1, true) ~= nil
	local hasHerbTip = rawdata:find('Find Herbs', 1, true) ~= nil
	local hasMineralTip = rawdata:find('Find Minerals', 1, true) ~= nil
	local hasInstanceEntry = rawdata:find("Enter the ", 1, true) ~= nil or rawdata:find("Inside the ", 1, true) ~= nil
	local hasFishingStyle = hasCastFishing or hasFishText
	local hasSkinningStyle = rawdata:find("Skin ", 1, true) ~= nil or rawdata:find("Skin their corpses", 1, true) ~= nil or rawdata:find("Skin its corpse", 1, true) ~= nil

	if primarySkill == "fishing" then
		if (hasCastFishing or hasFishText) and (hasGoto or hasPath) then return true end
		return false, "fishing route missing fishing/path anchors"
	elseif primarySkill == "skinning" then
		if hasKill and hasInstanceEntry then return true end
		if hasKill and (hasGoto or hasPath) then return true end
		return false, "skinning route missing kill/path anchors"
	elseif primarySkill == "herbalism" or primarySkill == "mining" then
		if (hasObjectClick or hasGenericClick or hasHerbTip or hasMineralTip) and (hasGoto or hasPath) then return true end
		return false, "node route missing gather/path anchors"
	elseif primarySkill == "enchanting" then
		if hasKill or hasObjectClick or hasGenericClick or hasGoto or hasPath then return true end
		return false, "enchanting route missing actionable steps"
	else
		if hasKill and (hasGoto or hasPath) and not hasFishingStyle and not hasSkinningStyle then return true end
		if hasKill or hasObjectClick or hasGenericClick or hasCastFishing then return true end
		return false, "route missing actionable steps"
	end
end

local function score_route_guide_candidate(guide)
	if not guide then return -1 end
	local score = 0
	if guide.rawdata and guide.rawdata ~= "" then score = score + 10 end
	if guide.headerdata and type(guide.headerdata) == "table" then score = score + 20 end
	local header = guide.headerdata
	local meta = header and header.meta
	if meta and meta.goldtype == "route" then score = score + 30 end
	if header and header.items and next(header.items) then score = score + 10 end
	if header and header.maps and next(header.maps) then score = score + 5 end
	if guide.is_retail_import then score = score - 15 end
	return score
end

function Goldguide:GetGoldRouteGuides()
	local routeByTitle = {}
	for _,guide in ipairs(ZGV.registeredguides or {}) do
		if is_gold_route_guide(guide) then
			local header = guide.headerdata
			local meta = header and header.meta
			if meta and meta.goldtype == "route" then
				local title = guide.title or guide.title_short
				if title then
					local existing = routeByTitle[title]
					if not existing or score_route_guide_candidate(guide) > score_route_guide_candidate(existing) then
						routeByTitle[title] = guide
					end
				end
			end
		end
	end
	local routes = {}
	for _,guide in pairs(routeByTitle) do
		table.insert(routes, guide)
	end
	table.sort(routes, function(a,b) return (a.title or "") < (b.title or "") end)
	return routes
end

function Goldguide:FindBestRouteGuideByTitle(title)
	if not title or title == "" then return nil end
	local bestGuide
	for _,guide in ipairs(ZGV.registeredguides or {}) do
		if guide and guide.title == title then
			if is_gold_route_guide(guide) then
				local header = guide.headerdata
				local meta = header and header.meta
				if meta and meta.goldtype == "route" then
					if not bestGuide or score_route_guide_candidate(guide) > score_route_guide_candidate(bestGuide) then
						bestGuide = guide
					end
				end
			end
		end
	end
	return bestGuide
end

function Goldguide:GetRouteGuideLoadTitle(title)
	if not title or title == "" then return title end
	self.DynamicRouteGuideTitles = self.DynamicRouteGuideTitles or {}
	if self.DynamicRouteGuideTitles[title] then
		return self.DynamicRouteGuideTitles[title]
	end

	local guide = self:FindBestRouteGuideByTitle(title)
	if not guide or not guide.rawdata or guide.rawdata == "" then return title end

	local header = guide.headerdata
	local meta = header and header.meta
	if not meta or meta.goldtype ~= "route" then return title end

	local bodyLines = {}
	local capturing = false
	for line in (guide.rawdata .. "\n"):gmatch("([^\r\n]*)\r?\n") do
		if not capturing then
			if line:match('^label%s+"Begin_') or line:match('^label%s+"Start_') then
				capturing = true
			end
		else
			if line:match('^Click Here to Sell ') or line:match('^label%s+"Sell_') then
				break
			end
			if not line:match('^label%s+"') and line ~= "|goldtracker" and not line:match("^'%|goto ") then
				table.insert(bodyLines, line)
			end
		end
	end

	if #bodyLines == 0 then return title end

	local wrapperTitle = ("GOLD\\Gold Guide Routes\\%s"):format(guide.title_short or title:gsub("^GOLD\\", ""))
	local wrapperHeader = {
		author = header and header.author or guide.author,
		meta = meta,
		items = header and header.items,
		maps = header and header.maps,
		type = "gold",
	}

	local wrapperBody = {
		"step",
		"This is a farming loop route.",
		"|tip The waypoint arrow only gets you onto the route. After that, follow the ant trail and loop path shown on the map.",
	}

	local mapName
	local preRouteLines = {}
	local routeActionLines = {}
	local pathPoints = {}
	local sawPath = false

	for _,line in ipairs(bodyLines) do
		local mapLine = line:match("^map%s+(.+)$")
		if mapLine then
			mapName = mapLine
		elseif line:match("^path[%s\t]") then
			sawPath = true
			for x,y in line:gmatch("(%d+%.?%d*),(%d+%.?%d*)") do
				table.insert(pathPoints, { x = x, y = y })
			end
		elseif not sawPath then
			table.insert(preRouteLines, line)
		else
			if not line:match("^goldcollect ")
				and not line:match("^|goldcollect ")
				and line ~= "|goldtracker"
				and not line:match("^Click Here to Sell ")
				and not line:match("^Click Here to Farm ")
				and not line:match('^label%s+"')
				and not line:match("^_Want to Farm More%?_")
				and not line:match("^'%|goto ")
			then
				table.insert(routeActionLines, line)
			end
		end
	end

	if #pathPoints > 0 then
		for _,line in ipairs(preRouteLines) do
			table.insert(wrapperBody, line)
		end
		local routeParts = {}
		for _,point in ipairs(pathPoints) do
			table.insert(routeParts, ("%s,%s"):format(point.x, point.y))
		end
		table.insert(wrapperBody, "step")
		table.insert(wrapperBody, "'Follow this farming route.")
		if mapName then
			table.insert(wrapperBody, ("..route %s,%s"):format(mapName, table.concat(routeParts, ";")))
		else
			table.insert(wrapperBody, ("..route %s"):format(table.concat(routeParts, ";")))
		end
		table.insert(wrapperBody, "|tip The route points should advance automatically as you move along the route.")
		for _,line in ipairs(routeActionLines) do
			if line:match("^[Kk]ill ") then
				table.insert(wrapperBody, "'" .. line)
			elseif line:match("^click ") then
				local target = line:match("^click%s+(.+)$")
				target = target and target:gsub("##%d+%+?", "") or "nearby nodes"
				table.insert(wrapperBody, ("'Gather %s along the route."):format(target))
			elseif line:match("^cast Fishing##") then
				table.insert(wrapperBody, "'Fish as you follow this loop route.")
			elseif line:match("^|tip ") then
				table.insert(wrapperBody, line)
			elseif line ~= "step" and line ~= "" then
				table.insert(wrapperBody, "'" .. line)
			end
		end
		table.insert(wrapperBody, "step")
		table.insert(wrapperBody, "You finished one loop of the farming route.")
		table.insert(wrapperBody, "|tip Reload the route from Gold Guide if you want to start another guided loop immediately.")
	else
		for _,line in ipairs(bodyLines) do
			table.insert(wrapperBody, line)
		end
	end

	ZGV:RegisterGuide(wrapperTitle, wrapperHeader, table.concat(wrapperBody, "\n"))
	self.DynamicRouteGuideTitles[title] = wrapperTitle
	return wrapperTitle
end

function Goldguide:ValidateRouteGuide(guide)
	local title = guide and (guide.title_short or guide.title) or "<unknown>"
	local issues = {}
	local warnings = {}
	local info = { title = title, guide = guide }

	if not guide then
		table.insert(issues, "guide missing")
		info.ok = false
		info.issues = issues
		info.warnings = warnings
		return info
	end

	local header = guide.headerdata
	local meta = header and header.meta
	local rawdata = guide.rawdata or ""
	local maps = header and header.maps or {}
	local items = header and header.items or {}
	local skillreq = meta and meta.skillreq
	local primarySkill = get_primary_skill(skillreq)
	local headerItemIds = collect_item_ids(items)
	local collectedItemIds = collect_goldcollect_ids(rawdata)
	local overlapCount = 0
	for itemid in pairs(headerItemIds) do
		if collectedItemIds[itemid] then overlapCount = overlapCount + 1 end
	end
	local primaryHeaderItem = header.items and header.items[1] and header.items[1][1]

	if not header then table.insert(issues, "missing headerdata") end
	if not meta then table.insert(issues, "missing meta") end
	if meta and meta.goldtype ~= "route" then table.insert(issues, "goldtype is not route") end
	if not guide.type then table.insert(issues, "missing guide.type") end
	if not guide.rawdata or guide.rawdata == "" then table.insert(issues, "missing rawdata") end
	if count_keys(headerItemIds) == 0 then table.insert(issues, "header.items missing") end
	if #(maps or {}) == 0 then
		if rawdata:find("|goto ", 1, true)
			or rawdata:find("\nmap ", 1, true)
			or rawdata:find("Enter the ", 1, true)
			or rawdata:find("Inside the ", 1, true)
		then
			table.insert(warnings, "header.maps missing")
		else
			table.insert(issues, "header.maps missing")
		end
	end

	local hasActions, actionReason = has_route_actions(rawdata, primarySkill)
	if not hasActions then table.insert(issues, actionReason) end

	if primaryHeaderItem and not collectedItemIds[primaryHeaderItem] then
		table.insert(warnings, ("primary header item %d missing from goldcollect lines"):format(primaryHeaderItem))
	end
	if count_keys(collectedItemIds) == 0 then
		table.insert(warnings, "no goldcollect lines found")
	elseif overlapCount == 0 and count_keys(headerItemIds) > 0 then
		table.insert(warnings, "header.items and goldcollect lines do not overlap")
	end

	info.mapCount = #(maps or {})
	info.headerItemCount = count_keys(headerItemIds)
	info.goldcollectCount = count_keys(collectedItemIds)
	info.overlapCount = overlapCount
	info.gotoCount = count_matches(rawdata, "%%|goto ")
	info.pathCount = count_matches(rawdata, "\npath[^\n]*")
	info.clickCount = count_matches(rawdata, "\n[cC]lick ")
	info.killCount = count_matches(rawdata, "\n[Kk]ill ")
	info.primarySkill = primarySkill
	info.ok = (#issues == 0)
	info.issues = issues
	info.warnings = warnings
	return info
end

function Goldguide:ValidateAllRoutes()
	local routes = self:GetGoldRouteGuides()
	local summary = {
		total = #routes,
		ok = 0,
		flagged = 0,
		failed = 0,
		results = {},
	}
	for _,guide in ipairs(routes) do
		local result = self:ValidateRouteGuide(guide)
		table.insert(summary.results, result)
		if not result.ok then
			summary.failed = summary.failed + 1
		elseif #(result.warnings or {}) > 0 then
			summary.flagged = summary.flagged + 1
		else
			summary.ok = summary.ok + 1
		end
	end
	table.sort(summary.results, function(a,b)
		local ascore = (a.ok and 0 or 100) + #(a.warnings or {})
		local bscore = (b.ok and 0 or 100) + #(b.warnings or {})
		if ascore == bscore then return tostring(a.title) < tostring(b.title) end
		return ascore > bscore
	end)
	return summary
end

function Goldguide:BuildRouteChores()
	Goldguide.Chores = Goldguide.Chores or {}
	Goldguide.Chores.Gathering = {}
	Goldguide.Chores.Farming = {}

	for _,guide in ipairs(Goldguide:GetGoldRouteGuides()) do
		local header = guide.headerdata
		local meta = header and header.meta
		if meta and meta.goldtype=="route" then
			local chore = {}
			chore.name = guide.title_short or (guide.title and guide.title:match("^GOLD\\[^\\]+\\(.+)$")) or guide.title
			chore.guide = guide
			chore.meta = meta
			chore.maps_array = header.maps or {}

			local items = {}
			for _,item in pairs(header.items or {}) do
				if not item[3] then
					tinsert(items,item)
				end
			end
			chore.items = items

			if chore.meta.skillreq then
				chore.type = "gathering"
				Goldguide.Gathering:New(chore)
			else
				chore.type = "farming"
				Goldguide.Farming:New(chore)
			end
		end
	end
end

function Goldguide:Initialise()
	-- This startup assignment is skipped when Gold Guide is enabled after login.
	-- Restore it here before any chore calculation uses the stack-size lookup.
	ZGVG.usefulness = ZGVG.usefulness or ZGV.StackSizes or {}

	if Goldguide.initialized then
		if not Goldguide.Chores or ((#Goldguide.Chores.Gathering==0 and #Goldguide.Chores.Farming==0) and ZGV.Gold and ZGV.Gold.guides_loaded) then
			Goldguide:BuildRouteChores()
		end
		Goldguide:CalculateAllChores(true)
		Goldguide:ShowWindow()
		return
	end

	Goldguide.OffsetFarming=0
	Goldguide.OffsetGathering=0
	Goldguide.OffsetCrafting=0
	Goldguide.OffsetAuctions=0

	ZGV.db.profile.goldsort = ZGV.db.profile.goldsort or {
		["gathering"] = {"dispgold","desc"},
		["farming"] = {"dispgold","desc"},
		["crafting"] = {"profit","desc"},
		["auctions"] = {"profit","desc"},
	}

	-- Add a pointer to farming guides groups, for crafting guides to use
	for i,group in pairs(ZGV.registered_groups.groups) do 
		if group.name == "GOLD" then
			for i,category in pairs(group.groups) do 
				if category.name == "Farming" then
					Goldguide.farming_guides=category.guides
				end
			end
		end
	end

	ZGV:CacheSkills()

	Goldguide.RecipeLevels={}
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		for skill,recipes in pairs(ZygorGuidesViewer.Professions.AllRecipes) do
			for spell,recipe in pairs(recipes) do
				Goldguide.RecipeLevels[spell] = tonumber(recipe.learnedat) or 1
			end
		end
	end

	Goldguide.herbalism = ZGV.Professions:GetSkill("Herbalism").level
	Goldguide.mining = ZGV.Professions:GetSkill("Mining").level

	Goldguide.CacheCraftingTooltip={}

	Goldguide:BuildRouteChores()

	Goldguide:CalculateAllChores(true)

	if ZGV.db.global.gold_info_pages then Goldguide.ShowInfoPage=true end

	ZGV:AddMessageHandler("ZGV_GOLD_SCANNED",Goldguide.MainFrame_EventHandler)
	ZGV:AddEventHandler("MODIFIER_STATE_CHANGED",Goldguide.MainFrame_EventHandler)

	Goldguide.initialized = true
	Goldguide:ShowWindow()
end

function Goldguide:CalculateAllChores(refresh)
	-- If we are here, then it means that we got new AH data, or just started gg
	Goldguide:InitialiseAuctionChores()
	Goldguide:InitialiseCraftingChores()

	for _,chore in pairs(Goldguide.Chores.Farming) do chore:CalculateDetails(refresh)   chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Gathering) do chore:CalculateDetails(refresh) chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Crafting) do chore:CalculateDetails(refresh)  chore.needsRefresh=refresh end
	for _,chore in pairs(Goldguide.Chores.Auctions) do chore:CalculateDetails(refresh)  chore.needsRefresh=refresh end

	if refresh then
		Goldguide.knows_crafting = false
		for _,skillname in ipairs(CRAFTING_SKILLS) do
			if ZGV.Professions:GetSkill(skillname).level>0 then
				Goldguide.knows_crafting = true
			end
		end
	end


	Goldguide:Update()
end

function Goldguide:Update()
	Goldguide.needToUpdate = false

	if not Goldguide.MainFrame then return end

	-- Ensure offsets and sort defaults are initialized
	Goldguide.OffsetFarming = Goldguide.OffsetFarming or 0
	Goldguide.OffsetGathering = Goldguide.OffsetGathering or 0
	Goldguide.OffsetCrafting = Goldguide.OffsetCrafting or 0
	Goldguide.OffsetAuctions = Goldguide.OffsetAuctions or 0
	ZGV.db.profile.goldsort = ZGV.db.profile.goldsort or {
		["gathering"] = {"dispgold","desc"},
		["farming"] = {"dispgold","desc"},
		["crafting"] = {"profit","desc"},
		["auctions"] = {"profit","desc"},
	}

	local tab=Goldguide.ActiveTab
	local results=0

	-- step 1: prepare data, filter out unwanted results
	if tab=="Farming" then
		for ii,chore in ipairs(Goldguide.Chores.Farming) do 
			if chore.needsRecalc then 
				chore:CalculateDetails(true)
			end
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Gathering" then
		for ii,chore in ipairs(Goldguide.Chores.Gathering) do 
			if chore.needsRecalc then 
				chore:CalculateDetails(true)
			end
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Crafting" then
		for ii,chore in ipairs(Goldguide.Chores.Crafting) do
			if chore:IsValidChore() then results=results+1 end
		end
	elseif tab=="Auctions" then
		for ii,chore in ipairs(Goldguide.Chores.Auctions) do 
			if chore:IsValidChore() then results=results+1 end
		end
	end

	-- step 2: sort data
	local Chores=Goldguide.Chores
	if tab=="Farming" then
		sort(Chores.Farming,Goldguide.Farming.dynamic_sort)
	elseif tab=="Gathering" then
		sort(Chores.Gathering,Goldguide.Gathering.dynamic_sort)
	elseif tab=="Crafting" then
		sort(Chores.Crafting,Goldguide.Crafting.dynamic_sort)
	elseif tab=="Auctions" then
		sort(Chores.Auctions,Goldguide.Auctions.dynamic_sort)
	end

	-- step 3: display data
	local rowoff=0

	local resultstatus
	
	if tab=="Farming" then 
		if results==0 then
			if #Goldguide.Chores.Farming==0 then
				resultstatus = L["gold_farming_error_noresults"]
			else
				local type = Goldguide.Farming_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				resultstatus = L["gold_farming_error_noitemtype"]:format(type)
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Farming_Frame.Entries:CountRows()

		Goldguide.OffsetFarming = max(0,min(Goldguide.OffsetFarming,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetFarming

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Farming) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Farming_Frame.Entries.rows[rownum]
					local icon, title, zone, rate, disptime, dispgold = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(title)
					row.zone:SetText(zone)
					row.rate:SetText(rate)
					row.disptime:SetText(disptime)
					row.dispgold:SetText(dispgold)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)
					
					row:Show()
				end
				itemindex=itemindex+1 
			end
		end
		Goldguide.Farming_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Farming_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Farming_Frame.Entries.rows[r]:Hide() 
			Goldguide.Farming_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Gathering" then 
		if results==0 then
			if #Goldguide.Chores.Gathering==0 then
				local profstrings = "" 
				local gatheringprofs={herbalism="Herbalism",mining="Mining",skinning="Skinning",fishing="Fishing",enchanting="Enchanting"}
				for k,prof in pairs(gatheringprofs) do
					local skill=ZGV.Professions:GetSkill(prof)
					local level=skill.level
					if level>0 then 
						profstrings = profstrings .. "\n" .. L["gold_gathering_error_prof"]:format(prof,level)
					end
				end
				if profstrings ~= "" then
					resultstatus = L["gold_gathering_error_noroutes_prof"]:format(profstrings)
				else
					resultstatus = L["gold_gathering_error_all_noprofessions"]
				end
			else
				local type = Goldguide.Gathering_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				local profstrings = "" 
				local gatheringprofs={herbalism="Herbalism",mining="Mining",skinning="Skinning",fishing="Fishing",enchanting="Enchanting"}

				for k,prof in pairs(gatheringprofs) do
					local skill=ZGV.Professions:GetSkill(prof)
					local level=skill.level
					if level>0 then 
						profstrings = profstrings .. "\n" .. L["gold_gathering_error_prof"]:format(prof,level)
					end
					if ZGV.Professions.tradeskills[skill.parentskillID] and ZGV.Professions.tradeskills[skill.parentskillID].subs then
						for i,v in pairs(ZGV.Professions.tradeskills[skill.parentskillID].subs) do
							if v.name ~= prof then
								local subskill=ZGV.Professions:GetSkill(v.name)
								local sublevel=subskill.level
								if sublevel>0 then 
									profstrings = profstrings .. "\n" .. L["gold_gathering_error_prof"]:format(v.name,sublevel)
								end
							end
						end
					end
				end

				if type~="All" then
					local level = ZGV.Professions:GetSkill(type).level
					if level==0 then
						resultstatus = L["gold_gathering_error_one_noskillin"]:format(type)
						if profstrings~="" then
							resultstatus = resultstatus..L["gold_gathering_error_one_noskillin_skills"]:format(profstrings)
						end
					else
						resultstatus = L["gold_gathering_error_one_noresults"]:format(type)
					end
				else
					if profstrings~="" then
						resultstatus = L["gold_gathering_error_one_nothing"]:format(profstrings)
					else
						resultstatus = L["gold_gathering_error_all_noprofessions"]
					end
				end
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Gathering_Frame.Entries:CountRows()

		Goldguide.OffsetGathering = max(0,min(Goldguide.OffsetGathering,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetGathering

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Gathering) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Gathering_Frame.Entries.rows[rownum]
					local icon, title, zone, rate, disptime, dispgold = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(title)
					row.zone:SetText(zone)
					row.rate:SetText(rate)
					row.disptime:SetText(disptime)
					row.dispgold:SetText(dispgold)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Gathering_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Gathering_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Gathering_Frame.Entries.rows[r]:Hide() 
			Goldguide.Gathering_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Crafting" then 
		if results==0 then
			if #Goldguide.Chores.Crafting==0 then
				if Goldguide.knows_crafting then
					resultstatus = L["gold_crafting_error_recipesnotcached"]
				else
					resultstatus = L["gold_crafting_error_noprofessions"]
				end
			else
				if ZGV.db.profile.gold_crafting_mode < 2 and not Goldguide:HasTrendData() then
					resultstatus = L["gold_crafting_error_notrendsexpert"]
				else
					resultstatus = L["gold_crafting_error_noresults"]
				end
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Crafting_Frame.Entries:CountRows()

		Goldguide.OffsetCrafting = max(0,min(Goldguide.OffsetCrafting,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetCrafting

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Crafting) do
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Crafting_Frame.Entries.rows[rownum]
					local icon, name, status, materials, profit = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.name:SetText(name)
					row.status:SetText(status)
					row.materials:SetText(materials)
					row.profit:SetText(profit)

					row.chore = chore

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Crafting_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Crafting_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Crafting_Frame.Entries.rows[r]:Hide() 
			Goldguide.Crafting_Frame.Entries.rows[r].chore=nil 
		end
	end

	if tab=="Auctions" then 
		if results==0 then
			if #Goldguide.Chores.Auctions==0 then
				resultstatus = L["gold_auctions_error_noresults"]
			else
				local type = Goldguide.Auctions_Frame.TypeDropdown:GetCurrentSelectedItem():GetText()
				resultstatus = L["gold_auctions_error_noresults"]:format(type)
			end
		end

		local rownum=0
		local ROW_COUNT = Goldguide.Auctions_Frame.Entries:CountRows()

		Goldguide.OffsetAuctions = max(0,min(Goldguide.OffsetAuctions,results-ROW_COUNT))
		local rowoff=Goldguide.OffsetAuctions

		local itemindex = 1
		for ii,chore in ipairs(Goldguide.Chores.Auctions) do 
			if chore.valid then
				rownum = itemindex-rowoff
				if rownum>0 and rownum<ROW_COUNT+1 then 
					local row = Goldguide.Auctions_Frame.Entries.rows[rownum]
					local icon, name, status, count, cost, profit, gain = chore:GetDisplayInfo(chore.needsRefresh)
					row.no:SetText(itemindex)
					row.icon:SetTexture(icon)
					row.title:SetText(name)
					row.status:SetText(status)
					row.count:SetText(count)
					row.cost:SetText(cost)
					row.profit:SetText(profit)
					row.gain:SetText(gain)

					row.chore = chore

					row.loadbutton:SetEnabledIf(not ZGVG.Appraiser:IsInCurrentDeals(chore.id))
						

					row.backalpha = rownum%2==0 and 0.0 or 0.06
					row.back:SetAlpha(row.backalpha)

					row:Show()
				end
				itemindex=itemindex+1 
			end
		end

		Goldguide.Auctions_Frame.Entries.scrollbar:TotalValue(results)
		Goldguide.Auctions_Frame.Entries.scrollbar:SetValue(rowoff)
		for r=rownum+1,ROW_COUNT do 
			Goldguide.Auctions_Frame.Entries.rows[r]:Hide() 
			Goldguide.Auctions_Frame.Entries.rows[r].chore=nil 
		end
	end

	Goldguide.MainFrame.MenuFrame.ResultCount:SetText("Results: "..results)

	if resultstatus then
		Goldguide.MainFrame.MessageFrame.ResultsMessage:SetText(resultstatus)
		Goldguide.MainFrame.MessageFrame:Show()
	else
		Goldguide.MainFrame.MessageFrame:Hide()
	end

	Goldguide:UpdateSortingArrows()
	Goldguide:UpdateTimeStamp()
	if Goldguide.UpdateTabAvailability then
		Goldguide:UpdateTabAvailability()
	end
end

function Goldguide:HasAuctionScanData()
	local data
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		data = ZGV.db and ZGV.db.factionrealm and ZGV.db.factionrealm.gold_scan_data
	else
		data = ZGV.db and ZGV.db.realm and ZGV.db.realm.gold_scan_data
	end
	data = data and data[1]
	return data and next(data) ~= nil
end

function Goldguide:HasTrendData()
	local trends = ZGV.Gold and ZGV.Gold.servertrends
	return trends and trends.date and trends.items and next(trends.items) ~= nil
end

function Goldguide:HasCraftingRecipeData()
	local recipes = ZGV.Professions and ZGV.Professions.AllRecipes
	return recipes and next(recipes) ~= nil
end

function Goldguide:GetTabAvailability(tabname)
	local chores = self.Chores or {}

	if tabname == "Farming" then
		return (#(chores.Farming or {}) > 0), L["gold_farming_error_noroutes"]
	elseif tabname == "Gathering" then
		return (#(chores.Gathering or {}) > 0), L["gold_gathering_error_noroutes"]
	elseif tabname == "Crafting" then
		if not self:HasCraftingRecipeData() then
			return false, L["gold_crafting_error_recipesnotcached"]
		end
		if self.knows_crafting or #(chores.Crafting or {}) > 0 then
			return true
		end
		return false, L["gold_crafting_error_noprofessions"]
	elseif tabname == "Auctions" then
		if not self:HasAuctionScanData() then
			return false, L["gold_app_no_scan_data"]
		end
		if not self:HasTrendData() then
			return false, L["gold_app_no_servertrends"]
		end
		return true
	end

	return true
end

function Goldguide:GetPreferredTab()
	local order = {"Auctions", "Farming", "Crafting", "Gathering"}
	for _,tabname in ipairs(order) do
		local available = self:GetTabAvailability(tabname)
		if available then
			return tabname
		end
	end
	return "Farming"
end

-- called from Auctions,Farming,Crafting,Gathering frames, with sorting param pairs: "fieldname","asc"|"desc", ...
function Goldguide.dynamic_sort(tab,a,b, ...)
	local field,order
	local varargn=1

	local a_val,b_val
	local a_val_num,b_val_num

	repeat
		field=select(varargn,...)
		order=select(varargn+1,...)
		varargn=varargn+2
		if not field then return nil end  -- this means the sorting has failed and may return random order!

		a_val = a[field]
		b_val = b[field]
		a_val_num = tonumber(a_val)
		b_val_num = tonumber(b_val)

		if order=="zerolast" then
			a_val=(a_val_num>0) and 1 or 0
			b_val=(b_val_num>0) and 1 or 0
			order="desc"
		end  -- just force zeroes to the bottom
		if order=="pos-zero-nil" then
			a_val=(a_val_num and a_val_num>0 and 1) or a_val_num or -1
			b_val=(b_val_num and b_val_num>0 and 1) or b_val_num or -1
			order="desc"
		end
	until a_val~=b_val

	if type(a_val)~=type(b_val) then
		a_val=tostring(a_val)
		b_val=tostring(b_val)
	end
	if order == "asc" then
		return a_val<b_val
	else
		return a_val>b_val
	end
end


function Goldguide.MainFrame_EventHandler(self, event, ...)
	if event=="ZGV_GOLD_SCANNED" and Goldguide.MainFrame:IsShown() then
		Goldguide:CalculateAllChores(true)
		Goldguide:Update()
	elseif event=="MODIFIER_STATE_CHANGED" and (...=="LSHIFT" or ...=="RSHIFT") and Goldguide.MainFrame:IsShown() then
		for k,row in pairs(Goldguide.Farming_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.FarmingTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Gathering_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.GatheringTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Crafting_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.CraftingTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
		for k,row in pairs(Goldguide.Auctions_Frame.Entries.rows) do
			if row:IsVisible() and row:IsMouseOver() then
				Goldguide.AuctionTooltip:Hide()
				row:GetScript("OnEnter")(row)
				break
			end
		end
	end
end

function Goldguide.MainFrame_UpdateHandler(self, event)
	if Goldguide.needToUpdate then
		Goldguide:Update()
	end
end

tinsert(ZGV.startups,{"Goldguide core",function(self)
	if not ZGV.db.profile.load_gold then return end

	ZGV.Gold.guides_loaded = true -- mark as loaded even without GOLD-type guides
	ZGV.Gold.usefulness = ZGV.StackSizes
	ZGV.db.char.CurrentDeals = ZGV.db.char.CurrentDeals or {}

	local t = debugprofilestop()

	Goldguide.Chores = {
		Gathering={},
		Farming={},
		Crafting={},
		Auctions={},
	}

	Goldguide:BuildRouteChores()

	if debugprofilestop()-t>50 then t=debugprofilestop() coroutine.yield("more gold to do") end
end } )

function Goldguide.UpdateSorting(widget,col)  -- NOT called with a colon; called from a ScrollTable widget.
	local dbfield = string.lower(Goldguide.ActiveTab)
	local col = string.lower(col)


	if ZGV.db.profile.goldsort[dbfield][1] == col then
		if ZGV.db.profile.goldsort[dbfield][2] == "desc" then
			ZGV.db.profile.goldsort[dbfield] = {col,"asc"}
		else
			ZGV.db.profile.goldsort[dbfield] = {col,"desc"}
		end
	else
		ZGV.db.profile.goldsort[dbfield] = {col,"desc"}
	end

	Goldguide:UpdateSortingArrows()
	Goldguide:Update()
end

function Goldguide:GetItemFlagsAndStatus(chore)
	local id = chore.id or chore.productid
	if not id then return {}, nil end
	local _, _, _, _, _, class, subclass = ZGV:GetItemInfo(id)

	local flags = {}

	-- Ensure Auctions data exists
	if not ZGV.Gold.Auctions then ZGV.Gold.Auctions = {} end
	if not ZGV.Gold.Auctions.BaseValues then ZGV.Gold.Auctions.BaseValues = {} end
	if not ZGV.Gold.Auctions.ItemStatus then ZGV.Gold.Auctions.ItemStatus = {} end
	if not ZGV.Gold.Auctions.Flags then ZGV.Gold.Auctions.Flags = {} end

	---- Get Zygor defined item flags
	if ZGV.Gold.Auctions.BaseValues[class] and ZGV.Gold.Auctions.BaseValues[class][subclass] then
		for i,v in pairs(ZGV.Gold.Auctions.BaseValues[class][subclass]) do
			table.insert(flags,v)
		end
	end

	local status_override

	if ZGV.Gold.Auctions.ItemStatus[id] then
		for i,v in pairs(ZGV.Gold.Auctions.ItemStatus[id]) do
			if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
			if v=="WIPE" then 
				table.wipe(flags)
			end

			if string.sub(v,1,1)=="-" then
				for k,n in pairs(flags) do
					if n==string.sub(v,2,-1) then
						table.remove(flags,k)
					end
				end
			end
		end
		if ZGV.Gold.Auctions.ItemStatus[id].OVERRIDE then
			status_override = ZGV.Gold.Auctions.ItemStatus[id].OVERRIDE
		end
	end

	if id > 1000000000 then -- pets
		if ZGV.Gold.Auctions.ItemStatus[82800] then -- global for pet cages
			for i,v in pairs(ZGV.Gold.Auctions.ItemStatus[82800]) do
				if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
				if v=="WIPE" then 
					table.wipe(flags)
				end

				if string.sub(v,1,1)=="-" then
					for k,n in pairs(flags) do
						if n==string.sub(v,2,-1) then
							table.remove(flags,k)
						end
					end
				end
			end
			if ZGV.Gold.Auctions.ItemStatus[82800].OVERRIDE then
				status_override = ZGV.Gold.Auctions.ItemStatus[82800].OVERRIDE
			end
		end

		local petId = id  --TODO: make sure this works, was missing

		if ZGV.Gold.Auctions.PetStatus[petId] then -- custom for this pet
			for i,v in pairs(ZGV.Gold.Auctions.PetStatus[petId]) do
				if i~="OVERRIDE" and v~="WIPE" and string.sub(v,1,1)~="-" then table.insert(flags,v) end
				if v=="WIPE" then 
					table.wipe(flags)
				end

				if string.sub(v,1,1)=="-" then
					for k,n in pairs(flags) do
						if n==string.sub(v,2,-1) then
							table.remove(flags,k)
						end
					end
				end
			end
			if ZGV.Gold.Auctions.PetStatus[petId].OVERRIDE then
				status_override = ZGV.Gold.Auctions.PetStatus[petId].OVERRIDE
			end
		end
	end

	return flags,status_override
end

-- Used for Farming and Gathering type chores
Goldguide.Common = {}
function Goldguide:ResolveRequirementSkillName(entry)
	if not entry or type(entry) ~= "string" then return entry end
	if entry == "mining" or entry:find("_mining", 1, true) then return "Mining" end
	if entry == "herbalism" or entry:find("_herbalism", 1, true) then return "Herbalism" end
	if entry == "skinning" or entry:find("_skinning", 1, true) then return "Skinning" end
	if entry == "fishing" or entry:find("_fishing", 1, true) then return "Fishing" end
	if entry == "enchanting" or entry:find("_enchanting", 1, true) then return "Enchanting" end
	return entry
end

function Goldguide.Common:AreRequirementsMet(ignore_skill,ignore_level)
	if ZGV.db.profile.gmgoldallvalid then self.valid=true return true,"debug override" end

	if ZGV.Gold.any_skill then ignore_skill=true end
	if ZGV.Gold.any_level then ignore_level=true end
	
	if self.meta then
		if self.meta.levelreq and not ignore_level then
			local level = ZGV:GetPlayerPreciseLevel()
			if type(self.meta.levelreq)=="number" and level<self.meta.levelreq then return false,"level" end
			if type(self.meta.levelreq)=="table" and level<self.meta.levelreq[1] then return false,"level" end
		end
		if self.meta.skillreq and not ignore_skill then
			for entry,value in pairs(self.meta.skillreq) do
				local skillname = Goldguide:ResolveRequirementSkillName(entry)
				local tradeskill = ZGV.Professions:GetSkill(skillname)
				if (not tradeskill.active) or (tradeskill.level or 0) < (value or 0) then return false,"skill" end
			end
		end
	end
	if self.guide and self.guide.GetStatus and self.guide:GetStatus()=="INVALID" then return false,"badguide" end
	return true
end

function Goldguide.Common:GetProfitPerHour()  -- NOT SMART. Stupid as hell.
	if not self:AreRequirementsMet() then return -1 end
	local profit=0
	if not self.items then return 0 end
	for i,pair in ipairs(self.items) do
		local id,num,crap=unpack(pair)
		local vendorprice,ahprice = ZGVG:GetItemPrice(id)
		if not crap and ahprice>0 then
			profit=profit + num * ahprice
		else
			profit=profit + num * (vendorprice or 0)
		end
	end
	self.profitperhour = profit * 60 / self.time
	self.profitperhour_is_smart=false
	return self.profitperhour
end

function Goldguide.Common:GetSmartProfitPerHour()
	if not self:AreRequirementsMet() then 
		self.profitperhour=-1
		return
	end
	if self.profitperhour then return self.profitperhour end
	local profit=0
	if not self.items then return 0 end

	local trends = ZGV.Gold.servertrends
	if not trends then return self:GetProfitPerHour() end  -- not so smart without trends
	trends=trends.items

	if not self.calculated_details then self:CalculateDetails() end -- this calculates self.items, self.good_items etc
	for i,itemdata in ipairs(self.items) do
		local id,num,crap=unpack(itemdata)
		num = num or 1
		local trend = trends[id]
		if not crap and itemdata.is_lively then
			-- good healthy profits!

			-- WAIT. Gouged? Missing?
			profit = profit + num * itemdata.price

		else
			-- otherwise assume vendor
			profit=profit + num * itemdata.vendorprice
			-- or ZERO PROFIT HERE!
		end
	end

	self.profitperhour = profit * 60 / self.time
	self.profitperhour_is_smart=true
	return self.profitperhour
end

function Goldguide.Common:CalculateDetails(refresh)
	if self.calculated_details and not refresh and not self.needsRecalc then return self.calculated_details end
	self.needsRecalc = false

	self.profitperhour = nil
	self.cached_tooltip = nil
	self.good_items = {}
	self.bad_items = {}

	local dyna_title = {}
	local s = ""

	self.display_name = nil

	if self.items then
		local itemstrings = {}
		local good_items = {}
		local bad_items = {}

		self.good_items=good_items
		self.bad_items=bad_items

		self.has_stagnant=nil
		self.has_gouged=nil
		self.has_empty=nil
		self.crap_rate=false

		local herbalism = Goldguide.herbalism
		local mining = Goldguide.mining

		self.scale=100 -- we'll be adjusting this right below.

		local trends = ZGV.Gold.servertrends
		trends = trends and trends.items
			
		for i,itemdata in ipairs(self.items) do
			local itemid,count,crap=unpack(itemdata)
			count = max(count or 1,1)
			local itemname,itemlink,_,_,_,_,_,_,_,itemicon,itemvendor = ZGV:GetItemInfo(itemid)
			if not itemname then self.needsRecalc = true end

			if self.meta and self.meta.herbalismcrapuntil and herbalism<self.meta.herbalismcrapuntil then
				count=count/10
				self.crap_rate=true
			end
			
			if self.meta and self.meta.miningcrapuntil and mining<self.meta.miningcrapuntil then
				count=count/10
				self.crap_rate=true
			end


			local trend = trends and trends[itemid]

			local vendor,scanprice

			if not crap then
				-- primary items

				itemdata.is_lively = trend and trend.health>0

				itemdata.est_sold = trend and trend.sold
				if itemdata.est_sold and itemdata.est_sold>0 then itemdata.is_lively=true end

				local useful = (ZGVG.usefulness or ZGV.StackSizes or {})[itemid]
				
				local statusName,statusText,statusIcon 
				vendor,scanprice = ZGVG:GetItemPrice(itemid)

				local sellprice = ZGVG:GetSellPrice(itemid)
				local priceStatus = ZGVG:GetPriceStatus(itemid,sellprice)
				statusName = priceStatus.statusName
				statusText = priceStatus.name..priceStatus.sellsuggestion
				statusIcon = ZGV.IconSets.AuctionToolsPriceIcons[priceStatus.sellicon or priceStatus.icon].texcoord -- coords

				itemdata.vendorprice=vendor

				if trend and itemdata.is_lively then
					itemdata.price = sellprice
					if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
						itemdata.demand = count -- classic, we have no demand values	
					else
						itemdata.demand = trend.sold or trend.q_md or (trend.q_lo + trend.q_hi)/2  -- TEMPORARY. Doubling the market is bad too, but we have to start with something.
					end
					itemdata.scale = itemdata.demand/count

					-- scale whole route
					if self.scale>itemdata.scale then  self.scale=itemdata.scale  end

					if statusName=="PRICESTATUS_GOUGED" then
						self.has_gouged=true
						itemdata.gouged=true
					elseif statusName=="PRICESTATUS_EMPTY" then
						self.has_empty=true
						itemdata.empty=true
					end
					local is = ("%d %s (%s each = %s total); demand: %d  %s%s"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count),
						itemdata.demand,
						itemdata.scale<1 and (" |cffff0000LOW DEMAND, %d daily max!|r"):format(itemdata.demand) or "",
						itemdata.gouged and (" |cff88ff00GOUGED: %s > %s|r"):format(
							ZGV.GetMoneyString(itemdata.price),
							ZGV.GetMoneyString(trend.p_hi*ZGVG.OVERPRICE))
							or (itemdata.empty and (" |cff00ff00EMPTY!|r") or "")
						)
					tinsert(good_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=true,itemdata=itemdata})

				elseif trend and not itemdata.is_lively then
					itemdata.price = trend.p_md or vendor or 0
					self.has_stagnant=true
				
					local is = ("%d %s (%s each = %s total); |cffff0000market stagnant or saturated|r"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count)
					)
					tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=false,itemdata=itemdata})

				elseif not trend then
					itemdata.price = vendor or 0

					local is = ("%d %s (%s each = %s total); %s|cffaa0000no history data|r"):format(
						count, itemlink or "#"..itemid,
						ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count),
						useful and "useful, but " or ""
						)
					tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,is_lively=false,itemdata=itemdata,no_trend=true})

				end
			
				
			elseif crap and count>=10 then
				itemdata.is_lively=false
				itemdata.demand=0
				itemdata.price = ZGVG:GetItemPrice(itemid) or vendor or 0

				local is = ("%d %s (%s each = %s total) |cff888888<- vendor|r"):format(count,itemlink or "#"..itemid,ZGV.GetMoneyString(itemdata.price),ZGV.GetMoneyString(itemdata.price*count))
				tinsert(bad_items,{itemname,is,count=count,price=itemdata.price,profit=itemdata.price*count,itemdata=itemdata,no_trend=true})

			end

		end

		local function sort_by_profit(a,b)
			if a.is_lively and b.is_lively then return a.profit>b.profit
			elseif a.is_lively~=b.is_lively then return a.is_lively
			elseif a.profit~=b.profit then return a.profit>b.profit
			else return a[1] and b[1] and a[1]>b[1] end  -- last: by id
		end

		sort(good_items,sort_by_profit)
		for i,it in ipairs(good_items) do
			tinsert(itemstrings,it[2])
			if it.is_lively then tinsert(dyna_title,it[1]) end
		end

		if #bad_items>0 then
			tinsert(itemstrings,"---------")
			sort(bad_items,sort_by_profit)
			for i,it in ipairs(bad_items) do
				tinsert(itemstrings,it[2])
			end
		end

		--end
		s = s .. (" - get (per hour):\n%s\n"):format(table.concat(itemstrings,"\n"))
	end

	local quality = nil
	local _
	if self.good_items and #self.good_items>0 then
		_,_, quality ,_,_,_,_,_,_,_,_ = ZGV:GetItemInfo(self.good_items[1]["itemdata"][1])
		self.display_name = table.concat(dyna_title," / ")
	elseif self.bad_items and #self.bad_items>0 then
		_,_, quality ,_,_,_,_,_,_,_,_ = ZGV:GetItemInfo(self.bad_items[1]["itemdata"][1])
		self.display_name = self.bad_items[1][1]
	end
	if quality then
		self.display_name = (ZGV:GetItemQualityColorCode(quality) or "") .. self.display_name
	end

	self.display_name = self.display_name or self.name

	self.calculated_details = s

	self:GetSmartProfitPerHour()

	self.rate = self.profitperhour
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		self.scale = 1
	else
		self.scale = self.scale or 1
	end

	self.dispgold = self.profitperhour * self.scale
	self.disptime = self.time * self.scale
	if self.scale>=10 then
		self.disptime = self.time * 10
		self.dispgold = self.profitperhour * 10
	end

	if self.good_items and #self.good_items==0 then 
		self.disptime = 0
		self.dispgold = 0
	end


	if self.maps_array then
		self.maps = table.concat(self.maps_array, ", ") 
	end

	Goldguide.needToUpdate = true

	return s
end

local TIER_DEMAND_HIGH = 1.0
local TIER_DEMAND_MEDIUM = 0.5

function Goldguide.Common:GetTooltipData(refresh)
	if self.cached_tooltip and not refresh then return self.cached_tooltip end

	local price_desc = " /ea"
	local drops_desc = " /hr"

	local h = floor(self.scale)
	local m = (self.scale-h)*60
	m=m-m%5 --trunc to 10
	if h>2 then m=nil end
	local hm = (h>0 and h.."h" or "") .. (h>0 and m and " " or "") .. (m and (m .. "m") or "")

	self.cached_tooltip = {items={},separator=false}

	for ii,item in ipairs(self.good_items) do
		local itemname,itemlink = ZGV:GetItemInfo(item.itemdata[1])

		local demand
		-- DEMAND TIERS
		if item.itemdata.scale>=TIER_DEMAND_HIGH then
			demand=Goldguide.COLOR_DEMANDGREAT ..math.floor(item.itemdata.demand).."|r"
		elseif item.itemdata.scale>=TIER_DEMAND_MEDIUM then
			demand=Goldguide.COLOR_DEMANDGOOD ..math.floor(item.itemdata.demand).."|r"
		else
			demand=Goldguide.COLOR_DEMANDLOW ..math.floor(item.itemdata.demand).."|r"
		end
		
		local comment
		if item.itemdata.gouged then
			comment="Gouged; price raised."
		elseif item.itemdata.empty then
			comment="Market empty; price raised."
		else
			comment=""
		end

		local scaled_profit = item.profit * self.scale

		if not item.itemdata[3] then
			table.insert(self.cached_tooltip.items,{
				item=itemlink,
				price=ZGV.GetMoneyString(item.price)..price_desc, 
				drops=item.count..drops_desc, 
				profit=ZGV.GetMoneyString(scaled_profit), 
				demand=demand,
				status=comment
			})
		end
	end
	if self.good_items and #self.good_items>0 and #self.bad_items>0 then 
		self.cached_tooltip.separator = #self.good_items
	end

	if self.bad_items then
		for ii,item in ipairs(self.bad_items) do
			local itemname,itemlink = ZGV:GetItemInfo(item.itemdata[1])
			local comment=""
			if item.itemdata[3] then --crap
				comment="Vendor."
			elseif item.no_trend then
				if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
					comment="No trend data."
				else
					comment="Not useful."
				end
			elseif not item.is_lively then
				comment="Market stagnant, vendor."
			else
				comment=""
			end
			if not item.itemdata[3] then
				local scaled_profit = (item.profit or 0) * self.scale
				table.insert(self.cached_tooltip.items,{
					item=itemlink,
					price=ZGV.GetMoneyString(item.price)..price_desc, 
					drops=item.count..drops_desc, 
					profit=ZGV.GetMoneyString(scaled_profit), 
					demand=item.itemdata.demand or 0,
					status=comment
				})
			end
		end
	end

	if self.crap_rate then
		self.cached_tooltip.header = "|cff9100ffLow gathering skill level will result in lower amount of items.|r"
	end

	-- crop display to 30 entries
	while #self.cached_tooltip.items>30 do table.remove(self.cached_tooltip.items) end

	return self.cached_tooltip
end
