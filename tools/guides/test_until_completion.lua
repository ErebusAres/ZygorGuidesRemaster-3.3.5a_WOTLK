-- Regression for route steps whose |until condition changes just after a reset.
-- Usage: lua tools/guides/test_until_completion.lua <addon directory>
local root=assert(arg[1],"addon root required")

ZygorGuidesViewer={
	L={}, LM={},
	db={profile={skipimpossible=true,skipobsolete=true,skipauxsteps=true}},
}
assert(loadfile(root.."/Step.lua"))()

local exit=false
local step=setmetatable({goals={},condition_until=function() return exit end},ZygorGuidesViewer.StepProto_mt)
local complete=step:IsComplete()
assert(complete==false,"an unfinished repeating route should remain active")

exit=true
local possible,manual
complete,possible,manual=step:IsComplete()
assert(complete==true and possible==true and manual==false,"a satisfied |until condition should end the route immediately")

print("Until-condition completion regression passed")
