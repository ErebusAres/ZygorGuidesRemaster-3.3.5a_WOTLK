--if not Cartographer and not Cartographer3 then
--	ChatFrame1:AddMessage("|cffff0000Zygor Guides Viewer requires Cartographer or Cartographer3")
--end

--local Rock = nil  -- keep the partial Rock compatibility for now, but don't actually use it.
--local Cartographer_Notes = nil
--local Cartographer = nil
--local Cartographer3 = nil

local me = LibStub("AceAddon-3.0"):NewAddon("ZygorGuidesViewer", "AceConsole-3.0","AceEvent-3.0","AceTimer-3.0")

--global export
ZygorGuidesViewer = me

ZGV = me
local ZGV = me

me.L = ZygorGuidesViewer_L("Main")
me.LS = ZygorGuidesViewer_L("G_string")

local L = me.L
local LI = me.LI
local LC = me.LC
local LQ = me.LQ
local LS = me.LS

local Gratuity = LibStub("LibGratuity-3.0")

me.registeredguides = {}
me.registeredmapspotsets = {}

local addonName = ...
local DIR = "Interface\\AddOns\\"..(addonName or "ZygorGuidesViewer")
ZGV.DIR = DIR
local SKINDIR = ""

ZYGORGUIDESVIEWER_COMMAND = "zygor"

ZYGORGUIDESVIEWERFRAME_TITLE = "ZygorGuidesViewer"

BINDING_HEADER_ZYGORGUIDES = L["name_plain"]
BINDING_NAME_ZYGORGUIDES_OPENGUIDE = L["binding_togglewindow"]
BINDING_NAME_ZYGORGUIDES_PREV = L["binding_prev"]
BINDING_NAME_ZYGORGUIDES_NEXT = L["binding_next"]

local _,_,_,ver = GetBuildInfo()
local WotLK = (ver>=30000)


local BZ = LibStub("LibBabble-Zone-3.0")
local BZL = BZ:GetUnstrictLookupTable()
local BZR = BZ:GetReverseLookupTable()
me.BZL = BZL
me.BZR = BZR
local BF = LibStub("LibBabble-Faction-3.0")
local BFL = BF:GetUnstrictLookupTable()
local BFR = BF:GetReverseLookupTable()
me.BFL = BFL
me.BFR = BFR

local _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math = _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math

--local Dewdrop = AceLibrary("Dewdrop-2.0")

me.LibTaxi = LibStub("LibTaxi-1.0")


me.icons = {
	["hilite"] = {	text = L["map_highlight"],		path = DIR.."\\Skin\\highlightmap",	width = 32, height = 32, alpha=1 },
	["hilitesquare"] = {	text = L["map_highlight"],		path = DIR.."\\Skin\\highlightmap_square",	width = 32, height = 32, alpha=1 },
}

me.CartographerDatabase = { }


me.startups = {}

me.StepLimit = 20
me.stepframes = {}
me.spotframes = {}


local STEP_LINE_SPACING = 2
local MIN_HEIGHT=100
local ICON_INDENT=15
ZGV.ICON_INDENT=ICON_INDENT
local STEP_SPACING = 2
ZGV.STEP_SPACING=STEP_SPACING
ZGV.STEPMARGIN_X=3
ZGV.STEPMARGIN_Y=4

ZGV.MIN_STEP_HEIGHT=15

local FONT = STANDARD_TEXT_FONT
--ZGV.BUTTONS_INLINE=true

local function copyBackdrop(backdrop)
	if type(backdrop) ~= "table" then
		return nil
	end
	local out = {}
	for k, v in pairs(backdrop) do
		if type(v) == "table" then
			local t = {}
			for k2, v2 in pairs(v) do
				t[k2] = v2
			end
			out[k] = t
		else
			out[k] = v
		end
	end
	return out
end

local function captureFrameBackdrop(frame)
	if not frame or not frame.GetBackdrop then
		return nil
	end
	local backdrop = frame:GetBackdrop()
	if not backdrop then
		return nil
	end
	return {
		backdrop = copyBackdrop(backdrop),
		color = { frame:GetBackdropColor() },
		border = { frame:GetBackdropBorderColor() },
	}
end

local function applyFrameBackdrop(frame, data)
	if not frame or not data or not frame.SetBackdrop then
		return
	end
	if data.backdrop then
		frame:SetBackdrop(data.backdrop)
	end
	if data.color and frame.SetBackdropColor then
		frame:SetBackdropColor(unpack(data.color))
	end
	if data.border and frame.SetBackdropBorderColor then
		frame:SetBackdropBorderColor(unpack(data.border))
	end
end

local function captureFrameLayout(frame)
	if not frame or not frame.GetNumPoints then
		return nil
	end
	local points = {}
	for i = 1, frame:GetNumPoints() do
		points[i] = { frame:GetPoint(i) }
	end
	return {
		points = points,
		size = { frame:GetWidth(), frame:GetHeight() },
	}
end

local function applyFrameLayout(frame, data)
	if not frame or not data then
		return
	end
	if data.points then
		frame:ClearAllPoints()
		for _, point in ipairs(data.points) do
			frame:SetPoint(unpack(point))
		end
	end
	if data.size and data.size[1] and data.size[2] then
		frame:SetSize(data.size[1], data.size[2])
	end
end


local math_modf=math.modf
math.round=function(n) local x,y=math_modf(n) return n>0 and (y>=0.5 and x+1 or x) or (y<=-0.5 and x-1 or x) end
local round=math.round

function me:OnInitialize() 

--	if not ZygorGuidesViewerMiniFrame then error("Zygor Guide Viewer step frame not loaded.") end
	if not ZygorGuidesViewerFrame then error("Zygor Guide Viewer frame not loaded.") end
	
	self.db = LibStub("AceDB-3.0"):New("ZygorGuidesViewerSettings")

	self:Debug ("Initializing...")

	self:Options_RegisterDefaults()
	
	--self.db:SetProfile("char/"..UnitName("player").." - "..GetRealmName())

	self:Options_DefineOptions()

	self.optionsprofile = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)

	if IsShiftKeyDown() then
		self.db.char.maint_startguides = false
		self.db.char.maint_queryquests = false
		self.db.char.maint_fetchquestdata = false
		self.db.char.maint_fetchitemdata = false
		ZygorGuidesViewerMaintenanceFrame_StartGuides:SetChecked(self.db.char.maint_startguides)
		ZygorGuidesViewerMaintenanceFrame_QueryQuests:SetChecked(self.db.char.maint_queryquests)
		ZygorGuidesViewerMaintenanceFrame_FetchQuestData:SetChecked(self.db.char.maint_fetchquestdata)
		ZygorGuidesViewerMaintenanceFrame_FetchItemData:SetChecked(self.db.char.maint_fetchitemdata)

		ZygorGuidesViewerMaintenanceFrame:Show()
	else
		self.db.char.maint_startguides = true
		self.db.char.maint_queryquests = true
		self.db.char.maint_fetchquestdata = true
		self.db.char.maint_fetchitemdata = true
	end

	self.db.char.completedQuests=nil --wipe and flush

	self.CurrentStepNum = self.db.char.step
	self.CurrentGuideName = self.db.char.guidename

	self.QuestCacheTime = 0
	self.QuestCacheUndertimeRepeats = 0
	self.StepCompletion = {}
	self.recentlyAcceptedQuests = {}
	--self.recentlyCompletedQuests = {}
	self.LastSkip = 1

	self.instantQuests = {}
	self.dailyQuests = self.dailyQuests or {}

	self.completionelapsed = 0
	self.completionintervallong = 1.0
	self.completionintervalmin = 0.01
	self.completioninterval = self.completionintervallong

	self:ClearRecentActivities() -- just to make sure they're not nils

	--self.AutoskipTemp = true

	self.Frame = ZygorGuidesViewerFrame

	self.frameNeedsResizing = 0

	self.Frame:SetScale(self.db.profile.framescale)
	self:UpdateLocking()
	self:ReanchorFrame()

	self.TomTomWaypoints = {}

	self.quests = {}
	self.questsbyid = {}
	self.reputations = {}

	self.bandwidth = 0

	--LibSimpleOptions.AddOptionsPanel("Zygor's Guide",function(self) MakeOptionsControls(self,ZGV.options,ZGV) end)
	--LibSimpleOptions.AddSuboptionsPanel("Zygor's Guide",ZGV.options.args.map.name, function(self) MakeOptionsControls(self,ZGV.options.args.map,ZGV) end)
	--LibSimpleOptions.AddSuboptionsPanel("Zygor's Guide",ZGV.options.args.addons.name, function(self) MakeOptionsControls(self,ZGV.options.args.addons,ZGV) end)
	--LibSimpleOptions.AddSlashCommand("Zygor's Guide","/zygoropt")

	self:Options_SetupConfig()
	self:Options_SetupBlizConfig()

--	self:Echo(L["initialized"])
	self:Debug ("Initialized.")


	if self.LibTaxi then
		if not self.db.char.taxis then self.db.char.taxis = {} end
		self.LibTaxi:Startup(self.db.char.taxis)
	end

	if self.Pointer then self.Pointer:Startup() end
	if self.Foglight then self.Foglight:Startup() end

	if ZygorTalentAdvisor and ZygorTalentAdvisor.revision > self.revision then
		self.revision = ZygorTalentAdvisor.revision
		self.version = ZygorTalentAdvisor.version
		self.date = ZygorTalentAdvisor.date
	end

	if self.LocaleFont then FONT=self.LocaleFont end
	
	-- home detection, fire-and-forget style.
	hooksecurefunc("ConfirmBinder",function() ZygorGuidesViewer.recentlyHomeChanged=true end)
end

function me:OnEnable()
	self:Debug("enabling")

	if self.db.profile["visible"] then self:ToggleFrame() end

	ZygorGuidesViewerMapIcon:Show()

	self:UpdateMapButton()
	self:UpdateSkin()

	self:Debug("enabled")

	self:AddEvent("UNIT_INVENTORY_CHANGED")

	-- combat detection for hiding in combat
	self:AddEvent("PLAYER_REGEN_DISABLED")
	self:AddEvent("PLAYER_REGEN_ENABLED")

	self:AddEvent("SPELL_UPDATE_COOLDOWN")

	self:AddEvent("PLAYER_CONTROL_GAINED")  -- try to force current zone updates; should prevent GoTo lines from locking up after a taxi flight

	--self.startuptimer = self:ScheduleRepeatingTimer("StartupTimer", 0.1)

	-- startup 'modules'
	for i,startup in ipairs(self.startups) do
		startup(self)
	end

	self:SetWaypointAddon(self.db.profile.waypointaddon)

	self:PruneNPCs()

	self.Log.entries = self.db.char.debuglog
	self.Log:Add("Viewer started. ---------------------------")

	self.ConditionEnv:_Setup()

	-- waiting for QUEST_LOG_UPDATE for true initialization...
	--self:QueryQuests()

	if ZGV_DEV then ZGV_DEV() end
end

function me:OnDisable()
--	self:UnregisterAllEvents()
	UnsetWaypointAddon()

	ZygorGuidesViewerMapIcon:Hide()
	self.Frame:Hide()
end



-- my event handling. Multiple handlers allowed, just for the heck of it.

local meta_newtables = {__index = function(tbl, key) tbl[key] = {} return tbl[key] end}
me.Events=setmetatable({},meta_newtables)
function me:AddEvent(event,func)
	tinsert(self.Events[event],func or true)
	if #self.Events[event]==1 then self:RegisterEvent(event,"EventHandler") end
end
function me:EventHandler(event,...)
	for i,hand in ipairs(self.Events[event]) do
		local func
		if type(hand)=="function" then
			func=hand
		elseif type(hand)=="string" then
			func=self[hand]
			assert(func,"No function "..hand.." in event handler!")
		elseif hand==true then
			func=self[event]
			assert(func,"No function "..event.." in event handler!")
		end
		func(self,event,...)
	end
end



function me:OnFirstQuestLogUpdate()
	if not self.guidesloaded then return end -- let the OnGuidesLoaded func call us.
	if self.questLogInitialized then return end

	if self.db.char["starting"] then
		self:Print("First start! Finding proper starter section.")
		local i = self:FindDefaultGuide()
		if i then
			self.db.char.guidename = self.registeredguides[i].title
			self.db.char.step = 1
			self.Frame:Show()
		end
		self.db.char["starting"] = false
	end

	if ZGV.db.char.maint_startguides then
		self:SetGuide(self.db.char.guidename,self.db.char.step)
	end

	self.frameNeedsResizing = 1
	self:AlignFrame()
	self:UpdateFrame(true)
	self.questLogInitialized = true
end

function me:GetGuideByTitle(title)
	for i,v in ipairs(self.registeredguides) do
		if v.title==title then return v end
	end
end

function me:SetGuide(name,step,temp)
	if not name then return end
	if not step then step=1 end
	self:Debug("SetGuide "..name.." ("..tostring(step))

	local guide
	if type(name)=="number" then
		local num = name
		if self.registeredguides[num] then
			guide = self.registeredguides[num]
		else
			self:Print("Cannot find guide number: "..num)
			--return false
		end
	else
		guide = self:GetGuideByTitle(name)
		if not guide then
			self:Print("Cannot find guide: "..name)
			self:Debug("Cannot find guide: "..name)
			return false
		end
	end

	--if guide.is_stored then guide = self.db.global.storedguides[name] end

	if guide and guide.steps then
		--self.MapNotes = _G["ZygorGuides_"..faction.."Mapnotes"]
		local name = guide.title

		self.CurrentGuide = guide

		self:Print(L["message_loadedguide"]:format(name))

		self.CurrentGuideIsTemporary = temp

		self.CurrentGuideName = name
		if not temp then
			self.db.char.guidename = name
		end


		if #self.CurrentGuide.steps<step then
			step = 1
		end

		self:QuestTracking_ResetDailies(true)

		self:Debug("Guide loaded: "..name)
		
		self:FocusStep(step)

		ZygorGuidesViewerFrame_Border_GuideButton:UnlockHighlight()
	else
		self:Print(L["message_missingguide"]:format(name))
		self.db.char['guide'] = nil
		self.db.char['step'] = nil
		self.CurrentGuide = nil
	end

	self:UpdateFrame(true)
end

function me:FindDefaultGuide()
	for i,guide in ipairs(self.registeredguides) do
		if guide.defaultfor and self:RaceClassMatch(guide.defaultfor,true) then return i end
	end
	return nil
end

-- function me:SearchForCompleteableGoal() --removed

function me:ClearRecentActivities()
	self.recentlyVisitedCoords = {}
	self.recentlyCompletedGoals = {}
	self.recentlyAcceptedQuests = {}
	self.recentlyStickiedGoals = {}
	self.recentGoalProgress = {}
	self.recentCooldownsPulsing = {}
	self.recentCooldownsStarted = {}
	self.recentlyHomeChanged = false
	self.recentlyDiscoveredFlightpath = false
	self.recentlyLearnedRecipes = {}
	self.recentKills = {}
	self.completedQuestTitles = {}
end

function me:FocusStep(num,quiet)
	if not num or num<=0 then return end
	if not self.CurrentGuide then return end
	if not self.CurrentGuide.steps then return end
	if num>#self.CurrentGuide.steps then return end

	self:Debug("FocusStep "..num..(quiet and " (quiet)" or ""))

	self.CurrentStepNum = num
	if not self.CurrentGuideIsTemporary then
		self.db.char.step = num
	end
	self.CurrentStep = self.CurrentGuide["steps"][num]

	self:ClearRecentActivities()

	self.CurrentStep:PrepareCompletion()

	self.stepchanged = true

	for i,goal in ipairs(self.CurrentStep.goals) do
		if goal:IsComplete() then self.recentlyCompletedGoals[goal]=true end
	end

	if not quiet then
		--self:HighlightCurrentStep()

		self:StopFlashAnimation()
		self.frameNeedsResizing = self.frameNeedsResizing + 1
		self:UpdateFrame(true)
		self:ScrollToCurrentStep()
		self:UpdateCooldowns()

		self:UpdateCartographerExport()
		self:SetWaypoint()
	end
	--self:UpdateMinimapArrow(true)

	local stepcomplete,steppossible,stepmanual = self.CurrentStep:IsComplete()
	if self.pause then
		if (self.db.profile.skipimpossible and not steppossible and not stepmanual)
		or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
		or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable()) then
			stepcomplete=true
			--self.pause=nil
		end
		self.LastSkip=1
		if not stepcomplete then
			self:Debug("unpausing")
			self.pause=nil
		end
	end
	--and self.LastSkip~=0) then self.AutoskipTemp=false else self.AutoskipTemp=true end

	-- add to last-guides history
	local history = self.db.char.guides_history
	local found
	for i,g in ipairs(history) do
		if g.full==self.CurrentGuideName then
			-- update
			g.step=num
			found=true
			break
		end
	end
	if not found then
		tinsert(history,{full=self.CurrentGuideName,short=self.CurrentGuide.title_short,step=step})
		if #history>self.db.profile.guidesinhistory then tremove(history,1) end
	end

	self:AnimateGears()
end

function me:FocusStepQuiet(num)
	return self:FocusStep(num,true)
end

--- A quest is 'interesting' if any follow-ups to it appear anywhere in the guides and they're not gray.
function me:GetMentionedFollowups(questid)
	local q,f
	local live = {questid}
	local fups = {}
	local lev
	while #live>0 do
		q = tremove(live,1)
		lev = self.mentionedQuests[q]
		if lev then tinsert(fups,{q,lev}) end

		f = self.RevChains[q]
		if f then
			for i=1,#f do
				tinsert(live,f[i])
			end
		end
	end
	return fups
end

-- A quest's "maximum chained level" can be safely cached, I guess.
function me:CacheMentionedFollowups()
	local f,maxlev
	self.maxQuestLevels = {}
	for qid=1,30000 do
		if self.mentionedQuests[qid] then
			f=ZGV:GetMentionedFollowups(qid)
			maxlev=0
			for i=1,#f do
				if f[i][2]>maxlev then maxlev=f[i][2] end
			end
			self.maxQuestLevels[qid]=maxlev
		end
	end
end

function me:ListMentionedQuests()
	self.mentionedQuests = {}
	local guide = self:FindDefaultGuide()
	if guide then guide=self.registeredguides[guide] else return end
	while guide do
		if guide.quests then for qid,lev in pairs(guide.quests) do self.mentionedQuests[qid]=lev end end
		guide.quests=nil

		guide = self:GetGuideByTitle(guide.next)
	end
end
	
