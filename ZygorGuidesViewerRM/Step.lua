local Step = {}
local ZGV = ZygorGuidesViewer
if not ZGV then return end
local L = ZGV.L
local LM = ZGV.LM

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

ZGV.StepProto = Step
ZGV.StepProto_mt = { __index=Step }

---
-- @return complete, possible, manual
function Step:IsComplete()
	--self:Debug("Step complete check")
	--if not self.CurrentStep then return false end
	--if not self.CurrentStep.goals then return false end
	if not self:AreRequirementsMet() then return true end

	local completeable = false
	local complete = true
	local steppossible = false
	local manual = true

	-- 'or' logic: one or-positive goal marks all or-positive goals as done. Will collect completed or's in here.
	--local orlist = {}
	local orneeded = 0
	local orcount = 0
	local orcomplete = false

	local status
	for i,goal in ipairs(self.goals) do
		goal:UpdateStatus()
		status = goal.status
		if status~="hidden" then
			if goal.orlogic then
				--orlist[goal]=true
				orneeded = goal.orlogic
				if status=="complete" then
					-- count all completed or's
					orcount = orcount + 1
				end
			end
		end
	end
	orcomplete = (orneeded>0 and orcount>=orneeded)

	for i,goal in ipairs(self.goals) do
		status = goal.status
		if status~="hidden" and status~="passive" then
			completeable = true
			local done,possible
			if goal.orlogic --[[and orlist[goal] --]] and orcomplete then
				status="complete" -- don't bother to check, force
			end
			if status~="complete" then  complete = false  end
			if status=="incomplete" or (status=="obsolete" and not ZGV.db.profile.skipobsolete) --[[possible and not done--]] then  steppossible = true  end

			manual=false
		end
	end
	return completeable and complete, steppossible, manual
end

--[[
function Step:NeedsUpdating()
	if not self.goalsneedupdating then self.goalsneedupdating={} end
	local needs=false
	for i,goal in ipairs(self.goals) do
		local needup = self.goalsneedupdating[goal]
		if not needup then self.goalsneedupdating[goal]={} needup = self.goalsneedupdating[goal] end
		if goal:IsCompleteable() then
			local done,possible = goal:IsComplete()
			local text = goal:GetText(possible)
			if needup.done~=done or needup.possible~=possible or needup.text~=text then
				needs=true
				print(goal.num.." needs updating")
			end
			needup.done=done
			needup.possible=possible
			needup.text=text
		end
	end
	return needs
end
--]]

function Step:AreRequirementsMet()
	local raceclass=true
	if self.requirement then
		if type(self.requirement) == "string" then
			raceclass = ZGV:RaceClassMatch(self.requirement)
		else
			raceclass=false
			for i,v in pairs(self.requirement) do if ZGV:RaceClassMatch(v) then raceclass=true break end end
		end
	end
	if not raceclass then return false end

	if self.condition_visible and not self.condition_visible() then return false end

	return true
	-- wrong
end

function Step:PrepareCompletion()
	if not InCombatLockdown() then
		for i=1,20 do DeleteMacro("ZygorGuidesMacro"..i) end
	end

	-- REMOVE non-matching goals
	--[[
	local i=1
	while i<#self.goals do
		print(i)
		if not self.goals[i]:IsFitting() then tremove(self.goals,i) else i=i+1 end
	end
	--]]

	-- repurposed: autoadjustment of get/kill/goal
	for i,goal in ipairs(self.goals) do
		goal:Prepare()
	end
end

--- 
-- @return changed,stilldirty
function Step:Translate()
	local changed=false
	local stilldirty=false

	for i,goal in ipairs(self.goals) do
		if goal:NeedsTranslation() then
			if goal:AutoTranslate() then changed=true else stilldirty=true end
		end
	end

	if not self.L then
		if self.title then
			local name,id = ZGV:ParseID(self.title)
			if id then
				local qt = ZGV:GetQuestData(id)
				if qt then
					self.title=qt
					self.L = true
					changed=true
					if ZGV.CurrentStep==self then ZGV:SetWaypoint() end
				else
					stilldirty=true
				end
			else
				self.L = true
			end
		else
			self.L = true
		end
	end
			
	return changed,stilldirty
