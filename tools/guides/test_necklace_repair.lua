local root = arg[1] or "ZygorGuidesViewerRM"

local function fail(message)
	error(message,2)
end

local captured={}
ZygorGuidesViewer={}
function ZygorGuidesViewer:RegisterGuide(title,options,rawdata)
	local guide={title=title,options=options or {},rawdata=rawdata or ""}
	captured[#captured+1]=guide
	return guide
end

level=80
local jewelcrafting=450
skill=function(name)
	if name=="Jewelcrafting" then return jewelcrafting end
	return 0
end

assert(loadfile(root.."/Guides/Professions/AresJewelcrafting.lua"))()
if #captured~=1 then fail("expected one Necklace Repair guide, got "..#captured) end

local guide=captured[1]
local expectedTitle="Profession Guides\\Jewelcrafting\\Necklace Repair (Repeatable)"
if guide.title~=expectedTitle then fail("unexpected guide title: "..tostring(guide.title)) end
if guide.options.startlevel~=77 or guide.options.type~="professions" then
	fail("incorrect level or guide type metadata")
end
if not tostring(guide.options.author):find("Advocaite",1,true) then
	fail("contributor credit is missing")
end

level=76
jewelcrafting=450
if guide.options.condition_valid() then fail("level 76 should not pass the guide gate") end
level=80
jewelcrafting=374
if guide.options.condition_valid() then fail("Jewelcrafting 374 should not pass the guide gate") end
jewelcrafting=375
if not guide.options.condition_valid() then fail("level 80 with Jewelcrafting 375 should pass the guide gate") end

for _,id in ipairs({13148,43297,43299,36923,43298,28701}) do
	if not guide.rawdata:find(tostring(id),1,true) then fail("missing required ID "..id) end
end
if not guide.rawdata:find("dropped starter necklace",1,true) or not guide.rawdata:find("quest%-provided necklace") then
	fail("the two Damaged Necklace items are not clearly distinguished")
end
if not guide.rawdata:find('|next "Necklace_Start"',1,true) then fail("repeat loop is missing") end

tinsert=table.insert
loadstring=loadstring or load
if not setfenv then
	function setfenv(func,environment)
		local index=1
		while true do
			local name=debug.getupvalue(func,index)
			if name=="_ENV" then
				debug.upvaluejoin(func,index,function() return environment end,1)
				break
			elseif not name then
				break
			end
			index=index+1
		end
		return func
	end
end
function TableKeys(tbl)
	local keys={}
	for key in pairs(tbl or {}) do keys[#keys+1]=key end
	return keys
end
function ZygorGuidesViewer_L()
	return setmetatable({coords="%s,%s"},{__index=function(_,key) return key end})
end

local ZGV=ZygorGuidesViewer
ZGV.BZL={}
ZGV.BSZL={}
ZGV.BFL={}
ZGV.StandingNamesEngRev={}
ZGV.dailyQuests={}
ZGV.instantQuests={}
ZGV.StepProto_mt={}
ZGV.GoalProto_mt={}
ZGV.db={char={fakelevel=0}}
function ZGV:GetQuestName() return nil end
function ZGV:RaceClassMatch() return true end
GetRealZoneText=function() return "Dalaran" end
UnitLevel=function() return level end

local activeQuest=false
local itemCounts={}
GetNumQuestLogEntries=function() return activeQuest and 1 or 0 end
GetQuestLogTitle=function()
	return "Necklace Repair",77,nil,nil,false,nil,nil,13148
end
GetItemCount=function(itemID) return itemCounts[itemID] or 0 end

assert(loadfile(root.."/Parser.lua"))()
local parsed,err,line,linedata=ZGV:ParseEntry(guide.rawdata)
if not parsed then
	fail(("guide parse failed: %s (line %s: %s)"):format(tostring(err),tostring(line),tostring(linedata)))
end
if #parsed.steps~=5 then fail("expected five guide steps, got "..#parsed.steps) end
if parsed.labels.Necklace_Start~=1 then fail("repeat-loop label did not parse to step one") end
if parsed.quests[13148]==nil then fail("quest 13148 was not indexed") end

local hasLoop=false
for _,goal in ipairs(parsed.steps[4].goals or {}) do
	if goal.next=="Necklace_Start" then hasLoop=true end
end
if not hasLoop then fail("the remaining-necklace goal did not retain its loop target") end

local function findGoal(step,predicate,description)
	for _,goal in ipairs(step.goals or {}) do
		if predicate(goal) then return goal end
	end
	fail("could not find parsed goal: "..description)
end

local starterCollect=findGoal(parsed.steps[1],function(goal)
	return goal.action=="collect" and goal.targetid==43297
end,"collect dropped starter necklace")
local starterUse=findGoal(parsed.steps[1],function(goal)
	return goal.action=="use" and goal.useitemid==43297
end,"use dropped starter necklace")
activeQuest=false
if not starterCollect.condition_visible() or not starterUse.condition_visible() then
	fail("starter necklace actions should be visible before the quest is accepted")
end
activeQuest=true
if starterCollect.condition_visible() or starterUse.condition_visible() then
	fail("starter necklace actions should be hidden when the quest is already active")
end

local chalcedonyCollect=findGoal(parsed.steps[2],function(goal)
	return goal.action=="collect" and goal.targetid==36923
end,"collect Chalcedony")
itemCounts[43298]=0
if not chalcedonyCollect.condition_visible() then fail("Chalcedony should be requested before repair") end
itemCounts[43298]=1
if chalcedonyCollect.condition_visible() then fail("Chalcedony should not be requested after repair") end

local haveAnother=findGoal(parsed.steps[4],function(goal)
	return goal.next=="Necklace_Start"
end,"repeat when another starter remains")
local outOfStarters=findGoal(parsed.steps[4],function(goal)
	return goal.condition_complete_raw=="itemcount(43297)==0"
end,"stop when no starter remains")
itemCounts[43297]=1
if not haveAnother.condition_complete() or not haveAnother.condition_visible() then
	fail("remaining starter necklace should activate the repeat path")
end
if outOfStarters.condition_complete() or outOfStarters.condition_visible() then
	fail("out-of-necklaces state should be hidden while a starter remains")
end
itemCounts[43297]=0
if haveAnother.condition_complete() or haveAnother.condition_visible() then
	fail("repeat path should be inactive without another starter necklace")
end
if not outOfStarters.condition_complete() or not outOfStarters.condition_visible() then
	fail("out-of-necklaces state should activate when no starter remains")
end

local autoload=assert(io.open(root.."/Guides/Autoload.xml","rb")):read("*a")
if not autoload:find('Professions\\AresJewelcrafting.lua',1,true) then
	fail("AresJewelcrafting.lua is not loaded by Guides/Autoload.xml")
end

print("Necklace Repair guide regression passed")