--- Attempt to complete current step.
-- 09-09-24: 
function me:TryToCompleteStep(force)
	if not self.CurrentStep then return end

	if self.BUTTONS_INLINE then
		if self.actionsvisible and InCombatLockdown() then return end
	end

	-- prevent overtime checks
	if self.completionelapsed<=self.completioninterval and not force then
		self.completionelapsed=self.completionelapsed+0.1
		return
	end
	self.completionelapsed = 0

	-- frame hidden? bail.
	if not self.Frame:IsVisible() or self.Frame:GetAlpha()<0.1 then return end
	--if InCombatLockdown() then return end

	--local skipped=0
	--local updated

	local stepcomplete,steppossible,stepmanual = self.CurrentStep:IsComplete()

	local completing = stepcomplete

	-- smart skipping: treat impossible or skippable as completed
	if (self.db.profile.skipimpossible and not steppossible and not stepmanual)
	or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
	or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable()) then
		completing=true
		--self.pause=nil
	end

	if not completing then
		self.pause=nil
		self.completioninterval = self.completionintervallong
	end

	if self.pause then
		self.completioninterval = self.completionintervallong
		self.LastSkip = 1
	else
		if completing then
			--self.recentlyCompletedQuests = {} -- forget it! We're skipping the step, already.
			self:Debug("Skipping step: "..self.CurrentStepNum.." ("..(stepcomplete and "complete" or (steppossible and "possible?" or "impossible"))..")")

			if self.lasttriedstep and self.lasttriedstep==self.CurrentStep and not self.lastwascompleted then
				--newly completed!
				PlaySound(self.db.profile.completesound)
				if self.db.profile.flashborder then
					self.delayFlash=1
				end
			end

			self:SkipStep(self.LastSkip,true)
			self.fastforward=true

			self.completioninterval = self.completioninterval * 0.9
			if self.completioninterval<self.completionintervalmin then self.completioninterval=self.completionintervalmin end
			--skipped=skipped+1
			--if skipped>100 then break end

			--self:UpdateFrame()
			--updated=true

			--self.completioninterval = self.completionshortinterval


			--ZygorGuidesViewerFrame_CoverFlash_blink:Play()

			--stepcomplete = self.CurrentStep:IsComplete()
		else
			self.completioninterval = self.completionintervallong
			self.pause=nil
			self.fastforward=nil
			self.LastSkip = 1
			--self.completioninterval = self.completionlonginterval
		end

		--[[
		if updated and not self.db.profile.showallsteps then
			self.stepframes[1].slideup:Play()
		end
		--]]

		--if not stepcomplete then self.AutoskipTemp=true end

		--if not updated then self:UpdateFrame() end
	end

	self:UpdateFrame()

	self.lasttriedstep = self.CurrentStep
	self.lastwascompleted = stepcomplete
end



function me:InitializeDropDown(frame)
	if not self.guidesloaded then return end

	local guides = ZygorGuidesViewer.registeredguides
	
	if not guides then return end
	
	for i,guide in ipairs(guides) do

--		ChatFrame1:AddMessage(section)
		local info = {}
		info.text = guide.title
		info.value = guide.title
		info.func = ZGVFSectionDropDown_Func
		if (self.CurrentGuideName == guide.title) then
			info.checked = 1
		else
			info.checked = nil
		end
		info.button = 1
--		if (i == 1) then
--			info.isTitle = 1
--		end
		UIDropDownMenu_AddButton(info)
	end
	UIDropDownMenu_SetText(frame, self.CurrentGuideName)
end


function me:UpdateLocking()
	-- remove mouse activity in lock mode
	local locked = self.db.profile["windowlocked"]
	--self:Debug("lock mode: "..tostring(locked))

	ZygorGuidesViewerFrame_Border_TitleBar:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomLeft:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottomRight:EnableMouse(not locked)
	ZygorGuidesViewerFrame_ResizerBottom:EnableMouse(not locked)

	ZygorGuidesViewerFrameScroll:EnableMouseWheel(not locked)

	if self.stepframes then
		for s,st in ipairs(self.stepframes) do
			st:EnableMouse(not locked)
		--[[
			for l,ln in ipairs(st.lines) do
				ln.clicker:EnableMouse(not locked)
			end
		]]
		end
	end

	-- lock button
	if self.db.profile["windowlocked"] then
		ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexCoord(0.375,0.500,0.00,0.25)
		ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexCoord(0.375,0.500,0.25,0.50)
		ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexCoord(0.375,0.500,0.50,0.75)
	else
		ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexCoord(0.250,0.375,0.00,0.25)
		ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexCoord(0.250,0.375,0.25,0.50)
		ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexCoord(0.250,0.375,0.50,0.75)
	end

	if self.db.profile["showallsteps"] then
		ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexCoord(0.000,0.125,0.0,0.25)
		ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexCoord(0.000,0.125,0.25,0.5)
		ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexCoord(0.000,0.125,0.50,0.75)
	else
		ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexCoord(0.125,0.250,0.00,0.25)
		ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexCoord(0.125,0.250,0.25,0.50)
		ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexCoord(0.125,0.250,0.50,0.75)
	end
end

function me:StopFlashAnimation()
	if not self.stepframes[1] then return end
	for s=1,20 do
		for i=1,20,1 do
			local anim_w2g = self.stepframes[s].lines[i].anim_w2g
			if not anim_w2g then break end
			anim_w2g:Stop()
		end
	end
end

--[[
function me:HideCooldown(arg)
	arg.cooldown:Hide()
	self.recentCooldownsPulsing[goal] = 2
end
--]]

function me:UpdateCooldowns()
	--self:Debug("UpdateCooldowns")
	if not self.CurrentStep then return end
	local stepframe = self.stepframes[self.CurrentStepframeNum]
	if not stepframe then return end
	for i=1,20,1 do
		local cooldown = _G["ZygorGuidesViewerFrame_Act"..i.."ActionCooldown"]
		if not cooldown then return end
		local goal = stepframe.lines[i].goal
		if goal and goal:IsActionable() then
			--cooldown:Show()
			--self:Debug("goal "..i.." actionable")
			if goal.castspell or goal.castspellid then
				local start,dur,en = GetSpellCooldown(goal.castspellid or goal.castspell)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
				--self:Debug(("spell: %d,%d,%d"):format(start,dur,en))
			elseif goal.useitem or goal.useitemid then
				local start,dur,en = GetItemCooldown(goal.useitemid or goal.useitem)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
				--self:Debug(("item: %d,%d,%d"):format(start,dur,en))
			elseif goal.petaction then
				local num,name,x,tex
				if type(goal.petaction)=="number" then
					num = goal.petaction
				else
					num,name,x,tex = FindPetActionInfo(goal.petaction)
				end
				local start,dur,en = GetPetActionCooldown(num)
				CooldownFrame_SetTimer(cooldown, start, dur, en)
				if start>0 then cooldown:Show() else cooldown:Hide() end
			end
		else
			cooldown:Hide()
		end
	end
end

local function gradient(a,b,p)
	return a+(b-a)*p
end

local function fromRGBA(ob)
	return ob.r,ob.g,ob.b,ob.a
end

local function fromRGB_a(ob,a)
	return ob.r,ob.g,ob.b,a
end

local function fromRGBmul_a(ob,mul,a)
	return ob.r*mul,ob.g*mul,ob.b*mul,a
end

local function fromRGB(ob)
	return ob.r,ob.g,ob.b
end

--local function gradientRGBA(f,t,p)  --removed

--function me:

function me:SetDisplayMode(mode)
	self.db.profile.displaymode=mode
	self:UpdateFrame(true)
end

local Tpi=6.2832
local cardinals = {"N","NW","W","SW","S","SE","E","NE","N"}
local function GetCardinalDirName(angle)
	for i=1,9 do
		if Tpi*((i*2)-1)/16>angle then return cardinals[i] end
	end
end
function GetCardinalDirNum(angle)
	while angle<0 do angle=angle+Tpi end
	while angle>Tpi do angle=angle-Tpi end
	local ret=1
	for i=1,16 do
		if Tpi*((i*2)-1)/32>angle then ret=i break end
	end
	return ret
end

local itemsources={"vendor","drop","ore","herb","skin"}

local gold_ox,gold_oy=0,0

