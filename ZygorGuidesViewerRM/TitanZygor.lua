local ZGV=ZGV
local TITAN_ZYGOR_ID = "Zygor" -- MUST match the button name; TitanPanel{*}Button
local updateTable = {TITAN_ZYGOR_ID, TITAN_PANEL_UPDATE_BUTTON}

local L = LibStub("AceLocale-3.0"):GetLocale("Titan", true)
local AceTimer = LibStub("AceTimer-3.0")
local BagTimer

local TitanPanelZygorButton_ZYGORGV_STEP_CHANGED

function TitanPanelZygorButton_OnLoad(self)
	if not TITAN_VERSION then return end
	self.registry = {
		id = TITAN_ZYGOR_ID,
		--          builtIn = 1,
		category = "General",
		version = ZGV.version,
		menuText = "Zygor Guides",
		buttonTextFunction = "TitanPanelZygorButton_GetButtonText",
		tooltipTitle = "Zygor Guides",
		tooltipTextFunction = "TitanPanelZygorButton_GetTooltipText", 
		icon = ZGV.DIR .. "\\Skins\\zglogo",
		iconWidth = 16,
		iconCoords = {0,1,0,0.25},
		controlVariables = {
			ShowIcon = true,
			ShowLabelText = true,
			ShowRegularText = false,
			ShowColoredText = true,
			DisplayOnRightSide = false
		},
		savedVariables = {
			ShowUsedSlots = 1,
			ShowDetailedInfo = false,
			CountAmmoPouchSlots = false,
			CountShardBagSlots = false,
			CountProfBagSlots = false,
			ShowIcon = 1,
			ShowLabelText = 1,
			ShowColoredText = 1,               
		}
	}

	self:RegisterEvent("PLAYER_ENTERING_WORLD");
	ZGV:AddMessage("ZYGORGV_STEP_CHANGED",TitanPanelZygorButton_ZYGORGV_STEP_CHANGED)
	ZGV:AddMessage("ZYGORGV_LOADING",TitanPanelZygorButton_ZYGORGV_LOADING)
end

-- **************************************************************************
-- NAME : TitanPanelZygorButton_OnEvent()
-- DESC : Parse events registered to plugin and act on them
-- **************************************************************************
function TitanPanelZygorButton_ZYGORGV_STEP_CHANGED(num)
	TitanPanelZygorButton:SetScript("OnUpdate", TitanPanelZygorButton_OnUpdate)
end

function TitanPanelZygorButton_ZYGORGV_LOADING(progress)
	TitanPanelZygorButton:SetScript("OnUpdate", TitanPanelZygorButton_OnUpdate)
end

local coordsset
function TitanPanelZygorButton_OnEvent(self, event, ...)
	if not coordsset then  TitanPanelButton_SetButtonIcon(TITAN_ZYGOR_ID, self.registry.iconCoords)  coordsset=true  end
end

function TitanPanelZygorButton_OnUpdate(self)
	self:SetScript("OnUpdate", nil)
	TitanPanelPluginHandle_OnUpdate(updateTable)
end

function TitanPanelZygorButton_OnClick(self, button)
	if (button == "LeftButton") then
		ZGV:ToggleFrame()
	end
end


-- called by Titan
function TitanPanelZygorButton_GetButtonText(id)
	--local button, id = TitanUtils_GetButton(id, true)
	if ZGV.loading then return "Loading..." end
	return "Step |cffffffff"..(ZGV.CurrentGuide and ZGV.CurrentStepNum or "?")
end

-- called by Titan
function TitanPanelZygorButton_GetTooltipText()
	local returnstring = "";

	if ZGV.CurrentGuide then
		returnstring = ZGV.CurrentGuide.title_short..", step "..ZGV.CurrentStepNum.."\n"

		for i,goal in ipairs(ZGV.CurrentStep.goals) do
			returnstring = returnstring .. "\n" .. goal:GetText(1)
		end

	else
		returnstring = "No guide"
	end

	return returnstring

	--TitanUtils_GetNormalText(L["TITAN_BAG_USED_SLOTS"])
	--TitanUtils_GetThresholdColor
	--TitanUtils_GetGreenText
	--if TitanGetVar(TITAN_ZYGOR_ID, "ShowDetailedInfo") then
