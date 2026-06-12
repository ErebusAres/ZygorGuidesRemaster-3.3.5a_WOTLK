local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L

local ACTION_BAR_MAX_BUTTONS = 5
local ACTION_BAR_DEFAULT_ICON = "Interface\\Icons\\INV_Misc_QuestionMark"
local ACTION_BAR_CUSTOM_ICONS = ZGV.DIR.."\\Skins\\actionbar"
local TALK_ICON = { file = ZGV.DIR.."\\Skin\\icons", coords = {12/16 + 0.006,13/16 - 0.006,0.08,0.92}, inset = 2, crop = 0.02 }
local KILL_ICON = { file = ACTION_BAR_CUSTOM_ICONS, coords = {1/8,2/8,0,1}, inset = 2, crop = 0.02 }
local SCRIPT_ICON = { file = ACTION_BAR_CUSTOM_ICONS, coords = {3/8,4/8,0,1}, inset = 2, crop = 0.02 }

local function wipeattrs(button)
	button:SetAttribute("type1", nil)
	button:SetAttribute("spell1", nil)
	button:SetAttribute("item1", nil)
	button:SetAttribute("macro", nil)
	button:SetAttribute("macrotext", nil)
	button:SetAttribute("macrotext1", nil)
	button.spellid = nil
	button.itemid = nil
	button.actionSpec = nil
end

local function safename(name)
	if not name then return nil end
	name = tostring(name):gsub("\"", "")
	name = name:gsub("\r", " "):gsub("\n", " ")
	name = name:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
	return name
end

local function getspellicon(goal)
	return select(3, GetSpellInfo(goal.castspellid or goal.castspell)) or "Interface\\Icons\\Spell_Nature_FaerieFire"
end

local function getitemicon(goal)
	local id = goal.useitemid or goal.useitem
	local info = { GetItemInfo(id) }
	-- debug prints removed
	return select(10, unpack(info)) or "Interface\\Icons\\INV_Misc_Bag_08"
end

local function getmacroicon(goal)
	if goal.macro then
		return select(2, GetMacroInfo(goal.macro))
	end
	return ACTION_BAR_DEFAULT_ICON
end

local function applyicon(texture, icon)
	if not texture then return end
	if type(icon) == "table" then
		texture:SetTexture(icon.file)
		if icon.coords then
			local l, r, t, b = unpack(icon.coords)
			l = math.max(0, math.min(1, l))
			r = math.max(0, math.min(1, r))
			t = math.max(0, math.min(1, t))
			b = math.max(0, math.min(1, b))
			if r <= l or b <= t then
				texture:SetTexCoord(0, 1, 0, 1)
			else
				texture:SetTexCoord(l, r, t, b)
			end
		else
			texture:SetTexCoord(0, 1, 0, 1)
		end
	else
		texture:SetTexture(icon or ACTION_BAR_DEFAULT_ICON)
		-- crop edges to avoid atlas/padding artifacts
		texture:SetTexCoord(0.12, 0.88, 0.12, 0.88)
	end
end

local function applybaricon(texture, icon)
	if not texture then return end
	local inset = (type(icon) == "table" and icon.inset) or 3
	if type(inset) ~= "number" then inset = 3 end
	inset = math.max(0, inset)
	texture:ClearAllPoints()
	texture:SetPoint("TOPLEFT", texture:GetParent(), "TOPLEFT", inset, -inset)
	texture:SetPoint("BOTTOMRIGHT", texture:GetParent(), "BOTTOMRIGHT", -inset, inset)
	if type(icon) == "table" then
		texture:SetTexture(icon.file)
		if icon.coords then
			local l, r, t, b = unpack(icon.coords)
			l = math.max(0, math.min(1, l))
			r = math.max(0, math.min(1, r))
			t = math.max(0, math.min(1, t))
			b = math.max(0, math.min(1, b))
			if r <= l or b <= t then
				l, r, t, b = 0.07, 0.93, 0.07, 0.93
			end
			local crop = icon.crop or 0.03
			crop = math.max(0, math.min(0.49, crop))
			local xinset = (r - l) * crop
			local yinset = (b - t) * crop
			texture:SetTexCoord(l + xinset, r - xinset, t + yinset, b - yinset)
		else
			texture:SetTexCoord(0.07, 0.93, 0.07, 0.93)
		end
	else
		texture:SetTexture(icon or ACTION_BAR_DEFAULT_ICON)
		texture:SetTexCoord(0.12, 0.88, 0.12, 0.88)
	end