function me:UpdateFrame(full,onupdate)
	if full then self.stepchanged=true end

	if not self.Frame or not self.Frame:IsVisible() then return end

	--if InCombatLockdown() then return end
	--[[
	--		self.Frame:SetAlpha(0.5)
		return
	else
	--		self.Frame:SetAlpha(1.0)
	end
	--]]

	--self:Debug("updatemini")

	--if ZygorGuidesViewerMiniFrame_bdflash:IsPlaying() and not ZygorGuidesViewerMiniFrame_bdflash:IsDone() then return end

	local minh = 0

	if self.loading then

		ZygorGuidesViewerFrame_Border_SectionTitle:SetText()
		ZygorGuidesViewerFrame_MissingText:Show()
		ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_loading']:format((self.loadprogress or 0)*100))

	elseif self.db.profile.displaymode=="guide" then
		if self.CurrentGuide and self.CurrentGuide.steps then

			-- hide spot frames, if visible
			if self.spotframes[1] and self.spotframes[1]:IsVisible() then for i,spotframe in ipairs(self.spotframes) do spotframe:Hide() end end

			if self.db.profile.showallsteps then
				if ZygorGuidesViewerFrameScrollScrollBar:GetValue()<1 then ZygorGuidesViewerFrameScrollScrollBar:SetValue(self.CurrentStepNum) end
				ZygorGuidesViewerFrameScrollScrollBar:Show()
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end

			if full then
				ZygorGuidesViewerFrameScrollScrollBar:SetMinMaxValues(1,#self.CurrentGuide.steps>0 and #self.CurrentGuide.steps or 1)
				ZygorGuidesViewerFrame_Skipper_Step:SetText(self.CurrentStepNum)
				ZygorGuidesViewerFrame_Border_SectionTitle:SetText(self.CurrentGuide.title_short)
			end

			--ZygorGuidesViewerFrame_Border_TitleBar_PrevButton:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_NextButton:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_Step:Show()
			--ZygorGuidesViewerFrame_Border_TitleBar_StepText:SetText(self.CurrentStepNum)
			--ZygorGuidesViewerFrame_Border_TitleBar_StepText:Show()

			ZygorGuidesViewerFrameScroll:Show()
			ZygorGuidesViewerFrame_MissingText:Hide()

			local totalheight = 0

			local frame
			local stepnum,stepdata

			local firststep = self.db.profile.showallsteps and math.floor(ZygorGuidesViewerFrameScrollScrollBar:GetValue()) or self.CurrentStepNum
			if firststep<1 then firststep=1 end
			local laststep = self.db.profile.showallsteps and #self.CurrentGuide.steps or self.CurrentStepNum+self.db.profile.showcountsteps-1

			--self:Debug("first step "..firststep..", last step "..laststep)
			-- run through buttons and assign steps for them

			local nomoredisplayed=false
			
			for stepbuttonnum = 1,self.StepLimit do repeat
				--frame = _G['ZygorGuidesViewerFrame_Step'..stepbuttonnum]
				frame = self.stepframes[stepbuttonnum]
				
				stepnum = firststep + stepbuttonnum - 1
				
				-- show this button at all?
				if stepnum>=firststep and stepnum<=laststep and stepnum<=#self.CurrentGuide.steps then
					local stepdata = self.CurrentGuide.steps[stepnum]
					assert(stepdata,"UpdateFrame: No data for step "..stepnum)

					if nomoredisplayed then
						frame:Hide()
						break --continue
					end

					--[[
					if not self.stepchanged and not stepdata:NeedsUpdating() or (nomoredisplayed and not frame:IsVisible()) then
						break --continue
					end
					--]]
					--print("Displaying step "..stepnum)

					frame.stepnum = stepnum
					frame.step = stepdata

					--#### position step frame

					frame:SetWidth(self.db.profile.showallsteps and ZygorGuidesViewerFrameScrollChild:GetWidth() or ZygorGuidesViewerFrameScroll:GetWidth()) -- this is needed so the text lines below can access proper widths

					-- out of screen space? bail.
					-- but only in all steps mode!
					local top=frame:GetTop()
					local bottom=ZygorGuidesViewerFrameScroll:GetBottom()
					if self.db.profile.showallsteps and top and bottom and top<bottom then
						frame:Hide()
						nomoredisplayed=true
						break --continue!
					end

					--#### fill it with text

					local changed,dirty = stepdata:Translate()
					if dirty then
						self.frameNeedsUpdating=true
						self:SetWaypoint()
					end

					local line=1

					if stepdata.requirement or self.db.profile.stepnumbers then
						local numbertext = self.db.profile.stepnumbers and L['step_num']:format(stepnum)
						local reqtext = stepdata.requirement and ((stepdata:AreRequirementsMet() and "|cff44aa44" or "|cffbb0000") .. "(" .. (table.concat(stepdata.requirement,L["stepreqor"])):gsub("!([a-zA-Z ]+)",L["req_not"]:format("%1")) .. ")")
						local leveltext = (stepdata.level and stepdata.level>0 and self.db.profile.stepnumbers) and L['step_level']:format(stepdata.level or "?")

						frame.lines[line].label:SetPoint("TOPLEFT")
						frame.lines[line].label:SetPoint("TOPRIGHT")
						frame.lines[line].label:SetText((numbertext or "")..(leveltext or "")..(reqtext or ""))
						--frame.lines[line].label:SetMultilineIndent(1)
						frame.lines[line].goal = nil
						frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
						line=line+1
					else
						frame.lines[line].label:SetPoint("TOPLEFT",ZGV.ICON_INDENT,0)
						frame.lines[line].label:SetPoint("TOPRIGHT")
						frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
					end

					if stepdata:AreRequirementsMet() or self.db.profile.showwrongsteps then
						--#### insert goals

						for i,goal in ipairs(stepdata.goals) do

							if goal:GetStatus()~="hidden" then
								--steptext = steptext .. ("  "):rep(goal.indent or 0) .. goal:GetText() .. "|n"
								local indent = ("  "):rep(goal.indent or 0)
								--local goaltxt = goal:GetText(stepnum>=self.CurrentStepNum)
								local goaltxt = goal:GetText(true)
								if goaltxt~="?" or (goal.action=="info") then
									if goal.action=="info" then
										frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
										frame.lines[line].label:SetText(indent.."|cffeeeecc"..goal.info.."|r")
										frame.lines[line].goal = nil
									else
										local link = ((goal.tooltip and not self.db.profile.tooltipsbelow) or (goal.x and not self.db.profile.windowlocked) or goal.image) and " |cffdd44ff*|r" or ""

										frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
										frame.lines[line].label:SetText(indent..goaltxt..link)
										frame.lines[line].goal = goal
									end
									line=line+1
									--frame.lines[line].label:SetMultilineIndent(1)

									if self.db.profile.tooltipsbelow and goal.tooltip then
										frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
										frame.lines[line].label:SetText(indent.."|cffeeeecc"..goal.tooltip.."|r")
										--frame.lines[line].label:SetMultilineIndent(1)
										frame.lines[line].goal = nil
										line=line+1
									end
								end -- no text, no line!

								-- 'or' between or-positive goals
								-- not anymore
								--[[
								if goal.orlogic and i<#stepdata.goals and stepdata.goals[i+1].orlogic then
									frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsecsize))
									frame.lines[line].label:SetText(indent.."|cffeeeecc"..L['stepgoal_or'].."|r")
									--frame.lines[line].label:SetMultilineIndent(1)
									frame.lines[line].goal = nil
									line=line+1
								end
								--]]
							end
						end

						--[[ -- no more
						-- info line
						if stepdata.info then
							frame.lines[line].label:SetText("|cffeeeecc"..stepdata.info.."|r")
							--frame.lines[line].label:SetMultilineIndent(0)
							frame.lines[line].label:SetFont(FONT,self.db.profile.fontsize)
							frame.lines[line].goal = nil
							line=line+1
						end
						--]]

						-- (level #)
						--[[
						if self.db.profile.showsteplevels then
							frame.lines[line].label:SetText()
							frame.lines[line].goal = nil
							line=line+1
						end
						--]]
					end

					local TMP_TRUNCATE = true
					local heightleft = 400
					if self.db.profile.showallsteps and TMP_TRUNCATE then
						if stepbuttonnum>1 then
							local stepbottom = self.stepframes[stepbuttonnum-1]:GetBottom()
							local scrollbottom = ZygorGuidesViewerFrameScroll:GetBottom()
							if stepbottom and scrollbottom then
								heightleft = stepbottom-scrollbottom - 2*self.STEPMARGIN_Y - 5
							else
								heightleft = 0
								self:Debug("Error in step height calculation! step "..stepbuttonnum.." stepbottom="..tostring(stepbottom).." scrollbottom="..tostring(scrollbottom)..", forcing update")
								self.frameNeedsUpdating=true
							end
						end
					
						if heightleft<self.MIN_STEP_HEIGHT then
							frame:Hide()
							nomoredisplayed=true
							break --continue
						end
					end

					local height=0
					--frame.goallines={}
					local textheight
					frame.truncated=nil
					local abort
					for l=1,20 do
						local lineframe = frame.lines[l]
						local text = lineframe.label
						if l<line and not frame.truncated then
							text:SetWidth(frame:GetWidth()-ICON_INDENT-2*ZGV.STEPMARGIN_X)
							textheight = text:GetHeight()
							height = height + (height>0 and STEP_LINE_SPACING or 0) + textheight
							--text:SetWidth(ZygorGuidesViewerFrameScroll:GetWidth()-30)

							if TMP_TRUNCATE and self.db.profile.showallsteps and height>heightleft then
								lineframe.goal=nil
								if l<=2 then
									abort=true
									break
								else
									frame.truncated=true
									frame.lines[l-1].label:SetText("   . . .")
									frame.lines[l-1].goal=nil
									lineframe:Hide()
									height=height-textheight-STEP_LINE_SPACING
								end
							else
								lineframe:Show()
								--if lineframe.goal then frame.goallines[lineframe.goal.num]=lineframe end
								lineframe:SetHeight(textheight+STEP_LINE_SPACING)
							end

						else
							lineframe:Hide()
							lineframe.goal = nil
						end
					end

					if abort then
						frame:Hide()
						nomoredisplayed=true
						break --continue
					end


					--#### display it properly

					if height<self.MIN_STEP_HEIGHT then
						frame.lines[1]:SetPoint("TOPLEFT",ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
						frame.lines[1]:SetPoint("TOPRIGHT",-ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
						height=self.MIN_STEP_HEIGHT
					else
						frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
						frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
					end

					if not frame.truncated or not TMP_TRUNCATE then
						frame:SetHeight(height + 3*self.STEPMARGIN_Y)
					else
						frame:SetHeight(heightleft + 2*self.STEPMARGIN_Y)
					end

					--end


					-- current step stuff

					if stepbuttonnum>1 then totalheight = totalheight + STEP_SPACING end
					totalheight = totalheight + frame:GetHeight()

					--[[
					if self.db.profile.showallsteps and totalheight>ZygorGuidesViewerFrameScroll:GetHeight() then
						nomoredisplayed=true
						frame:Hide()
						break --continue
					end
					--]]

					if self.db.profile.showallsteps and frame.truncated then
						nomoredisplayed=true
					end


					--oookay, frame is visible, let's fill it for real
					frame:Show()

					if stepdata~=self.CurrentStep then
						for l=1,20 do
							frame.lines[l].back:Hide()
							frame.lines[l].icon:Hide()
						end
					end

					if stepnum==self.CurrentStepNum then
						--frame:EnableMouse(0)
						--frame:SetScript("OnClick",nil)
					else
						--frame:EnableMouse(1)
					end

					if self.db.profile.showallsteps then
						frame:SetAlpha(stepnum<self.CurrentStepNum and 0.4 or 1.0)
					else
						if stepbuttonnum==1 then
							frame:SetAlpha(1.0)
						else
							frame:SetAlpha(0.8-0.4*((stepbuttonnum-1)/(self.db.profile.showcountsteps-1)))
						end
					end

					if stepnum==self.CurrentStepNum then
						frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border_active", edgeSize = 16 })
					else
						frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border", edgeSize = 16 })
					end

					if stepdata:AreRequirementsMet() then
						if stepdata:IsComplete() then
							frame:SetBackdropColor(fromRGBmul_a(self.db.profile.goalbackcomplete,0.5,self.db.profile.stepbackalpha))
							--frame:SetBackdropColor(0,0.7,0,0.5)
							frame.border:SetBackdropBorderColor(1,1,1,1)
						elseif (self.db.profile.showobsolete and stepdata:IsObsolete()) then
							frame:SetBackdropColor(fromRGBmul_a(self.db.profile.goalbackobsolete,0.5,self.db.profile.stepbackalpha))
							frame.border:SetBackdropBorderColor(1,1,1,1)
						elseif (self.db.profile.skipauxsteps and stepdata:IsAuxiliarySkippable()) then
							frame:SetBackdropColor(fromRGBmul_a(self.db.profile.goalbackaux,0.5,self.db.profile.stepbackalpha))
							frame.border:SetBackdropBorderColor(1,1,1,1)
						else
							frame:SetBackdropColor(0.0,0.0,0.0,self.db.profile.stepbackalpha)
							frame.border:SetBackdropBorderColor(1,1,1,1)
						end
					else
						frame:SetBackdropColor(0.5,0.0,0.0,self.db.profile.stepbackalpha)
						frame.border:SetBackdropBorderColor(0.5,0.0,0.0,0.5)
					end

					if self.db.profile.hidestepborders then
						frame.border:Hide()
					else
						frame.border:Show()
					end

					--text:Show()

				else	-- not showing this one

					if frame then
						frame:Hide()
						--[[
						local prename = "ZygorGuidesViewerFrame_Step"..stepnum.."_Text"
						for line=1,10 do
							local text = _G[prename..line]
							text:SetHeight(0.1)
						end
						--]]
						--[[
						frame:SetHeight(0)
						frame:ClearAllPoints()
						frame:SetPoint("TOPLEFT")
						--]]
					end
				end
			until true end

			self.stepchanged=false

			-- set minimum frame size to one step
			minh = self.stepframes[1]:GetHeight() + 40

			self:UpdateFrameCurrent()

			ZygorGuidesViewerFrame_Skipper:Show()
			ZygorGuidesViewerFrame_Skipper.mustbevisible=true

			--self:HighlightCurrentStep()

			-- steps displayed, clear the remaining slots

		else -- no current guide?

			ZygorGuidesViewerFrame_Border_SectionTitle:SetText()

			--ZygorGuidesViewerFrame_LocationLabel:Hide()
			--ZygorGuidesViewerFrame_LevelLabel:Hide()
			ZygorGuidesViewerFrame_MissingText:Show()

			--ZygorGuidesViewerFrame_Divider2:Hide()

			local guides = self:GetGuides()
			if #guides>0 then
				ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_notselected'])
			else
				ZygorGuidesViewerFrame_MissingText:SetText(L['miniframe_notloaded'])
			end
		end

	elseif self.db.profile.displaymode=="gold" then

		local x,y = GetPlayerMapPosition("player")
		local d = GetPlayerFacing()
		if x==gold_ox and y==gold_oy and d==gold_od and not full then return end
		gold_ox,gold_oy,gold_od = x,y,d

		-- get rid of tooltips, before they get messed up
		if ZGV.hasTooltipOverSpotLink then GameTooltip:Hide() ZGV.hasTooltipOverSpotLink=nil end

		-- hide step frames, if visible
		if self.stepframes[1]:IsVisible() then for i,stepframe in ipairs(self.stepframes) do stepframe:Hide() end end

		local spots
		if self.db.profile.golddistmode==1 then spots = ZGV:GetMapSpotsInRange()
		elseif self.db.profile.golddistmode==2 then spots = ZGV:GetMapSpotsInZone()
		else spots = ZGV:GetAllMapSpots()
		end

		if #spots>0 then
			if full then
				ZygorGuidesViewerFrameScroll:Show()
				ZygorGuidesViewerFrame_MissingText:Hide()
				if ZygorGuidesViewerFrameScrollScrollBar:GetValue()<1 then ZygorGuidesViewerFrameScrollScrollBar:SetValue(1) end
				ZygorGuidesViewerFrameScrollScrollBar:Show()
				ZygorGuidesViewerFrameScrollScrollBar:SetMinMaxValues(1,#spots)
				if ZygorGuidesViewerFrame_Skipper then ZygorGuidesViewerFrame_Skipper:Hide() end
				ZygorGuidesViewerFrame_Border_SectionTitle:SetText("Gold Spots")
			end

		else -- no gold guides or no spots in range
			ZygorGuidesViewerFrameScroll:Hide()
			ZygorGuidesViewerFrame_MissingText:Show()

			if #self.registeredmapspotsets>0 then
				ZygorGuidesViewerFrame_MissingText:SetText(L['gold_missing_nospotsinrange'])
			else
				ZygorGuidesViewerFrame_MissingText:SetText(L['gold_missing_noguidesloaded'])
			end
		end

		local totalheight = 0

		local frame
		local spotnum

		local firstspot = math.floor(ZygorGuidesViewerFrameScrollScrollBar:GetValue())
		if firstspot<1 then firstspot=1 end
		local lastspot = #spots

		--self:Debug("first step "..firststep..", last step "..laststep)
		-- run through buttons and assign steps for them

		local nomoredisplayed=false
		
		for spotbuttonnum = 1,self.StepLimit do repeat
			--frame = _G['ZygorGuidesViewerFrame_Step'..stepbuttonnum]
			frame = self.spotframes[spotbuttonnum]
			assert(frame,"Out of spot frames at "..spotbuttonnum)
			
			spotnum = firstspot + spotbuttonnum - 1
			
			-- show this button at all?
			if spotnum>=firstspot and spotnum<=lastspot and spotnum<=#spots then
				local spotdata = spots[spotnum]
				assert(spotdata,"UpdateFrame: No data for spot "..spotnum)

				if nomoredisplayed then
					frame:Hide()
					break --continue
				end

				frame.spotnum = spotnum
				frame.spot = spotdata

				--#### position step frame

				frame:SetWidth(ZygorGuidesViewerFrameScrollChild:GetWidth()) -- this is needed so the text lines below can access proper widths

				-- out of screen space? bail.
				-- but only in all steps mode!
				local top=frame:GetTop()
				local bottom=ZygorGuidesViewerFrameScroll:GetBottom()
				if top and bottom and top<bottom then
					frame:Hide()
					nomoredisplayed=true
					break --continue!
				end

				--#### fill it with text

				-- no translation here
				--[[
				local changed,dirty = stepdata:Translate()
				if dirty then self.frameNeedsUpdating=true end
				--]]

				local line=1

				assert(frame.lines[line],"Out of lines ("..line..") in spot frame "..spotbuttonnum)

				frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
				
				-- cardinal names
				--frame.lines[line].label:SetText(("|cffffbb00%s|r (%s %s)"):format(spotdata.title or "?",ZGV.FormatDistance(spotdata.waypoint.minimapFrame.dist),GetCardinalDirName(Astrolabe:GetDirectionToIcon(spotdata.waypoint.minimapFrame))))

				-- icons
				local dirnum=GetCardinalDirNum(-Astrolabe:GetDirectionToIcon(spotdata.waypoint.minimapFrame) + GetPlayerFacing())-1 --:30:30:0:0:32:32:0:0:0:0
				local dirnum2=dirnum>8 and 16-dirnum or dirnum
				local arrow = ("|Tinterface\\addons\\ZygorGuidesViewer\\skin\\arrow-mini-multi:20:20:0:0:32:512:%d:%d:%d:%d|t"):format(dirnum>8 and 32 or 0,dirnum>8 and 0 or 32,dirnum2*32,(dirnum2+1)*32)
				frame.lines[line].label:SetText(("%s |cffffbb00%s|r (%s)"):format(arrow, spotdata.title or "?",ZGV.FormatDistance(spotdata.waypoint.minimapFrame.dist)))
				
				line=line+1

				--[[
				frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
				frame.lines[line].label:SetText(("|cffffff00%s %s,%s|r"):format(spotdata.map,spotdata.x,spotdata.y))
				line=line+1
				--]]

				if (spotdata.desc) then
					frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
					frame.lines[line].label:SetText(("%s"):format(spotdata.desc))
					line=line+1
				end


				if spotdata.objects then
					for s,source in ipairs(itemsources) do
						local objs = spotdata:GetObjectsOfType(source,true)
						if objs then
							local mobs = source=="drop" and spotdata.mobs
							local mobtext
							if mobs then
								mobtext = ""
								for i,mob in ipairs(spotdata.mobs) do
									if #mobtext>0 then mobtext = mobtext .. ", " end
									mobtext = mobtext .. mob.name
								end
							elseif spotdata.vendorid then
								mobtext = spotdata.vendor
							end
							
							--[[
							-- all in one line; tidy but impractical
							local header = L['gold_header_'..source]:format(mobtext or "mob")
							local str=""
							for o,obj in ipairs(objs) do
								if not obj.hidden then
									if obj.item.id then
										str = str .. "|Hitem:"..obj.item.id.."|h"..(obj.icon or "item").."|h "
									else
										str = str .. " ["..obj.item.name.."]"
									end
								end
							end

							if #str>0 then
								frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
								--frame.lines[line].label:SetText("<html><body><p>"..("|cffdddd66%s |r%s"):format(header,str).."</p></body></html>")
								frame.lines[line].label:SetText(("|cffdddd66%s |r%s"):format(header,str))
								line=line+1
							end
							--]]

							local goodobjs = {}
							for o,obj in ipairs(objs) do
								if not obj.hidden then
									tinsert(goodobjs,obj)
								end
							end

							if #goodobjs then
								frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize))
								--frame.lines[line].label:SetText("<html><body><p>"..("|cffdddd66%s |r%s"):format(header,str).."</p></body></html>")
								frame.lines[line].label:SetText(("|cffdddd66%s|r"):format(L['gold_header_'..source]:format(mobtext or "mob")))
								line=line+1

								for o,obj in ipairs(goodobjs) do
									local str
									if obj.item.id then
										str = "|Hitem:"..obj.item.id.."|h"..(obj.icon or "item").." "..(obj.string or "?").."|h "
									else
										str = obj.item.name
									end

									if obj.toohard then str = "|cffff0000"..str.."|r" end

									frame.lines[line].label:SetFont(FONT,round(self.db.profile.fontsize*1.0))
									frame.lines[line].label:SetText(str)
									frame.lines[line].label:SetHyperlinksEnabled(false)
									frame.lines[line].label.reenableHyperlinks=true
									line=line+1

								end
							end
						end
					end
				end

				local TMP_TRUNCATE = true
				local heightleft = 400
				if TMP_TRUNCATE then
					if spotbuttonnum>1 then
						local spotbottom = self.spotframes[spotbuttonnum-1]:GetBottom()
						local scrollbottom = ZygorGuidesViewerFrameScroll:GetBottom()
						if spotbottom and scrollbottom then
							heightleft = spotbottom-scrollbottom - 2*self.STEPMARGIN_Y - 5
						else
							heightleft = 0
							self:Debug("Error in spot height calculation! spot "..spotbuttonnum.." spotbottom="..tostring(spotbottom).." scrollbottom="..tostring(scrollbottom)..", forcing update")
							--self.frameNeedsUpdating=true
						end
					end
				
					if heightleft<self.MIN_STEP_HEIGHT then
						frame:Hide()
						nomoredisplayed=true
						break --continue
					end
				end

				local height=0
				--frame.goallines={}
				local textheight
				frame.truncated=nil
				local abort

				for l=1,20 do
					local lineframe = frame.lines[l]
					local text = lineframe.label
					if l<line and not frame.truncated then
						text:SetWidth(frame:GetWidth()-ICON_INDENT-2*ZGV.STEPMARGIN_X)
						
						-- old non-HTML stuff
						--textheight = text:GetHeight()
						textheight = text:GetRegions():GetHeight()
						text:SetHeight(textheight)

						height = height + (height>0 and STEP_LINE_SPACING or 0) + textheight
						--text:SetWidth(ZygorGuidesViewerFrameScroll:GetWidth()-30)

						if TMP_TRUNCATE and height>heightleft then
							if l<=2 then
								abort=true
								break
							else
								frame.truncated=true
								frame.lines[l-1].label:SetText("   . . .")
								lineframe:Hide()
								height=height-textheight-STEP_LINE_SPACING
							end
						else
							lineframe:Show()
							--if lineframe.goal then frame.goallines[lineframe.goal.num]=lineframe end
							lineframe:SetHeight(textheight+STEP_LINE_SPACING)
						end

					else
						lineframe:Hide()
					end
				end

				if abort then
					frame:Hide()
					nomoredisplayed=true
					break --continue
				end

				--self:Print(("spot %d, height %s"):format(spotbuttonnum,height))

				--#### display it properly

				if height<self.MIN_STEP_HEIGHT then
					frame.lines[1]:SetPoint("TOPLEFT",ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
					frame.lines[1]:SetPoint("TOPRIGHT",-ZGV.STEPMARGIN_X,-(self.MIN_STEP_HEIGHT-height)/2-0.6)
					height=self.MIN_STEP_HEIGHT
				else
					frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
					frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
				end

				if not frame.truncated or not TMP_TRUNCATE then
					frame:SetHeight(height + 3*self.STEPMARGIN_Y)
				else
					frame:SetHeight(heightleft + 2*self.STEPMARGIN_Y)
				end

				--end

				if spotbuttonnum>1 then totalheight = totalheight + STEP_SPACING end
				totalheight = totalheight + frame:GetHeight()


				if frame.truncated then
					nomoredisplayed=true
				end

				--oookay, frame is visible, let's fill it for real
				frame:Show()

				frame:SetBackdropColor(0.0,0.0,0.0,self.db.profile.stepbackalpha)

				if self.db.profile.hidestepborders then
					frame.border:Hide()
				else
					frame.border:Show()
					frame.border:SetBackdrop({ edgeFile = "Interface\\Addons\\ZygorGuidesViewer\\skin\\popup_border_active", edgeSize = 16 })
					frame.border:SetBackdropBorderColor(1,1,1,1)
				end

				ZygorGuidesViewerFrame_Skipper:Hide()
				ZygorGuidesViewerFrame_Skipper.mustbevisible=false

				--text:Show()

			else	-- not showing this one

				if frame then
					frame:Hide()
					--[[
					local prename = "ZygorGuidesViewerFrame_Step"..stepnum.."_Text"
					for line=1,10 do
						local text = _G[prename..line]
						text:SetHeight(0.1)
					end
					--]]
					--[[
					frame:SetHeight(0)
					frame:ClearAllPoints()
					frame:SetPoint("TOPLEFT")
					--]]
				end
			end
		until true end

		self.stepchanged=false

		-- set minimum frame size to one step
		minh = self.spotframes[1]:GetHeight() + 40

		--self:HighlightCurrentStep()

		-- steps displayed, clear the remaining slots

	
		--ZygorGuidesViewerFrame_Border_TitleBar_PrevButton:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_NextButton:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_Step:Show()
		--ZygorGuidesViewerFrame_Border_TitleBar_StepText:SetText(self.CurrentStepNum)
		--ZygorGuidesViewerFrame_Border_TitleBar_StepText:Show()

	end

	if minh<100 then minh=100 end
	self.Frame:SetMinResize(260,minh)
	if self.Frame:GetHeight()<minh-0.01 then self.Frame:SetHeight(minh) end

	self:ResizeFrame()

	if self.delayFlash and self.delayFlash>0 then
		self.delayFlash=2 --ready to flash!
		--ZygorGuidesViewerFrame_bdflash:StartRGB(1,1,1,1,0,1,0,1)
	end
end

function me:ClearFrameCurrent()
	if InCombatLockdown() then return end
	for i=1,20 do
		local actname = "ZygorGuidesViewerFrame_Act"..i
		local action = _G[actname..'Action']
		local petaction = _G[actname..'PetAction']
		local cooldown = _G[actname..'ActionCooldown']

		action:Hide()
		petaction:Hide()
		cooldown:Hide()
	end
end

local actionicon={
	["accept"]=5,
	["turnin"]=6,
	["kill"]=7,
	["get"]=8,
	["collect"]=8,
	["buy"]=8,
	["goal"]=9,
	["home"]=10,
	["fpath"]=11,
	["goto"]=12,
	["talk"]=13
}
setmetatable(actionicon,{__index=function() return 2 end})


function me:UpdateFrameCurrent()
	-- current step!

	if self.CurrentStep then	-- hey, it may be missing, if the whole guide is for another class

		--local mapped = self.CurrentStep.x

		--[[
		if ZGV.db.profile.colorborder then
			local done,possible = ZGV.CurrentStep:IsComplete()
			if done then		ZygorGuidesViewerFrame_Border:SetBackdropBorderColorRGB(ZGV.db.profile.goalbackcomplete)
			elseif possible then	ZygorGuidesViewerFrame_Border:SetBackdropBorderColorRGB(ZGV.db.profile.goalbackincomplete)
			else			ZygorGuidesViewerFrame_Border:SetBackdropBorderColor(0.7,0.7,0.7,1)
			end
		else ZygorGuidesViewerFrame_Border:SetBackdropBorderColor(0.7,0.7,0.7,1)
		end
		--]]

		--[[
		ZygorGuidesViewerFrame_ActiveStep:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
							    edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
							    tile = true, tileSize = 16, edgeSize = 16, 
							    insets = { left = 4, right = 4, top = 4, bottom = 4 }})
		--]]
		
		--[[
		if self.CurrentStep.requirement then
			ZygorGuidesViewerFrame_ActiveStep_Line0:SetText((self.CurrentStep:AreRequirementsMet() and "|cff88cc88" or "|cffbb0000") .. "(" .. table.concat(self.CurrentStep.requirement,L["stepreqor"]) .. ")")
			height = height + ZygorGuidesViewerFrame_ActiveStep_Line0:GetHeight()+STEP_LINE_SPACING
			ZygorGuidesViewerFrame_ActiveStep_Line1:ClearAllPoints()
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_ActiveStep_Line0,"BOTTOMLEFT",-ICON_INDENT,-STEP_LINE_SPACING)
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPRIGHT",ZygorGuidesViewerFrame_ActiveStep_Line0,"BOTTOMRIGHT",0,-STEP_LINE_SPACING)
			ZygorGuidesViewerFrame_ActiveStep_Line0:Show()
		else
			ZygorGuidesViewerFrame_ActiveStep_Line1:ClearAllPoints()
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_ActiveStep)
			ZygorGuidesViewerFrame_ActiveStep_Line1:SetPoint("TOPRIGHT",ZygorGuidesViewerFrame_ActiveStep)
			ZygorGuidesViewerFrame_ActiveStep_Line0:Hide()
		end
		--]]

		local name, line,label,icon,back,clicker,anim_w2g,anim_w2r,action,petaction,cooldown, lastlabel
		local height = 0

		if not self.stepframes[1].stepnum then return end

		local framenum = (self.CurrentStepNum - self.stepframes[1].stepnum + 1)
		if framenum<1 or framenum>self.StepLimit then
			self.CurrentStepframeNum = nil
			return self:ClearFrameCurrent()
		else
			self.CurrentStepframeNum = framenum
		end

		local stepframe = self.stepframes[framenum]
		if not stepframe.lines[1].icon then
			ZygorGuidesViewerFrame_Step_Setup(framenum)
		end

		if not stepframe:IsVisible() then
			return self:ClearFrameCurrent()
		end

		--textline(1):ClearAllPoints()
		--textline(1):SetPoint("TOPLEFT",stepframe,"TOPLEFT",0,self.CurrentStep.requirement and -textline(1):GetHeight()-STEP_LINE_SPACING or 0)
		--textline(1):SetPoint("TOPRIGHT",stepframe,"TOPRIGHT",0,self.CurrentStep.requirement and -textline(1):GetHeight()-STEP_LINE_SPACING or 0)

		if self.BUTTONS_INLINE then
			if not InCombatLockdown() then self.actionsvisible = false end
		end

		for i=1,20,1 do  -- update all lines
			--local linenum = (self.CurrentStep.requirement and i+1 or i)

			line = stepframe.lines[i]
			if not line then break end
			label = line.label
			icon = line.icon
			back = line.back
			clicker = line.clicker
			anim_w2g = line.anim_w2g
			anim_w2r = line.anim_w2r

			-- don't even touch this in combat.
			local actname = "ZygorGuidesViewerFrame_Act"..i
			action = _G[actname..'Action']
			petaction = _G[actname..'PetAction']
			cooldown = _G[actname..'ActionCooldown']

			if line.goal then

				local goal = line.goal

				lastlabel = label

				--steptext = ("  "):rep(goal.indent or 0)
				--if i==1 then steptext = steptext .. self.CurrentStepNum .. ". " end
				--steptext = steptext .. goal:GetText(true)

				--steptext = string.gsub(steptext,"\t([a-z]+\. )","\t|cffffff88%1|r")
				--steptext = string.gsub(steptext,"\t",">")

				if not InCombatLockdown() and not stepframe.slideup:IsPlaying() then
					if goal:IsActionable() then
						--	cooldown:Show()
						--self:Debug("showing cooldown "..i)
						local vis

						if not self.BUTTONS_INLINE then
							action:Raise() --SetFrameLevel(ZygorGuidesViewerFrame:GetFrameLevel()+10)
							petaction:Raise() --petaction:Raise()--SetFrameLevel(ZygorGuidesViewerFrame:GetFrameLevel()+10)
						end

						if goal.castspell and goal.castspellid then
							action:SetAttribute("type1","spell")
							action:SetAttribute("spell1",goal.castspell)
							action.spellid = goal.castspellid
							_G[actname.."ActionIcon"]:SetTexture(select(3, GetSpellInfo(goal.castspellid or goal.castspell)) or "Interface\\Icons\\Spell_Nature_FaerieFire")
							--action:SetScript("OnClick",function(self) PetActionButton_OnClick(self,"LeftButton") end)
							vis=true
							--	local start,dur,en = GetSpellCooldown(goal.castspellid or goal.castspell)
							--DoCooldown(cooldown,start,dur,en)

						elseif goal.useitem or goal.useitemid then
							action:SetAttribute("type1","item")
							action:SetAttribute("item1",goal.useitemid and "item:"..goal.useitemid  or  goal.useitem)
							_G[actname.."ActionIcon"]:SetTexture(select(10, GetItemInfo(goal.useitemid or goal.useitem)) or "Interface\\Icons\\INV_Misc_Bag_08")
							vis=true
							--local start,dur,en = GetItemCooldown(goal.useitemid or goal.useitem)
							--DoCooldown(cooldown,start,dur,en)

						elseif goal.script then
							action:SetAttribute("type1","macro")
							action:SetAttribute("macro","ZygorGuidesMacro"..goal.num)
							_G[actname.."ActionIcon"]:SetTexture(select(2,GetMacroInfo(goal.macro)))
							vis=true

						elseif goal.petaction then
							local num,name,subtext,tex = FindPetActionInfo(goal.petaction)
							if num then
								petaction:SetID(num)
								petaction.tooltipName=name
								petaction.tooltipSubtext=subtext
								--action:SetScript("OnClick",function(self) PetActionButton_OnClick(self,"LeftButton") end)
								_G[actname.."PetActionIcon"]:SetTexture(tex)
								petaction:Show()
								petaction:ClearAllPoints()
								petaction:SetPoint("CENTER",UIParent,"BOTTOMLEFT",icon:GetLeft()+8,icon:GetBottom()+8)
								petaction:SetScale(self.db.profile.framescale)
							else
								petaction:Hide()
							end
						else
							error("IsActionable but no item/spell!")
							--[[
							if not InCombatLockdown() then
								action:Hide()
							end
							cooldown:Hide()
							--]]
						end

						if vis then
							action:Show()
							action:SetScale(self.db.profile.framescale)
							if self.BUTTONS_INLINE then
								action:SetParent(clicker)
								action:ClearAllPoints()
								action:SetPoint("CENTER",clicker,"LEFT",8,0)
								self.actionsvisible = true
							else
								action:ClearAllPoints()
								action:SetPoint("CENTER",UIParent,"BOTTOMLEFT",(icon:GetLeft() or 0) +8,(icon:GetBottom() or 0)+8)
							end
						end

						--cooldown:Show()
					else
						action:Hide()
						petaction:Hide()
						cooldown:Hide()
					end

					-- cooldown flasher
					local DoCooldown = function (cooldown,start,dur,en)
						CooldownFrame_SetTimer(cooldown, start, dur, en)

						-- is this useless or what
						if not InCombatLockdown() then
							if dur>0 then
								--cooldown:Show()
								--self.recentCooldownsPulsing[goal] = nil
								--self.recentCooldownsStarted[goal] = 1
								--self:Debug("pulse: showing")
							else
								--[[
								if not self.recentCooldownsPulsed[goal] and not self.recentCooldownsPulsed[goal] then
									self.recentCooldownPulses[goal] = self:ScheduleTimer("HideCooldown",1.0,{goal=goal,cooldown=cooldown})
									self:Debug("pulse: not pulsed, pulsing now and delaying")
								end

								if self.recentCooldownsStarted[goal] and self.recentCooldownsPulsing[goal] and self.recentCooldownsPulsing[goal]==1 then
									cooldown:Show()
									self:Debug("pulse: showing, awaiting delayed hiding")
								else
									cooldown:Hide()
								end
								--]]
							end
						else
							--cooldown:Show()
						end
					end
				end

				local status,detail = goal:GetStatus()

				if status=="passive" then

					if goal.action=="talk" then
						icon:SetIcon(actionicon[goal.action])
					else
						icon:SetIcon(1)
					end
					icon:SetDesaturated(false)
					back:SetVertexColor(0.0,0.0,0.0,0)

				elseif status=="incomplete" then
				
					local progress = type(detail)=="number" and detail or 0

					local inc=self.db.profile.goalbackincomplete
					local pro=self.db.profile.goalbackprogressing
					local com=self.db.profile.goalbackcomplete
					local a = self.db.profile.goalbackincomplete.a
					local r,g,b = self.gradient3(self.db.profile.goalbackprogress and progress*0.7 or 0,  inc.r,inc.g,inc.b, pro.r,pro.g,pro.b, com.r,com.g,com.b, 0.5)

					--local r,g,b,a = gradientRGBA(self.db.profile.goalbackincomplete,self.db.profile.goalbackcomplete,self.db.profile.goalbackprogress and progress*0.7 or 0)

					if goal.action~="goto" and progress>(self.recentGoalProgress[goal] or 1) then
						if self.db.profile.goalupdateflash and self.frameNeedsResizing==0 then
							anim_w2r.r,anim_w2r.g,anim_w2r.b,anim_w2r.a = r,g,b,a
							anim_w2r:Play()
							self:Debug("Animating progress: "..goal:GetText())
						end
					end
					icon:SetIcon(actionicon[goal.action])
					icon:SetDesaturated(false)
					if anim_w2r:IsDone() or not anim_w2r:IsPlaying() then
						back:SetVertexColor(r,g,b,a)
					end
					self.recentGoalProgress[goal] = progress

				elseif status=="complete" then

					if not self.recentlyCompletedGoals[goal] then
						self.recentlyCompletedGoals[goal]=true
						if self.db.profile.goalcompletionflash or self.db.profile.goalupdateflash and self.frameNeedsResizing==0 then
							anim_w2g:Play()
							self:Debug("Animating completion.")
						end

						-- if a goal just completed, unpause.
						self.pause=nil
					end
					icon:SetIcon(3)
					icon:SetDesaturated(false)
					if anim_w2g:IsDone() or not anim_w2g:IsPlaying() then
						back:SetVertexColor(fromRGBA(self.db.profile.goalbackcomplete))
					end

				elseif status=="impossible" then

					--impossible!
					icon:SetIcon(actionicon[goal.action])
					icon:SetDesaturated(true)
					back:SetVertexColor(fromRGBA(self.db.profile.goalbackimpossible))

				elseif status=="obsolete" then
					
					--icon:SetIcon(actionicon[goal.action])
					--icon:SetDesaturated(false)
					back:SetVertexColor(fromRGBA(self.db.profile.goalbackobsolete))
				
				end

				icon:SetWidth(self.db.profile.fontsize*1.4)
				icon:SetHeight(self.db.profile.fontsize*1.4)
				if self.db.profile.goalbackgrounds then back:Show() else back:Hide() end
				if self.db.profile.goalicons then icon:Show() icon:SetAlpha(1.0) else icon:Hide() end

				if self.BUTTONS_INLINE then
					if action:IsShown() then icon:Hide() end
				end
				
				--clicker:Show()

				--height = height + line:GetHeight()
			else
				icon:Hide()
				back:Hide()
				if not InCombatLockdown() then action:Hide() petaction:Hide() end
				cooldown:Hide()
				--label:SetText("")
				--label:SetHeight(0)
				
				--line:SetHeight(0)  -- NO. This breaks stuff.
				-- but... it's necessary..!
				
				--line:SetHeight(0)
				--cooldown:Hide()
			end
		end

		if lastlabel then
			--ZygorGuidesViewerFrame_Divider2:SetPoint("TOPLEFT",lastlabel,"BOTTOMLEFT",-15,-4)
		end

		--ZygorGuidesViewerFrame_TextTitle:SetText(self.CurrentStep.title or "")
		--if ZygorGuidesViewerFrame_TextTitle:GetRight() then ZygorGuidesViewerFrame_TextTitle:SetWidth(ZygorGuidesViewerFrame_TextTitle:GetRight()-ZygorGuidesViewerFrame_TextTitle:GetLeft()) end

		--[[
		ZygorGuidesViewerFrame_TextInfo:SetText(self.CurrentStep.info or "")
		if ZygorGuidesViewerFrame_TextInfo:GetRight() then ZygorGuidesViewerFrame_TextInfo:SetWidth(ZygorGuidesViewerFrame_TextInfo:GetRight()-ZygorGuidesViewerFrame_TextInfo:GetLeft()) end
		--ZygorGuidesViewerFrame_TextInfo:SetPoint("TOPLEFT",self.CurrentStep.title and ZygorGuidesViewerFrame_TextTitle or ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)
		ZygorGuidesViewerFrame_TextInfo:SetPoint("TOPLEFT",ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)

		ZygorGuidesViewerFrame_TextInfo2:SetText(self.CurrentStep.info2 or "")
		if ZygorGuidesViewerFrame_TextInfo2:GetRight() then ZygorGuidesViewerFrame_TextInfo2:SetWidth(ZygorGuidesViewerFrame_TextInfo2:GetRight()-ZygorGuidesViewerFrame_TextInfo2:GetLeft()) end
		--ZygorGuidesViewerFrame_TextInfo2:SetPoint("TOPLEFT",self.CurrentStep.info and ZygorGuidesViewerFrame_TextInfo or (self.CurrentStep.title and ZygorGuidesViewerFrame_TextTitle or ZygorGuidesViewerFrame_Divider2),"BOTTOMLEFT",0,-2)
		ZygorGuidesViewerFrame_TextInfo2:SetPoint("TOPLEFT",self.CurrentStep.info and ZygorGuidesViewerFrame_TextInfo or ZygorGuidesViewerFrame_Divider2,"BOTTOMLEFT",0,-2)

		height = height + ZygorGuidesViewerFrame_TextInfo:GetHeight() + ZygorGuidesViewerFrame_TextInfo2:GetHeight()
		--]]

		-- aaand anchor it.


		--ZygorGuidesViewerFrame_ActiveStep:SetHeight(height)

		--ZygorGuidesViewerFrame_ActiveStep:ClearAllPoints()

		--local t = getglobal("ZygorGuidesViewerFrame_Step"..(self.CurrentStepNum))
		--ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",t,"TOPLEFT")
		--ZygorGuidesViewerFrame_ActiveStep:SetPoint("BOTTOMRIGHT",t,"BOTTOMRIGHT")

		--[[
		if self.db.profile.showallsteps then
			if self.CurrentStepNum==1 then
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",ZygorGuidesViewerFrameScrollChild,"TOPLEFT",0,-STEP_SPACING)
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",ZygorGuidesViewerFrameScrollChild,"TOPRIGHT",0,-STEP_SPACING)
			else
				local t = getglobal("ZygorGuidesViewerFrame_Step"..(self.CurrentStepNum-1))
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",t,"BOTTOMLEFT",0,-STEP_SPACING)
				ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",t,"BOTTOMRIGHT",0,-STEP_SPACING)
			end
		else
			-- it's all alone
			ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPLEFT",ZygorGuidesViewerFrameScrollChild,"TOPLEFT",0,-STEP_SPACING)
			ZygorGuidesViewerFrame_ActiveStep:SetPoint("TOPRIGHT",ZygorGuidesViewerFrameScrollChild,"TOPRIGHT",0,-STEP_SPACING)
		end
		--]]
	end