end

-- **************************************************************************
-- NAME : TitanPanelRightClickMenu_PrepareZygorMenu()
-- DESC : Display rightclick menu options
-- **************************************************************************
function TitanPanelRightClickMenu_PrepareZygorMenu()
	local info
		 
		 -- level 2
	--[[ -- removed for now
	if _G["UIDROPDOWNMENU_MENU_LEVEL"] == 2 then
		if _G["UIDROPDOWNMENU_MENU_VALUE"] == "Options" then
			TitanPanelRightClickMenu_AddTitle(L["TITAN_PANEL_MENU_OPTIONS"], _G["UIDROPDOWNMENU_MENU_LEVEL"])
			info = {};
			info.text = L["TITAN_BAG_MENU_SHOW_USED_SLOTS"];
			info.func = TitanPanelZygorButton_ShowUsedSlots;
			info.checked = TitanGetVar(TITAN_BAG_ID, "ShowUsedSlots");
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);

			info = {};
			info.text = L["TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS"];
			info.func = TitanPanelZygorButton_ShowAvailableSlots;
			info.checked = TitanUtils_Toggle(TitanGetVar(TITAN_BAG_ID, "ShowUsedSlots"));
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);
		  
			info = {};
			info.text = L["TITAN_BAG_MENU_SHOW_DETAILED"];
			info.func = TitanPanelZygorButton_ShowDetailedInfo;
			info.checked = TitanGetVar(TITAN_BAG_ID, "ShowDetailedInfo");
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);
		end
		if _G["UIDROPDOWNMENU_MENU_VALUE"] == "IgnoreCont" then
			TitanPanelRightClickMenu_AddTitle(L["TITAN_BAG_MENU_IGNORE_SLOTS"], _G["UIDROPDOWNMENU_MENU_LEVEL"])
			info = {};
			info.text = L["TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS"];
			info.func = TitanPanelZygorButton_ToggleIgnoreAmmoPouchSlots;
			info.checked = TitanUtils_Toggle(TitanGetVar(TITAN_BAG_ID, "CountAmmoPouchSlots"));
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);

			info = {};
			info.text = L["TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS"];
			info.func = TitanPanelZygorButton_ToggleIgnoreShardBagSlots;
			info.checked = TitanUtils_Toggle(TitanGetVar(TITAN_BAG_ID, "CountShardBagSlots"));
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);

			info = {};
			info.text = L["TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS"];
			info.func = TitanPanelZygorButton_ToggleIgnoreProfBagSlots;
			info.checked = TitanUtils_Toggle(TitanGetVar(TITAN_BAG_ID, "CountProfBagSlots"));
			UIDropDownMenu_AddButton(info, _G["UIDROPDOWNMENU_MENU_LEVEL"]);
		end
		return
	end
	--]]
	
	-- level 1
	TitanPanelRightClickMenu_AddTitle(TitanPlugins[TITAN_ZYGOR_ID].menuText);

	--[[
	info = {};
	info.text = L["TITAN_PANEL_MENU_OPTIONS"];
	info.value = "Options"
	info.hasArrow = 1;
	UIDropDownMenu_AddButton(info);

	info = {};
	info.text = L["TITAN_BAG_MENU_IGNORE_SLOTS"];
	info.value = "IgnoreCont"
	info.hasArrow = 1;
	UIDropDownMenu_AddButton(info);
	--]]

	TitanPanelRightClickMenu_AddSpacer();     
	TitanPanelRightClickMenu_AddToggleIcon(TITAN_ZYGOR_ID);
	TitanPanelRightClickMenu_AddToggleLabelText(TITAN_ZYGOR_ID);
	--TitanPanelRightClickMenu_AddToggleColoredText(TITAN_ZYGOR_ID);
	TitanPanelRightClickMenu_AddSpacer();     
	TitanPanelRightClickMenu_AddCommand(L["TITAN_PANEL_MENU_HIDE"], TITAN_ZYGOR_ID, TITAN_PANEL_MENU_FUNC_HIDE);
end



function TitanPanelZygorButton_ShowDetailedInfo()
	TitanToggleVar(TITAN_BAG_ID, "ShowDetailedInfo");
end













--
do return end

