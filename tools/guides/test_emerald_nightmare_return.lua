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

local routes={
	"Guides/Retail/Leveling/ZygorLevelingAllianceWOTLK.lua",
	"Guides/Retail/Leveling/ZygorLevelingHordeWOTLK.lua",
}

for _,route in ipairs(routes) do
	local text=read(root.."/"..route)
	local start=text:find("accept Hope Within the Emerald Nightmare##13074",1,true)
	local wake=start and text:find('Wake from the Dream |nobuff spell:57413 |q 13074',start,true)
	local turnin=wake and text:find("turnin Hope Within the Emerald Nightmare##13074",wake,true)
	local boon=turnin and text:find("accept The Boon of Remulos##13075",turnin,true)
	local dialogue=boon and text:find('Tell him _"I wish to return to Arch Druid Lilliandra."_',boon,true)
	local portal=dialogue and text:find("Click the Moonglade Return Portal that appears nearby",dialogue,true)
	local returnGoal=portal and text:find('Return to Icecrown |complete zone("Icecrown")',portal,true)
	local bridenbrad=returnGoal and text:find("talk Crusader Bridenbrad##30562",returnGoal,true)

	if not bridenbrad then
		fail(route.." is missing or misordering the Dream wake, Remulos dialogue, portal, and Icecrown return flow")
	end
	if not text:find("collect 3 Emerald Acorn##43006 |q 13074/1",start,true) then
		fail(route.." does not use the verified Emerald Acorn item ID 43006")
	end
end

print("Emerald Nightmare return-route regression passed")
