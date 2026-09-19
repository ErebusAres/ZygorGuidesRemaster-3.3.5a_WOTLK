-- Regression for a cross-zone LibRover route remaining active after arrival.
-- Usage: lua tools/pointer/test_route_zone_refresh.lua <addon directory>
local root = arg[1] or "ZygorGuidesViewerRM"

local function read(path)
	local file = assert(io.open(path,"rb"))
	local source = file:read("*a")
	file:close()
	return source
end

local waypointSource = read(root.."/Waypoints.lua")
local pointerSource = read(root.."/Pointer.lua")
assert(pointerSource:find('self.waypoint.travelDestZone and GetRealZoneText()==self.waypoint.travelDestZone',1,true),
	"arrow must refresh a travel route on destination-zone arrival")

local first = assert(waypointSource:find("local function StartLibRoverPath(finalWaypoint)",1,true))
local last = assert(waypointSource:find("function GetTravelAdvice(destZone)",first,true))
local routeSource = waypointSource:sub(first,last-1).."\nreturn StartLibRoverPath"

local currentZone = "Durotar"
GetRealZoneText = function() return currentZone end
CanUseLibRoverPath = function() return true end
IsDeathKnightStarterGuide = function() return false end
IsDeathKnightStarterZone = function() return false end
StartLibRoverIfNeeded = function() end
GetMapIDForGoal = function() return 331 end
ShowTravelAdviceWaypoint = function() return true end
CacheLibRoverPath = function() end
PickNextLibRoverNode = function(path) return path[2] end
GetAstrolabeZoneForMapID = function() return 1,3 end

local handler,route
ZGV = {
	Pointer = {
		ClearWaypoints = function() end,
		SetWaypoint = function(_,c,z,x,y,data)
			route = {c=c,z=z,x=x,y=y,data=data}
			return route
		end,
		ShowArrow = function() end,
	},
	LibRover = {
		Abort = function() end,
		QueueFindPath = function(_,_,_,_,_,_,_,callback) handler=callback end,
	},
}

local startRoute = assert((loadstring or load)(routeSource))()
local destination = {map="Ashenvale",x=82.85,y=79.04,t="Grom's Monument",
	goal={map="Ashenvale",x=82.85,y=79.04}}
local path = {{m=331,x=0.1,y=0.1},{m=331,x=0.7,y=0.6}}

assert(startRoute(destination),"cross-zone route did not start")
assert(handler,"LibRover handler was not queued")
handler("success",path)
assert(route and route.data.type=="route" and route.data.travelDestZone=="Ashenvale",
	"cross-zone LibRover route has no destination-zone arrival marker")

currentZone = "Ashenvale"
route = nil
assert(startRoute(destination),"same-zone route did not start")
handler("success",path)
assert(route and route.data.travelDestZone==nil,
	"same-zone LibRover route would continually refresh on every arrow update")

print("LibRover zone-arrival refresh regression passed")
