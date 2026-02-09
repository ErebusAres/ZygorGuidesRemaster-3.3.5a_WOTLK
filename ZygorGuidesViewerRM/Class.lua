--[[
Helper file for simulating class typing. Silly simple.

Usage:

	table = {}
	__CLASS[table]="MyClass"

--]]

__CLASS = {}
setmetatable(__CLASS,{__mode="k"})
