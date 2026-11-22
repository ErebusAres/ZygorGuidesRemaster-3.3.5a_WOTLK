-- Shared compatibility stubs for retail WOTLK guides
local ZGV = ZygorGuidesViewer
if not ZGV then return end
if not ZGV.DoMutex then ZGV.DoMutex = function() return false end end
if not ZGV.IMAGESDIR then ZGV.IMAGESDIR = "Interface\\AddOns\\ZygorGuidesViewerRM\\Guides\\Retail\\Images\\" end
if not ZGV.ItemScore then ZGV.ItemScore = false end
-- Global functions used in guide condition_valid/condition_suggested
if not raceclass then
	function raceclass(rc)
		local _,c = UnitClass("player")
		local _,r = UnitRace("player")
		return c == rc or r == rc
	end
end
if not completedq then
	function completedq(...) return ZGV.ConditionEnv.completedq(...) end
end
if not completedallq then
	function completedallq(...) return ZGV.ConditionEnv.completedallq(...) end
end
if not countcompletedq then
	function countcompletedq(...) return ZGV.ConditionEnv.countcompletedq(...) end
end
if not haveq then
	function haveq(...) return ZGV.ConditionEnv.haveq(...) end
end
if not haveallq then
	function haveallq(...) return ZGV.ConditionEnv.haveallq(...) end
end
if not counthaveq then
	function counthaveq(...) return ZGV.ConditionEnv.counthaveq(...) end
end
if not level then
	function level(l) return UnitLevel("player") >= l end
end
if not havequest then
	function havequest(id)
		return ZGV.ConditionEnv.havequest(id)
	end
end
ZGV.GuideMenuTier = ZGV.GuideMenuTier or "CLA"
if not ZGV.BETASTART then ZGV.BETASTART = function() end end
if not ZGV.BETAEND then ZGV.BETAEND = function() end end
