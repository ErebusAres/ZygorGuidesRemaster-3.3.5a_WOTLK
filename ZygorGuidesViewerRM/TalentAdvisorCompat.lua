local ZGV = ZygorGuidesViewer
if not ZGV then return end

local function AnnounceTalentAdvisorLoaded(zgv)
	if not zgv or zgv._taLoadedMessageShown then return end
	if not _G.ZygorTalentAdvisor then return end
	if type(zgv.Print) ~= "function" then return end
	zgv._taLoadedMessageShown = true
	_G.ZygorTalentAdvisor._integratedLoadAnnounced = true
	zgv:Print(ZGV_T("|cff88ff88ZygorTalentAdvisor loaded.|r Talent Advisor is integrated in this addon."))
end

local function EnsureDefaultTalentBuild()
	local zta = _G.ZygorTalentAdvisor
	if not zta or type(zta) ~= "table" then return end
	if not zta.registeredBuilds or #zta.registeredBuilds == 0 then return end
	zta.db = zta.db or {}
	zta.db.char = zta.db.char or {}

	if type(zta.PruneRegisteredBuilds) == "function" and not zta.registeredBuildsPruned then
		pcall(zta.PruneRegisteredBuilds, zta)
	end

	local _, playerClass = UnitClass("player")
	local function RestoreSavedBuild(title, pet)
		if type(zta.SetCurrentBuild) ~= "function" then return false end
		local whoKey = pet and "pet" or "player"
		local indexKey = pet and "currentPetBuildIndex" or "currentBuildIndex"
		local idx = tonumber(zta.db.char[indexKey])
		if idx and idx > 0 and zta.registeredBuilds and zta.registeredBuilds[idx] then
			local b = zta.registeredBuilds[idx]
			if (pet and b.pettype) or (not pet and not b.pettype and (not b.class or b.class == playerClass)) then
				pcall(zta.SetCurrentBuild, zta, idx, pet and true or false)
				if zta.currentBuildNum and zta.currentBuildNum[whoKey] ~= nil then return true end
			end
		end
		if not title or title == "" then return false end
		local chosen
		for i, build in ipairs(zta.registeredBuilds or {}) do
			if build and build.title == title then
				if pet then
					if build.pettype then chosen = i break end
				else
					if not build.pettype and (not build.class or build.class == playerClass) then chosen = i break end
				end
			end
		end
		if chosen then
			pcall(zta.SetCurrentBuild, zta, chosen, pet and true or false)
		else
			pcall(zta.SetCurrentBuild, zta, title, pet and true or false)
		end
		return zta.currentBuildNum and zta.currentBuildNum[whoKey] ~= nil
	end

	-- Restore a previously selected build title before any fallback auto-pick.
	if (not zta.currentBuildNum or not zta.currentBuildNum.player) and zta.db.char.currentBuildTitle then
		RestoreSavedBuild(zta.db.char.currentBuildTitle, false)
	end
	if (not zta.currentBuildNum or not zta.currentBuildNum.pet) and zta.db.char.currentPetBuildTitle then
		RestoreSavedBuild(zta.db.char.currentPetBuildTitle, true)
	end

	if zta.currentBuildNum and zta.currentBuildNum.player then
		if zta.db.char.currentBuildNone then zta.db.char.currentBuildNone = false end
		return
	end
	if zta.db.char.currentBuildTitle or tonumber(zta.db.char.currentBuildIndex or 0) > 0 then
		return
	end
	if zta.db.char.currentBuildNone then
		return
	end
	-- Do not force-pick a default build. Preserve explicit saved/none state.
end

local function RefreshTalentAdvisor()
	local zta = _G.ZygorTalentAdvisor
	if not zta or type(zta) ~= "table" then return end
	if type(zta.UpdateSuggestions) == "function" then
		pcall(zta.UpdateSuggestions, zta, false)
	end
	if _G.ZygorTalentAdvisorPopout_Update and _G.ZygorTalentAdvisorPopout and _G.ZygorTalentAdvisorPopout:IsShown() then
		pcall(_G.ZygorTalentAdvisorPopout_Update)
	end
end

table.insert(ZGV.startups, function(self)
	if self._taCompatInstalled then return end
	self._taCompatInstalled = true

	AnnounceTalentAdvisorLoaded(self)
	if type(self.ScheduleTimer) == "function" then
		pcall(self.ScheduleTimer, self, function() AnnounceTalentAdvisorLoaded(self) end, 1)
	end

	if type(IsAddOnLoaded) == "function" and IsAddOnLoaded("ZygorTalentAdvisor") and not self._taDuplicateWarningShown then
		self._taDuplicateWarningShown = true
		if self.Print then
			self:Print(ZGV_T("|cffff8844Talent Advisor notice:|r standalone addon |cffffff00ZygorTalentAdvisor|r is enabled. Disable the standalone folder to avoid duplicate/overlapping behavior."))
		end
	end

	EnsureDefaultTalentBuild()
	RefreshTalentAdvisor()

	if type(hooksecurefunc) == "function" then
		pcall(hooksecurefunc, "ToggleTalentFrame", function()
			EnsureDefaultTalentBuild()
			RefreshTalentAdvisor()
		end)
	end

	self:AddEvent("PLAYER_ALIVE", function()
		AnnounceTalentAdvisorLoaded(self)
		EnsureDefaultTalentBuild()
		RefreshTalentAdvisor()
	end)
	self:AddEvent("PLAYER_ENTERING_WORLD", function()
		AnnounceTalentAdvisorLoaded(self)
		EnsureDefaultTalentBuild()
		RefreshTalentAdvisor()
	end)
	self:AddEvent("CHARACTER_POINTS_CHANGED", function()
		EnsureDefaultTalentBuild()
		RefreshTalentAdvisor()
	end)
	self:AddEvent("ACTIVE_TALENT_GROUP_CHANGED", function()
		EnsureDefaultTalentBuild()
		RefreshTalentAdvisor()
	end)
end)
