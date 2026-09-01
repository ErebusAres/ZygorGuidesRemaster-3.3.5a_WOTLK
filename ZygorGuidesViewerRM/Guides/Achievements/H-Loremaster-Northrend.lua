local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

local function RegisterNorthrendLoremaster(zone,source,achievement,required,startlevel)
	local title=("Horde Loremaster Guides\\Northrend\\[%d] %s"):format(startlevel,zone)
	local guide=("author ErebusAres\n"..
		"type achievements\n"..
		"faction horde\n"..
		"startlevel %d\n"..
		"step\n"..
		".' This guide reuses the complete Horde quest route already included for %s.\n"..
		".' Previously completed quests will be skipped automatically. Click here to begin. |confirm\n"..
		"leechsteps \"%s\"\n"..
		"step\n"..
		".' Complete %d quests in %s |achieve %d\n"):format(startlevel,zone,source,required,zone,achievement)

	ZygorGuidesViewer:RegisterGuide(title,{
		author="ErebusAres",
		type="achievements",
		faction="horde",
		startlevel=startlevel,
		description=("Complete the Horde %s quest achievement by following the existing full-zone route."):format(zone),
		condition_suggested=function() return level>=startlevel and not achieved(achievement) end,
	},guide)
end

RegisterNorthrendLoremaster(
	"Borean Tundra",
	"Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",
	1358,150,70
)

RegisterNorthrendLoremaster(
	"Howling Fjord",
	"Leveling Guides\\Northrend (69-80)\\Howling Fjord (69-71)",
	1356,105,69
)

RegisterNorthrendLoremaster(
	"Dragonblight",
	"Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",
	1359,130,72
)

RegisterNorthrendLoremaster(
	"Grizzly Hills",
	"Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",
	1357,85,74
)

RegisterNorthrendLoremaster(
	"Zul'Drak",
	"Leveling Guides\\Northrend (69-80)\\Zul'Drak (75-77)",
	36,100,75
)

RegisterNorthrendLoremaster(
	"Sholazar Basin",
	"Leveling Guides\\Northrend (69-80)\\Sholazar Basin (77-78)",
	39,75,77
)

RegisterNorthrendLoremaster(
	"The Storm Peaks",
	"Zygor's Horde Dailies Guides\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",
	38,100,78
)

RegisterNorthrendLoremaster(
	"Icecrown",
	"Leveling Guides\\Northrend (69-80)\\Icecrown (79-80)",
	40,140,79
)