end

--- Auxiliary steps are only used to lead to quest-related steps.
-- A step is auxiliary if it contains only non-quest-related goals.
function Step:IsAuxiliary()
	--if self.isauxiliary~=nil then return self.isauxiliary end
	for i,goal in ipairs(self.goals) do
		if not goal:IsAuxiliary() then
			self.isauxiliary=false
			return false
		end
	end
	--else...
	--self.isauxiliary=true
	return true
end

function Step:IsObsolete()
	--if self.isobsolete then return self.isobsolete end
	local oneobsolete=false
	for i,goal in ipairs(self.goals) do
		local obsolete = goal:IsObsolete()
		local complete,possible = goal:IsComplete()
		if obsolete then oneobsolete=true end
		if not (obsolete or goal:IsAuxiliary() or complete or (not possible and ZGV.db.profile.skipimpossible)) then return false end
	end
	if not oneobsolete then return false end
	--else...
	--self.isobsolete=true  -- once obsolete, forever obsolete
	return true
end

--- Checks if the step has any use - if not, it can be safely skipped as long as it's followed by other skippable steps up to a completed step.
-- @return true if the step is useful, false if not.
function Step:IsAuxiliarySkippable()
	local i=self.num
	local guide = self.parentGuide
	while guide and guide.steps do
		local step = guide.steps[i]
		if not step then
			return false
		end
		if step:IsAuxiliary() or not step:AreRequirementsMet() then
			i=i+1  -- jump over fellow auxiliaries
			if i>#guide.steps then
				guide = guide.next and ZGV:EnsureGuideParsed(guide.next,true) or nil
				i=1
			end
		else
			if i==self.num then
				return false
			else
				local complete,possible = step:IsComplete()
				return (ZGV.db.profile.skipobsolete and step:IsObsolete())
				or complete
				or (ZGV.db.profile.skipimpossible and not possible)
			end
		end
	end
	return false
end


function Step:GetTitle()
	if self.title then return self.title end
	for i,goal in ipairs(self.goals) do
		if goal.title then return goal.title end
		local questName = (goal.questid and ZGV:GetQuestName(goal.questid))
		if questName then return questName end
		if goal.quest and goal.L then return goal.quest end
		if goal.npc and goal.L then return goal.npc end
	end
end

function Step:GetNextStep()
	local guide=self.parentGuide
	if not guide or not guide.steps then return nil end
	if self.num<#guide.steps then
		return guide.steps[self.num+1]
	else
		guide = self.parentGuide.next and ZGV:EnsureGuideParsed(self.parentGuide.next,true) or nil
		if guide and guide.steps and guide.steps[1] then
			return guide.steps[1]
		else
			return nil
		end
	end
end

function Step:GetJumpDestination(target)
	if not target then return nil,nil end
	target = tostring(target):gsub("^%s+",""):gsub("%s+$","")
	target = target:gsub('^"(.-)"$',"%1")
	target = target:gsub("^'(.-)'$","%1")
	if target=="" then target="+1" end

	local guide = self.parentGuide
	local guidename = (guide and (guide.title or guide.title_full or guide.title_short)) or ZGV.CurrentGuideName

	local rel = target:match("^([+-]%d+)$")
	if rel then
		local stepnum = self.num + tonumber(rel)
		return stepnum, guidename
	end

	local abs = target:match("^(%d+)$")
	if abs then
		return tonumber(abs), guidename
	end

	local jumpGuide,jumpLabel = target:match("^(.-)#(.+)$")
	if jumpGuide and jumpGuide~="" then
		local g = ZGV:GetGuideByTitle(jumpGuide)
		local stepnum = 1
		if g and jumpLabel and g.labels and g.labels[jumpLabel] then
			stepnum = g.labels[jumpLabel]
		end
		return stepnum, jumpGuide
	end

	if target:find("\\") then
		return 1, target
	end

	if guide.labels and guide.labels[target] then
		return guide.labels[target], guidename
	end

	return nil,nil
end
