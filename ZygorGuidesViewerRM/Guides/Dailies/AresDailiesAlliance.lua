local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceDailiesInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ares' GarryOwen Dailies Guide\\GarryOwen\\Sigils of GarryOwen",[[
	description This guide section contains the GarryOwen Dailies for Level 60+.
	description This guide section should be in order of easiest to hardest.
	author ErebusAres
	next Ares' GarryOwen Dailies Guide\\GarryOwen\\Burning Crusade GarryOwen Dailies
    daily
	startlevel 60
	step //1
		.' Return to GarryOwen|cast Teleport: GarryOwen##31
		'Go to GarryOwen Embassy|goto Garryowen Fields Forever|noway|c|tip Manually progress the guide while in GarryOwen.
	step //2
		.talk Major Joel H. Elliot##60013
		..accept Clearing the Way for the Zandalari##50029
		..accept The Neverending Story...##50030
		..accept Snuffing Out the Fire##50031
		..accept Die Another Day##50032
		..accept It's a Hell of a job##50033
	step //3
		'Go back outside GarryOwen Township|goto Garryowen Fields Forever|noway|c
	step //4
		.talk Vesprystus##3838
		.'Ignore the default tip..
		.'He's out to the left, follow the road straight up towards the Garryowen Smithy area.
		'Fly to Stormwind|goto Stormwind City|noway|c
	step //5
		'Fly to Morgan's Vigil, Burning Steppes|goto Burning Steppes|noway|c
	step //6
		goto Burning Steppes,31.6,61.5
		.kill 10 Flamescale Dragonspawn|q 50031/1
		.kill 10 Flamescale Wyrmkin|q 50031/2
		.kill 1 Searscale Drake|q 50031/3
		.' You can find more Flamescale up the hill at 31.0,63.8|goto 31.0,63.8
		.' You can find more Flamescale at 35.4,48.5|goto 35.4,48.5
		.' You can find more Flamescale at 21.3,46.4|goto 21.3,46.4
	step //7
		'Fly to Light's Hope Chapel, Eastern Plaguelands|goto Eastern Plaguelands|noway|c|tip You can Teleport back to Garryowen and Talk to Vesprystus and go to Stormwind to speed up this task.
	step //8
		goto Eastern Plaguelands,71.9,49.9
		.kill 5 Death Singer|q 50030/1
		.kill 5 Diseased Flayer|q 50030/2
		.kill 5 Dread Weaver|q 50030/3
		.kill 5 Scourge Champion|q 50030/4
		.'Defeat creatures as you go NorthEast, up the hill|goto Eastern Plaguelands,72.0,41.6
		.'You can find a few more of each creature in this upper area|goto Eastern Plaguelands,76.4,37.5
	step //9
		'Fly to Cenarion Hold, Silithus|goto Silithus|noway|c|tip Teleport back to Garryowen and fly out to Darnassus this time.
	step //10
		goto Silithus,39.0,44.3
		.kill 10 Twilight Avenger|q 50032/1
		.kill 10 Twilight Geolord|q 50032/2
	step //11
		goto Silithus,66.5,21.0
		.kill 3 Twilight Master|q 50032/3
	step //12
		'Fly to Rebel Camp, Stranglethorn Vale|goto Stranglethorn Vale|noway|c|tip Teleport back to Garryowen and fly to Stormwind.
	step //13
		goto Stranglethorn Vale,48.7,17.6
		.'These mobs are located up the hill towards the 20-Man Raid Zul'Gurub.
		.'This quest is recommended for a group of 2+.
		.'Grab a friend if it's too difficult to solo.
		.kill 10 Gurubashi Warrior|q 50029/1
		.kill 10 Hakkari Oracle|q 50029/2
	step //14
		'Fly to Nethergarde Keep, Blasted Lands|goto Blasted Lands|noway|c|tip Teleport back to Garryowen and fly to Stormwind.
	step //15
		goto Blasted Lands,43.4,57.7
		.' This quest is recommend for groups of 3+.
		.' Grab a few friends if it's too difficult to solo.
		.kill 10 Felguard Elite|q 50033/1
		.kill 3 Manahound|q 50033/2
		.kill 2 Doomguard Commander|q 50033/3
		.kill 1 Dreadlord|q 50033/4|goto Blasted Lands,39.3,73.6
	step //16
		.' Return to GarryOwen|cast Teleport: GarryOwen##31
		'Go to GarryOwen Embassy|goto Garryowen Fields Forever|noway|c|tip Manually progress the guide while in GarryOwen.
	step //17
		.talk Major Joel H. Elliot##60013
		..turnin Clearing the Way for the Zandalari##50029
		..turnin The Neverending Story...##50030
		..turnin Snuffing Out the Fire##50031
		..turnin Die Another Day##50032
		..turnin It's a Hell of a job##50033
		.'Congrats on your +11 Sigils of Garryowen
]])

