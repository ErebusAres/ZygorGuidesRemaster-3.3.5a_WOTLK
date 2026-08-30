-- Regression for repeated Gear Finder opens reusing valid equipped/results state.
-- Usage: lua tools/gearfinder/test_open_cache.lua <addon directory>
local addon = assert(arg[1], "pass the addon directory")
local function read(path)
  local f = assert(io.open(path, "rb")); local s = f:read("*a"); f:close(); return (s:gsub("^\239\187\191", ""))
end
local function compile(source, name, env)
  if setfenv then local fn = assert(loadstring(source, name)); setfenv(fn, env); return fn end
  return assert(load(source, name, "t", env))
end
local source = read(addon.."/Code-WOTLK/Item-GearFinder.lua")
local first = assert(source:find("function GearFinder:ShowFinder()", 1, true))
local showFinder = source:sub(first)

local env = setmetatable({}, {__index=_G})
local ensureCalls, equippedCalls, scanCalls, showCalls = 0, 0, 0, 0
local finder = {
  MainFrame={Hide=function() end},
  ScoreDungeonItems=function() scanCalls=scanCalls+1 end,
  UpdateSystemTab=function() end,
}
local upgrades = {ScoredEquippedItems=true}
function upgrades:ScoreEquippedItems()
  equippedCalls=equippedCalls+1
  self.ScoredEquippedItems=true
end
local itemScore = {
  ActiveRuleSet={stats={},itemtypes={}},
  Upgrades=upgrades,
  EnsureActiveRuleSet=function() ensureCalls=ensureCalls+1; return true end,
  SetStatWeights=function() error("repeated open must not rebuild unchanged stat weights") end,
}
env.ZygorGuidesViewer={db={profile={autogear=true}},ItemScore=itemScore}
env.ZGV=env.ZygorGuidesViewer
env.GearFinder=finder
env.ItemScore=itemScore
env.ZygorGearFinder={IsVisible=function() return false end,Show=function() showCalls=showCalls+1 end}
env.CharacterFrame={IsShown=function() return true end,numTabs=0}
env.SetCharacterHeaderShown=function() end
compile(showFinder,"ShowFinder",env)()

finder:ShowFinder()
finder:ShowFinder()
assert(ensureCalls==2, "active rules should be checked on each open")
assert(equippedCalls==0, "valid equipped state must be reused")
assert(scanCalls==2 and showCalls==2, "finder should still show/ask for results")

upgrades.ScoredEquippedItems=false
finder:ShowFinder()
assert(equippedCalls==1 and upgrades.ScoredEquippedItems, "invalid equipped state must be refreshed once")
finder:ShowFinder()
assert(equippedCalls==1, "refreshed equipped state must be reused on the next open")
print("PASS: repeated Gear Finder opens reuse unchanged scoring state")
