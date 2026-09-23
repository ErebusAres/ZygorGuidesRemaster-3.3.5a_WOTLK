-- Regression for Retail-format |equipped goals and inventory-driven action refresh.
-- Usage: lua tools/goal/test_equipped_items.lua <addon directory>
local root=assert(arg[1],"addon root required")

ZygorGuidesViewer={
	L={},
	db={char={}},
	recentlyCompletedGoals={},
	recentlyStickiedGoals={},
}
QUEST_MONSTERS_KILLED="Enemies slain: %d/%d"

local equipped={}
GetInventoryItemLink=function(_,slot) return equipped[slot] end
GetItemCount=function(item) return item==46735 and 1 or 0 end

assert(loadfile(root.."/Goal.lua"))()
local goal=setmetatable({action="equipped",item="Synthebrew Goggles",itemid=46735},ZygorGuidesViewer.GoalProto_mt)

local complete,possible=goal:IsComplete()
assert(complete==false and possible==true,"an unequipped owned item should remain incomplete but possible")

equipped[1]="|cff0070dd|Hitem:46735:0:0:0:0:0:0:0:80|h[Synthebrew Goggles]|h|r"
complete,possible=goal:IsComplete()
assert(complete==true and possible==true,"an item-id match in any equipped slot should complete the goal")

equipped[1]="|cff0070dd|Hitem:99999:0:0:0:0:0:0:0:80|h[Synthebrew Goggles]|h|r"
complete=goal:IsComplete()
assert(complete==false,"item id must take priority over a coincidentally matching item name")

local file=assert(io.open(root.."/ZygorGuidesViewer.lua","rb"))
local viewer=file:read("*a")
file:close()
assert(viewer:find('if event=="BAG_UPDATE" then',1,true),"BAG_UPDATE does not trigger the inventory-driven UI refresh")
assert(viewer:find("self:RefreshInventoryDrivenUI()",1,true),"inventory changes do not refresh current action buttons")

print("Equipped-item and inventory refresh regression passed")