end

function ZGV:GetGoalActionTargetName(goal)
	if not goal then return end
	if goal.npcid then
		local npc = self:GetTranslatedNPC(goal.npcid)
		if npc then return safename(npc) end
	end
	if goal.targetid then
		local target = self:GetTranslatedNPC(goal.targetid)
		if target then return safename(target) end
	end
	if goal.npc then return safename(goal.npc) end
	if goal.target then return safename(goal.target) end
end

function ZGV:ActionButtonCanMark()
	if InCombatLockdown() or not UnitExists("target") then return false end
	if GetNumRaidMembers() > 0 then
		return UnitIsPartyLeader("player") or UnitIsRaidOfficer("player")
	end
	if GetNumPartyMembers() > 0 then
		return UnitIsPartyLeader("player")
	end
	return false
end

function ZGV:ActionButtonMarkTarget(marker)
	if not self.db or not self.db.profile.actionbutton_enablemarkers then return end
	if not marker or not self:ActionButtonCanMark() then return end
	SetRaidTarget("target", marker)
end

local function buildtargetmacro(name, marker)
	if not name then return end
	local lines = {
		"/cleartarget [dead][noexists]",
		"/targetexact " .. name,
	}
	if marker then
		lines[#lines + 1] = ("/run if ZygorGuidesViewer then ZygorGuidesViewer:ActionButtonMarkTarget(%d) end"):format(marker)
	end
	return table.concat(lines, "\n")
end
function ZGV:GetGoalActionSpec(goal)
	if not goal then return end

	if (goal.useitemid or goal.useitem) then
		return {
			kind = "item",
			type = "item",
			item = goal.useitemid and ("item:" .. goal.useitemid) or goal.useitem,
			itemid = goal.useitemid,
			icon = getitemicon(goal),
			tooltip = "item",
			signature = "item:" .. tostring(goal.useitemid or goal.useitem),
		}
	end

	if goal.castspell and IsUsableSpell(goal.castspell) then
		return {
			kind = "spell",
			type = "spell",
			spell = goal.castspell,
			spellid = goal.castspellid,
			icon = getspellicon(goal),
			tooltip = "spell",
			signature = "spell:" .. tostring(goal.castspellid or goal.castspell),
		}
	end

	if goal.petaction then
		local num, name, subtext, tex = FindPetActionInfo(goal.petaction)
		if num then
			return {
				kind = "petaction",
				type = "macro",
				macrotext = "/click PetActionButton" .. num,
				icon = tex or ACTION_BAR_DEFAULT_ICON,
				petaction = num,
				tooltip = "petaction",
				tooltipName = name,
				tooltipSubtext = subtext,
				signature = "petaction:" .. tostring(num),
			}
		end
	end

	if goal.script then
		return {
			kind = "script",
			type = "macro",
			macrotext = "/run " .. goal.script,
			icon = SCRIPT_ICON,
			tooltip = "script",
			signature = "script:" .. tostring(goal.num),
		}
	end

	if goal.action == "talk" then
		local target = self:GetGoalActionTargetName(goal)
		local macrotext = buildtargetmacro(target, 4)
		if macrotext then
			return {
				kind = "talk",
				type = "macro",
				macrotext = macrotext,
				icon = TALK_ICON,
				target = target,
				tooltip = "talk",
				signature = "talk:" .. tostring(goal.npcid or target),
			}
		end
	end

	if goal.action == "kill" then
		local target = self:GetGoalActionTargetName(goal)
		local macrotext = buildtargetmacro(target, 8)
		if macrotext then
			return {
				kind = "kill",
				type = "macro",
				macrotext = macrotext,
				icon = KILL_ICON,
				target = target,
				tooltip = "kill",
				signature = "kill:" .. tostring(goal.targetid or target),
			}
		end
	end
end

function ZGV:ShowActionButtonTooltip(button)
	if not button then return end
	local spec = button.actionSpec
	if not spec then return end

	GameTooltip:SetOwner(button, "ANCHOR_PRESERVE")
	GameTooltip:ClearAllPoints()
	GameTooltip:SetPoint("BOTTOMRIGHT", button, "TOPLEFT")

	if spec.tooltip == "item" then
		local link = select(2, GetItemInfo(spec.itemid or button:GetAttribute("item1")))
		if link then
			GameTooltip:SetHyperlink(link)
			GameTooltip:Show()
			return
		end
	end

	if spec.tooltip == "spell" then
		GameTooltip:SetSpellByID(spec.spellid or button.spellid)
		GameTooltip:Show()
		return
	end

	GameTooltip:AddLine(spec.label or L["actionbutton_bar_title"])
	if spec.tooltip == "talk" and spec.target then
		GameTooltip:AddLine(L["actionbutton_tooltip_talk"]:format(spec.target), 1, 1, 1, true)
	elseif spec.tooltip == "kill" and spec.target then
		GameTooltip:AddLine(L["actionbutton_tooltip_kill"]:format(spec.target), 1, 1, 1, true)
	elseif spec.tooltip == "script" then
		GameTooltip:AddLine(L["actionbutton_tooltip_script"], 1, 1, 1, true)
	elseif spec.tooltip == "petaction" then
		GameTooltip:AddLine(L["actionbutton_tooltip_petaction"], 1, 1, 1, true)
		if spec.tooltipName then
			GameTooltip:AddLine(spec.tooltipName, 0.8, 0.8, 0.8)
		end
		if spec.tooltipSubtext then
			GameTooltip:AddLine(spec.tooltipSubtext, 0.7, 0.7, 0.7)
		end
	end
	GameTooltip:Show()
end

function ZGV:ApplyInlineActionSpec(spec, action, petaction, actname)
	local icon = _G[actname .. "ActionIcon"]
	local peticon = _G[actname .. "PetActionIcon"]

	wipeattrs(action)
	action:Hide()
	petaction:Hide()

	if not spec then return false end

	if spec.kind == "petaction" then
		wipeattrs(petaction)
		petaction:SetID(spec.petaction)
		petaction.tooltipName = spec.tooltipName
		petaction.tooltipSubtext = spec.tooltipSubtext
		petaction.actionSpec = spec
		if peticon then
			local _, _, tex, isToken = GetPetActionInfo(spec.petaction)
			peticon:ClearAllPoints()
			peticon:SetAllPoints(petaction)
			if tex then
				peticon:SetTexture(isToken and _G[tex] or tex)
			else
				peticon:SetTexture(spec.icon or ACTION_BAR_DEFAULT_ICON)
			end
			peticon:SetTexCoord(0, 1, 0, 1)
		end
		return "petaction"
	end

	action:SetAttribute("type1", spec.type)
	if spec.type == "spell" then
		action:SetAttribute("spell1", spec.spell)
		action.spellid = spec.spellid or spec.spell
	elseif spec.type == "item" then
		action:SetAttribute("item1", spec.item)
		action.itemid = spec.itemid
	elseif spec.type == "macro" then
		if spec.macrotext then action:SetAttribute("macrotext1", spec.macrotext) end
		if spec.macro then action:SetAttribute("macro", spec.macro) end
	end

	action.actionSpec = spec
	if icon then
				-- debug prints removed
		applyicon(icon, spec.icon or ACTION_BAR_DEFAULT_ICON)
	end
	return "action"
end

function ZGV:GetCurrentStepActionSpecs()
	local specs = {}
	local seen = {}
	local stepframe = self.CurrentStepframeNum and self.stepframes and self.stepframes[self.CurrentStepframeNum]

	if not self.CurrentStep then return specs end

	if stepframe and stepframe.lines then
		for i = 1, 20 do
			local line = stepframe.lines[i]
			local goal = line and line.goal
			local spec = goal and self:GetGoalActionSpec(goal)
			if spec then
				spec.goal = goal
				spec.label = goal:GetText() or goal.action or spec.kind
				if spec.kind == "talk" or spec.kind == "kill" then
					if not seen[spec.signature] then
						seen[spec.signature] = true
						specs[#specs + 1] = spec
					end
				else
					specs[#specs + 1] = spec
				end
				if #specs >= ACTION_BAR_MAX_BUTTONS then break end
			end
		end
	end

	return specs
end

function ZGV:ActionButtons_SaveAnchor()
	local bar = self.ActionButtonBar
	if not bar or not self.db or not self.db.profile then return end
	local point, _, relPoint, x, y = bar:GetPoint(1)
	self.db.profile.actionbuttonbar_anchor = {
		point = point,
		relPoint = relPoint,
		x = x,
		y = y,
	}
end

function ZGV:ActionButtons_ApplyAnchor()
	local bar = self.ActionButtonBar
	if not bar then return end
	local anchor = self.db.profile.actionbuttonbar_anchor or {}
	bar:ClearAllPoints()
	bar:SetPoint(anchor.point or "CENTER", UIParent, anchor.relPoint or "CENTER", anchor.x or 0, anchor.y or -180)
end

function ZGV:ActionButtons_Layout()
	local bar = self.ActionButtonBar
	if not bar then return end

	local profile = self.db.profile
	local size = profile.actionbuttonbar_size or 36
	local spacing = profile.actionbuttonbar_spacing or 6
	local shown = 0

	for i, button in ipairs(bar.buttons) do
		button:SetSize(size, size)
		button:ClearAllPoints()
		if i == 1 then
			button:SetPoint("TOPLEFT", bar, "TOPLEFT", 8, -24)
		else
			button:SetPoint("LEFT", bar.buttons[i - 1], "RIGHT", spacing, 0)
		end
		if button:IsShown() then shown = shown + 1 end
	end

	if shown == 0 then shown = 1 end
	bar:SetScale(profile.actionbuttonbar_scale or 1)
	bar:SetWidth(16 + (shown * size) + ((shown - 1) * spacing))
	bar:SetHeight(size + 32)
end

function ZGV:ActionButtons_UpdateDragState()
	local bar = self.ActionButtonBar
	if not bar then return end
	local locked = self.db.profile.actionbuttonbar_locked
	bar:EnableMouse(not locked)
	bar.title:SetText(locked and L["actionbutton_bar_title_locked"] or L["actionbutton_bar_title"])
	bar.title:Show()
end

function ZGV:ActionButtons_CreateBar()
	if self.ActionButtonBar then return self.ActionButtonBar end

	local bar = CreateFrame("Frame", "ZygorGuidesViewerActionButtonBar", UIParent)
	bar:SetMovable(true)
	bar:SetClampedToScreen(true)
	bar:SetFrameStrata("MEDIUM")
	bar:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 },
	})
	bar:SetBackdropColor(0, 0, 0, 0.75)

	bar.title = bar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	bar.title:SetPoint("TOP", bar, "TOP", 0, -8)

	bar:SetScript("OnDragStart", function(frame)
		if not ZGV.db.profile.actionbuttonbar_locked then
			frame:StartMoving()
		end
	end)
	bar:SetScript("OnDragStop", function(frame)
		frame:StopMovingOrSizing()
		ZGV:ActionButtons_SaveAnchor()
	end)
	bar:RegisterForDrag("LeftButton")

	bar.buttons = {}

	for i = 1, ACTION_BAR_MAX_BUTTONS do
		local button = CreateFrame("CheckButton", "ZygorGuidesViewerActionButton" .. i, bar, "SecureActionButtonTemplate")
		button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
		button.icon = button:CreateTexture(nil, "ARTWORK")
		button.icon:SetAllPoints(button)
		button.border = button:CreateTexture(nil, "OVERLAY")
		button.border:SetTexture("Interface\\Buttons\\UI-Quickslot2")
		button.border:SetAllPoints(button)
		button.hotkey = button:CreateFontString(nil, "OVERLAY", "NumberFontNormalSmall")
		button.hotkey:SetPoint("TOPRIGHT", button, "TOPRIGHT", -2, -2)
		button.hotkey:SetText(i)
		button.cooldown = CreateFrame("Cooldown", nil, button, "CooldownFrameTemplate")
		button.cooldown:SetAllPoints(button)
		button:SetScript("OnEnter", function(self) ZGV:ShowActionButtonTooltip(self) end)
		button:SetScript("OnLeave", function() GameTooltip:Hide() end)
		bar.buttons[i] = button
	end

	self.ActionButtonBar = bar
	self:ActionButtons_ApplyAnchor()
	self:ActionButtons_UpdateDragState()
	return bar
