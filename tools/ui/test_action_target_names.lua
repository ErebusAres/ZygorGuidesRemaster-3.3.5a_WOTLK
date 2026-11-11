local root = (arg and arg[1]) or "."

local function read(path)
	local file = assert(io.open(root.."/"..path, "rb"))
	local text = file:read("*a")
	file:close()
	return text
end

local function loadlocal(source, signature, parameters, label)
	local body = assert(source:match("local function "..signature.."(.-)\n\tend"), "missing "..label)
	local loader = loadstring or load
	return assert(loader("return function"..parameters..body.."\nend", label))()
end

local main = read("ZygorGuidesViewer.lua")
local safename = loadlocal(main, "AB_SafeName%(name%)", "(name)", "AB_SafeName")
local buildtargetmacro = loadlocal(main, "AB_BuildTargetMacro%(name, marker%)", "(name, marker)", "AB_BuildTargetMacro")

local quoted = '"Little" Logok'
assert(safename(quoted) == quoted, "literal quotes in NPC names must be preserved")
assert(safename("|cffffffffQuoted|r\r\nName") == "Quoted  Name", "unsafe formatting must still be removed")

local macro = buildtargetmacro(safename(quoted))
assert(macro:find('/targetexact "Little" Logok', 1, true), "exact-target macro must retain NPC quotes")
assert(macro:find('/target [noexists] "Little" Logok', 1, true), "fallback target macro must retain NPC quotes")

print("PASS: action target macros preserve literal quotes in NPC names")
