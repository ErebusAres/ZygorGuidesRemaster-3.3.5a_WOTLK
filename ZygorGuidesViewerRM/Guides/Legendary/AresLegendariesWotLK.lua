local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer:RegisterGuide("Ares' WotLK 3.3.5a Guides\\Legendary\\Shadowmourne\\Start Through Shadow's Edge",[[
	author ErebusAres
	startlevel 80
	next Ares' WotLK 3.3.5a Guides\\Legendary\\Shadowmourne\\Infusions Through Completion
	description This guide covers the opening part of the Shadowmourne quest chain through obtaining Shadow's Edge.
	step //1
		.' This chain is for Death Knight, Paladin, and Warrior.
		.' You need Friendly with The Ashen Verdict first.
		.' Reach Friendly with The Ashen Verdict |condition rep('The Ashen Verdict')>=Friendly
	step //2
		'Go to Icecrown Citadel|goto Icecrown Citadel|noway|c
	step //3
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..accept The Sacred and the Corrupt##24545
	step //4
		goto Dragonblight,74.2,23.8|n
	step //5
		.' The path into Frostmourne Cavern starts here. |goto Dragonblight,74.2,23.8,0.5|c
	step //6
		goto Dragonblight,75.1,20.2
		.' Loot Light's Vengeance from the Frostmourne Altar area.
		.get Light's Vengeance##49869 |q 24545/1
	step //7
		'Go to Icecrown Citadel|goto Icecrown Citadel|noway|c
	step //8
		.' Gather the remaining quest materials:
		.get 25 Primordial Saronite##49908 |q 24545/2
		.get Festergut's Acidic Blood##49980 |q 24545/3
		.get Rotface's Acidic Blood##49979 |q 24545/4
	step //9
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin The Sacred and the Corrupt##24545
		..accept Shadow's Edge##24743
	step //10
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin Shadow's Edge##24743
]])

ZygorGuidesViewer:RegisterGuide("Ares' WotLK 3.3.5a Guides\\Legendary\\Shadowmourne\\Infusions Through Completion",[[
	author ErebusAres
	startlevel 80
	description This guide covers the remaining Shadowmourne chain from A Feast of Souls through The Lich King's Last Stand.
	step //1
		'Go to Icecrown Citadel|goto Icecrown Citadel|noway|c
	step //2
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..accept A Feast of Souls##24547
	step //3
		.' Kill ICC enemies while wielding Shadow's Edge.
		.' Feed 1000 souls to Shadow's Edge |q 24547/1
	step //4
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin A Feast of Souls##24547
		..accept Unholy Infusion##24749
	step //5
		.' Go to The Plagueworks in ICC and kill Professor Putricide while completing Unholy Infusion.
		.' Complete Unholy Infusion |q 24749/1
	step //6
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin Unholy Infusion##24749
		..accept Blood Infusion##24756
	step //7
		.' Go to Crimson Hall in ICC and kill Blood-Queen Lana'thel while completing Blood Infusion.
		.' Complete Blood Infusion |q 24756/1
	step //8
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin Blood Infusion##24756
		..accept Frost Infusion##24757
	step //9
		.' Go to Frostwing Halls in ICC and kill Sindragosa while completing Frost Infusion.
		.' Complete Frost Infusion |q 24757/1
	step //10
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin Frost Infusion##24757
		..accept The Splintered Throne##24548
	step //11
		.' Farm Icecrown Citadel 25-player for Shadowfrost Shards.
		.get 50 Shadowfrost Shard##50274 |q 24548/1
	step //12
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin The Splintered Throne##24548
		..accept Shadowmourne...##24549
	step //13
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin Shadowmourne...##24549
		..accept The Lich King's Last Stand##24748
	step //14
		.' Defeat The Lich King in Icecrown Citadel 25-player.
		.kill The Lich King##36597 |q 24748/1
	step //15
		goto Icecrown Citadel,36.8,20.6
		.talk Highlord Darion Mograine##37120
		..turnin The Lich King's Last Stand##24748
]])

ZygorGuidesViewer:RegisterGuide("Ares' WotLK 3.3.5a Guides\\Legendary\\Val'anyr\\Fragments Through Reforging",[[
	author ErebusAres
	startlevel 80
	description This guide covers the Val'anyr chain from fragment farming to reforging.
	step //1
		'Go to Ulduar|goto Ulduar|noway|c
	step //2
		.' Farm Ulduar bosses for fragments.
		.get 30 Fragment of Val'anyr##45038
	step //3
		.' Combine fragments in your bags.
		.use Fragment of Val'anyr##45038
		..accept Ancient History##13622
	step //4
		goto Ulduar,15.6,89.2
		.' Use the Archivum Console.
		..turnin Ancient History##13622
		..accept Val'anyr, Hammer of Ancient Kings##13629
	step //5
		.' Continue in Ulduar 25 to Yogg-Saron.
		.' During the Yogg-Saron fight, use the reforging quest item as required by the quest.
		.kill Yogg-Saron##33288
		.' Loot the reforged hammer objective item.
		.get Reforged Hammer of Ancient Kings##45896 |q 13629/1
	step //6
		goto Ulduar,15.6,89.2
		.' Use the Archivum Console.
		..turnin Val'anyr, Hammer of Ancient Kings##13629
]])