end

function ZGV:ActionButtons_ApplyButtonSpec(button, spec)
	wipeattrs(button)
	button.cooldown:Hide()

	if not spec then
		button:Hide()
		return
	end

	button:SetAttribute("type1", spec.type)
	if spec.type == "spell" then
		button:SetAttribute("spell1", spec.spell)
		button.spellid = spec.spellid or spec.spell
	elseif spec.type == "item" then
		button:SetAttribute("item1", spec.item)
		button.itemid = spec.itemid
	elseif spec.type == "macro" then
		if spec.macrotext then button:SetAttribute("macrotext1", spec.macrotext) end
		if spec.macro then button:SetAttribute("macro", spec.macro) end
	end

	button.actionSpec = spec
	-- debug prints removed
	applybaricon(button.icon, spec.icon or ACTION_BAR_DEFAULT_ICON)
	button:Show()
end

function ZGV:ActionButtons_UpdateCooldowns()
	local bar = self.ActionButtonBar
	if not bar then return end

	for _, button in ipairs(bar.buttons) do
		local spec = button.actionSpec
		if spec and spec.kind == "spell" then
			local start, dur, en = GetSpellCooldown(spec.spellid or spec.spell)
			CooldownFrame_SetTimer(button.cooldown, start, dur, en)
			if start and start > 0 then button.cooldown:Show() else button.cooldown:Hide() end
		elseif spec and spec.kind == "item" then
			local start, dur, en = GetItemCooldown(spec.itemid or spec.item)
			CooldownFrame_SetTimer(button.cooldown, start, dur, en)
			if start and start > 0 then button.cooldown:Show() else button.cooldown:Hide() end
		else
			button.cooldown:Hide()
		end
	end
