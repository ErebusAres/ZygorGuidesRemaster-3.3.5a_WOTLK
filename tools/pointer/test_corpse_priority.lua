local root = arg[1] or "ZygorGuidesViewerRM"

local function read(path)
	local file = assert(io.open(path,"rb"))
	local text = file:read("*a")
	file:close()
	return text
end

local function fail(message)
	error(message,2)
end

local source=read(root.."/Pointer.lua")
if not source:find('waypoint.type=="corpse"',1,true) then
	fail("corpse title must bypass active guide-goal formatting")
end
if not source:find("if SetMapToCurrentZone and not IsWorldMapVisible() then SetMapToCurrentZone() end",1,true) then
	fail("corpse lookup must refresh stale hidden map context after login/reload")
end
if not source:find('profile and profile.corpsejokes',1,true) or not source:find('_G.CORPSE or L["pointer_corpselabel"]',1,true) then
	fail("clear corpse title must be default with legacy jokes opt-in")
end
local options=read(root.."/Options.lua")
if not options:find("corpsejokes = false",1,true) or not options:find('name = L["opt_corpsejokes"]',1,true) then
	fail("corpse joke preference must exist and default off")
end
local first=assert(source:find("local arrowctrl_elapsed=0",1,true))
local last=assert(source:find("function Pointer:GetArrowRefreshRate",first,true))
local block=source:sub(first,last-1)

Pointer={waypoints={},ArrowFrame={}}
local dead=true
local instanceType="none"
local arena=false
UnitIsDeadOrGhost=function() return dead end
IsInInstance=function() return false,instanceType end
IsActiveBattlefieldArena=function() return arena end

local attempts=0
local corpse={type="corpse"}
function Pointer:SetCorpseArrow()
	attempts=attempts+1
	if self.corpsearrow and self.waypoints[self.corpsearrow] then
		self.ArrowFrame.waypoint=self.corpsearrow
		return self.corpsearrow
	end
	if attempts>=2 then
		self.corpsearrow=corpse
		self.waypoints[corpse]=true
		self.ArrowFrame.waypoint=corpse
		return corpse
	end
end

assert((loadstring or load)(block))()

Pointer:UpdateCorpseArrowPriority(0.49)
if attempts~=0 then fail("corpse lookup retried before the throttle elapsed") end
Pointer:UpdateCorpseArrowPriority(0.01)
if attempts~=1 then fail("first corpse retry did not run") end
Pointer:UpdateCorpseArrowPriority(0.5)
if attempts~=2 or Pointer.ArrowFrame.waypoint~=corpse then
	fail("later corpse coordinates were not acquired and prioritized")
end

Pointer.ArrowFrame.waypoint={type="way"}
Pointer:UpdateCorpseArrowPriority(0.5)
if attempts~=3 or Pointer.ArrowFrame.waypoint~=corpse then
	fail("a later guide waypoint was not replaced by the corpse arrow")
end

dead=false
Pointer:UpdateCorpseArrowPriority(1)
Pointer.corpsearrow=nil
Pointer.waypoints={}
Pointer.ArrowFrame.waypoint=nil
dead=true
Pointer:UpdateCorpseArrowPriority(0.49)
if attempts~=3 then fail("alive state did not reset the corpse retry throttle") end

instanceType="pvp"
Pointer:UpdateCorpseArrowPriority(1)
if attempts~=3 then fail("corpse retry should stay disabled in battlegrounds") end

print("Corpse-arrow priority regression passed")
