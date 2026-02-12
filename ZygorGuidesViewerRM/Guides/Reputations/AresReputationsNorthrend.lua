local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Wyrmrest Accord Pre-Quests",[[
	author ErebusAres
	startlevel 80
	next Ares' Alliance Quest Guides\\Reputation\\The Wyrmrest Accord Dailies
	description This guide unlocks the Wyrmrest Accord daily quest chain in Dragonblight.
	step
		#include "A_Wyrmrest_Pre-Quests"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Wyrmrest Accord Dailies",[[
	author ErebusAres
	startlevel 80
	description This guide runs the Wyrmrest Accord daily quest route in Dragonblight.
	step
		#include "A_Wyrmrest_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Sons of Hodir Pre-Quests",[[
	author ErebusAres
	startlevel 80
	description This guide unlocks the Sons of Hodir chain in The Storm Peaks.
	step
		#include "A_Sons_Hodir_Pre-Quests"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Oracles Pre-Quests",[[
	author ErebusAres
	startlevel 80
	next Ares' Alliance Quest Guides\\Reputation\\The Oracles Dailies
	description This guide unlocks The Oracles daily quests in Sholazar Basin.
	step
		#include "A_Oracles_PreQuests"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Oracles Dailies",[[
	author ErebusAres
	startlevel 80
	description This guide runs The Oracles daily quests in Sholazar Basin.
	step
		#include "A_Oracles_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Frenzyheart Tribe Pre-Quests",[[
	author ErebusAres
	startlevel 80
	next Ares' Alliance Quest Guides\\Reputation\\Frenzyheart Tribe Dailies
	description This guide unlocks Frenzyheart Tribe daily quests in Sholazar Basin.
	step
		#include "A_Frenzyheart_PreQuests"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Frenzyheart Tribe Dailies",[[
	author ErebusAres
	startlevel 80
	description This guide runs Frenzyheart Tribe daily quests in Sholazar Basin.
	step
		#include "A_Frenzyheart_Dailies"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Northrend Reputation Hub",[[
	author ErebusAres
	startlevel 80
	description Quick launcher for major Northrend reputation guides.
	step
		.' Click to open the _Argent Crusade_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\Argent Crusade (Overview)"
	step
		.' Click to open the _Kirin Tor_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\Kirin Tor (Overview)"
	step
		.' Click to open the _Knights of the Ebon Blade_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\Knights of the Ebon Blade (Overview)"
	step
		.' Click to open _The Kalu'ak_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\The Kalu'ak (Overview)"
	step
		.' Click to open _The Sons of Hodir_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\The Sons of Hodir (Overview)"
	step
		.' Click to open _The Wyrmrest Accord_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\The Wyrmrest Accord (Overview)"
	step
		.' Click to open _Explorers' League_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\Explorers' League (Overview)"
	step
		.' Click to open _The Frostborn_ reputation guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\The Frostborn (Overview)"
	step
		.' Click to open _The Oracles_ pre-quest guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\The Oracles Pre-Quests"
	step
		.' Click to open _Frenzyheart Tribe_ pre-quest guide. |confirm |next "Ares' Alliance Quest Guides\\Reputation\\Frenzyheart Tribe Pre-Quests"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Argent Crusade (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Argent Crusade reputation overview guide.
	step
		.' Open Zygor's Argent Crusade reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\Argent Crusade"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Kirin Tor (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Kirin Tor reputation overview guide.
	step
		.' Open Zygor's Kirin Tor reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\Kirin Tor"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Knights of the Ebon Blade (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Knights of the Ebon Blade reputation overview guide.
	step
		.' Open Zygor's Knights of the Ebon Blade reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\Knights of the Ebon Blade"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Kalu'ak (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Kalu'ak reputation overview guide.
	step
		.' Open Zygor's Kalu'ak reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\The Kalu'ak"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Sons of Hodir (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Sons of Hodir reputation overview guide.
	step
		.' Open Zygor's Sons of Hodir reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\The Sons of Hodir"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Wyrmrest Accord (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Wyrmrest Accord reputation overview guide.
	step
		.' Open Zygor's Wyrmrest Accord reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\The Wyrmrest Accord"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\Explorers' League (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Explorers' League reputation overview guide.
	step
		.' Open Zygor's Explorers' League reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\Explorers' League"
]])

ZygorGuidesViewer:RegisterGuide("Ares' Alliance Quest Guides\\Reputation\\The Frostborn (Overview)",[[
	author ErebusAres
	startlevel 80
	description Redirects to the proven Frostborn reputation overview guide.
	step
		.' Open Zygor's Frostborn reputation guide. |confirm |next "Zygor's Alliance Dailies Guides\\Reputation\\The Frostborn"
]])
