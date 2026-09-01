local root = arg[1] or "ZygorGuidesViewerRM"

tinsert=table.insert

local function fail(message)
	error(message,2)
end

function TableKeys(tbl)
	local keys={}
	for key in pairs(tbl or {}) do keys[#keys+1]=key end
	return keys
end

function ZygorGuidesViewer_L()
	return setmetatable({coords="%s,%s"},{__index=function(_,key) return key end})
end

ZygorGuidesViewer={
	BZL={},
	BSZL={},
	BFL={},
	StandingNamesEngRev={},
	dailyQuests={},
	registeredguides={},
	StepProto_mt={},
	GoalProto_mt={},
}

local ZGV=ZygorGuidesViewer

function ZGV:GetQuestName() return nil end
function ZGV:RaceClassMatch() return true end
function ZGV:GetGuideByTitle(title)
	for _,guide in ipairs(self.registeredguides) do
		if guide.title==title then return guide end
	end
end
function ZGV:EnsureGuideParsed(guide)
	if guide.parsed then return guide,true end
	if guide._parsing then return guide,false end
	guide._parsing=true
	local parsed,err,line,linedata=self:ParseEntry(guide.rawdata)
	guide._parsing=nil
	if not parsed then
		guide.last_error={err,line,linedata}
		return guide,false
	end
	for key,value in pairs(parsed) do guide[key]=value end
	guide.parsed=true
	return guide,true
end

GetRealZoneText=function() return "Test Zone" end

assert(loadfile(root.."/Parser.lua"))()

local source={
	title="Source Guide",
	rawdata=[[
author Test
startlevel 1
step
label "First"
goto Test Zone,10,20
.' First source step
step
label "Second"
accept Source Quest##101
turnin Source Quest##101
]],
}
ZGV.registeredguides[1]=source

local ranged,err=ZGV:ParseEntry([[
author Test
startlevel 1
step
.' Before leech
leechsteps "Source Guide" 2-2
step
.' After leech
]])
if not ranged then fail("range parse failed: "..tostring(err)) end
if #ranged.steps~=3 then fail("expected 3 ranged steps, got "..#ranged.steps) end
local cloned=ranged.steps[2]
if cloned.label~="Second" then fail("wrong step was cloned") end
if cloned.parentGuide~=ranged or cloned.num~=2 then fail("cloned step ownership was not rebound") end
if #cloned.goals~=2 then fail("expected 2 cloned goals, got "..#cloned.goals) end
if cloned.goals[1].parentStep~=cloned or cloned.goals[1].num~=1 then fail("cloned goal ownership was not rebound") end
if cloned.goals[1].questid~=101 or cloned.goals[2].questid~=101 then fail("quest metadata was not cloned") end
if ranged.quests[101]~=1 then fail("leeched quest was not indexed on the composed guide") end
if ranged.labels.Second~=2 then fail("leeched label was not indexed on the composed guide") end

local all,allerr=ZGV:ParseEntry([[
author Test
startlevel 1
leechsteps "Source Guide"
]])
if not all then fail("full parse failed: "..tostring(allerr)) end
if #all.steps~=2 then fail("expected both source steps, got "..#all.steps) end
if all.steps[1]==source.steps[1] or all.steps[1].goals[1]==source.steps[1].goals[1] then
	fail("leeched steps or goals were not cloned")
end

local missing,missingerr=ZGV:ParseEntry([[
author Test
startlevel 1
leechsteps "Missing Guide"
]])
if missing or not tostring(missingerr):find("Cannot leech missing guide",1,true) then
	fail("missing guide did not return a useful parser error")
end

print("leechsteps parser regression passed")