local ZGVname,ZGV = ...
local L = ZGV.L

local me = ZGV:NewModule('DataSource', 'AceEvent-3.0', 'AceBucket-3.0')
me.uiName = L['opt_ldb']
me.uiDesc = L['opt_ldb_desc']
me.cannotDisable = true

local dataobj = {
	type = 'data source',
	label = ZGVName,
	text = ZGVName,
	icon = [[Interface\Buttons\Button-Backpack-Up]],
	OnClick = function(_, button)
		if button == "RightButton" then
			ZGV:OpenOptions()
		else
			ZGV:ToggleFrame()
		end
	end,
}

function me:OnInitialize()
	self.db = me.db:RegisterNamespace(self.moduleName, {
		profile = {
		},
	})
end

local created
function me:OnEnable()
	if not created then
		LibStub('LibDataBroker-1.1'):NewDataObject(ZGVname, dataobj)
		created = true
	end
	self:Update()
end

local function BuildSpaceString(bags)
	wipe(size)
	wipe(free)
	for bag in pairs(bags) do
		local bagSize = GetContainerNumSlots(bag)
		if bagSize and bagSize > 0 then
			local bagFree, bagFamily = GetContainerNumFreeSlots(bag)
			if mod.db.profile.mergeBags then bagFamily = 0 end
			size[bagFamily] = (size[bagFamily] or 0) + bagSize
			free[bagFamily] = (free[bagFamily] or 0) + bagFree
		end
	end
	wipe(data)
	local spaceformat = FORMATS[mod.db.profile.format]
	local showIcons, showTags = mod.db.profile.showIcons, mod.db.profile.showTags
	local numIcons = 0
	for i, family in ipairs(FAMILY_ORDER) do
		if size[family] then
			local tag, icon = ZGV:GetFamilyTag(family)
			local text = spaceformat:format(free[family], size[family], size[family] - free[family])
			if showIcons and icon then
				numIcons = numIcons + 1 -- fix a bug with fontstring embedding several textures
				text = string.format("%s|T%s:0:0:0:%d:64:64:4:60:4:60|t", text, icon, -numIcons)
			elseif (showIcons or showTags) and tag then
				text = strjoin(':', tag, text)
			end
			tinsert(data, text)
		end
	end
	return table.concat(data, " ")
end

function me:Update(event)
	local bags = 'booyaa' --BuildSpaceString(addon.BAG_IDS.BAGS)
	if self.atBank and self.db.profile.showBank then
		dataobj.text = "blaalalala" --string.format("%s |cff7777ff%s|r", bags, BuildSpaceString(ZGV.BAG_IDS.BANK))
	else
		dataobj.text = bags
	end
end

function me:GetOptions()
	local handler = ZGV:GetOptionHandler(self)
	local oldSet = handler.Set
	handler.Set = function(...)
		oldSet(...)
		self:Update()
	end
	return {
		format = {
			name = L['Bag usage format'],
			desc = L['Select how bag usage should be formatted in the plugin.'],
			type = 'select',
			order = 10,
			values = {
				['free/total'] = L['Free space / total space'],
				['inUse/total'] = L['Space in use / total space'],
				['free'] = L['Free space'],
				['inUse'] = L['Space in use']
			}
		},
		showBank = {
			name = L['Show bank usage'],
			desc = L['Check this to show space at your bank in the plugin.'],
			type = 'toggle',
			order = 20,
		},
		mergeBags = {
			name = L['Merge bag types'],
			desc = L['Check this to display only one value counting all equipped bags, ignoring their type.'],
			type = 'toggle',
			order = 30,
		},
		showIcons = {
			name = L['Show bag type icons'],
			desc = L['Check this to display an icon after usage of each type of bags.'],
			type = 'toggle',
			order = 40,
			disabled = function(info) return info.handler:IsDisabled(info) or self.db.profile.mergeBags end,
		},
		showTags = {
			name = L['Show bag type tags'],
			desc = L['Check this to display an textual tag before usage of each type of bags.'],
			type = 'toggle',
			order = 50,
			disabled = function(info) return info.handler:IsDisabled(info) or self.db.profile.mergeBags end,
		},
	}, addon:GetOptionHandler(self)
end

do return end

