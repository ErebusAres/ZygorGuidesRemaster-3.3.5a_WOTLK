local popout = {}
local ZTA = ZygorTalentAdvisor
local L = ZTA.L

local function who(pet)
	return pet and 'pet' or 'player'
end

function ZygorTalentAdvisorPopout_OnShow(self)
	if not ZTA then return end

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
		if self.scroll.child.group1:GetTop() then 
			local height = self.scroll.child.group1:GetTop() - self.scroll.child.talents3:GetBottom()
			local maxheight=100
			local minheight=50
			if height>maxheight then height=maxheight end
			if height<minheight then height=minheight end
			self.scroll.child:SetHeight(height)

			self:SetHeight(height+145)
		end


		self.needsResizing=nil
		ZygorTalentAdvisorPopout_UpdateDocking()
	end
end

function ZygorTalentAdvisorPopout_OnLoad(self)
	self:RegisterForDrag("LeftButton")
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

function ZygorTalentAdvisorPopout_OnDragStart(self)
	ZTA.db.profile.windowdocked = false
	--ZygorTalentAdvisorPopout_Reparent()
	ZygorTalentAdvisorPopout_UpdateDocking()
	self:StartMoving()
	self.moving=true
	--print("dragstart")
end

function ZygorTalentAdvisorPopout_OnDragStop(self)
	--print("dragstop")
	self:StopMovingOrSizing()
	self.moving=nil
	--	((self:GetLeft()>PlayerTalentFrame:GetLeft() and self:GetLeft()-PlayerTalentFrame:GetRight()+42<20 and abs(self:GetTop()-PlayerTalentFrame:GetTop()+10)<20 then
	if PlayerTalentFrame and PlayerTalentFrame:IsShown() and abs(self:GetLeft()-PlayerTalentFrame:GetRight()+42)<20 and abs(self:GetTop()-PlayerTalentFrame:GetTop()+10)<20 then
		ZTA.db.profile.windowdocked = true
	else
		ZTA.db.profile.windowdocked = false
	end
	ZygorTalentAdvisorPopout_Reparent()
	ZygorTalentAdvisorPopout_UpdateDocking()
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

	self.buildLabel:SetText(L['window_header_buildlabel'])

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
		self.build:SetText(L['window_header_buildnone'])
		self.suggestionLabel:SetText(L['window_suggestion_nobuild'])
		self.scroll:Hide()
		self.preview:Hide()
		self.accept:Hide()
		--if ZTA.status[who].code then self.warning:Show() else self.warning:Hide() end
	else
		self.build:SetText(L['window_header_build']:format(ZTA.currentBuildTitle[who]))
		self.suggestionLabel:SetText(ZTA:GetStatusMessage(pet))

		if not ZTA.suggestion[who] or #ZTA.suggestion[who]==0 then
			if ZTA.status[who].code=="BLACK" then
				self.suggestionLabel:SetText(ZTA.status[who].msg)
			elseif ZTA.status[who].code=="RED" then
				self.suggestionLabel:SetText(L['window_suggestion_none'])
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

function ZygorTalentAdvisorPopout_UpdateDocking()
	local self=ZygorTalentAdvisorPopout

	if PlayerSpecTab1 and PlayerSpecTab1:IsShown() then
		if ZTA.db.profile.windowdocked and self:IsShown() then
			PlayerSpecTab1:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",ZygorTalentAdvisorPopout:GetWidth()-7-32,-65)
		else
			PlayerSpecTab1:SetPoint("TOPLEFT",PlayerTalentFrame,"TOPRIGHT",-32,-65)
		end
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