end

function me:SetFrameScale(scale)
	scale = self.db.profile.framescale
	frame:SetScale(scale)
end

function me:ReanchorFrame()
	local frame = self.Frame
	local framemaster = frame:GetParent()
	local upsideup = not self.db.profile.resizeup

	frame:ClearAllPoints()
	if upsideup then
		--frame:SetPoint("TOP",nil,"TOP",(left+right)/2-(uiwidth/2/scale),top-uiheight/scale)
		--frame:SetPoint("TOP",frame:GetParent(),"BOTTOMLEFT",left+width/2,top)
		frame:SetPoint("TOPLEFT",framemaster,"TOPLEFT",0,0)
		frame:SetClampRectInsets(0,0,-25,0)
	else
		--frame:SetPoint("BOTTOM",nil,"BOTTOM",(left+right)/2-(uiwidth/2/scale),bottom)
		--frame:SetPoint("BOTTOM",frame:GetParent(),"BOTTOMLEFT",left+width/2,bottom)
		frame:SetPoint("BOTTOMLEFT",framemaster,"BOTTOMLEFT",0,0)
		frame:SetClampRectInsets(0,0,0,25)
	end
end

function me:AlignFrame()
	--self:Debug("aligning frame")
	--print("align")
	local frame = self.Frame
	local framemaster = frame:GetParent()

	--[[
	if not frame.aligned then return end
	--if ZGV.stepframes[1].slideup:IsPlaying() then self.delayedalign=true return end

	local scale = frame:GetScale()

	local left,top,bottom,right = frame:GetLeft(),frame:GetTop(),frame:GetBottom(),frame:GetRight()
	--self:Debug(table.concat({math.floor(left),math.floor(right),math.floor(top),math.floor(bottom)},","))
	local width = frame:GetWidth()

	self:Debug(("%.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	-- regain 100% scale
	left=left*scale  right=right*scale  bottom=bottom*scale  top=top*scale  width=width*scale

	self:Debug(("Scaled: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(left,top,bottom,right))

	--]]
	local scale = self.db.profile.framescale

	local width = frame:GetWidth()
	local height = frame:GetHeight()

	-- enter local scale
	--left=left/scale  right=right/scale  bottom=bottom/scale  top=top/scale  width=width/scale

	--self:Debug(("Now %.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))

	--self.temp_scansize=true

	--[[
	if not self.temp_aligncounter then self.temp_aligncounter=0 end
	self.temp_aligncounter=self.temp_aligncounter+1
	if self.temp_aligncounter==1 then a=1/nil end
	--]]

	frame:SetAlpha(self.db.profile.opacitymain)

	local upsideup = not self.db.profile.resizeup

	local UP_TOPLEFT = upsideup and "TOPLEFT" or "BOTTOMLEFT"
	local UP_BOTTOMLEFT = upsideup and "BOTTOMLEFT" or "TOPLEFT"
	local UP_BOTTOM = upsideup and "BOTTOM" or "TOP"
	local UP_TOPRIGHT = upsideup and "TOPRIGHT" or "BOTTOMRIGHT"
	local UP_BOTTOMRIGHT = upsideup and "BOTTOMRIGHT" or "TOPRIGHT"
	local UP = upsideup and 1 or -1

	local UPcoords = function(x1,x2,y1,y2)
		if upsideup then
			return x1,x2,y1,y2
		else
			return x1,x2,y2,y1
		end
	end

	local minimized = self.db.profile.hideborder and self.borderfadedout

	if upsideup then
		framemaster:SetClampRectInsets(0,(width-40)*scale,-45*scale,(-height+55)*scale)
	else
		framemaster:SetClampRectInsets(0,(width-40)*scale,-height*scale,40*scale)
	end

	ZygorGuidesViewerFrame_Border:SetBackdrop({
		--bgFile="Interface\\AddOns\\ZygorGuidesViewer\\Skin\\leavesofsteel_bgr",  -- 3.3.3 BLIZZARD TEXTURE FAIL
		bgFile = "Interface/Tooltips/UI-Tooltip-Background", --instead
		tileSize=128,
		tile=true,
		insets={top=upsideup and 20 or 0,right=0,left=0,bottom=upsideup and 0 or 0}
	})

	-- fix for evil background... wtf.
	ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)

	ZygorGuidesViewerFrame_Skipper:ClearAllPoints()
	ZygorGuidesViewerFrame_Skipper:SetPoint(UP_TOPLEFT,self.Frame,-23,-27*UP)

	ZygorGuidesViewerFrame_Border_SectionTitle:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border_Top,UP_TOPLEFT,30,-5*UP+1)
	ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMRIGHT,-30,10*UP+1)

	ZygorGuidesViewerFrame_Border_TitleBar:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TitleBar:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border,UP_TOPLEFT,0,11*UP)
	ZygorGuidesViewerFrame_Border_TitleBar:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,0,-25*UP)

	ZygorGuidesViewerFrame_Border_LockButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPLEFT,8,-13*UP)
	ZygorGuidesViewerFrame_Border_MiniButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,-40,-5*UP)
	ZygorGuidesViewerFrame_Border_SettingsButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPLEFT,40,-5*UP)
	ZygorGuidesViewerFrame_Border_CloseButton:SetPoint("CENTER",ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,5,-2*UP)
	
	--ntx:SetTexCoord(731/1024,850/1024,76/512,145/512)
	--ptx:SetTexCoord(731/1024,850/1024,211/512,280/512)
	--htx:SetTexCoord(731/1024,850/1024,346/512,415/512)
	ZygorGuidesViewerFrame_Border_GuideButton.upsideup = upsideup
	ZygorGuidesViewerFrame_Border_GuideButton:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_GuideButton:SetPoint(UP_BOTTOM,ZygorGuidesViewerFrame_Border,UP_TOPRIGHT,-58,-19*UP)
	
	if minimized then
		ZygorGuidesViewerFrame_Skipper:Hide()
		ZygorGuidesViewerFrame_Border:Hide()
	else
		if self.db.profile.displaymode=="guide" then
			ZygorGuidesViewerFrame_Skipper:Show()
		else
			ZygorGuidesViewerFrame_Skipper:Hide()
		end
		ZygorGuidesViewerFrame_Border:Show()
	end


	--ZygorGuidesViewerFrame_TitleBar_SectionTitle:SetPoint(TOPLEFT,60,-4*UP)
	--ZygorGuidesViewerFrame_TitleBar_SectionTitle:SetPoint(BOTTOMRIGHT,-60,0)

	-- first line according to up/down orientation, the rest follows
	ZygorGuidesViewerFrameScroll:ClearAllPoints()
	ZygorGuidesViewerFrameScroll:SetPoint(UP_TOPLEFT,self.Frame,UP_TOPLEFT,10,-28*UP)
	ZygorGuidesViewerFrameScroll:SetPoint(UP_BOTTOMRIGHT,self.Frame,-10,10*UP)

	-- resizers
	ZygorGuidesViewerFrame_ResizerBottom:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottom:SetPoint(UP_BOTTOMLEFT,10,0)
	ZygorGuidesViewerFrame_ResizerBottom:SetPoint(UP_TOPRIGHT,self.Frame,UP_BOTTOMRIGHT,-10,10*UP)
	ZygorGuidesViewerFrame_ResizerBottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottomLeft:SetPoint(UP_BOTTOMLEFT,0,0)
	ZygorGuidesViewerFrame_ResizerBottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_ResizerBottomRight:SetPoint(UP_BOTTOMRIGHT,0,0)

	--local back=ZygorGuidesViewerFrame_Border:GetRegions()

	-- textures
	ZygorGuidesViewerFrame_Border_TopLeft:SetWidth(100)
	ZygorGuidesViewerFrame_Border_TopLeft:SetHeight(100*1.225)
	ZygorGuidesViewerFrame_Border_TopLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TopLeft:SetPoint(UP_TOPLEFT,-35,16*UP)
	ZygorGuidesViewerFrame_Border_TopLeft:SetTexCoord(UPcoords(0.095703125,0.2900390625,0.12109375,0.59765625))

	ZygorGuidesViewerFrame_Border_Gear1:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear1:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,10,-32*UP)
	ZygorGuidesViewerFrame_Border_Gear2:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear2:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,4,-15*UP)
	ZygorGuidesViewerFrame_Border_Gear3:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Gear3:SetPoint("CENTER",ZygorGuidesViewerFrame_Skipper,UP_TOPLEFT,20,-56*UP)

	ZygorGuidesViewerFrame_Border_TopRight:SetWidth(100)
	ZygorGuidesViewerFrame_Border_TopRight:SetHeight(100*1.225)
	ZygorGuidesViewerFrame_Border_TopRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_TopRight:SetPoint(UP_TOPRIGHT,35,16*UP)
	ZygorGuidesViewerFrame_Border_TopRight:SetTexCoord(UPcoords(0.515625,0.7099609375,0.12109375,0.59765625))

	ZygorGuidesViewerFrame_Border_BottomLeft:SetWidth(22)
	ZygorGuidesViewerFrame_Border_BottomLeft:SetHeight(22)
	ZygorGuidesViewerFrame_Border_BottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_BottomLeft:SetPoint(UP_BOTTOMLEFT,-3,-4*UP)
	ZygorGuidesViewerFrame_Border_BottomLeft:SetTexCoord(UPcoords(161/1024,204/1024,385/512,428/512))

	ZygorGuidesViewerFrame_Border_BottomRight:SetWidth(22)
	ZygorGuidesViewerFrame_Border_BottomRight:SetHeight(22)
	ZygorGuidesViewerFrame_Border_BottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_BottomRight:SetPoint(UP_BOTTOMRIGHT,3,-4*UP)
	ZygorGuidesViewerFrame_Border_BottomRight:SetTexCoord(UPcoords(204/1024,161/1024,385/512,428/512))

	ZygorGuidesViewerFrame_Border_Top:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Top:SetHeight(35)
	ZygorGuidesViewerFrame_Border_Top:SetPoint(UP_TOPLEFT,28,11*UP)
	ZygorGuidesViewerFrame_Border_Top:SetPoint(UP_TOPRIGHT,-25,11*UP)
	local tx = ZygorGuidesViewerFrame_Border_Top:GetTexture()
	ZygorGuidesViewerFrame_Border_Top:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Top:SetTexture(tx,true)
	ZygorGuidesViewerFrame_Border_Top:SetTexCoord(UPcoords(0,1,0,1))

	ZygorGuidesViewerFrame_Border_Left:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Left:SetPoint(UP_TOPLEFT,-1,-85*UP)
	ZygorGuidesViewerFrame_Border_Left:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMLEFT,9,10*UP)
	tx = ZygorGuidesViewerFrame_Border_Left:GetTexture()
	ZygorGuidesViewerFrame_Border_Left:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Left:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Right:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Right:SetPoint(UP_TOPRIGHT,1,-35*UP)
	ZygorGuidesViewerFrame_Border_Right:SetPoint(UP_BOTTOMLEFT,self.Frame,UP_BOTTOMRIGHT,-9,10*UP)
	ZygorGuidesViewerFrame_Border_Right:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Right:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Bottom:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Bottom:SetPoint(UP_TOPLEFT,self.Frame,UP_BOTTOMLEFT,13,10*UP)
	ZygorGuidesViewerFrame_Border_Bottom:SetPoint(UP_BOTTOMRIGHT,-13,-5*UP)
	ZygorGuidesViewerFrame_Border_Bottom:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Bottom:SetTexture(tx,true)

	ZygorGuidesViewerFrame_Border_Logo:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_Bottom,"CENTER",0,0)

	-- flash stuff... this is a royal PITA.
	ZygorGuidesViewerFrame_Border_Flash_Top:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Top:SetHeight(80)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMLEFT,10,-8*UP)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_Top,UP_BOTTOMRIGHT,0,-8*UP)
	local tx = ZygorGuidesViewerFrame_Border_Flash_Top:GetTexture()
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexture(1)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexture(tx,true)
	ZygorGuidesViewerFrame_Border_Flash_Top:SetTexCoord(UPcoords(0,1,0,1))

	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetWidth(125)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetHeight(139)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetPoint(UP_BOTTOMRIGHT,ZygorGuidesViewerFrame_Border_TopLeft,UP_BOTTOMRIGHT,7,3*UP)
	ZygorGuidesViewerFrame_Border_Flash_TopLeft:SetTexCoord(UPcoords(62/1024,311/1024,23/512,300/512))

	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetWidth(130)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetHeight(90)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetPoint(UP_BOTTOMLEFT,ZygorGuidesViewerFrame_Border_TopRight,UP_BOTTOMLEFT,-13,51*UP)
	ZygorGuidesViewerFrame_Border_Flash_TopRight:SetTexCoord(UPcoords(505/1024,760/1024,28/512,200/512))

	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetWidth(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetHeight(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetPoint(UP_TOPRIGHT,ZygorGuidesViewerFrame_Border_BottomLeft,UP_TOPRIGHT,20,20*UP)
	ZygorGuidesViewerFrame_Border_Flash_BottomLeft:SetTexCoord(UPcoords(121/1024,244/1024,345/512,468/512))

	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetWidth(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetHeight(64)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetPoint(UP_TOPLEFT,ZygorGuidesViewerFrame_Border_BottomRight,UP_TOPLEFT,-20,20*UP)
	ZygorGuidesViewerFrame_Border_Flash_BottomRight:SetTexCoord(UPcoords(244/1024,121/1024,345/512,468/512))

	ZygorGuidesViewerFrame_Border_Flash_Left:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Left:SetPoint(UP_TOPLEFT,-17,-85*UP)
	ZygorGuidesViewerFrame_Border_Flash_Left:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMLEFT,9,10*UP)

	ZygorGuidesViewerFrame_Border_Flash_Right:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Right:SetPoint(UP_TOPLEFT,self.Frame,UP_TOPRIGHT,-10,-35*UP)
	ZygorGuidesViewerFrame_Border_Flash_Right:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMRIGHT,16,10*UP)
	ZygorGuidesViewerFrame_Border_Flash_Right:SetTexCoord(1,0, 1,1, 0,0, 0,1)

	ZygorGuidesViewerFrame_Border_Flash_Bottom:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetPoint(UP_TOPLEFT,self.Frame,UP_BOTTOMLEFT,13,9*UP)
	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetPoint(UP_BOTTOMRIGHT,self.Frame,UP_BOTTOMRIGHT,-13,-15*UP)
	--	ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(UPcoords(1,0,0,0,1,1,0,1))
	if upsideup then
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(1,0,0,0,1,1,0,1)
	else
		ZygorGuidesViewerFrame_Border_Flash_Bottom:SetTexCoord(0,0,1,0,0,1,1,1)
	end

	ZygorGuidesViewerFrame_Border_Flash_Logo:ClearAllPoints()
	ZygorGuidesViewerFrame_Border_Flash_Logo:SetPoint("CENTER",ZygorGuidesViewerFrame_Border_Logo,"CENTER")
end

function me:UpdateSkin()
	SKINDIR = DIR.."\\Skin\\"..self.db.profile.skin

	ZygorGuidesViewerFrame_Border_GuideButton.ntx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_up")
	ZygorGuidesViewerFrame_Border_GuideButton.ptx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_down")
	ZygorGuidesViewerFrame_Border_GuideButton.htx:SetTexture(SKINDIR.."\\leavesofsteel_dropdown_hi")

	ZygorGuidesViewerFrame_Border_TopLeft:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_TopRight:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_BottomLeft:SetTexture(SKINDIR.."\\leavesofsteel")
	ZygorGuidesViewerFrame_Border_BottomRight:SetTexture(SKINDIR.."\\leavesofsteel")

	ZygorGuidesViewerFrame_Border_Logo:SetTexture(SKINDIR.."\\zglogo")

	ZygorGuidesViewerFrame_Skipper_PrevButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_PrevButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_PrevButton.htx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Skipper_NextButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_CloseButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_CloseButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_CloseButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_MiniButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_MiniButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_MiniButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_LockButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_LockButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_LockButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerFrame_Border_SettingsButton.ntx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_SettingsButton.ptx:SetTexture(SKINDIR.."\\titlebuttons")
	ZygorGuidesViewerFrame_Border_SettingsButton.htx:SetTexture(SKINDIR.."\\titlebuttons")

	ZygorGuidesViewerMapIcon.ntx:SetTexture(SKINDIR.."\\zglogo")
	ZygorGuidesViewerMapIcon.ptx:SetTexture(SKINDIR.."\\zglogo")
	ZygorGuidesViewerMapIcon.htx:SetTexture(SKINDIR.."\\zglogo")

	ZygorGuidesViewerFrame_Border_Top:SetTexture(SKINDIR.."\\leavesofsteel_top")

	ZygorGuidesViewerFrame_Border_SectionTitle:SetTextColor(unpack(self.db.profile.skincolors.text))

	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetNormalTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.00,0.25))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetPushedTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.25,0.50))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetDisabledTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.75,1.00))
	ZygorGuidesViewerFrameScrollScrollBarScrollUpButton:SetHighlightTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollUpButton,	SKINDIR.."\\titlebuttons",0.750,0.875,0.50,0.75))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetNormalTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.00,0.25))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetPushedTexture		(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.25,0.50))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetDisabledTexture	(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.75,1.00))
	ZygorGuidesViewerFrameScrollScrollBarScrollDownButton:SetHighlightTexture	(CreateTextureWithCoords(ZygorGuidesViewerFrameScrollScrollBarScrollDownButton,	SKINDIR.."\\titlebuttons",0.875,1.000,0.50,0.75))
	if ZygorGuidesViewerFrameScrollScrollBarThumbTexture then
		ZygorGuidesViewerFrameScrollScrollBarThumbTexture:SetTexture(SKINDIR.."\\leavesofsteel")
	end
	if ZygorGuidesViewerFrameScrollScrollBarTrackerTexture then
		ZygorGuidesViewerFrameScrollScrollBarTrackerTexture:SetTexture(SKINDIR.."\\leavesofsteel")
	end

	if self.db.profile.skin == "remaster" then
		self:ApplyRemasterSkin()
	else
		self:RestoreLegacySkin()
	end

	if self.ApplyFrameLayout then
		self:ApplyFrameLayout()
	end

	self:UpdateLocking()
	self:AlignFrame()
