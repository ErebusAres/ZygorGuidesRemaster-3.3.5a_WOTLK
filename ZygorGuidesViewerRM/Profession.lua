local me = ZygorGuidesViewer
local ZGV = me
if not ZGV then return end

me.skills = {}

local LS=ZygorGuidesViewer_L("Skills")

local skillSpells = {
	['Alchemy']=2259,
	['Blacksmithing']=2018,
	['Inscription']=45357,
	['Jewelcrafting']=25229,
	['Leatherworking']=2108,
	['Tailoring']=3908,
	['Enchanting']=7411,
	['Engineering']=4036,

	['Herbalism']=13614,
	['Mining']=2575,
	['Skinning']=8613,

	['Cooking']=2550,
	['First Aid']=3273,
	['Fishing']=7620,
}

tinsert(me.startups,function(self)
	self:AddEvent("SKILL_LINES_CHANGED","CacheSkills")
	self:AddEvent("TRADE_SKILL_UPDATE","CacheSkills")
	self:AddEvent("CHAT_MSG_SKILL","CacheSkills")
	self:AddEvent("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEvent("TRADE_SKILL_SHOW","CacheRecipes")
	--self:AddEvent("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	self.skills[""]={
		active=false,
		level=0,
		max=0
	}

	if GetLocale()~="enUS" then
		ZGV.SkillsLocalized={}
		for skill,num in pairs(skillSpells) do
			ZGV.SkillsLocalized[skill]=GetSpellInfo(num)
		end
	end
end)

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function me:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end

function me:CacheSkills()
	if not TradeSkillFrame then
--TODO
	end
	for i=1,70 do
		local skillName, header, isExpanded, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType, skillDescription = GetSkillLineInfo(i)

		if not header and not child and skillName then 
			local pro = self.skills[skillName]
			if not pro then
				pro={
				}
				self.skills[skillName]=pro
			end
			pro.level=skillRank
			pro.max=skillMaxRank
			pro.active=true
		end
	end
end

function me:GetSkill(name)
	if self.SkillsLocalized and self.SkillsLocalized[name] then name=self.SkillsLocalized[name] end
	return self.skills[name] or self.skills[""]
end

function me:CacheRecipes()
	-- assume tradeskill window is open?
	local skill = GetTradeSkillLine()
	if skill=="UNKNOWN" then return end

	-- ah fuck this
	--[[
	-- clear filters
	if TradeSkillFrameAvailableFilterCheckButton:GetChecked() then
		TradeSkillOnlyShowMakeable(false)
		TradeSkillFrameAvailableFilterCheckButton:SetChecked(false)
	end
	--UIDropDownMenu_Initialize(TradeSkillInvSlotDropDown, TradeSkillInvSlotDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillInvSlotDropDown,1)
	SetTradeSkillInvSlotFilter(0,1,1)
	--UIDropDownMenu_Initialize(TradeSkillSubClassDropDown, TradeSkillSubClassDropDown_Initialize)
	UIDropDownMenu_SetSelectedID(TradeSkillSubClassDropDown,1)
	SetTradeSkillSubClassFilter(0,1,1)

	--expand headers
	local openedheaders={}
	for i=GetNumTradeSkills(),1,-1 do
		local name,ttype,_,expanded = GetTradeSkillInfo(i)
		if ttype=="header" and not expanded then
			ExpandTradeSkillSubClass(i)
			openedheaders[name]=true
		end
	end
	--]]

	if IsTradeSkillLinked() then return end
	-- scan!
	local recipes = self.db.char.RecipesKnown

	local scanned=0
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" then
			local link = GetTradeSkillRecipeLink(i)
			local spell = strmatch(link,"|H%w+:(%d+)")
			recipes[tonumber(spell)]=true
			scanned=scanned+1
		end
	end
	self:Debug(scanned.." "..skill.." recipes found")

	--[[
	--collapse headers
	for i=GetNumTradeSkills(),1,-1 do
		local name = GetTradeSkillInfo(i)
		if openedheaders[name] then CollapseTradeSkillSubClass(i) end
	end
	--]]
end

function me:PerformTradeSkill(id,count)
	if not count then count=1 end
	for i = 1,500 do
		local tradeName,tradeType = GetTradeSkillInfo(i)

		if tradeName and tradeType~="header" then
			local link = GetTradeSkillRecipeLink(i)
			local spell = tonumber(strmatch(link,"|H%w+:(%d+)"))
			if spell==id then
				DoTradeSkill(i,count)
			end
		end
	end
end