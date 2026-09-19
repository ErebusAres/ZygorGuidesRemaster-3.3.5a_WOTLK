-- Regression for refreshing a guide arrow when entering a new zone.
-- Usage: lua tools/pointer/test_zone_transition_refresh.lua <addon directory>
local root = arg[1] or "ZygorGuidesViewerRM"
local file = assert(io.open(root.."/Pointer.lua","rb"))
local source = file:read("*a")
file:close()

local first = assert(source:find("function Pointer:QueueGuideWaypointZoneRefresh()",1,true))
local last = assert(source:find("------------------------------------------- ARROW",first,true))
local block = source:sub(first,last-1)

local queued,refreshes={},0
local dead=false
Pointer={ArrowFrame={waypoint={type="way",goal={}}}}
function Pointer:ClearWaypoints() return 0 end
function Pointer:SetCorpseArrow() end
ZGV={Pointer=Pointer,CurrentGuide={},CurrentStep={}}
function ZGV:Debug() end
function ZGV:ScheduleTimer(callback,delay)
	assert(delay>0,"zone refresh must wait for settled zone state")
	queued[#queued+1]=callback
end
function ZGV:SetWaypoint() refreshes=refreshes+1 end
UnitIsDeadOrGhost=function() return dead end
IsInInstance=function() return false,"none" end
IsActiveBattlefieldArena=function() return false end

assert((loadstring or load)(block))()
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
assert(#queued==1 and refreshes==0,"zone events must coalesce a delayed guide refresh")
queued[1]()
assert(refreshes==1 and not Pointer.zoneWaypointRefreshPending,
	"guide arrow was not recalculated after entering the new zone")

Pointer.ArrowFrame.waypoint={type="route",travelDestZone="Ashenvale"}
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
assert(#queued==2,"cross-zone route should also refresh after a zone change")
queued[2]()
assert(refreshes==2,"cross-zone route was not recalculated")

Pointer.ArrowFrame.waypoint={type="manual"}
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
assert(#queued==2,"manual waypoints must not be replaced by a guide refresh")
Pointer.ArrowFrame.waypoint={type="corpse",goal={}}
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
assert(#queued==2,"corpse waypoints must not be replaced by a guide refresh")

Pointer.ArrowFrame.waypoint={type="way",goal={}}
dead=true
Pointer.Overlay_OnEvent({},"ZONE_CHANGED_NEW_AREA")
assert(#queued==2,"dead players must retain corpse-arrow priority")

print("Zone-transition guide waypoint regression passed")
