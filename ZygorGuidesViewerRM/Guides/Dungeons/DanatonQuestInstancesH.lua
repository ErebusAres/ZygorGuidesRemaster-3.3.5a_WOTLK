local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Ragefire Chasm (9)",[[
	startlevel 9
	step
		goto Undercity,56.2,92.2
		.talk Bragor Bloodfist##36273
		..accept The Power to Destroy##14356
	step
		goto Thunder Bluff,70.3,29.5
		.talk Rahauro##11833
		..accept Searching for the Lost Satchel##5722
		..accept Testing an Enemy's Strength##5723
	step
		goto Orgrimmar,31.6,37.8
		.talk Thrall##4949
		..accept Hidden Enemies(1)##5726
	step
		goto Durotar,41.67,25.86
		.from Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
		.get 1 Lieutenant's Insignia##14544|q 5726/1
	step
		goto Orgrimmar,31.6,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies(1)##5726
		..accept Hidden Enemies(2)##5727
	step
		goto Orgrimmar,49.5,50.6
		.talk Neeru Fireblade##3216
		..accept Slaying the Beast##5761
		.' Speak with Neeru|q 5727/1
	step
		goto Orgrimmar,31.6,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies(2)##5727
		..accept Hidden Enemies(3)##5728
	step
		goto Orgrimmar,52.20,49.30
		.' Go To Instance!|tip Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Wailing Caverns (15)",[[
	startlevel 15
		step
			goto Thunder Bluff,22.8,20.9
			.talk Apothecary Zamah##3419
			..accept Serpentbloom##962
		step
			goto Thunder Bluff,78.6,28.6
			.talk Arch Druid Hamuul Runetotem##5769
			..accept The Barrens Oases##886
		step
			goto The Barrens,52.3,31.9
			.talk Tonga Runetotem##3448
			turnin The Barrens Oases##886
			..accept The Forgotten Pools##870
		step
			goto The Barrens,45.3,22.9
			.' Swim underwater to the bubbles
			.' Explore the waters of the Forgotten Pools|goal Explore the waters of the Forgotten Pools|q 870/1
		step
			goto The Barrens,52.3,31.9
			.talk Tonga Runetotem##3448
			..turnin The Forgotten Pools##870
			..accept The Stagnant Oasis##877
		step
			goto The Barrens,55.6,42.8
			.' Click the Bubbling Fissure |tip Swim underwater towards the bubbles to this spot
			.' Test the Dried Seeds|goal Test the Dried Seeds|q 877/1
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..accept Raptor Horns##865
		step
			goto The Barrens,63.1,37.6
			.talk Crane Operator Bigglefuzz##3665
			..accept Trouble at the Docks##959
		step
			goto The Barrens,45.5,13.9
			.from Sunscale Scytheclaw##3256
			.get 5 Intact Raptor Horn|q 865/1
			.' You can find more around (1)|at 59.7,8.3
			.' You can find more around (2)|at 61,31.58
		step
			goto The Barrens,62.4,37.6
			.talk Mebok Mizzyrix##3446
			..turnin Raptor Horns##865
			..accept Smart Drinks##1491
		step
			goto The Barrens,52.3,31.9
			.talk Tonga Runetotem##3448
			..turnin The Stagnant Oasis##877
			..accept Altered Beings##880
		step
			goto The Barrens,55.4,43.5
			.from Oasis Snapjaw##3461
			.get 8 Altered Snapjaw Shell|q 880/1
		step
			goto The Barrens,52.3,31.9
			.talk Tonga Runetotem##3448
			..turnin Altered Beings##880
			..accept Hamuul Runetotem##1489
		step
			goto Thunder Bluff,78.6,28.6
			.talk Arch Druid Hamuul Runetotem##5769
			..turnin Hamuul Runetotem##1489
			..accept Nara Wildmane##1490
		step
			goto Thunder Bluff,75.6,31.6
			.talk Nara Wildmane##5770
			..turnin Nara Wildmane##1490
			..accept Leaders of the Fang##914
		step
			goto The Barrens,46,35.7
			.talk Ebru##5768
			..accept Deviate Eradication##1487
			.talk Nalpak##5767
			..accept Deviate Hides##1486
		step
			goto The Barrens,47.73,34.82
			.' Go To Instance!|tip Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Blackfathom Deeps (18)",[[
	startlevel 18
	step
		goto Stonetalon Mountains,47.4,64.2
		.talk Tsunaman##11862
		..accept Trouble in the Deeps##6562
	step
		goto Ashenvale,13.50,13.35
		.from Blackfathom Tide Priestess##4802
		.collect 1 Damp Note##16790|sticky
		..accept Allegiance to the Old Gods(1)##6564
	step
		goto Ashenvale,11.6,34.3
		.talk Je'neu Sancrea##12736
		..turnin Trouble in the Deeps##6562
		..accept The Essence of Aku'Mai##6563|tip Next quest required 21 level
		..turnin Allegiance to the Old Gods(1)##6564
		..accept Allegiance to the Old Gods(2)##6565
	step
		goto Ashenvale,16.56,11.05
		.' Go To Instance!|tip Good luck!
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Quest Instance Guides\\Razorfen Kraul (23)",[[
	startlevel 23
	step
		goto Thunder Bluff,36,59.9
		.talk Auld Stonespire##4451
		..accept A Vengeful Fate##1102
	step
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..accept Going, Going, Guano!##1109
	step
		goto The Barrens,62.4,37.6
		.talk Mebok Mizzyrix##3446
		..accept Blueleaf Tubers##1221
	step
]])

ZygorGuidesViewer.HordeInstalled=true