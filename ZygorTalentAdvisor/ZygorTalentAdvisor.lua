--[[
Rule: on every talent purchase, figure out in how many talents the player can get back on track
by comparing his prospective build to subbuilds of order 1..n

Don't warn if the distance is less than their REMAINING talents after the purchase-to-be
--]]

SAFEMODE=false


local me = LibStub("AceAddon-3.0"):NewAddon("ZygorTalentAdvisor", "AceConsole-3.0","AceEvent-3.0","AceTimer-3.0")

ZygorTalentAdvisor = me

--me.revision = tonumber(string.sub("$Revision: 309 $", 12, -3))
--me.version = "3.2." .. me.revision
--me.date = string.sub("$Date: 2009-07-29 23:26:27 +0200 (Śr, 29 lip 2009) $", 8, 17)

ZTA = ZygorTalentAdvisor

me.buildStorage = {}

me.registeredBuilds = {}

me.L = ZygorTalentAdvisor_L("main")
local L = me.L

local framename = "ZygorTalentAdvisorFrame"

--local LibTutorial = LibStub("LibTutorial-1.0")

BINDING_HEADER_ZYGORTALENTADVISOR = L["name_plain"]
BINDING_NAME_ZYGORTALENTADVISOR_OPENPOPUP = L["binding_popout"]

me.currentBuildNum = {}
me.currentBuild = {}
me.currentBuildTitle = {}
me.status = {player={code="?"},pet={code="?"}}
me.status_preview = {player={code="?"},pet={code="?"}}
me.suggestion = {player={},pet={}}
me.suggestion_preview = {player={},pet={}}

function me:OnEnable()
--	hooksecurefunc("TalentFrame_Load",MrRipley_LinkToTalentsFrame)
	hooksecurefunc("ToggleTalentFrame",function()
		if not PlayerTalentFrame then return end
		if not self.hooked then
			PlayerTalentFrameLearnButton:SetScript("OnClick",ZygorTalentAdvisor_PlayerTalentFrameLearnButton_OnClick)

			ZygorTalentAdvisorPopout_Hook(ZygorTalentAdvisorPopout)

			hooksecurefunc("PlayerTalentFrame_OnHide",function()
				if self.popout.moving and self.popout:GetParent()==PlayerTalentFrame then
					self.db.profile.windowdocked = false
					ZygorTalentAdvisorPopout_Reparent()
					ZygorTalentAdvisorPopout_UpdateDocking()
					self.popout.moving=false
					self.popout:StopMovingOrSizing()
					self.popout:Show()
				end

				--[[
				if self.popout:IsShown() then
					PlayerTalentFrame.advisorbutton:SetButtonState("PUSHED",1)
				else
					PlayerTalentFrame.advisorbutton:SetButtonState("NORMAL")
				end
				--]]

				--[[
				for i=1,MAX_NUM_TALENTS do
					_G['PlayerTalentFrameTalent'..i]:SetScript("OnClick",ZygorTalentAdvisor_PlayerTalentFrameTalent_OnClick)
				end
				--]]

				--[[
				if not self.hookedreset then
					self.hookedreset=true
					--self:Debug("hooked")
				end
				if PlayerTalentFrame and PlayerTalentFrame:IsVisible() then
					self:UpdateSuggestions(PlayerTalentFrame.pet)
				end
				--]]
			end)

			self.hooked=true
		end
	end)

	hooksecurefunc("TalentFrame_Update",function() self:PlayTalented() end)

	hooksecurefunc("ResetGroupPreviewTalentPoints",function()
		if PlayerTalentFrame then
			self:UpdateSuggestions(PlayerTalentFrame.pet)
		end
	end)

	self:SetupConfig()

	--[[
	if GetTalentInfo(1,1) then
		self:DelayedRegisteredBuilds()
	end
	--]]

	self:RegisterEvent("CHARACTER_POINTS_CHANGED")
	--self:RegisterEvent("PLAYER_TALENT_UPDATE")
	self:RegisterEvent("PET_TALENT_UPDATE")
	self:RegisterEvent("UNIT_PET")
	self:RegisterEvent("UNIT_MODEL_CHANGED")
	self:RegisterEvent("CHAT_MSG_SYSTEM")

	StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'] = {
		text = "",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self) if SAFEMODE then self:Debug("learning "..data.tab..","..data.talent) return nil end  Old_LearnTalent(self.data.tab,self.data.talent,self.data.pet) end,
		OnCancel = function (self) end,
		OnHide = function (self) self.data = nil; self.selectedIcon = nil; end,
		hideOnEscape = 1,
		timeout = 0,
		whileDead = 1,
	}

	StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'] = {
		text = "",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self) if SAFEMODE then self:Debug("learning previewed") return nil end  LearnPreviewTalents(self.data.pet) end,
		OnCancel = function (self) end,
		OnHide = function (self) self.data = nil; self.selectedIcon = nil; end,
		hideOnEscape = 1,
		timeout = 0,
		whileDead = 1,
	}
	--[[
	StaticPopupDialogs['ZYGORTALENTADVISOR_CONFIRM_LEARN_PREVIEW_TALENTS'] = {
		text = CONFIRM_LEARN_PREVIEW_TALENTS,
		button1 = YES,
		button2 = NO,
		OnAccept = function (self)
			LearnPreviewTalents(ZygorTalentAdvisor.Window.pet)
		end,
		OnCancel = function (self) end,
		hideOnEscape = 1,
		timeout = 0,
		exclusive = 1,
	}
	StaticPopupDialogs['ZYGORTALENTADVISOR_CONFIRMBULKLEARNING'] = {
		text = "...",
		button1 = YES,
		button2 = NO,
		OnAccept = function (self)
			ZTA:LearnSuggestedTalents(self.data.pet)
		end,
		OnCancel = function (self) end,
		hideOnEscape = 1,
		timeout = 0,
		exclusive = 1,
	}
	--]]

	if LibTutorial then
		LibTutorial:AddTutorial("ZTA1",L['tutorial_ZTA1_title'],L['tutorial_ZTA1_text'],self.db.global.tutorialflags)
		LibTutorial:AddTutorial("ZTA2",L['tutorial_ZTA2_title'],L['tutorial_ZTA2_text'],self.db.global.tutorialflags)
		LibTutorial:AddTutorial("ZTA3",L['tutorial_ZTA3_title'],L['tutorial_ZTA3_text'],self.db.global.tutorialflags)

		if UnitLevel("player")>10 then LibTutorial:ShowTutorial("ZTA1") end
	end

	if UnitClass("player") and GetTalentInfo(1,1) then self:PruneRegisteredBuilds() end
	if select(2,UnitClass("player"))=="HUNTER" then self.petsupport=true end

	self.Log.entries = self.db.char.debuglog
	self.Log:Add("Viewer started. ---------------------------")

	self.popout = ZygorTalentAdvisorPopout
end

function me:OnInitialize()
	self:RegisterEvent("PLAYER_ALIVE")
end

function me:Debug(s)
	self.Log:Add(s,self.db.profile.debug)
end

---- events

function me:CHAT_MSG_SYSTEM(event,text)
	--[[
	if string.match(text,L['pattern_talentgained_pet']) then
		self:OnNewTalents(true)
	end
	--]]

	--[[
	if string.match(text,L['pattern_talentgained']) then
		self:OnNewTalents(false)
	end
	--]]
end

function me:PLAYER_ALIVE()
	-- fires when talents are available
	self:Debug("PLAYER_ALIVE")
	self:PruneRegisteredBuilds()
end

function me:PLAYER_TALENT_UPDATE(_,a)
	--self:Debug("PLAYER_TALENT_UPDATE "..tostring(a))
	--self:OnNewTalents()
end

