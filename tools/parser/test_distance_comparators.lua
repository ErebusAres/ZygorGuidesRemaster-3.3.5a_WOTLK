-- Regression for arrival/departure distance suffix parsing.
-- Usage: lua tools/parser/test_distance_comparators.lua <addon directory>
local addon = assert(arg[1], "pass the addon directory")
local function read(path)
  local f = assert(io.open(path, "rb")); local s = f:read("*a"); f:close(); return (s:gsub("^\239\187\191", ""))
end

local parser = read(addon.."/Parser.lua")
local first = assert(parser:find("function me:ParseMapXYDist", 1, true))
local last = assert(parser:find("local function ParsePathPoints", first, true))
local chunk = parser:sub(first, last - 1)
local env = setmetatable({me={}}, {__index=_G})
local fn
if setfenv then fn=assert(loadstring(chunk,"ParseMapXYDist")); setfenv(fn,env) else fn=assert(load(chunk,"ParseMapXYDist","t",env)) end
fn()

local map,x,y,dist,mode = env.me:ParseMapXYDist("Blade's Edge Mountains 60.18,68.79 > 50")
assert(map=="Blade's Edge Mountains" and x==60.18 and y==68.79 and tonumber(dist)==50 and mode=="gt", "departure suffix must retain greater-than mode")
map,x,y,dist,mode = env.me:ParseMapXYDist("60.18,68.79 < 20")
assert(map==nil and x==60.18 and y==68.79 and tonumber(dist)==20 and mode=="lt", "arrival suffix must retain less-than mode")

local goal = read(addon.."/Goal.lua")
assert(goal:find('self.distmode=="gt" and realdist2>=dist*dist',1,true), "goal completion must use greater-than mode")
local guide = read(addon.."/Guides/Achievements/A-Loremaster-BurningCrusade.lua")
assert(guide:find("|goto 60.18,68.79 > 50",1,true), "affected flight departure step must remain covered")
print("PASS: distance comparators preserve arrival and departure behavior")