end

function me:ApplyRemasterSkin()
	if not self.framesLoaded or not ZygorGuidesViewerFrame or not ZygorGuidesViewerFrame_Border then
		return
	end
	if self.remasterDefaultsCaptured then
		-- already captured
	else
		self.remasterDefaultsCaptured = true
		self.RemasterDefaults = {}
		self.RemasterDefaults.border = captureFrameBackdrop(ZygorGuidesViewerFrame_Border)
		self.RemasterDefaults.borderAlpha = ZygorGuidesViewerFrame_Border and ZygorGuidesViewerFrame_Border:GetAlpha() or 1
		self.RemasterDefaults.textures = {}
		local texNames = {
			"ZygorGuidesViewerFrame_Border_TopLeft",
			"ZygorGuidesViewerFrame_Border_TopRight",
			"ZygorGuidesViewerFrame_Border_BottomLeft",
			"ZygorGuidesViewerFrame_Border_BottomRight",
			"ZygorGuidesViewerFrame_Border_Top",
			"ZygorGuidesViewerFrame_Border_Logo",
			"ZygorGuidesViewerFrame_Border_Gear1",
			"ZygorGuidesViewerFrame_Border_Gear2",
			"ZygorGuidesViewerFrame_Border_Gear3",
			"ZygorGuidesViewerFrame_Border_Flash_Top",
			"ZygorGuidesViewerFrame_Border_Flash_Left",
			"ZygorGuidesViewerFrame_Border_Flash_Right",
			"ZygorGuidesViewerFrame_Border_Flash_Bottom",
			"ZygorGuidesViewerFrame_Border_Flash_TopLeft",
			"ZygorGuidesViewerFrame_Border_Flash_TopRight",
			"ZygorGuidesViewerFrame_Border_Flash_BottomLeft",
			"ZygorGuidesViewerFrame_Border_Flash_BottomRight",
			"ZygorGuidesViewerFrame_Border_Flash_Logo",
		}
		for _, name in ipairs(texNames) do
			local tex = _G[name]
			if tex and tex.GetAlpha then
				self.RemasterDefaults.textures[name] = { alpha = tex:GetAlpha(), texture = tex.GetTexture and tex:GetTexture() or nil }
			end
		end

		self.RemasterDefaults.layout = {
			scroll = captureFrameLayout(ZygorGuidesViewerFrameScroll),
			titlebar = captureFrameLayout(ZygorGuidesViewerFrame_Border_TitleBar),
			skipper = captureFrameLayout(ZygorGuidesViewerFrame_Skipper),
			buttons = {
				close = captureFrameLayout(ZygorGuidesViewerFrame_Border_CloseButton),
				settings = captureFrameLayout(ZygorGuidesViewerFrame_Border_SettingsButton),
				lock = captureFrameLayout(ZygorGuidesViewerFrame_Border_LockButton),
				mini = captureFrameLayout(ZygorGuidesViewerFrame_Border_MiniButton),
			},
		}
	end

	if ZygorGuidesViewerFrame_Border then
		ZygorGuidesViewerFrame_Border:SetBackdrop({
			bgFile = "Interface\\Buttons\\white8x8",
			edgeFile = "Interface\\Buttons\\white8x8",
			tile = true,
			tileSize = 16,
			edgeSize = 1,
			insets = { left = 1, right = 1, top = 1, bottom = 1 },
		})
		ZygorGuidesViewerFrame_Border:SetBackdropColor(0.08, 0.09, 0.12, 0.9)
		ZygorGuidesViewerFrame_Border:SetBackdropBorderColor(0.2, 0.22, 0.26, 0.8)
	end

	local function hideTexture(name)
		local tex = _G[name]
		if tex and tex.SetAlpha then
			tex:SetAlpha(0)
		end
	end

	hideTexture("ZygorGuidesViewerFrame_Border_TopLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_TopRight")
	hideTexture("ZygorGuidesViewerFrame_Border_BottomLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_BottomRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Top")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Top")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Left")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Right")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Bottom")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_TopLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_TopRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_BottomLeft")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_BottomRight")
	hideTexture("ZygorGuidesViewerFrame_Border_Flash_Logo")

	if ZygorGuidesViewerFrame_Border_Logo and ZygorGuidesViewerFrame_Border_Logo.SetTexture then
		ZygorGuidesViewerFrame_Border_Logo:SetTexture(ZGV.DIR.."\\Skins\\zygorlogo2")
		ZygorGuidesViewerFrame_Border_Logo:SetAlpha(1)
	end

	hideTexture("ZygorGuidesViewerFrame_Border_Gear1")
	hideTexture("ZygorGuidesViewerFrame_Border_Gear2")
	hideTexture("ZygorGuidesViewerFrame_Border_Gear3")

	if ZygorGuidesViewerFrame_Border_SectionTitle then
		ZygorGuidesViewerFrame_Border_SectionTitle:ClearAllPoints()
		ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint("TOPLEFT", ZygorGuidesViewerFrame, "TOPLEFT", 12, -8)
		ZygorGuidesViewerFrame_Border_SectionTitle:SetPoint("TOPRIGHT", ZygorGuidesViewerFrame, "TOPRIGHT", -90, -8)
		ZygorGuidesViewerFrame_Border_SectionTitle:SetJustifyH("LEFT")
		ZygorGuidesViewerFrame_Border_SectionTitle:SetTextColor(0.92, 0.94, 0.98, 1)
	end

	if ZygorGuidesViewerFrame_Border_TitleBar then
		ZygorGuidesViewerFrame_Border_TitleBar:SetHeight(26)
	end

	if ZygorGuidesViewerFrameScroll then
		ZygorGuidesViewerFrameScroll:ClearAllPoints()
		ZygorGuidesViewerFrameScroll:SetPoint("TOPLEFT", ZygorGuidesViewerFrame, "TOPLEFT", 12, -38)
		ZygorGuidesViewerFrameScroll:SetPoint("BOTTOMRIGHT", ZygorGuidesViewerFrame, "BOTTOMRIGHT", -12, 12)
	end

	if ZygorGuidesViewerFrame_Skipper then
		ZygorGuidesViewerFrame_Skipper:ClearAllPoints()
		ZygorGuidesViewerFrame_Skipper:SetPoint("TOPRIGHT", ZygorGuidesViewerFrame, "TOPRIGHT", -10, -34)
	end

	local function placeButton(button, anchor, x, y, size)
		if not button then
			return
		end
		if size then
			button:SetSize(size, size)
		end
		button:ClearAllPoints()
		button:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", x, y)
	end

	local size = 18
	if ZygorGuidesViewerFrame_Border_CloseButton then
		placeButton(ZygorGuidesViewerFrame_Border_CloseButton, ZygorGuidesViewerFrame, -8, -6, size)
	end
	if ZygorGuidesViewerFrame_Border_SettingsButton then
		placeButton(ZygorGuidesViewerFrame_Border_SettingsButton, ZygorGuidesViewerFrame_Border_CloseButton, -20, 0, size)
	end
	if ZygorGuidesViewerFrame_Border_MiniButton then
		placeButton(ZygorGuidesViewerFrame_Border_MiniButton, ZygorGuidesViewerFrame_Border_SettingsButton, -20, 0, size)
	end
	if ZygorGuidesViewerFrame_Border_LockButton then
		placeButton(ZygorGuidesViewerFrame_Border_LockButton, ZygorGuidesViewerFrame_Border_MiniButton, -20, 0, size)
	end