end

function ZGV:ActionButtons_Refresh(force)
	if not self.db or not self.db.profile.actionbuttonbar_enabled then
		if self.ActionButtonBar then self.ActionButtonBar:Hide() end
		return
	end

	if InCombatLockdown() and not force then
		self.actionButtonsRefreshPending = true
		return
	end

	self.actionButtonsRefreshPending = nil

	local bar = self:ActionButtons_CreateBar()
	local specs = self:GetCurrentStepActionSpecs()

	for i = 1, ACTION_BAR_MAX_BUTTONS do
		self:ActionButtons_ApplyButtonSpec(bar.buttons[i], specs[i])
	end

	local shouldShow = (not self.db.profile.actionbuttonbar_onlywhenneeded) or (#specs > 0)
	self:ActionButtons_Layout()
	self:ActionButtons_UpdateDragState()
	if shouldShow then
		bar:Show()
		self:ActionButtons_UpdateCooldowns()
	else
		bar:Hide()
	end
end

function ZGV:ActionButtons_ClickBinding(index)
	local bar = self.ActionButtonBar
	local button = bar and bar.buttons and bar.buttons[index]
	if button and button:IsVisible() then
		button:Click()
	end
end

function ZGV:ActionButtons_ApplyProfile()
	if not self.db or not self.db.profile then return end
	self:ActionButtons_CreateBar()
	self:ActionButtons_ApplyAnchor()
	self:ActionButtons_UpdateDragState()
	self:ActionButtons_Refresh(true)
end

BINDING_NAME_ZYGORGUIDES_ACTIONBUTTON1 = L["binding_actionbutton1"]
BINDING_NAME_ZYGORGUIDES_ACTIONBUTTON2 = L["binding_actionbutton2"]
BINDING_NAME_ZYGORGUIDES_ACTIONBUTTON3 = L["binding_actionbutton3"]
BINDING_NAME_ZYGORGUIDES_ACTIONBUTTON4 = L["binding_actionbutton4"]
BINDING_NAME_ZYGORGUIDES_ACTIONBUTTON5 = L["binding_actionbutton5"]
