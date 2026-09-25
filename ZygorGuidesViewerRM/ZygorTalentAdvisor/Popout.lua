local popout = {}
local ZTA = ZygorTalentAdvisor
local L = ZTA.L

local function who(pet)
	return pet and 'pet' or 'player'
end

local function BuildDropdownValues(pet)
	local values = {}
	local _, playerclass = UnitClass("player")
	for i,build in ipairs(ZTA.registeredBuilds or {}) do
		if pet then
			if build.pettype then
				values[#values+1] = { index = i, title = build.title }
			end
		else
			if build.class and build.class == playerclass and not build.pettype then
				values[#values+1] = { index = i, title = build.title }
			end
		end
	end
	return values
end

local function GetSavedBuildTitle(pet)
	local db = ZTA and ZTA.db and ZTA.db.char
	if not db then return nil end
	if pet then return db.currentPetBuildTitle end
	return db.currentBuildTitle
end

local function GetSelectedBuildIndexAndTitle(pet)
	local whoKey = who(pet)
	local selected = ZTA.currentBuildNum and ZTA.currentBuildNum[whoKey]
	if selected and ZTA.registeredBuilds and ZTA.registeredBuilds[selected] then
		return selected, ZTA.registeredBuilds[selected].title
	end

	local savedIndex
	local db = ZTA and ZTA.db and ZTA.db.char
	if db then
		savedIndex = tonumber(pet and db.currentPetBuildIndex or db.currentBuildIndex)
	end
	if savedIndex and savedIndex > 0 and ZTA.registeredBuilds and ZTA.registeredBuilds[savedIndex] then
		local build = ZTA.registeredBuilds[savedIndex]
		local _, playerclass = UnitClass("player")
		if pet then
			if build.pettype then
				return savedIndex, build.title
			end
		else
			if not build.pettype and (not build.class or build.class == playerclass) then
				return savedIndex, build.title
			end
		end
	end

	local savedTitle = GetSavedBuildTitle(pet)
	if not savedTitle or savedTitle == "" then return 0, nil end

	local _, playerclass = UnitClass("player")
	for i, build in ipairs(ZTA.registeredBuilds or {}) do
		if build and build.title == savedTitle then
			if pet then
				if build.pettype then return i, build.title end
			else
				if not build.pettype and (not build.class or build.class == playerclass) then
					return i, build.title
				end
			end
		end
	end
	return 0, nil
end

local function NormalizeNotesText(notes)
	if type(notes) ~= "string" then return nil end
	notes = notes:gsub("^%s+", ""):gsub("%s+$", "")
	if notes == "" then return nil end
	return notes
end

local function GetSelectedBuildRecord(pet)
	local selected = select(1, GetSelectedBuildIndexAndTitle(pet))
	if not selected or selected <= 0 then return nil end
	return ZTA.registeredBuilds and ZTA.registeredBuilds[selected] or nil
end

function ZygorTalentAdvisorPopout_BuildDropdownInit(frame, level)
	if level ~= 1 then return end
	local pop = ZygorTalentAdvisorPopout
	local pet = pop and pop.pet
	local selected = select(1, GetSelectedBuildIndexAndTitle(pet)) or 0

	local info = UIDropDownMenu_CreateInfo()
	info.text = ZTA.L['opt_build_none'] or "None"
	info.value = 0
	info.checked = (selected == nil or selected == 0)
	info.func = function()
		ZTA.db.char = ZTA.db.char or {}
		if pet then
			ZTA.db.char.currentPetBuildNone = true
		else
			ZTA.db.char.currentBuildNone = true
		end
		ZTA:SetCurrentBuild(0,pet)
		ZygorTalentAdvisorPopout_Update()
	end
	UIDropDownMenu_AddButton(info, level)

	for _,entry in ipairs(BuildDropdownValues(pet)) do
		wipe(info)
		info.text = entry.title
		info.value = entry.index
		info.checked = (selected == entry.index)
		info.func = function()
			ZTA.db.char = ZTA.db.char or {}
			if pet then
				ZTA.db.char.currentPetBuildNone = false
			else
				ZTA.db.char.currentBuildNone = false
			end
			ZTA:SetCurrentBuild(entry.index,pet)
			ZygorTalentAdvisorPopout_Update()
		end
		UIDropDownMenu_AddButton(info, level)
	end
end

function ZygorTalentAdvisorPopout_OnShow(self)
	if not ZTA then return end
	if ZTA.IsAdvisorEnabled and not ZTA:IsAdvisorEnabled() then
		self:Hide()
		return
	end

	TalentFrame_LoadUI()
	if ZTA.db.profile.windowdocked then
		if not PlayerTalentFrame:IsShown() then ToggleTalentFrame() end
	end

	ZygorTalentAdvisorPopout_Reparent()
	ZygorTalentAdvisorPopout_UpdateDocking()
	ZygorTalentAdvisorPopout_Update()
	if PlayerTalentFrame.advisorbutton then
		PlayerTalentFrame.advisorbutton:SetButtonState("PUSHED",1)
	end
	PlaySound("igCharacterInfoTab");
end

function ZygorTalentAdvisorPopout_OnHide(self)
	ZygorTalentAdvisorPopout_UpdateDocking()
	if PlayerTalentFrame.advisorbutton then
		PlayerTalentFrame.advisorbutton:SetButtonState("NORMAL")
	end
	PlaySound("igCharacterInfoTab");
end

function ZygorTalentAdvisorPopout_OnUpdate(self)
	--if self.needsResizing>0 then self.needsResizing=self.needsResizing-1 end

	if self.needsResizing then
		local base = self.baseHeightOffset or 145
		if self.scroll.child.group1:GetTop() then 
			local height = self.scroll.child.group1:GetTop() - self.scroll.child.talents3:GetBottom()
			local maxheight=360
			if PlayerTalentFrame and PlayerTalentFrame:GetHeight() then
				maxheight = math.max(180, math.min(maxheight, PlayerTalentFrame:GetHeight() - base - 20))
			end
			local minheight=180
			if height>maxheight then height=maxheight end
			if height<minheight then height=minheight end
			self.scroll.child:SetHeight(height)
			self:SetHeight(height + base)
		else
			-- Fallback when scroll content hasn't measured yet.
			self:SetHeight(180 + base)
		end


		self.needsResizing=nil
		ZygorTalentAdvisorPopout_UpdateDocking()
	end

	-- Live docking detection during drag
	if self.moving then
		ZTA.db.profile.windowdocked = ZygorTalentAdvisorPopout_InDockingRange()
		ZygorTalentAdvisorPopout_UpdateDocking()
	end
end

function ZygorTalentAdvisorPopout_OnLoad(self)
	self:RegisterForDrag("LeftButton")
	if self.buildSelect then
		UIDropDownMenu_SetWidth(self.buildSelect, 190)
		UIDropDownMenu_JustifyText(self.buildSelect, "LEFT")
		UIDropDownMenu_Initialize(self.buildSelect, ZygorTalentAdvisorPopout_BuildDropdownInit)
	end
	--[[
	ZygorTalentAdvisorPopoutScroll:SetScript("OnScrollRangeChanged",function(self,xrange,yrange)
		ScrollFrame_OnScrollRangeChanged(self, xrange, yrange)
		print(xrange)
		print(yrange)
		local scrollbar = _G[self:GetName().."ScrollBar"];
		local min,max = scrollbar:GetMinMaxValues()
		if max>0 then
			scrollbar:Show()
		else
			scrollbar:Hide()
		end
		print("scrollrangechanged")
	end)
	--]]
end

function ZygorTalentAdvisorPopout_InDockingRange()
	local pop = ZygorTalentAdvisorPopout
	return PlayerTalentFrame
		and PlayerTalentFrame:IsShown()
		and pop:IsShown()
		and pop:GetLeft()
		and abs(pop:GetLeft() - PlayerTalentFrame:GetRight() + 36) < 20
		and pop:GetTop() - PlayerTalentFrame:GetTop() < 20
		and pop:GetTop() - PlayerTalentFrame:GetTop() > -200
end

function ZygorTalentAdvisorPopout_OnDragStart(self)
	ZTA.db.profile.windowdocked = false
	ZygorTalentAdvisorPopout_UpdateDocking(false)
	self:ClearAllPoints()
	self:StartMoving()
	self.moving = true
end

function ZygorTalentAdvisorPopout_OnDragStop(self)
	self:StopMovingOrSizing()
	self.moving = nil
	local docked = ZygorTalentAdvisorPopout_InDockingRange()
	ZTA.db.profile.windowdocked = docked
	ZygorTalentAdvisorPopout_Reparent()
	ZygorTalentAdvisorPopout_UpdateDocking(docked)
end

function ZygorTalentAdvisorPopout_Update()
	ZygorTalentAdvisor:Debug("ZygorTalentAdvisorPopout_Update")
	local self=ZygorTalentAdvisorPopout
	if PlayerTalentFrame then
		self.pet = PlayerTalentFrame.pet
	end
	local pet = self.pet

	if not self:IsShown() then
		ZygorTalentAdvisor:Debug("ZygorTalentAdvisorPopout hidden, not updating")
		return
	end
	local who=who(pet)
	local s = ""

	self.buildLabel:SetText(L['window_header_buildlabel'] or "Build:")
	if self.buildSelectLabel then
		self.buildSelectLabel:SetText(pet and (L['opt_petbuild'] or "Select a build:") or (L['opt_build'] or "Select a build:"))
	end
	local selectedBuild = GetSelectedBuildRecord(pet)
	local notes = NormalizeNotesText(selectedBuild and selectedBuild.notes)
	local hasNotes = notes and true or false
	if self.notesLabel then
		self.notesLabel:SetText(hasNotes and ZGV_T("Notes:") or "")
		if hasNotes then self.notesLabel:Show() else self.notesLabel:Hide() end
	end
	if self.notes then
		self.notes:SetText(notes or "")
		if hasNotes then self.notes:Show() else self.notes:Hide() end
	end

	if self.suggestionLabel and self.scroll then
		local suggestionTop = hasNotes and -132 or -106
		local scrollTop = hasNotes and -150 or -124
		self.suggestionLabel:ClearAllPoints()
		self.suggestionLabel:SetPoint("TOPLEFT", self, "TOPLEFT", 10, suggestionTop)
		self.suggestionLabel:SetPoint("TOPRIGHT", self, "TOPRIGHT", -10, suggestionTop)

		self.scroll:ClearAllPoints()
		self.scroll:SetPoint("TOPLEFT", self, "TOPLEFT", 15, scrollTop)
		self.scroll:SetPoint("BOTTOMRIGHT", self, "BOTTOMRIGHT", -35, 70)
	end
	self.baseHeightOffset = hasNotes and 145 or 119

	if self.buildSelect then
		local selectedIndex, selectedTitle = GetSelectedBuildIndexAndTitle(pet)
		UIDropDownMenu_Initialize(self.buildSelect, ZygorTalentAdvisorPopout_BuildDropdownInit)
		UIDropDownMenu_SetSelectedValue(self.buildSelect, selectedIndex or 0)
		UIDropDownMenu_SetText(self.buildSelect, selectedTitle or (L['opt_build_none'] or "None"))
	end

	if ZTA.status[who].code=="GREEN" then
		self.warning:Show()
		self.warning:GetRegions():SetVertexColor(0,1,1)
	elseif ZTA.status[who].code=="YELLOW" then
		self.warning:Show()
		self.warning:GetRegions():SetVertexColor(0.8,1,1)
	elseif ZTA.status[who].code=="ORANGE" then
		self.warning:Show()
		self.warning:GetRegions():SetVertexColor(1,0.6,0)
	elseif ZTA.status[who].code=="RED" then
		self.warning:Show()
		self.warning:GetRegions():SetVertexColor(1,0,0)
	elseif ZTA.status[who].code=="BLACK" then
		self.warning:Show()
		self.warning:GetRegions():SetVertexColor(1,0,0)
	end

	local tabn = 1
	if not ZTA.currentBuild or not ZTA.currentBuild[who] then
		s=L['error_bulklearn_nobuild']
		local selectedIndex, selectedTitle = GetSelectedBuildIndexAndTitle(pet)
		if selectedIndex and selectedIndex > 0 and selectedTitle then
			self.build:SetText(L['window_header_build'] and L['window_header_build']:format(selectedTitle) or selectedTitle)
		else
			self.build:SetText(L['window_header_buildnone'] or "none")
		end
		if ZTA.db and ZTA.db.char and ((pet and ZTA.db.char.currentPetBuildNone) or (not pet and ZTA.db.char.currentBuildNone)) then
			self.suggestionLabel:SetText(ZGV_T("Build is set to None (advisor disabled)."))
		else
			self.suggestionLabel:SetText(L['window_suggestion_nobuild'])
		end
		self.scroll:Hide()
		self.preview:Hide()
		self.accept:Hide()
		--if ZTA.status[who].code then self.warning:Show() else self.warning:Hide() end
	else
		self.build:SetText(L['window_header_build'] and L['window_header_build']:format(ZTA.currentBuildTitle[who]) or (ZTA.currentBuildTitle[who] or ""))
		self.suggestionLabel:SetText(ZTA:GetStatusMessage(pet))

		if not ZTA.suggestion[who] or #ZTA.suggestion[who]==0 then
			if ZTA.status[who].code=="BLACK" then
				self.suggestionLabel:SetText(ZTA.status[who].msg)
			elseif ZTA.status[who].code=="RED" then
				self.suggestionLabel:SetText(L['window_suggestion_none'])
			elseif GetUnspentTalentPoints(false,pet)<=0 then
				self.suggestionLabel:SetText(ZGV_T("No unspent talent points."))
			else
				self.suggestionLabel:SetText(L['window_suggestion_nopoints'])
			end
			self.scroll:Hide()
			self.preview:Hide()
			self.accept:Hide()
		else
			self.suggestionLabel:SetText(L['window_suggestion_normal'])

			local sugformatted = ZygorTalentAdvisor:GetSuggestionFormatted(pet)
			
			self.sugheight = 0
			for tab,talents in pairs(sugformatted) do
				self.scroll.child['group'..tabn]:SetText(tab)
				s = ""
				for n,levels in ipairs(talents) do
					talent = "|T"..levels.tex..":0:0:0:0|t "..levels.name
					if #s>0 then s=s.."\n" end
					if levels[1]==0 then
						s=s..talent
					else
						s=s..talent.." |cff997700("
						if #levels<3 then s=s..table.concat(levels,",") else s=s..levels[1].."-"..levels[#levels] end
						s=s..")|r"
					end
				end
				self.scroll.child['talents'..tabn]:SetText(s)
				tabn=tabn+1
				if tabn>3 then break end
			end

			self.accept:Show()
			self.accept:SetText(ACCEPT)

			--[[
			if GetCVarBool("previewTalents")
			and (
				GetUnspentTalentPoints(false,pet)-GetGroupPreviewTalentPointsSpent(pet)>0
			     or ZTA.status_preview[who].code~=ZTA.status[who].code
			     or tonumber(ZTA.status_preview[who].missed)>tonumber(ZTA.status[who].missed)
			    ) then
				self.preview:SetText(L['preview_button'])
				self.preview:Enable()
			else
				self.preview:SetText(L['preview_button_done'])
				self.preview:Disable()
			end
			--]]
			self.preview:SetText(L['preview_button'])


			self.scroll:Show()
			self.preview:Show()
		end
	end
	while tabn<=3 do
		self.scroll.child['group'..tabn]:SetText("")
		self.scroll.child['group'..tabn]:SetHeight(0)
		self.scroll.child['talents'..tabn]:SetText("")
		self.scroll.child['talents'..tabn]:SetHeight(0)
		tabn=tabn+1
	end

	self.configure:SetText(L['configure_button'])
	self.needsResizing=4
end

function ZygorTalentAdvisorPopout_Hook()
	ZygorTalentAdvisorPopout_UpdateDocking()
end

function ZygorTalentAdvisorPopout_UpdateDocking(set)
	local self=ZygorTalentAdvisorPopout
	if set ~= nil then ZTA.db.profile.windowdocked = set end

	if PlayerSpecTab1 and PlayerSpecTab1:IsShown() then
		if ZTA.db.profile.windowdocked and self:IsShown() then
			PlayerSpecTab1:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",ZygorTalentAdvisorPopout:GetWidth()-7-32,-65)
		else
			PlayerSpecTab1:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-32,-65)
		end
	end

	-- When docked, hide close button and swap corner texture (retail behavior)
	local DIR = ZGV and ZGV.DIR or ""
	if ZTA.db.profile.windowdocked then
		if self.TopRight then
			self.TopRight:SetTexture(DIR.."\\Skins\\popout-noclose")
			self.TopRight:SetTexCoord(0,1,0,1)
		end
		if self.CloseButton then self.CloseButton:Hide() end
	else
		if self.TopRight then
			self.TopRight:SetTexture("Interface\\PaperDollInfoFrame\\UI-GearManager-Border")
			self.TopRight:SetTexCoord(0.625,0.75,0,1)
		end
		if self.CloseButton then self.CloseButton:Show() end
	end
end

function ZygorTalentAdvisorPopout_Reparent()
	local self=ZygorTalentAdvisorPopout
	if ZTA.db.profile.windowdocked then
		self:SetParent(PlayerTalentFrame)
		self:ClearAllPoints()
		self:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-38,-10)
	else
		self:SetParent(UIParent)
	end
end

function ZygorTalentAdvisorPopout_Popout()
	TalentFrame_LoadUI()
	if not PlayerTalentFrame:IsShown() and ZygorTalentAdvisor.db.profile.windowdocked then
		ShowUIPanel(PlayerTalentFrame)
	end
	ZygorTalentAdvisorPopout:Show()
end