function me:PET_TALENT_UPDATE(_)
	local talentsready = GetTalentInfo(1,1,false,true)
	self:DebugPush(("PET_TALENT_UPDATE (points: %d, talents %s)"):format(GetUnspentTalentPoints(false,true), talentsready and "ready" or "not ready"))
	local build = self.currentBuild['pet']
	if not build then self:DebugPop("No pet build") return nil end
	if talentsready then
		self:ReloadBuilds(true)
		if self.currentBuild['pet'] and GetUnspentTalentPoints(false,true)>0 then
			self:OnNewTalents(true)
		end
		self:UpdateSuggestions(true)
		ZygorTalentAdvisorPopout_Update(false)
	end
	self:DebugPop()
end

function me:UNIT_PET(_,owner)
	if (owner~="player") then return end -- foreign pets ignored
	local _,_,_,pettype_en = GetTalentTabInfo(1,false,true)
	if pettype_en then pettype_en=pettype_en:match("HunterPet(.+)") end
	local talentsready = GetTalentInfo(1,1,false,true)
	self:DebugPush(("UNIT_PET %s (type %s, talents %s, points %d)"):format(tostring(owner), tostring(pettype_en), talentsready and "ready" or "not ready", GetUnspentTalentPoints(false,true)))
	if pettype_en~=self.oldpettype and not (pettype_en and not talentsready) then
		self.oldpettype=pettype_en
		self:ReloadBuilds(true)
		--[[ -- we don't want to auto-fit new pets, now do we..?
		if self.currentBuild['pet'] and GetUnspentTalentPoints(false,true)>0 then
			self:OnNewTalents(true)
		end
		--]]
	end
	self:DebugPop()
end

function me:UNIT_MODEL_CHANGED(_,unit)
	if (unit~="pet") then return end -- only pets interesting
end

function me:CHARACTER_POINTS_CHANGED(_,delta)
	self:Debug("CHARACTER_POINTS_CHANGED "..tostring(delta))
	if (delta>0) then self:OnNewTalents() end
	if delta<0 and self.bulklearning and self.suggestion['player'] then
		self:UpdateSuggestions(false)
		if #self.suggestion['player']>0 then
			local name=GetTalentInfo(self.suggestion['player'][1].tab,self.suggestion['player'][1].talent,false,false)
			self:Print(L['msg_learned']:format(name))
			Old_LearnTalent(self.suggestion['player'][1].tab,self.suggestion['player'][1].talent,false,false)
		else
			self.bulklearning=nil
			self:Print("Learned all.")
		end
	end
	self:UpdateSuggestions(false)
	ZygorTalentAdvisorPopout_Update(true)
end



local function who(pet)
	return pet and 'pet' or 'player'
end



function me:ReloadBuilds(pet)
	if pet==true or pet==nil then if self.currentBuildNum['pet'] then self:SetCurrentBuild(self.currentBuildNum['pet'],true) end end
	if pet==false or pet==nil then if self.currentBuildNum['player'] then self:SetCurrentBuild(self.currentBuildNum['player'],false) end end
end