end

function me:RestoreLegacySkin()
	if not self.framesLoaded or not ZygorGuidesViewerFrame or not ZygorGuidesViewerFrame_Border then
		return
	end
	if not self.RemasterDefaults then
		return
	end
	if self.RemasterDefaults.border then
		applyFrameBackdrop(ZygorGuidesViewerFrame_Border, self.RemasterDefaults.border)
	end
	if self.RemasterDefaults.textures then
		for name, data in pairs(self.RemasterDefaults.textures) do
			local tex = _G[name]
			if tex and data then
				if data.texture and tex.SetTexture then
					tex:SetTexture(data.texture)
				end
				if data.alpha and tex.SetAlpha then
					tex:SetAlpha(data.alpha)
				end
			end
		end
	end

	if self.RemasterDefaults.layout then
		applyFrameLayout(ZygorGuidesViewerFrameScroll, self.RemasterDefaults.layout.scroll)
		applyFrameLayout(ZygorGuidesViewerFrame_Border_TitleBar, self.RemasterDefaults.layout.titlebar)
		applyFrameLayout(ZygorGuidesViewerFrame_Skipper, self.RemasterDefaults.layout.skipper)
		if self.RemasterDefaults.layout.buttons then
			applyFrameLayout(ZygorGuidesViewerFrame_Border_CloseButton, self.RemasterDefaults.layout.buttons.close)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_SettingsButton, self.RemasterDefaults.layout.buttons.settings)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_LockButton, self.RemasterDefaults.layout.buttons.lock)
			applyFrameLayout(ZygorGuidesViewerFrame_Border_MiniButton, self.RemasterDefaults.layout.buttons.mini)
		end
	end
end

function me:ResizeFrame()
	--autosize
	--if (self.db.profile.autosize) then
	--print("resize")
	if self.frameNeedsResizing and self.frameNeedsResizing>0 then self.frameNeedsResizing = self.frameNeedsResizing - 1 end
	if self.frameNeedsResizing>0 then return nil end
	if not self.db then return end

	if ZygorGuidesViewerFrame_Border_Bottom:GetRect() then
		local xsize = select(3,ZygorGuidesViewerFrame_Border_Bottom:GetRect())/200
		local ysize = select(4,ZygorGuidesViewerFrame_Border_Left:GetRect())/100
		local ysize2 = select(4,ZygorGuidesViewerFrame_Border_Right:GetRect())/100
		ZygorGuidesViewerFrame_Border_Left:SetTexCoord(0.2,0.8,0,1*ysize)
		ZygorGuidesViewerFrame_Border_Right:SetTexCoord(0.2,0.8,0,1*ysize2)
		ZygorGuidesViewerFrame_Border_Bottom:SetTexCoord(0,-xsize,1,-xsize,0,xsize,1,xsize)
	end
	
	ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)


	--self:Debug("resizing from "..tostring(ZygorGuidesViewerFrame:GetHeight()))

	if self.db.profile.showallsteps or self.db.profile.displaymode=="gold" then
		ZygorGuidesViewerFrameScrollScrollBar:Show()
	else
		-- only autoresize when showing ONE step. If we have many steps, the user handles resizing.
		ZygorGuidesViewerFrameScrollScrollBar:Hide()
		--if not self.CurrentStepNum or not _G['ZygorGuidesViewerFrame_Step'..self.CurrentStepNum] then return end
		local height = 0
		for i=1,self.db.profile.showcountsteps do
			if i>1 then height = height + STEP_SPACING end
			height = height + self.stepframes[i]:GetHeight()
		end

		height = height + 40
		--self:Debug("Height "..height.."  min "..MIN_HEIGHT)
		if height < MIN_HEIGHT then height=MIN_HEIGHT end
		self.Frame:SetHeight(height)
	end


	--self:Debug(("%d %d"):format(left,bottom))
--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_Text:GetHeight()+35)
	

--	if ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop() then
		--ZygorGuidesViewerFrame_Resize.max = ZygorGuidesViewerFrame_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35
		--ZygorGuidesViewerFrame_Resize:Stop()
		--ZygorGuidesViewerFrame_Resize:Play()

--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35)
--	end

--	end
end

function me:GoalProgress(goal)
	return "epic fail"
end


function me:ScrollToCurrentStep()
--	if self.ForceScrollToCurrentStep and self.CurrentStep then
--		self.ForceScrollToCurrentStep = false
		if self.CurrentStep and self.db.profile.displaymode=="guide" then

			local height=0
			local step
			if self.db.profile.showallsteps then
				local topstep = self.stepframes[1].stepnum
				if not topstep then return end
				if self.stepframes[1].stepnum>self.CurrentStepNum --above
				or (topstep+self.StepLimit-1<self.CurrentStepNum) --way below
--				or (ZygorGuidesViewerFrame_Step1:GetTop()-_G['ZygorGuidesViewerFrame_Step'..(self.CurrentStepNum-topstep+1)]:GetBottom()+STEP_SPACING>ZygorGuidesViewerFrameScroll:GetHeight()) --barely offscreen
				or not self.stepframes[self.CurrentStepNum-topstep+1]:IsShown()
				or self.stepframes[self.CurrentStepNum-topstep+1].truncated
				then
					ZygorGuidesViewerFrameScrollScrollBar:SetValue(self.CurrentStepNum)
					ZygorGuidesViewerFrameScrollScrollBar:Show()
				end
			else
				ZygorGuidesViewerFrameScrollScrollBar:Hide()
			end
		end
--	else
--		self.ForceScrollToCurrentStep = true
--	end
end

function me:IsVisible()
	return self.Frame:IsVisible()
end

function me:SetVisible(info,onoff)
	if not onoff and self:IsVisible() then self:ToggleFrame() end
	if onoff and not self:IsVisible() then self:ToggleFrame() end
end

function me:ToggleFrame()
	if self:IsVisible() then
		self.Frame:Hide()
	else
		self.Frame:Show()
	end
end

function me:IsDefaultFitting(default)
	-- deprecated?
	local _,race = UnitRace("player")
	local _,class = UnitClass("player")
	if (class=="DEATHKNIGHT") then race=class end
	default=default:upper()
	race=race:upper()
	class=class:upper()
	return race==default or class==default or race.." "..class==default
end

--- Checks if the player's race/class matches the requirements.
-- @param requirement May be a string or a table of strings (which are then ORed).
-- @return true if matching, false if not.
function me:RaceClassMatch(fit,dkfix)
	if type(fit)=="table" then
		for i,v in ipairs(fit) do if self:RaceClassMatch(v) then return true end end
		return false --otherwise
	end

	local _,race = UnitRace("player")
	local _,class = UnitClass("player")
	race=race:upper()
	class=class:upper()
	if dkfix and class=="DEATHKNIGHT" then race="BLAH" end
	fit=fit:upper()
	local neg=false
	if fit:sub(1,1)=="!" then
		neg=true
		fit=fit:sub(2)
	end
	local ret = (race==fit or class==fit or race.." "..class==fit)
	if neg then return not ret else return ret end
end

function me:RaceClassMatchList(list)
	list=list..","
	local st,en=1
	for fit in list:gmatch("(.-),") do
		if self:RaceClassMatch(fit) then return true end
	end
end

function me:SkipStep(delta,fast)
	if not self.CurrentGuide then return end

	local skipped=0
	local atstart = false

	if self.completioninterval > self.completionintervallong then self.completioninterval = self.completionintervallong end

	self.completionelapsed=0
	repeat
		self:Debug("SkipStep "..delta.." "..(fast and 'fast' or ''))
		local i = self.CurrentStepNum+delta
		if i<1 then
			--if self.CurrentGuideName==1 then return end		-- first section? bail.
			if self.CurrentGuide.defaultfor then 
				atstart=true
				break
			end		-- no skipping back from a starter section.

			--local default = self:FindDefaultGuide()

			if self.CurrentGuide['prev'] then
				self:SetGuide(self.CurrentGuide['prev'])
			else
				local founddef = false
				for i,v in ipairs(self.registeredguides) do
					if v.next==self.CurrentGuideName and (not v.defaultfor or self:RaceClassMatch(v.defaultfor)) then
						self:SetGuide(i)
						founddef=true
						break
					end
				end
				if not founddef then
					atstart=true
					break
				end
			end

			--[[
			if self.CurrentGuide.defaultfor and self.CurrentGuide.defaultfor ~= race then		-- wrong default section? move to ours.
				self:SetGuide(default)
			end
			--]]
			i=#(self.CurrentGuide["steps"])
		end
		if i>#self.CurrentGuide["steps"] or (delta>0 and self.CurrentStep.finish) then
			if self.CurrentGuide['next'] then
				self:SetGuide(self.CurrentGuide['next'])
				i=1
			else
				-- no next? capping
				if self.CurrentStep.finish then
					-- capped
					self.pause=true
					return
				else
					-- cap it
					self.CurrentStep = { num=self.CurrentStepNum+1, parentGuide=self.CurrentStep.parentGuide, finish=true }
					self.CurrentStep.goals={ [1]={ num=1, action="", text="This guide is now complete.", parentStep=self.CurrentStep } }
					setmetatable(self.CurrentStep,ZGV.StepProto_mt)
					setmetatable(self.CurrentStep.goals[1],ZGV.GoalProto_mt)
					tinsert(self.CurrentGuide.steps,self.CurrentStep)
				end
			end
		end
		
		self.pause=not fast
		self.fastforward=fast
		
		self.LastSkip = delta
		self:Debug("LastSkip "..self.LastSkip)

		self:FocusStepQuiet(i) --quiet!
		skipped=skipped+1
		if skipped>10000 then error("Looping on skipping! guide "..self.CurrentGuideName.." step "..i) end
	until self.CurrentStep:AreRequirementsMet()

	if atstart then
		self.pause=true
		self.fastforward=false
	end

	self:FocusStep(self.CurrentStepNum)
end

function me:Print(s)
	ChatFrame1:AddMessage(L['name']..": "..tostring(s))
end

function me:AnimateGears()
	if ZygorGuidesViewerFrame_Border:IsVisible() then
		ZygorGuidesViewerFrame_Border_Gear1_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear1_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear1_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear1.tangle = self.CurrentStepNum*(-11)
		ZygorGuidesViewerFrame_Border_Gear1_turn2:Play()

		ZygorGuidesViewerFrame_Border_Gear2_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear2_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear2_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear2.tangle = self.CurrentStepNum*(65)
		ZygorGuidesViewerFrame_Border_Gear2_turn2:Play()

		ZygorGuidesViewerFrame_Border_Gear3_turn2:Stop()
		--ZygorGuidesViewerFrame_Border_Gear3_turn2:GetAnimations():SetSmoothing(ZygorGuidesViewerFrame_Border_Gear3_turn2:IsPlaying() and "OUT" or "IN_OUT")
		ZygorGuidesViewerFrame_Border_Gear3.tangle = self.CurrentStepNum*(85)
		ZygorGuidesViewerFrame_Border_Gear3_turn2:Play()
	end
end


local function dumpquest(quest)
	local s = ("%d. \"%s\" ##%d (lv=%d%s):\n"):format(quest.index,quest.title,quest.id,quest.level,quest.complete and ", complete" or "")
	for i,goal in ipairs(quest.goals) do
		s = s .. ("... %d. \"%s\" (%s, %s/%s%s)\n"):format(i,goal.leaderboard,goal.type,goal.num,goal.needed,goal.complete and ", complete" or "")
	end
	return s
end



function me:UNIT_INVENTORY_CHANGED(event,unit)
	if unit=="player" then
		self:TryToCompleteStep(true)
	end
end

local blobstate=nil
function me:PLAYER_REGEN_DISABLED()
	--ZygorGuidesViewerFrame_Cover:Show()
	--ZygorGuidesViewerFrame_Cover:EnableMouse(true)
	self:UpdateCooldowns()
	if self.db.profile.hideincombat then
		if self.Frame:IsVisible() then
			UIFrameFadeOut(self.Frame,0.5,1.0,0.0)
			self.hiddenincombat = true
		end
	end

	blobstate = WorldMapBlobFrame:IsShown()
	WorldMapBlobFrame:SetParent(nil)
	--WorldMapBlobFrame:ClearAllPoints()
	WorldMapBlobFrame:Hide()
	WorldMapBlobFrame.Hide = function() blobstate=nil end
	WorldMapBlobFrame.Show = function() blobstate=true end
end

function me:PLAYER_REGEN_ENABLED()
	--ZygorGuidesViewerFrame_Cover:Hide()
	--ZygorGuidesViewerFrame_Cover:EnableMouse(false)
	if self.CurrentStep then self.CurrentStep:PrepareCompletion() end
	self:UpdateFrameCurrent()
	self:UpdateCooldowns()
	if self.hiddenincombat then
		UIFrameFadeIn(self.Frame,0.5,0.0,1.0)
	end
	self.hiddenincombat = nil

	self:UpdateLocking()

	WorldMapBlobFrame:SetParent(WorldMapFrame)
	--WorldMapBlobFrame:SetAllPoints(WorldMapDetailFrame)
	WorldMapBlobFrame.Hide = nil
	WorldMapBlobFrame.Show = nil
	if blobstate then WorldMapBlobFrame:Show() end
end

function me:SPELL_UPDATE_COOLDOWN()
	--self:Debug("Updating cooldowns")
	self:UpdateFrameCurrent()
	self:UpdateCooldowns()
end

function me:PLAYER_CONTROL_GAINED()
	GetRealZoneText()
	self:TryToCompleteStep(true)
end

function me:FindData(array,what,data)
	if not (type(array)=="table") then return nil end
	local i,d
	for i,d in pairs(array) do if d[what]==data then return d end end
end

function me:NewQuestEvent(questTitle,id)
	self:Debug("New Quest: "..(questTitle or "?").." id "..(id or "?"))
	if not id or not questTitle then return end
	--[[
	if self.db.profile.debug then
		for index,quest in pairs(self.quests) do if quest.title==questTitle then
			print(dumpquest(quest))
		end end
	end
	--]]

	self.recentlyAcceptedQuests[questTitle]=true
	self.recentlyAcceptedQuests[id]=true

	if self.Writer then self.Writer:NotifyQuest("NEW",id,questTitle) end
end

function me:CompletedQuestEvent(questTitle,id,daily)
	self:Debug("Completed Quest: "..tostring(questTitle)..", id: "..tostring(id))

	--[[
	if not id then
		for qid,title in pairs(self.db.global.instantDailies) do
			if title==questTitle then id=qid daily=true end
		end
	end
	--]]

	self.completingQuest = nil

	if id then
		self.completedQuests[id]=true
		--self.recentlyCompletedQuests[id]=true
		--if daily then self.db.char.completedDailies[id]=time() end

		if self.CurrentGuide and self.CurrentGuide.daily and daily then self.db.char.permaCompletedDailies[id]=true end
	else
		self.completedQuestTitles[questTitle]=true
		QueryQuestsCompleted() -- start a re-fetch, just in case
		--self.recentlyCompletedQuests[questTitle]=true
		--if daily then self.db.char.completedDailies[questTitle]=time() end
	end
	
	if self.Writer then self.Writer:NotifyQuest("COMPLETED",id,questTitle) end
end