ZygorGuidesViewer:RegisterGuide("Ares' GarryOwen Dailies Guide\\GarryOwen\\Burning Crusade GarryOwen Dailies",[[
	description This guide section contains the GarryOwen Dailies for Level 70+.
	description This guide section should be in order of easiest to hardest.
	author ErebusAres
    daily
	startlevel 70
	step //1
		.' Return to GarryOwen|cast Teleport: GarryOwen##31
		'Go to GarryOwen Embassy|goto Garryowen Fields Forever|noway|c|tip Manually progress the guide while in GarryOwen.
	step //2
		.talk 1st Lt. Edward S. Godfrey##60098
		..accept Where It Starts and Stop It##50035
		..accept Water Wars##50036
		..accept For the Children##50037
		..accept Magically Delicious##50038
		..accept It Comes Back to Bite you##50039
	step //3
		'Fly to Telredor, Zangarmarsh|goto Zangarmarsh|noway|c
	step //4
		goto Zangarmarsh,62.7,65.3
		.kill 8 Darkcrest Siren|q 50036/3
		.kill 8 Darkcrest Taskmaaster|q 50036/4
	step //5
		goto Zangarmarsh,26.6,42.6
		.kill 8 Bloodscale Enchantress|q 50036/1
		.kill 8 Bloodscale Slavedriver|q 50036/2
	step //6
		'Fly to Shattrath City, Terokkar Forest|goto Shattrath City|noway|c
	step //7
		'Go NorthWest to Terokkar Forest|goto Terokkar Forest|noway|c
	step //8
		goto Terokkar Forest,26.7,10.3
		.kill 10 Gordunni Back-Breaker|q 50037/1
		.kill 10 Gordunni Elementalist|q 50037/2
		.kill 10 Gordunni Head-Splitter|q 50037/3
		.' Watch out for Gordunni Soulreaper that roams the area.
		.' He's a pretty strong Elite that could be difficult to kill.
	step //9
		'Fly to Cosmowrench, Netherstorm|goto Netherstorm|noway|c
	step //10
		goto Netherstorm,59.4,66.5
		.kill 10 Sunfury Bowman|q 50038/1
		.kill 5 Sunfury Centurion|q 50038/2
		.kill 5 Sunfury Conjurer|q 50038/3|goto Netherstorm,59.2,63.0
	step //11
		'Fly to Honor Hold, Hellfire Peninsula|goto Hellfire Peninsula|noway|c
	step //12
		goto Hellfire Peninsula,66.2,18.8
		.' This quest is recommend for groups of 3+.
		.' Grab a few friends if it's too difficult to solo.
		.kill 10 Incandescent Fel Spark|q 50035/1
		.kill 10 Wrath Herald|q 50035/2
		.kill 10 Felblood Initiate|q 50035/3|goto Hellfire Peninsula,60.7,22.4
	step //13
		'Fly to Menethil Harbor, Wetlands|goto Wetlands|noway|c
	step //14
		goto Wetlands,80.0,47.9
		.' This quest is recommend for groups of 3+.
		.' Grab a few friends if it's too difficult to solo.
		.kill 10 Infinite Slayer|q 50039/1
		.kill 10 Infinite Defiler|q 50039/2
		.kill 10 Infinite Saboteur|q 50039/3
		.kill 1 Infinite Timereaver|q 50039/4
	step //15
		.' Return to GarryOwen|cast Teleport: GarryOwen##31
		'Go to GarryOwen Embassy|goto Garryowen Fields Forever|noway|c|tip Manually progress the guide while in GarryOwen.
	step //16
		.talk 1st Lt. Edward S. Godfrey##60098
		..turnin Where It Starts and Stop It##50035
		..turnin Water Wars##50036
		..turnin For the Children##50037
		..turnin Magically Delicious##50038
		..turnin It Comes Back to Bite you##50039
]])

ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