function me:SetupConfig()
	self.db = LibStub("AceDB-3.0"):New("ZygorTalentAdvisorSettings")

	InterfaceOptionsFrame:GetRegions():SetTexture(0,0,0,0.9)

	self.db:RegisterDefaults({
		char = {
			debuglog = {}
		},
		global = {
			tutorialflags = {}
		},
		profile = {
			debug = false,
			forcebuild = false,
			forcepetbuild = false,
			hints = true,
			preview = true,
			popup = 1,
			windowdocked = true,
		}
	})

	local Getter_Simple = function(info)
		return self.db.profile[info[#info]]
	end
	local Setter_Simple = function(info,value)
		self.db.profile[info[#info]] = value
	end

	self.options = {
		name = L['name'],
		desc = L['desc'],
		type = "group",
		order = 1,
		--hidden = true,
		handler = self,
		get = Getter_Simple,
		set = Setter_Simple,
		args = {
			desc = {
				order = 1,
				type = "description",
				name = L['desc'],
			},
			desc01 = {
				type = "header",
				name = L['opt_build_header'],
				order = 1.01,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
			},
			build = { ------------------- BUILD --------------------
				name = L['opt_build'],
				desc = L['opt_build_desc'],
				type = "select",
				values = function()
					   local t={[0]=L['opt_build_none']}
					   if not self.registeredBuilds or #self.registeredBuilds==0 then return t end
					   local k,v
					   local _,playerclass=UnitClass("player")
					   for k,v in ipairs(self.registeredBuilds) do if v.class and v.class==playerclass then t[k]=v.title end end
					   return t
					 end,
				width = "double",
				get = function() return self.currentBuildNum['player'] or 0 end,
				set = function(_,num) self:SetCurrentBuild(num,false) end,
				order = 1.1,
			},
			forcebuild = {
				name = L['opt_force'],
				desc = L['opt_force_desc'],
				type = "toggle",
				width = "single",
				--get simple
				set = function(i,v) Setter_Simple(i,v)  self:ReloadBuilds(false) end,
				hidden = function() return self.status['player'].code~="RED" end,
				order = 1.2,
			},
			desc1 = { order = 1.21,	type = "description",	name = "", },
			buildstatus = {
				type = "description",
				name = function() return self:GetStatusMessage(false) end,
				width = "double",
				order = 1.3,
			},
			desc12 = { order = 1.31,	type = "description",	name = "|n", },
			descp = { ---------------- PET BUILD ------------------
				type = "header",
				name = L['opt_petbuild_header'],
				order = 2.01,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
			},
			petbuild = {
				name = L['opt_petbuild'],
				desc = L['opt_petbuild_desc'],
				type = "select",
				values = function()
					   local t={[0]=L['opt_build_none']}
					   if not self.registeredBuilds or #self.registeredBuilds==0 then return t end
					   local k,v
					   for k,v in ipairs(self.registeredBuilds) do
						if v.pettype then
							local mypettype,_,_,mypettype_en = GetTalentTabInfo(1,false,true) or ""
							local color = (mypettype_en==v.pettype and "" or "|cffbbbbbb")
							t[k]=color..v.title.."  - "..L['opt_petbuild_'..string.lower(v.pettype)]
						end
						
					   end
					   return t
					 end,
				width = "double",
				get = function() return self.currentBuildNum['pet'] or 0 end,
				set = function(_,num) self:SetCurrentBuild(num,true) end,
				hidden = function() local _,class = UnitClass("player") return class~="HUNTER" end,
				--disabled = function() return not GetTalentTabInfo(1,false,true) or not GetTalentInfo(1,1,false,true) end,
				order = 2.1,
			},
			forcepetbuild = {
				name = L['opt_force'],
				desc = L['opt_force_desc'],
				type = "toggle",
				width = "single",
				--get simple
				set = function(i,v) Setter_Simple(i,v)  self:ReloadBuilds(true) end,
				hidden = function() return self.status['pet'].code~="RED" end,
				order = 2.2,
			},
			desc21 = { order = 2.21,	type = "description",	name = "", },
			petbuildstatus = {
				type = "description",
				name = function() return self:GetStatusMessage(true) end,
				width = "double",
				order = 2.3,
			},
			desc22 = { order = 2.31,	type = "description",	name = "|n", },
			talentframe = {
				name = L['opt_talentframe'],
				type = "header",
				--inline = true,
				order = 7,
				--args = {
			},
			hints = {
				name = L['opt_hints'],
				desc = L['opt_hints_desc'],
				type = "toggle",
				width = "full",
				--get inherited simple
				set = function(i,v) Setter_Simple(i,v)  if PlayerTalentFrame then PlayerTalentFrame_Refresh() end end,
				order = 7.1,
			},
			preview = {
				name = L['opt_preview'],
				desc = L['opt_preview_desc'],
				type = "toggle",
				width = "full",
				--get inherited simple
				set = function(i,v) Setter_Simple(i,v)  if PlayerTalentFrame then PlayerTalentFrame_Refresh() end end,
				order = 7.2,
			},
			popup = {
				name = L['opt_popup'],
				desc = L['opt_popup_desc'],
				type = "select",
				style = "radio",
				width = "double",
				--get inherited simple
				--set inherited simple
				values = {[0]=L['opt_popup_0'],L['opt_popup_1'],L['opt_popup_2'],L['opt_popup_3']},
				order = 8,
			},
			windowdocked = {
				name = L['opt_popup_dock'],
				desc = L['opt_popup_dock_desc'],
				type = "toggle",
				width = "double",
				--get inherited simple
				set = function(i,v)
					Setter_Simple(i,v)
					ZygorTalentAdvisorPopout_Reparent()
					if (v==false) then ZygorTalentAdvisorPopout:ClearAllPoints()  ZygorTalentAdvisorPopout:SetPoint("CENTER",0,200) end
					ZygorTalentAdvisorPopout_UpdateDocking()
				      end,
				order = 9,
			},
			sep1 = {
				type="description", name=" |n |n |n", order=98
			},
			debug = {
				hidden = true,
				name = L["opt_debug"],
				desc = L["opt_debug_desc"],
				type = 'toggle',
				order=-10,
			},
			report = {
				name = L["opt_report"],
				desc = L["opt_report_desc"],
				type = 'execute',
				func = "DumpTalents",
				order = 99,
			},
		}
	}
	
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ZygorTalentAdvisor", self.options, "zta")
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ZygorTalentAdvisor", self.options.name, nil)
end

function me:OnNewTalents(pet)
	--local lasttalents = pet and self.lastUnspentPetTalents or self.lastUnspentTalents
	-- no selected build? bail.
	self:Debug("On New Talents "..tostring(pet))

	if not self.currentBuild[who(pet)] and GetUnspentTalentPoints(false,pet)>0 then
		if LibTutorial then LibTutorial:ShowTutorial("ZTA2") end
		return nil
	end

	--if self.alreadyProcessingNewTalents[toboolean(pet)] then return end

	--self.alreadyProcessingNewTalents[toboolean(pet)]=true

	-- no talents? bail.
	--if GetUnspentTalentPoints(false,pet)==0 then return end
	-- or not! handle clearing, too.

	self:ReloadBuilds(pet)

	--if not self:GetSuggestion(pet) then return nil end
	-- oh, do pop up, just with a warning

	local switchToPet = function()
		-- try to activate the pet talent frame
		for i=1,5 do
			local tab = _G["PlayerSpecTab"..i]
			if tab and string.find(tab.specIndex,"^petspec") then
				tab:Click()
				break
			end
		end
	end

	local popup = self.db.profile.popup or 0
	if popup==1 then
		TalentFrame_LoadUI()
		PlayerTalentFrame_Open(pet, pet and 1 or GetActiveTalentGroup())

		if pet then switchToPet() end
	end
	
	if popup==2 then
		ZygorTalentAdvisorPopout_Popout()
		if pet then switchToPet() end
		ZygorTalentAdvisorPopout_Update()
	end

	if popup==3 then
		self:LearnSuggestedTalents(pet,true)
	end

	self:PlayTalented()
end

function me:CleanupTalentFrame()
	local hint,bor
	for talent=1,100 do
		bor = _G["PlayerTalentFrameTalent"..talent.."RankBorder"]
		if bor then
			bor:SetWidth(32)
			bor:SetHeight(32)
		end

		hint = _G["PlayerTalentFrameTalent"..talent.."Hint"]
		if hint then hint:Hide() end
	end

	self.cleaning=true
	TalentFrame_Update(PlayerTalentFrame)
	self.cleaning=false
end

function me:FormatGlyphs()
	local glyphs = self.currentBuildGlyphs

	local s=L['name'].."\n|cffaaddff"..self.currentBuildTitle['player'].."|r:"
	for i=1,#glyphs do
		local found
		for socket=1,NUM_GLYPH_SLOTS do
			local enabled, glyphType, glyphSpell, icon = GetGlyphSocketInfo(socket)
			if glyphSpell then
				local spell = GetSpellInfo(glyphSpell)
				if L['glyphtype_'..glyphType]..spell==glyphs[i] then
					found=true
					break
				end
			end
		end
		s=s.."\n"..(found and "|cffffffff" or "|cffaaaaaa")..glyphs[i].."|r"
	end
	return s
end

function me:PlayTalented()
	if self.cleaning then return nil end
	if not PlayerTalentFrame or not PlayerTalentFrame:IsVisible() then return end

	
	if not PlayerTalentFrame.advisorbutton then
		ZygorTalentAdvisorPopoutButton:SetParent(PlayerTalentFrame)
		PlayerTalentFrame.advisorbutton = ZygorTalentAdvisorPopoutButton
		PlayerTalentFrame.advisorbutton:ClearAllPoints()
		PlayerTalentFrame.advisorbutton:SetPoint("TOPRIGHT",-44,-39)
		PlayerTalentFrame.advisorbutton:SetFrameLevel(120)
		--[[
		CreateFrame("Button",nil,PlayerTalentFrame,"UIPanelButtonTemplate")
		PlayerTalentFrame.advisorbutton:ClearAllPoints()
		PlayerTalentFrame.advisorbutton:SetPoint("TOPRIGHT",-40,-40)
		PlayerTalentFrame.advisorbutton:SetHeight(30)
		PlayerTalentFrame.advisorbutton:SetWidth(30)
		PlayerTalentFrame.advisorbutton:SetText("ZTA>")
		PlayerTalentFrame.advisorbutton:SetScript("OnClick",function() if ZygorTalentAdvisorPopout_Popup:IsShown() then ZygorTalentAdvisorPopout_Popup:Hide() else ZygorTalentAdvisorPopout_Popup() end end)
		--PlayerTalentFrame.advisorbutton:SetScript("OnEnter",function(self) GameTooltip_SetDefaultAnchor(GameTooltip,self)  GameTooltip:SetText(L['name']) GameTooltip:AddLine(L['popout_button_tip']) GameTooltip:Show() end)
		PlayerTalentFrame.advisorbutton:SetScript("OnEnter",function(self) GameTooltip_AddNewbieTip(self, L['name'], 1,1,1, L['popout_button_tip']) end)
		PlayerTalentFrame.advisorbutton:SetScript("OnLeave",GameTooltip_Hide)
		--]]
	end
	if GlyphFrame and not GlyphFrame.suggestion then
		local glyphsug=GlyphFrame:CreateFontString()
		glyphsug:SetPoint("CENTER",GlyphFrame,"Center",-15,25)
		glyphsug:SetWidth(200)
		glyphsug:SetJustifyV("MIDDLE")
		glyphsug:SetJustifyH("CENTER")
		glyphsug:SetFontObject(SystemFont_Tiny)
		glyphsug:SetShadowOffset(1,-1)
		GlyphFrame.suggestion = glyphsug
	end
	PlayerTalentFrame.advisorbutton:Show()

	if GlyphFrame and GlyphFrame.suggestion and self.currentBuildGlyphs then GlyphFrame.suggestion:SetText(self:FormatGlyphs()) end
	
	if ZygorTalentAdvisorPopout:IsShown() then ZygorTalentAdvisorPopout_Update() end
	ZygorTalentAdvisorPopout_UpdateDocking()

	self:Debug("playtalented")

	local pet = PlayerTalentFrame.pet
	local who=who(pet)

	local build = self.currentBuild[who]
	local force
	if pet then force=self.db.profile.forcepetbuild else force=self.db.profile.forcebuild end

	-- no build or build disabled? clean up, bail out.
	if not build or self.status[who].code=="BLACK" or (self.status[who].code=="RED" and not force) then
		self:CleanupTalentFrame()
		return
	end

	self:UpdateSuggestions(pet)
	local suggestion = self.suggestion[who]
	local preview = GetCVarBool("previewTalents")

	--self:Debug("playtalented "..who)

	--[[
	local advisory = L['talentframeadvisory_head']:format(self.currentBuildTitle[who])
	local status = preview and self.status_preview[who] or self.status[who]
	if status.code=="ORANGE" then
		advisory = advisory .. "\n" .. L['talentframeadvisory_orange']:format(status.missed-status.pointsleft)
	end
	if status.code=="RED" then
		advisory = advisory .. "\n" .. L['talentframeadvisory_red']
	end
	PlayerTalentFrame.advisory:SetText(advisory)
	--]]


	local counts,maxcounts = self:CountBuildTalents(self:GetTalentsSpent(pet),build,pet)

	local tab = PanelTemplates_GetSelectedTab(PlayerTalentFrame)
	local button
	local txt,bor,hint

	local talents = GetNumTalents(tab,false,pet)
	for talent=1,talents do
		--[[
		txt = _G["PlayerTalentFrameTalent"..talent.."_MrRipleyTxt"]
		bor = _G["PlayerTalentFrameTalent"..talent.."_MrRipleyBor"]
		if not txt then
			button = _G["PlayerTalentFrameTalent"..talent]
			txt = button:CreateFontString("PlayerTalentFrameTalent"..talent.."_MrRipleyTxt")
			txt:SetPoint("TOPRIGHT",button,"TOPRIGHT",3,3)
			txt:SetWidth(8)
			txt:SetJustifyV("TOP")
			txt:SetJustifyH("CENTER")
			txt:SetFontObject(GameFontNormalSmall)
			bor = button:CreateTexture("PlayerTalentFrameTalent"..talent.."_MrRipleyBor")
			bor:SetPoint("CENTER",txt)
			bor:SetTexture("Interface\\TalentFrame\\TalentFrame-RankBorder")
			bor:SetWidth(32)
			bor:SetHeight(32)
		end
		--]]

		txt = _G["PlayerTalentFrameTalent"..talent.."Rank"]
		bor = _G["PlayerTalentFrameTalent"..talent.."RankBorder"]
		button = _G["PlayerTalentFrameTalent"..talent]
		hint = _G["PlayerTalentFrameTalent"..talent.."Hint"]

		-- prepare the hint balloon
		if not hint then
			hint = button:CreateTexture("PlayerTalentFrameTalent"..talent.."Hint")
			--hint:SetTexture("Interface\\Buttons\\CheckButtonHilight")
			hint:SetPoint("LEFT",_G["PlayerTalentFrameTalent"..talent.."IconTexture"],"RIGHT",-14,5)
			hint:SetWidth(32)
			hint:SetHeight(32)
			hint:SetTexture("Interface\\Addons\\ZygorTalentAdvisor\\Skin\\MrRipley_Hints")
			hint:SetDrawLayer("OVERLAY")
		end

		local name,_,_,_,realrank,maxrank,_,available,rank = GetTalentInfo(tab,talent,false,pet)
		local desired = maxcounts[tab] and maxcounts[tab][talent] or 0

		local color_up_notfull = "|cff00ff00"
		local color_up_full = "|cffffff00"

		-- textual build preview
		if self.db.profile.preview and self.status[who].code~="BLACK" and (self.status[who].code~="RED" or force) then
			if desired>0 and rank<desired then
				if not txt:IsVisible() then
					txt:SetText("|cffaaaaaa"..rank.."/|r|cff00aaff"..desired.."|r")
					txt:Show()
					bor:Show()
				else
					txt:SetText(rank.."|cffaaaaaa/|r|cff00aaff"..desired.."|r")
				end

				bor:SetWidth(56)
				bor:SetHeight(32)

			elseif desired>0 and rank==desired then

				txt:SetText(rank.."/"..desired)
				bor:SetWidth(56)
				bor:SetHeight(32)

			elseif rank>desired then
				txt:SetText(rank.."|cffaaaaaa/|r|cffff0000"..desired.."|r")
				bor:SetWidth(56)
				bor:SetHeight(32)

			else
				bor:SetWidth(32)
				bor:SetHeight(32)
				--if GetUnspentTalentPoints(false,pet) preview 
			end
		else
			bor:SetWidth(32)
			bor:SetHeight(32)
			txt:SetText(rank)
			--if rank<maxrank then txt:SetTextColor(0,1,0) else txt:SetTextColor
		end

		-- hint balloons

		if suggestion and #suggestion>0 and self.db.profile.hints then

			local suggested

			-- consider all suggestions in preview/ooo mode; only the first suggestion in strict/inorder mode
			--self:IsOutOfOrder(pet) or 

			-- actually, no. Let's try to get out of OOO mode somehow.
			--[[
			if preview or (suggestion[1][1]==tab and suggestion[1][2]==talent) then
				suggested = suggestion and suggestion[tab.."."..talent]
			end
			--]]
			suggested = suggestion[tab.."."..talent]

			local mindesired = counts[tab] and counts[tab][talent] or 0

			-- hint balloon display
			if suggested then -- suggested this turn
				local hintpoints = suggested - (rank-realrank)  -- suggested minus previewed
				if hintpoints>0 then
					hint:SetTexCoord(0.125*hintpoints,0.125*(hintpoints+1),0,1)
				elseif hintpoints==0 then
					hint:SetTexCoord(0.125*6,0.125*7,0,1)
				else
					hint:SetTexCoord(0.875,1.000,0,1)  -- X
					--self:Debug("X1"..name.." : hints="..hintpoints.." for rank "..rank)
				end
				hint:SetDesaturated(_G["PlayerTalentFrameTalent"..talent.."IconTexture"]:IsDesaturated())
				hint:Show()
			elseif rank>mindesired and preview and rank>realrank and realrank<=mindesired then -- overinvested! oh shit. But warn only if it matters anymore.
				hint:SetTexCoord(0.875,1.000,0,1)
				hint:SetDesaturated(_G["PlayerTalentFrameTalent"..talent.."IconTexture"]:IsDesaturated())
				hint:Show()
				--self:Debug("X2 "..name)
			else
				hint:Hide()
			end
		else
			hint:Hide()
		end
	end

end

function me:GetSuggestionTooltip()
	self:Debug("GetSuggestionTooltip")
	return L['suggest_button_tooltip']:format(self.currentBuildTitle[who(PlayerTalentFrame.pet)])
end

function me:GetSuggestionFormatted(pet)
	TalentFrame_LoadUI()
	local sugformatted={}
	local who=who(pet)
	for i=1,#self.suggestion[who] do
		local tab,talent = self.suggestion[who][i].tab,self.suggestion[who][i].talent
		local tabname = GetTalentTabInfo(tab,false,pet)
		local name,tex,_,_,realrank,maxrank=GetTalentInfo(tab,talent,false,pet,GetActiveTalentGroup())
		if not sugformatted[tabname] then sugformatted[tabname]={} end
		local inserted=false
		for i=1,#sugformatted[tabname] do
			if sugformatted[tabname][i].name==name then
				if maxrank>1 then
					table.insert(sugformatted[tabname][i],realrank+#sugformatted[tabname][i]+1)
				else
					table.insert(sugformatted[tabname][i],0)
				end
				inserted=true
				break
			end
		end
		if not inserted then -- new talent
			table.insert(sugformatted[tabname],{tex=tex,tab=tab,name=name,talent=talent,[1]=realrank+1})
		end
	end
	return sugformatted
end

function me:LearnSuggestedTalents(pet,loud)
	TalentFrame_LoadUI()
	local who=who(pet)
	if not self.currentBuild[who] then
		self:Print(L['error_bulklearn_nobuild'])
		return
	end
	if not self.suggestion[who] or #self.suggestion[who]==0 then
		self:Print(L['error_bulklearn_nosuggestion'])
		return
	end

	local suggestion = self.suggestion[who]

	if loud then
		local sugformatted = self:GetSuggestionFormatted(pet)
		local s=""

		self:Print(L['msg_learned_verbose'])

		for tab,talents in pairs(sugformatted) do
			self:Print("|cffffffff"..tab.."|r:")
			local s
			for n,levels in ipairs(talents) do
				talent = "|T"..levels.tex..":0:0:0:0|t |cffffdd00"..GetTalentLink(levels.tab,levels.talent,false,pet,GetActiveTalentGroup())
				if levels[1]==0 then
					s=talent
				else
					s=talent.." |cff997700("
					if #levels<3 then s=s..table.concat(levels,",") else s=s..levels[1].."-"..levels[#levels] end
					s=s..")|r"
				end
				self:Print(L['msg_learned_verbose_talent']:format(s))
			end
		end
	else
		self:Print(L['msg_learned'])
	end

	if #suggestion>1 then
		local preview = GetCVar("previewTalents")
		SetCVar("previewTalents",1)
		self:PreviewSuggestions(pet,true)
		self:ScheduleTimer(function()
			LearnPreviewTalents(pet)
			SetCVar("previewTalents",preview)
		end, 0.1)
	else
		Old_LearnTalent(suggestion[1].tab,suggestion[1].talent,pet)
	end

	if not self.db.profile.windowdocked then
		ZygorTalentAdvisorPopout:Hide()
	else
		ZygorTalentAdvisorPopout_Update()
	end

	--[[
	else
		self.bulklearning=true -- starts processing the queue, driven by CHARACTER_POINTS_CHANGED -1
		local name=GetTalentInfo(self.suggestion[who][1].tab,self.suggestion[who][1].talent,false,pet)
		self:Print(L['msg_learned']:format(name))
		Old_LearnTalent(self.suggestion[who][1].tab,self.suggestion[who][1].talent,pet)
	end
	--]]
end

function me:PreviewSuggestions(pet,quiet)
	SetCVar("previewTalents",1)
	--local preview = GetCVarBool(
	--if not preview then return end

	if pet==nil then pet = PlayerTalentFrame.pet end

	local suggestion = self.suggestion[who(pet)]
	if not suggestion then return end

	ResetGroupPreviewTalentPoints(pet)

	-- this may look out of order, but is fine for applying ALL suggestions
	local sug
	local pts
	for tab,talent in talentpairs(false,pet) do
		sug = suggestion[tab.."."..talent]
		if sug then 
			pts = GetGroupPreviewTalentPointsSpent(pet)
			AddPreviewTalentPoints(tab,talent,sug,pet)
			if pts==GetGroupPreviewTalentPointsSpent(pet) then
				local name=GetTalentInfo(tab,talent,false,pet)
				self:Print("|cffff0000Error!|r Talent "..name.." suggested but unavailable!")
			end
		end
	end

	if not quiet and not PlayerTalentFrame:IsVisible() then
		TalentFrame_LoadUI()
		ToggleTalentFrame()
	end
end

function talentpairs(inspect,pet)
	local tab,tal=1,0
	return function()
		tal=tal+1
		if tal>GetNumTalents(tab,inspect,pet) then
			tal=1
			tab=tab+1
		end
		if tab<=GetNumTalentTabs(inspect,pet) then
			return tab,tal
		end
	end
end



Old_LearnTalent = LearnTalent
function LearnTalent(tab,talent,pet,group)
	-- need to double-check if the user hasn't clicked an inaccessible talent, otherwise we're barking up the wrong tree
	if GetUnspentTalentPoints(false,pet)==0 then return nil end

	local name, iconTexture, tabPointsSpent = GetTalentTabInfo(tab,false,pet,group)
	local name, iconTexture, tier, column, rank, maxRank, isExceptional, meetsPrereq, previewRank, meetsPreviewPrereq = GetTalentInfo(tab, talent, false, pet, group);

	if ( ((tier - 1) * (pet and PET_TALENTS_PER_TIER or PLAYER_TALENTS_PER_TIER) > tabPointsSpent) ) then
		-- tier locked! bail.
		return nil
	end
	local reqtab,reqtal,learnable = GetTalentPrereqs(tab,talent,false,pet)
	if reqtab and not learnable then
		return nil
	end

	local who=who(pet)

	local ZTA = ZygorTalentAdvisor
	local suggestion = ZTA.suggestion[who]
	if ZTA and ZTA.currentBuild[who] and suggestion and #suggestion>0 then
		local status = ZTA.status[who]
		
		local found,s
		for i=1,#suggestion do if suggestion[i].tab==tab and suggestion[i].talent==talent then found = i end end
		if not found then
			-- RED!
			local counts,maxcounts = ZTA:CountBuildTalents(ZTA:GetTalentsSpent(pet),ZTA.currentBuild[who])
			local buildTitle=ZTA.currentBuildTitle[who]
			if not maxcounts[tab] or maxcounts[tab][talent]==0 then
				-- never taken at all
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_red0']:format(buildTitle)
			elseif rank+1>maxcounts[tab][talent] then
				-- taken, but not this far
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_red']:format(buildTitle,maxcounts[tab][talent],GetTalentInfo(tab,talent,false,pet))
			else
				-- Warning, ORANGE zone: not in suggestion, so too far
				local stab = suggestion[1].tab
				local stalent = suggestion[1].talent
				StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text = L['warning_learn1_orange']:format(buildTitle,GetTalentTabInfo(stab,false,pet),GetTalentInfo(stab,stalent,false,pet),GetTalentInfo(tab,talent,false,pet))
			end
			local dialog = StaticPopup_Show("ZYGORTALENTADVISOR_WARNING")
			if dialog then
				dialog.data = {tab=tab,talent=talent,pet=pet}
			else
				ZTA:Print("ERROR: Cannot show dialog.\n"..StaticPopupDialogs['ZYGORTALENTADVISOR_WARNING'].text)
			end
			return
		else
			-- YELLOW.
		end
	end

	if SAFEMODE then
		self:Debug("Learning\n"..name)
	else
		Old_LearnTalent(tab,talent,pet)
	end
end

-- OVERRIDE
function ZygorTalentAdvisor_PlayerTalentFrameLearnButton_OnClick(self)
	local TalentFrame = PlayerTalentFrame

	local ZTA = ZygorTalentAdvisor

	local pet = TalentFrame.pet
	local who=who(pet)

	ZTA:UpdateSuggestions(pet)
	local status = ZTA.status_preview[who]
	local build = ZTA.currentBuild[who]

	if status and status.code~="BLACK" and build then
		if status.code=="GREEN" or status.code=="YELLOW" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_green"]:format(ZTA.currentBuildTitle[who])
		elseif status.code=="ORANGE" then
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_orange"]:format(ZTA.currentBuildTitle[who],status.missed-status.pointsleft) --GetUnspentTalentPoints(false,pet)+GetGroupPreviewTalentPointsSpent(pet) ??
		else --RED
			StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text=L["warning_preview_red"]:format(ZTA.currentBuildTitle[who])
		end
		local dialog = StaticPopup_Show("ZYGORTALENTADVISOR_PREVIEWWARNING")
		if dialog then
			dialog.data = {pet=TalentFrame.pet}
		else
			ZTA:Print("ERROR: Cannot show dialog.\n"..StaticPopupDialogs['ZYGORTALENTADVISOR_PREVIEWWARNING'].text)
		end
		return nil
	else
		PlayerTalentFrameLearnButton_OnClick(self)
		--StaticPopup_Show("CONFIRM_LEARN_PREVIEW_TALENTS")
	end
end


--[[
function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnClick(self, button)
	--debug("click in zta? "..tostring(self.isZTA))
	if ( IsModifiedClick("CHATLINK") ) then
		local link = GetTalentLink(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(),
			PlayerTalentFrame.inspect, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup, GetCVarBool("previewTalents"));
		if ( link ) then
			ChatEdit_InsertLink(link);
		end
	elseif not PlayerTalentFrame.inspect and (PlayerTalentFrame.pet or GetActiveTalentGroup(false,PlayerTalentFrame.pet)==PlayerTalentFrame.talentGroup) then
		-- only allow functionality if an active spec is selected
		if ( button == "LeftButton" ) then
			if ( GetCVarBool("previewTalents") ) then
				AddPreviewTalentPoints(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), 1, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
			else
				LearnTalent(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
			end
		elseif ( button == "RightButton" ) then
			if ( GetCVarBool("previewTalents") ) then
				if IsTalentRemovable(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup) then
					AddPreviewTalentPoints(PanelTemplates_GetSelectedTab(PlayerTalentFrame), self:GetID(), -1, PlayerTalentFrame.pet, PlayerTalentFrame.talentGroup);
				end
			end
		end
	end

	if self.isZTA then
		self:GetScript("OnLeave")(self)
		self:GetScript("OnEnter")(self)
	end
end

function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnEvent(self, event, ...)
	if self:GetID() then
		-- whoa, original button! handle carefully.
		PlayerTalentFrameTalent_OnEvent(self, button)
		return
	end
	if ( GameTooltip:IsOwned(self) ) then
		GameTooltip:SetTalent(self.tab, self.talent, false, false, 1, GetCVarBool("previewTalents"))
	end
end

function ZygorTalentAdvisor_PlayerTalentFrameTalent_OnEnter(self)
	if self:GetID() and self:GetID()>0 then
		-- whoa, original button! handle carefully.
		PlayerTalentFrameTalent_OnEnter(self, button)
		return
	end
	GameTooltip:SetOwner(self, "ANCHOR_LEFT")
	GameTooltip:SetTalent(self.tab, self.talent, false, false, 1, GetCVarBool("previewTalents"))
end
--]]


---
-- @return nil
--
function me:MarkBuildTaken(build,pet)
	if not build then return end
	for n=1,#build do build[n].taken=nil build[n].preview=nil end

	build.realfail=nil
	build.previewfail=nil
	for tab,talent in talentpairs(false,pet) do
		local name,_,_,_,realrank,maxrank,_,available,prevrank = GetTalentInfo(tab,talent,false,pet)
		if name then
			for i=1,prevrank do
				local found
				for n=1,#build do
					if build[n][1]==tab and build[n][2]==talent and not build[n].taken and not build[n].preview then
						--self:Debug(tab..","..talent.." ".."build#"..n.." "..((i>realrank)and"preview"or"taken"))
						if i>realrank then -- marking as prev-taken
							build[n].preview=true
						else
							build[n].taken=true
						end
						found=true
						break
					end
				end
				if not found then
					-- okay, we have a fuckup, but a real or a preview fuckup?
					if i<=realrank then
						build.realfail=true
					else
						build.previewfail=true
					end
					break
				end
			end
		end
		-- if build.realfail then break end    -- does this break red builds?
	end
	if build.realfail then build.previewfail=true end
end

function me:GetBuildStatus(build,pet,preview)
	-- first, a diagnosis: can this be done at all?
	-- GREEN: we can proceed safely; player's current build is a direct start-based subset of the target build.
	-- YELLOW: we can proceed carefully; player's current build is a subset of the target build, but not start-based, but can be fixed in the remaining points.
	-- ORANGE: minor fuckup; player's current build is a non-start-based subset of the target build and can not be fixed in the remaining points.
	-- RED: major fuckup; player's current build is NOT a subset of the target build.

	local status={code="?",pointsleft=0,missed=0}

	-- To glean that, we need to remove player's current talents from the start of the target build plan, and see what that gives us.
	-- Or at least mark them as taken.

	self:MarkBuildTaken(build,pet)

	local force
	if pet then force=self.db.profile.forcepetbuild else force=self.db.profile.forcebuild end

	if (preview and build.previewfail or build.realfail) and not force then
		--self:Debug("Code: RED. B0rked.")
		status.code="RED"
		return status -- if real status is RED, preview status doesn't matter
	end

	-- find the index of the last taken talent in the build plan
	-- this helps both the real and preview checks
	local last = 0
	for n=1,#build do
		if build[n]['taken'] then last=n end
		if preview and build[n]['preview'] then last=n end
	end

	-- Whew, it's not RED, so maybe it's GREEN?
	-- if that's equal to the number of the player's talents, we're GREEN. Unless we were RED already, screw it then.
	local spent = self:GetTalentsSpent(pet)+(preview and GetGroupPreviewTalentPointsSpent(pet) or 0)
	if spent==last then
		status.code="GREEN"
	else
		-- Okay, so it's either yellow or orange. Let's see in how many moves the player can reach the true path of enlightenment - that is, the proper build.
		-- Obviously they must've missed some talents and taken others - that's the number they must make up for.
		local pointsleft = GetUnspentTalentPoints(false,pet)-(preview and GetGroupPreviewTalentPointsSpent(pet) or 0)
		local missed=0
		for n=1,last do if not build[n].taken and not (preview and build[n].preview)  then missed=missed+1 end end
		--self:Debug("pointsleft",pointsleft)
		--self:Debug("missed",missed)
		if pointsleft>=missed then
			-- whew, safe.
			status.code="YELLOW" status.pointsleft=pointsleft status.missed=missed
		else
			-- oh, how sad
			status.code="ORANGE" status.pointsleft=pointsleft status.missed=missed
		end
	end

	if (preview and build.previewfail or build.realfail) and force then
		-- RED comes back
		status.code="RED"
	end

	return status
end

function QuickDumpStatusAndSuggestion(status,sug)
	local s=""
	s=s..(status and status.code or "?")
	if status and (status.code=="YELLOW" or status.code=="ORANGE") then s=s..(" (%d)"):format(status.pointsleft-status.missed) end
	if status and (status.code=="BLACK") then s=s..(" (%s)"):format(status.msg) end
	s=s..": "
	if sug then
		for i=1,#sug do s=s..sug[i].tab..","..sug[i].talent.."; " end
	else
		s=s.."none"
	end
	return s
end

function me:UpdateSuggestions(pet)
	local preview = GetCVarBool("previewTalents")
	local who=who(pet)

	local build = self.currentBuild[who]
	if not build then return nil end

	self:DebugPush("UpdateSuggestions("..who..")")

	self.suggestion[who],self.status[who]=self:MakeSuggestion(pet,false)
	self:Debug(who.."suggestion: "..QuickDumpStatusAndSuggestion(self.status[who],self.suggestion[who]))
	if preview then
		self.suggestion_preview[who],self.status_preview[who] = self:MakeSuggestion(pet,true)
		self:Debug(who.."suggestion_preview: "..QuickDumpStatusAndSuggestion(self.status_preview[who],self.suggestion_preview[who]))
	end

	if self.suggestion[who] and #self.suggestion[who]>0 then
		if LibTutorial then LibTutorial:ShowTutorial("ZTA3") end
	end
	self:DebugPop()
end

---
-- @return suggestion,status
function me:MakeSuggestion(pet,preview)
	if not pet then pet=false end

	-- clear any old suggestions, for starters
	local suggestion={}
	
	if self:IsDisabled(pet) then
		local status = {code="BLACK",msg="disabled"}
		return {},status
	end

	local build = self.currentBuild[who(pet)]
	if not build then
--		local status = {code="BLACK",msg=L["status_black_broken"]:format(self.brokenmsg)}
		return {},self.status[who(pet)]
	end
	if #build<self:GetTalentsSpent(pet) then
		local status = {code="BLACK",msg=L["status_black_smallbuild"]:format(#build,self:GetTalentsSpent(pet))}
		return {},status
	end

	AddSuggestion = function (tab,talent,pet)
		suggestion[tab.."."..talent] = (suggestion[tab.."."..talent] or 0) + 1
		table.insert(suggestion,{tab=tab,talent=talent})
		--self:Debug(tab,talent)
	end

	local status = self:GetBuildStatus(build,pet,preview)

	if #build<self:GetTalentsSpent(pet) then
		-- somehow exceeded
		local status = {code="BLACK",msg=L["status_black_exceeded"]:format(#build,self:GetTalentsSpent(pet))}
		return {},status
	elseif #build==self.GetTalentsSpent(pet) then
		-- complete or altogether different
		local alltaken=true
		for i=1,#build do
			if not build[i].taken then alltaken=false break end
		end
		if alltaken then
			local status = {code="BLACK",msg=L["status_black_complete"]:format(#build,self:GetTalentsSpent(pet))}
			return {},status
		else
			local status = {code="BLACK",msg=L["status_black_different"]:format(#build,self:GetTalentsSpent(pet))}
			return {},status
		end
	end

	local force
	if pet then force=self.db.profile.forcepetbuild else force=self.db.profile.forcebuild end
	if status.code~="RED" or force then
		-- suggest away!
		local points = GetUnspentTalentPoints(false,pet)
		if preview then points=points-GetGroupPreviewTalentPointsSpent(pet) end
		for i=1,#build do
			if points==0 then break end
			local tab,talent = unpack(build[i])
			if not build[i].taken and not (preview and build[i].preview) then
				points=points-1
				AddSuggestion(tab,talent,pet)
			end
		end
	end

	return suggestion,status
end

function me:IsOutOfOrder(pet)
	return pet and self.petOutOfOrder or self.outOfOrder
end

function me:IsDisabled(pet)
	return (pet and self.petdisabled) or (not pet and self.disabled)
end

function me:Hint(tab,talent,pet)
	local tabname = GetTalentTabInfo(tab,false,pet)
	local name,_,_,_,rank = GetTalentInfo(tab,talent,false,pet)
	
	self:Print("Suggestion: Upgrade your "..(pet and "pet's " or "")..tabname.." talent '"..name.."'.")
end

function me:GetTalentsSpent(pet)
	local tabs = GetNumTalentTabs(false,pet)
	local talentsSpent = 0
	for i=1, tabs do
		local name, iconTexture, pointsSpent = GetTalentTabInfo(i,false,pet)
		talentsSpent = talentsSpent + pointsSpent
	end
	return talentsSpent
end


--- select a build. Determine if it's a pet build from the build itself.
function me:SetCurrentBuild(num,pet)
	local builds = self.registeredBuilds

	self:DebugPush("SetCurrentBuild "..tostring(num)..","..tostring(pet))

	if type(num)=="string" then
		for i,build in ipairs(builds) do
			if build.title==num then
				num=i
				break
			end
		end
		if type(num)=="string" then
			self:Print("no such build name: "..num)
			num=0
		end
	end

	if builds[num] then

		-- we have the build, let's check it.
		-- we could trust pruning for classes, but pet types change often.

		local build = builds[num].build
		pet = builds[num].pettype and true
		local _,myclass = UnitClass("player")
		local who = who(pet)

		self:Debug("build is "..tostring(builds[num].title)..", pet="..tostring(builds[num].pettype))

		self.status[who] = {code="?"}

		if (builds[num].class and builds[num].class~=myclass) then 
			self.status[who] = {code="BLACK",msg="wrong class, wtf?"}
			self:DebugPop()
			return nil
		end -- why wasn't it pruned with PruneRegisteredBuilds, anyway?


		local error

		-- check for pet build
		if pet then
			local pettype,_,_,pettype_en = GetTalentTabInfo(1,false,true) -- first (only) tab of the pet talents
			if pettype_en then pettype_en=pettype_en:match("HunterPet(.+)") end
			local petname = UnitName("pet") or "Pet"
			self:Debug("pet is "..tostring(petname).." ("..tostring(pettype_en)..")")
			if not pettype then
				self.status[who] = {code="BLACK",msg=L['status_black_nopet']}
				build=nil
			elseif builds[num].pettype:upper()~=pettype_en:upper() then
				self:Debug("build pettype = "..tostring(builds[num].pettype))
				self.status[who] = {code="BLACK",msg=L['status_black_badpet']:format(petname,L['opt_petbuild_'..(pettype_en or "?"):lower()])}
				build=nil
			end
		end

		--[[
		local localclass,class = UnitClass("player")
		if #builds==0 then
			self:Print("No registered builds for "..localclass)
			return
		end
		if not builds[num] then
			self:Print("No registered build number "..num.." for "..localclass)
			return
		end
		--]]

		
		-- okay, build seems to match us or the pet; let's parse it

		if self.status[who].code~="BLACK" then  -- nil-safe

			if type(build)=="string" then
				if (build:find("^%d+$")) then
					-- numbers; Blizzard format
					--self:Debug("Parsing Blizzard build format")
					build = self:ParseBlizzardTalents(build,pet)
					if build then
						-- parsed? save.
						builds[num].build=build
					else
						--builds[num].build=nil
						build=nil
						self.status[who] = {code="BLACK",msg=L['status_black_badblizzard']}
					end
				else
					-- text; text lines format
					build,msg = self:ParseTextTalents(build,pet)
					if build then
						-- parsed? save.
						builds[num].build=build
					else
						--builds[num].build=nil
						build=nil
						self.status[who] = {code="BLACK",msg=L['status_black_brokenbuild']:format(msg)}
					end
				end
			elseif type(build)=="table" and type(build[1])=="string" then
				--self:Debug("Parsing table format")
				build,msg = self:ParseTableTalents(build,pet)
				if build then
					-- parsed? save.
					builds[num].build=build
				else
					--builds[num].build=nil
					build=nil
					self.status[who] = {code="BLACK",msg=L['status_black_brokenbuild']:format(msg)}
				end
			end

		end

		if type(build)=="table" and type(build[1])=="table" then
			-- probably proper format, finally
			local _,maxcounts = self:CountBuildTalents(nil,build)
			for tab,talents in ipairs(maxcounts) do
				for talent,count in ipairs(talents) do
					local name,_,_,_,realrank,maxrank,_,available,rank = GetTalentInfo(tab,talent,false,pet)
					if name and maxrank<count then
						self.status[who] = {code="BLACK",msg=L['status_black_builderror']:format(count,name,maxrank)}
						break
					end
				end
			end
		end
		self.currentBuildNum[who] = num
		self.currentBuild[who] = build
		self.currentBuildTitle[who] = builds[num] and builds[num].title or nil
		if who=="player" then
			self.currentBuildGlyphs = builds[num].glyphs and self:ParseLines(builds[num].glyphs)
		end
	else
		local who = who(pet)
		self.status[who]={}
		self.status_preview[who]={}
		self.currentBuildNum[who] = nil
		self.currentBuild[who] = nil
		self.currentBuildTitle[who] = nil
		if who=="player" then
			self.currentBuildGlyphs = nil
		end
	end

	if pet then
		self.db.char.currentPetBuildTitle = self.currentBuildTitle['pet']
	else
		self.db.char.currentBuildTitle = self.currentBuildTitle['player']
	end


	self:UpdateSuggestions(pet)
	self:PlayTalented()

	self:DebugPop()
end

function me:CountBuildTalents(num,build)
	local counts = {}
	local maxcounts = {}
	local zeroer = {__index = function(tab,key) return 0 end}

	if not build then error("Error: no build to CountBuildTalents") end
	if num and num>#build then num=#build end

	if num then
		for i=1,num do
			local tab,talent = build[i][1],build[i][2]
			if not counts[tab] then counts[tab]={} setmetatable(counts[tab],zeroer) end
			counts[tab][talent]=counts[tab][talent]+1
		end
	end
	for i=1,#build do
		local tab,talent = build[i][1],build[i][2]
		if not maxcounts[tab] then maxcounts[tab]={} setmetatable(maxcounts[tab],zeroer) end
		maxcounts[tab][talent]=maxcounts[tab][talent]+1
	end

	return counts,maxcounts
end

function me:OpenOptions()
	--self:OpenConfigMenu()
	InterfaceOptionsFrame_OpenToCategory(L['name'])
end

function me:SetOption(cmd)
	LibStub("AceConfigCmd-3.0").HandleCommand(self, "zta", "ZygorTalentAdvisor", cmd)
end


function me:GetStatusMessage(pet)
	local who=who(pet)
	local status = self.status[who]
	if not status or not status.code then return "" end
	if status.code=="BLACK" then return status.msg end
	if status.code=="RED" then
		--local _,maxcounts = self:CountBuildTalents(nil,build)
		--local maxcount = maxcounts[tab] and maxcounts[tab][talent] or 0
		local force
		if pet then force=self.db.profile.forcepetbuild else force=self.db.profile.forcebuild end
		if force then
			return L['status_red_forced']
		else
			return L['status_red']
		end
		-- ? L['status_red_forced']
	end
	if status.code=="GREEN" then return L['status_green'..(pet and '_pet' or '')] end
	if status.code=="YELLOW" then return L['status_yellow']:format(status.pointsleft-status.missed) end
	if status.code=="ORANGE" then return L['status_orange']:format(status.missed-status.pointsleft) end
end



function me:DumpTalents()
	if not self.dumpFrame then self:CreateDumpFrame() end

	HideUIPanel(InterfaceOptionsFrame)

	local tostr = function(val)
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
	local s = ""

	s = "Zygor Talent Advisor v"..self.version.."\n"

	local dumpTalents = function(pet)
		for tab=1,GetNumTalentTabs(false,pet) do
			s=s..("%d. %s:\n"):format(tab,tostring(GetTalentTabInfo(tab,false,pet)))
			for talent=1,GetNumTalents(tab,false,pet) do
				local name,_,_,_,realrank,maxrank,_,available,rank = GetTalentInfo(tab,talent,false,pet)
				if rank>0 then
					s=s..("  %d.%d: %s (%d/%d)"):format(tab,talent,name,realrank,maxrank)
					if rank~=realrank then s=s..(" +%d"):format(rank) end
					s=s.."\n"
				end
			end
		end
	end

	local dumpBuild = function(build,pet)
		if not build then return end
		for i=1,#build do
			local name = GetTalentInfo(build[i][1],build[i][2],false,pet)
			s=s..("%d: %d.%d [%s] %s %s|n"):format(i,build[i][1],build[i][2],name or "?",build[i].taken and " (taken)" or "",build[i].preview and " (previewed)" or "")
		end
	end

	local dumpSuggestion = function(sug,pet)
		if not sug then return end
		for i=1,#sug do
			local name = GetTalentInfo(sug[i].tab,sug[i].talent,false,pet)
			s=s..("%d: %d.%d [%s] (total:%d)|n"):format(i, sug[i].tab,sug[i].talent, name or "?", sug[sug[i].tab.."."..sug[i].talent])
		end
	end

	local DoDump = function (pet)
		local who=who(pet)
		s=s.."\nCurrent talents: \n"
		dumpTalents(pet)

		if self.currentBuildNum[who] then
			s=s.."\nCurrent build: "..(self.currentBuildTitle[who]).."|n"
			dumpBuild(self.currentBuild[who],pet)
			s=s.."\nStatus: \n"
			for k,v in pairs(self.status[who]) do
				s=s.."\n   "..k.." = "..tostring(v)
			end
			s=s.."\n"
			if GetCVarBool("previewTalents") then
				s=s.."\nStatus_preview: \n"
				for k,v in pairs(self.status_preview[who]) do
					s=s.."\n   "..k.." = "..tostring(v)
				end
				s=s.."\n"
			end
		end

		s=s.."\nSuggestion: \n"
		dumpSuggestion(self.suggestion[who])

		s=s..("\nTalents left: %d\n"):format(GetUnspentTalentPoints(pet))
	end
	
	DoDump(false)
	
	if self.petsupport then
		s=s.."\n--- PET ---\n"
		DoDump(true)
	end

	s = s .. "\nLog:\n"
	s = s .. self.Log:Dump(100)

	self.dumpFrame.editBox:SetText(s)
	--local title = self.CurrentGuideName or L["report_notitle"]
	--local author = self.CurrentGuide.author or L["report_noauthor"]
	--self.dumpFrame.title:SetText(L["report_title"]:format(title,author))
	ShowUIPanel(self.dumpFrame)
	self.dumpFrame.editBox:HighlightText(0)
	self.dumpFrame.editBox:SetFocus(true)
end

function me:DumpVal(val,lev,maxlev,nofun)
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
			if k~="parentStep"
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

function me:CreateDumpFrame()
	local name = "ZygorTalentAdvisor_DumpFrame"

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

local GameTooltipSetTalent = GameTooltip.SetTalent
function ZygorTalentAdvisor_GameTooltipSetTalent(self,tab,talent,inspect,pet,group,preview)
	GameTooltipSetTalent(self,tab,talent,inspect,pet,group,preview)
	if not inspect then
		local ZTA=ZygorTalentAdvisor
		local who=who(pet)
		local build=ZTA.currentBuild[who]
		if build and ZTA.status[who] and ZTA.status[who].code and ZTA.status[who].code~="BLACK" then
			local count,maxcount = ZTA:CountBuildTalents(nil,build,pet)
			local rank = (maxcount and maxcount[tab]) and tonumber(maxcount[tab][talent]) or 0
			local color=""
			if maxcount[tab] and tonumber(maxcount[tab][talent])>0 then color="|cff00ff00" else color="|cffff0000" end
			GameTooltip:AddLine(L['talenttooltip']:format(ZTA.currentBuildTitle[who],color..(tonumber(maxcount[tab] and maxcount[tab][talent]) or 0)),1,1,1)
			GameTooltip:Show()
		end
	end
end
GameTooltip.SetTalent = ZygorTalentAdvisor_GameTooltipSetTalent


function me:Debug (s)
	if self.debugstack then s=strrep("|  ",self.debugstack)..s end
	self.Log:Add(s)
	if self and self.db and self.db.profile and self.db.profile.debug then
		self.DebugI = (self.DebugI or 0) + 1
		self:Print('|cffaaaaaa#' .. self.DebugI .. ': ' .. tostring(s))
	end
end

function me:DebugPush (s)
	self:Debug("> "..(s or ""))
	if not self.debugstack then self.debugstack=1 else self.debugstack = self.debugstack+1 end
end

function me:DebugPop (s)
	if not self.debugstack then self.debugstack=0 else self.debugstack = self.debugstack-1 end
	self:Debug("< "..(s or ""))
end