function me:LostQuestEvent(questTitle,id,surelyComplete)
	self:Debug("Lost Quest: "..tostring(questTitle)..", id: "..tostring(id)..", complete: "..tostring(surelyComplete))
	
	-- NO sure-completing. A quest may well be abandoned while complete.
	surelyComplete = false

	--[[
	if (tostring(self.completingQuest)==questTitle or surelyComplete) then
		self.db.char.completedQuests[questTitle]=true
		if id then self.db.char.completedQuests[id]=true end
		self.completingQuest = nil
	end
	--]]

	if self.Writer then self.Writer:NotifyQuest("LOST",id,questTitle) end
end



function me:Frame_OnShow()
	PlaySound("igQuestLogOpen")
	--ZygorGuidesViewerFrame_Filter()
	--[[
	if UnitFactionGroup("player")=="Horde" then
		ZygorGuidesViewerFrameTitleAlliance:Hide()
	else
		ZygorGuidesViewerFrameTitleHorde:Hide()
	end
	--]]
	self.db.profile.visible = not not self.Frame:IsVisible()
	self:UpdateFrame(true)
	self:AlignFrame()

	if self.db.profile.hidearrowwithguide then
		self:SetWaypoint()
	end
end

function me:Frame_OnHide()
	PlaySound("igQuestLogClose")
	self.db.profile.visible = not not self.Frame:IsVisible()
	if not InCombatLockdown() then
		for i=1,20,1 do
			local action = _G["ZygorGuidesViewerFrame_Act"..i.."Action"]
			if action then action:Hide() end
			local cooldown = _G["ZygorGuidesViewerFrame_Act"..i.."ActionCooldown"]
			if cooldown then cooldown:Hide() end
		end
	end

	-- this is a HELL ugly hack.
	-- "Do not hide when it's the World Map that hid us".
	if self.db.profile.hidearrowwithguide
	and not WorldMapFrame.blockWorldMapUpdate -- this would mean we're enlarging the small map
	and not debugstack():find("TOGGLEWORLDMAP") -- UGLY hack
	then
		self:Debug("Hiding arrow with guide")
		self:SetWaypoint(false)
	end
end


function me:GoalOnClick(goalframe,button)
	local stepframe = goalframe:GetParent():GetParent()
	if not self.db.profile.showallsteps and stepframe.step~=self.CurrentStep then return end -- no clicking on non-current steps in compact mode
	--if stepframe:GetScript("OnClick") then stepframe:GetScript("OnClick")(stepframe,button) end

	local goal = goalframe:GetParent().goal
	if not goal then return end
	--local num=goalframe.goalnum
	self:Debug("goal clicked "..tostring(goal.num))
	--local goal = self.CurrentStep.goals[num]
	if button=="LeftButton" then
		if goal.x and not goal.force_noway then
			self:SetWaypoint(goal.num)
		elseif goal.questid then
			--if InCombatLockdown() then return end
			if self.questsbyid[goal.questid] and WorldMap_OpenToQuest then -- 3.3.0
				WorldMap_OpenToQuest(goal.questid)
				local done,posX,posY,obj = QuestPOIGetIconInfo(goal.questid)
				if posX or posY then
					local q = self.questsbyid[goal.questid]
					local title
					if q then title=q.title end
					self:Debug("Setting waypoint to POI: "..posX.." "..posY)
					self:SetWaypoint(posX*100,posY*100,title)
				end
			end
			local max = self.maxQuestLevels[goal.questid]
			self:Print("Quest \""..goal.quest.."\" (#"..tostring(goal.questid).."): done at level "..tostring(goal.parentStep.level)..", reaches to level "..tostring(max))
			local mentioned = me:GetMentionedFollowups(goal.questid)
			if #mentioned>1 then
				local s=""
				for i=2,#mentioned do
					if #s>0 then s=s.."\n" end
					s=s.."\""..(me:GetQuestData(mentioned[i][1]) or "?").."\" (#"..tostring(mentioned[i][1])..") at level "..mentioned[i][2]
				end
				self:Print("Follow-ups:\n"..s)
			else
				self:Print("No follow-ups.")
			end
		end
	else
		if self.recentlyCompletedGoals[goal] then
			self.recentlyCompletedGoals[goal]=false
			self.recentlyStickiedGoals[goal]=false
			self.recentlyVisitedCoords[goal]=false
			if goal.quest and IsShiftKeyDown() then
				self.completedQuests[goal.quest]=nil
				if goal.questid then self.completedQuests[goal.questid]=nil end
				self:Print("Marking quest '"..goal.quest.."'"..(goal.questid and " (#"..goal.questid..")" or "").." as not completed.")
			else
				self:Print("Marking step as incomplete.")
			end
		else
			--self.recentlyCompletedGoals[goal]=true
			self.recentlyStickiedGoals[goal]=true
			if goal.quest and IsShiftKeyDown() then
				self.completedQuests[goal.quest]=true
				if goal.questid then self.completedQuests[goal.questid]=true end
				self:Print("Marking quest '"..goal.quest.."'"..(goal.questid and " (#"..goal.questid..")" or "").." as completed.")
			end
		end
		self.pause=nil
		self.LastSkip=1
		--self.AutoskipTemp = true
		self:UpdateFrame()
	end
end

function me:GoalOnEnter(goalframe)
	local goal = goalframe:GetParent().goal
	if not goal then return end

	local wayline,infoline,image

	if goal.tooltip and not self.db.profile.tooltipsbelow then
		infoline = "|cff00ff00"..goal.tooltip.."|r"
	end
	if goal.x and goal.y and goal.map then
		-- if locked or force_noway, then no clicking, bare info.
		if self.db.profile.windowlocked or goal.force_noway then
			wayline = L['tooltip_waypoint_coords']:format(goal.map.." "..goal.x..";"..goal.y)
		else
			wayline = L['tooltip_waypoint']:format(goal.map.." "..goal.x..";"..goal.y)
		end
	end

	if goal.image then
		image = DIR.."\\Images\\"..goal.image..".tga"
	end

	if infoline or wayline or image then
		GameTooltip:SetOwner(goalframe,"ANCHOR_TOPRIGHT")
		GameTooltip:ClearAllPoints()
		GameTooltip:SetPoint("BOTTOM",goalframe,"TOP")
		GameTooltip:SetText(goal:GetText())

		local lines=1
		if infoline then
			GameTooltip:AddLine(infoline,0,1,0)
			if _G['GameTooltipTextLeft'..lines]:GetWidth()>300 then _G['GameTooltipTextLeft'..lines]:SetWidth(300) end
			lines=lines+1
		end
		if wayline then
			GameTooltip:AddLine(wayline,0,1,0)
			if _G['GameTooltipTextLeft'..lines]:GetWidth()>300 then _G['GameTooltipTextLeft'..lines]:SetWidth(300) end
			lines=lines+1
		end
		GameTooltip:Show()
		if image then
			local img

			--[[
			local img = _G['GameTooltipZygorImage']
			if not img then
				img = GameTooltip:CreateTexture("GameTooltipZygorImage","ARTWORK")
			end
			--]]
			img = GameTooltipTexture1
			GameTooltip:AddLine(" ")
			GameTooltip:AddTexture(image)
			img:ClearAllPoints()
			img:SetPoint("TOPLEFT",_G['GameTooltipTextLeft'..lines],"BOTTOMLEFT")
			--img:SetTexture(image)
			img:SetWidth(128)
			img:SetHeight(128)
			img:Show()
			GameTooltip:Show()
			GameTooltip:SetHeight(150 + lines*20)
		end
	end
end

function me:GoalOnLeave(goalframe,num)
	GameTooltip:Hide()
end


local function insert_guides(arr,guides)
	local data
	for i,guide in ipairs(guides) do
		data = ZGV:GetGuideByTitle(guide.full)
		local item = {
			text = guide.step and L['menu_last_entry']:format(guide.short or "?",guide.step) or (guide.short or "?"),
			checked = function() return ZGV.CurrentGuideName==guide.full end,
			func = function()  CloseDropDownMenus()  ZGV:SetGuide(guide.full,guide.step) end,
			tooltipTitle = data and data.description and guide.short,
			tooltipText = data and data.description,
			tooltipOnButton = true,
		}
		tinsert(arr,item)
	end
end

local function group_to_array(group)
	local arr = {}
	for i,group in ipairs(group.groups) do
		local item = {
			text = group.name,
			hasArrow = true,
			menuList = group_to_array(group),
			keepShownOnClick = true,
			func = function(self) _G[self:GetName().."Check"]:Hide() end,
			--notCheckable = true
		}
		--if #item.menuTable>0 then
			tinsert(arr,item)
		--end
	end
	insert_guides(arr,group.guides)
	return arr
end

local function BuildDropDown_GuideMenu(level,value)
	local self=ZGV
	--[[
	local menu = { }

	menu = group_to_array(self.registered_groups)
	EasyMenu(menu,ZGVFMenu,"ZygorGuidesViewerFrame_Border_TitleBar",30,10,"MENU",3)
	--]]
end

function me:OpenGuideMenu()
	--Dewdrop:Register(ZygorGuidesViewerFrame_Border_TitleBar, 'children', BuildDropDown_GuideMenu, 'point', "TOPRIGHT", 'relativePoint', "RIGHT", 'dontHook', true)
	--Dewdrop:Open(ZygorGuidesViewerFrame_Border_TitleBar)

	-- basic guides
	local menu = group_to_array(self.registered_groups)

	-- history
	tinsert(menu,{ text=L['menu_last'],isTitle=true })
	insert_guides(menu,self.db.char.guides_history)

	-- display!
	UIDropDownMenu_SetAnchor(ZGVFMenu, -50, 15, "TOPRIGHT", ZygorGuidesViewerFrame_Border_TitleBar, "BOTTOMRIGHT")
	--local backdrop = DropDownList1:GetBackdrop()
	--backdrop.edgeSize=16
	--DropDownList1:SetBackdrop(backdrop)
	EasyMenu(menu,ZGVFMenu,nil,30,10,"MENU",3)
	UIDropDownMenu_SetWidth(ZGVFMenu, 300)
end

function me:OpenQuickMenu()
	local menu = {
		--[[
		{
			text = L['opt_group_window'],
			isTitle = true,
		},
		--]]
		{
			text = L['opt_hideborder'],
			tooltipTitle = L['opt_hideborder'],
			tooltipText = L["opt_hideborder_desc"],
			checked = function() return self.db.profile.hideborder end,
			func = function() self:SetOption("Display","hideborder") end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_windowlocked'],
			tooltipTitle = L['opt_windowlocked'],
			tooltipText = L['opt_windowlocked_desc'],
			checked = function()  return self.db.profile.windowlocked end,
			func = function()  self:SetOption("Display","windowlocked")  end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_miniresizeup'],
			tooltipTitle = L['opt_miniresizeup'],
			func = function() self:SetOption("Display","resizeup") end,
			checked = function() return self.db.profile.resizeup end,
			keepShownOnClick = true,
		},
		{
			text = L['opt_hideincombat'],
			tooltipTitle = L['opt_hideincombat'],
			tooltipText = L['opt_hideincombat_desc'],
			checked = function()  return self.db.profile.hideincombat  end,
			func = function()  self:SetOption("Display","hideincombat")  end,
			keepShownOnClick = true,
		},
		--[[
		{
			name = L['opt_group_step'],
			isTitle = true,
		},
		{
			text = L["opt_do_searchforgoal"],
			notCheckable = true,
			func = function() ZGV:SearchForCompleteableGoal() end
		}
		--]]
	}

	EasyMenu(menu,ZGVFMenu,"ZygorGuidesViewerFrame_Border_SettingsButton",0,0,"MENU",3)
end

function me:OpenQuickSteps()
	local menu = {
		{
			text=L["opt_showcountsteps"],
			isTitle = true,
		},
		{
			text=L["opt_showcountsteps_all"],
			func=function() self:SetOption("Display","showcountsteps 0") end,
			checked=function() return self.db.profile.showallsteps end,
		},
		{
			text='1',
			func=function() self:SetOption("Display","showcountsteps 1") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==1 end,
		},
		{
			text='2',
			func=function() self:SetOption("Display","showcountsteps 2") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==2 end,
		},
		{
			text='3',
			func=function() self:SetOption("Display","showcountsteps 3") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==3 end,
		},
		{
			text='4',
			func=function() self:SetOption("Display","showcountsteps 4") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==4 end,
		},
		{
			text='5',
			func=function() self:SetOption("Display","showcountsteps 5") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==5 end,
		},
	}

	EasyMenu(menu,ZGVFMenu,"cursor",0,0,"MENU",3)
end

local function split(str,sep)
	local fields = {}
	str = str..sep
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

local function FindGroup(self,title)
	local path = split(title,"\\")

	-- create one
	local group=self
	for i=1,#path do
		local found = false
		for n,gr in ipairs(group.groups) do
			if gr.name==path[i] then
				found=true
				group=gr
			end
		end
		if not found then
			tinsert(group.groups,{name=path[i],groups={},guides={}})
			group=group.groups[#group.groups]
		end
	end
	return group
end

me.registered_groups = { groups={},guides={}}

function me:RegisterGuide(title,data,extra)
	local group,tit = title:match("^(.*)\\+(.-)$")
	if group then
		group = FindGroup(self.registered_groups,group)
	else
		group = self.registered_groups
	end

	local guide = {['title']=title,['title_short']=tit or title,['rawdata']=data,['extra']=extra}

	tinsert(group.guides,{full=title,short=tit or title,num=#self.registeredguides+1})
	tinsert(self.registeredguides,guide)
end

me.registered_mapspotset_groups = { groups={},guides={}}

function me:RegisterMapSpots(title,data)
	local group,tit = title:match("^(.*)\\+(.-)$")
	if group then
		group = FindGroup(self.registered_mapspotset_groups,group)
	else
		group = self.registered_mapspotset_groups
	end

	local set = self.MapSpotSetProto:NewRaw(title,tit or title,data)

	tinsert(group.guides,{full=title,short=tit or title,num=#self.registeredmapspotsets+1})
	tinsert(self.registeredmapspotsets,set)
end

--[[
function me:UnregisterGuide(name)
	local data
	if type(name)=="number" then
		if self.registeredguides[name] then
			data = self.registeredguides[name].data
			table.remove(self.registeredguides,name)
			self:Print("Unregistered guide number: "..name)
		else
			self:Print("Cannot find guide number: "..name)
			return false
		end
	else
		local i,v
		for i,v in ipairs(self.registeredguides) do
			if v.title==name then
				data = v
				table.remove(self.registeredguides,i)
				self:Print("Unregistered guide: "..name)
			end
		end
		if not data then
			self:Print("Cannot find guide: "..name)
			return false
		end
	end
	if data.is_stored then
		self.db.global.storedguides[name] = nil
		self:Print("Removed stored data for: "..name)
	end
	return true
end
--]]

function me:Startup()
	if self.guidesloaded then return end
	if me:ParseGuides() then
		self:OnGuidesLoaded()
	end
end

function me:OnGuidesLoaded()
	self.Log:Add("Guides loaded. -----")

	self:QueryQuests()

	self:ListMentionedQuests()
	self:CacheMentionedFollowups()

	self.completiontimer = self:ScheduleRepeatingTimer("TryToCompleteStep", 0.1)
	--self.notetimer = self:ScheduleRepeatingTimer("SetWaypoint", 1)
	self.dailytimer = self:ScheduleRepeatingTimer("QuestTracking_ResetDailies", 5)

	--self:CancelTimer(self.startuptimer,true)

	self.pause = true

	self:Print(L['welcome_guides']:format(#self.registeredguides))

	self:UpdateFrame(true)

	self:OnFirstQuestLogUpdate()
end

function me:ParseGuides()
	if not self.db.char.maint_startguides then return true end
	self.loading=true

	if #self.registeredguides>0 then
		for i,guide in ipairs(self.registeredguides) do
			if guide.rawdata then
				local status,parsed,err,line,linedata = pcall(self.ParseEntry,self,guide.rawdata)
				if status and parsed then
					for k,v in pairs(parsed) do guide[k]=v end
					guide.rawdata=nil
					self.loadprogress = i/#self.registeredguides
				else
					if not status then err=parsed end
					if err then
						self:Print(L["message_errorloading_full"]:format(guide.title,line or 0,linedata or "???",err))
					else
						self:Print(L["message_errorloading_brief"]:format(guide.title))
					end
					guide.rawdata=nil
				end
				self:UpdateFrame(true)
				return false
			end
		end
	end

	if #self.registeredmapspotsets>0 then
		for i,guide in ipairs(self.registeredmapspotsets) do
			if guide.rawdata then
				local status,parsedset,err,line,linedata = pcall(self.MapSpotSetProto.ParseRaw,guide)
				if status then
					self.loadprogress = i/#self.registeredmapspotsets
					guide:Show()
				else
					if not status then err=parsedset line=0 linedata="" end
					if err then
						self:Print(L["message_errorloading_full"]:format(guide.title,line,linedata,err))
					else
						self:Print(L["message_errorloading_brief"]:format(guide.title))
					end
					guide.rawdata=nil
				end
				self:UpdateFrame(true)
				return false
			end
		end

		local tab1 = self.Frame.Border.Gears.Tab1
		tab1:SetPoint("LEFT",self.Frame.Border,"TOPLEFT",65,-12)
		tab1:SetText("Guides")
		tab1:SetNormalFontObject(ZGVFTabFont)
		--PanelTemplates_TabResize(self.Tab1,0);
		--_G[self.Tab1:GetName().."HighlightTexture"]:SetWidth(self.Tab1:GetTextWidth() + 20);
		tab1:SetScript("OnClick",function() ZGV:SetDisplayMode("guide") end)
		tab1:Show()

		local tab2 = self.Frame.Border.Gears.Tab2
		tab2:SetPoint("LEFT",tab1,"RIGHT")
		tab2:SetText("Spots")
		tab2:SetNormalFontObject(ZGVFTabFont)
		--ZGVFrameTab2Text:SetText("Spots")
		--PanelTemplates_TabResize(self.Tab2,0);
		--_G[self.Tab2:GetName().."HighlightTexture"]:SetWidth(self.Tab2:GetTextWidth() + 20);
		tab2:SetScript("OnClick",function() ZGV:SetDisplayMode("gold") end)
		tab2:Show()
	end

	self.loading=nil
	self.guidesloaded=true
	return true
end

--[[
function me:RegisterStoredGuides()
	local k,v
	for k,v in pairs(self.db.global.storedguides) do
		table.insert(self.registeredguides,{title=k,data=v,is_stored=true})
		self:Print("Retrieved guide "..k.." from storage.")
	end
end
--]]

function me:UpdateMapButton()
	if self.db.profile.showmapbutton then ZygorGuidesViewerMapIcon:Show() else ZygorGuidesViewerMapIcon:Hide() end
end

function me:GetGuides()
	if not ZygorGuidesViewer or not ZygorGuidesViewer.db or not ZygorGuidesViewer.registeredguides then return {} end
	local t = {}
	for i,data in ipairs(ZygorGuidesViewer.registeredguides) do
		t[i]=data.title
	end
	return t
end

function me.GetGuidesRev()
	if not ZygorGuidesViewer or not ZygorGuidesViewer.db or not ZygorGuidesViewer.registeredguides then return {} end
	local t = {}
	for i,data in ipairs(ZygorGuidesViewer.registeredguides) do
		t[data.title]=i
	end
	return t
end

-- function me:Search(s) --removed
-- function me:Find(s) --removed


local function tostr(val)
	if type(val)=="string" then
		return '"'..val..'"'
	elseif type(val)=="number" then
		return tostring(val)
	elseif not val then
		return "nil"
	elseif type(val)=="boolean" then
		return tostring(val).." ["..type(val).."]"
	end
end

local function superconcat(table,glue)
	local s=""
	for i=1,#table do
		if #s>0 then s=s..glue end
		s=s..tostring(table[i])
	end
	return s
end

local function anytostring(s)
	if type(s)=="table" then
		return superconcat(s,",")
	else
		return tostring(s)
	end
end

function me:BugReport(maint)
	if not self.dumpFrame then self:CreateDumpFrame() end

	HideUIPanel(InterfaceOptionsFrame)
	HideUIPanel(ZygorGuidesViewerMaintenanceFrame)

	local s = ""
	s = ("Zygor Guides Viewer v%s\n"):format(self.version)
	s = s .. "\n"
	s = s .. ("Guide: %s\nStep: %d\n"):format(tostr(self.CurrentGuideName),tostr(self.CurrentStepNum))
	
	if maint then
		s = s .. "\nMAINTENANCE OPTIONS THAT WERE ENABLED PROPERLY: ______________\nMAINTENANCE OPTION THAT CAUSED DISCONNECTION: _______________\n\n"
	end

	local step = self.CurrentStep
	if step then
		for k,v in pairs(step) do
			if k~="goals" and k~="num" and k~="L"
			and k~="isobsolete" and k~="isauxiliary"
			and type(v)~="function" then
				s = s .. ("  %s: %s\n"):format(k,anytostring(v))
			end
		end
		s = s .. ("  (completed: %s, auxiliary: %s, obsolete: %s)\n"):format(step:IsComplete() and "YES" or "no", step:IsAuxiliary() and "YES" or "no", step:IsObsolete() and "YES" or "no")

		s = s .. "Goals: \n"

		for i,goal in ipairs(step.goals) do
			s = s .. ("%d. %s %s\n"):format(i,(". "):rep(goal.indent),goal.text and "\""..goal.text.."\"" or "<"..goal:GetText()..">")
			for k,v in pairs(goal) do
				if k~="map" and k~="x" and k~="y" and k~="dist" 
				and k~="indent" and k~="text" and k~="parentStep" and k~="num" and k~="status"
				and k~="useitem" and k~="useitemid"
				and k~="castspell" and k~="castspellid"
				and k~="quest" and k~="questid" and k~="questreqs"
				and k~="mobs"
				and k~="target" and k~="targetid" and k~="objnum"
				and type(v)~="function" then
					s = s .. ("    %s: %s\n"):format(k,anytostring(v))
				end
			end
			if goal.x or goal.y or goal.action=="goto" then
				s = s .. ("    map: %s %s,%s"):format(goal.map or "unknown",goal.x or "nil",goal.y or "nil")
				if goal.dist then s = s .. ("  +/- %s"):format(goal.dist) end
				s = s .. "\n"
			end
			if goal.useitemid or goal.useitem then
				s = s .. ("   useitem: \"%s\"  ##%s"):format(tostring(goal.useitem),tostring(goal.useitemid))
				if goal.useitemid then
					local a={GetItemInfo(goal.useitemid)}
					s = s .. ("  GetItemInfo(%d) == %s\n"):format(goal.useitemid,superconcat(a,","))
				elseif goal.useitem then
					local a={GetItemInfo(goal.useitem)}
					s = s .. ("  GetItemInfo(\"%s\") == %s\n"):format(goal.useitem,superconcat(a,","))
				end
			end
			if goal.castspellid or goal.castspell then
				s = s .. ("   castspell: \"%s\"  ##%s"):format(tostring(goal.castspell),tostring(goal.castspellid))
				if goal.castspellid then
					local a={GetSpellInfo(goal.castspellid)}
					s = s .. ("  GetSpellInfo(%d) == %s\n"):format(goal.castspellid,superconcat(a,","))
				elseif goal.castspell then
					local a={GetSpellInfo(goal.castspell)}
					s = s .. ("  GetSpellInfo(\"%s\") == %s\n"):format(goal.castspell,superconcat(a,","))
				end
			end
			if goal.quest or goal.questid then
				s = s .. ("    quest: \"%s\" ##%d"):format(tostring(goal.quest),tostring(goal.questid))
				if goal.questid then
					local questdata = self.questsbyid[goal.questid]
					if goal.objnum then
						if questdata then
							local goaltext = questdata.goals[goal.objnum].item
							if not goaltext then goaltext="???" end
							s = s .. (" goal %d: \"%s\""):format(goal.objnum,goaltext)
						else
							s = s .. (" goal %d"):format(goal.objnum)
						end
					else
						s = s .. (" (no goal)")
					end
					if questdata then
						s = s .. "  - quest \""..questdata['title'].."\" ##"..questdata['id'].." in log "
					else
						s = s .. "  - quest not in log "
					end
					if self.completedQuests[goal.questid] then
						s = s .. "(id: completed)"
					else
						s = s .. "(id: not completed)"
						if self.completedQuestTitles[goal.quest] then
							s = s .. " (title: completed)"
						else
							s = s .. " (title: not completed)"
						end
					end
				end
				s = s .. "\n"
			end
			if goal.target then
				s = s .. ("    target: \"%s\""):format(goal.target)
				if goal.targetid then
					s = s .. (" ##%d\n"):format(goal.targetid)
				end
				s = s .. "\n"
			end
			if goal.mobs then
				s = s .. "    mobs: "
				for k,v in ipairs(goal.mobs) do
					s = s .. v.name .. "  "
				end
				s = s .. "\n"
			end
			if goal.questreqs and #goal.questreqs>0 then
				s = s .. "    questreqs: "..superconcat(goal.questreqs,",").."\n"
			end
			if goal.condition_visible then
				s = s .. "    visibility condition: "..goal.condition_visible_raw.."\n"
			end

			if goal:IsCompleteable() then
				local comp,poss = goal:IsComplete()
				s = s .. ("    (complete: %s, possible: %s, auxiliary: %s, obsolete: %s)\n"):format(comp and "YES" or "no", poss and "YES" or "no", step:IsAuxiliary() and "YES" or "no", step:IsObsolete() and "YES" or "no")
			else
				s = s .. "    (not completeable)\n"
			end

			s = s .. "    Status: "..goal:GetStatus().."\n"
		end
		s = s .. "\n"
	else
		s = s .. "No current step loaded.\n\n"
	end

	s = s .. "--- Player information ---\n"
	s = s .. ("Race: %s  Class: %s  Level: %d\n"):format(select(2,UnitRace("player")),select(2,UnitClass("player")),UnitLevel("player"))
	local x,y = GetPlayerMapPosition("player")
	s = s .. ("Position: realzone:'%s' x:%g,y:%g (zone:'%s' subzone:'%s' minimapzone:'%s')\n"):format(GetRealZoneText(),x*100,y*100,GetZoneText(),GetSubZoneText(),GetMinimapZoneText())
	if GetLocale()~="enUS" then
		s = s .. ("    enUS: realzone:'%s' zone:'%s' subzone:'%s' minimapzone:'%s')\n"):format(BZR[GetRealZoneText()],BZR[GetZoneText()],BZR[GetSubZoneText()] or "("..GetSubZoneText()..")",BZR[GetMinimapZoneText()] or "("..GetMinimapZoneText()..")")
		s = s .. ("Locale: %s\n"):format(GetLocale())
	end
	s = s .. "\n"



	s = s .. "-- Cached quest log --\n"
	for index,quest in pairs(self.quests) do
		s = s .. dumpquest(quest)
	end
	s = s .. "\n"

	s = s .. "-- Cached quest log, by ID --\n"
	for id,quest in pairs(self.questsbyid) do
		s = s .. ("#%d: %s\n"):format(id,quest.title)
	end
	s = s .. "\n"

	s = s .. "-- Items --\n"
	local inventory={}
	for bag=-2,4 do
		for slot=1,GetContainerNumSlots(bag) do
			local item = GetContainerItemLink(bag,slot)
			if item then
				local id,name = string.match(item,"item:(.-):.-|h%[(.-)%]")
				local tex,count = GetContainerItemInfo(bag,slot)
				tinsert(inventory,("    %s ##%d x%d\n"):format(name,id,count))
			end
		end
	end
	table.sort(inventory)
	s = s .. table.concat(inventory,"")
	s = s .. "\n"

	s = s .. "-- Buffs/debuffs --\n"
	for i=1,30 do
		local name,_,tex = UnitBuff("player",i)
		if name then s=s..("%s (\"%s\")\n"):format(name,tex) end
	end
	for i=1,30 do
		local name,_,tex = UnitDebuff("player",i)
		if name then s=s..("%s (\"%s\")\n"):format(name,tex) end
	end
	s = s .. "\n"

	s = s .. "-- Pet action bar --\n"
	for i=1,12 do
		local name,_,tex = GetPetActionInfo(i)
		if name then s=s..("%d. %s (\"%s\")\n"):format(i,name,tex) end
	end
	s = s .. "\n"

	s = s .. "-- Flight Paths --\n"
	if self.LibTaxi then
		s = s .. table.concat(TableKeys(self.db.char.taxis)," , ")
	end
	s = s .. "\n\n"

	s = s .. "-- Options --\n"
	s = s .. "Profile:\n"
	for k,v in pairs(self.db.profile) do s = s .. "  "..k.." = "..anytostring(v).."\n" end
	s = s .. "\n"

	--s = s .. self:DumpVal(self.quests,0,4,true)
	--self:Print(s)
	s = s .. "-- Log --\n"
	s = s .. self.Log:Dump(100)


	self.dumpFrame.editBox:SetText(s)
	local title = maint and "Zygor Guides Viewer" or (self.CurrentGuideName or L["report_notitle"])
	local author = maint and "zygor@zygorguides.com" or (self.CurrentGuide and self.CurrentGuide.author or L["report_noauthor"])
	self.dumpFrame.title:SetText(L["report_title"]:format(title,author))
	ShowUIPanel(self.dumpFrame)
	self.dumpFrame.editBox:HighlightText(0)
	self.dumpFrame.editBox:SetFocus(true)
end

function me:DumpVal(val,lev,maxlev,nofun)
	if not lev then lev=1 end
	if not maxlev then maxlev=1 end

	if lev>maxlev then return ("...") end
	local s = ""
	if type(val)=="string" then
		s = ('"%s"'):format(val)
	elseif type(val)=="number" then
		s = ("%s"):format(tostring(val))
	elseif type(val)=="function" then
		s = ("")
	elseif type(val)=="table" then
		s = "\n"
		for k,v in pairs(val) do
			if type(k)~="string" or not k:find("^parent")
			then
				if type(v)~="function" then
					s = s .. ("   "):rep(lev) .. ("%s=%s"):format(k,self:DumpVal(v,lev+1,maxlev,nofun))
				elseif not nofun then
					s = s .. ("   "):rep(lev) .. ("%s(function)\n"):format(k)
				end
			end
		end
	end

	return s.."\n"
end


-- misc:

function me:CreateDumpFrame()
	local name = "ZygorGuidesViewer_DumpFrame"

	local frame = CreateFrame("Frame", name, UIParent)
	self.dumpFrame = frame
	frame:SetBackdrop({
	bgFile = [[Interface\DialogFrame\UI-DialogBox-Background]],
	edgeFile = [[Interface\DialogFrame\UI-DialogBox-Border]],
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 3, right = 3, top = 5, bottom = 3 }
	})
	frame:SetBackdropColor(0,0,0,1)
	frame:SetWidth(500)
	frame:SetHeight(400)
	frame:SetPoint("CENTER", UIParent, "CENTER")
	frame:Hide()
	frame:SetFrameStrata("DIALOG")
	tinsert(UISpecialFrames, name)
	
	local scrollArea = CreateFrame("ScrollFrame", name.."Scroll", frame, "UIPanelScrollFrameTemplate")
	scrollArea:SetPoint("TOPLEFT", frame, "TOPLEFT", 8, -50)
	scrollArea:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 8)

	local editBox = CreateFrame("EditBox", nil, frame)
	editBox:SetMultiLine(true)
	editBox:SetMaxLetters(99999)
	editBox:EnableMouse(true)
	editBox:SetAutoFocus(false)
	editBox:SetFontObject(ChatFontSmall)
	editBox:SetWidth(400)
	editBox:SetHeight(270)
	editBox:SetScript("OnEscapePressed", function() frame:Hide() end)
	self.dumpFrame.editBox = editBox
	
	scrollArea:SetScrollChild(editBox)
	
	local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
	close:SetPoint("TOPRIGHT", frame, "TOPRIGHT")

	local title = frame:CreateFontString(nil,"OVERLAY","GameFontNormalSmall")
	self.dumpFrame.title = title
	title:SetPoint("TOPLEFT", frame, "TOPLEFT", 10, -10)
	title:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", -30, -45)
	title:SetJustifyH("CENTER")
	title:SetJustifyV("TOP")

end

local math_floor = math.floor
local function round(num, digits)
	-- banker's rounding
	local mantissa = 10^digits
	local norm = num*mantissa
	norm = norm + 0.5
	local norm_f = math_floor(norm)
	if norm == norm_f and (norm_f % 2) ~= 0 then
		return (norm_f-1)/mantissa
	end
	return norm_f/mantissa
end
function me:Test (arg1,arg2)
	local a={GetMapZones(GetCurrentMapContinent())}
	local x,y = GetPlayerMapPosition("player")
	local id = round(x*10000, 0) + round(y*10000, 0)*10001
	self:Print("You're in "..a[GetCurrentMapZone()].." at Cart2 coords "..id)
end

function me:Echo (s)
	--if not self.db.profile.silent then 
	self:Print(tostring(s))
	--end
end

function me:Debug (s)
	self.Log:Add(s)
	if self and self.db and self.db.profile and self.db.profile.debug then
		self.DebugI = (self.DebugI or 0) + 1
		self:Echo('|cffaaaaaa#' .. self.DebugI .. ': ' .. tostring(s))
	end
end


function me:GetQuestData(qid)
	if not self.db.char.maint_fetchquestdata then return nil end
	Gratuity:SetHyperlink("|Hquest:"..qid..":1|h[q]|h")

	local n = Gratuity:NumLines()
	if n <= 0 then return end

	local title, objs

	for i = 1,n do
		local line = Gratuity:GetLine(i):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("[\n\t]", " ")
		if i == 1 then
			title = line
		else
			local line=line:match("^%s+%- (.+)$")
			if line then
				local o, n = line:match("^(.-) x.?.?(%d+)$")
				if not o then o = line end
				if not objs then
					objs = {}
				end
				table.insert(objs,o)
			end
		end
	end

	return title, objs
end

function me:GetItemData(itemid,n)
	if not self.db.char.maint_fetchitemdata then return nil end
	if not itemid then return end
	Gratuity:SetHyperlink("|Hitem:"..itemid..":0:0:0:0:0:0:0:0|h[q]|h")

	local n = Gratuity:NumLines()
	if n <= 0 then return end

	local title, objs

	local line = Gratuity:GetLine(1)
	line = line:gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", ""):gsub("[\n\t]", " ")
	if line==RETRIEVING_ITEM_INFO then
		return
	else
		return line
	end
end

-- HACKS
function me:ListQuests(from,to)
	local CQI=Cartographer_QuestInfo
	local qlog = ""
	for i=from,to do
		local level = CQI:PeekQuest(i)
		--if not level then level=0 end
		if level then
			local title,_,_,_,nobjs = CQI:GetQuestText(i,level)
			--if not title then title = CQI:GetQuestText(i,level) end -- well, they said to repeat it...
			--self:Print(i..": |cff808080|Hquest:"..i..":"..level.."|h["..tostring(title).."]|h|r "..(type(objs)=="table" and "{"..table.concat(nobjs,",").."}" or ""))
			qlog = qlog .. i..": "..tostring(title)..(type(nobjs)=="table" and " {"..table.concat(nobjs,",").."}" or "") .. "|n"
		end
	end
	if Chatter then
		Chatter:GetModule("Chat Copy").editBox:SetText(qlog)
		Chatter:GetModule("Chat Copy").editBox:HighlightText(0)
		Chatter:GetModule("Chat Copy").frame:Show()
	end
end

function me:GetTranslatedNPC(num)
	if not ZygorGuidesNPCs then return end
	local s=ZygorGuidesNPCs[num]
	if not s then return end
	local name,desc = s:match(".|(.-)|(.*)")
	if desc=="" then desc=nil end
	return name,desc
end

function me:PruneNPCs()
	if not ZygorGuidesNPCs then return end
	local faction,_ = UnitFactionGroup("player")
	if not faction then return end
	local badf = (faction=="Alliance") and "H" or "A"
	for i,d in pairs(ZygorGuidesNPCs) do
		if d:sub(1,1)==badf then ZygorGuidesNPCs[i]=nil end
	end
end

function me:ReloadTranslation()
	for i,guide in ipairs(self.registeredguides) do
		for s,step in ipairs(guide.steps) do
			for g,goal in ipairs(step.goals) do
				goal.L=false
			end
		end
	end
end

-- used for steps and goals
--[[
function me.ConditionTrue(subject,case)
	if not subject.conditions then return false end
	local f=subject.conditions[case]
	if type(f)=="function" then
		return f()
	elseif type(f)=="string" then
		f=subject.conditions[f]
		assert(type(f)=="function","What? This step has cross-referencing conditions? wtf.")
		return not f()
	end
end
--]]

function me.gradient3(perc,ar,ag,ab,br,bg,bb,cr,cg,cb, middle)
	if perc == 1 then
		return cr,cg,cb
	elseif perc==0 then
		return ar,ag,ab
	else
		if perc<=middle then
			perc=perc/middle
			return ar+(br-ar)*perc, ag+(bg-ag)*perc, ab+(bb-ab)*perc
		else
			perc=(perc-middle)/(1-middle)
			return br+(cr-br)*perc, bg+(cg-bg)*perc, bb+(cb-bb)*perc
		end
	end
end

--hooksecurefunc("WorldMapFrame_UpdateQuests",function() if not InCombatLockdown() then text=nil end end)
--hooksecurefunc("QuestInfo_Display",function() if not InCombatLockdown() then shownFrame=nil bottomShownFrame=nil end end)


