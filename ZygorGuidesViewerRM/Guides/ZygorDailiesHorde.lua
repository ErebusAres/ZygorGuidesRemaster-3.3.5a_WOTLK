local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.HordeDailiesInstalled then return end
if UnitFactionGroup("player")~="Horde" then return end

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Borean Tundra\\Borean Tundra Pre-Quests",[[
	description This guide section contains the pre-quests to unlock the daily quests in the Coldarra region of Borean Tundra.
	description The Kaskala region of Borean Tundra does not have any pre-quests to unlock the daily quest that is available there.
	author support@zygorguides.com
	step //1
		goto Borean Tundra,33.3,34.5
		.talk Raelorasz##26117
		..accept Basic Training##11918
	step //2
		goto 35,28
		.kill 10 Coldarra Spellbinders|q 11918/1
	step //3
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Basic Training##11918
		..accept Hatching a Plan##11936
	step //4
		'As you do the following steps:
		.kill Coldarra Wyrmkin|n
		.collect 5 Frozen Axe##35586|q 11936
		.' Skip to the next step in the guide
	step //5
		goto 27.8,24.2
		.' Click Blue Dragon Eggs|tip They look like big eggs with blue crystals on them on the ground.
		.' Destroy 5 Dragon Eggs|goal 5 Dragon Eggs destroyed|q 11936/1
	step //6
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Hatching a Plan##11936
		..accept Drake Hunt##11919
	step //7
		goto 24.6,27.1|n
		.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
		.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c|q 11919
	step //8
		goto 33.3,34.5
		.' Stand here until it says Captured Nexus Drake|goal Captured Nexus Drake|q 11919/1
	step //9
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Drake Hunt##11919
	step //10
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..accept Corastrasza##13412
	step //11
		goto 29.5,24.8
		.talk Corastrasza##32548
		..turnin Corastrasza##13412
		..accept Aces High!##13413
	step //12
		.' Tell Corastrasza you have the courage to face Malygos drakes
		.' She will give you a Wyrmrest Skytalon to ride
		.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
		.' Target a Scalesworn Elite flying above Corastrasza.
		.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
		.kill 5 Scalesworn Elites|q 13413/1
	step //13
		goto 29.5,24.8|n
		.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
	step //14
		goto 29.5,24.8
		.talk Corastrasza##32548
		..turnin Aces High!##13413
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Borean Tundra\\Coldarra Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Coldarra region of Borean Tundra.
	daily
	step //1
		goto Borean Tundra,33.3,34.5
		.talk Raelorasz##26117
		..accept Drake Hunt##11940|daily
	step //2
		goto 24.6,27.1|n
		.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
		.' Do not kill it, let it hit you until it becomes friendly|havebuff Drake Hatchling Subdued|c|q 11940
	step //3
		goto 33.3,34.5
		.' Stand here until it says Captured Nexus Drake|goal Captured Nexus Drake|q 11940/1
	step //4
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Drake Hunt##11940
	step //5
		goto 29.5,24.8
		.talk Corastrasza##32548
		..accept Aces High!##13414|daily
	step //6
		.' Tell Corastrasza you are ready
		.' She will give you a Wyrmrest Skytalon to ride
		.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
		.' Target a Scalesworn Elite flying above Corastrasza.
		.' To cause damage, stack Flame Spike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
		.kill 5 Scalesworn Elites|q 13414/1
	step //7
		goto 29.5,24.8|n
		.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
	step //8
		goto 29.5,24.8
		.talk Corastrasza##32548
		..turnin Aces High!##13414
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Borean Tundra\\Kaskala Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra.
	description There are no pre-quests needed to unlock the daily quest offered in this guide section.
	daily
	step //1
		goto Borean Tundra,63.9,45.7
		.talk Utaik##26213
		..accept Preparing for the Worst##11945|daily
	step //2
		goto 66.7,48.6
		.' Click baskets on the shore
		.get 8 Kaskala Supplies|q 11945/1
	step //3
		goto 63.9,45.7
		.talk Utaik##26213
		..turnin Preparing for the Worst##11945
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dalaran\\Cooking Dailies Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quest to unlock the Cooking daily quests in Dalaran.
	description This quest is only available to you if you have 350+ Cooking skill.
	step //1
		goto Howling Fjord,78.6,29.5
		.talk Thomas Kolichio##26953
		..accept Northern Cooking##13089|tip This quest is only available to you if you have 350+ Cooking skill.
	step //2
		goto 75.1,33.9
		.from Wild Worg##24128+
		.get 4 Chilled Meat |q 13089/1
	step //3
		goto 78.6,29.5
		.talk Thomas Kolichio##26953
		..turnin Northern Cooking##13089
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dalaran\\Jewelcrafting Dailies Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quest to unlock the Jewelcrafting daily quests in Dalaran.
	description This quest is only available to you if you have 375+ Jewelcrafting skill.
	step //1
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		..accept Finish the Shipment##13041|tip This quest is only available once you have 375+ Jewelcrafting skill.
	step //2
		'Go the the Auction House in a major city:
		.' Buy 1 Chalcedony|goal 1 Chalcedony|q 13041|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
	step //3
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		..turnin Finish the Shipment##13041
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dalaran\\Cooking Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Cooking daily quests in Dalaran.
	daily
	step //1
		goto Dalaran,70.0,39.0
		.talk Awilo Lon'gomba##29631
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13115 |daily |or
		..accept Convention at the Legerdemain##13113 |daily |or
		..accept Infused Mushroom Meatloaf##13112 |daily |or
		..accept Mustard Dogs!##13116 |daily |or
		..accept Sewer Stew##13114 |daily |or
	step //2
		goto 54.7,31.5
		.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		.collect 1 Aged Dalaran Limburger##43137 |q 13115
		.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
		.collect 6 Half Full Dalaran Wine Glass##43138 |q 13115
		.' You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
	step //3
		'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
		.get 1 Wine and Cheese Platter |q 13115/1
	step //4
		goto 55.0,30.8
		.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
		.get 1 Jug of Wine |q 13113/2
	step //5
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13113
	step //6
		'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
		.get 4 Northern Stew |q 13113/1
	step //7
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13112
	step //8
		goto 59.5,43.6
		.from Underbelly Rat##32428+
		.collect 4 Infused Mushroom##43100 |q 13112
	step //9
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13112
	step //10
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 2 Chilled Meat##43013 |q 13112
	step //11
		'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
		.get 1 Infused Mushroom Meatloaf |q 13112/1
	step //12
		goto Dalaran,67.7,40.0
		.' Click the Wild Mustard|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
		.collect 4 Wild Mustard##43143 |q 13116
		.' You can find more Wild Mustard flowers:
		..' At 50.3,48.3
		..' At 37.2,43.9
	step //13
		goto Borean Tundra,46.7,43.6
		.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		.collect 4 Rhino Meat##43012 |q 13116
	step //14
		'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
		.collect 4 Rhino Dogs##34752 |q 13116
	step //15
		'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
		.get 1 Mustard Dog Basket! |q 13116/1
	step //16
		goto Crystalsong Forest,26.9,45.5
		.' Click the Crystalsong Carrots|tip they looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
		.collect 4 Crystalsong Carrot##43148 |q 13114
	step //17
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13114
	step //18
		'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
		.get 1 Vegetable Stew |q 13114/1
	step //19
		goto Dalaran,36.6,27.8
		.talk Ranid Glowergold##28718
		..turnin Cheese for Glowergold##13115
	step //20
		goto Dalaran,48.6,37.5
		.talk Arille Azuregaze##29049
		..turnin Convention at the Legerdemain##13113
	step //21
		goto Dalaran,52.3,55.6
		.talk Orton Bennet##29527
		..turnin Infused Mushroom Meatloaf##13112
	step //22
		goto Dalaran,68.6,42.0
		.talk Archmage Pentarus##28160
		..turnin Mustard Dogs!##13116
	step //23
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13114
	step //24
		goto Dalaran,35.5,57.6
		.talk Ajay Green##29532
		..turnin Sewer Stew##13114
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dalaran\\Fishing Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Fishing daily quests in Dalaran.
	daily
	step //1
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |daily |or
		..accept Dangerously Delicious##13834 |daily |or
		..accept Jewel Of The Sewers##13832 |daily |or
		..accept Disarmed!##13836 |daily |or
		..accept The Ghostfish##13830 |daily |or
	step //2
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
	step //3
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
	step //4
		goto Wintergrasp,79.9,41.8
		.' Fish in thisbig lake
		.get 10 Terrorfish |q 13834/1
	step //5
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
	step //6
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
	step //7
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
	step //8
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
	step //9
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery|goal Discover the Ghostfish mystery |q 13830/1
	step //10
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
	step //11
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dalaran\\Jewelcrafting Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.
	daily
	step //1
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
		..accept Shipment: Blood Jade Amulet##12958 |daily |or
		..accept Shipment: Bright Armor Relic##12962 |daily |or
		..accept Shipment: Glowing Ivory Figurine##12959 |daily |or
		..accept Shipment: Intricate Bone Figurine##12961 |daily |or
		..accept Shipment: Shifting Sun Curio##12963 |daily |or
		..accept Shipment: Wicked Sun Brooch##12960 |daily |or
	step //2
		goto Icecrown,59.1,54.1
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.collect 1 Vrykul Amulet##41989 |q 12958
	step //3
		'Go the the Auction House in a major city:
		.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12958|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
		.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12958|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
	step //4
		'Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989
		.get 1 Blood Jade Amulet |q 12958/1
	step //5
		goto Dragonblight,67.3,52.3
		.from Ice Revenant##26283
		.collect 1 Elemental Armor Scrap##42107 |q 12962
	step //6
		'Go the the Auction House in a major city:
		.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12962|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
		.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12962|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
	step //7
		'Use your Elemental Armor Scrap in your bags|use Elemental Armor Scrap##42107
		.get 1 Bright Armor Relic |q 12962/1
	step //8
		goto Dragonblight,62.5,47.4
		.from Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
		.collect 1 Northern Ivory##42104 |q 12959
	step //9
		'Go the the Auction House in a major city:
		.' Buy 1 Chalcedony|collect 1 Chalcedony##36923|q 12959|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
		.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12959|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
	step //10
		'Use your Northern Ivory in your bags|use Northern Ivory##42104
		.get 1 Glowing Ivory Figurine |q 12959/1
	step //11
		goto The Storm Peaks,23.1,57.7
		.from Blighted Proto-Drake##29590+
		.collect 1 Proto Dragon Bone##42106 |q 12961
	step //12
		'Go the the Auction House in a major city:
		.' Buy 1 Chalcedony|collect 1 Chalcedony##36923|q 12961|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
		.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12961|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
	step //13
		'Use your Proto Dragon Bone in your bags|use Proto Dragon Bone##42106
		.get 1 Intricate Bone Figurine |q 12961/1
	step //14
		goto Dragonblight,56.3,27.5
		.from Wastes Taskmaster##26493+, Wastes Digger##26492+
		.collect 1 Scourge Curio##42108 |q 12963
	step //15
		'Go the the Auction House in a major city:
		.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12963|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
		.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12963|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
	step //16
		'Use your Scourge Curio in your bags|use Scourge Curio##42108
		.get 1 Shifting Sun Curio |q 12963/1
	step //17
		'The entrance to the cave starts here|goto The Storm Peaks,26.8,66.9,0.3|c|q 12960
	step //18
		goto 26.0,67.2
		.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
		.collect 1 Iron Drawf Brooch##42105 |q 12960
	step //19
		'Go the the Auction House in a major city:
		.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12960|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
		.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12960|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
	step //20
		'Use your Iron Drawf Brooch in your bags|use Iron Drawf Brooch##42105
		.get 1 Wicked Sun Brooch |q 12960/1
	step //21
		'Leave the cave|goto The Storm Peaks,26.8,66.9,0.3|c|q 12960	
	step //22
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
		..turnin Shipment: Blood Jade Amulet##12958
		..turnin Shipment: Bright Armor Relic##12962
		..turnin Shipment: Glowing Ivory Figurine##12959
		..turnin Shipment: Intricate Bone Figurine##12961
		..turnin Shipment: Shifting Sun Curio##12963
		..turnin Shipment: Wicked Sun Brooch##12960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dragonblight\\Dragonblight Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight.
	description The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.
	step //1
		'Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1
		.from Goramosh##26349
		.get Goramosh's Strange Device|n
		.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36746
		..accept A Strange Device##12059
	step //2
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin A Strange Device##12059
		..accept Projections and Plans##12061
	step //3
		goto 22.2,54.8
		.' Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
		.' Move toward the center of the platform you get teleported onto
		.' Observe the Object on the Surge Needle|goal Object on the Surge Needle observed|q 12061/1
	step //4
		'Use your Surge Needle Teleporter to go back down to the ground|goto 22.6,57.0,0.3|use Surge Needle Teleporter##36747|noway|c
	step //5
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Projections and Plans##12061
		..accept The Focus on the Beach##12066
	step //6
		goto 26.4,65
		.from Captain Emmy Malin##26762
		.get Ley Line Focus Control Ring|n
		.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|goal Ley line focus information retrieved|q 12066/1
	step //7
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin The Focus on the Beach##12066
		..accept Atop the Woodlands##12084
	step //8
		goto 32.2,70.6
		.from Lieutenant Ta'zinni##26815
		.get Ley Line Focus Amulet|n
		.get Lieutenant Ta'zinni's Letter|n
		.' Click Lieutenant Ta'zinni's Letter|use Lieutenant Ta'zinni's Letter##36780
		..accept A Letter for Home##12085
	step //9
		goto 32.2,71.2
		.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
		.' Retrieve Ley Line Focus information|goal Ley line focus information retrieved|q 12084/1
	step //10
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin Atop the Woodlands##12084
		..accept Search Indu'le Village##12106
        step //11
		goto 40.3,66.9
		.' Click Mage-Commander Evenstar's body floating underwater
		..turnin Search Indu'le Village##12106
		..accept The End of the Line##12110
	step //12
		goto 39.8,66.9
		.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
		.' Retrieve Ley Line Focus information|goal Ley Line Focus information retrieved|q 12110/1
	step //13
		goto 53,66.4
		.' Go to this spot on the cliff to Observe Azure Dragonshrine|goal Azure Dragonshrine observed|q 12110/2
	step //14
		goto 38.1,46.2
		.talk Image of Archmage Aethas Sunreaver##26471
		..turnin The End of the Line##12110
		..accept Gaining an Audience##12122
	step //15
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin Gaining an Audience##12122
		..accept Speak with your Ambassador##12767
        step //16
		goto 58,55.4
		.talk Golluck Rockfist##27804
		..turnin Speak with your Ambassador##12767
		..accept Report to the Ruby Dragonshrine##12461
	step //17
		goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Report to the Ruby Dragonshrine##12461
		..accept Heated Battle##12448
	step //18
		goto 42.8,51.4
		.' Help kill the following:
		.' 12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12448/1
		.' 8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12448/2
		.' 1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12448/3
	step //19
		goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Heated Battle##12448
		..accept Return to the Earth##12449
	step //20
		goto 46.7,52.8
		.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
		.get Ruby Acorns|n
		.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
		.' Return 6 Ruby Keepers to the Earth|goal 6 Ruby Keeper Returned to the Earth|q 12449/1
	step //21
		goto 43,50.9
		.talk Vargastrasz##27763
		..turnin Return to the Earth##12449
		..accept Through Fields of Flame##12450
	step //22
		'Go into the valley to 48.2,47.8|goto 48.2,47.8
		.kill 6 Frigid Necromancer|q 12450/1
	step //23
		'Go into the tree trunk to 47.7,49.1|goto 47.7,49.1
		.from Dahlia Suntouch##27680
		.' Cleanse the Ruby Corruption|goal Ruby Corruption Cleansed|q 12450/2
	step //24
		goto 43.0,50.9
		.talk Vargastrasz##27763
		..turnin Through Fields of Flame##12450
		..accept The Steward of Wyrmrest Temple##12769
	step //25
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin The Steward of Wyrmrest Temple##12769
		..accept Informing the Queen##12124
	step //26
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
	step //27
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Informing the Queen##12124
		..accept Report to Lord Afrasastrasz##12435
	step //28
		goto 59.5,53.3
		.talk Torastrasza##26949
		..'Tell him you want to go to Lord Afrasastrasz|goto 59.2,54.3,0.5|noway|c
	step //29
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Report to Lord Afrasastrasz##12435
		..accept Defending Wyrmrest Temple##12372
	step //30
		goto 58.3,55.2
		.talk a Wyrmrest Defender##27629
		..'Tell him you are ready to get into the fight
		.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		.kill 3 Azure Dragon|q 12372/1
		.kill 5 Azure Drake|q 12372/2
	step //31
		'Fly southwest to 55.1,66.4|goto 55.1,66.4
		.' Fly into the huge purple swirling column
		.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
		.' Destabilize the Azure Dragonshrine|goal Destabilize the Azure Dragonshrine|q 12372/3
	step //32
		goto 58.7,54.5|n
		'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
	step //33
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Defending Wyrmrest Temple##12372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dragonblight\\Moa'ki Harbor Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight.
	description There are no pre-quests needed to unlock the daily quest offered in this guide section.
	daily
	step //1
		goto Dragonblight,48.3,74.3
		.talk Trapper Mau'i##26228
		..accept Planning for the Future##11960|daily
	step //2
		goto 45.3,63.7
		.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
		.get 12 Snowfall Glade Pup|q 11960/1
	step //3
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..turnin Planning for the Future##11960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Dragonblight\\Wyrmrest Temple Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Wyrmrest Temple region of Dragonblight.
	daily
	step //1
		goto Dragonblight,59.2,54.3
		.talk Lord Afrasastrasz##27575
		..accept Defending Wyrmrest Temple##12372|daily
	step //2
		goto 58.3,55.2
		.talk a Wyrmrest Defender##27629
		..'Tell him you are ready to get into the fight
		.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		.kill 3 Azure Dragon|q 12372/1
		.kill 5 Azure Drake|q 12372/2
	step //3
		'Fly southwest to 55.1,66.4|goto 55.1,66.4
		.' Fly into the huge purple swirling column
		.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
		.' Destabilize the Azure Dragonshrine|goal Destabilize the Azure Dragonshrine|q 12372/3
	step //4
		goto 58.7,54.5|n
		'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
	step //5
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Defending Wyrmrest Temple##12372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Grizzly Hills\\Grizzly Hills Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quest in the Granite Springs region of Grizzly Hills.
	description The Blackriver Logging Camp, Blue Sky Logging Grounds, and Venture Bay regions of Grizzly Hills
	description do not have any pre-quests to unlock the daily quests that are available in those regions.
	step //1
		goto Grizzly Hills,16.2,47.6
		.talk Samir##26424
		..accept Filling the Cages##11984
	step //2
		goto 16.4,48.3
		.talk Budd##26429
		..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|q 11984
	step //3
		goto 13.2,60.5
		.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
		.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
		.' Capture a Live Ice Troll|goal Captured Live Ice Troll|q 11984/1
	step //4
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Filling the Cages##11984
	step //5
		goto 16.4,47.8
		.talk Drakuru##26423
		..accept Truce?##11989
	step //6
		goto 16.5,47.8
		.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
		.collect 1 Dull Carving Knife##38083|q 11989
	step //7
		goto 16.4,47.8
		.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
		.talk Drakuru##26423
		..'Shake his hand
		..'Make a Blood Pact With Drakuru|goal Blood Pact With Drakuru|q 11989/1
	step //8
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Truce?##11989
		..accept Vial of Visions##11990
	step //9
		goto 16,47.8
		.talk Ameenah##26474
		..buy 1 Imbued Vial|q 11990/1
	step //10
		goto 14.6,45.3
		.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
		.get 3 Haze Leaf|q 11990/2
	step //11
		goto 15.2,40.3
		.' Click a Waterweed|tip They look like big green bushes underwater around this area.
		.get Waterweed Frond|q 11990/3
	step //12
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Vial of Visions##11990
	step //13
		goto 15.7,46.7
		.talk Prigmon##26519
		..accept Scourgekabob##12484
	step //14
		goto 15.7,46.9
		.' Click a Scourged Troll Mummy on the ground next to you
		.collect 1 Scourged Troll Mummy##38149|q 12484
	step //15
		goto 16.9,48.3
		.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
		.' Burn a Mummified Carcass|goal Mummified Carcass Burned|q 12484/1
	step //16
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Scourgekabob##12484
		..accept Seared Scourge##12029
	step //17
		goto 16,29.9
		.' Jump on the big rock and stand on it
		.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
		.' Burn 20 Scourge Trolls|goal 20 Scourge Trolls Burned |q 12029/1
	step //18
		goto 16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Seared Scourge##12029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Grizzly Hills\\Blackriver Logging Camp Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quest offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,26.4,65.8
		.talk Raider Captain Kronn##27120
		..accept Blackriver Brawl##12170 |daily
	step //2
		goto 27.3,64.7
		.' Kill Alliance Players or Amberpine Scouts in the Blackriver Logging Camp
		.' Kill 10 Alliance in Blackriver|goal 15 Alliance in Blackriver slain|q 12170/1
	step //3
		goto 26.4,65.8
		.talk Raider Captain Kronn##27120
		..turnin Blackriver Brawl##12170
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quests offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,33.8,32.7
		.talk Aumana##27464
		..accept Overwhelmed!##12288 |daily
	step //2
		goto 34.4,32.6
		.talk Lurz##27422
		..accept Making Repairs##12280 |daily
	step //3
		goto 34.5,32.5
		.talk Grekk##27423
		..accept Shred the Alliance##12270 |daily
	step //4
		goto 34.5,33.0
		.talk Commander Bargok##27451
		..accept Keep 'Em on Their Heels##12284 |daily
	step //5
		goto 35.2,39.3
		.' Kill Alliance Players or Wounded Westfall Infantry around the area
		.' Use Renewing Tourniquet on Wounded Skirmishers|use Renewing Tourniquet##37568
		.' Heal 10 Wounded Skirmishers|goal 10 Wounded Skirmishers Healed|q 12288/1
		.' Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
		..get 4 Grooved Cogs##37412|q 12280/1
		..get 3 Notched Sprockets##37413|q 12280/2
		..get 2 High Tension Springs##37416|q 12280/3
	step //6
		goto 33.4,35.7
		.' Kill Alliance Players or Wounded Westfall Infantry around the area
		.' Eliminate 15 Horde units|goal 15 Horde units eliminated|q 12284/1
	step //7
		goto 32.8,40.5
		.' Find a Broken-down Shredder that spawns around this area
		.' Click the Broken-down Shredder to get inside it
		.' Use your abilities on your hot bar to return the shredder to Grekk at 34.5,32.5
		.' Deliver 3 Shredders|goal 3 Shredder Delivered|q 12270/1
	step //8
		goto 34.5,32.5
		.talk Grekk##27423
		..turnin Shred the Alliance##12270
	step //9
		goto 34.4,32.6
		.talk Lurz##27422
		..turnin Making Repairs##12280
	step //10
		goto 34.5,33.0
		.talk Commander Bargok##27451
		..turnin Keep 'Em on Their Heels##12284
	step //11
		goto 33.8,32.7
		.talk Aumana##27464
		..turnin Overwhelmed!##12288
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Grizzly Hills\\Granite Springs Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.
	daily
	step //1
		goto Grizzly Hills,16.7,48.3
		.talk Mack Fearsen##26604
		..accept Seared Scourge##12038 |daily
	step //2
		goto 16,29.9
		.' Jump on the big rock and stand on it
		.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
		.' Burn 30 Scourge Trolls|goal 30 Scourge Trolls Burned |q 12038/1
	step //3
		goto Grizzly Hills,16.7,48.3
		.talk Mack Fearsen##26604
		..turnin Seared Scourge##12038
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Grizzly Hills\\Venture Bay Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quests offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,14.8,86.6
		.talk General Gorlok##27708
		..accept Riding the Red Rocket##12432 |daily
		.' If he's not there, then you have to take control of Venture Bay for the Horde
		..' To take control of Venture Bay for the Horde, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
	step //2
		goto 11.4,76.7
		.talk Stone Guard Ragetotem##27606
		..accept Smoke 'Em Out##12324 |daily
	step //3
		goto 10.1,77.3
		.talk Centurion Kaggrum##27563
		..accept Keep Them at Bay##12317 |daily
	step //4
		goto 10.1,77.2
		.talk General Khazgar##27532
		..accept Crush Captain Brightwater!##12315 |daily
	step //5
		goto 18.0,79.6
		.' Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers|use Smoke Bomb##37621
		.' Building one can be found at 18.0,79.6
		.' Building two can be found at 16.4,76.6
		.' Building three can be found at 14.6,76.7
		.' Smoke out 20 Venture Company Stragglers|goal 20 Venture Company Stragglers smoked out|q 12324/1
	step //6
		goto 14.8,77.8
		.' Kill Alliance Players or Westfall Brigade Marine in Venture Bay
		.' Kill 10 Alliance in Venture Bay|goal 10 Alliance killed in Venture Bay|q 12317/1
	step //7
		goto 17.0,81.6
		.kill Captain Brightwater##27509|q 12315/1
	step //8
		goto 16.4,80.3
		.' Click the Element 115 in the back room of the ship|tip It looks like a red canister with a handle on the top
		..collect Element 115##37664|q 12432
	step //9
		  goto 21.4,84.5
		.' On the next step you will guide a rocket into this Alliance lumber boat
		.' Your target will be the wooden X on the side
		.' Go to 13.6,88.9
		.' You will want to use your keys, not your mouse, to guide the rocket
		.' Avoid icebergs or the rocket will explode and you will have to start over
		.' Click a red rocket to take control of one|invehicle|c|q 12432	
	step //10
		goto 9.6,79.1
		.' Hit the wooden X on the back of the Alliance Lumber boat
		.' Destroy the Alliance Lumber boat|goal Destroyed Alliance Lumber Shipment|q 12432/1
	step //11
		goto 14.8,86.6
		.talk General Gorlok##27708
		..turnin Riding the Red Rocket##12432
		.' If he's not there, then you have to take control of Venture Bay for the Horde
		..' To take control of Venture Bay for the Horde, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks.  Flag yourself for PvP and a bar will appear under your minimap.  Sit here until the bar marker is all the way to the right, this will make General Gorlok spawn.
	step //12
		goto 11.4,76.7
		.talk Stone Guard Ragetotem##27606
		..turnin Smoke 'Em Out##12324
	step //13
		goto 10.1,77.3
		.talk Centurion Kaggrum##27563
		..turnin Keep Them at Bay##12317
	step //14
		goto 10.1,77.2
		.talk General Khazgar##27532
		..turnin Crush Captain Brightwater!##12315
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Howling Fjord\\Howling Fjord Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quest in the Kamagua region of Howling Fjord.
	step //1
		goto Howling Fjord,40.3,60.3
		.talk Orfus of Kamagua##23804
		..accept The Dead Rise!##11504
	step //2
		goto 57.7,77.5
		.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
		.get Fengir's Clue|q 11504/1
	step //3
		goto 59.2,77
		.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
		.get Rodin's Clue|q 11504/2
	step //4
		goto 59.8,79.4
		.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
		.get Isuldof's Clue|q 11504/3
	step //5
		goto 62,80
		.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
		.get Windan's Clue|q 11504/4
	step //6
		goto 40.3,60.3
		.talk Orfus of Kamagua##23804
		..turnin The Dead Rise!##11504
		..accept Elder Atuik and Kamagua##11507
	step //7
		'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
		.talk Elder Atuik##24755
		..turnin Elder Atuik and Kamagua##11507
		..accept Grezzix Spindlesnap##11508
	step //8
		goto 23.1,62.7
		.talk Grezzix Spindlesnap##24643
		..turnin Grezzix Spindlesnap##11508
		..accept Street "Cred"##11509
	step //9
		goto 35.1,80.9
		.talk "Silvermoon" Harry##24539
		..turnin Street "Cred"##11509
	step //10
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..accept Swabbin' Soap##11469
	step //11
		goto 31.4,77.9
		.from Big Roy##24785
		.get Big Roy's Blubber|q 11469/1
	step //12
		goto 37.8,79.6
		.talk Scuttle Frostprow##24784
		..turnin Swabbin' Soap##11469
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Howling Fjord\\Kamagua Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.
	daily
	step //1
		goto Howling Fjord,24.6,58.9
		.talk Anuniaq##24810
		..accept The Way to His Heart...##11472|daily
	step //2
		goto 28.9,74.8
		.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
		.kill Great Reef Sharks|n
		.collect 10 Tasty Reef Fish##34127|q 11472
	step //3
		goto 31,74.4
		.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
		.' He will come to the spot where you're standing
		.' Keep doing this
		.' Lead the Reef Bull to a Reef Cow on the other side of the water|goal Reef Bull led to a Reef Cow|q 11472/1
	step //4
		goto 24.6,58.9
		.talk Anuniaq##24810
		..turnin The Way to His Heart...##11472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests)",[[
	author support@zygorguides.com
	description This guide section contains the quest path for the entire Icecrown zone, which includes the pre-quests
	description to unlock the daily quests in the Orgrim's Hammer, Ymirheim, Aldur'Thar, Shadowvault, and Death's Rise regions of Icecrown.
	description The Argent Tournament Grounds pre-quests are not included in this guide section. 
	step //1
		goto Icecrown,87.8,78.1
		.talk Aedan Moran##30433
		..fpath The Argent Vanguard
	step //2
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..accept Honor Above All Else##13036
	step //3
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Honor Above All Else##13036
		..accept Scourge Tactics##13008
	step //4
		goto 86.8,76.7
		.talk Father Gustav##30226
		..accept Curing The Incurable##13040
	step //5
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..accept Defending The Vanguard##13039
	step //6
		goto 84.4,74.3
		.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		.kill 15 Forgotten Depths Nerubian|q 13039/1
		.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		.get 10 Forgotten Depths Venom Sac|q 13040/1
		.' Click Webbed Crusaders|tip They look like white squirming cocoons on the ground around this area.
		.' Free 8 Webbed Crusaders|goal 8 Webbed Crusader Freed|q 13008/1
	step //7
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..turnin Defending The Vanguard##13039
	step //8
		goto 86.8,76.7
		.talk Father Gustav##30226
		..turnin Curing The Incurable##13040
	step //9
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Scourge Tactics##13008
		..accept If There Are Survivors...##13044
	step //10
		goto 87.0,79.0
		.talk Penumbrius##30227
		..turnin If There Are Survivors...##13044
		..accept Into The Wild Green Yonder##13045
	step //11
		goto 87.1,79.1
		.' Click an Argent Skytalon dragon to ride it |invehicle |tip They look like dragons under white canopies.
	step //12
		goto 79.0,67.4
		.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
		.' Once you pick up a Captured Crusader, fly to 86.9,76.5|n
		.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		.' Repeat this process 2 more times
		.' Rescue 3 Captured Crusaders |goal 3 Captured Crusader Rescued |q 13045/1
	step //13
		'Click the red arrow on your vehicle hot bar to stop riding the dragon|script VehicleExit()|outvehicle|c
	step //14
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..turnin Into The Wild Green Yonder##13045
		..accept A Cold Front Approaches##13070
	step //15
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin A Cold Front Approaches##13070
		..accept The Last Line Of Defense##13086
	step //16
		goto 85.3,75.9
		.' Click the Argent Cannon to get on it |invehicle |tip It looks like a white cannon on top of a wall tower.
	step //17
		'Use the skills on your hotbar to kill scourge mobs and dragons
		.kill 100 Scourge Attacker |q 13086/1
		.kill 3 Frostbrood Destroyer |q 13086/2
	step //18
		'Click the red arrow on your vehicle hot bar to stop using the cannon|script VehicleExit()|outvehicle|c
	step //19
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin The Last Line Of Defense##13086 
	step //20
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##30677
		..accept Once More Unto The Breach, Hero##13105 |only DeathKnight
		..accept Once More Unto The Breach, Hero##13104 |only !DeathKnight
	step //21
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin Once More Unto The Breach, Hero##13105 |only DeathKnight
		..turnin Once More Unto The Breach, Hero##13104 |only !DeathKnight
		..accept The Purging Of Scourgeholme##13118
		..accept The Scourgestone##13122
	step //22
		goto 83.0,73.1
		.talk Crusade Architect Silas##30686
		..accept The Stone That Started A Revolution##13130
	step //23
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..accept It Could Kill Us All##13135
	step //24
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept The Restless Dead##13110
	step //25
		goto 80.4,68.2
		.kill 8 Reanimated Crusader |q 13118/3
		.kill 3 Forgotten Depths Underking |q 13118/2
		.from Reanimated Crusader##30202+, Forgotten Depths Underking##30541+
		.get 15 Scourgestone |q 13122/1
		.' Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
		.' Free 10 Restless Souls |goal 10 Restless Soul Freed |q 13110/1
	step //26
		goto 78.7,60.2
		.kill 3 Forgotten Depths High Priest |q 13118/1
		.' You can find another Forgotten Depths High Priest at 76.2,61.0 |n
	step //27
		goto 82.9,72.8
		.talk Father Gustav##30683
		..turnin The Restless Dead##13110
	step //28
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin The Purging Of Scourgeholme##13118
		..turnin The Scourgestone##13122
		..accept The Air Stands Still##13125
	step //29
		goto 77.6,62.2
		.' Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
		.kill Salranax the Flesh Render##30829 |q 13125/1
	step //30
		goto 79.7,60.9
		.' Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
		.kill High Priest Yath'amon##30831 |q 13125/3
	step //31
		goto 76.6,54.1
		.' Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
		.kill Underking Talonox##30830 |q 13125/2
	step //32
		'Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown,83.0,72.6,0.5 |noway |c
	step //33
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin The Air Stands Still##13125
	step //34
		'Go south to Crystalsong Forest |goto Crystalsong Forest |noway |c
	step //35
		goto Crystalsong Forest,59.9,57.2
		.from Unbound Ent##30862+, Unbound Dryad##30860+
		.get 8 Crystallized Energy |q 13135/1
		.' Click Crystalline Heartwood |tip They look like pink glowing tree stumps on the ground around this area.
		.get 10 Crystalline Heartwood |q 13130/1
	step //36
		goto 73.8,53.0
		.' Click Ancient Elven Masonry |tip They look like blue stone pieces of a building on the ground around this area.
		.get 10 Ancient Elven Masonry |q 13130/2
		.' You can find more Ancient Elven Masonry around 79.6,61.3 |n
	step //37
		'Go northwest to Icecrown |goto Icecrown |noway |c
	step //38
		goto Icecrown,83.0,73.1
		.talk Crusade Architect Silas##30686
		..turnin The Stone That Started A Revolution##13130
	step //39
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..turnin It Could Kill Us All##13135
	step //40
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept Into The Frozen Heart Of Northrend##13139
	step //41
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##30677
		..turnin Into The Frozen Heart Of Northrend##13139
		..accept The Battle For Crusaders' Pinnacle##13141
	step //42
		goto 80.1,72.0
		.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		.' Watch the Battle for Crusaders' Pinnacle |goal Battle for Crusaders' Pinnacle |q 13141/1
	step //43
		goto 82.9,72.8
		.talk Father Gustav##30683
		..turnin The Battle For Crusaders' Pinnacle##13141
		..accept The Crusaders' Pinnacle##13157
	step //44
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin The Crusaders' Pinnacle##13157
		..accept A Tale of Valor##13068
	step //45
		goto 79.5,72.7
		.talk Warlord Hork Strongbrow##31240
		..accept Orgrim's Hammer##13224
	step //46
		goto 79.4,72.4
		.talk Penumbrius##31069
		..fpath Crusaders' Pinnacle
	step //47
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin A Tale of Valor##13068
		..accept A Hero Remains##13072
	step //48
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin A Hero Remains##13072
		..accept The Keeper's Favor##13073
	step //49
		goto 87.1,77.0
		.talk Arch Druid Lilliandra##30630
		..' Ask her for a portal to Moonglade
		..' Click the Moonglade Portal that appears next to you|goto Moonglade|noway|c
	step //50
		goto Moonglade,36.2,41.8
		.talk Keeper Remulos##11832
		..turnin The Keeper's Favor##13073
		..accept Hope Within the Emerald Nightmare##13074
	step //51
		goto 33.7,44.1
		.' Click Emerald Acorns|tip They look like brown pinecones on the ground around this area.
		.get 3 Emerald Acorn|q 13074/1
	step //52
		'Right click your Fitfull Dream buff to awaken from the nightmare|nobuff Spell_Nature_Sleep|q 13074|tip The Fitfull Dream buff icon looks like a closed eye.
	step //53
		goto 36.2,41.8
		.talk Keeper Remulos##11832
		..turnin Hope Within the Emerald Nightmare##13074
		..accept The Boon of Remulos##13075
	step //54
		.Talk to Keeper Remulos##11832
		.' Tell him you wish to return to Arch Druid Lilliandra.
		' Click the Moonglade Return Portal that appears next to you|goto Icecrown|noway|c
	step //55
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Remulos##13075
		..accept Time Yet Remains##13076
	step //56
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Time Yet Remains##13076
		..accept The Touch of an Aspect##13077
	step //57
		goto 79.4,72.4
		.talk Penumbrius##31069
		..' Fly to Wyrmrest Temple in Dragonblight|goto Dragonblight,60.3,51.4,0.5|noway|c
	step //58
		goto Dragonblight,57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //59
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin The Touch of an Aspect##13077
		..accept Dahlia's Tears##13078
	step //60
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //61
		goto 43.2,51.7
		.' There should be a fight happening, so just wait around until the fight is over|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
		.' At the end of the fight, a Ruby Watcher will blow alot of fire on the ground and the Dahlia's Tears will spawn
		.' Click the Dahlia's Tears|tip They look like yellow flowers on the ground.
		.get Dahlia's Tears|q 13078/1
	step //62
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //63
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Dahlia's Tears##13078
		..accept The Boon of Alexstrasza##13079
	step //64
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
	step //65
		goto 60.3,51.6
		.talk Nethestrasz##26851
		..' Fly to Crusaders' Pinnacle in Icecrown|goto Icecrown,79.3,72.3,0.5|noway|c
	step //66
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Alexstrasza##13079
		..accept Hope Yet Remains##13080
	step //67
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Hope Yet Remains##13080
		..accept The Will of the Naaru##13081
	step //68
		'Click the Portal to Shattrath that appears near you|goto Shattrath City|noway|c
	step //69
		goto Shattrath City,54,44.8
		.talk A'dal##18481
		..turnin The Will of the Naaru##13081
		..accept The Boon of A'dal##13082
	step //70
		goto Dalaran,72.2,45.8
		.talk Aludane Whitecloud##28674
		..' Fly to Crusaders' Pinnacle in Icecrown|goto Icecrown,79.3,72.3,0.5|noway|c
	step //71
		goto Icecrown,79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of A'dal##13082
	step //72
		goto 79.8,30.8
		.talk Bridenbrad's Possessions##192833
		..accept Light Within the Darkness##13083
	step //73
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Light Within the Darkness##13083	
	step //74
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		..talk Sky-Reaver Korm Blackscar##30824
		...turnin Orgrim's Hammer##13224
		...accept The Broken Front##13228
	step //75
		'On the Orgim's Hammer airship:
		.talk Koltira Deathweaver##29795
		..accept It's All Fun and Games##12892
	step //76
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..accept Blood of the Chosen##13330
		..accept Joining the Assault##13340
	step //77
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..accept Slaves to Saronite##13302
	step //78
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..accept Get to Ymirheim!##13293
	step //79
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Joining the Assault##13340
		..accept Assault by Air##13310
	step //80
		goto 58.2,45.9
		.talk Kor'kron Squad Leader##31833
		..accept Assault by Ground##13301
	step //81
		'Follow the Horde troops up the mountain and help them fight
		.'Escort the Horde troops into Ymirheim|goal 4 Horde troops escorted to Ymirhem|q 13301/1|tip At least 4 Horde troops must survive.
	step //82
		'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
	step //83
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves|goal 10 Saronite Mine Slave rescued|q 13302/1
	step //84
		'Go outside the cave|goto 57.0,57.3,0.3|c
	step //85
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13330/1
	step //86
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..turnin Get to Ymirheim!##13293
		..accept King of the Mountain##13283
	step //87
		goto 51.9,57.6
		.' Click Thunderbomb's Jumpbot to get in the robot |invehicle
	step //88
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
		.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Horde Battle Standard|goal Horde Battle Standard planted|q 13283/1
	step //89
		'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c
	step //90
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..turnin King of the Mountain##13283
	step //91
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Ground##13301
	step //92
		goto 59.5,45.9
		.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
	step //93
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Kor'kron Infiltrators|goal 4 Kor'kron Infiltrators dropped|q 13310/1
	step //94
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Air##13310
	step //95
		goto 69.0,67.3
		.talk Dying Berserker##31273
		..' Ask him what happened here
		.' Question the Dying Berserker|goal Dying Berserker Questioned|q 13228/1
	step //96
		goto 69.0,67.3
		.talk Dying Berserker##31273
		..accept Avenge Me!##13230
	step //97
		goto 68.8,67.2
		.from Dying Soldier##31304
		.' Kill 5 Dying Alliance Soldiers|goal 5 Dying Alliance Soldiers slain|q 13230/1
	step //98
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		..talk Sky-Reaver Korm Blackscar##30824
		...turnin The Broken Front##13228
		...turnin Avenge Me!##13230
		...accept Good For Something?##13238
		...accept Takes One to Know One##13260
	step //99
		'On the Orgim's Hammer airship:
		.talk Koltira Deathweaver##29795
		..turnin Takes One to Know One##13260
		..accept Poke and Prod##13237
	step //100
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..turnin Blood of the Chosen##13330
	step //101
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..turnin Slaves to Saronite##13302
	step //102
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Good For Something?##13238
		..accept Volatility##13239
	step //103
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13239
		.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13239
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13239
	step //104
		goto 68.8,67.5
		.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
		.' Conduct 3 Field Tests|goal 3 Field Tests Conducted|q 13239/1
	step //105
		goto 68.8,66.6
		.' Kill 5 Hulking Abominations|goal 5 Hulking Abominations Slain|q 13237/1
		.' Kill 5 Malefic Necromancer|goal 5 Malefic Necromancers Slain|q 13237/2
		.' Kill 5 Shadow Adept|goal 5 Shadow Adepts Slain|q 13237/3
	step //106
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Poke and Prod##13237
		..accept That's Abominable!##13264
	step //107
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Volatility##13239
		..accept Green Technology##13379
	step //108
		goto 69.8,62.4
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13264/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13264/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13264/3
	step //109
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin That's Abominable!##13264
		..accept Sneak Preview##13351
	step //110
		goto 57.5,35.2
		.' Visit Aldur'thar North|goal Aldur'thar North Visited|q 13351/3
	step //111
		goto 54.7,38.9
		.' Visit Aldur'thar Central|goal Aldur'thar Central Visited|q 13351/2
	step //112
		goto 55.1,43.9
		.' Visit Aldur'thar South|goal Aldur'thar South Visited|q 13351/1
	step //113
		goto 51.3,35.3
		.' Visit Aldur'thar Northwest|goal Aldur'thar Northwest Visited|q 13351/4
	step //114
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Green Technology##13379
		..accept Fringe Science Benefits##13373
	step //115
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13373
	step //116
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly behind you (you have to aim it)
		..kill 15 Gargoyle Ambusher|q 13373/3
		.' Drop bombs on the mobs below
		..kill 40 Bombardment Infantry|q 13373/1
		..kill 8 Bombardment Captain|q 13373/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //117
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Fringe Science Benefits##13373
	step //118
		goto 44.3,21.5
		.' Use your Eyesore Blaster on The Ocular|use Eyesore Blaster##41265|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
		.' Destroy The Ocular|goal The Ocular has been destroyed|q 12892/1
	step //119
		goto 44.1,24.7
		.talk Baron Sliver##29804
		..turnin It's All Fun and Games##12892
		..accept I Have and Idea, But First...##12891
	step //120
		goto 43.7,24.8
		.from Shadow Cultist##29717+
		.get 1 Cultist Rod|q 12891/1
		.from Morbid Carcass##29719+
		.get 1 Abomination Hook|q 12891/2
		.from Vault Geist##29720+
		.get 1 Geist Rope|q 12891/3
		.from Morbid Carcass##29719+, Vault Geist##29720+, Rabid Cannibal##29722+, Death Knight Master##29738+
		.get 5 Scourge Essence|q 12891/4
	step //121
		goto 44.1,24.7
		.talk Baron Sliver##29804
		..turnin I Have and Idea, But First...##12891
		..accept Free Your Mind##12893
	step //122
		goto 43.4,19.1
		.from The Leaper##29840
		.' Use your Sovereign Rod on The Leaper's corpse|use Soveriegn Rod##41366
		.' Turn The Leaper|goal The Leaper turned|q 12893/3
	step //123
		goto 44.4,27.0
		.from Vile##29769
		.' Use your Sovereign Rod on Vile's corpse|use Soveriegn Rod##41366
		.' Turn Vile|goal Vile turned|q 12893/1
	step //124
		goto 41.8,24.5
		.from Lady Nightswood##29770
		.' Use your Sovereign Rod on Lady Nightswood's corpse|use Soveriegn Rod##41366
		.' Turn Lady Nightswood|goal Lady Nightswood turned|q 12893/2
	step //125
		goto 44.1,24.7
		.talk Baron Sliver##29804
		..turnin Free Your Mind##12893
		..accept If He Cannot Be Turned##12897
	step //126
		'The entrance to the Shadow Vault starts here|goto Icecrown,43.7,23.6,0.3|c
	step //127
		goto 44.9,19.9
		.' Click the General's Weapon Rack|It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
		.' General Lightsbane spawns
		.kill General Lightsbane|q 12897/1
	step //128
		'Leave the Shadow Vault|goto 43.7,23.6,0.3|c
	step //129
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin If He Cannot Be Turned##12897
		..accept The Shadow Vault##12899
		..turnin Sneak Preview##13351
		..accept Drag and Drop##13352
		..accept Chain of Command##13354
		..accept Cannot Reproduce##13355
	step //130
		goto 53.9,46.9
		.' Kill Overseer Faedris|goal Overseer Faedris Killed|q 13354/1|tip He's standing in a tent.
	step //131
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion##44246 |n
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13353/1
	step //132
		goto 54.7,32.6
		.' Kill Overseer Jhaeqon|goal Overseer Jhaeqon Killed|q 13354/2|tip He's standing in a tent.
	step //133
		goto 53.7,29.2
		.' Kill Overseer Veraj|goal Overseer Veraj Killed|q 13354/3|tip He's standing under a white canopy.
	step //134
		goto 49.7,34.4
		.' Use your Partitioned Flask next to the big cauldron with purple smoke|use Partitioned Flask##44251
		.' Collect the Dark Sample|goal Dark Sample Collected|q 13355/3
	step //135
		goto 49.1,34.2
		.' Use your Partitioned Flask next to the big cauldron with green smoke|use Partitioned Flask##44251
		.' Collect the Green Sample|goal Green Sample Collected|q 13355/2
	step //136
		goto 49.0,33.2
		.' Use your Partitioned Flask next to the big cauldron with gray or blue smoke|use Partitioned Flask##44251
		.' Collect the Blue Sample|goal Blue Sample Collected|q 13355/1
	step //137
		goto 49.4,31.2
		.' Kill Overseer Savryn|goal Overseer Savryn Killed|q 13354/4|tip He's standing under a white canopy.
	step //138
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin The Shadow Vault##12899
		..accept The Duke##12938
		..accept Blackwatch##13106
	step //139
		goto 43.7,24.4
		.talk Morlia Doomwing##30314
		..fpath The Shadow Vault
	step //140
		goto 44.0,22.2
		.talk Initiate Brenners##30308
		..home The Shadow Vault
	step //141
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin The Duke##12938
		..accept Honor Challenge##12939
	step //142
		goto 43.6,24.7
		.talk The Leaper##30074
		..accept Eliminate the Competition##12955
	step //143
		goto 37.9,22.9
		.talk Onu'zun##30180
		..' Tell him you have bad news for him
		.' Defeat Onu'zun|goal Onu'zun defeated|q 12955/3
	step //144
		goto 37.9,25.1
		.talk Efrem the Faithful##30081
		..' Challenge him to a duel
		.' Defeat Efrem the Faithful|goal Efrem the Faithful defeated|q 12955/2
	step //145
		goto 37.5,24.6
		.' Use your Challenge Flag on Mjordin Combatants to challenge them|use Challenge Flag##41372
		..' Challenge and defeat 6 Mjordin Combatants|goal 6 Mjordin Combatants challenged and defeated|q 12939/1
	step //146
		goto 37.1,22.5
		.talk Sigrid Iceborn##30086
		..' Tell her you heard vrykul women cannot fight at all
		.' Defeat Sigrid Iceborn|goal Sigrid Iceborn defeated|q 12955/1
	step //147
		goto 36.2,23.6
		.talk Tinky Wickwhistle##30162
		..' Tell her you can't afford her as a distraction
		.' Defeat Tinky Wickwhistle|goal Tinky Wickwhistle defeated|q 12955/4
	step //148
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //149
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Honor Challenge##12939
		..accept Shadow Vault Decree##12943
	step //150
		goto 43.6,24.7
		.talk The Leaper##30074
		..turnin Eliminate the Competition##12955
		..accept The Bone Witch##12999
	step //151
		'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
	step //152
		goto 41.0,23.9
		.talk Vaelen the Flayed##30056
		..accept Get the Key##12949
	step //153
		goto 40.3,23.9
		.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty|use Shadow Vault Decree##41776
		..kill Thane Ulfrang the Mighty|q 12943/1
	step //154
		'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
	step //155
		goto 36.5,23.6
		.from Instructor Hroegar##29915
		.get Key to Vaelan's Chains|q 12949/1
	step //156
		'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
	step //157
		goto 41.0,23.9
		.talk Vaelen the Flayed##30056
		..turnin Get the Key##12949
		..accept Let the Baron Know##12951
	step //158
		'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
	step //159
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin Let the Baron Know##12951
		..accept Leave Our Mark##12995
		..accept Vaelen Has Returned##13085
	step //160
		goto 43.3,24.8
		.talk Vile##30216
		..accept Crush Dem Vrykuls!##12992
	step //161
		goto 43.1,21.1
		.talk Vaelen the Flayed##30218
		..turnin Vaelen Has Returned##13085
		..accept Ebon Blade Prisoners##12982
	step //162
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Shadow Vault Decree##12943
		..accept Vandalizing Jotunheim##13084
	step //163
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Drag and Drop##13352
		..turnin Chain of Command##13354
		..accept Opportunity##13258
		..accept Not a Bug##13358
	step //164
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Cannot Reproduce##13355
		..accept Retest Now##13356
	step //165
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13356
		.from Enslaved Minion##32260+
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13358
	step //166
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger|goal Dark Messenger summoned|q 13358/1
	step //167
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass|goal Writhing Mass Banished|q 13356/1
	step //168
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Not a Bug##13358
		..accept Need More Info##13366
	step //169
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Retest Now##13356
	step //170
		.' You may need to get in a three-man group for the next quest
		.' Go into the building at 51.9,32.7 |goto 51.9,32.7,0.5 |c |q 13366
	step //171
		goto 51.9,30.8
		.from Cult Researcher##32297+
		..collect Cult of the Damned Research - Page 1##44459|n
		..collect Cult of the Damned Research - Page 2##44460|n
		..collect Cult of the Damned Research - Page 3##44461|n
		.' Use a Cult of the Damned Research Page to combine them|use Cult of the Damned Research - Page 1##44459
		.get Cult of the Damned Thesis|q 13366/1
	step //172
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.kill 15 Jotunheim vrykul|q 12992/1
		.collect 15 Vrykul Bones##43089|q 13092|future
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses|goal 15 Ebon Blade Banner planted near vrykul corpse|q 12995/1
		.collect 8 Jotunheim Cage Key##42422|q 12982|n
		.' Click Jortunheim Cages|tip They look like wooden cages on the ground around this area.
		.' Set free 8 Ebon Blade Prisoners|goal 8 Ebon Blade Prisoners set free|q 12982/1
		.' Click Vrykul Banners|tip They look like big wooden posts with red banners hanging from them around this area.
		.' Burn 10 Vrykul banners|goal 10 Vrykul banners burned|q 13084/1
	step //173
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin The Bone Witch##12999
		..accept Reading the Bones##13092
		..turnin Reading the Bones##13092
		..accept Deep in the Bowels of the Underhalls##13042
	step //174
		'The entrance to The Underhalls starts here|goto 32.6,32.1,0.3|c
	step //175
		goto 36.1,33.0
		.talk Bethod Feigr##30406
		..accept Revenge for the Vargul##13059
	step //176
		goto 33.1,37.7
		.' Use Bethod's Sword in the middle of the room|use Bethod's Sword##42928
		.' Issue a challenge using Bethod's Sword|goal Challenge issued using Bethod's Sword|q 13059/1
		.kill Thane Illskar|q 13059/2
	step //177
		goto 34.0,36.3
		.kill Apprentice Osterkilgr##30409|q 13042/2
		.' Beat the information out of Apprentice Osterkilgr|goal Information beaten out of Apprentice Osterkilgr|q 13042/1
		.collect Dr. Terrible's "Building a Better Flesh Giant"##42772|n
		.' Click Dr. Terrible's "Building a Better Flesh Giant" in your bags|use Dr. Terrible's "Building a Better Flesh Giant"##42772
		..accept The Sum is Greater than the Parts##13043
	step //178
		goto 33.4,33.2
		.' Click Nergeld to control him|tip He's a big undead monster.
		.'Use Nergeld's abilities to kill Dr. Terrible|tip The best way to kill Dr. Terrible is to knock him, and all the other mobs, away using Nergeld's shout ability.  Then, target Dr. Terrible and pull him close with Nergeld's chain ability.  When Dr. Terrible is close to you, use Nergeld's punch ability to get his health down quickly.  When Dr. Terrible tries to heal, use Nergeld's shout ability to interrupt him, then pull him close again and resume punching him.
		.kill Dr. Terrible|q 13043	
	step //179
		goto 36.1,33.0
		.talk Bethod Feigr##30406
		..turnin Revenge for the Vargul##13059
	step //180
		'Leave The Underhalls|goto 32.6,32.1,0.3|c
	step //181
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Deep in the Bowels of the Underhalls##13042
		..turnin The Sum is Greater than the Parts##13043
		..accept The Art of Being a Water Terror##13091
	step //182
		goto 31.4,41.2
		.' Click the huge Lock Gate to control a Water Terror
		.' Use the Water Terror's abilities to kill mobs around this area
		.' Slay 10 Jotunheim vrykul while possessing a Water Terror|goal 10 Jotunheim vrykul slain while possessing a Water Terror|q 13091/1
	step //183
		'Click the red arrow on your vehicle hot bar to stop controlling the Water Terror|script VehicleExit()|outvehicle|c
	step //184
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin The Art of Being a Water Terror##13091
		..accept Through the Eye##13121
	step //185
		'The entrance to Kul'galar Keep starts here|goto 25.1,61.3,0.3|c
	step //186
		goto 26.2,62.3
		.' Click the Eye of the Lich King|tip It's a blue floating ball up on a stage.
		.' Grasp the Eye of the Lich King and focus
		.' Gain information for The Bone Witch|goal Information gained for The Bone Witch|q 13121/1
	step //187
		'Leave Kul'galar Keep|goto 25.1,61.3,0.3|c
	step //188
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Through the Eye##13121
		..accept Find the Ancient Hero##13133
	step //189
		'The entrance to the Halls of the Ancestors starts here|goto 27.9,47.2,0.3|c
	step //190
		goto 27.4,47.9
		.talk Slumbering Mjordin##30718
		..' Waken them to see if it is Iskalder
		.' Use The Bone Witch's Amulet on Iskalder|use The Bone Witch's Amulet##43166
		.' Bring Iskalder back to The Bone Witch at 32.5,42.9|n
		.' Deliver Iskalder to The Bone Witch|goal Iskalder delivered to The Bone Witch|q 13133/1
	step //191
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Find the Ancient Hero##13133
	step //192
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Blackwatch##13106
		..accept Where Are They Coming From?##13117
	step //193
		goto 36.8,70.7
		.' Click a Summoning Altar|tip They look like small stone stages with green summoning circles on them on the ground around this area.
		.' Investigate a Summoning Altar|goal Summoning Altar investigated|q 13117/1
	step //194
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Where Are They Coming From?##13117
		..accept Destroying the Altars##13119
		..accept Death's Gaze##13120
	step //195
		goto 30.5,65.1
		.' Click the Cauldron Area Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Cauldron Area Orb Stand|goal Orb placed in cauldron area|q 13120/3
	step //196
		goto 32.6,70.6
		.' Click the Abomination Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Abomination Lab Orb Stand|goal Orb placed in abomination lab|q 13120/1
	step //197
		goto 34.6,69.6
		.' Click the Flesh Giant Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Flesh Giant Lab Orb Stand|goal Orb placed in flesh giant lab|q 13120/2
	step //198
		goto 37.0,71.1
		.from Master Summoner Zarod##30746
		.collect 1 Master Summoner's Staff##43159|q 13119
	step //199
		goto 36.7,70.7
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the First Summoning Altar|goal First Summoning Altar destroyed|q 13119/1
	step //200
		goto 36.6,71.6
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Second Summoning Altar|goal Second Summoning Altar destroyed|q 13119/2
	step //201
		goto 37.4,71.5
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Fourth Summoning Altar|goal Fourth Summoning Altar destroyed|q 13119/4
	step //202
		goto 37.8,70.7
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Third Summoning Altar|goal Third Summoning Altar destroyed|q 13119/3
	step //203
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Destroying the Altars##13119
		..turnin Death's Gaze##13120
		..accept Spill Their Blood##13134
	step //204
		goto 34.0,70.0
		.' Attack the vats of Embalming Fluid|tip They look like big glass balls half full of green liquid with 4 metal legs holding them around this area.
		.' Destroy 5 Vats of Embalming Fluid|goal 5 Vats of Embalming Fluid destroyed|q 13134/2
		.' Attack the Blood Orbs|tip They look like small glass balls half full of red liquid floating above small metal pillars around this area.
		.' Shatter 5 Blood Orbs|goal 5 Blood Orbs shattered|q 13134/1
		.from Spiked Ghoul##30597+
		.collect 1 Jagged Shard##43242|n
		.' Click the Jagged Shard in your bags|use Jagged Shard##43242
		..accept Jagged Shards##13136
	step //205
		goto 34.4,68.9
		.from Spiked Ghoul##30597+|tip You can find them all around this area.
		.get 10 Jagged Shard|q 13136/1
	step //206
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Spill Their Blood##13134
	step //207
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin Jagged Shards##13136
		..accept I'm Smelting... Smelting!##13138
		..accept The Runesmiths of Malykriss##13140
	step //208
		goto 54.9,84.2
		.talk Sergeant Kregga##31440
		..turnin Opportunity##13258
		..accept Establishing Superiority##13259
	step //209
		goto 54.8,85.0
		.kill 10 Hulking Horror|q 13259/1
	step //210
		goto 54.9,84.2
		.talk Sergeant Kregga##31440
		..turnin Establishing Superiority##13259
		..accept Blow it Up!##13262
	step //211
		goto 54.4,86.3
		.' Click the Saronite Bomb Stack|tip It looks like a pile of big spiked round bombs.
		..turnin Blow it Up!##13262
		..accept A Short Fuse##13263
	step //212
		goto 54.0,87.3
		.' Click the Pulsing Crystal underwater|tip This is underground in Naz'anak: The Forgotten Depths.
		..turnin A Short Fuse##13263
		..accept A Voice in the Dark##13271
	step //213
		goto 53.8,86.9
		.talk Matthias Lehner##31237
		..turnin A Voice in the Dark##13271
		..accept Time to Hide##13275
	step //214
		goto 54.5,87.4
		.from Faceless Lurker##31691+|tip They look like elephant men with squid arms underground in Naz'anak: The Forgotten Depths.
		.get 3 Faceless One's Blood|q 13275/1
	step //215
		goto 53.8,86.9
		.talk Matthias Lehner##31237
		..turnin Time to Hide##13275
		..accept Return to the Surface##13282
	step //216
		goto 53.8,86.8
		.' Click the Surface Portal|tip It looks like a small round green and black portal underground in Naz'anak: The Forgotten Depths.
		..' Go to the surface|goto Icecrown,49.1,71.6,0.5|noway|c
	step //217
		goto 58.1,70.9
		.' Use your Bag of Jagged Shards while standing on the big platform with fire shooting out of it|use Bag of Jagged Shards##43289
		.get Smelted Bar|q 13138/1
	step //218
		goto 58.9,73.3
		.from Skeletal Runesmith##30921+
		.get 5 Runed Saronite Plate|q 13140/1
	step //219
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Return to the Surface##13282
		..accept Field Repairs##13304
	step //220
		goto 66.0,53.7
		.from Scavenging Geist##31847+
		.get 5 Demolisher Parts|q 13304/1
	step //221
		goto 68.0,51.9
		.talk Wrecked Demolisher##31868
		..turnin Field Repairs##13304
	step //222
		goto 68.0,51.6
		.talk Matthias Lehner##32408
		..accept Do Your Worst##13305
	step //223
		goto 68.0,51.8
		.' Click the Refurbished Demolisher to drive it|invehicle|tip It looks like a big wooden catapult machine.
	step //224
		goto 65.4,47.9
		.' Use the catapult's abilities around this area to:
		.kill 150 Decomposed Ghoul|q 13305/1
		.kill 20 Frostskull Magus|q 13305/2
		.kill 2 Bone Giant|q 13305/3
	step //225
		goto 64.5,44.0
		.talk Matthias Lehner##32404
		..turnin Do Your Worst##13305
		..accept Army of the Damned##13236
	step //226
		goto 64.9,43.9
		.' Use your abilities as Arthas to kill Lordaeron Footsoldiers and turn them into Ghoulish Minions
		.' Raise 100 Ghoulish Minions|goal 100 Ghoulish Minions Raised|q 13236/1
	step //227
		'Click the red arrow on your vehicle hot bar to stop controlling Arthas|script VehicleExit()|outvehicle|c
	step //228
		goto 64.5,44.0
		.talk Matthias Lehner##32404
		..turnin Army of the Damned##13236
		..accept Futility##13348
	step //229
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Futility##13348
		..accept Cradle of the Frostbrood##13349
		..turnin Need More Info##13366
		..accept Raise the Barricades##13306
	step //230
		goto 71.5,37.6
		.talk Matthias Lehner##32423
		..accept Where Dragons Fell##13359
	step //231
		goto 69.7,36.7
		.kill 8 Cultist Corrupter|q 13349/2
		.kill 3 Vrykul Necrolord|q 13349/3
		.from Frostbrood Whelp##31718+
		.get 6 Whelp Bone Dust|q 13359/1
	step //232
		goto 71.5,37.6
		.talk Matthias Lehner##32423
		..turnin Where Dragons Fell##13359
		..accept Time for Answers##13360
	step //233
		goto 72.3,36.7
		.kill 5 Wyrm Reanimator|q 13349/1
	step //234
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Cradle of the Frostbrood##13349
	step //235
		goto 51.1,39.6
		.' Use your Barricade Construction Kit next to the pink and purple orbs|use Barricade Construction Kit##44127|tip They look like pink and purple orbs that flash and disappear around this area.
		.' Construct 8 Barricades |q 13306/1
	step //236
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Raise the Barricades##13306
	step //237
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..accept Blinding the Eyes in the Sky##13313
	step //238
		goto 49.4,39.3
		.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
		.' Shoot Down 6 Skybreaker Recon Fighters |q 13313/1
	step //239
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Sky-Reaver Korm Blackscar##30824
		..turnin Blinding the Eyes in the Sky##13313	
	step //240
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //241
		goto 43.1,21.1
		.talk Vaelen the Flayed##30218
		..turnin Ebon Blade Prisoners##12982 
	step //242
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Vandalizing Jotunheim##13084
	step //243
		goto 43.3,24.8
		.talk Vile##30216
		..turnin Crush Dem Vrykuls!##12992
		..accept Vile Like Fire!##13071
	step //244
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin Leave Our Mark##12995
		..accept To the Rise with all Due Haste!##12806
	step //245
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..accept Parting Gifts##13168
	step //246
		goto 44.1,24.7
		.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
		.' Seize Control of an Eidolon Watcher|goal Seize Control of an Eidolon Watcher|q 13168/1
	step //247
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin Parting Gifts##13168
		..accept From Whence They Came##13171
		..accept An Undead's Best Friend##13169
		..accept Honor is for the Weak##13170
	step //248
		goto 44.1,24.7
		.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
		.' Sieze Control of an Eidolon Watcher|invehicle|c
	step //249
		goto 41.5,32.4
		.' Use your Eidolon Watcher abilities around this area to:
		.' Feed 18 Hungering Plaguehounds|goal 18 Hungering Plaguehounds fed|q 13169/1
		.' Assassinate 20 Restless Lookouts|goal 20 Restless Lookouts assassinated|q 13170/1
		.' Banish 10 Scourge Crystals|goal 10 Banished Scourge Crystals|q 13171|tip The Scourge Crystals look like big crystals floating above small stone pillars around this area.
	step //250
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin From Whence They Came##13171
		..turnin An Undead's Best Friend##13169
		..turnin Honor is for the Weak##13170
		..accept Seeds of Chaos##13172
		..accept Amidst the Confusion##13174
	step //251
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..' Tell him you are prepared to join the assault|invehicle
	step //252
		'Use your Firebomb ability as you fly around to:
		.' Slaughter 80 Weeping Quarry Undead|goal 80 Weeping Quarry Undead slaughtered|q 13172/1
	step //253
		'Click the red arrow on your vehicle hot bar to stop riding the skeleton mount|script VehicleExit()|outvehicle|c
	step //254
		goto 37.2,41.6
		.' Click the Weeping Quarry Schedule|tip It looks like a rolled up white scroll laying on the back of this wagon, next to a bunch of wooden boxes.
		.get Weeping Quarry Schedule|q 13174/4
	step //255
		goto 38.7,39.4
		.' Click the Weeping Quarry Map|tip It looks like a tan piece of paper laying on a wooden box, next to a bunch of wooden boxes and a canopy.
		.get Weeping Quarry Map|q 13174/3
	step //256
		goto 39.2,36.7
		.' Click the Weeping Quarry Ledger|tip It looks like a rolled up white scroll laying on the corner of a wooden box, under a canopy.
		.get Weeping Quarry Ledger|q 13174/2
	step //257
		goto 39.1,33.6
		.' Click the Weeping Quarry Document|tip It looks like an unrolled white scroll with black writing on it, laying on the corner of a wooden box, under a canopy.
		.get Weeping Quarry Document|q 13174/1
	step //258
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin Seeds of Chaos##13172
		..turnin Amidst the Confusion##13174
		..accept Vereth the Cunning##13155
	step //259
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //260
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //261
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //262
		goto 19.3,47.8
		.talk Dreadwind##31078
		..fpath Death's Rise
	step //263
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin To the Rise with all Due Haste!##12806
		..accept The Story Thus Far...##12807
	step //264
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..' Tell him you would hear his tale|goal Lord-Commander Arete's tale listened to.|q 12807/1
	step //265
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin The Story Thus Far...##12807
		..accept Blood in the Water##12810
	step //266
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..accept From Their Corpses, Rise!##12813
	step //267
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..accept Intelligence Gathering##12838
	step //268
		goto 9.6,44.3
		.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
		.collect Scarlet Onslaught Trunk Key##40652+|n
		.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
		.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
		.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
		.get 5 Onslaught Intel Documents|q 12838/1
		.collect Note from the Grand Admiral##40666|n
		.' Click the Note from the Grand Admiral in your bags|use Note from the Grand Admiral##40666
		..accept The Grand (Admiral's) Plan##12839
	step //269
		goto 10.5,40.8
		.from Ravenous Jaws##29392|tip They are sharks in the water.
		.' Use your Gore Bladder on their corpses|use Gore Bladder##40551
		.' Collect 10 Blood from Ravenous Jaws|goal 10 Blood collected from Ravenous Jaws|q 12810/1
	step //270
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin Blood in the Water##12810
		..accept You'll Need a Gryphon##12814
		..turnin The Grand (Admiral's) Plan##12839
		..accept In Strict Confidence##12840
	step //271
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..turnin From Their Corpses, Rise!##12813
	step //272
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..turnin Intelligence Gathering##12838
	step //273
		goto 8.5,44.3
		.from Onslaught Gryphon Rider##29333+
		.collect 1 Onslaught Gryphon Reins##40970|q 12814
	step //274
		goto 7.0,41.9
		.from Captain Hartford##29490|tip Standind on the top deck of the ship, next to the wooden steering wheel.
		.' Beat and kill Captain Hartford for information|goal Captain Hartford beaten for information and killed|q 12840/2
	step //275
		goto 5.7,41.9
		.from Captain Welsington##29489|tip Standind on the top deck of the ship, next to the wooden steering wheel.
		.' Beat and kill Captain Welsington for information|goal Captain Welsington beaten for information and killed|q 12840/1
		.' Use your Onslaught Gryphon Reins in your bags|use Onslaught Gryphon Reins##40970
		.' Take control of an Onslaught Gryphon|invehicle|q 12814
	step //276
		goto 19.6,47.8
		.' Use the Deliver Gryphon ability on your gryphon hotbar next to Uzo Deathcaller|tip He's standing on a bunch of scattered straw on the ground.
		.' Deliver the Onslaught Gryphon to Uzo Deathcaller|goal Onslaught Gryphon delivered to Uzo Deathcaller|q 12814/1
	step //277
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin You'll Need a Gryphon##12814
		..accept No Fly Zone##12815
	step //278
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin In Strict Confidence##12840
	step //279
		goto 12.5,44.4
		.' Use your Bone Gryphon in your bags|use Bone Gryphon##40600
		.' Ride a Bone Gryphon|invehicle|q 12815
	step //280
		goto 10.2,41.9
		.' Use your Bone Gryphon abilities to:
		.kill 10 Onslaught Gryphon Rider|q 12815/1
	step //281
		'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c 
	step //282
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin No Fly Zone##12815
	step //283
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin I'm Smelting... Smelting!##13138
		..turnin The Runesmiths of Malykriss##13140
		..accept By Fire Be Purged##13211
	step //284
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..accept A Visit to the Doctor##13152
	step //285
		'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
	step //286
		goto 34.6,67.7
		.' Use Olakin's Torch on Festering Corpses|use Olakin's Torch##43524|tip They look like dead soldiers on the ground inside this cave.
		.' Burn 7 Festering Corpses|goal 7 Festering Corpse burned|q 13211/1
	step //287
		goto 35.8,67.0
		.' Follow the path in the cave to this spot
		.' Click the Metal Stake|tip It looks like a big metal spike sticking out of the ground.
		.' Free Patches|goal Patches freed|q 13152/1
		.' Help Patches kill Doctor Sabnok|goal Help Patches kill Doctor Sabnok|q 13152/2
	step //288
		'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
	step //289
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin A Visit to the Doctor##13152
	step //290
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin By Fire Be Purged##13211
	step //291
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..accept Killing Two Scourge With One Skeleton##13144
	step //292
		goto 35.1,69.4
		.' Click Grasping Arms|tip They look like green arms on the ground that reach up sometimes.
		.' Get a Burning Skeleton minion
		.' With a Burning Skeleton minion, go to 32.2,71.2
		.' Stand next to Chained Abominations with your Burning Skeleton to burn them|tip They look like fat white abominations chained to the big spikes around the edge of this platform.
		.' Repeat this process 2 more times
		.' Burn 3 Chained Abominations|goal 3 Chained Abominations burned|q 13144	
	step //293
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Killing Two Scourge With One Skeleton##13144
		..accept He's Gone to Pieces##13212
	step //294
		goto 34.0,69.2
		.from Corpulent Horror##30696+
		.get Olakin's Torso|q 13212/1
		.get Olakin's Legs|q 13212/2
		.get Olakin's Left Arm|q 13212/3
		.get Olakin's Right Arm|q 13212/4
	step //295
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin He's Gone to Pieces##13212
		..accept Putting Olakin Back Together Again##13220
	step //296
		'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
	step //297
		goto 34.7,66.0
		.' Click the Spool of Thread|tip It looks like a red spool with white thread wound on it, sitting on a small metal chest with a skull on it, in a small side room in the Sanctum of Reanimation.
		.collect 1 Spool of Thread|q 13220
	step //298
		goto 36.6,67.6
		.' Follow the path in the cave all the way to the end into the doctor's big lab.
		.' Click The Doctor's Cleaver|tip It looks like a butcher's cleaver stuck in a bloody metal table.
		.collect 1 The Doctor's Cleaver|q 13220
	step //299
		goto 35.6,66.7
		.' Follow the path in the cave back up into the main entrance room of the cave
		.' Use Crusader Olakin's Remains while standing on the big black stone slab made of skulls|use Crusader Olakin's Remains##43564
		.' Revive Crusader Olakin Sainrith|goal Crusader Olakin Sainrith revived|q 13220/1
	step //300
		'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
	step //301
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Putting Olakin Back Together Again##13220
	step //302
		goto 31.8,64.8
		.talk Father Kamaros##31279
		..accept Let's Get Out of Here!##13481
		.' Escort Father Kamaros to safety|goal Escort Father Kamaros to safety|q 13481/1
	step //303
		goto 49.2,73.1
		.talk Matthias Lehner##32497
		..turnin Time for Answers##13360
		..accept The Hunter and the Prince##13361
	step //304
		goto 49.2,73.9
		.' Click a Bloodstained Stone|tip They look like pointed rocks on the ground around this area.
		.' Fight Illidan using your Arthas abilities|tip The best way to kill Illidan is to just keep parrying his attacks until your mana is full.  Once your mana is full, use your knockback ability, followed immediately by your Annihilate ability.  Keep repeating this process until Illidan is dead.
		.' Find out the Prince's Destiny|goal The Prince's Destiny|q 13361/1
	step //305
		goto 49.2,73.1
		.talk Matthias Lehner##32497
		..turnin The Hunter and the Prince##13361
		..accept Knowledge is a Terrible Burden##13362
	step //306
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin Vereth the Cunning##13155
		..accept New Recruit##13143
	step //307
		goto 55.5,71.5
		.' Fight a Lithe Stalker until you see a message in your chat that it's weak|tip You can find Lithe Stalkers up on this high bridge.
		.' Use your Sigil of the Ebon Blade on a weakened Lithe Stalker|use Sigil of the Ebon Blade##43315
		.' Bring the Lithe Stalker off the bridge to 55.4,70.8
		.' Return the Subdued Lithe Stalker|goal Subdued Lithe Stalker Returned|q 13143/1
	step //308
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin New Recruit##13143
		..accept The Vile Hold##13145
	step //309
		goto 56.1,79.8
		.' Explore the Altar of Sacrifice|goal Altar of Sacrifice explored|q 13145/1
	step //310
		goto 59.0,73.8
		.' Explore the Runeworks|goal Runeworks explored|q 13145/4
	step //311
		goto 58.0,71.3
		.' Explore the Blood Forge|goal Blood Forge explored|q 13145/2
	step //312
		goto 60.4,68.7
		.' Explore the Icy Lookout|goal Icy Lookout explored|q 13145/3
	step //313
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin The Vile Hold##13145
		..accept Generosity Abounds##13146
		..accept Matchmaker##13147
		..accept Stunning View##13160
	step //314
		goto 54.3,70.6
		.' Click the Eye of Domination|tip It looks like a red globe floating above a small metal pillar.
		.' Seize control of a Lithe Stalker|invehicle|q 13146
	step //315
		goto 57.7,73.7
		.' Start 5 Worker Fights|goal 5 Worker fight started|q 13147|tip To start a Worker Fight, use your Lithe Stalker Throw Rock ability on Umbral Brutes when they get close to the skeletons around this area.
		.' Deliver 4 Scourge Bomb Gifts|goal 4 Scourge Bomb gift delivered|q 13146|tip The Scourge Bombs look like spiked round metal bombs on the ground around this area.  Use your Lithe Stalker Iron Chain ability on the Scourge Bombs.  Then, drag the Scourge Bombs next to Lumbering Atrocities.  Lumbering Atrocities look like abominations around this area.
	step //316
		goto 59.6,76.2
		.' Use your Lithe Stalker Leap ability to jump up the cliff to this spot.
		.' Destroy 12 Iceskin Sentries|goal 12 Iceskin Sentry destroyed|q 13160|tip The Iceskin Sentries look like gargoyles sitting high up on the cliffside.  Use your Lithe Stalker Leap ability to jump around to them.  Once you get close to them, use your Lithe Stalker Heave ability to destroy them.
	step //317
		'Click the red arrow on your hot bar to stop controlling a Lithe Stalker|script VehicleExit()|outvehicle|c 
	step //318
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin Generosity Abounds##13146
		..turnin Matchmaker##13147
		..turnin Stunning View##13160
	step //319
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Knowledge is a Terrible Burden##13362
		..accept Argent Aid##13363
	step //320
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..turnin Let's Get Out of Here!##13481
	step //321
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Argent Aid##13363
		..accept Tirion's Gambit##13364
	step //322
		goto 45.2,77.0
		.from Cultist Acolyte##32507+
		.collect 1 Cultist Acolyte's Hood##44784|q 13364
		.' Use your Cultist Acolyte's Hood|use Cultist Acolyte's Hood##44784
		.' Become disguised as a cultist|havebuff Ability_Rogue_MasterOfSubtlety|q 13364
	step //323
		goto 44.4,76.2
		.talk Highlord Tirion Fordring##32239
		..' Tell him you're ready and follow him into the cathedral
		.' Watch the cutscene
		.' See Tirion's Gambit|goal Tirion's Gambit|q 13364/1
	step //324
		goto 42.8,78.8|n
		.' Click the Escape Portal that appears after the cutscene|goto Icecrown,80.2,70.3,0.5|noway|c
	step //325
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Tirion's Gambit##13364	
	step //326
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //327
		goto 43.3,24.8
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Argent Tournament Grounds Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
	description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section,
	description to unlock more daily quests.
	step //1
		goto Icecrown,72.6,22.6
		.talk Helidan Lightwing##33849
		..fpath Argent Tournament Grounds
	step //2
		goto Icecrown,69.7,22.9
		.talk Justicar Mariel Trueheart##33817
		..accept The Argent Tournament##13668
	step //3
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin The Argent Tournament##13668
		..accept Mastery Of Melee##13829
	step //4
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..accept Mastery Of The Charge##13839
	step //5
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..accept Mastery Of The Shield-Breaker##13838
	step //6
		goto 75.6,23.7
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle|q 13829
	step //7
		goto 72.5,19.3
		.talk Jeran Lockwood##33973
		.' Listen to Jeran Lockwood's advice|q 13829/1
	step //8
		goto 72.7,18.9
		.talk Rugan Steelbelly##33972
		.' Listen to Rugan Steelbelly's advice|q 13839/1
	step //9
		goto 73.2,19.2
		.talk Valis Windchaser##33974
		.' Listen to Valis Windchaser's advice|q 13838/1
	step //10
		goto 73.1,19.0
		.' Target a Ranged Target from a distance
		.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
		.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13838/2
	step //11
		goto 72.9,18.8
		.' Target a Charge Target from a distance
		.' Use Shield-Breaker ability until you notice the targets Defend is gone
		.' Use your Charge ability on the Charge Target 2 times|q 13839/2
	step //12
		goto 72.6,19.7
		.' Target a Melee Target
		.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
		.' Use your Thrust ability to attack the target 5 times|q 13829/2
	step //13
		'Click the red arrow on your hotbar to stop riding the bird mount|outvehicle|q 13829
	step //14
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin Mastery Of Melee##13829
	step //15
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..turnin Mastery Of The Charge##13839
	step //16
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..turnin Mastery Of The Shield-Breaker##13838
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing your race's Aspirant Rank dailies
	description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
	daily
	step //1
		goto Icecrown,76.3,24.3
		.talk Magister Edien Sunhollow##33542
		..accept Up To The Challenge##13678
	step //2
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13673 |daily |or
		..accept A Worthy Weapon##13674 |daily |or
		..accept The Edge of Winter##13675 |daily |or
	step //3
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..accept Training in the Field##13676 |daily
	step //4
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..accept Learning the Reins##13677 |daily
	step //5
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13673/1
	step //6
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13674
	step //7
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13674/1
	step //8
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13675
	step //9
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13675/1
	step //10
		goto Icecrown,74.8,35.5
		.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		.kill 8 Icecrown Scourge |q 13676/1
	step //11
		goto 75.6,23.7
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13677
	step //12
		goto 73.1,24.8
		.' Target a Melee Target
		.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
		.' Use your Thrust ability to attack the target 5 times |q 13677/1
	step //13
		goto 72.9,25.1
		.' Target a Charge Target from a distance
		.' Use Shield-Breaker ability until you notice the targets Defend is gone
		.' Use your Charge ability on the Charge Target 2 times |q 13677/3
	step //14
		goto 73.3,25.0
		.' Target a Ranged Target from a distance
		.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
		.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13677/2
	step //15
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13673
		..turnin A Worthy Weapon##13674
		..turnin The Edge of Winter##13675
	step //16
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..turnin Training in the Field##13676
	step //17
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..turnin Learning the Reins##13677
	step //18
		'Make sure you have 15 Aspirant's Seals:
		.get 15 Aspirant's Seal |q 13678/1 |tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.  It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
	step //19
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin Up To The Challenge##13678
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing your race's Valiant Rank dailies
	description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
	description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
	description in order to have access to the quests in this guide section.
	daily
	step //1
		goto Icecrown,76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..accept The Aspirant's Challenge##13680
	step //2
		goto 71.8,20.0
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13680
	step //3
		goto 71.4,19.6
		.talk Squire David##33447
		.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
		.'An Argent Valiant runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13680/1
	step //4
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin The Aspirant's Challenge##13680
		..accept A Valiant Of Orgrimmar##13691 |only Orc
		..accept A Valiant Of Sen'jin##13693 |only Troll
		..accept A Valiant Of Thunder Bluff##13694 |only Tauren
		..accept A Valiant Of Undercity##13695 |only Scourge
		..accept A Valiant Of Silvermoon##13696 |only BloodElf
	step //5
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin A Valiant Of Orgrimmar##13691
		..accept The Valiant's Charge##13697
		only Orc
	step //6
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin A Valiant Of Sen'jin##13693
		..accept The Valiant's Charge##13719
		only Troll
	step //7
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin A Valiant Of Thunder Bluff##13694
		..accept The Valiant's Charge##13720
		only Tauren
	step //8
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin A Valiant Of Undercity##13695
		..accept The Valiant's Charge##13721
		only Scourge
	step //9
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin A Valiant Of Silvermoon##13696
		..accept The Valiant's Charge##13722
		only BloodElf
	// ORC VALIANT RANK DAILY LOOP (BEGIN)
	step //10
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13762 |daily |or
		..accept A Worthy Weapon##13763 |daily |or
		..accept The Edge Of Winter##13764 |daily |or
		only Orc
	step //11
		goto 76.5,24.5
		.talk Akinos##33405
		..accept A Valiant's Field Training##13765 |daily
		only Orc
	step //12
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..accept The Grand Melee##13767 |daily
		..accept At The Enemy's Gates##13856 |daily
		only Orc
	step //13
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13762/1
		only Orc
	step //14
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13763
		only Orc
	step //15
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13763/1
		only Orc
	step //16
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13764
		only Orc
	step //17
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13764/1
		only Orc
	step //18
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
		only Orc
	step //19
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Orc
	step //20
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
		only Orc
	step //21
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13765/1
		only Orc
	step //22
		goto 75.5,24.0
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
		only Orc
	step //23
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13767/1
		only Orc
	step //24
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13762
		..turnin A Worthy Weapon##13763
		..turnin The Edge Of Winter##13764
		only Orc
	step //25
		goto 76.5,24.5
		.talk Akinos##33405
		..turnin A Valiant's Field Training##13765
		only Orc
	step //26
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..turnin The Grand Melee##13767
		..turnin At The Enemy's Gates##13856
		only Orc
	// ORC VALIANT RANK DAILY LOOP (END)
	//
	// TROLL VALIANT RANK DAILY LOOP (BEGIN)
	step //27
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13768 |daily |or
		..accept A Worthy Weapon##13769 |daily |or
		..accept The Edge Of Winter##13770 |daily |or
		only Troll
	step //28
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..accept A Valiant's Field Training##13771 |daily
		only Troll
	step //29
		goto 75.9,24.4
		.talk Gahju##33545
		..accept The Grand Melee##13772 |daily
		..accept At The Enemy's Gates##13857 |daily
		only Troll
	step //30
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13768/1
		only Troll
	step //31
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13769
		only Troll
	step //32
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13769/1
		only Troll
	step //33
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13770
		only Troll
	step //34
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13770/1
		only Troll
	step //35
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
		only Troll
	step //36
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Troll
	step //37
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
		only Troll
	step //38
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13771/1
		only Troll
	step //39
		goto 75.6,23.8
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
		only Troll
	step //40
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13772/1
		only Troll
	step //41
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13768
		..turnin A Worthy Weapon##13769
		..turnin The Edge Of Winter##13770
		only Troll
	step //42
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..turnin A Valiant's Field Training##13771
		only Troll
	step //43
		goto 75.9,24.4
		.talk Gahju##33545
		..turnin The Grand Melee##13772
		..turnin At The Enemy's Gates##13857
		only Troll
	// TROLL VALIANT RANK DAILY LOOP (END)
	//
	// TAUREN VALIANT RANK DAILY LOOP (BEGIN)
	step //44
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13773 |daily |or
		..accept A Worthy Weapon##13774 |daily |or
		..accept The Edge Of Winter##13775 |daily |or
		only Tauren
	step //45
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..accept A Valiant's Field Training##13776 |daily
		only Tauren
	step //46
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..accept The Grand Melee##13777 |daily
		..accept At The Enemy's Gates##13858 |daily
		only Tauren
	step //47
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13773/1
		only Tauren
	step //48
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13774
		only Tauren
	step //49
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13774/1
		only Tauren
	step //50
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13775
		only Tauren
	step //51
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13775/1
		only Tauren
	step //52
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
		only Tauren
	step //53
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Tauren
	step //54
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
		only Tauren
	step //55
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13776/1
		only Tauren
	step //56
		goto 75.5,24.3
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
		only Tauren
	step //57
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13777/1
		only Tauren
	step //58
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13773
		..turnin A Worthy Weapon##13774
		..turnin The Edge Of Winter##13775
		only Tauren
	step //59
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..turnin A Valiant's Field Training##13776
		only Tauren
	step //60
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..turnin The Grand Melee##13777
		..turnin At The Enemy's Gates##13858
		only Tauren
	// TAUREN VALIANT RANK DAILY LOOP (END)
	//
	// SCOURGE VALIANT RANK DAILY LOOP (BEGIN)
	step //61
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13778 |daily |or
		..accept A Worthy Weapon##13779 |daily |or
		..accept The Edge Of Winter##13780 |daily |or
		only Scourge
	step //62
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..accept A Valiant's Field Training##13781 |daily
		only Scourge
	step //63
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..accept The Grand Melee##13782 |daily
		..accept At The Enemy's Gates##13860 |daily
		only Scourge
	step //64
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you're glad to help
		.get Ashwood Brand |q 13778/1
		only Scourge
	step //65
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13779
		only Scourge
	step //66
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13779/1
		only Scourge
	step //67
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13780
		only Scourge
	step //68
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13780/1
		only Scourge
	step //69
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
		only Scourge
	step //70
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Scourge
	step //71
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
		only Scourge
	step //72
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13781/1
		only Scourge
	step //73
		goto 75.6,23.9
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
		only Scourge
	step //74
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13782/1
		only Scourge
	step //75
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13778
		..turnin A Worthy Weapon##13779
		..turnin The Edge Of Winter##13780
		only Scourge
	step //76
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..turnin A Valiant's Field Training##13781
		only Scourge
	step //77
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..turnin The Grand Melee##13782
		..turnin At The Enemy's Gates##13860
		only Scourge
	// SCOURGE VALIANT RANK DAILY LOOP (END)
	//
	// BLOOD ELF VALIANT RANK DAILY LOOP (BEGIN)
	step //78
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13783 |daily |or
		..accept A Worthy Weapon##13784 |daily |or
		..accept The Edge Of Winter##13785 |daily |or
		only BloodElf
	step //79
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..accept A Valiant's Field Training##13786 |daily
		only BloodElf
	step //80
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..accept The Grand Melee##13787 |daily
		..accept At The Enemy's Gates##13859 |daily
		only BloodElf
	step //81
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13783/1
		only BloodElf
	step //82
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13784
		only BloodElf
	step //83
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13784/1
		only BloodElf
	step //84
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13785
		only BloodElf
	step //85
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13785/1
		only BloodElf
	step //86
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
		only BloodElf
	step //87
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only BloodElf
	step //88
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
		only BloodElf
	step //89
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13786/1
		only BloodElf
	step //90
		goto 75.5,24.1
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
		only BloodElf
	step //91
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13787/1
		only BloodElf
	step //92
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13783
		..turnin A Worthy Weapon##13784
		..turnin The Edge Of Winter##13785
		only BloodElf
	step //93
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..turnin A Valiant's Field Training##13786
		only BloodElf
	step //94
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..turnin The Grand Melee##13787
		..turnin At The Enemy's Gates##13859
		only BloodElf
	// BLOOF ELF VALIANT RANK DAILY LOOP (END)
	step //95
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
		.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
		.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
		.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
		.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
	step //96
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Charge##13697
		..accept The Valiant's Challenge##13726
		only Orc
	step //97
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Charge##13719
		..accept The Valiant's Challenge##13727
		only Troll
	step //98
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Charge##13720
		..accept The Valiant's Challenge##13728
		only Tauren
	step //99
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Charge##13721
		..accept The Valiant's Challenge##13729
		only Scourge
	step //100
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Charge##13722
		..accept The Valiant's Challenge##13731
		only BloodElf
	step //101
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
		only Orc
	step //102
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
		only Troll
	step //103
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
		only Tauren
	step //104
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
		only Scourge
	step //105
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
		only BloodElf
	step //106
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13726/1 |only Orc
		.' Defeat the Argent Valiant |q 13727/1 |only Troll
		.' Defeat the Argent Valiant |q 13728/1 |only Tauren
		.' Defeat the Argent Valiant |q 13729/1 |only Scourge
		.' Defeat the Argent Valiant |q 13731/1 |only BloodElf
	step //107
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Challenge##13726
		..accept A Champion Rises##13736
		only Orc
	step //108
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Challenge##13727
		..accept A Champion Rises##13737
		only Troll
	step //109
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Challenge##13728
		..accept A Champion Rises##13738
		only Tauren
	step //110
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Challenge##13729
		..accept A Champion Rises##13739
		only Scourge
	step //111
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Challenge##13731
		..accept A Champion Rises##13740
		only BloodElf
	step //112
		goto 69.7,22.9
		.talk Justicar Mariel Trueheart##33817
		..turnin A Champion Rises##13736 |only Orc
		..turnin A Champion Rises##13737 |only Troll
		..turnin A Champion Rises##13738 |only Tauren
		..turnin A Champion Rises##13739 |only Scourge
		..turnin A Champion Rises##13740 |only BloodElf
		..accept The Scourgebane##13795 |only DeathKnight
		..accept Eadric the Pure##13794 |only !DeathKnight
	step //113
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin The Scourgebane##13795
		only DeathKnight
	step //114
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Eadric the Pure##13794
		only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",[[
	author support@zygorguides.com
	description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
	description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
	daily
	step //1
		goto Icecrown,73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..accept Taking Battle To The Enemy##13813 |daily
		only DeathKnight
	step //2
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..accept Threat From Above##13812 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13863 |daily
		only DeathKnight
	step //3
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..accept Among the Champions##13814 |daily
		only DeathKnight
	step //4
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13814
		only Orc DeathKnight
	step //5
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13814
		only Troll DeathKnight
	step //6
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13814
		only Tauren DeathKnight
	step //7
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13814
		only Scourge DeathKnight
	step //8
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13814
		only BloodElf DeathKnight
	step //9
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13814/1
		only DeathKnight
	step //10
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13814
		only DeathKnight
	step //11
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13813/1
		only DeathKnight
	step //12
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only DeathKnight
	step //13
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13812/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13812/2	
		only DeathKnight
	step //14
		goto 48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13863
		only DeathKnight
	step //15
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13863/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only DeathKnight
	step //16
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863
		only DeathKnight
	step //17
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..turnin Taking Battle To The Enemy##13813
		only DeathKnight
	step //18
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin Threat From Above##13812
		..turnin Battle Before The Citadel##13863
		only DeathKnight
	step //19
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..turnin Among the Champions##13814
		only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",[[
	author support@zygorguides.com
	description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
	description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
	daily
	step //1
		goto Icecrown,69.9,23.3
		.talk Luuri##33771
		..accept Among the Champions##13811 |daily
		only !DeathKnight
	step //2
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..accept Threat From Above##13809 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13862 |daily
		only !DeathKnight
	step //3
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..accept Taking Battle To The Enemy##13810 |daily
		only !DeathKnight
	step //4
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13811
		only Orc !DeathKnight
	step //5
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13811
		only Troll !DeathKnight
	step //6
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13811
		only Tauren !DeathKnight
	step //7
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13811
		only Scourge !DeathKnight
	step //8
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13811
		only BloodElf !DeathKnight
	step //9
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13811/1
		only !DeathKnight
	step //10
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13811
		only !DeathKnight
	step //11
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13810/1
		only !DeathKnight
	step //12
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only !DeathKnight
	step //13
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13809/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13809/2
		only !DeathKnight
	step //14
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13862
		only !DeathKnight
	step //15
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13862/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only !DeathKnight
	step //16
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862
		only !DeathKnight
	step //17
		goto 69.9,23.3
		.talk Luuri##33771
		..turnin Among the Champions##13811
		only !DeathKnight
	step //18
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Threat From Above##13809
		..turnin Battle Before The Citadel##13862
		only !DeathKnight
	step //19
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..turnin Taking Battle To The Enemy##13810
		only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Argent Tournament Grounds Crusader Dailies",[[
	author support@zygorguides.com
	description In order to be able to complete the quests in this guide section, you must already be Exalted
	description with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions.
	description Also, you must have already become a Champion with each of those factions,
	description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
	daily
	step //1
		goto Icecrown,69.5,23.1
		.talk High Crusader Adelard##34882
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept Deathspeaker Kharos##14105 |daily |or
		..accept Drottinn Hrothgar##14101 |daily |or
		..accept Mistcaller Yngvar##14102 |daily |or
		..accept Ornolf The Scarred##14104 |daily |or
	step //2
		goto 69.5,23.1
		.talk Crusader Silverdawn##35094
		.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
		..accept Get Kraken!##14108 |daily |or
		..accept The Fate Of The Fallen##14107 |daily |or
	step //3
		goto 64.2,21.4
		.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
	step //4
		goto 51.1,38.4
		.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
		.collect 6 Discarded Soul Crystal##47035 |n
		.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
		.' Bless 6 Fallen Hero's Spirits |q 14107/1
	step //5
		goto Hrothgar's Landing,43.9,24.3
		.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
		.kill Mistcaller Yngvar |q 14102/1
	step //6
		goto Hrothgar's Landing,50.7,15.4
		.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
		.kill Drottinn Hrothgar |q 14101/1
	step //7
		goto Hrothgar's Landing,58.5,31.6
		.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
		.kill Ornolf the Scarred |q 14104/1
	step //8
		goto Icecrown,69.8,22.2
		.' Click a Stabled Argent Hippogryph to ride it
		.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
		.kill 3 Kvaldir Deepcaller |q 14108/2
		.' Hurl Spears at 6 North Sea Kraken |q 14108/1
	step //9
		goto 69.5,23.1
		.talk High Crusader Adelard##34882
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin Deathspeaker Kharos##14105
		..turnin Drottinn Hrothgar##14101
		..turnin Mistcaller Yngvar##14102
		..turnin Ornolf The Scarred##14104
	step //10
		goto 69.5,23.1
		.talk Crusader Silverdawn##35094
		.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
		..turnin Get Kraken!##14108
		..turnin The Fate Of The Fallen##14107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\ATG Black Knight Quest Chain",[[
	author support@zygorguides.com
	description This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest.
	description We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section,
	description and achieve Champion Rank with your race, before doing this quest chain.
	description Starting this quest chain when you are already Champion Rank will allow you
	description to do the entire quest chain without having to switch back and forth between guide sections,
	description allowing you to get it done much faster and more efficiently.
	description You will be unable to get some quests in this quest chain if you are not already
	description at Champion Rank with The Argent Tournament Grounds.
	step //1
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..accept The Black Knight of Silverpine?##13634
	step //2
		goto 76.1,24.0
		.talk Jarin Dawnglow##33971
		..home Sunreaver Pavilion
	step //3
		goto 72.6,22.6
		.talk Helidan Lightwing##33849
		..' Fly to Dalaran |goto Dalaran |noway |c |q 13634
	step //4
		goto Dalaran,55.6,23.8|n
		.' Click the Dalaran Portal to Undercity |goto Undercity |noway |c |q 13634
	step //5
		goto Undercity,63.3,48.6
		.talk Michael Garrett##4551
		..' Fly to The Sepulcher |goto Silverpine Forest,45.6,42.4,0.5 |noway |c |q 13634
	step //6
		goto Silverpine Forest,53.2,28.1
		.' Click the Dusty Journal |tip It's a blue open book laying on the floor inside this house.
		.get Dusty Journal |q 13634/1
	step //7
		'Hearth to Sunreaver Pavilion |goto Icecrown,76.1,24.0,0.5 |use Hearthstone##6948 |noway |c |q 13634
	step //8
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight of Silverpine?##13634
		..accept The Seer's Crystal##13641
	step //9
		goto Crystalsong Forest,46.5,42.2
		.from Unbound Seer##33422+
		..get Seer's Crystal |q 13641/1
	step //10
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Seer's Crystal##13641
		..accept The Stories Dead Men Tell##13643
	step //11
		goto 79.4,23.1
		.' Click Sir Wendell's Grave
		.' Investigate Sir Wendell Balfour's Death |q 13643/1
	step //12
		goto 79.6,23.6
		.' Click Lorien's Grave
		.' Investigate Lorien Sunblaze's Death |q 13643/2
	step //13
		goto 79.6,22.8
		.' Click Connall's Grave
		.' Investigate Connall Irongrip's Death |q 13643/3
	step //14
		goto 69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Stories Dead Men Tell##13643
		..accept There's Something About the Squire##13654
	step //15
		goto Crystalsong Forest,39.9,58.8
		.from Skeletal Woodcutter##33499+
		.collect 1 Large Femur##45080 |q 13654
	step //16
		goto 38.3,59.5
		.' Use your Large Femur on Maloric while standing behind him |use Large Femur##45080
		.' Loot Maloric
		.get Murderer's Toolkit |q 13654/1
	step //17
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin There's Something About the Squire##13654
		..accept The Black Knight's Orders##13663
	step //18
		goto 77.8,21.6
		.' Use your Enchanted Bridle next to the Black Knight's Gryphon |use Enchanted Bridle##45083
		.' Take the Black Knight's Gryphon |q 13663/1 |tip He will take you to an island.
	step //19
		goto 54.1,8.6
		.' Click the Stolen Tournament Invitation |tip It looks like a flat scroll laying on top of a wooden barrel in this tiny house.
		.get Stolen Tournament Invitation |q 13663/2
		.' Click the Black Knight's Orders |tip It looks like a rolled up scroll laying on a small wooden crate in this tiny house.
		.get Black Knight's Orders |q 13663/3
	step //20
		goto 69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight's Orders##13663
		..accept The Black Knight's Fall##13664
	step //21
		goto 72.3,22.6
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Argent Warhorse|invehicle |q 13664
	step //22
		goto 71.3,23.2
		.talk Squire Cavin##33522
		..' Ask him to summon the Black Knight.
		.' The Black Knight will run up to you on his gryphon
		.' Fight the Black Knight |tip This is a really easy fight, but it has 2 phases.  For the first phase, use your abilities to fight him in jousting.  After you've almost killed him, he will get off his gryphon and challenge you to fight him in hand-to-hand combat.  You will automatically dismount your horse, so don't click the red arrow button.  Once you are dismounted from your horse, make sure to equip your weapon again, so you can fight him.  Then, just fight him like a normal mob and kill him.
		.kill The Black Knight |q 13664/1
	step //23
		goto 69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight's Fall##13664
		..accept The Black Knight's Curse##14016
	step //24
		goto 79.5,23.3
		.' Stand next to the tombstone that has a purple and pink swirl around it
		.from Cult Assassin##35127
		.' Investigate the Black Knight's Grave |q 14016/1
	step //25
		goto 69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight's Curse##14016
		..accept The Black Knight's Fate##14017
	step //26
		goto 61.5,22.6
		.from Doctor Kohler##35113
		.get Doctor Kohler's Orders |q 14017/1
	step //27
		goto 69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight's Fate##14017
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Home Cities Exalted Reputation Guide",[[
	description This guide will help you to get Exalted reputation with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions.
	description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
	author support@zygorguides.com
	startlevel 77
	step //1
		goto Tirisfal Glades,30.0,71.9
		.talk Undertaker Mordo##1568
		..accept Rude Awakening##363
		only Undead
	step //2
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin Rude Awakening##363
		..accept The Mindless Ones##364
	step //3
		goto 30.9,66.0
		.talk Novice Elreth##1661
		..accept The Damned##376
	step //4
		goto 32.0,64.0
		.kill 5 Wretched Ghoul |q 364/2
		.kill 5 Mindless Zombie |q 364/1
	step //5
		goto 30.9,59.9
		.from Duskbat##1512+
		.get 6 Duskbat Wing |q 376/2
		.from Young Scavenger##1508+
		.get 6 Scavenger Paw |q 376/1
	step //6
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin The Mindless Ones##364
		..accept Rattling the Rattlecages##3901
	step //7
		goto 30.9,66.0
		.talk Novice Elreth##1661
		..turnin The Damned##376
		..accept Marla's Last Wish##6395
	step //8
		goto 31.6,65.6
		.talk Deathguard Saltain##1740
		..accept Scavenging Deathknell##3902
	step //9
		goto 32.1,66.0
		.talk Executor Arren##1570
		..accept Night Web's Hollow##380
	step //10
		goto 33.2,63.7
		.' Click the Equipment Boxes |tip They look like piles of brown boxes around this area.
		.get 6 Scavenged Goods|q 3902/1
	step //11
		goto 32.4,61.4
		.kill 8 Rattlecage Skeleton |q 3901/1
	step //12
		goto 29.6,58.2
		.kill 8 Young Night Web Spider |q 380/1
	step //13
		goto 26.8,59.4
		.kill 5 Night Web Spider |q 380/2 |tip They are inside this mine.
	step //14
		goto 36.6,61.6
		.from Samuel Fipps##1919
		.collect Samuel's Remains##16333 |q 6395
	step //15
		goto 31.2,65.1
		.' Click Marla's Grave |tip It's the only light brown pile of dirt in the cemetary.
		.' Bury Samuel's Remains |goal Samuel's Remains Buried |q 6395/1
	step //16
		goto 31.6,65.6
		.talk Deathguard Saltain##1740
		..turnin Scavenging Deathknell##3902
	step //17
		goto 32.1,66.0
		.talk Executor Arren##1570
		..turnin Night Web's Hollow##380
		..accept The Scarlet Crusade##381
	step //18
		goto 30.8,66.2
		.talk Shadow Priest Sarvis##1569
		..turnin Rattling the Rattlecages##3901
	step //19
		goto 30.9,66.0
		.talk Novice Elreth##1661
		..turnin Marla's Last Wish##6395
	step //20
		goto 36.0,68.7
		.from Scarlet Convert##1506+, Scarlet Initiate##1507+
		.get 12 Scarlet Armband |q 381/1
	step //21
		goto 32.1,66.0
		.talk Executor Arren##1570
		..turnin The Scarlet Crusade##381
		..accept The Red Messenger##382
	step //22
		goto 36.5,68.8
		.from Meven Korgal##1667
		.get Scarlet Crusade Documents |q 382/1
	step //23
		goto 32.1,66.0
		.talk Executor Arren##1570
		..turnin The Red Messenger##382
		..accept Vital Intelligence##383
	step //24
		goto 38.2,56.8
		.talk Calvin Montague##6784
		..accept A Rogue's Deal##8
	step //25
		goto 40.9,54.2
		.talk Deathguard Simmer##1519
		..accept Fields of Grief (1)##365
	step //26
		goto 45.6,56.6
		.talk Gordo##10666
		..accept Gordo's Task##5481
	step //27
		goto 52.9,52.1
		.' Click the Gloom Weeds |tip They look like little dark wilted plants around this area.
		.get 3 Gloom Weed|q 5481/1
	step //28
		goto 57.7,49.0
		.talk Junior Apothecary Holland##10665
		..turnin Gordo's Task##5481
		..accept Doom Weed##5482
	step //29
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..accept A Putrid Task##404
	step //30
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..accept A New Plague (1)##367
		..accept Delivery to Silverpine Forest##445
	step //31
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin Vital Intelligence##383
		..accept At War With The Scarlet Crusade (1)##427
	step //32
		goto 60.7,51.5
		.' Click the Wanted Poster |tip Next to the steps of the big building.
		..accept Wanted: Maggot Eye##398
	step //33
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..accept Graverobbers##358
	step //34
		goto 61.7,52.3
		.talk Coleman Farthing##1500
		..accept Deaths in the Family##354
		..accept The Haunted Mills##362
	step //35
		goto 61.7,52
		.talk Innkeeper Renee##5688
		..turnin A Rogue's Deal (1)##8
	step //36
		goto 61.7,52
		.talk Innkeeper Renee##5688
		.home Brill
	step //37
		goto 61.9,52.7
		.talk Gretchen Dedmar##1521
		..accept The Chill of Death##375
	step //38
		goto 61.0,52.4
		.talk Abigail Shiel##2118
		.buy 1 Coarse Thread##2320 |q 375
	step //39
		goto 58.9,57.6
		.from Greater Duskbat##1553+, Vampiric Duskbat##1554+
		.get 5 Duskbat Pelt |q 375/1
		.from Cursed Darkhound##1548+
		.get 5 Darkhound Blood |q 367/1
	step //40
		goto 53.8,57.8
		.from Ravaged Corpse##1526+, Rotting Dead##1525+
		.get 7 Putrid Claw |q 404/1
	step //41
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin A Putrid Task##404
		..accept The Mills Overrun##426
	step //42
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin A New Plague (1)##367
		..accept A New Plague (2)##368
	step //43
		goto 61.9,52.7
		.talk Gretchen Dedmar##1521
		..turnin The Chill of Death##375	
	step //44
		goto 37.2,52.2
		.' Click Tirisfal Pumpkins |tip They look like big pumpkins in this field around this area.
		.get 10 Tirisfal Pumpkin|q 365/1
	step //45
		goto 33.7,47.9
		.kill 10 Scarlet Warrior |q 427/1
	step //46
		goto 47.4,40.4
		.from Devlin Agamand##1657
		.get Devlin's Remains |q 362/1
		.from Rattlecage Soldier##1520, Cracked Skull Soldier##1523
		..get 5 Notched Rib|q 426/1
		.from Darkeye Bonecaster##1522
		..get 3 Blackened Skull|q 426/2
	step //47
		goto 49.7,36.3
		.from Nissa Agamand##1655 |tip She's inside this house.
		.get Nissa's Remains |q 354/2
	step //48
		goto 42.8,32.6
		.from Thurman Agamand##1656 |tip If he's not here, search for him.  He wanders around this area.
		.get Thurman's Remains |q 354/3
	step //49
		goto 45.7,29.0
		.from Gregor Agamand##1654 |tip If he's not here, search for him.  He wanders around this area.
		.get Gregor's Remains |q 354/1
	step //50
		goto 54.8,42.4
		.kill 8 Rot Hide Graverobber |q 358/1
		.' Click the Doom Weeds |tip The Doom Weeds look like little purple plants on the ground around this area.
		.get 10 Doom Weed |q 5482/1
	step //51
		goto 58.6,37.1
		.kill 5 Rot Hide Mongrel |q 358/2
		.from Rot Hide Mongrel##1675+, Rot Hide Gnoll##1674+
		.get 8 Embalming Ichor |q 358/3
	step //52
		goto 58.7,30.8
		.from Maggot Eye##1753
		.get Maggot Eye's Paw |q 398/1
	step //53
		goto 59.6,28.5  
		.from Vile Fin Minor Oracle##1544+, Vile Fin Puddlejumper##1543+
		.get 5 Vile Fin Scale |q 368/1
	step //54
		goto 57.7,49.0
		.talk Junior Apothecary Holland##10665
		..turnin Doom Weed##5482
	step //55
		goto 58.2,51.4
		.talk Deathguard Dillinger##1496
		..turnin The Mills Overrun##426
	step //56
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin Fields of Grief (1)##365
		..accept Fields of Grief (2)##407
		..turnin A New Plague (2)##368
		..accept A New Plague (3)##369
	step //57
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (1)##427
		..accept At War With The Scarlet Crusade (2)##370
		..turnin Wanted: Maggot Eye##398
	step //58
		goto 60.9,52.0
		.talk Deathguard Burgess##1652
		..accept Proof of Demise##374
	step //59
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Graverobbers##358
		..accept Forsaken Duties##359
		..accept The Prodigal Lich##405
	step //60
		goto 61.7,52.3
		.talk Coleman Farthing##1500
		..turnin Deaths in the Family##354
		..turnin The Haunted Mills##362
		..accept Speak with Sevren##355
	step //61
		goto 62.0,51.3
		.talk Captured Scarlet Zealot##1931
		..turnin Fields of Grief (2)##407
	step //62
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Speak with Sevren##355
		..accept The Family Crypt##408
	step //63
		goto 51.1,67.9
		.kill Captain Perrine|q 370/1 |tip He's standing inside this tower.
	step //64
		goto 53.1,65.8
		.kill 3 Scarlet Zealot|q 370/2
		.kill 3 Scarlet Missionary|q 370/3
		.from Scarlet Missionary##1536, Scarlet Zealot##1537
		.get 10 Scarlet Insignia Ring|q 374/1
	step //65
		goto 52.8,26.4
		.from Captain Dargol##1658 |tip He's at the very bottom of this crypt.
		.get Dargol's Skull |q 408/3
		.kill 8 Rotting Ancestor |q 408/2
		.kill 8 Wailing Ancestor |q 408/1
	step //66
		'Hearth to Brill |goto Tirisfal Glades,61.7,52.1,0.5 |use Hearthstone##6948 |noway |c
	step //67
		goto 60.9,52.0
		.talk Deathguard Burgess##1652
		..turnin Proof of Demise##374
	step //68
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin The Family Crypt##408
	step //69
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (2)##370
		..accept At War With The Scarlet Crusade (3)##371
	step //70
		goto 65.5,60.3
		.talk Deathguard Linnea##1495
		..turnin Forsaken Duties##359
		..accept Return to the Magistrate##360
		..accept Rear Guard Patrol##356
	step //71
		goto 74.9,61.8
		.kill 8 Bleeding Horror |q 356/1
		.kill 8 Wandering Spirit |q 356/2
	step //72
		goto 78.8,56.1
		.kill Captain Vachon |q 371/1 |tip He's standing inside this tower.  If he's not there, kill mobs around this area until he appears.
		.kill 5 Scarlet Friar |q 371/2
	step //73
		goto 84.2,52.4
		.from Vicious Night Web Spider##1555+
		.get 4 Vicious Night Web Spider Venom |q 369/1
	step //74
		goto 65.5,60.3
		.talk Deathguard Linnea##1495
		..turnin Rear Guard Patrol##356
	step //75
		goto 61.3,50.8
		.talk Magistrate Sevren##1499
		..turnin Return to the Magistrate##360
	step //76
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (3)##371
		..accept At War With The Scarlet Crusade (4)##372
	step //77
		goto 59.4,52.4
		.talk Apothecary Johaan##1518
		..turnin A New Plague (3)##369
		..accept A New Plague (4)##492
	step //78
		goto 61.9,51.4
		.talk Captured Mountaineer##2211
		..turnin A New Plague##492
	step //79
		goto 79.5,25.1
		.kill Captain Melrache |q 372/1 |tip He's standing inside this tower.
		.kill 2 Scarlet Bodyguard |q 372/2
	step //80
		goto 60.6,51.8
		.talk Executor Zygand##1515
		..turnin At War With The Scarlet Crusade (4)##372
	step //81
		'Go south to Undercity |goto Undercity |noway |c
	step //82
		goto Undercity,84.1,17.5
		.talk Bethor Iceshard##1498
		..turnin The Prodigal Lich##405
		..accept The Lich's Identity##357
	step //83
		'Go outside of Undercity |goto Tirisfal Glades |noway |c
	step //84
		goto Tirisfal Glades,68.0,42.1
		.' Click Gunther's Books |tip They look like a small pile of books on this small wooden table.
		.get The Lich's Spellbook |q 357/1
	step //85
		'Go south to Undercity |goto Undercity |noway |c
	step //86
		goto Undercity,84.1,17.5
		.talk Bethor Iceshard##1498
		..turnin The Lich's Identity##357
		..accept Return the Book##366
	step //87
		'Go outside of Undercity |goto Tirisfal Glades |noway |c
	step //88
		goto Tirisfal Glades,68.2,41.9
		.talk Gunther Arcanus##1497
		..turnin Return the Book##366
		..accept Proving Allegiance##409
	step //89
		goto 68.2,42.0
		.' Click the Crate of Candles |tip It looks like a wooden box of candles sitting next to a campfire.
		..accept Candles of Beckoning##431
	step //90
		goto 66.6,44.9
		.' Click Lillith's Dinner Table |tip It looks like a wooden table with bloody mean on it, on this small island.
		..accept The Dormant Shade##410
		.kill Lillith Nefara |q 409/1
	step //91
		goto 68.2,41.9
		.talk Gunther Arcanus##1497
		..turnin Proving Allegiance##409
		..accept The Prodigal Lich Returns##411
	step //92
		'Go south to Undercity |goto Undercity |noway |c
	step //93
		goto Undercity,84.1,17.5
		.talk Bethor Iceshard##1498
		..turnin The Prodigal Lich Returns##411
	step //94
		goto 63.2,48.6
		.talk Michael Garrett##4551
		..' Fly to The Sepulcher |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
	step //95
		goto Silverpine Forest,44.2,39.8
		.talk Dalar Dawnweaver##1938
		..accept Prove Your Worth##421
	step //96
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..accept Border Crossings##477
		..accept Beren's Peril##516
	step //97
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Delivery to Silverpine Forest##445
		..accept A Recipe For Death##447
		..accept Journey to Hillsbrad Foothills##493
	step //98
		goto 43.2,41.3
		.talk Innkeeper Bates##6739
		..home The Sepulcher
	step //99
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..accept Lost Deathstalkers##428
		..accept The Dead Fields##437
	step //100
		goto 48.1,40.7
		.kill 5 Moonrage Whitescalp |q 421/1
	step //101
		goto 45.4,21.2
		.from Nightlash##1983 |tip If she's not in the middle of the field, kill gnolls around this area until she spawns.
		.get Essence of Nightlash |q 437/2
	step //102
		goto 42.4,18.1
		.from Giant Grizzled Bear##1797+
		.get 6 Grizzled Bear Heart |q 447/1
	step //103
		goto 35.8,15.0
		.from Moss Stalker##1780+
		.get 6 Skittering Blood |q 447/2
	step //104
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Lost Deathstalkers##428
		..accept Wild Hearts##429
	step //105
		goto 56.2,11.5
		.from Mottled Worg##1766+, Worg##1765+
		.get 6 Discolored Worg Heart |q 429/1
	step //106
		goto 56.2,9.2
		.talk Deathstalker Erland##32607
		..accept Escorting Erland##435
		.' Escort Deathstalker Erland to Rane Yorick |q 435/1
	step //107
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Escorting Erland##435
		..accept The Deathstalkers' Report##449
	step //108
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Prove Your Worth##421
		..accept Arugal's Folly (1)##422
	step //109
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Wild Hearts##429
		..accept Return to Quinn##430
	step //110
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin The Deathstalkers' Report##449
		..accept Speak with Renferrel##3221
		..turnin The Dead Fields##437
		..accept The Decrepit Ferry##438
	step //111
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Speak with Renferrel##3221
		..accept Zinge's Delivery##1359
	step //112
		goto 52.8,28.6
		.' Click the Dusty Spellbooks |tip They look like a small pile of books on the second floor of this house.
		.get Remedy of Arugal |q 422/1
	step //113
		goto 58.4,34.9
		.' Click the Corpse Laden Boat |tip It looks like a wooden boat laying on the shore.
		..turnin The Decrepit Ferry##438
		..accept Rot Hide Clues##439
	step //114
		goto 53.4,12.6
		.talk Quinn Yorick##1951
		..turnin Return to Quinn##430
	step //115
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..accept Ivar the Foul##425
	step //116
		goto 51.5,13.9
		.from Ivar the Foul##1971 |tip He's in this barn.
		.get Ivar's Head |q 425/1
	step //117
		goto 53.5,13.4
		.talk Rane Yorick##1950
		..turnin Ivar the Foul##425
	step //118
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly (1)##422
		..accept Arugal's Folly (2)##423
	step //119
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin Rot Hide Clues##439
		..accept Rot Hide Ichor##443
	step //120
		goto 43.4,32.0
		.from Moonrage Darksoul##1782+
		.get 3 Darksoul Shackle |q 423/2
		.from Moonrage Glutton##1779+
		.get 6 Glutton Shackle |q 423/1
	step //121
		goto 65.7,30.6
		.from Rot Hide Brute##1939+, Rot Hide Plague Weaver##1940+
		.get 8 Rot Hide Ichor |q 443/1
	step //122
		'Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c
	step //123
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Rot Hide Ichor##443
		..accept Rot Hide Ichor##443
	step //124
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly##423
		..accept Arugal's Folly##424
	step //125
		goto 58.6,44.8
		.from Grimson the Pale##1972 |tip He's all the way in the back of this mine.
		..get Head of Grimson |q 424/1
	step //126
		goto 49.9,60.3
		.' Click the Dalaran Crate |tip It looks like a wooden crate on the ground, under a white canopy.
		..turnin Border Crossings##477
		..accept Maps and Runes##478
	step //127
		goto 60.4,74.7 |n
		.' The path up to Beren's Peril starts here |goto 60.4,74.7,0.3 |noway |c
	step //128
		goto 60.5,72.4
		.kill 6 Ravenclaw Drudger |q 516/1
		.kill 6 Ravenclaw Guardian |q 516/2
	step //129
		'Go outside to 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly##424
		..accept Arugal's Folly##99
	step //130
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Maps and Runes##478
		..accept Dalar's Analysis##481
		..turnin Beren's Peril##516
	step //131
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Dalar's Analysis##481
		..accept Dalaran's Intentions##482
	step //132
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Dalaran's Intentions##482
		..accept Ambermill Investigations##479
	step //133
		goto 45.6,42.6
		.talk Karos Razok##2226
		..' Fly to Undercity |goto Undercity,63.1,48.3,0.5 |noway |c
	step //134
		goto Undercity,84.0,17.5
		.talk Bethor Iceshard##1498
		..turnin Rot Hide Origins##444
		..accept Thule Ravenclaw##446
	step //135
		goto 48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death##447
		..accept A Recipe For Death##450
	step //136
		goto 50.1,68.0
		.talk Apothecary Zinge##5204
		..turnin Zinge's Delivery##1359
		..accept Sample for Helbrim##1358
	step //137
		goto 63.2,48.6
		.talk Michael Garrett##4551
		..' Fly to The Sepulcher |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
	step //138
		goto Silverpine Forest,42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin Thule Ravenclaw##446
		..accept Report to Hadrec##448
	step //139
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin Report to Hadrec##448
		..accept Assault on Fenris Isle##442
	step //140
		goto 65.7,23.7
		.from Thule Ravenclaw##1947 |tip He's standing inside this fort, on the top floor.
		.get Thule's Head |q 442/1
	step //141
		'Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c
	step //142
		goto 43.4,40.9
		.talk High Executor Hadrec##1952
		..turnin Assault on Fenris Isle##442
	step //143
		goto 57.3,63.9
		.from Dalaran Protector##1912+, Dalaran Mage##1914+
		.get 8 Dalaran Pendant |q 479/1
	step //144
		goto 47.0,72.5
		.from Moonrage Elder##1896+, Moonrage Watcher##1892+, Moonrage Sentry##1893+, Moonrage Armorer##3529+, Moonrage Tailor##3531+
		.get 6 Pyrewood Shackle |q 99/1
	step //145
		goto 46.5,74.4
		.talk Deathstalker Faerleia##2058
		..accept Pyrewood Ambush##452
		.' Help Deathstalker Faerleia Kill the Pyrewood Council |q 452/1
	step //146
		goto 46.5,74.4
		.talk Deathstalker Faerleia##2058
		..turnin Pyrewood Ambush##452
	step //147
		goto 43.0,73.2
		.' Click Berard's Bookshelf |tip It's a bookshelf on the top floor of this house.
		.get Berard's Journal |q 450/1
	step //148
		goto 44.2,39.8
		.talk Dalar Dawnweaver##1938
		..turnin Arugal's Folly##99
	step //149
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin Ambermill Investigations##479
		..accept The Weaver##480
	step //150
		goto 42.8,40.9
		.talk Apothecary Renferrel##1937
		..turnin A Recipe For Death##450
		..accept A Recipe For Death##451
	step //151
		goto 70.6,37.4
		.from Elder Lake Skulker##1954+, Lake Skulker##1953+
		.get 6 Lake Skulker Moss |q 451/1
	step //152
		goto 75.9,33.4
		.from Vile Fin Shorecreeper##1957+, Vile Fin Tidecaller##1958+
		.get Hardened Tumor |q 451/3
	step //153
		goto 77.3,28.8
		.from Elder Lake Creeper##1956+, Lake Creeper##1955+
		.get 6 Lake Creeper Moss |q 451/2
	step //154
		'Hearth to The Sepulcher |goto Silverpine Forest,43.2,41.3,0.5 |use Hearthstone##6948 |noway |c
	step //155
		goto 63.4,64.3
		.from Archmage Ataeric##2120 |tip He's standing in the back room of this town hall building.
		.get Ataeric's Staff |q 480/1
	step //156
		goto 44.0,40.9
		.talk Shadow Priest Allister##2121
		..turnin The Weaver##480
	step //157
		goto 45.6,42.6
		.talk Karos Razok##2226
		..' Fly to Undercity |goto Undercity,63.1,48.3,0.5 |noway |c
	step //158
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin A Recipe For Death##451
	step //159
		goto 63.3,48.6
		.talk Michael Garrett##4551
		..' Fly to Tarren Mill |goto Hillsbrad Foothills,60.2,18.8,0.5 |noway |c
	step //160
		goto Hillsbrad Foothills,61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Journey to Hillsbrad Foothills##493
		..accept Elixir of Suffering##496
		..accept Elixir of Agony##509
		..accept Elixir of Pain##501
	step //161
		goto 61.6,20.9
		.talk Magus Wordeen Voidglare##2410
		..accept Prison Break In##544
	step //162
		goto 61.5,20.9
		.talk Keeper Bel'varil##2437
		..accept Stone Tokens##556
	step //163
		goto 62.3,20.3
		.talk High Executor Darthalia##2215
		..accept Battle of Hillsbrad##527
	step //164
		goto 62.6,20.7
		.' Click the WANTED Poster |tip It's hanging on the front of this stone pillar.
		..accept WANTED: Syndicate Personnel##549
	step //165
		goto 63.3,20.7
		.talk Krusk##2229
		..accept The Rescue##498
	step //166
		goto 62.8,20.2
		.talk Deathguard Humbert##2419
		..accept Humbert's Sword##547
	step //167
		goto 63.9,19.7
		.talk Novice Thaivand##2429
		..accept Helcular's Revenge##552
	step //168
		goto 62.6,19.7
		.' Click the Dangerous! Poster |tip It's a wanted poster hanging on the right side of the doorway of this house.
		..accept Dangerous!##567
	step //169
		goto 62.8,19.1
		.talk Innkeeper Shay##2388
		..home Tarren Mill
	step //170
		goto 66.3,27.1
		.from Gray Bear##2351+
		.get 10 Gray Bear Tongue |q 496/1
		.from Forest Moss Creeper##2350+
		.get Creeper Ichor |q 496/2
	step //171
		goto 77.0,45.6
		.kill 10 Syndicate Watchman |q 549/2
	step //172
		goto 76.2,41.9
		.kill 10 Syndicate Rogue |q 549/1 |tip They are all around this area, especially in the houses.
	step //173
		goto 79.6,41.8
		.from Jailor Eston##2427
		.collect Dull Iron Key##3467 |q 498
		.' Jailor Eston can also spawn at 75.3,41.6
	step //174
		goto 78.0,40.2
		.from Jailor Marlgen##2428
		.collect Burnished Gold Key##3499 |q 498
	step //175
		goto 79.8,39.6
		.' Click the Locked ball and chain |tip It looks like a steel ball chained to an orc.
		.' Rescue Tog'thar |q 498/2
	step //176
		goto 75.3,41.5
		.' Click the Locked ball and chain |tip It looks like a steel ball chained to an orc.
		.' Rescue Drull |q 498/1
	step //177
		goto 64.6,61.2
		.' Click Mudsnout Blossoms |tip They look like big green and white glowing mushrooms around this area.
		.get 6 Mudsnout Blossoms |q 509/1
	step //178
		goto 68.0,72.5
		.from Feral Mountain Lion##2385+
		.get 10 Mountain Lion Blood |q 501/1
	step //179
		goto 69.2,77.6
		.from Dun Garok Priest##2346+, Dun Garok Rifleman##2345+, Dun Garok Mountaineer##2344+
		.get Humbert's Sword |q 547/1
	step //180
		'Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c
	step //181
		goto 62.3,20.4
		.talk High Executor Darthalia##2215
		..turnin WANTED: Syndicate Personnel##549
	step //182
		goto 62.8,20.2
		.talk Deathguard Humbert##2419
		..turnin Humbert's Sword##547
	step //183
		goto 63.2,20.7
		.talk Krusk##2229
		..turnin The Rescue##498
		..accept Regthar Deathgate##1361
	step //184
		goto 61.4,19.1
		.talk Apothecary Lydon##2216
		..turnin Elixir of Suffering##496
		..accept Elixir of Suffering##499
		..turnin Elixir of Agony##509
		..accept Elixir of Agony##513
		..turnin Elixir of Pain##501
		..accept Elixir of Pain##502
	step //185
		goto 61.5,19.2
		.talk Umpi##2230
		..turnin Elixir of Suffering##499
	step //186
		goto 46.4,32.0
		.from Cave Yeti##2248+, Ferocious Yeti##2249+
		.get Helcular's Rod |q 552/1
	step //187
		goto 36.0,46.4
		.kill Farmer Kalaba |q 567/4
	step //188
		goto 35.3,40.8
		.kill Farmer Getz |q 527/4
	step //189
		goto 32.7,35.3
		.talk Stanley##2274
		..turnin Elixir of Pain##502
	step //190
		goto 33.2,34.8
		.kill Farmer Ray |q 527/3 |tip He's upstairs in this house.
	step //191
		goto 35.7,45.3
		.kill 6 Hillsbrad Farmer |q 527/1
		.kill 6 Hillsbrad Farmhand |q 527/2
	step //192
		goto 29.5,42.4
		.kill Clerk Horrace Whitesteed |q 567/1 |tip He's inside this town hall building.
	step //193
		goto 32.6,37.6
		.kill Citizen Wilkes |q 567/2 |tip He walks around the entire Hillsbrad Fields on the paths, carrying a lantern.  You will probably need to search around for him.
	step //194
		'Go north to Alterac Mountains |goto Alterac Mountains |noway |c
	step //195
		goto Alterac Mountains,20.1,84.3
		.from Ricter##2411
		.get Bloodstone Marble |q 544/2
	step //196
		goto 20.4,86.3
		.from Alina##2412 |tip She is in this long building.
		.get Bloodstone Shard |q 544/3
	step //197
		goto 19.9,85.9
		.from Dermot##2413 |tip He is in this long building.
		.get Bloodstone Wedge |q 544/1
	step //198
		goto 17.8,83.2
		.from Kegan Darkmar##2414 |tip He is on the top floor inside this building.
		.get Bloodstone Oval |q 544/4
	step //199
		'Go outside to 20.2,82.4
		.from Dalaran Theurgist##2272+, Dalaran Shield Guard##2271+
		.get 10 Worn Stone Token |q 556/1
	step //200
		'Go south to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
	step //201
		goto Hillsbrad Foothills,27.4,59.3 |n
		.' The entrance to the mine starts here |goto 27.4,59.3,0.3 |noway |c
	step //202
		goto 31.1,58.7
		.kill Miner Hackett |q 567/3
	step //203
		'Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c
	step //204
		goto 62.3,20.4
		.talk High Executor Darthalia##2215
		..turnin Battle of Hillsbrad##527
		..accept Battle of Hillsbrad##528
		..turnin Dangerous!##567
	step //205
		goto 63.9,19.7
		.talk Novice Thaivand##2429
		..turnin Helcular's Revenge##552
		..accept Helcular's Revenge##553
	step //206
		goto 62.1,19.7
		.talk Deathguard Samsa##2418
		..accept Souvenirs of Death##546
	step //207
		goto 61.6,20.9
		.talk Magus Wordeen Voidglare##2410
		..turnin Prison Break In##544
	step //208
		goto 61.5,20.9
		.talk Keeper Bel'varil##2437
		..turnin Stone Tokens##556
	step //209
		goto 46.2,31.9 |n
		.' The entrance to the cave starts here |goto 46.2,31.9,0.5 |noway |c
	step //210
		goto 43.9,28.1
		.' Click the Flame of Azel |tip It looks like a small green flame in on a metal plate, on the top level of the cave.
		.' Charge the Flame of Azel |q 553/1
	step //211
		goto 44.0,26.6
		.' Click the Flame of Veraz |tip It looks like a small green flame in on a metal plate, on the bottom level of the cave, in a side room.
		.' Charge the Flame of Veraz |q 553/2
	step //212
		'Go outside the cave |goto 46.2,31.9,0.5 |noway |c
	step //213
		goto 36.4,47.0
		.kill 15 Hillsbrad Peasant |q 528/1
		.from Hillsbrad Councilman##2387+, Hillsbrad Peasant##20424+, Hillsbrad Footman##2268+, Hillsbrad Farmhand##2360+, Hillsbrad Apprentice Blacksmith##2265+, Hillsbrad Farmer##2266+
		.get 30 Hillsbrad Human Skull |q 546/1
	step //214
		'Go north to Alterac Mountains |goto Alterac Mountains |noway |c
	step //215
		goto Alterac Mountains,37.5,66.3
		.' Click the Flame of Uzel |tip It looks like a small green flame in on a metal plate inside this small yeti cave.
		.' Charge the Flame of Uzel |q 553/3
	step //216
		goto Hillsbrad Foothills,62.1,19.7
		.talk Deathguard Samsa##2418
		..turnin Souvenirs of Death##546
	step //217
		goto 62.4,20.4
		.talk High Executor Darthalia##2215
		..turnin Battle of Hillsbrad##528
		..accept Battle of Hillsbrad##529
	step //218
		goto 52.8,53.4
		.' Click Helcular's Grave
		..turnin Helcular's Revenge##553
	step //219
		goto 32.0,45.4
		.' Click the Shipment of Iron |tip It looks like a wooden crate on the ground in the blacksmith building.
		.get Shipment of Iron |q 529/3
	step //220
		goto 32.5,46.0
		.kill Blacksmith Verringtan |q 529/1 |tip He walks around the blacksmith building, so he may not be in this exact spot.
		.kill 4 Hillsbrad Apprentice Blacksmith |q 529/2
	step //221
		goto 62.3,20.4
		.talk High Executor Darthalia##2215
		..turnin Battle of Hillsbrad##529
		..accept Battle of Hillsbrad##532
	step //222
		goto 29.7,41.7
		.kill Magistrate Burnside |q 532/1 |tip He's inside the town hall building, on the stage.
		.' Click the Hillsbrad Proclamation |tip It looks like a flat white scroll laying on the handrail.
		.' Destroy the Hillsbrad Proclamation |q 532/3
	step //223
		goto 29.5,41.5
		.' Click the Hillsbrad Town Registry |tip It looks like an upright black book sitting in the corner inside the town hall building.
		.get Hillsbrad Town Registry |q 532/4
	step //224
		goto 31.1,42.4
		.kill 4 Hillsbrad Councilman |q 532/2
	step //225
		goto 62.3,20.4
		.talk High Executor Darthalia##2215
		..turnin Battle of Hillsbrad##532
		..accept Battle of Hillsbrad##539
	step //226
		goto 27.4,59.1 |n
		.' The entrance to the mine starts here |goto 27.4,59.1,0.3 |noway |c
	step //227
		goto 31.2,56.0
		.kill Foreman Bonds |q 539/1 |tip Follow the path in the mine to this spot.  He's standing on a wooden stage.
	step //228
		goto 30.5,55.6
		.kill 10 Hillsbrad Miner |q 539/2
	step //229
		'Hearth to Tarren Mill |goto Hillsbrad Foothills,62.8,19.1,0.5 |use Hearthstone##6948 |noway |c
	step //230
		goto 62.3,20.4
		.talk High Executor Darthalia##2215
		..turnin Battle of Hillsbrad##539
	step //231
		goto 60.1,18.6
		.talk Zarise##2389
		..' Fly to Undercity |goto Undercity |noway |c
	step //232
		goto Undercity,48.8,69.3
		.talk Master Apothecary Faranell##2055
		..turnin Elixir of Agony##513
	step //233
		goto 54.9,11.3 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
	step //234
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step //235
		goto Eversong Woods,40.4,32.2
		.talk Outrunner Alarion##15301
		..accept Slain by the Wretched##9704
	step //236
		goto 42,35.7
		.' Click the Slain Outrunner |tip It's a corpse laying in the middle of the road.
		..turnin Slain by the Wretched##9704
		..accept Package Recovery##9705
	step //237
		goto 40.4,32.2
		.talk Outrunner Alarion##15301
		..turnin Package Recovery##9705
		..accept Completing the Delivery##8350
	step //238
		goto 47.3,46.3
		.talk Magister Jaronis##15418
		..accept Major Malfunction##8472
	step //239
		goto 48.1,47.7
		.talk Innkeeper Delaniel##15433
		..turnin Completing the Delivery##8350
	step //240
		goto 48.1,47.7
		.talk Innkeeper Delaniel##15433
		..home Falconwing Square
	step //241
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..accept Unstable Mana Crystals##8463
	step //242
		goto 48.2,46.3
		.' Click the Wanted Poster
		..accept Wanted: Thaelis the Hungerer##8468
		info Standing to the right of the entrance to the big building
	step //243
		goto 45.9,43.7
		.' Click the Unstable Mana Crystal Crates |tip The Unstable Mana Crystal Crates look like small glowing circle objects on the ground around this area.
		.get 6 Unstable Mana Crystal|q 8463/1
		.from Arcane Patroller##15638 |tip They walk around this whole area near the roads.
		.get 6 Arcane Core|q 8472/1
	step //244
		goto 45,37.8
		.from Thaelis the Hungerer##15949
		.get Thaelis's Head|q 8468/1
	step //245
		goto 47.3,46.3
		.talk Magister Jaronis##15418
		..turnin Major Malfunction##8472
		..accept Delivery to the North Sanctum##8895
	step //246
		goto 47.8,46.6
		.talk Sergeant Kan'ren##16924
		..turnin Wanted: Thaelis the Hungerer##8468
	step //247
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin Unstable Mana Crystals##8463
		..accept Darnassian Intrusions##9352
	step //248
		goto 44.6,53.1
		.talk Ley-Keeper Caidanis##15405
		..turnin Delivery to the North Sanctum##8895
		..accept Malfunction at the West Sanctum##9119
	step //249
		goto 45.2,56.4
		.talk Apprentice Ralen##15941
		..accept Roadside Ambush##9035
	step //250
		goto 36.7,57.4
		.talk Ley-Keeper Velania##15401
		..turnin Malfunction at the West Sanctum##9119
		..accept Arcane Instability##8486
	step //251
		goto 35.4,57.4
		.kill 5 Manawraith|q 8486/1
		.kill 5 Mana Stalker|q 8486/2
	step //252
		goto 33.9,58.4
		.' Kill a Darnassian Scout to defeat an Intruder|goal Intruder Defeated|q 9352/1
		.from Darnassian Scout##15968 |tip The Darnassian Scouts are all around the outskirts of the West Sanctum.
		.collect 1 Incriminating Documents##20765|n
		.' Click the Incriminating Documents|use Incriminating Documents##20765
		..accept Incriminating Documents##8482
	step //253
		goto 36.7,57.4
		.talk Ley-Keeper Velania##15401
		..turnin Darnassian Intrusions##9352
		..turnin Arcane Instability##8486
	step //254
		goto 30.2,58.3
		.talk Hathvelion Sungaze##15920
		..accept Fish Heads, Fish Heads...##8884
	step //255
		goto 27.3,57.2
		.from Grimscale Forager##15670, Grimscale Seer##15950
		.get 8 Grimscale Murloc Head |q 8884/1
		.collect 1 Captain Kelisendra's Lost Rutters##21776 |n
		.' Click Captain Kelisendra's Lost Rutters in your bags|use Captain Kelisendra's Lost Rutters##21776
		..accept Captain Kelisendra's Lost Rutters##8887
	step //256
		goto 30.2,58.3
		.talk Hathvelion Sungaze##15920
		..turnin Fish Heads, Fish Heads...##8884
		..accept The Ring of Mmmrrrggglll##8885
	step //257
		goto 25.3,67.2
		.from Mmmrrrggglll##15937+
		.get Ring of Mmmrrrggglll |q 8885/1
	step //258
		goto 30.2,58.3
		.talk Hathvelion Sungaze##15920
		..turnin The Ring of Mmmrrrggglll##8885
	step //259
		goto 36.4,66.7
		.talk Captain Kelisendra##15921
		..turnin Captain Kelisendra's Lost Rutters##8887
		..accept Grimscale Pirates!##8886
		.talk Velendris Whitemorn##15404
		..accept Lost Armaments##8480
	step //260
		goto 31.7,69.1
		.' Click the Weapon Containers |tip They look like wooden boxes on the ground all around this area.
		.get 8 Sin'dorei Armaments|q 8480/1
	step //261
		goto 25.6,70.8
		.' Kill murlocs and click Captain Kelisendra's Cargo barrels on the beach |tip The Captain Kelisendra's Cargo barrels look like wooden barrels sitting upright next to the murloc huts.
		.get 6 Captain Kelisendra's Cargo|q 8886/1
	step //262
		goto 36.4,66.7
		.talk Captain Kelisendra##15921
		..turnin Grimscale Pirates!##8886
		.talk Velendris Whitemorn##15404
		..turnin Lost Armaments##8480
		..accept Wretched Ringleader##9076
	step //263
		goto 32.8,69.6
		.' Go all the way to the top of the big building
		.from Aldaron the Reckless##16294
		.get Aldaron's Head|q 9076/1
	step //264
		goto 36.4,66.7
		.talk Velendris Whitemorn##15404
		..turnin Wretched Ringleader##9076
	step //265
		goto 44.7,69.6
		.talk Velan Brightoak##15417
		..accept Pelt Collection##8491
	step //266
		goto 44,70.8
		.talk Magistrix Landra Dawnstrider##16210
		..accept Missing in the Ghostlands##9144
		..accept Saltheril's Haven##9395
		..accept The Wayward Apprentice##9254
	step //267
		goto 43.7,71.2
		.talk Marniel Amberlight##15397
		..accept Ranger Sareyn##9358
	step //268
		goto 43.7,71.2
		.talk Marniel Amberlight##15397
		..home Fairbreeze Village
	step //269
		goto 43.6,71.2
		.talk Ardeyn Riverwind##16397
		..accept The Scorched Grove##9258
	step //270
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..accept Situation at Sunsail Anchorage##8892
	step //271
		goto 41.8,66.4
		.from Springpaw Stalker##15651+
		.get 6 Springpaw Pelt |q 8491/1
	step //272
		goto 38.1,73.6
		.talk Lord Saltheril##16144
		..turnin Saltheril's Haven##9395
		..accept The Party Never Ends##9067
	step //273
		goto 33.5,71.6
		.kill 5 Wretched Thug|q 8892/1
		.kill 5 Wretched Hooligan|q 8892/2
	step //274
		goto 34.1,80.0
		.talk Larianna Riverwind##15398
		..turnin The Scorched Grove##9258
		..accept A Somber Task##8473
	step //275
		goto 35.0,84.2
		.kill 10 Withered Green Keeper |q 8473/1
		.from Old Whitebark##15409
		.collect 1 Old Whitebark's Pendant##23228 |n
		.' Click Old Whitebark's Pendant in your bags |use Old Whitebark's Pendant##23228
		..accept Old Whitebark's Pendant##8474
	step //276
		goto 34.1,80.0
		.talk Larianna Riverwind##15398
		..turnin A Somber Task##8473
		..turnin Old Whitebark's Pendant##8474
		..accept Whitebark's Memory##10166
	step //277
		goto 37.5,86.3
		.' Use Old Whitebark's Pendant next to this huge stone with a blue symbol on it |use Old Whitebark's Pendant##28209
		.' Fight Whitebark's Spirit until he surrenders
		.talk Whitebark's Spirit##19456
		..turnin Whitebark's Memory##10166
	step //278
		'Hearth to Fairbreeze Village |goto Eversong Woods,43.3,71.3,0.5 |use Hearthstone##6948 |noway |c
	step //279
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..turnin Situation at Sunsail Anchorage##8892
		..accept Farstrider Retreat##9359
	step //280
		goto 44.1,70.3
		.talk Halis Dawnstrider##16444
		..buy 1 Bundle of Fireworks|q 9067/3
	step //281
		goto 44.7,69.6
		.talk Velan Brightoak##15417
		..turnin Pelt Collection##8491
	step //282
		goto 46.9,71.8
		.talk Ranger Sareyn##15942
		..turnin Ranger Sareyn##9358
		..accept Defending Fairbreeze Village##9252
	step //283
		goto 44.9,61
		.talk Apprentice Meledor##15945
		..turnin Roadside Ambush##9035
		..accept Soaked Pages##9062
	step //284
		goto 44.3,62
		.' Click the Soaked Tome |tip It's a little black book underwater here under the bridge.
		.get Antheol's Elemental Grimoire|q 9062/1
	step //285
		goto 44.9,61
		.talk Apprentice Meledor##15945
		..turnin Soaked Pages##9062
		..accept Taking the Fall##9064
	step //286
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin Incriminating Documents##8482
		..accept The Dwarven Spy##8483
	step //287
		goto 44.6,53.1
		.talk Prospector Anvilward##15420
		..'Lure him away
		.from Prospector Anvilward##15420
		.get Prospector Anvilward's Head|q 8483/1
	step //288
		goto 48.2,46
		.talk Aeldon Sunbrand##15403
		..turnin The Dwarven Spy##8483
	step //289
		goto 50.3,50.8
		.talk Ranger Jaela##15416
		..accept The Dead Scar##8475
	step //290
		goto 50,52.8
		.kill 8 Plaguebone Pillager|q 8475/1
	step //291
		goto 50.3,50.8
		.talk Ranger Jaela##15416
		..turnin The Dead Scar##8475
	step //292
		goto 55.7,54.5
		.talk Instructor Antheol##15970
		..turnin Taking the Fall##9064
		..accept Swift Discipline##9066
	step //293
		goto 45.2,56.4
		.' Use Antheol's Disciplinary Rod on Apprentice Ralen|use Antheol's Disciplinary Rod##22473 |tip Standing next to a broken down red wagon.
		.' Discipline Apprentice Ralen|goal Apprentice Ralen Disciplined|q 9066/2
	step //294
		goto 44.9,61
		.' Use Antheol's Disciplinary Rod on Apprentice Meledor|use Antheol's Disciplinary Rod##22473 |tip Standing on the water bank, near the bridge.
		.' Discipline Apprentice Meledor|goal Apprentice Meledor Disciplined|q 9066/1
	step //295
		goto 55.7,54.5
		.talk Instructor Antheol##15970
		.turnin Swift Discipline##9066
	step //296
		Go north into Silvermoon City |goto Silvermoon City |noway |c
	step //297
		goto 79.5,58.5
		.talk Vinemaster Suntouched##16442
		..buy Suntouched Special Reserve|get 1 Suntouched Special Reserve|q 9067/1
	step //298
		'Leave Silvermoon City |goto Eversong Woods |noway |c
	step //299
		goto Eversong Woods,60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Farstrider Retreat##9359
		..accept Amani Encroachment##8476
	step //300
		goto 59.5,62.6
		.talk Arathel Sunforge##15400
		..accept The Spearcrafter's Hammer##8477
	step //301
		goto 60.3,61.4
		.talk Magister Duskwither##15951
		..accept The Magister's Apprentice##8888
	step //302
		goto 67.8,56.5
		.talk Apprentice Loralthalis##15924
		..turnin The Magister's Apprentice##8888
		..accept Deactivating the Spire##8889
		..accept Where's Wyllithen?##9394
	step //303
		goto 68.9,52.0 |n
		.' Click the Orb of Translocation
		..'It will teleport you up to the building |goto 67.5,52.1,0.3 |noway |c
	step //304
		goto 68.9,51.9
		.' Click the Duskwither Spire Power Sources |tip The Power Sources are huge green floating crystals in this building.
		..' Deactivate the First Power Source|goal First Power Source Deactivated|q 8889/1
	step //305
		'Go upstairs to 68.9,51.9
		.' Click the Duskwither Spire Power Source |tip The Second Power Source is on the second floor. 
		.' Deactivate the Second Power Source|goal Second Power Source Deactivated|q 8889/2
	step //306
		goto 69.2,52.1
		.' Click Magister Duskwither's Journal |tip Magister Duskwither's Journal is a blue book sitting on a small stoll next to the Second Power Source crystal.
		..accept Abandoned Investigations##8891
	step //307
		'Go up the big staircase to 69.7,53.3|goto 69.7,53.3
		.' Click the Duskwither Spire Power Source |tip It's a huge green crystal all the way at the top of this building, up a huge staircase.
		.' Deactivate the Third Power Source|goal Third Power Source Deactivated|q 8889/3
		.' Click the Orb of Translocation
		..'It will teleport you back down|goto 68.9,52.0,0.1|noway|c
	step //308
		goto 68.7,46.9
		.talk Groundskeeper Wyllithen##15969
		..turnin Where's Wyllithen?##9394
		..accept Cleaning up the Grounds##8894
	step //309
		goto 69.5,48.1
		.kill 6 Mana Serpent|q 8894/1
		.kill 6 Ether Fiend|q 8894/2
	step //310
		goto 68.7,46.9
		.talk Groundskeeper Wyllithen##15969
		..turnin Cleaning up the Grounds##8894
	step //311
		goto 67.8,56.5
		.talk Apprentice Loralthalis##15924
		..turnin Deactivating the Spire##8889
		..accept Word from the Spire##8890
	step //312
		goto 60.4,62.5
		.talk Zalene Firstlight##16443
		.buy 1 Springpaw Appetizers |q 9067/2
	step //313
		goto 60.3,61.4
		.talk Magister Duskwither##15951
		..turnin Word from the Spire##8890
		..turnin Abandoned Investigations##8891
	step //314
		goto 68.3,71.9
		.kill 5 Amani Berserker|q 8476/1
		.kill 5 Amani Axe Thrower|q 8476/2
	step //315
		goto 70,72.3
		.from Spearcrafter Otembe##15408
		.get Otembe's Hammer |q 8477/1
	step //316
		goto 70.5,72.3
		.talk Ven'jashi##15406
		..accept Zul'Marosh##8479
	step //317
		goto 62.6,79.7
		.from Chieftain Zul'Marosh##15407
		.get Chieftain Zul'Marosh's Head |q 8479/1
		.collect 1 Amani Invasion Plans##23249 |n
		.' Click the Amani Invasion Plans |use Amani Invasion Plans##23249
		..accept Amani Invasion##9360
	step //318
		goto 70.5,72.3
		.talk Ven'jashi##15406
		..turnin Zul'Marosh##8479
	step //319
		goto 60.3,62.8
		.talk Lieutenant Dawnrunner##15399
		..turnin Amani Encroachment##8476
		..turnin Amani Invasion##9360
		..accept Warning Fairbreeze Village##9363
	step //320
		goto 59.5,62.6
		.talk Arathel Sunforge##15400
		..turnin The Spearcrafter's Hammer##8477
	step //321
		'Hearth to Fairbreeze Village|goto 43.7,71.2,0.5|use Hearthstone##6948|noway|c
	step //322
		goto 43.3,70.8
		.talk Ranger Degolien##15939
		..turnin Warning Fairbreeze Village##9363
	step //323
		goto 38.1,73.6
		.talk Lord Saltheril##16144
		..turnin The Party Never Ends##9067
	step //324
		goto 50.6,76.8
		.kill 4 Darkwraith |q 9252/2
		.kill 4 Rotlimb Marauder |q 9252/1
	step //325
		goto 54.3,71
		.talk Apprentice Mirveda##15402
		..turnin The Wayward Apprentice##9254
		..accept Corrupted Soil##8487
	step //326
		goto 52.6,70.9
		.' Click the Corrupted Soil Samples |tip They look like green glowing piles of dirt around this area.
		.get 8 Tainted Soil Sample##20771|q 8487/1
	step //327
		goto 54.3,71
		.talk Apprentice Mirveda##15402
		..turnin Corrupted Soil##8487
		..'Prepare to fight
		..accept Unexpected Results##8488
		.' Protect Apprentice Mirveda from the ambushers |q 8488/1
		..turnin Unexpected Results##8488
		..accept Research Notes##9255
	step //328
		goto 46.9,71.8
		.talk Ranger Sareyn##15942
		..turnin Defending Fairbreeze Village##9252
		..accept Runewarden Deryan##9253
	step //329
		goto 44.0,70.8
		.talk Magistrix Landra Dawnstrider##16210
		..turnin Research Notes##9255
	step //330
		goto 44.2,85.5
		.talk Runewarden Deryan##16362
		..turnin Runewarden Deryan##9253
		..accept Powering our Defenses##8490
	step //331
		goto 49.0,89.0
		.talk Courier Dawnstrider##16183
		..turnin Missing in the Ghostlands##9144
	step //332
		goto 55.2,84.2
		.' Use you Infused Crystal next to this big stone with a blue symbol on it |use Infused Crystal##22693
		..' Kill the mobs as they come
		.' Energize the Runestone |q 8490/1
	step //333
		goto 44.2,85.5
		.talk Runewarden Deryan##16362
		..turnin Powering our Defenses##8490
	step //334
		'Go south to Ghostlands |goto Ghostlands |noway |c
	step //335
		goto Ghostlands,55.1,48.8
		.talk Magister Kaendris##16239
		..accept The Farstrider Enclave##9282
	step //336
		goto 72.5,32.1
		.talk Farstrider Sedina##16202
		..accept Bearers of the Plague##9158
	step //337
		goto 72.3,31.2
		.talk Farstrider Solanna##16463
		..accept Attack on Zeb'Tela##9276
	step //338
		goto 72.2,31.2
		.' Click the Wanted Poster: Kel'gash the Wicked
		..accept Bring Me Kel'gash's Head!##9215
	step //339
		goto 72.2,29.8
		.talk Ranger Krenn'an##16462
		..accept Spirits of the Drowned##9274
	step //340
		goto 72.4,29.6
		.talk Captain Helios##16220
		..accept Shadowpine Weaponry##9214
	step //341
		goto 72.0,32.6
		.talk Ranger Vynna##16203
		..turnin The Farstrider Enclave##9282
		..accept The Traitor's Shadow##9161
	step //342
		goto 68.0,40.2
		.kill 10 Ghostclaw Lynx |q 9158/1
	step //343
		goto 76.7,38.4
		.kill 8 Shadowpine Shadowcaster |q 9276/1
		.get 3 Shadowcaster Mace |q 9214/2 
		.kill 8 Shadowpine Headhunter |q 9276/2
		.get 3 Headhunter Axe |q 9214/1
	step //344
		goto 72.5,32.1
		.talk Farstrider Sedina##16202
		..turnin Bearers of the Plague##9158
		..accept Curbing the Plague##9159
	step //345
		goto 72.3,31.2
		.talk Farstrider Solanna##16463
		..turnin Attack on Zeb'Tela##9276
		..accept Assault on Zeb'Nowa##9277
	step //346
		goto 70.7,40.2
		.kill 10 Vampiric Mistbat |q 9159/1
	step //347
		goto 63.2,65.1
		.kill 10 Shadowpine Catlord |q 9277/1
		.get 3 Catlord Claws |q 9214/3
		.kill 10 Shadowpine Hexxer |q 9277/2
		.get 3 Hexxer Stave |q 9214/4
	step //348
		goto 65.3,79.5
		.from Kel'gash the Wicked##16358 |tip He's standing at the top of this big hut.
		.get Head of Kel'gash the Wicked |q 9215/1
	step //349
		goto 24.6,43.4
		.kill 8 Spindleweb Lurker |q 9159/2
	step //350
		goto 72.5,32.1
		.talk Farstrider Sedina##16202
		..turnin Curbing the Plague##9159
	step //351
		goto 72.3,31.2
		.talk Farstrider Solanna##16463
		..turnin Assault on Zeb'Nowa##9277
	step //352
		goto 72.4,29.6
		.talk Captain Helios##16220
		..turnin Shadowpine Weaponry##9214
		..turnin Bring Me Kel'gash's Head!##9215
	step //353
		goto 72.3,19.1
		.talk Geranis Whitemorn##16201
		..accept Forgotten Rituals##9157
	step //354
		goto 70.2,22.0
		.' Click Glistening Mud piles |tip They look like piles of dirt underwater.
		.get 8 Wavefront Medallion |q 9157/1
		.kill 8 Ravening Apparition |q 9274/1
		.kill 8 Vengeful Apparition |q 9274/2
	step //355
		goto 72.3,19.1
		.talk Geranis Whitemorn##16201
		..turnin Forgotten Rituals##9157
		..accept Vanquishing Aquantion##9174
	step //356
		goto 69.4,15.2
		.talk Ranger Valanna##16219
		..accept Dealing with Zeb'Sora##9143
	step //357
		goto 71.3,15.0
		.' Click the Altar of Tidal Mastery |tip It looks like a statue of a snake woman with 4 arms underwater.
		.kill Aquantion |q 9174/1
	step //358
		goto 73.6,13.4
		.from Shadowpine Ripper##16340+, Shadowpine Witch##16341+
		.get 6 Zeb'Sora Troll Ear |q 9143/1
	step //359
		goto 79.6,17.5
		.' Click the Dusty Journal |tip It's an open blue book on this outside platform of this blood elf building.
		..turnin The Traitor's Shadow##9161
		..accept Hints of the Past##9162
	step //360
		goto 72.3,19.1
		.talk Geranis Whitemorn##16201
		..turnin Vanquishing Aquantion##9174
	step //361
		goto 69.4,15.2
		.talk Ranger Valanna##16219
		..turnin Dealing with Zeb'Sora##9143
		..accept Report to Captain Helios##9146
	step //362
		goto 72.2,29.8
		.talk Ranger Krenn'an##16462
		..turnin Spirits of the Drowned##9274
	step //363
		goto 72.4,29.6
		.talk Captain Helios##16220
		..turnin Report to Captain Helios##9146
	step //364
		goto 72.0,32.6
		.talk Ranger Vynna##16203
		..turnin Hints of the Past##9162
	step //365
		'Hearth to Fairbreeze Village|goto Eversong Woods,43.7,71.2,0.5|use Hearthstone##6948|noway|c
	step //366
		'Go northeast to Silvermoon City |goto Silvermoon City |noway |c
	step //367
		goto Silvermoon City,49.4,14.8 |n
		.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in the back room of this building, up on a platform.
	step //368
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //369
		goto Tirisfal Glades,60.7,58.8 |n
		.' Ride the zeppelin to Orgrimmar |goto Durotar |noway |c
	step //370
		goto Durotar,41.3,18.9 |n
		.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
	step //371
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //372
		goto Mulgore,44.9,77.1
		.talk Grull Hawkwind##2980
		..accept The Hunt Begins##747
	step //373
		goto 44.6,76.7
		.talk Brave Windfeather##3209
		..accept Break Sharptusk!##3376
	step //374
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..accept A Humble Task (1)##752
	step //375
		goto 45.6,79.4
		.from Plainstrider##2955+
		.get 7 Plainstrider Meat|q 747/1
		.get 7 Plainstrider Feather|q 747/2
	step //376
		goto 50,81.2
		.talk Greatmother Hawkwind##2991
		..turnin A Humble Task (1)##752
		..accept A Humble Task (2)##753
		.' Click a little Water Pitcher sitting on the windmill
		.get Water Pitcher|q 753/1
	step //377
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Begins##747
		..accept The Hunt Continues##750
	step //378
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..turnin A Humble Task (2)##753
		..accept Rites of the Earthmother (1)##755
	step //379
		goto 45.1,88.1
		.from Mountain Cougar##2961+
		.get 10 Mountain Cougar Pelt|q 750/1
	step //380
		goto 42.6,92.2
		.talk Seer Graytongue##2982
		..turnin Rites of the Earthmother (1)##755
		..accept Rite of Strength##757
	step //381
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Hunt Continues##750
		..accept The Battleboars##780
	step //382
		goto 52.3,78.8
		.from Battleboar##2966, Bristleback Battleboar##2954
		.get 8 Battleboar Snout|q 780/1
		.get 8 Battleboar Flank|q 780/2
	step //383
		goto 58.2,84.9
		.from Bristleback Quillboar##2952, Bristleback Shaman##2953
		.get 12 Bristleback Belt|q 757/1
	step //384
		goto 64.7,77.7
		.from Chief Sharptusk Thornmantle##8554 |tip He's standing in a huge round tent.
		.get Chief Sharptusk Thornmantle's Head|q 3376/1
	step //385
		goto 63.2,82.7
		.' Click the Dirt-stained Map |tip It looks like a flat scroll laying on the ground in this small cave.
		..accept Attack on Camp Narache##24857
	step //386
		goto 44.9,77.1
		.talk Grull Hawkwind##2980
		..turnin The Battleboars##780
	step //387
		goto 44.6,77.1
		.talk Brave Windfeather##3209
		..turnin Break Sharptusk!##3376
	step //388
		goto 44.2,76.1
		.talk Chief Hawkwind##2981
		..turnin Rite of Strength##757
		..turnin Attack on Camp Narache##24857
		..accept Rites of the Earthmother##763
	step //389
		goto 38.5,81.5
		.talk Antur Fallow##6775
		..accept A Task Unfinished##1656
	step //390
		goto 47.4,62.0
		.talk Ruul Eagletalon##2985
		..accept Dangers of the Windfury##743
	step //391
		goto 47.5,60.2
		.talk Baine Bloodhoof##2993
		..turnin Rites of the Earthmother##763
		..accept Dwarven Digging##746
		..accept Sharing the Land##745
		..accept Rite of Vision##767
	step //392
		goto 46.8,60.2
		.talk Skorn Whitecloud##3052
		..accept The Hunter's Way##861
	step //393
		goto 46.6,61.1
		.talk Innkeeper Kauth##6747
		..turnin A Task Unfinished##1656
	step //394
		goto 48.7,59.3
		.talk Harken Windtotem##2947
		..accept Swoop Hunting##761
	step //395
		goto 47.8,57.5
		.talk Zarlman Two-Moons##3054
		..turnin Rite of Vision##767
		..accept Rite of Vision##771
	step //396
		goto 47.0,57.1
		.talk Maur Raincaller##3055
		..accept Mazzranache##766
	step //397
		goto 48.2,53.3
		.talk Ahab Wheathoof##23618
		..accept Kyle's Gone Missing!##11129
	step //398
		goto 46.1,48.5
		.from Swoop##2970+
		.get Swoop Gizzard |q 766/4
		.get 8 Trophy Swoop Quill |q 761/1
		.from Prairie Stalker##2959+
		.get Prairie Wolf Heart |q 766/1
		.from Flatland Cougar##3035+
		.get Flatland Cougar Femur |q 766/2
		 .from Elder Plainstrider##2957+, Adult Plainstrider##2956+
		.get Plainstrider Scale |q 766/3
		.collect Tender Strider Meat##33009 |q 11129
		.' Click Ambercorns |tip They look like brown pinecones on the ground at the base of trees around this area.
		.get 2 Ambercorn |q 771/2
	step //399
		goto 44.4,45.9
		.' Click Well Stones |tip They look like grey rocks on the ground around this area.
		.get 2 Well Stone |q 771/1
	step //400
		goto 48.0,28.5
		.from Flatland Prowler##3566+
		.get 4 Flatland Prowler Claw |q 861/1
	step //401
		goto 34.4,61.9 |n
		.' The entrance to the cave starts here |goto Mulgore,34.4,61.9,0.5 |noway |c
	step //402
		goto 33.3,61.6
		.kill 10 Palemane Tanner |q 745/1
		.kill 8 Palemane Skinner |q 745/2
		.kill 5 Palemane Poacher |q 745/3
	step //403
		'Leave the cave |goto Mulgore,34.4,61.9,0.5 |noway |c
	step //404
		goto 33.4,48.9
		.from Bael'dun Digger##2989+, Bael'dun Appraiser##2990+
		.collect 5 Prospector's Pick##4702 |q 746
	step //405
		goto 31.3,49.9
		.' Use your Prospector's Picks next to the Forge |use Prospector's Pick##4702
		.get 5 Broken Tools |q 746/1
	step //406
		goto 34.3,43.2
		.from Windfury Wind Witch##2963+, Windfury Harpy##2962+
		.get 8 Windfury Talon |q 743/1
	step //407
		goto 48.9,57.6
		.' Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby |use Tender Strider Meat##33009 |tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village.
		.' Feed Kyle |q 11129/1
	step //408
		goto 48.2,53.3
		.talk Ahab Wheathoof##23618
		..turnin Kyle's Gone Missing!##11129
	step //409
		goto 47.8,57.5
		.talk Zarlman Two-Moons##3054
		..turnin Rite of Vision##771
		..accept Rite of Vision##772
	step //410
		goto 47.0,57.1
		.talk Maur Raincaller##3055
		..turnin Mazzranache##766
	step //411
		goto 48.7,59.3
		.talk Harken Windtotem##2947
		..turnin Swoop Hunting##761
	step //412
		goto 47.5,60.2
		.talk Baine Bloodhoof##2993
		..turnin Dwarven Digging##746
		..turnin Sharing the Land##745
	step //413
		goto 47.4,62.0
		.talk Ruul Eagletalon##2985
		..turnin Dangers of the Windfury##743
	step //414
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..accept The Ravaged Caravan (1)##749
	step //415
		goto 53.7,48.2
		.' Click the Sealed Supply Crate |tip It's a crate sitting on the ground next to a bonfire.
		..turnin The Ravaged Caravan (1)##749
		..accept The Ravaged Caravan (2)##751
	step //416
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..turnin The Ravaged Caravan (2)##751
		..accept The Venture Co.##764
		..accept Supervisor Fizsprocket##765
	step //417
		goto 59.2,48.8
		.kill 14 Venture Co. Worker|q 764/1
		.kill 6 Venture Co. Supervisor|q 764/2
	step //418
		'Go northeast into the mine to 64.4,43.5
		.' Keep heading right inside the mine and you will run into him
		.from Supervisor Fizsprocket##3051
		.get Fizsprocket's Clipboard|q 765/1
	step //419
		goto 59.3,62.2
		.talk Morin Cloudstalker##2988
		..turnin The Venture Co.##764
		..turnin Supervisor Fizsprocket##765
	step //420
		goto 32.7,36.1
		.talk Seer Wiserunner##2984
		..turnin Rite of Vision (3)##772
		..accept Rite of Wisdom##773
	step //421
		'Go northeast to Thunder Bluff |goto Thunder Bluff |noway |c
	step //422
		goto Thunder Bluff,37.7,59.6
		.talk Eyahn Eagletalon##2987
		..accept Preparation for Ceremony##744
	step //423
		goto 61.6,80.9
		.talk Melor Stonehoof##3441
		..turnin The Hunter's Way##861
		..accept Sergra Darkthorn##860
		// ..accept Steelsnap##1131
	step //424
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //425
		goto Mulgore,31.0,26.5
		.from Windfury Matriarch##2965+
		.get 6 Bronze Feather |q 744/2
		.from Windfury Sorceress##2964+
		.get 6 Azure Feather |q 744/1
	step //426
		goto 59.9,25.6
		.talk Lorekeeper Raintotem##3233
		..accept A Sacred Burial##833
	step //427
		goto 61,23.1
		.kill 8 Bristleback Interloper|q 833/1
	step //428
		goto 61.4,21
		.talk Ancestral Spirit##2994
		..turnin Rite of Wisdom##773
		..accept Journey into Thunder Bluff##775
	step //429
		goto 59.9,25.6
		.talk Lorekeeper Raintotem##3233
		..turnin A Sacred Burial##833
	step //430
		'Go west to Thunder Bluff |goto Thunder Bluff |noway |c
	step //431
		goto Thunder Bluff,60.3,51.7
		.talk Cairne Bloodhoof##3057
		..turnin Journey into Thunder Bluff##775
		..accept Rites of the Earthmother##776
	step //432
		goto 37.7,59.6
		.talk Eyahn Eagletalon##2987
		..turnin Preparation for Ceremony##744
	step //433
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //434
		goto Mulgore,49.4,15.0
		.from Arra'chea##3058 |tip Arra'chea is a dark colored kodo that walks around alone all around this area.  You will probably need to search for him.
		.get Horn of Arra'chea |q 776/1
	step //435
		'Go west to Thunder Bluff |goto Thunder Bluff |noway |c
	step //436
		goto Thunder Bluff,60.3,51.7
		.talk Cairne Bloodhoof##3057
		..turnin Rites of the Earthmother##776
	step //437
		goto 47.0,49.8
		.talk Tal##2995
		..' Fly to Orgrimmar |goto Orgrimmar |noway |c
	step //438
		'Go outside to Durotar |goto Durotar |noway |c
	step //439
		goto Durotar,43.3,68.5
		.talk Kaltunk##10176
		..accept Your Place In The World##4641
	step //440
		goto 42.9,69.2
		.talk Zureetha Fargaze##3145
		..accept Vile Familiars##792
	step //441
		'Go inside the cave to 42.1,68.3
		.talk Gornek##3143
		..turnin Your Place In The World##4641
		..accept Cutting Teeth##788
	step //442
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..accept Lazy Peons##5441
	step //443
		goto 45.3,69.9
		.' Start here and head south along the Cliffside
		.' Use your Foreman's Blackjack on Lazy Peons|use Foreman's Blackjack##16114
		..'They are sleeping under the trees
		.' Awaken 5 Peons|goal 5 Peons Awoken|q 5441/1
	step //444
		goto 44.6,68.6
		.talk Foreman Thazz'ril##11378
		..turnin Lazy Peons##5441
		..accept Thazz'ril's Pick##6394
	step //445
		goto 43.8,70
		.kill 8 Mottled Boar|q 788/1
	step //446
		'Go into the cave to 42.1,68.3
		.talk Gornek##3143
		..turnin Cutting Teeth##788
		..accept Sting of the Scorpid##789
	step //447
		goto 42.7,67.2
		.talk Galgar##9796
		..accept Galgar's Cactus Apple Surprise##4402
	step //448
		goto 44.1,65.4
		.' Click the Cactus Apples |tip They look liked small cactuses with little pink apples on them.
		.get 6 Cactus Apple|q 4402/1
	step //449
		goto 45.8,59.3
		.kill 8 Vile Familiar|q 792/1
	step //450
		goto 45.5,56.4 |n
		.' The entrance to the cave starts here |goto 45.5,56.4,0.3 |noway |c
	step //451
		goto 43.8,53.8
		.' Click Thazz'ril's Pick |tip It looks like a glowing mining pick standing next to the wall inside the cave.
		.get Thazz'ril's Pick|q 6394/1
	step //452
		'Leave the cave |goto 45.5,56.4,0.3 |noway |c
	step //453
		goto 41.3,63.3
		.from Scorpid Worker##3124+
		.get 10 Scorpid Worker Tail|q 789/1
	step //454
		goto 40.6,62.6
		.talk Hana'zua##3287
		..accept Sarkoth (1)##790
	step //455
		goto 40.6,66.6
		.from Sarkoth##3281
		.get Sarkoth's Mangled Claw|q 790/1
	step //456
		goto 40.6,62.6
		.talk Hana'zua##3287
		..turnin Sarkoth (1)##790
		..accept Sarkoth (2)##804
	step //457
		goto 42.7,67.2
		.talk Galgar##9796
		..turnin Galgar's Cactus Apple Surprise##4402
	step //458
		goto 42.1,68.3
		.talk Gornek##3143
		..turnin Sting of the Scorpid##789
		..turnin Sarkoth (2)##804
	step //459
		goto 42.9,69.2
		.talk Zureetha Fargaze##3145
		..turnin Vile Familiars##792
		..accept Burning Blade Medallion##794
	step //460
		goto 44.6,68.7
		.talk Foreman Thazz'ril##11378
		..turnin Thazz'ril's Pick##6394
	step //461
		goto 45.5,56.4 |n
		.' The entrance to the cave starts here |goto 45.5,56.4,0.3 |noway |c
	step //462
		goto 42.7,53
		.from Yarrog Boneshadow##3183
		.get Burning Blade Medallion|q 794/1
	step //463
		'Leave the cave |goto 45.5,56.4,0.3 |noway |c
	step //464
		goto 42.8,69.1
		.talk Zureetha Fargaze##3145
		..turnin Burning Blade Medallion##794
		..accept Report to Sen'jin Village##805
	step //465
		goto 52.1,68.3
		.talk Ukor##6786
		..accept A Peon's Burden##2161
	step //466
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..accept Thwarting Kolkar Aggression##786
	step //467
		goto 56.0,74.7
		.talk Master Gadrin##3188
		..turnin Report to Sen'jin Village##805
		..accept Minshina's Skull##808
		..accept Zalazane##826
		..accept Report to Orgnil##823
	step //468
		goto 55.9,74.4
		.talk Master Vornal##3304
		..accept A Solvent Spirit##818
	step //469
		goto 55.9,74
		.talk Vel'rin Fang##3194
		..accept Practical Prey##817
	step //470
		goto 57.8,77.3
		.from Pygmy Surf Crawler##3106+, Surf Crawler##3107+
		.get 8 Crawler Mucus|q 818/2
		.from Makrura Shellhide##3104+, Makrura Clacker##3103+
		.get 4 Intact Makrura Eye|q 818/1
	step //471
		goto 64.9,80.5
		.from Durotar Tiger##3121+ |tip You can find them all around the outskirts of this island.
		.get 4 Durotar Tiger Fur |q 817/1
	step //472
		goto 67.4,87.2
		.from Zalazane##3205 |tip He walks around this area.
		.get Zalazane's Head |q 826/3
	step //473
		goto 67.5,87.8
		.' Click an Imprisoned Darkspear |tip They look like little skulls inside a round demonic symbol up on the hill.
		.get Minshina's Skull|q 808/1
	step //474
		goto 67.4,87.2
		.kill 8 Hexed Troll |q 826/1
		.kill 8 Voodoo Troll |q 826/2
	step //475
		goto 56.0,74.7
		.talk Master Gadrin##3188
		..turnin Minshina's Skull##808
		..turnin Zalazane##826	
	step //476
		goto 55.9,74.4
		.talk Master Vornal##3304
		..turnin A Solvent Spirit##818
	step //477
		goto 56.0,73.9
		.talk Vel'rin Fang##3194
		..turnin Practical Prey##817
	step //478
		goto 51.3,79.1 |n
		.' The path to 'Thwarting Kolkar Aggression' starts here |goto 51.3,79.1,0.3 |noway |c
	step //479
		goto 49.8,81.3
		.' Click the Attack Plan: Valley of Trials |tip It's a small white scroll laying flat on the floor in a big tent.
		.' Destroy the Attack Plan: Valley of Trials |q 786/1
	step //480
		goto 47.7,77.3
		.' Click the Attack Plan: Sen'jin Village |tip It's a small white scroll laying on the floor under a brown canopy in a small camp.
		.' Destroy the Attack Plan: Sen'jin Village |q 786/2
	step //481
		goto 46.2,78.9
		.' Click the Attack Plan: Orgrimmar |tip It's a small white scroll laying under a canopy in a small camp.
		.' Destroy the Attack Plan: Orgrimmar |q 786/3
	step //482
		goto 54.2,73.3
		.talk Lar Prowltusk##3140
		..turnin Thwarting Kolkar Aggression##786
	step //483
		goto 52.2,43.1
		.talk Orgnil Soulscar##3142
		..turnin Report to Orgnil##823
		..accept Dark Storms##806
	step //484
		goto 52.0,43.5
		.talk Gar'Thok##3139
		..accept Vanquish the Betrayers##784
		..accept Encroachment##837
	step //485
		goto 51.5,41.6
		.talk Innkeeper Grosk##6928
		..turnin A Peon's Burden##2161
	step //486
		goto 51.1,42.5
		.talk Cook Torka##3191
		..accept Break a Few Eggs##815
	step //487
		goto 50.8,43.6
		.talk Takrin Pathseeker##3336
		..accept Conscript of the Horde##840
	step //488
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..accept Carry Your Weight##791
	step //489
		goto 57.1,53.2
		.kill 8 Kul Tiras Marine |q 784/2
		.kill 10 Kul Tiras Sailor |q 784/1
		.from Kul Tiras Marine##3129+, Kul Tiras Sailor##3128+
		.get 8 Canvas Scraps |q 791/1
	step //490
		goto 59.7,58.3
		.kill Lieutenant Benedict##3192 |q 784/3
		.collect 1 Benedict's Key##4882 |future |q 830
	step //491
		'Leave the room and run across the hall and up the wooden steps |goto Durotar,60.0,57.6,0.3 |c
	step //492
		goto 59.3,57.7
		.' Use Benedict's Key to open Benedict's Chest |tip Down the hall and then up the wooden staircase from Lord Benedict.
		.collect 1 Aged Envelope##4881 |n
		.' Click the Aged Envelope |use Aged Envelope##4881
		..accept The Admiral's Orders (1)##830
	step //493
		goto 60.3,82.9
		.' Click the purple Taillasher Eggs
		.get 3 Taillasher Egg|q 815/1
	step //494
		goto 52.0,43.5
		.talk Gar'Thok##3139
		..turnin Vanquish the Betrayers##784
		..accept From The Wreckage....##825
		..turnin The Admiral's Orders##830
		..accept The Admiral's Orders##831
	step //495
		goto 51.1,42.5
		.talk Cook Torka##3191
		..turnin Break a Few Eggs##815
	step //496
		goto 49.9,40.4
		.talk Furl Scornbrow##3147
		..turnin Carry Your Weight##791
	step //497
		goto 60.8,46.9
		.' Click the Gnomish Toolboxes |tip The Gnomish Toolboxes look like grey metal chests underwater around this area.
		.get 3 Gnomish Tools|q 825/1
	step //498
		goto 52.0,43.5
		.talk Gar'Thok##3139
		..turnin From The Wreckage....##825
	step //499
		goto 44.6,48.6
		.kill 4 Razormane Quilboar|q 837/1
		.kill 4 Razormane Scout|q 837/2
	step //500
		goto 44.5,41
		.kill 4 Razormane Dustrunner|q 837/3
		.kill 4 Razormane Battleguard|q 837/4
	step //501
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..accept Lost But Not Forgotten##816
	step //502
		goto 46.4,22.9
		.talk Rezlak##3293
		..accept Winds in the Desert##834
	step //503
		goto 50.8,31.6|n
		.' The path to 'Winds in the Desert' starts here|goto 50.8,31.6,0.3|noway|c
	step //504
		goto 48.6,33.5
		.' They look like small tan bags
		.' Click the Stolen Supply Sacks
		.get 5 Sack of Supplies|q 834/1
	step //505
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Winds in the Desert##834
		..accept Securing the Lines##835
	step //506
		goto 51.7,27.4|n
		.' The path to 'Securing the Lines' starts here|goto 51.7,27.43,0.3|noway|c
	step //507
		goto 54.1,26.9
		.kill 12 Dustwind Savage|q 835/1
		.kill 8 Dustwind Storm Witch|q 835/2
	step //508
		goto 46.4,22.9
		.talk Rezlak##3293
		..turnin Securing the Lines##835
	step //509
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..accept Need for a Cure##812
	step //510
		'Go to Orgrimmar|goto Orgrimmar
	step //511
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..accept Finding the Antidote##813
	step //512
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //513
		goto Durotar,39.9,20.9
		.from Venomtail Scorpid##3127
		.get 4 Venomtail Poison Sac|q 813/1
	step //514
		'Go northeast to Orgrimmar|goto Orgrimmar
	step //515
		goto Orgrimmar,43.1,50.2
		.talk Kor'ghan##3189
		..turnin Finding the Antidote##813
	step //516
		goto 34.3,36.3
		.talk Vol'jin##10540
		..turnin The Admiral's Orders##831
	step //517
		goto 31.8,37.8
		.talk Thrall##4949
		..accept Hidden Enemies (1)##5726
	step //518
		'Go outside of Orgrimmar to Durotar|goto Durotar
	step //519
		goto Durotar,42.1,15.0
		.talk Rhinag##3190
		..turnin Need for a Cure##812
	step //520
		goto 37.2,17.4
		.from Corrupted Dreadmaw Crocolisk##3231, Dreadmaw Crocolisk##3110
		.get Kron's Amulet|q 816/1
	step //521
		goto 39.2,32.5|n
		.' The path to 'Dark Storms' starts here|goto 39.2,32.5,0.5|noway|c
	step //522
		goto 42.1,26.6
		.from Fizzle Darkstorm##3203
		.get Fizzle's Claw|q 806/1
	step //523
		goto 51.9,43.5
		.talk Gar'Thok##3139
		..turnin Encroachment##837
	step //524
		goto 43.1,30.2
		.talk Misha Tor'kren##3193
		..turnin Lost But Not Forgotten##816
	step //525
		goto 52.3,43.1
		.talk Orgnil Soulscar##3142
		..turnin Dark Storms##806
		..accept Margoz##828
	step //526
		goto 56.4,20.0
		.talk Margoz##3208
		..turnin Margoz##828
		..accept Skull Rock##827
	step //527
		goto 55.1,10.1
		.from Burning Blade Fanatic##3197, Burning Blade Apprentice##3198
		.get 6 Searing Collar|q 827/1
		.get Lieutenant's Insignia|q 5726/1
	step //528
		goto 56.4,20
		.talk Margoz##3208
		..turnin Skull Rock##827
		..accept Neeru Fireblade##829
	step //529
		'Go to Orgrimmar|goto Orgrimmar
	step //530
		goto Orgrimmar,49.5,50.6
		.talk Neeru Fireblade##3216
		..turnin Neeru Fireblade##829
		..accept Ak'Zeloth##809
	step //531
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (1)##5726
		..accept Hidden Enemies (2)##5727
	step //532
		goto 49.5,50.6
		.talk Neeru Fireblade##3216
		.' Click "You may speak frankly, Neeru"
		.' Continue talking to him
		.' Gauge Neeru Fireblade's reaction to your being a member of the Burning Blade|goal Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade|q 5727/1
	step //533
		goto 31.8,37.8
		.talk Thrall##4949
		..turnin Hidden Enemies (2)##5727
	step //534
		'Go outside to Durotar |goto Durotar |noway |c
	step //535
		'Go southwest to The Barrens |goto The Barrens |noway |c
	step //536
		goto The Barrens,62.3,19.4
		.talk Kargal Battlescar##3337
		..turnin Conscript of the Horde##840
		..accept Crossroads Conscription##842
	step //537
		goto 62.3,20.1
		.talk Ak'Zeloth##3521
		..turnin Ak'Zeloth##809
	step //538
		goto 51.1,29.6
		.talk Korran##3428
		..accept Egg Hunt##868	
	step //539
		goto 51.4,30.1
		.talk Apothecary Helbrim##3390
		..turnin Sample for Helbrim##1358
		..accept Fungal Spores##848
	step //540
		goto 51.5,30.9
		.talk Thork##3429
		..accept Disrupt the Attacks##871
		..accept Supplies for the Crossroads##5041
	step //541
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..accept Harpy Raiders##867
	step //542
		goto 51.9,30.3
		.talk Gazrog##3464
		..accept Raptor Thieves##869
	step //543
		home The Crossroads
	step //544
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin Sergra Darkthorn##860
		..turnin Crossroads Conscription##842
		..accept Plainstrider Menace##844
	step //545
		goto 52.0,31.6
		.talk Mankrik##3432
		..accept Consumed by Hatred##899
		..accept Lost in Battle##4921
	step //546
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..accept The Forgotten Pools##870
	step //547
		'Kill all raptors you come across, you need to collect 12 Raptor Heads
	step //548
		goto 53.0,32.4
		.from Greater Plainstrider##3244+
		..get 7 Plainstrider Beak |q 844/1
	step //549
		goto 54.1,26.1
		.kill 8 Razormane Water Seeker |q 871/1
		.kill 8 Razormane Thornweaver |q 871/2
		.kill 3 Razormane Hunter |q 871/3
	step //550
		goto 59.4,24.7
		.' Click the Crossroads' Supply Crates |tip They look like a pile of brown boxes.
		.get 1 Crossroads' Supply Crates|q 5041/1
	step //551
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin Plainstrider Menace##844
		..accept The Zhevra##845
	step //552
		goto 51.5,30.9
		.talk Thork##3429
		..turnin Disrupt the Attacks##871
		..turnin Supplies for the Crossroads##5041
		..accept The Disruption Ends##872	
	step //553
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Regthar Deathgate##1361
		..accept Centaur Bracers##855
		..accept Kolkar Leaders##850
	step //554
		goto 46,27.2
		.from Zhevra Runner##3242+
		.get 4 Zhevra Hooves|q 845/1
	step //555
		goto 45.3,22.9
		.' Click the Laden Mushrooms |tip They look like big blue mushrooms around the lake.
		.get 4 Fungal Spores|q 848/1
		.' Swim underwater to the bubbles
		.' Explore the waters of the Forgotten Pools|goal Explore the waters of the Forgotten Pools|q 870/1
	step //556
		goto 42.6,23.4
		.from Barak Kodobane##3394
		.get Barak's Head|q 850/1
	step //557
		goto 46.1,26
		.' Kill centaurs
		.get 15 Centaur Bracers|q 855/1
	step //558
		goto 40.7,19.7
		.' Kill harpies
		.get 8 Witchwing Talon|q 867/1
	step //559
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Centaur Bracers##855
		..turnin Kolkar Leaders##850
		..accept Verog the Dervish##851
	step //560
		goto 51.4,30.1
		.talk Apothecary Helbrim##3390
		..turnin Fungal Spores##848
	step //561
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Harpy Raiders##867
		..accept Harpy Lieutenants##875
	step //562
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin The Zhevra##845
		..accept Prowlers of the Barrens##903
	step //563
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin The Forgotten Pools##870
		..accept The Stagnant Oasis##877
	step //564
		goto 41.5,28.7
		.from Savannah Prowler##3425+
		..get 7 Prowler Claws |q 903/1
	step //565
		goto 39.9,16.0
		.from Witchwing Slayer##3278+
		..get 6 Harpy Lieutenant Ring |q 875/1
	step //566
		'Make sure you have 12 Raptor Heads.  If not:
		.' Kill Sunscale raptors
		.get 12 Raptor Head |q 869/1 
	step //567
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //568
		goto 51.9,30.3
		.talk Gazrog##3464
		..turnin Raptor Thieves##869
		..accept Stolen Silver##3281
	step //569
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Harpy Lieutenants##875
		..accept Serena Bloodfeather##876
	step //570
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin Prowlers of the Barrens##903
		..accept Echeyakee##881	
	step //571
		goto 39.2,12.1
		.from Serena Bloodfeather##3452
		.get Serena's Head|q 876/1
	step //572
		goto 55.8,17.1
		.' Use the Horn of Echeyakee next to the bones |use Horn of Echeyakee##10327
		.from Echeyakee##3475
		.get Echeyakee's Hide|q 881/1
	step //573
		goto 56.9,24.4
		.kill 8 Razormane Defender |q 872/2
		.kill 8 Razormane Geomancer |q 872/1
	step //574
		goto 58.8,26.9
		.from Kreenig Snarlsnout##3438 |tip He walks around this area.
		.get Kreenig Snarlsnout's Tusk |q 872/3
	step //575
		goto 51.5,30.9
		.talk Thork##3429
		..turnin The Disruption Ends##872
	step //576
		goto 51.6,30.9
		.talk Darsok Swiftdagger##3449
		..turnin Serena Bloodfeather##876
		// ..accept Letter to Jin'Zil##1060
	step //577
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin Echeyakee##881
		..accept The Angry Scytheclaws##905
	step //578
		goto 52.9,41.8
		.' Kill centaurs until a centaur says 'I am slain! Summon Verog!' as it dies |tip Kill centaurs around this area until you see one say "I am slain! Summon Verog!", then manually skip to the next step.
		.from Verog the Dervish##3395
		.get Verog's Head|q 851/1
	step //579
		goto 55.6,42.8
		.' Click the Bubbling Fissure |tip Swim underwater towards the bubbles to this spot
		.' Test the Dried Seeds|goal Test the Dried Seeds|q 877/1
	step //580
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin The Stagnant Oasis##877
		..accept Altered Beings##880
	step //581
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Verog the Dervish##851
		..accept Hezrul Bloodmark##852
	step //582
		goto 48.6,40.5
		.from Hezrul Bloodmark##3396 |tip He walks around this oasis with 2 other centaurs.  You will probably need to search for him.
		.get Hezrul's Head |q 852/1
	step //583
		goto 47.9,40.3
		.from Oasis Snapjaw##3461+
		.get 8 Altered Snapjaw Shell |q 880/1
	step //584
		goto 57.4,51.9 |n
		.' The path to 'Stolen Silver' starts here |goto 57.4,51.9,0.5 |noway |c
	step //585
		goto 58,53.9
		.' Click the chest of Stolen Silver |tip It's a little grey chest on the ground.
		.get Stolen Silver|q 3281/1
	step //586
		goto 57.7,53.8
		.from Sunscale Scytheclaw##3256+
		.collect 3 Sunscale Feather##5165 |q 905
	step //587
		goto 53.1,52.5
		.from Bristleback Thornweaver##3261+
		.from Bristleback Water Seeker##3260+
		.get 60 Bristleback Quilboar Tusk |q 899/1
	step //588
		goto 49.3,50.3
		.' Click the Beaten Corpse and inspect it further |tip In a small camp of 2 houses to the side of the road.
		.' Find Mankrik's Wife|goal Find Mankrik's Wife|q 4921/1	
	step //589
		goto 52.0,46.5
		.' Click the Yellow Raptor Nest |tip It looks like a yellow glowing purple egg laying on the ground.
		.' Visit the Yellow Raptor Nest |q 905/2
	step //590
		goto 52.5,46.6
		.' Click the Red Raptor Nest |tip It looks like a red glowing purple egg laying on the ground.
		.' Visit the Red Raptor Nest |q 905/3
	step //591
		goto 52.6,46.1
		.' Click the Blue Raptor Nest |tip It looks like a blue glowing purple egg laying on the ground.
		.' Visit the Blue Raptor Nest |q 905/1
	step //592
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //593
		goto 51.9,30.3
		.talk Gazrog##3464
		..turnin Stolen Silver##3281
	step //594
		goto 52.2,31.0
		.talk Sergra Darkthorn##3338
		..turnin The Angry Scytheclaws##905
		..accept Jorn Skyseer##3261
	step //595
		goto 52.0,31.6
		.talk Mankrik##3432
		..turnin Consumed by Hatred##899
		..turnin Lost in Battle##4921
	step //596
		goto 52.3,31.9
		.talk Tonga Runetotem##3448
		..turnin Altered Beings##880
	step //597
		goto 45.4,28.4
		.talk Regthar Deathgate##3389
		..turnin Hezrul Bloodmark##852
		..accept Counterattack!##4021
	step //598
		goto 44.3,28.1
		.' Kill Kolkar mobs until Warlord Krom'zar spawns
		.from Warlord Krom'zar##9456
		.' Click Krom'zar's Banner |tip It's a tall red banner that spawns when Warlord Krom'zar dies.
		.get Piece of Krom'zar's Banner |q 4021/1
	step //599
		goto 45.3,28.4
		.talk Regthar Deathgate##3389
		..turnin Counterattack!##4021
	step //600
		goto 51.5,30.3
		.talk Devrak##3615
		.' Fly to Camp Taurajo |goto The Barrens,44.5,59.1,0.5 |noway |c
	step //601
		goto 44.6,59.2
		.talk Mangletooth##3430
		..accept Tribes at War##878
	step //602
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Jorn Skyseer##3261
		..accept Ishamuhale##882
	step //603
		goto 45.1,57.7
		.talk Tatternack Steelforge##3433
		..accept Weapons of Choice##893
	step //604
		goto 52.2,54.2
		.kill 6 Bristleback Water Seeker |q 878/1
		.kill 12 Bristleback Thornweaver |q 878/2
		.kill 12 Bristleback Geomancer |q 878/3
		.collect Blood Shard##5075 |future |q 5052
	step //605
		goto 53.2,51.5
		.from Zhevra Charger##3426+
		.collect Fresh Zhevra Carcass##10338 |q 882
	step //606
		goto 59.8,30
		.' Stand next to the bushes at the base of the tree with no leaves
		.' Use the Fresh Zhevra Carcass to summon Ishamuhale |use Fresh Zhevra Carcass##10338
		.from Ishamuhale##3257
		.get Ishamuhale's Fang|q 882/1
	step //607
		goto 63.1,37.2
		.talk Bragok##16227
		.' Fly to Camp Taurajo |goto The Barrens,44.5,59.1,0.5 |noway |c
	step //608
		goto 44.6,59.2
		.talk Mangletooth##3430
		..turnin Tribes at War##878
		..accept Blood Shards of Agamaggan##5052
		..turnin Blood Shards of Agamaggan##5052
		..accept Betrayal from Within##879
	step //609
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Ishamuhale##882
		..accept Enraged Thunder Lizards##907
	step //610
		goto 48.2,57.2
		.from Stormsnout##3240+
		.get 3 Thunder Lizard Blood |q 907/1
	step //611
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Enraged Thunder Lizards##907
		..accept Cry of the Thunderhawk##913
	step //612
		goto 46.4,56.9
		.from Thunderhawk Hatchling##3247+
		.get Thunderhawk Wings |q 913/1
	step //613
		goto 44.9,59.1
		.talk Jorn Skyseer##3387
		..turnin Cry of the Thunderhawk##913
		..accept Mahren Skyseer##874
	step //614
		goto 47.3,70.4
		.' Click the Silithid Mounds |tip They look like huge eggs leaking green ooze.
		.get 12 Silithid Egg|q 868/1
		.' You can find more Silithid Mounds around 44.9,69.3 |n
	step //615
		goto 46,79.1
		.talk Gann Stonespire##3341
		..accept Gann's Reclamation##843
	step //616
		goto 43.4,80.5
		.from Kuz##3436 |tip He wanders around this area.
		.get Kuz's Skull|q 879/1
		.from Razormane Pathfinder##3456+
		.get Razormane Backstabber|q 893/1
	step //617
		goto 42,78.9
		.from Razormane Seer##3458+
		.get Charred Razormane Wand|q 893/2
		.from Razormane Warfrenzy##3459+
		.get Razormane War Shield|q 893/3
	step //618
		goto 41.1,80.6|n
		.' The path up to 'Betrayal From Within' starts here|goto The Barrens,41.1,80.6,0.3|noway|c
	step //619
		goto 40.1,80.6
		.from Lok Orcbane##3435 |tip He's up the hill, inside a large hut.
		.get Lok's Skull|q 879/3
	step //620
		goto 43.9,83.3
		.from Nak##3434 |tip He walks around this area.
		.get Nak's Skull|q 879/2
	step //621
		goto 46.5,85.2
		.kill 15 Bael'dun Excavator |q 843/1
		.kill 5 Bael'dun Foreman |q 843/2
	step //622
		goto 47.3,84.9
		.from Prospector Khazgorm##3392 |tip He spawns in different spots in this area, so you may need to search for him.
		.get Khazgorm's Journal|q 843/3
	step //623
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Gann's Reclamation##843
		..accept Revenge of Gann (1)##846
	step //624
		goto 48.5,84.6
		.from Bael'dun Soldier##3376+, Bael'dun Rifleman##3377+, Bael'dun Officer##3378+
		.get 6 Nitroglycerin |q 846/1
		.get 6 Wood Pulp |q 846/2
		.get 6 Sodium Nitrate |q 846/3
	step //625
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Revenge of Gann (1)##846
		..accept Revenge of Gann (2)##849
	step //626
		goto 47,85.6
		.' Click the Bael Modan Flying Machine at the top of the small tower
		.' Destroy the Bael Modan Flying Machine |q 849/1
	step //627
		goto 46,79.1
		.talk Gann Stonespire##3341
		..turnin Revenge of Gann (2)##849
	step //628
		goto 45.1,57.7
		.talk Tatternack Steelforge##3433
		..turnin Weapons of Choice##893
	step //629
		goto 44.6,59.3
		.talk Mangletooth##3430
		..turnin Betrayal from Within##879
		..accept Betrayal from Within##906
	step //630
		goto 44.5,59.2
		.talk Omusa Thunderhorn##10378
		.' Fly to The Crossroads |goto The Barrens,51.5,30.4,0.5 |noway |c
	step //631
		goto 51.5,30.9
		.talk Thork##3429
		..turnin Betrayal from Within##906
	step //632
		goto 51.1,29.6
		.talk Korran##3428
		..turnin Egg Hunt##868
	step //633
		goto 51.5,30.3
		.talk Devrak##3615
		..' Fly to Ratchet |goto The Barrens,63.1,37.1,0.5 |noway |c
	step //634
		goto 65.8,43.9
		.talk Mahren Skyseer##3388
		..turnin Mahren Skyseer##874
		..accept Isha Awak##873
	step //635
		goto 63.4,53.8
		.from Isha Awak##3476+ |tip It's a big sea creature swimming underwater around this area.
		.get Heart of Isha Awak |q 873/1
	step //636
		goto 65.8,43.9
		.talk Mahren Skyseer##3388
		..turnin Isha Awak##873
	step //637
		'Hearth to the Crossroads|goto The Barrens,52.0,29.9,0.1|use hearthstone##6948|noway|c
	step //638
		











	












	step //639
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Orc Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
	description in order to be able to complete this guide section.
	description You cannot complete this section if you are an Orc.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are an Orc.
	step //2
		goto Icecrown,76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..accept Valiant Of Orgrimmar##13707
		..turnin Valiant Of Orgrimmar##13707
		..accept The Valiant's Charge##13697
	step //3
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13762 |daily |or
		..accept A Worthy Weapon##13763 |daily |or
		..accept The Edge Of Winter##13764 |daily |or
	step //4
		goto 76.5,24.5
		.talk Akinos##33405
		..accept A Valiant's Field Training##13765 |daily
	step //5
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..accept The Grand Melee##13767 |daily
		..accept At The Enemy's Gates##13856 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13762/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13763
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13763/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13764
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13764/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13765/1
	step //15
		goto 75.5,24.0
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
	step //16
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13767/1
	step //17
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13762
		..turnin A Worthy Weapon##13763
		..turnin The Edge Of Winter##13764
	step //18
		goto 76.5,24.5
		.talk Akinos##33405
		..turnin A Valiant's Field Training##13765
	step //19
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..turnin The Grand Melee##13767
		..turnin At The Enemy's Gates##13856
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Charge##13697
		..accept The Valiant's Challenge##13726
	step //22
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13726/1
	step //24
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Challenge##13726
	step //25
		'Congratulations, you are now a Champion of Orgrimmar! |tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Tauren Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
	description in order to be able to complete this guide section.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Tauren.
	step //2
		goto Icecrown,76.2,24.6
		.talk Runok Wildmane##33403
		..accept Valiant Of Thunder Bluff##13709
		..turnin Valiant Of Thunder Bluff##13709
		..accept The Valiant's Charge##13720
	step //3
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13773 |daily |or
		..accept A Worthy Weapon##13774 |daily |or
		..accept The Edge Of Winter##13775 |daily |or
	step //4
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..accept A Valiant's Field Training##13776 |daily
	step //5
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..accept The Grand Melee##13777 |daily
		..accept At The Enemy's Gates##13858 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13773/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13774
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13774/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13775
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13775/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13776/1
	step //15
		goto 75.5,24.3
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
	step //16
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13777/1
	step //17
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13773
		..turnin A Worthy Weapon##13774
		..turnin The Edge Of Winter##13775
	step //18
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..turnin A Valiant's Field Training##13776
	step //19
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..turnin The Grand Melee##13777
		..turnin At The Enemy's Gates##13858
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Charge##13720
		..accept The Valiant's Challenge##13728
	step //22
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13728/1
	step //24
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Challenge##13728
	step //25
		'Congratulations, you are now a Champion of Thunder Bluff! |tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Troll Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
	description in order to be able to complete this guide section.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Troll.
	step //2
		goto Icecrown,76.0,24.5
		.talk Zul'tore##33372
		..accept Valiant Of Sen'jin##13708
		..turnin Valiant Of Sen'jin##13708
		..accept The Valiant's Charge##13719
	step //3
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13768 |daily |or
		..accept A Worthy Weapon##13769 |daily |or
		..accept The Edge Of Winter##13770 |daily |or
	step //4
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..accept A Valiant's Field Training##13771 |daily
	step //5
		goto 75.9,24.4
		.talk Gahju##33545
		..accept The Grand Melee##13772 |daily
		..accept At The Enemy's Gates##13857 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13768/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13769
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13769/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13770
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13770/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13771/1
	step //15
		goto 75.6,23.8
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
	step //16
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13772/1
	step //17
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13768
		..turnin A Worthy Weapon##13769
		..turnin The Edge Of Winter##13770
	step //18
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..turnin A Valiant's Field Training##13771
	step //19
		goto 75.9,24.4
		.talk Gahju##33545
		..turnin The Grand Melee##13772
		..turnin At The Enemy's Gates##13857
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Charge##13719
		..accept The Valiant's Challenge##13727
	step //22
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13727/1
	step //24
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Challenge##13727
	step //25
		'Congratulations, you are now a Champion of Sen'jin! |tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Blood Elf Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
	description in order to be able to complete this guide section.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Blood Elf.
	step //2
		goto Icecrown,76.5,23.9
		.talk Eressea Dawnsinger##33379
		..accept Valiant Of Silvermoon##13711
		..turnin Valiant Of Silvermoon##13711
		..accept The Valiant's Charge##13722
	step //3
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13783 |daily |or
		..accept A Worthy Weapon##13784 |daily |or
		..accept The Edge Of Winter##13785 |daily |or
	step //4
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..accept A Valiant's Field Training##13786 |daily
	step //5
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..accept The Grand Melee##13787 |daily
		..accept At The Enemy's Gates##13859 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13783/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13784
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13784/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13785
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13785/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13786/1
	step //15
		goto 75.5,24.1
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
	step //16
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13787/1
	step //17
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13783
		..turnin A Worthy Weapon##13784
		..turnin The Edge Of Winter##13785
	step //18
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..turnin A Valiant's Field Training##13786
	step //19
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..turnin The Grand Melee##13787
		..turnin At The Enemy's Gates##13859
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Charge##13722
		..accept The Valiant's Challenge##13731
	step //22
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13731/1
	step //24
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Challenge##13731
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Undead Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
	description in order to be able to complete this guide section.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are an Undead.
	step //2
		goto Icecrown,76.5,24.2
		.talk Deathstalker Visceri##33373
		..accept Valiant Of Undercity##13710
		..turnin Valiant Of Undercity##13710
		..accept The Valiant's Charge##13721
	step //3
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13778 |daily |or
		..accept A Worthy Weapon##13779 |daily |or
		..accept The Edge Of Winter##13780 |daily |or
	step //4
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..accept A Valiant's Field Training##13781 |daily
	step //5
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..accept The Grand Melee##13782 |daily
		..accept At The Enemy's Gates##13860 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you're glad to help
		.get Ashwood Brand |q 13778/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13779
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13779/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13780
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13780/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13781/1
	step //15
		goto 75.6,23.9
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
	step //16
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13782/1
	step //17
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13778
		..turnin A Worthy Weapon##13779
		..turnin The Edge Of Winter##13780
	step //18
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..turnin A Valiant's Field Training##13781
	step //19
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..turnin The Grand Melee##13782
		..turnin At The Enemy's Gates##13860
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Charge##13721
		..accept The Valiant's Challenge##13729
	step //22
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13729/1
	step //24
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Challenge##13729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Orgrim's Hammer, Ymirheim, and Aldur'Thar regions of Icecrown.
	daily
	step //1
		map Icecrown
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..accept Drag and Drop##13353 |daily
		..accept Not a Bug##13365 |daily
		..accept That's Abominable!##13276 |daily
	step //2
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..accept Keeping the Alliance Blind##13331 |daily
	step //3
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..accept Blood of the Chosen##13330 |daily
	step //4
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..accept Slaves to Saronite##13302 |daily
	step //5
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..accept Volatility##13261 |daily
		..accept Retest Now##13357 |daily
	step //6
		goto Icecrown,55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13357
		.from Enslaved Minion##32260+
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13365
	step //7
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger |q 13365/1
	step //8
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass |q 13357/1
	step //9
		goto 49.4,39.3
		.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
		.' Shoot Down 6 Skybreaker Recon Fighters |q 13331/1
	step //10
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..accept Riding the Wavelength: The Bombardment##13406 |daily
	step //11
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13406
	step //12
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly behind you (you have to aim it)
		..kill 20 Gargoyle Ambusher |q 13406/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry |q 13406/1
		..kill 10 Bombardment Captain |q 13406/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //13
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Riding the Wavelength: The Bombardment##13406
		..accept Total Ohmage: The Valley of Lost Hope!##13376 |daily
	step //14
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13376
	step //15
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles and Frostbrood Sentries that fly behind you (you have to aim it)
		..kill 20 Gargoyle Ambusher |q 13376/2
		..kill 12 Frostbrood Sentry |q 13376/4
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry |q 13376/1
		..kill 12 Scourge War Machine |q 13376/3
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //16
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Total Ohmage: The Valley of Lost Hope!##13376
	step //17
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion|q 13353
	step //18
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13353/1
	step //19
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..accept Assault by Air##13310 |daily
	step //20
		goto 59.5,45.9
		.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
	step //21
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Kor'kron Infiltrators |q 13310/1
	step //22
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Air##13310
	step //23
		goto 58.2,45.9
		.talk Kor'kron Squad Leader##31833
		..accept Assault by Ground##13301 |daily
	step //24
		'Follow the Horde troops up the mountain and help them fight
		.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
	step //25
		'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
	step //26
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves |q 13302/1
	step //27
		'Go outside the cave|goto 57.0,57.3,0.3|c
	step //28
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13330/1
	step //29
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..accept King of the Mountain##13283 |daily
	step //30
		goto 51.9,57.6
		.' Click Thunderbomb's Jumpbot to get in the robot|invehicle |q 13283
	step //31
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
		.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Horde Battle Standard |q 13283/1
	step //32
		'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
	step //33
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..turnin King of the Mountain##13283
	step //34
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Ground##13301
	step //35
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13261
		.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13261
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13261
	step //36
		goto 68.8,67.5
		.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
		.' Conduct 3 Field Tests |q 13261/1
	step //37
		goto 69.8,62.4
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13276/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13276/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13276/3
	step //38
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Drag and Drop##13353
		..turnin Not a Bug##13365
		..turnin That's Abominable!##13276
	step //39
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..turnin Keeping the Alliance Blind##13331
	step //40
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..turnin Blood of the Chosen##13330
	step //41
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..turnin Slaves to Saronite##13302
	step //42
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Volatility##13261
		..turnin Retest Now##13357
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Shadowvault Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.
	daily
	step //1
		goto Icecrown,42.8,24.9
		.talk Baron Sliver##29804
		..accept Leave Our Mark##12995 |daily
	step //2
		goto 43.6,25.1
		.talk The Leaper##30074
		..accept Shoot 'Em Up##13069 |daily
	step //3
		goto 43.1,25.2
		.talk Vile##30216
		..accept Vile Like Fire!##13071 |daily
	step //4
		goto 33.0,23.9
		.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
	step //5
		'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
		.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
	step //6
		.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
	step //7
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
	step //8
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //9
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //10
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //11
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..turnin Leave Our Mark##12995
	step //12
		goto 43.6,25.1
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
	step //13
		goto 43.1,25.2
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\Death's Rise Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.
	daily
	step //1
		goto Icecrown,19.7,48.4
		.talk Setaal Darkmender##29396
		..accept From Their Corpses, Rise!##12813 |daily
	step //2
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..accept Intelligence Gathering##12838 |daily
	step //3
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..accept No Fly Zone##12815 |daily
	step //4
		goto 9.6,44.3
		.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
		.collect Scarlet Onslaught Trunk Key##40652+|n
		.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
		.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
		.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
		.get 5 Onslaught Intel Documents|q 12838/1
	step //5
		'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
		.' Ride a Bone Gryphon|invehicle|q 12815
	step //6
		goto 10.2,41.9
		.' Use your Bone Gryphon abilities to:
		.kill 10 Onslaught Gryphon Rider|q 12815/1
	step //7
		'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
	step //8
		goto Icecrown,19.7,48.4
		.talk Setaal Darkmender##29396
		..turnin From Their Corpses, Rise!##12813
	step //9
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..turnin Intelligence Gathering##12838
	step //10
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin No Fly Zone##12815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Icecrown\\The Sunreavers Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests for The Sunreavers faction
	description in the Argent Tournament Grounds area of Icecrown.
	daily
	step //1
		goto Icecrown,76.1,24.1
		.talk Girana the Blooded##34771
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..accept A Leg Up##14143 |daily |or 2
		..accept Rescue at Sea##14136 |daily |or 2
		..accept Stop The Aggressors##14140 |daily |or 2
		..accept The Light's Mercy##14144 |daily |or 2
		..accept You've Really Done It This Time, Kul##14142 |daily |or 2
	step //2
		goto 76.1,24.0
		.talk Tylos Dawnrunner##34914
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Breakfast Of Champions##14092 |daily |or
		..accept Gormok Wants His Snobolds##14141 |daily |or
		..accept What Do You Feed a Yeti, Anyway?##14145 |daily |or
	step //3
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 4 Black Cage Key##46895 |n
		.' Click Black Cages |tip They look like big sqaure cages around this area.
		.' Rescue 4 Captive Aspirants |q 14142/2
	step //4
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 1 Black Cage Key##46895 |q 14142
	step //5
		goto 60.8,23.2
		.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
		.' Rescue Kul the Reckless |q 14142/1
	step //6
		goto 74.3,10.0
		.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
		.collect 6 Fresh Chum##47036 |q 14145
	step //7
		goto 74.0,10.5
		.' Use the Fresh Chum in your bags |use Fresh Chum##47036
		.from North Sea Blue Shark##35061+ |tip They spawn underwater around this area when you use the Fresh Chum.
		.get 3 North Sea Shark Meat |q 14145/1
	step //8
		goto Hrothgar's Landing,43.6,54.0
		.kill 8 Kvaldir Berserker |q 14136/1
		.kill 3 Kvaldir Harpooner |q 14136/2
	step //9
		goto 43.3,27.5
		.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.get 10 Stolen Tallstrider Leg |q 14143/1
	step //10
		goto 46.5,32.8
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.' Kill 10 Kvaldir |q 14140/1
	step //11
		goto 46.5,32.8
		.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
		.' Administer 8 Last Rites |q 14144/1
	step //12
		goto The Storm Peaks,40.5,53.3
		.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
		.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
		.get 4 Jormungar Egg Sac |q 14092/1
	step //13
		goto 42.8,81.3
		.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
		.' Capture 8 Snowblind Followers |q 14141/1
	step //14
		goto Icecrown,76.1,24.1
		.talk Girana the Blooded##34771
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..turnin A Leg Up##14143
		..turnin Rescue at Sea##14136
		..turnin Stop The Aggressors##14140
		..turnin The Light's Mercy##14144
		..turnin You've Really Done It This Time, Kul##14142
	step //15
		goto 76.1,24.0
		.talk Tylos Dawnrunner##34914
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Breakfast Of Champions##14092
		..turnin Gormok Wants His Snobolds##14141
		..turnin What Do You Feed a Yeti, Anyway?##14145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Sholazar Basin\\Sholazar Basin Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the ability to complete daily quests
	description for The Oracles and Frenzyheart Tribe factions in Sholazar Basin. 
	step //1
		goto Sholazar Basin,50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step //2
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains |q 12654/1
	step //3
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step //4
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step //5
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
	step //6
		goto 57.5,73.3
		.kill 8 Hardknuckle Forager |q 12529/1
	step //7
		goto 61.1,71.7
		.kill 6 Hardknuckle Charger |q 12529/2
	step //8
		goto 66.9,73.2
		.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
		.' A Hardknuckle Matriarch will spawn eventually
		.kill 1 Hardknuckle Matriarch |q 12530/1
	step //9
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step //10
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
	step //11
		goto 59.6,75.8
		.kill 6 Sapphire Hive Wasp |q 12533/1
		.kill 9 Sapphire Hive Drone |q 12533/2
	step //12
		goto 59.4,79.1|n
		.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
	step //13
		'Follow the path down to 57.1,79.3 |goto 57.1,79.3
		.from Sapphire Hive Queen##28087
		.get Stinger of the Sapphire Queen |q 12534/1
	step //14
		'Go outside to 55.0,69.1|goto 55.0,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step //15
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step //16
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12532/1
	step //17
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step //18
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
	step //19
		goto 56.6,84.6
		.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
		.get 8 Skyreach Crystal Cluster |q 12535/1
	step //20
		goto 49.8,85
		.from Serfex the Reaver##28083
		.get Claw of Serfex |q 12531/1
	step //21
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step //22
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge |q 12536/1
	step //23
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
	step //24
		goto 45.4,37.2
		.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
		.' Click the Arranged Crystal Formation that appears
		.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
	step //25
		goto 45.5,39.8
		.' Kill 12 Mistwhisper Gorlocs |q 12538/1
	step //26
		'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step //27
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step //28
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.' Kill the crocodile that spawns
		.' Locate the Injured Rainspeaker Oracle |q 12540/1
	step //29
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step //30
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step //31
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
	step //32
		goto 57.5,52.4
		.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
	step //33
		goto 52.4,53.2
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.' Stand on top of the twinkles of light on the ground around this area
		.' Lafoo will dig up the treasure
		.' Click the random items that appear on the ground
		.get 6 Shiny Treasures |q 12572/1
		.kill 10 Emperor Cobra |q 12571/1
	step //34
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step //35
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
	step //36
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step //37
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step //38
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
	step //39
		goto 40.4,26.4
		.kill 8 Frenzyheart Spearbearer |q 12576/1
		.kill 6 Frenzyheart Scavenger |q 12576/2
	step //40
		goto 41.3,19.8
		.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
	step //41
		goto 41.6,19.5
		.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
		.get Mistwhisper Treasure |q 12575/2
	step //42
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step //43
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step //44
		goto 75.3,54.1
		.' Travel to Mosswalker Village |q 12578/1
	step //45
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step //46
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims |q 12580/1
	step //47
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step //48
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard |q 12579/1
	step //49
		goto 54.5,56.6
		'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624 
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
		..accept A Hero's Burden##12581
	step //50
		goto 70.8,58.7
		.' Enter the cave here
		.' Follow the path inside the cave up to 72.2,57.3
		.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
		.' Click Artruis's Phylactery that spawns after the fight
		..turnin A Hero's Burden##12581
		.' If you kill Zepik the Gorloc Hunter:
		..talk Zepik the Gorloc Hunter##28668
		...accept Frenzyheart Champion##12582 |daily
		...accept Return of the Lich Hunter##12692
		.' If you kill Jaloot:
		..talk Jaloot##28667
		...accept Hand of the Oracles##12689 |daily
		...accept Return of the Friendly Dryskin##12695
	step //51
		goto 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Return of the Friendly Dryskin##12695
		
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Sholazar Basin\\Frenzyheart Tribe Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests for the Frenzyheart Tribe faction in Sholazar Basin.
	daily
	step //1
		'If you are not allied with the Frenzyheart Tribe, you must fight an elite mob, Artruis the Heartless (on the next step of the guide) and, at the end of the fight, kill the Oracles mob, Jaloot, and you will become allied with the Frenzyheart Tribe. 
	step //2
		goto Sholazar Basin,70.8,58.7 |n
		.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
		only if rep ('Frenzyheart Tribe') < Friendly
	step //3
		'Follow the path inside the cave up to 72.2,57.3
		.from Artruis the Heartless##28659 |tip Kill Jaloot that spawns during the fight.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
		.talk Zepik the Gorloc Hunter##28668
		..accept Frenzyheart Champion##12582 |daily |instant
		..accept Return of the Lich Hunter##12692 |only if not ZGV.completedQuests[12692]
		only if rep ('Frenzyheart Tribe') < Friendly
	step //4
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Return of the Lich Hunter##12692 |only if not ZGV.completedQuests[12692]
		..accept Chicken Party!##12702 |daily
		.' Tell him you need to find Goregek
		.collect Goregek's Shackles##38619 |q 12702
	step //5
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Hero's Headgear##12758 |daily |or
		..accept Rejek: First Blood##12734 |daily |or
		..accept Strength of the Tempest##12741 |daily |or
		..accept The Heartblood's Strength##12732 |daily |or
	step //6
		goto 55.5,68.7
		.talk Vekgar##29146
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Kartak's Rampage##12703 |daily |or
		..accept Secret Strength of the Frenzyheart##12760 |daily |or
		..accept Tools of War##12759 |daily |or
	step //7
		'They are all around the village
		.' Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12702/1
	step //8
		goto 33.1,47.3
		.from Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
		.collect Venture Co. Explosives##39651 |q 12758
	step //9
		goto 26.0,35.4
		.from Stormwatcher##28877+
		.' Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
		.' Click the Stormwatcher's Head that spawns
		.get Stormwatcher's Head |q 12758/1
	step //10
		goto 59.7,70.9
		.from Hardknuckle Charger##28096+
		.' Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
		.' Blood your Blade on a Hardknuckle Charger |q 12734/2
	step //11
		goto 59.3,75.7
		.from Sapphire Hive Wasp##28086+
		.' Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
		.' Blood your Blade on a Sapphire Hive Wasp |q 12734/1
	step //12
		goto 43.1,40.4
		.from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
		.' Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
		.' Blood your Blade on 3 Mistwhisper Members |q 12734/3
	step //13
		goto 26.5,35.1
		.from Aqueous Spirit##28862+
		.collect 3 Essence of the Monsoon##39616 |q 12741
		.from Storm Revenant##28858+
		.collect 3 Essence of the Storm##39643 |q 12741
	step //14
		goto 22.4,33.8
		.' Stand right up next to the tall stone altar |tip You may even need to rub against, or stand next to it so that you are touching it.
		.' Feel the True Power of the Tempest |q 12741/1
	step //15
		goto 59.7,23.9
		.from Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
		.collect Matriarch's Heartblood##39573 |q 12732
	step //16
		goto 33.8,52.1
		.' Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
		.collect Suntouched Water##39576 |n
		.' Click the Suntouched Water in your bags |use Suntouched Water##39576
		.get Suntouched Heartblood |q 12732/1
	step //17
		goto 31.6,69.5
		.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		.collect Oracle Blood##39265 |q 12703
	step //18
		goto 23.3,83.0
		.' Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 |tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
		.' Take Control of Kartak |invehicle |c |q 12703
	step //19
		goto 30.7,78.0
		.' Use Kartak's abilities to kill Oracle mobs around this area
		.kill 50 Sparktouched Gorloc |q 12703/1
	step //20
		goto 30.1,70.7
		.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
		.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		.' Kill 30 Sparktouched Gorlocs |q 12760/1
	step //21
		goto 24.0,83.1
		.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
		.collect Spike Bomb##39697 |q 12759
		.collect Ensnaring Trap##39695 |q 12759
		.collect Volatile Trap##39696 |q 12759
	step //22
		goto 28.4,76.1
		.' Use your Spike Bomb |use Spike Bomb##39697
		.' Use your Ensnaring Trap |use Ensnaring Trap##39695
		.' Use your Volatile Trap |use Volatile Trap##39696
		.' Use your traps near Oracles mobs around this area
		.' Kill 50 Sparktouched Gorlocs |q 12759/1
	step //23
		goto 23.4,83.3
		.talk Shaman Jakjek##28106
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Kartak's Rampage##12703
		..turnin Secret Strength of the Frenzyheart##12760
		..turnin Tools of War##12759
	step //24
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Chicken Party!##12702
	step //25
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Hero's Headgear##12758
		..turnin Rejek: First Blood##12734
		..turnin Strength of the Tempest##12741
		..turnin The Heartblood's Strength##12732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Sholazar Basin\\The Oracles Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests for the The Oracles faction in Sholazar Basin.
	daily
	step //1
		'If you are not allied with the The Oracles, you must fight an elite mob, Artruis the Heartless (on the next step of the guide) and, at the end of the fight, kill the Frenzyheart Tribe mob, Zepik, and you will become allied with the The Oracles. 
	step //2
		goto Sholazar Basin,70.8,58.7 |n
		.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
		only if rep ('The Oracles') < Friendly
	step //3
		'Follow the path inside the cave up to 72.2,57.3
		.from Artruis the Heartless##28659 |tip Kill Zepik the Gorloc Hunter that spawns during the fight.  Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
		.talk Jaloot##28667
		..accept Hand of the Oracles##12689 |daily |instant
		..accept Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
		only if rep ('The Oracles') < Friendly
	step //4
		goto 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
		..accept Appeasing the Great Rain Stone##12704 |daily
		.' Tell him you need to find Lafoo
		.collect Lafoo's Bug Bag##38622 |q 12704
	step //5
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Cleansing Song##12735 |daily |or
		..accept Song of Fecundity##12737 |daily |or
		..accept Song of Reflection##12736 |daily |or
		..accept Song of Wind and Water##12726 |daily |or
	step //6
		goto 54.2,53.8
		.talk Oracle Soo-dow##29149
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Mastery of the Crystals##12761 |daily |or
		..accept Power of the Great Ones##12762 |daily |or
		..accept Will of the Titans##12705 |daily |or
	step //7
		goto 52.4,53.2
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
		.' Stand on top of the twinkles of light on the ground around this area
		.' Lafoo will dig up the treasure
		.' Click the random items that appear on the ground
		.get 6 Shiny Treasures|q 12704/1
	step //8
		goto 42.7,42.8
		.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		.kill Spirit of Atha |q 12735/1
	step //9
		goto 49.4,62.7
		.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		.kill Spirit of Ha-Khalan |q 12735/2
	step //10
		goto 48.8,70.5
		.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
		.kill Spirit of Koosu |q 12735/3
	step //11
		goto 26.2,37.1
		.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles| use Horn of Fecundity##39599
		.' Play the Song of Fecundity 8 Times |q 12737/1
	step //12
		goto 50.0,37.4
		.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
		.' Contemplate at the Glimmering Pillar |q 12736/1
	step //13
		goto 33.6,52.3
		.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
		.' Contemplate at the Suntouched Pillar |q 12736/4
	step //14
		goto 36.4,74.7
		.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
		.' Contemplate at the Mosslight Pillar |q 12736/2
	step //15
		goto 53.3,79.4
		.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
		.' Contemplate at the Skyreach Pillar |q 12736/3
	step //16
		goto 26.2,37.1
		.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
		.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
		.' Devour 3 Aqueous Spirits |q 12726/1
		.' Devour 3 Storm Revenants |q 12726/2
	step //17
		goto 33.0,75.7
		.' Click the Sparktouched Crystal Defenses |tip It lookes like a small bamboo chest sitting at the base of a tree, next to a small hut.
		.collect 1 Crystal of the Violent Storm##39694 |q 12761
		.collect 1 Crystal of Unstable Energy##39693 |q 12761
		.collect 1 Crystal of the Frozen Grip##39689 |q 12761
	step //18
		goto 22.2,78.0
		.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
		.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
		.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
		.' Use your crystals near Frenzyheart mobs around this area
		.' Kill 50 Frenzyheart Attackers |q 12761/1
	step //19
		goto 65.5,60.2
		.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
		.get Energized Polished Crystal |q 12762/2
	step //20
		goto 22.2,78.0
		.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
		.' Kill 30 Frenzyheart Attackers |q 12762/1
	step //21
		goto 22.9,76.0
		.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+ 
		.collect 1 Tainted Crystal##39266 |q 12705
	step //22
		goto 33.7,75.0
		.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
		.' Take control of Soo-holu |invehicle |c |q 12705
	step //23
		goto 22.2,78.0
		.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
		.kill 50 Frenzyheart Attacker |q 12705/1
	step //24
		goto 33.5,74.8
		.talk Lightningcaller Soo-met##28107
		..turnin Mastery of the Crystals##12761
		..turnin Power of the Great Ones##12762
		..turnin Will of the Titans##12705
	step //25
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Cleansing Song##12735
		..turnin Song of Fecundity##12737
		..turnin Song of Reflection##12736
		..turnin Song of Wind and Water##12726
	step //26
		goto 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Appeasing the Great Rain Stone##12704
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",[[
	author support@zygorguides.com
	description This guide section contains the quest path for the entire The Storm Peaks zone, which includes the pre-quests
	description to unlock the daily quests in the Brunnhildar Village, Dun Niffelem (The Sons of Hodir), and K3 regions of The Storm Peaks.
	step //1
		goto The Storm Peaks,41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Luxurious Getaway!##12853
		..accept Clean Up##12818
	step //2
		home K3
	step //3
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..accept They Took Our Men!##12843
		..accept Equipment Recovery##12844
	step //4
		goto 40.9,85.3
		.talk Ricket##29428
		..accept Reclaimed Rations##12827
		..accept Expression of Gratitude##12836
	step //5
		goto 40.8,84.5
		.talk Skizzle Slickslide##29721
		..fpath K3
	step //6
		goto 39.8,86.4
		.' Click the Charred Wreckage|tip They look like various metal parts on the ground around this area.
		.get 10 Charred Wreckage|q 12818/1
	step //7
		goto 35,83.8
		.kill Savage Hill gnolls|n
		.' Click Dried Gnoll Rations crates|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		.get 16 Dried Gnoll Rations|q 12827/1
	step //8
		goto 30.3,85.7
		.kill 1 Gnarlhide|q 12836/1|tip Standing in front of a tent.
	step //9
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Clean Up##12818
		..accept Just Around the Corner##12819
	step //10
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Reclaimed Rations##12827
		..turnin Expression of Gratitude##12836
		..accept Ample Inspiration##12828
	step //11
		goto 35.1,87.8
		.' Click Sparksocket's Tools|tip They look like a box of tools in the middle of the mine field.  Navigate carefully through the wide paths in the mine field to get here.  You may get blown around in order to get to this spot, but just keep trying.
		.get Sparksocket's Tools|q 12819/1
	step //12
		goto 41,86.4
		.talk Jeer Sparksocket##29431
		..turnin Just Around the Corner##12819
		..accept Slightly Unstable##12826
	step //13
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Slightly Unstable##12826
		..accept A Delicate Touch##12820
	step //14
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Attackers|q 12820/1
	step //15
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..accept Moving In##12829
		..accept Ore Repossession##12830
	step //16
		goto 41.7,80
		.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench
		.' Retrieve a bomb from the dispenser
		.collect 1 U.D.E.D.##40686|q 12828
	step //17
		'HURRY HURRY to 43.9,79.0|goto 43.9,79.0
		.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
		.' Click the Mammoth Meat on the ground
		.get 8 Hearty Mammoth Meat|q 12828/1
	step //18
		'Go into the cave to 40.4,77.8|goto 40.4,77.8
		.kill 12 Crystalweb Spiders|q 12829/1
	step //19
		goto 41.5,74.9
		.talk Injured Goblin Miner##29434
		..accept Only Partly Forgotten##12831
	step //20
		goto 44,75.9
		.kill Snowblind Diggers|n
		.get 5 Impure Saronite Ore|q 12830/1
	step //21
		goto 47.1,72.3
		.kill Icetip Crawlers|n|tip They are big purple spiders walking around this area inside the cave.
		.get 1 Icetip Venom Sac|q 12831/1
	step //22
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..turnin Only Partly Forgotten##12831
		..accept Bitter Departure##12832
	step //23
		goto 43.5,75.2
		.talk Injured Goblin Miner##29434
		..'Tell the miner you're ready
		.' Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1
	step //24
		'Fly up to 39.8,73.3|goto 39.8,73.3
		.kill Sifreldar Storm Maidens|n
		.collect 5 Cold Iron Key##40641|q 12843
		.' Click the Rusty Cages
		.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
		.' Click the K3 Equipment crates|tip The K3 Equipment crates look like wooden crates on the ground around town.
		.get 8 K3 Equipment|q 12844/1
	step //25
		goto 41.7,80
		.talk Tore Rumblewrench##29430
		..turnin Moving In##12829
		..turnin Ore Repossession##12830
	step //26
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin A Delicate Touch##12820
		..turnin Ample Inspiration##12828
		..turnin Bitter Departure##12832
		..accept Opening the Backdoor##12821
	step //27
		goto 41.1,86.1
		.talk Gretchen Fizzlespark##29473
		..turnin They Took Our Men!##12843
		..accept Leave No Goblin Behind##12846
		..turnin Equipment Recovery##12844
	step //28
		goto 45.1,82.4
		.' Click the Transporter Power Cell|tip It looks like a small red barrel.
		.get Transporter Power Cell|q 12821/2
	step //29
		goto 50.7,81.9
		.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
		.' Activate the Garm Teleporter|goal Garm Teleporter Activated|q 12821/1
	step //30
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Opening the Backdoor##12821
		..accept Know No Fear##12822
	step //31
		goto 50.0,81.8
		.talk Gino##29432
		..accept A Flawless Plan##12823
	step //32
		'Go inside the cave to 50.5,77.8|goto 50.5,77.8
		.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
		.kill Tormar Frostgut|q 12823/2
	step //33
		'Go inside the cave to 48.1,81.9|goto 48.1,81.9
		.kill 6 Garm Watcher|q 12822/1
		.kill 8 Snowblind Devotee|q 12822/2
	step //34
		'Go outside and go to 50.0,81.8|goto 50.0,81.8
		.talk Gino##29432
		..turnin A Flawless Plan##12823
		..accept Demolitionist Extraordinaire##12824
	step //35
		'Go outside and fly up into the cave to 42.8,68.9|goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin Leave No Goblin Behind##12846
		..accept The Crone's Bargain##12841
	step //36
		goto 44.2,68.9
		.from Overseer Syra##29518
		.get 1 Runes of the Yrkvinn|q 12841/1
	step //37
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin The Crone's Bargain##12841
		..accept Mildred the Cruel##12905
	step //38
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Mildred the Cruel##12905
		..accept Discipline##12906
	step //39
		goto 44.8,70.3
		.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
		.' Discipline 6 Exhausted Vrykul|goal 6 Exhausted Vrykul Disciplined|q 12906/1
	step //40
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Discipline##12906
		..accept Examples to be Made##12907
	step //41
		goto 45.4,69.1
		.kill 1 Garhal|q 12907/1|tip Standing off to the side of the path, he has red tattoos on his torso.
	step //42
		goto 44.4,68.9
		.talk Mildred the Cruel##29885
		..turnin Examples to be Made##12907
		..accept A Certain Prisoner##12908
	step //43
		goto 42.8,68.9
		.talk Lok'lira the Crone##29481
		..turnin A Certain Prisoner##12908
		..accept A Change of Scenery##12921
	step //44
		'Follow the path in the mine east out to the other side to 47.5,69.1|goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin A Change of Scenery##12921
		..accept Is That Your Goblin?##12969
	step //45
		goto 48.2,69.8
		.talk Agnetta Tyrsdottar##30154
		..'Tell her to skip the warmup
		.kill 1 Agnetta Tyrsdottar|q 12969/1
	step //46
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Is That Your Goblin?##12969
		..accept The Hyldsmeet##12970
	step //47
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..'Ask her about her proposal
		.' Listen to Lok'lira's proposal|goal Listen to Lok'lira's proposal|q 12970/1
	step //48
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin The Hyldsmeet##12970
		..accept Taking on All Challengers##12971
	step //49
		goto 51,66.4
		.talk Victorious Challenger##30012
		.kill 6 Victorious Challenger|q 12971/1
	step //50
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Taking on All Challengers##12971
		..accept You'll Need a Bear##12972
	step //51
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..accept Off With Their Black Wings##12942
		..accept Yulda's Folly##12968
	step //52
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..accept Aberrations##12925
	step //53
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin You'll Need a Bear##12972
		..accept Going Bearback##12851
	step //54
		goto 53.1,65.7
		.' Click Icefang to ride him|tip Standing down the hill, Icefang is a white bear.
		.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
		.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
		.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
	step //55
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Going Bearback##12851
		..accept Cold Hearted##12856
	step //56
		'Fly to 63.9,62.5|goto 63.9,62.5
		.' Click the Captive Proto-Drakes to ride them|tip The Captive Proto-Drakes are chained up flying in the sky.
		.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
		.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
		.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
		.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
	step //57
		goto 53.1,65.7
		.talk Brijana##29592
		..turnin Cold Hearted##12856
		..accept Deemed Worthy##13063
	step //58
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Deemed Worthy##13063
		..accept Making a Harness##12900
	step //59
		goto 47.9,74.7
		.kill Icemane Yetis|n
		.get 3 Icemane Yeti Hide|q 12900/1
	step //60
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Making a Harness##12900
		..accept The Last of Her Kind##12983
		..accept The Slithering Darkness##12989
	step //61
		goto 55.8,63.9
		.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
	step //62
		'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
		.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
		.' The bear runs back to Brunnhildar Village
		.' Rescue the Icemaw Matriarch|goal Icemaw Matriarch Rescued|q 12983/1
	step //63
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Last of Her Kind##12983
		..accept The Warm-Up##12996
		..turnin The Slithering Darkness##12989
	step //64
		'Use your Reins of the Icemaw Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
	step //65
		goto 50.8,67.7
		.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
		.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
	step //66
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Warm-Up##12996
		..accept Into the Pit##12997
	step //67
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //68
		goto 49.1,69.4
		.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42481
		.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
		.kill 6 Hyldsmeet Warbear|q 12997/1
	step //69
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //70
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Into the Pit##12997
		..accept Prepare for Glory##13061
	step //71
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Prepare for Glory##13061
		..accept Lok'lira's Parting Gift##13062
	step //72
		goto 50.9,65.6
		.talk Gretta the Arbiter##29796
		..turnin Lok'lira's Parting Gift##13062
		..accept The Drakkensryd##12886
	step //73
		'You fly off on a drake and start flying in circles around a tower:
		.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
		.kill Hyldsmeet Drakeriders|n
		.' Repeat this process 9 more times
		.' Defeat 10 Hyldsmeet Drakeriders|goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
	step //74
		'They look like light fixtures on the side of the stone columns.
		.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
	step //75
		goto 33.4,58
		.talk Thorim##29445
		..turnin The Drakkensryd##12886
		..accept Sibling Rivalry##13064
	step //76
		goto 33.4,58
		.talk Thorim##29445
		..'Ask him what became of Sif
		.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
	step //77
		goto 33.4,58
		.talk Thorim##29445
		..turnin Sibling Rivalry##13064
		..accept Mending Fences##12915
	step //78
		goto 27.3,63.7
		.kill 12 Nascent Val'kyr|q 12942/1
		.kill Valkyrion Aspirants|n
		.collect 6 Vial of Frost Oil##41612|q 12925
	step //79
		goto 23.7,58.3
		.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
		.' Try to get 6 at a time
		.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
	step //80
		goto 24,61.8
		.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
		.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
		..accept Valkyrion Must Burn##12953
	step //81
		goto 26,59.8
		.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
		.' Use the Flaming Harpoon abilitiy on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
		.' Start 6 Fires|goal 6 Fires Started|q 12953/1
	step //82
		'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
	step //83
		'Hearth to K3|goto 41.0,85.9,0.5|use hearthstone##6948|noway|c
	step //84
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Demolitionist Extraordinaire##12824
		..turnin Know No Fear##12822
		..accept Overstock##12833
	step //85
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader|q 12833/1
	step //86
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Overstock##12833
	step //87
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..turnin Aberrations##12925
	step //88
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..turnin Off With Their Black Wings##12942
		..turnin Yulda's Folly##12968
		..turnin Valkyrion Must Burn##12953
	step //89
		goto 75.8,63
		.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
		.' Help the dwarves kill them
		.kill 5 Stormforged Iron Giants|q 12915/2
		.' Get Slag Covered Metal
		.' Click the Slag Covered Metal in your bags|use Slag Covered Metal##41556
		..accept The Refiner's Fire##12922
	step //90
		goto 75.4,63.5
		.kill Seething Revenants|n
		.get 10 Furious Spark|q 12922/1
	step //91
		goto 77.2,62.9
		.' Click a Granite Boulder and get one|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
		.' Help the dwarves kill him
		.kill 1 Fjorn|q 12915/1
	step //92
		goto 77.2,62.9
		.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
		..turnin The Refiner's Fire##12922
		..accept A Spark of Hope##12956
	step //93
		goto 33.4,58
		.talk Thorim##29445
		..turnin A Spark of Hope##12956
		..turnin Mending Fences##12915
		..accept Forging an Alliance##12924
	step //94
		goto 62.6,60.9
		.talk Halvdan##32571
		..fpath Dun Niffelem
	step //95
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept You Can't Miss Him##12966
	step //96
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin You Can't Miss Him##12966
		..accept Battling the Elements##12967
	step //97
		goto 75.7,63.9
		.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
	step //98
		goto 76.7,63.4
		.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
		.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
		.kill 10 Seething Revenants|q 12967/1
	step //99
		'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|c
	step //100
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin Battling the Elements##12967
	step //101
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging an Alliance##12924
		..accept A New Beginning##13009
	step //102
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981
	step //103
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept In Memoriam##12975
	step //104
		goto 69.7,60.2
		.kill Brittle Revenants|n
		.collect 6 Essence of Ice##42246|q 12981
	step //105
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap|q 12981/1
	step //106
		goto 72.1,49.4
		.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
		.get 8 Horn Fragment|q 12975/1
		.' Kill mobs in the area.
		.collect 10 Relic of Ulduar##42780|q 12975
	step //107
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin In Memoriam##12975
		..accept A Monument to the Fallen##12976
	step //108
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin A Monument to the Fallen##12976
	step //109
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //110
		goto 63.2,63.2
		.talk Njormeld##30127
		..accept Forging a Head##12985
	step //111
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977
	step //112
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept Jormuttar is Soo Fat...##13011
	step //113
		goto 69.7,58.9
		.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
		.kill the Stormforged Ambushers that spawn|n
		.get 8 Stormforged Eye|q 12985/1
	step //114
		goto 72.1,51.8
		.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
		.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
		.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
	step //115
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging a Head##12985
		..accept Mounting Hodir's Helm##12987
	step //116
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //117
		goto 64.3,59.2
		.' Fly to the tip of this ice spike
		.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
		.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
	step //118
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Mounting Hodir's Helm##12987
	step //119
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006
	step //120
		goto 55.6,63.4
		.kill Viscous Oils inside this cave|n
		.get 5 Viscous Oil|q 13006/1
		.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
		.collect 1 Icemaw Bear Flank##42733|q 13011
	step //121
		goto 54.7,60.8
		.' Follow the path inside the cave to this spot
		.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
		.kill 1 Jormuttar|q 13011/1
	step //122
		'Go outside and go to 33.4,58.0|goto 33.4,58.0
		.talk Thorim##29445
		..turnin A New Beginning##13009
		..accept Veranus##13050
	step //123
		goto 43.7,67.4
		.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
		.get 5 Small Proto-Drake Egg|q 13050/1
		.' You can find more Small Proto-Drake Eggs at 45.2,66.9|n
	step //124
		goto 33.4,58
		.talk Thorim##29445
		..turnin Veranus##13050
		..accept Territorial Trespass##13051
	step //125
		goto 38.7,65.6
		.' Stand in this big nest
		.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
		.' Lure Veranus|goal Veranus Lured|q 13051/1
	step //126
		goto 33.4,58
		.talk Thorim##29445
		..turnin Territorial Trespass##13051
		..accept Krolmir, Hammer of Storms##13010
	step //127
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //128
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin Jormuttar is Soo Fat...##13011
	step //129
		goto 65.4,60.2
		.talk King Jokkum##30105
		..'Ask him what has become of Krolmir
		.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
	step //130
		goto 71.4,48.8
		.talk Thorim##30390
		..turnin Krolmir, Hammer of Storms##13010
		..accept The Terrace of the Makers##13057
	step //131
		goto 65.4,50.6
		.talk Hyeyoung Parka##29762
		..fpath Camp Tunka'lo
	step //132
		goto 65.7,51.4
		.talk Xarantaur##30381
		..accept The Witness and the Hero##13034
	step //133
		goto 65.8,50.4
		.' Click the First History Scroll|tip It looks like a white scroll hanging on the wall, with brown symbols on it.
		.' Read the First History Scroll |q 13034/1
	step //134
		goto 66.8,50.1
		.' Click the Second History Scroll|tip It looks like a white long scroll hanging on the right side of the entrance to this house, with brown symbols on it.
		.' Read the Second History Scroll |q 13034/2
	step //135
		goto 67.5,50.6
		.' Click the Third History Scroll|tip It looks like a white scroll hanging on the right side of the entrance to this house, with a gray border and brown symbols on it.
		.' Read the Third History Scroll |q 13034/3
	step //136
		goto 65.7,51.4
		.talk Xarantaur##30381
		..turnin The Witness and the Hero##13034
		..accept Memories of Stormhoof##13037
	step //137
		'The entrance to the cave starts here |goto 62.5,41.5,0.5 |c
	step //138
		goto 61.2,39.0
		.talk Chieftain Swiftspear##30395
		.' Ask him what he remembers of his brother |q 13037/1
	step //139
		goto 61.2,39.0
		.talk Chieftain Swiftspear##30395
		..accept Distortions in Time##13038
	step //140
		 goto 61.7,39.8
		.' Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
		.' Close 4 Frostfloe Rifts |q 13038/1
	step //141
		'Leave the cave |goto 62.5,41.5,0.5 |c
	step //142
		goto 65.7,51.4
		.talk Xarantaur##30381
		..turnin Memories of Stormhoof##13037
		..turnin Distortions in Time##13038
		..accept Where Time Went Wrong##13048
		..accept The Hero's Arms##13049
	step //143
		'The entrance to the cave starts here |goto 67.0,44.9,0.5 |c
	step //144
		goto 67.2,44.3
		.from Scion of Storm##30184+
		.get 1 Stormhoof's Spear |q 13049/1
		.get 1 Stormhoof's Mail |q 13049/2
		.' Click Taunka Artifacts |tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
		.' Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1
	step //145
		'Leave the cave |goto 67.0,44.9,0.5 |c
	step //146
		goto 65.7,51.4
		.talk Xarantaur##30381
		..turnin Where Time Went Wrong##13048
		..turnin The Hero's Arms##13049
		..accept Changing the Wind's Course##13058
	step //147
		goto 64.9,48.1
		.' Use The Lorehammer in your bags |use The Lorehammer##42918
		.' Go back in time and become Stormhoof |invehicle |q 13058
	step //148
		goto 64.5,47.5
		.' Use your Stormhoof abilities to fight and kill The North Wind |tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you.  Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
		.' When The North Wind is dazed, go to 64.6,46.9
		.' Click the Horn of Elemental Fury |tip It looks like a spiral white horn sitting on the ground.
		.' Restore the True Timeline |q 13058/1
	step //149
		goto 65.7,51.4
		.talk Xarantaur##30381
		..turnin Changing the Wind's Course##13058
	step //150
		goto 56.2,51.3
		.talk Thorim##30295
		..turnin The Terrace of the Makers##13057
		..accept The Earthen Oath##13005
		..accept Loken's Lackeys##13035
	step //151
		goto 57.3,46.7
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.' Fight mobs around this area
		.kill 7 Iron Sentinel|q 13005/1
		.kill 20 Iron Dwarf Assailant|q 13005/2
	step //152
		'Fly up into the building to 55.3,43.3|goto 55.3,43.3
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
	step //153
		goto 48.6,45.6
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
	step //154
		goto 45,38.1
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
	step //155
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Earthen Oath##13005
		..turnin Loken's Lackeys##13035
		..accept The Reckoning##13047
	step //156
		goto 35.9,31.5
		.talk Thorim##30399
		..'Tell him you are with him
		.' Witness the Reckoning|goal Witness the Reckoning|q 13047/1	
	step //157
		goto 36.2,49.4
		.talk Kabarg Windtamer##29757
		..fpath Grom'arsh Crash-Site
	step //158
		goto 36.4,49.1
		.talk Bloodguard Lorga##30247
		..accept The Missing Tracker##13054
		..accept Emergency Measures##13000
	step //159
		goto 37.0,49.5
		.talk Olut Alegut##30472
		..accept Ancient Relics##12882
	step //160
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..accept The Missing Bronzebeard##12895
	step //161
		home Grom'arsh Crash-Site
	step //162
		'Go inside the cave to 48.5,54.3|goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin The Missing Tracker##13054
		..accept Cave Medicine##13055
	step //163
		goto 48.3,53.8
		.collect 8 Cave Mushroom##42926|q 13055|tip They look like two mushrooms on the ground and are found throughout the cave.
		.kill Infesting Jormungars|n
		.collect 1 Toxin Gland##42927|q 13055
	step //164
		goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin Cave Medicine##13055
		..accept There's Always Time for Revenge##13056
	step //165
		'Go deeper into the cave to 48.2,48.1|goto 48.2,48.1
		.from Cavedweller Worgs|n
		..collect 6 Worg Fur##42510|q 13056
		..kill Gimorak|q 13056/1|tip He patrols around the big room.
	step //166
		goto 48.5,54.3
		.talk Tracker Val'zij##30469
		..turnin There's Always Time for Revenge##13056
	step //167
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin The Reckoning##13047
	step //168
		goto 36.1,64.1
		.' Click the Disturbed Snow pile
		..collect Burlap-Wrapped Note##40947|q 12895
	step //169
		goto 36.4,49.1
		.talk Bloodguard Lorga##30247
		..turnin Emergency Measures##13000
	step //170
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..turnin The Missing Bronzebeard##12895
		..accept The Nose Knows##12909
	step //171
		goto 40.8,51.2
		.talk Khaliisi##29855
		..turnin The Nose Knows##12909
		..accept Sniffing Out the Perpetrator##12910
	step //172
		.' Click Frostbite to ride him.
		.' Use the abilities on your hotbar to keep the dwarves away from you
		.' Track scent to its source|goal Track scent to its source|q 12910/1
	step //173
		goto 48.5,60.8
		.kill Tracker Thulin|q 12910/1|tip He's sitting on the ground inside this small cave.
		.collect Brann's Communicator##40971|q 12920,12926,12927,13416,12928 // multiple q
	step //174
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Sniffing Out the Perpetrator##12910
		..accept Speak Orcish, Man!##12913
	step //175
		goto 37.3,49.7
		.talk Moteha Windborn##29937
		..turnin Speak Orcish, Man!##12913
		..accept Speaking with the Wind's Voice##12917
	step //176
		goto 28.5,48.5
		.' Kill Stormriders around this area, they drop Voices of the Wind and Relics of Ulduar.
		..collect 5 Voice of the Wind##41514|q 12917
		..collect 10 Relic of Ulduar##42780|q 12882
	step //177
		goto 37.0,49.5
		.talk Olut Alegut##30472
		..turnin Ancient Relics##12882
	step //178
		goto 37.3,49.7
		.talk Moteha Windborn##29937
		..turnin Speaking with the Wind's Voice##12917
	step //179
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..accept Catching up with Brann##12920
	step //180
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		.' Speak with Brann |q 12920/1
	step //181
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..turnin Catching up with Brann##12920
		..accept Pieces of the Puzzle##12926
	step //182
		goto 37.6,43.5
		.kill Library Guardians|n
		.collect 6 Inventor's Disk Fragment##41130|n
		.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
		.get The Inventor's Disk|q 12926/1
	step //183
		..'Click Brann's Communicator|use Brann's Communicator##40971
		..talk Brann Bronzebeard##29579
		..turnin Pieces of the Puzzle##12926
		..accept Data Mining##12927
	step //184
		goto 38.5,44.2
		.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
		.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12927/1
	step //185
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Data Mining##12927
		..accept The Library Console##13416
	step //186
		goto 37.4,46.8
		.' Click the Inventor's Library Console|tip Inside the building, all the way at the end of the hall.
		..turnin The Library Console##13416
		..accept Norgannon's Shell##12928
	step //187
		'Click the Charged Disk in your bags|use Charged Disk##44704
		.kill Archivist Mechaton that spawns|n
		.get Norgannon's Shell|q 12928/1
	step //188
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Norgannon's Shell##12928
		..accept Going After the Core##13273
		..accept The Earthen of Ulduar##12929
	step //189
		goto 59.2,51.5
		.' Click Prospector Soren's Maps |tip It looks like a tan scroll laying on a wooden box, next to a bonfire.
		.get Prospector Soren's Maps |q 13273/2
	step //190
		goto 59.8,52.6
		.' Click Prospector Khrona's Notes |tip It looks like an open book laying on a wooden box, next to a tent.
		.get Prospector Khrona's Notes |q 13273/1
	step //191
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Going After the Core##13273
		..accept The Core's Keeper##13274
	step //192
		'The entrance to the big round metal door starts here |goto 56.5,58.5,0.5 |c |tip It's a big metal hole on in the side of the mountain.
	step //193
		goto 56.4,52.1
		.from Athan##31798
		.get Norgannon's Core |q 13274/1
	step //194
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin The Core's Keeper##13274
		..accept Forging the Keystone##13285
	step //195
		'Go outside |goto 56.5,58.5,0.5 |c
	step //196
		goto 45.5,49.5
		.talk Brann Bronzebeard##31810
		..' Tell him you're ready to make the keystone
		.' Help Brann Create the Keystone |q 13285/1
	step //197
		goto 37.3,49.7
		.talk Boktar Bloodfury##29651
		..turnin Forging the Keystone##13285
	step //198
		goto 30.6,36.3
		.talk Breck Rockbrow##29950
		..fpath Bouldercrag's Refuge
	step //199
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Earthen of Ulduar##12929
		..accept Rare Earth##12930
	step //200
		goto 28.9,36.7
		.from Stormforged Raider##29377+
		.get 5 Frostweave Cloth |q 12930/2
	step //201
		goto 28.3,29.4
		.' Click the Enchanted Earth|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliffside.
		.get 7 Enchanted Earth|q 12930/1
	step //202
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Rare Earth##12930
		..accept Fighting Back##12931
		..accept Relief for the Fallen##12937
	step //203
		home Bouldercrag's Refuge
	step //204
		goto 28.1,36.7
		.from Stormforged Raiders##29377+, Stormforged Reavers##29382+
		.kill 10 Stormforged Attacker |q 12931/1
		.' Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
		.' Heal 8 Fallen Earthen Defenders |q 12937/1
	step //205
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Fighting Back##12931
		..turnin Relief for the Fallen##12937
		..accept Slaves of the Stormforged##12957
		..accept The Dark Ore##12964
	step //206
		'Go inside the mine to 27.5,49.7|goto 27.5,49.7
		.kill 3 Stormforged Taskmaster|q 12957/2
		.talk Captive Mechagnome##29384
		.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
		.' Click Ore Carts|tip They look like carts with ore in them.
		.get 5 Dark Ore Sample|q 12964/1
	step //207
		'Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Slaves of the Stormforged##12957
		..turnin The Dark Ore##12964
		..accept The Gifts of Loken##12965
	step //208
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..accept Facing the Storm##12978
	step //209
		goto 24,42.6
		.' Right-click Loken's Fury|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Fury |q 12965/1
	step //210
		goto 26.2,47.7
		.' Right-click Loken's Power|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Power |q 12965/2
	step //211
		goto 24.6,48.4
		.' Right-click Loken's Favor|tip It looks like a glowing ball on a pedestal inside this building.
		.' Destroy Loken's Favor |q 12965/3
	step //212
		goto 25,42.9
		.from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
		.kill 10 Nidavelir Stormforged|q 12978/1
		.from Stormforged War Golem##29380+
		.collect 1 Dark Armor Plate##42203|n
		.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
		..accept Armor of Darkness##12979
	step //213
		goto 28.7,43.3
		.from Stormforged War Golem##29380+
		..get 4 Dark Armor Sample |q 12979/1
	step //214
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Gifts of Loken##12965
	step //215
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..turnin Facing the Storm##12978
		..turnin Armor of Darkness##12979
		..accept The Armor's Secrets##12980
	step //216
		'The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c
	step //217
		goto 32.0,40.7
		.talk Attendant Tock##30190
		.' Tell him you found a strange armor plate
		.' Investigate the Armor Plate |q 12980/1
	step //218
		'Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c
	step //219
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..turnin The Armor's Secrets##12980
	step //220
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..accept Valduran the Stormborn##12984
	step //221
		goto 24.4,52.1
		.' Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
		.' Help fight Valduran the Stormborn
		.kill Valduran the Stormborn |q 12984/1
	step //222
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Valduran the Stormborn##12984
		..accept Destroy the Forges!##12988
	step //223
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..accept Hit Them Where it Hurts##12991
	step //224
		goto 29.0,45.8
		.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		.' Damage the North Lightning Forge |q 12988/1
	step //225
		goto 29.5,45.9
		.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		.' Damage the Central Lightning Forge |q 12988/2
	step //226
		goto 30.2,46.1
		.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
		.' Damage the South Lightning Forge |q 12988/3
	step //227
		goto 30.0,46.3
		.kill 10 Stormforged Artificer |q 12991/1
	step //228
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Destroy the Forges!##12988
	step //229
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..turnin Hit Them Where it Hurts##12991
	step //230
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..accept A Colossal Threat##12993
	step //231
		goto 28.9,44.1
		.' Click the Colossus Attack Specs |tip It looks like a white scroll laying on a small square metal table.
		.get Click the Colossus Attack Specs |q 12993/1
	step //232
		goto 29.9,45.8
		.' Click the Colossus Defense Specs |tip It looks like a white scroll laying on an anvil under a white canopy.
		.get Click the Colossus Defense Specs |q 12993/2
	step //233
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin A Colossal Threat##12993
		..accept The Heart of the Storm##12998
	step //234
		'The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c |tip It's a big metal hole on in the side of the mountain.
	step //235
		goto 36.2,60.9
		.' Click the Heart of the Storm |tip Enter the big round metal door and fly down into the hallway, then follow the hallway to this spot.  It looks like a big blue orb, sitting in a three-pronged metal stand.
		.' Attempt to Secure the Heart of the Storm |q 12998/1
	step //236
		'Go outside |goto 32.4,63.9,0.5 |c
	step //237
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Heart of the Storm##12998
		..accept The Iron Colossus##13007
	step //238
		goto 27.2,35.9
		.' Click the Jormungar Control Orb |tip It looks like a white glowing ball floating with a golden ring around it.
		.' Start controlling a Jormungar |invehicle |c |q 13007
	step //239
		goto 27.2,42.0
		.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
		.kill Iron Colossus |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
	step //240
		'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
	step //241
		goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Iron Colossus##13007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Friendly)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Honored reputation with The Sons of Hodir.
	description You must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests) guide section,
	description as it contains pre-quests to unlock The Sons of Hodir up to Friendly reputation,
	description before having access to the quests in this guide section.
	daily
	step //1
		goto The Storm Peaks,64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //2
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //3
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //4
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //5
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //6
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //7
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //8
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //9
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //10
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //11
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //12
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //13
		'Repeat this process daily until you are Honored with The Sons of Hodir, then go to the The Sons of Hodir (Honored Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Honored) - Pre-Quest",[[
	author support@zygorguides.com
	description This guide section will walk you through completing a pre-quest, unlocked by earning
	description Honored reputation with The Sons of Hodir faction, that unlocks a daily quest.
	description You must have completed the The Sons of Hodir Reputation (Friendly) guide section
	description in order to have access to the quest in this guide section.
	step //1
		goto The Storm Peaks,64.8,59.1
		.talk Lorekeeper Randvir##30252
		..accept Raising Hodir's Spear##13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
	step //2
		goto 59.0,61.2
		.from Stoic Mammoth##30260+
		..get 3 Stoic Mammoth Hide |q 13001/2
	step //3
		'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
	step //4
		goto 54.7,60.8
		.' Click Everfrost Shards |tip They look like greenish blue spikes coming out of this frozen pond in the back of the cave.
		.get 3 Everfrost Shard |q 13001/1
	step //5
		'Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
	step //6
		goto 64.8,59.1
		.talk Lorekeeper Randvir##30252
		..turnin Raising Hodir's Spear##13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Honored)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Revered reputation with The Sons of Hodir.
	description You must have completed the The Sons of Hodir Reputation (Friendly) guide section and
	description the The Sons of Hodir Reputation (Honored) - Pre-Quest guide section
	description before having access to the quests in this guide section.
	daily
	step //1
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //2
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //3
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //4
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //5
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //6
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1	
	step //7
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //8
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //9
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //10
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //11
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //12
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //13
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //14
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //15
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //16
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //17
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //18
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //19
		'Repeat this process until you are Revered with The Sons of Hodir, then go to the The Sons of Hodir (Revered Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Revered)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Exalted reputation with The Sons of Hodir.
	description You must have completed the The Sons of Hodir Reputation (Honored) guide section
	description before having access to the quests in this guide section.
	daily
	step //1
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //2
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //3
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //4
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046 |daily
	step //5
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //6
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //7
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1	
	step //8
		goto 56.4,65.0
		.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		.' Feed Arngrim's Spirit 5 Times |q 13046/1
	step //9
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //10
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //11
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //12
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //13
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //14
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046
	step //15
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //16
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //17
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //18
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //19
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //20
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //21
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //22
		'You can repeat this process until you are Exalted with The Sons of Hodir.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\Brunnhildar Village Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
	daily
	step //1
		goto The Storm Peaks,50.9,65.6
		.talk Gretta the Arbiter##29796
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept Back to the Pit##13424 |daily |or
		..accept Defending Your Title##13423 |daily |or
		..accept Maintaining Discipline##13422 |daily |or
		..accept The Aberrations Must Die##13425 |daily |or
	step //2
		goto 49.4,67.6
		.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Icemaw Matriarch##42499
		.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
		.kill 6 Hyldsmeet Warbear|q 13424/1
	step //3
		goto 50.4,67.5
		.talk Victorious Challenger##30012
		.kill 6 Victorious Challenger|q 13423/1
	step //4
		'The entrance to the Forlorn Mine is here |goto 47.1,68.5,0.5 |c |q 13422
	step //5
		goto 44.9,70.1
		.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
		.' Discipline 6 Exhausted Vrykul |q 13422/1
	step //6
		'Leave the mine |goto 47.1,68.5,0.5 |c |q 13422
	step //7
		goto 27.3,63.7
		.from Valkyrion Aspirant##29569+
		.collect 6 Vial of Frost Oil##41612 |q 13425
	step //8
		goto 23.7,58.3
		.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612 |tip They look like brown spiked eggs sitting in the yellow water around this area.
		.' Try to get 6 at a time
		.' Destroy 30 Plagued Proto-Drake Eggs |q 13425/1
	step //9
		goto 50.9,65.6
		.talk Gretta the Arbiter##29796
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin Back to the Pit##13424
		..turnin Defending Your Title##13423
		..turnin Maintaining Discipline##13422
		..turnin The Aberrations Must Die##13425
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
	description If you are not Revered with The Sons of Hodir, you will not be able to accept some of the quests in this guide section.
	description To become Revered with The Sons of Hodir, use the The Sons of Hodir (Friendly), The Sons of Hodir (Honored) - Pre-Quest,
	description and The Sons of Hodir (Honored) guide sections in the Reputation section of the Dailies guide.
	daily
	step //1
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //2
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //3
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //4
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046 |daily
	step //5
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //6
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //7
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1	
	step //8
		goto 56.4,65.0
		.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		.' Feed Arngrim's Spirit 5 Times |q 13046/1
	step //9
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //10
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //11
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //12
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //13
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //14
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..turnin Feeding Arngrim##13046
	step //15
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //16
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //17
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //18
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //19
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\The Storm Peaks\\K3 Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the K3 region of The Storm Peaks.
	daily
	step //1
		goto The Storm Peaks,40.9,85.3
		.talk Ricket##29428
		..accept Overstock##12833 |daily
	step //2
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader |q 12833/1
	step //3
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Overstock##12833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Zul'Drak\\Zul'Drak Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quests in the The Argent Stand region of Zul'Drak.
	step //1
		goto Zul'Drak,39.5,66.9
		.talk Commander Falstaav##28059
		..accept Parachutes for the Argent Crusade##12740
	step //2
		goto 38.4,67.1
		.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders |use Crusader Parachute##39615 |tip It won't work on all of them.
		.' Equip 10 Argent forces with a parachute |q 12740/1
	step //3
		goto 39.5,66.9
		.talk Commander Falstaav##28059
		..turnin Parachutes for the Argent Crusade##12740
	step //4
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..accept Pa'Troll##12596
	step //5
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..accept Lab Work##12557
	step //6
		'Go into the 2 rooms next to you:
		.' They are items on shelves that you can click
		.' Click a Muddy Mire Maggot and get it |q 12557/1 |tip Muddy Mide Maggots look like an open bag of grain on the ground.
		.' Click a Withered Batwing and get it |q 12557/2 |tip Withered Batwings looks like bone wings.
		.' Click a Chilled Serpent Mucus and get it |q 12557/4 |tip Chilled Serpent Mucus looks like a skinny green vial.
		.' Click an Amberseed and get it |q 12557/3 |tip Amberseeds look like spiked potatoes.
	step //7
		goto 35,52.1
		.talk Alchemist Finklestein##28205
		..turnin Lab Work##12557
		.' Complete Alchemist Finklestein's task |q 12596/4
	step //8
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..accept Creature Comforts##12599
	step //9
		goto 46.9,61.4
		.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
		.get 20 Dead Thornwood|q 12599/1
	step //10
		goto 48.2,63.9
		.talk Captain Grondel##28043
		..turnin Creature Comforts##12599
		.' Complete Captain Grondel's Task |q 12596/3
	step //11
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..accept Something for the Pain##12597
	step //12
		goto 44.9,79.5
		.' Click the Mature Water-Poppy plants |tip They look like tall white-leaved plants with purple bulbs at the top.
		.get 5 Mature Water-Poppy|q 12597/1
	step //13
		goto 48.8,78.9
		.talk Captain Brandon##28042
		..turnin Something for the Pain##12597
		.' Complete Captain Brandon's Task |q 12596/1
	step //14
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..accept Throwing Down##12598
	step //15
		goto 53.4,68.7
		.' Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574 |tip They look like squarish pyramid dirt mounds around this area.
		.' Seal 5 Nerubian Tunnels |q 12598/1
	step //16
		goto 58.1,72.4
		.talk Captain Rupert##28044
		..turnin Throwing Down##12598
		.' Complete Captain Rupert's Task |q 12596/2
	step //17
		goto 40.3,66.6
		.talk Commander Kunz##28039
		..turnin Pa'Troll##12596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Zul'Drak\\The Argent Stand Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the The Argent Stand region of Zul'Drak.
	daily
	step //1
		'The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes.
	step //2
		goto Zul'Drak,40.3,66.6
		.talk Commander Kunz##28039
		..accept Troll Patrol##12587 |daily |or
		..accept Troll Patrol##12563 |daily |or
		..accept Troll Patrol##12501 |daily |or
	step //3
		goto 35.0,52.1
		.talk Alchemist Finklestein##28205
		..accept Troll Patrol: The Alchemist's Apprentice##12541 |daily
		.' Tell Alchemist Finklestein you are ready to begin
		.' Some of the items he asks you for can be found in both of the rooms on either side of you.  Those items are: |tip Hairy Herring Heads, Icecrown Bottled Water, Knotroot, Muddy Mire Maggots, Pickled Eagle Egg, Pulverized Gargoyle Teeth, Putrid Pirate Perspiration, Seasoned Cider Slider, Speckled Guano, Spiky Spider Eggs, Withered Bat Wings
		.' Here are the items that are only found in the ROOM ON THE LEFT: |tip Abomination Guts, Blight Crystal, Chilled Serpent Mucus, Crushed Basilisk Crystals, Frozen Spider Ichor, Prismatic Mojo, Raptor Claw
		.' Here are the items that are only found in the ROOM ON THE RIGHT: |tip Amberseed, Ancient Ectoplasm, Crystallized Hogsnot, Ghoul Drool, Trollbane, Shrunken Dragon's Claw, Wasp's Wings
		.' Collect the item's he calls for and bring them them back to him and click Finklestein's Cauldron to add the items he needs
		.' Create the Truth Serum |q 12541/1 |tip This quest will be MUCH easier and faster once you start to remember where each item is.
	step //4
		goto 35.0,52.1
		.talk Alchemist Finklestein##28205
		..turnin Troll Patrol: The Alchemist's Apprentice##12541
	step //5
		goto 48.1,63.9
		.talk Captain Grondel##28043
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Troll Patrol: Couldn't Care Less##12594 |daily |or
		..accept Troll Patrol: Creature Comforts##12585 |daily |or
		..accept Troll Patrol: Whatdya Want, a Medal?##12519 |daily |or
	step //6
		goto 45.4,61.2
		.from Mossy Rampager##28323+
		.' Kill 7 Mossy Rampagers |q 12594/1
	step //7
		goto 46.0,61.8
		.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
		.get 20 Dead Thornwood|q 12585/1
	step //8
		goto 45.6,62.7
		.' Click Drakkari Corpses |tip They look like dead blue trolls laying on the ground around this area.
		.get 7 Drakkari Medallion |q 12519/1
	step //9
		goto 48.1,63.9
		.talk Captain Grondel##28043
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Troll Patrol: Couldn't Care Less##12594
		..turnin Troll Patrol: Creature Comforts##12585
		..turnin Troll Patrol: Whatdya Want, a Medal?##12519
	step //10
		goto 58.1,72.4
		.talk Captain Rupert##28044
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Troll Patrol: Done to Death##12568 |daily |or
		..accept Troll Patrol: Intestinal Fortitude##12509 |daily |or
		..accept Troll Patrol: Throwing Down##12591 |daily |or
	step //11
		goto 56.0,70.8
		.' Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556 |tip They look like dead soldiers laying on the ground around this area.
		.' Incinerate 5 Argent Footman Corpses |q 12568/1
	step //12
		goto 51.6,75.1
		.talk Crusade Recruit##28090
		..' Tell them to get out of there
		.' Restore 5 Recruit's Courage |q 12509/1
	step //13
		goto 53.4,68.7
		.' Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574|tip They look like squarish pyramid dirt mounds around this area.
		.' Seal 5 Nerubian Tunnels |q 12591/1
	step //14
		goto 58.1,72.4
		.talk Captain Rupert##28044
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Troll Patrol: Done to Death##12568
		..turnin Troll Patrol: Intestinal Fortitude##12509
		..turnin Troll Patrol: Throwing Down##12591
	step //15
		goto 48.8,78.9
		.talk Captain Brandon##28042
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Troll Patrol: Can You Dig It?##12588 |daily |or
		..accept Troll Patrol: High Standards##12502 |daily |or
		..accept Troll Patrol: Something for the Pain##12564 |daily |or
	step //16
		goto 46.8,80.3
		.' Use your Steel Spade next to the dirt piles |use Steel Spade##38566 |tip The dirt piles look like big purple-ish mounds of dirt around this area.
		.' Investigate 5 Ancient Dirt Mounds |q 12588/1
	step //17
		goto 52.5,76.5
		.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
		.' Plant the South Argent Crusade Banner |q 12502/1
	step //18
		goto 53.3,72.2
		.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
		.' Plant the East Argent Crusade Banner |q 12502/3
	step //19
		goto 50.6,73.0
		.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
		.' Plant the North Argent Crusade Banner |q 12502/2
	step //20
		goto 45.6,79.3
		.' Click the Mature Water-Poppy plants|tip They look like tall white-leaved plants with purple bulbs at the top.
		.get 5 Mature Water-Poppy|q 12564/1
	step //21
		goto 48.8,78.9
		.talk Captain Brandon##28042
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Troll Patrol: Can You Dig It?##12588
		..turnin Troll Patrol: High Standards##12502
		..turnin Troll Patrol: Something for the Pain##12564
	step //22
		goto Zul'Drak,40.3,66.6
		.talk Commander Kunz##28039
		..turnin Troll Patrol##12563
		..turnin Troll Patrol##12587
		..turnin Troll Patrol##12501
	step //23
		goto 40.3,66.6
		.talk Commander Kunz##28039
		.accept Congratulations!##12604 |daily |instant |tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",[[
	author support@zygorguides.com
	description This guide section will walk you through a 25 daily quest speed gold run at level 80,
	description without including any Argent Tournament Grounds dailies.
	description To be able to complete all the quests in this guide section, you must have completed
	description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
	description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections. 
	daily
	step //1
		goto The Storm Peaks,40.9,85.3
		.talk Ricket##29428
		..accept Overstock##12833 |daily
	step //2
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader |q 12833/1
	step //3
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Overstock##12833
	step //4
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //5
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //6
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //7
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046 |daily
	step //8
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //9
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //10
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1
		.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		.' Feed Arngrim's Spirit 5 Times |q 13046/1
	step //11
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //12
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //13
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //14
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //15
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //16
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..turnin Feeding Arngrim##13046
	step //17
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //18
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //19
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //20
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //21
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //22
		map Icecrown
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..accept Drag and Drop##13353 |daily
		..accept Not a Bug##13365 |daily
		..accept That's Abominable!##13276 |daily
	step //23
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..accept Keeping the Alliance Blind##13331 |daily
	step //24
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..accept Blood of the Chosen##13330 |daily
	step //25
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..accept Slaves to Saronite##13302 |daily
	step //26
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..accept Volatility##13261 |daily
		..accept Retest Now##13357 |daily	
	step //27
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..accept Assault by Air##13310 |daily
	step //28
		goto 59.5,45.9
		.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
	step //29
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Kor'kron Infiltrators |q 13310/1
	step //30
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Air##13310
	step //31
		goto 58.2,45.9
		.talk Kor'kron Squad Leader##31833
		..accept Assault by Ground##13301 |daily
	step //32
		'Follow the Horde troops up the mountain and help them fight
		.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
	step //33
		'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
	step //34
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves |q 13302/1
	step //35
		'Go outside the cave|goto 57.0,57.3,0.3|c
	step //36
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13330/1
	step //37
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..accept King of the Mountain##13283 |daily
	step //38
		goto 51.9,57.6
		.' Click Thunderbomb's Jumpbot to get in the robot|invehicle |q 13283
	step //39
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
		.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Horde Battle Standard |q 13283/1
	step //40
		'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
	step //41
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..turnin King of the Mountain##13283
	step //42
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Ground##13301
	step //43
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13261
		.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13261
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13261
	step //44
		goto 68.8,67.5
		.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
		.' Conduct 3 Field Tests |q 13261/1
	step //45
		goto 69.8,62.4
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13276/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13276/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13276/3
	step //46
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion|q 13353
	step //47
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13353/1
	step //48
		goto 49.4,39.3
		.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
		.' Shoot Down 6 Skybreaker Recon Fighters |q 13331/1
	step //49
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..accept Riding the Wavelength: The Bombardment##13406 |daily
	step //50
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13406
	step //51
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly behind you (you have to aim it)
		..kill 20 Gargoyle Ambusher |q 13406/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry |q 13406/1
		..kill 10 Bombardment Captain |q 13406/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //52
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Riding the Wavelength: The Bombardment##13406
	step //53
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13357
		.from Enslaved Minion##32260+
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13365
	step //54
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger |q 13365/1
	step //55
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass |q 13357/1
	step //56
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..accept Leave Our Mark##12995 |daily
	step //57
		goto 43.6,25.1
		.talk The Leaper##30074
		..accept Shoot 'Em Up##13069 |daily
	step //58
		goto 43.1,25.2
		.talk Vile##30216
		..accept Vile Like Fire!##13071 |daily
	step //59
		goto 33.0,23.9
		.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
	step //60
		'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
		.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
	step //61
		.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
	step //62
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
	step //63
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //64
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //65
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //66
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..accept From Their Corpses, Rise!##12813 |daily
	step //67
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..accept Intelligence Gathering##12838 |daily
	step //68
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..accept No Fly Zone##12815 |daily
	step //69
		goto 9.6,44.3
		.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
		.collect Scarlet Onslaught Trunk Key##40652+|n
		.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
		.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
		.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
		.get 5 Onslaught Intel Documents|q 12838/1
	step //70
		'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
		.' Ride a Bone Gryphon|invehicle|q 12815
	step //71
		goto 10.2,41.9
		.' Use your Bone Gryphon abilities to:
		.kill 10 Onslaught Gryphon Rider|q 12815/1
	step //72
		'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
	step //73
		goto Icecrown,19.7,48.4
		.talk Setaal Darkmender##29396
		..turnin From Their Corpses, Rise!##12813
	step //74
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..turnin Intelligence Gathering##12838
	step //75
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin No Fly Zone##12815
	step //76
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..turnin Leave Our Mark##12995
	step //77
		goto 43.6,25.1
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
	step //78
		goto 43.1,25.2
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
	step //79
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Drag and Drop##13353
		..turnin Not a Bug##13365
		..turnin That's Abominable!##13276
	step //80
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..turnin Keeping the Alliance Blind##13331
	step //81
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..turnin Blood of the Chosen##13330
	step //82
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..turnin Slaves to Saronite##13302
	step //83
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Volatility##13261
		..turnin Retest Now##13357
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",[[
	author support@zygorguides.com
	description This guide section will walk you through a 25 daily quest speed gold run at level 80.
	description To be able to complete all the quests in this guide section, you must have completed
	description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
	description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections. 
	daily
	step //1
		goto Icecrown,76.1,24.1
		.talk Girana the Blooded##34771
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..accept A Leg Up##14143 |daily |or 2
		..accept Rescue at Sea##14136 |daily |or 2
		..accept Stop The Aggressors##14140 |daily |or 2
		..accept The Light's Mercy##14144 |daily |or 2
		..accept You've Really Done It This Time, Kul##14142 |daily |or 2
	step //2
		goto 76.1,24.0
		.talk Tylos Dawnrunner##34914
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Breakfast Of Champions##14092 |daily |or
		..accept Gormok Wants His Snobolds##14141 |daily |or
		..accept What Do You Feed a Yeti, Anyway?##14145 |daily |or
	step //3
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..accept Taking Battle To The Enemy##13813 |daily
		only DeathKnight
	step //4
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..accept Threat From Above##13812 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13863 |daily
		only DeathKnight
	step //5
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..accept Among the Champions##13814 |daily
		only DeathKnight
	step //6
		goto 69.9,23.3
		.talk Luuri##33771
		..accept Among the Champions##13811 |daily
		only !DeathKnight
	step //7
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..accept Threat From Above##13809 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13862 |daily
		only !DeathKnight
	step //8
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..accept Taking Battle To The Enemy##13810 |daily
		only !DeathKnight
	step //9
		goto 69.5,23.1
		.talk High Crusader Adelard##34882
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept Deathspeaker Kharos##14105 |daily |or
		..accept Drottinn Hrothgar##14101 |daily |or
		..accept Mistcaller Yngvar##14102 |daily |or
		..accept Ornolf The Scarred##14104 |daily |or
	step //10
		goto 69.5,23.1
		.talk Crusader Silverdawn##35094
		.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
		..accept Get Kraken!##14108 |daily |or
		..accept The Fate Of The Fallen##14107 |daily |or
	step //11
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13811
		only Orc !DeathKnight
	step //12
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13811
		only Troll !DeathKnight
	step //13
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13811
		only Tauren !DeathKnight
	step //14
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13811
		only Scourge !DeathKnight
	step //15
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13811
		only BloodElf !DeathKnight
	step //16
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13811/1
		only !DeathKnight
	step //17
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13811
		only !DeathKnight
	step //18
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13814
		only Orc DeathKnight
	step //19
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13814
		only Troll DeathKnight
	step //20
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13814
		only Tauren DeathKnight
	step //21
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13814
		only Scourge DeathKnight
	step //22
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13814
		only BloodElf DeathKnight
	step //23
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13814/1
		only DeathKnight
	step //24
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13814
		only DeathKnight
	step //25
		goto 74.3,10.0
		.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
		.collect 6 Fresh Chum##47036 |q 14145
	step //26
		goto 74.0,10.5
		.' Use the Fresh Chum in your bags |use Fresh Chum##47036
		.from North Sea Blue Shark##35061+ |tip They spawn underwater around this area when you use the Fresh Chum.
		.get 3 North Sea Shark Meat |q 14145/1
	step //27
		goto Hrothgar's Landing,43.6,54.0
		.kill 8 Kvaldir Berserker |q 14136/1
		.kill 3 Kvaldir Harpooner |q 14136/2
	step //28
		goto 43.3,27.5
		.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.get 10 Stolen Tallstrider Leg |q 14143/1
	step //29
		goto 46.5,32.8
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.' Kill 10 Kvaldir |q 14140/1
	step //30
		goto 46.5,32.8
		.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
		.' Administer 8 Last Rites |q 14144/1	
	step //31
		goto Hrothgar's Landing,43.9,24.3
		.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
		.kill Mistcaller Yngvar |q 14102/1
	step //32
		goto Hrothgar's Landing,50.7,15.4
		.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
		.kill Drottinn Hrothgar |q 14101/1
	step //33
		goto Hrothgar's Landing,58.5,31.6
		.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
		.kill Ornolf the Scarred |q 14104/1
	step //34
		goto Icecrown,69.8,22.2
		.' Click a Stabled Argent Hippogryph to ride it
		.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
		.kill 3 Kvaldir Deepcaller |q 14108/2
		.' Hurl Spears at 6 North Sea Kraken |q 14108/1
	step //35
		goto 64.2,21.4
		.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
	step //36
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 4 Black Cage Key##46895 |n
		.' Click Black Cages |tip They look like big sqaure cages around this area.
		.' Rescue 4 Captive Aspirants |q 14142/2
	step //37
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 1 Black Cage Key##46895 |q 14142
	step //38
		goto 60.8,23.2
		.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
		.' Rescue Kul the Reckless |q 14142/1
	step //39
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13813/1
		only DeathKnight
	step //40
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13810/1
		only !DeathKnight
	step //41
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..accept Drag and Drop##13353 |daily
		..accept Not a Bug##13365 |daily
		..accept That's Abominable!##13276 |daily
	step //42
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..accept Keeping the Alliance Blind##13331 |daily
	step //43
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..accept Blood of the Chosen##13330 |daily
	step //44
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..accept Slaves to Saronite##13302 |daily
	step //45
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..accept Volatility##13261 |daily
		..accept Retest Now##13357 |daily	
	step //46
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..accept Assault by Air##13310 |daily
	step //47
		goto 59.5,45.9
		.' Click the Kor'kron Suppression Turret to control the gun on the airplane|invehicle
	step //48
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Kor'kron Infiltrators |q 13310/1
	step //49
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Air##13310
	step //50
		goto 58.2,45.9
		.talk Kor'kron Squad Leader##31833
		..accept Assault by Ground##13301 |daily
	step //51
		'Follow the Horde troops up the mountain and help them fight
		.'Escort the Horde troops into Ymirheim |q 13301/1|tip At least 4 Horde troops must survive.
	step //52
		'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
	step //53
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves |q 13302/1
	step //54
		'Go outside the cave|goto 57.0,57.3,0.3|c
	step //55
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13330/1
	step //56
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..accept King of the Mountain##13283 |daily
	step //57
		goto 51.9,57.6
		.' Click Thunderbomb's Jumpbot to get in the robot |invehicle |q 13283
	step //58
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
		.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Horde Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Horde Battle Standard |q 13283/1
	step //59
		'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c |q 13283
	step //60
		goto 51.9,57.6
		.talk Blast Thunderbomb##31781
		..turnin King of the Mountain##13283
	step //61
		goto 58.3,46.0
		.talk Ground Commander Xutjja##31834
		..turnin Assault by Ground##13301
	step //62
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13261
		.' Click Abandoned Helms|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13261
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13261
	step //63
		goto 68.8,67.5
		.' Use Copperclaw's Volatile Oil 3 times|use Copperclaw's Volatile Oil##43608
		.' Conduct 3 Field Tests |q 13261/1
	step //64
		goto 69.8,62.4
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13276/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13276/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13276/3
	step //65
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion##44246 |n
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13353/1
	step //66
		goto 49.4,39.3
		.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
		.' Shoot Down 6 Skybreaker Recon Fighters |q 13331/1
	step //67
		goto 51.1,38.4
		.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
		.collect 6 Discarded Soul Crystal##47035 |n
		.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
		.' Bless 6 Fallen Hero's Spirits |q 14107/1
	step //68
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..accept Riding the Wavelength: The Bombardment##13406 |daily
	step //69
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13406
	step //70
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly behind you (you have to aim it)
		..kill 20 Gargoyle Ambusher |q 13406/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry |q 13406/1
		..kill 10 Bombardment Captain |q 13406/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //71
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Riding the Wavelength: The Bombardment##13406
		..accept Total Ohmage: The Valley of Lost Hope!##13376 |daily
	step //72
		goto 54.0,36.7
		.talk Rizzy Ratchwiggle##31839
		.' Tell her to give you a bomber!|invehicle|q 13376
	step //73
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles and Frostbrood Sentries that fly behind you (you have to aim it)
		..kill 20 Gargoyle Ambusher |q 13376/2
		..kill 12 Frostbrood Sentry |q 13376/4
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry |q 13376/1
		..kill 12 Scourge War Machine |q 13376/3
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //74
		goto 54.0,36.9
		.talk Fringe Engineer Tezzla##32430
		..turnin Total Ohmage: The Valley of Lost Hope!##13376
	step //75
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13357
		.from Enslaved Minion##32260+
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13365
	step //76
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger |q 13365/1
	step //77
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass |q 13357/1
	step //78
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..accept Leave Our Mark##12995 |daily
	step //79
		goto 43.6,25.1
		.talk The Leaper##30074
		..accept Shoot 'Em Up##13069 |daily
	step //80
		goto 43.1,25.2
		.talk Vile##30216
		..accept Vile Like Fire!##13071 |daily
	step //81
		goto 33.0,23.9
		.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
	step //82
		'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
		.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
	step //83
		.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
	step //84
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
	step //85
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //86
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //87
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //88
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..turnin Leave Our Mark##12995
	step //89
		goto 43.6,25.1
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
	step //90
		goto 43.1,25.2
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
	step //91
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only DeathKnight
	step //92
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13812/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13812/2	
		only DeathKnight
	step //93
		goto 48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13863
		only DeathKnight
	step //94
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13863/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only DeathKnight
	step //95
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13863
		only DeathKnight
	step //96
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only !DeathKnight
	step //97
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13809/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13809/2
		only !DeathKnight
	step //98
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13862
		only !DeathKnight
	step //99
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13862/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only !DeathKnight
	step //100
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13862
		only !DeathKnight
	step //101
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: 60.6,34.9
		.' Point 2: 68.0,52.5
		.' Point 3: 68.9,27.0
		.'Find Orgrim's Hammer flying around in the sky|tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.talk Koltira Deathweaver##29795
		..turnin Drag and Drop##13353
		..turnin Not a Bug##13365
		..turnin That's Abominable!##13276
	step //102
		'On the Orgim's Hammer airship:
		.talk Sky-Reaver Korm Blackscar##30824
		..turnin Keeping the Alliance Blind##13331
	step //103
		'On the Orgim's Hammer airship:
		.talk Warbringer Davos Rioht##32301
		..turnin Blood of the Chosen##13330
	step //104
		'On the Orgim's Hammer airship:
		.talk Brother Keltan##31261
		..turnin Slaves to Saronite##13302
	step //105
		'On the Orgim's Hammer airship:
		.talk Chief Engineer Copperclaw##30825
		..turnin Volatility##13261
		..turnin Retest Now##13357
	step //106
		goto 69.9,23.3
		.talk Luuri##33771
		..turnin Among the Champions##13811
		only !DeathKnight
	step //107
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Threat From Above##13809
		..turnin Battle Before The Citadel##13862
		only !DeathKnight
	step //108
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..turnin Taking Battle To The Enemy##13810
		only !DeathKnight
	step //109
		goto 69.5,23.1
		.talk High Crusader Adelard##34882
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin Deathspeaker Kharos##14105
		..turnin Drottinn Hrothgar##14101
		..turnin Mistcaller Yngvar##14102
		..turnin Ornolf The Scarred##14104
	step //110
		goto 69.5,23.1
		.talk Crusader Silverdawn##35094
		.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
		..turnin Get Kraken!##14108
		..turnin The Fate Of The Fallen##14107
	step //111
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..turnin Taking Battle To The Enemy##13813
		only DeathKnight
	step //112
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin Threat From Above##13812
		..turnin Battle Before The Citadel##13863
		only DeathKnight
	step //113
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..turnin Among the Champions##13814
		only DeathKnight
	step //114
		goto The Storm Peaks,40.5,53.3
		.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
		.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
		.get 4 Jormungar Egg Sac |q 14092/1
	step //115
		goto The Storm Peaks,42.8,81.3
		.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
		.' Capture 8 Snowblind Followers |q 14141/1
	step //116
		goto Icecrown,76.1,24.1
		.talk Girana the Blooded##34771
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..turnin A Leg Up##14143
		..turnin Rescue at Sea##14136
		..turnin Stop The Aggressors##14140
		..turnin The Light's Mercy##14144
		..turnin You've Really Done It This Time, Kul##14142
	step //117
		goto 76.1,24.0
		.talk Tylos Dawnrunner##34914
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Breakfast Of Champions##14092
		..turnin Gormok Wants His Snobolds##14141
		..turnin What Do You Feed a Yeti, Anyway?##14145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral) - Pre-Quests", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Neutral reputation with Netherwing faction.
	startlevel 80
	step //1
		'Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
	step //2
		goto Shadowmoon Valley,62.9,59.5
		.talk Mordenai##22113
		..accept Kindness##10804
	step //3
		goto 60.5,57.7
		.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
		.collect Rocknail Flayer Giblets##31373 |n
		.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
		.collect 8 Rocknail Flayer Carcass##31372 |q 10804
	step //4
		goto 60.5,57.7
		.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
		.' Feed 8 Netherwing Drakes |q 10804/1
	step //5
		goto 62.9,59.5
		.talk Mordenai##22113
		..turnin Kindness##10804
		..accept Seek Out Neltharaku##10811
	step //6
		goto 68.2,60.4
		.talk Neltharaku##21657
		..turnin Seek Out Neltharaku##10811
		..accept Neltharaku's Tale##10814
		.talk Neltharaku##21657
		..' Listen to the Tale of Neltharaku |q 10814/1
		..turnin Neltharaku's Tale##10814
		..accept Infiltrating Dragonmaw Fortress##10836
	step //7
		goto 66.4,60.0
		.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
		.kill 15 Dragonmaw Orc |q 10836/1
	step //8
		goto 68.2,60.4
		.talk Neltharaku##21657
		..turnin Infiltrating Dragonmaw Fortress##10836
		..accept To Netherwing Ledge!##10837
	step //9
		goto 64.1,80.7
		.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
		.get 12 Nethervine Crystal |q 10837/1
	step //10
		goto 68.2,60.4
		.talk Neltharaku##21657
		..turnin To Netherwing Ledge!##10837
		..accept The Force of Neltharaku##10854
	step //11
		goto 67.4,59.3
		.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
		..' Free 5 Enslaved Netherwing Drakes |q 10854/1
	step //12
		goto 68.2,60.4
		.talk Neltharaku##21657
		..turnin The Force of Neltharaku##10854
		..accept Karynaku##10858
	step //13
		goto 69.9,61.5
		.talk Karynaku##22112
		..turnin Karynaku##10858
		..accept Zuluhed the Whacked##10866
	step //14
		goto 70.9,61.5
		.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
		.collect Zuluhed's Key##31664 |q 10866
	step //15
		goto 69.8,61.3
		.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
		.' Free Karynaku |q 10866/1
	step //16
		goto 69.9,61.5
		.talk Karynaku##22112
		..turnin Zuluhed the Whacked##10866
		..accept Ally of the Netherwing##10870
	step //17
		goto 62.9,59.5
		.talk Mordenai##22113
		..turnin Ally of the Netherwing##10870
		..accept Blood Oath of the Netherwing##11012 |instant
		..accept In Service of the Illidari##11013
	step //18
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin In Service of the Illidari##11013
		..accept Enter the Taskmaster##11014
	step //19
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..turnin Enter the Taskmaster##11014
	step //20
		goto 66.0,86.5
		.talk Yarzill the Merc##23141
		..accept Your Friend on the Inside##11019 |instant
		..accept The Great Netherwing Egg Hunt##11049
	step //21
		goto 68.5,61.2
		.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
		.get 1 Netherwing Egg |q 11049/1
	step //22
		goto 66.0,86.5
		.talk Yarzill the Merc##23141
		..turnin The Great Netherwing Egg Hunt##11049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Friendly reputation with the Netherwing faction.
	description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
	description in order to be able to complete the quests in this guide section.
	startlevel 80
	daily
	step //1
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..accept A Slow Death##11020 |daily
		..accept The Not-So-Friendly Skies##11035 |daily
	step //2
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Netherwing Crystals##11015 |daily
		..accept Nethermine Flayer Hide##11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. 
		..accept Nethercite Ore##11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350.
		..accept Netherdust Pollen##11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //3
		goto 72.1,75.2
		.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
		.get 10 Netherwing Relic |q 11035/1
	step //4
		goto 60.4,45.2
		.from Greater Felfire Diemetradon##21462+, Felboar##21878+
		.collect 12 Fel Gland##32502 |q 11020
	step //5
		goto 73.6,80.0
		.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
		.' Poison 12 Dragonmaw Peon Camps |q 11020/1
	step //6
		goto 62.6,86.2
		.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
		.get 40 Netherdust Pollen |q 11017/1
	step //7
		goto 70.0,91.4
		. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with an Mining skill of at least 350 to be able to complete this step.
		.get 40 Nethercite Ore |q 11018/1
	step //8
		goto 65.3,90.2 |n
		.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c 
	step //9
		goto 70.8,84.4
		.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
		.get 30 Netherwing Crystal |q 11015/1
		.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350 
		.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
	step //10
		goto 65.3,90.2 |n
		.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c 
	step //11
		goto 66.0,86.5
		.talk Yarzill the Merc##23141
		..turnin A Slow Death##11020
		..turnin The Not-So-Friendly Skies##11035
	step //12
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..turnin Netherwing Crystals##11015
		..turnin Nethermine Flayer Hide##11016 |tip This quest is only available if you have your Skinning skill to at least 350.
		..turnin Nethercite Ore##11018 |tip This quest is only available if you have your Mining skill to at least 350.
		..turnin Netherdust Pollen##11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //13
		'Repeat this process daily until you are Friendly with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly) - Pre-Quests", [[
	author support@zygorguides.com
	description This guide section will walk you through a chain of pre-quests, that become available
	description once you have earned Friendly reputation with the Netherwing faction.
	description This chain of pre-quests will open up more Netherwing faction daily quests.
	startlevel 80		
	step //1
		goto Shadowmoon Valley,66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Rise, Overseer!##11053
	step //2
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Rise, Overseer!##11053
	step //3
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept The Netherwing Mines##11075
	step //4
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..accept Overseeing and You: Making the Right Choices##11054
	step //5
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin The Netherwing Mines##11075
	step //6
		'Go inside the mine to 71.6,87.6
		.talk Ronag the Slave Driver##23166
		..accept Crazed and Confused##11083
	step //7
		goto 73.7,88.1
		.kill 1 Crazed Murkblood Foreman |q 11083/1
		.kill 5 Crazed Murkblood Miner |q 11083/2
	step //8
		goto 71.6,87.6
		.talk Ronag the Slave Driver##23166
		..turnin Crazed and Confused##11083
	step //9
		goto 64.8,85.6
		.from Black Blood of Draenor##23286+
		.collect Sludge-covered Object##32724+ |n
		.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
		.collect Murkblood Escape Plans##32726 |n
		.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
		..accept The Great Murkblood Revolt##11081
	step //10
		goto 65.3,90.2 |n
		.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
	step //11
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin The Great Murkblood Revolt##11081
		..accept Seeker of Truth##11082
	step //12
		'Go inside the mine and follow the path to 73.0,82.2
		.talk Murkblood Overseer##23309
		..' Tell him you are here for him
		.' Gather Murkblood Information |q 11082/1
		.get Hand of the Overseer |q 11082/2
	step //13
		goto 65.3,90.2 |n
		.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
	step //14
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin Seeker of Truth##11082
	step //15
		get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather. 
		.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around 60.4,45.2
	step //16
		goto Netherstorm,46.4,10.8
		.from Tyrantus##20931
		.get Hardened Hide of Tyrantus |q 11054/2
	step //17
		goto Shadowmoon Valley,66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..turnin Overseeing and You: Making the Right Choices##11054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Honored reputation with the Netherwing faction.
	description You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section
	description in order to be able to complete the quests in this guide section.
	startlevel 80
	daily	
	step //1
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..accept A Slow Death##11020 |daily
		..accept The Not-So-Friendly Skies##11035 |daily
	step //2
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Netherwing Crystals##11015 |daily
		..accept Nethermine Flayer Hide##11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. 
		..accept Nethercite Ore##11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350.
		..accept Netherdust Pollen##11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //3
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..accept The Booterang: A Cure For The Common Worthless Peon##11055 |daily
	step //4
		goto 72.1,75.2
		.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
		.get 10 Netherwing Relic |q 11035/1
	step //5
		goto 60.4,45.2
		.from Greater Felfire Diemetradon##21462+, Felboar##21878+
		.collect 12 Fel Gland##32502 |q 11020
	step //6
		goto 73.6,80.0
		.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
		.' Poison 12 Dragonmaw Peon Camps |q 11020/1
		.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
		.' Discipline 20 Dragonmaw Peons |q 11055/1
	step //7
		goto 62.6,86.2
		.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
		.get 40 Netherdust Pollen |q 11017/1
	step //8
		goto 70.0,91.4
		. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with an Mining skill of at least 350 to be able to complete this step.
		.get 40 Nethercite Ore |q 11018/1	
	step //9
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..accept Picking Up the Pieces...##11076
	step //10
		'Go inside the mine to 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..accept Dragons are the Least of Our Problems##11077
	step //11
		goto 66.9,84.0
		.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
		.get 15 Nethermine Cargo |q 11076/1
	step //12
		goto 71.5,83.9
		.kill 15 Nethermine Flayer |q 11077/1
		.kill 5 Nethermine Ravager |q 11077/2
		.get 30 Netherwing Crystal |q 11015/1
		.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350 
		.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
	step //13
		goto 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..turnin Dragons are the Least of Our Problems##11077
	step //14
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin Picking Up the Pieces...##11076
	step //15
		goto 66.0,86.5
		.talk Yarzill the Merc##23141
		..turnin A Slow Death##11020
		..turnin The Not-So-Friendly Skies##11035
	step //16
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..turnin Netherwing Crystals##11015
		..turnin Nethermine Flayer Hide##11016 |tip This quest is only available if you have your Skinning skill to at least 350.
		..turnin Nethercite Ore##11018 |tip This quest is only available if you have your Mining skill to at least 350.
		..turnin Netherdust Pollen##11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //17
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..turnin The Booterang: A Cure For The Common Worthless Peon##11055
	step //18
		'Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Honored) - Pre-Quests", [[
	author support@zygorguides.com
	description This guide section will walk you through a chain of pre-quests, that become available
	description once you have earned Honored reputation with the Netherwing faction.
	description This chain of pre-quests will open up more Netherwing faction daily quests.
	startlevel 80
	step //1
		goto Shadowmoon Valley,66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Stand Tall, Captain!##11084
	step //2
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Stand Tall, Captain!##11084
	step //3
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..accept Earning Your Wings...##11063 |instant
	step //4
		goto 65.2,85.7
		.talk Murg "Oldie" Muckjaw##23340
		..accept Dragonmaw Race: The Ballad of Oldie McOld##11064
		.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
		.' Defeat Murg "Oldie" Muckjaw |q 11064/1
	step //5
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: The Ballad of Oldie McOld##11064
	step //6
		goto 65.2,85.5
		.talk Trope the Filth-Belcher##23342
		..accept Dragonmaw Race: Trope the Filth-Belcher##11067
		.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dogde them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
		.' Defeat Trope the Filth-Belcher |q 11067/1
	step //7
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: Trope the Filth-Belcher##11067
	step //8
		goto 65.2,85.2
		.talk Corlok the Vet##23344
		..accept Dragonmaw Race: Corlok the Vet##11068
		.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dogde them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
		.' Defeat Corlok the Vet |q 11068/1
	step //9
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: Corlok the Vet##11068
	step //10
		goto 65.2,85.0
		.talk Wing Commander Ichman##13437
		..accept Dragonmaw Race: Wing Commander Ichman##11069
		.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dogde them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
		.' Defeat Wing Commander Ichman |q 11069/1
	step //11
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: Wing Commander Ichman##11069
	step //12
		goto 65.2,84.9
		.talk Wing Commander Mulverick##13181
		..accept Dragonmaw Race: Wing Commander Mulverick##11070
		.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dogde them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
		.' Defeat Wing Commander Mulverick |q 11070/1
	step //13
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: Wing Commander Mulverick##11070
	step //14
		goto 65.5,85.3
		.talk Captain Skyshatter##23348
		..accept Dragonmaw Race: Captain Skyshatter##11071
		.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dogde them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
		.' Defeat Captain Skyshatter |q 11071/1
	step //15
		goto 65.9,87.2
		.talk Ja'y Nosliw##22433
		..turnin Dragonmaw Race: Captain Skyshatter##11071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Revered reputation with the Netherwing faction.
	description You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section
	description in order to be able to complete the quests in this guide section.
	startlevel 80
	daily
	step //1
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..accept A Slow Death##11020 |daily
		..accept The Not-So-Friendly Skies##11035 |daily
	step //2
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Netherwing Crystals##11015 |daily
		..accept Nethermine Flayer Hide##11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. 
		..accept Nethercite Ore##11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350.
		..accept Netherdust Pollen##11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //3
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..accept The Booterang: A Cure For The Common Worthless Peon##11055 |daily
	step //4
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..accept Disrupting the Twilight Portal##11086 |daily
	step //5
		goto 72.1,75.2
		.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
		.get 10 Netherwing Relic |q 11035/1
	step //6
		goto 60.4,45.2
		.from Greater Felfire Diemetradon##21462+, Felboar##21878+
		.collect 12 Fel Gland##32502 |q 11020
	step //7
		goto 73.6,80.0
		.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
		.' Poison 12 Dragonmaw Peon Camps |q 11020/1
		.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
		.' Discipline 20 Dragonmaw Peons |q 11055/1
	step //8
		goto 62.6,86.2
		.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
		.get 40 Netherdust Pollen |q 11017/1
	step //9
		goto 70.0,91.4
		. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with an Mining skill of at least 350 to be able to complete this step.
		.get 40 Nethercite Ore |q 11018/1	
	step //10
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..accept Picking Up the Pieces...##11076
	step //11
		'Go inside the mine to 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..accept Dragons are the Least of Our Problems##11077
	step //12
		goto 66.9,84.0
		.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
		.get 15 Nethermine Cargo |q 11076/1
	step //13
		goto 71.5,83.9
		.kill 15 Nethermine Flayer |q 11077/1
		.kill 5 Nethermine Ravager |q 11077/2
		.get 30 Netherwing Crystal |q 11015/1
		.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350 
		.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
	step //14
		goto 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..turnin Dragons are the Least of Our Problems##11077
	step //15
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin Picking Up the Pieces...##11076
	step //16
		goto Nagrand,12.7,38.9
		.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
		.kill 20 Deathshadow Agent |q 11086/1	
	step //17
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..turnin A Slow Death##11020
		..turnin The Not-So-Friendly Skies##11035
	step //18
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..turnin Netherwing Crystals##11015
		..turnin Nethermine Flayer Hide##11016 |tip This quest is only available if you have your Skinning skill to at least 350.
		..turnin Nethercite Ore##11018 |tip This quest is only available if you have your Mining skill to at least 350.
		..turnin Netherdust Pollen##11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //19
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..turnin The Booterang: A Cure For The Common Worthless Peon##11055
	step //20
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Disrupting the Twilight Portal##11086
	step //21
		'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Revered) - Pre-Quests", [[
	author support@zygorguides.com
	description This guide section will walk you through a chain of pre-quests, that become available
	description once you have earned Revered reputation with the Netherwing faction.
	description This chain of pre-quests will open up more Netherwing faction daily quests.
	startlevel 80
	step //1
		goto Shadowmoon Valley,66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Hail, Commander!##11092
	step //2
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Hail, Commander!##11092
		..accept Kill Them All!##11094 |only if rep ('The Scryers') >= Friendly
		..accept Kill Them All!##11099 |only if rep ('The Aldor') >= Friendly
	step //3
		goto 74.5,86.3
		.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
		.collect Partially Digested Hand##32621 |n
		.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
		..accept A Job Unfinished...##11041
	step //4
		goto 70.2,84.3
		.kill Barash the Den Mother |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
	step //5
		goto 71.3,85.8
		.kill 10 Overmine Flayer |q 11041/1
	step //6
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin A Job Unfinished...##11041
	step //7
		goto 56.3,59.6
		.talk Arcanist Thelis##21955
		..turnin Kill Them All!##11094
		..accept Commander Hobb##11095
		only if rep ('The Scryers') >= Friendly
	step //8
		goto 56.5,58.7
		.talk Commander Hobb##23434
		..turnin Commander Hobb##11095
		only if rep ('The Scryers') >= Friendly
	step //9
		goto 62.6,28.4
		.talk Anchorite Ceyla##21402
		..turnin Kill Them All!##11099
		..accept Commander Arcus##11100
		only if rep ('The Aldor') >= Friendly
	step //10
		goto 62.4,29.3
		.talk Commander Arcus##23452
		..turnin Commander Arcus##11100
		only if rep ('The Aldor') >= Friendly
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Exalted reputation with the Netherwing faction.
	description You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section
	description in order to be able to complete the quests in this guide section.
	startlevel 80
	daily
	step //1
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..accept A Slow Death##11020 |daily
		..accept The Not-So-Friendly Skies##11035 |daily
	step //2
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Netherwing Crystals##11015 |daily
		..accept Nethermine Flayer Hide##11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. 
		..accept Nethercite Ore##11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350.
		..accept Netherdust Pollen##11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //3
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..accept The Booterang: A Cure For The Common Worthless Peon##11055 |daily
	step //4
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..accept Disrupting the Twilight Portal##11086 |daily
	step //5
		goto 72.1,75.2
		.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
		.get 10 Netherwing Relic |q 11035/1
	step //6
		goto 56.5,58.7
		.talk Commander Hobb##23434
		..accept The Deadliest Trap Ever Laid##11097
		.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
		.' Protect Commander Hobb, he must survive
		.' Defeat the Dragonmaw Forces |q 11097/1
		only if rep ('The Scryers') >= Friendly
	step //7
		goto 60.4,45.2
		.from Greater Felfire Diemetradon##21462+, Felboar##21878+
		.collect 12 Fel Gland##32502 |q 11020
	step //8
		goto 62.4,29.3
		.talk Commander Arcus##23452
		..accept The Deadliest Trap Ever Laid##11101
		.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
		.' Protect Commander Arcus, he must survive
		.' Defeat the Dragonmaw Forces |q 11101/1
		only if rep ('The Aldor') >= Friendly
	step //9
		goto 73.6,80.0
		.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
		.' Poison 12 Dragonmaw Peon Camps |q 11020/1
		.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
		.' Discipline 20 Dragonmaw Peons |q 11055/1
	step //10
		goto 62.6,86.2
		.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
		.get 40 Netherdust Pollen |q 11017/1
	step //11
		goto 70.0,91.4
		. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with an Mining skill of at least 350 to be able to complete this step.
		.get 40 Nethercite Ore |q 11018/1	
	step //12
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..accept Picking Up the Pieces...##11076
	step //13
		'Go inside the mine to 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..accept Dragons are the Least of Our Problems##11077
	step //14
		goto 66.9,84.0
		.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
		.get 15 Nethermine Cargo |q 11076/1
	step //15
		goto 71.5,83.9
		.kill 15 Nethermine Flayer |q 11077/1
		.kill 5 Nethermine Ravager |q 11077/2
		.get 30 Netherwing Crystal |q 11015/1
		.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350 
		.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
	step //16
		goto 65.1,87.5
		.talk Dragonmaw Foreman##23376
		..turnin Dragons are the Least of Our Problems##11077
	step //17
		goto 65.4,90.2
		.talk Mistress of the Mines##23149
		..turnin Picking Up the Pieces...##11076
	step //18
		goto Nagrand,12.7,38.9
		.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
		.kill 20 Deathshadow Agent |q 11086/1	
	step //19
		goto Shadowmoon Valley,66.0,86.5
		.talk Yarzill the Merc##23141
		..turnin A Slow Death##11020
		..turnin The Not-So-Friendly Skies##11035
	step //20
		goto 66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..turnin Netherwing Crystals##11015
		..turnin Nethermine Flayer Hide##11016 |tip This quest is only available if you have your Skinning skill to at least 350.
		..turnin Nethercite Ore##11018 |tip This quest is only available if you have your Mining skill to at least 350.
		..turnin Netherdust Pollen##11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
	step //21
		goto 66.8,86.1
		.talk Chief Overseer Mudlump##23291
		..turnin The Booterang: A Cure For The Common Worthless Peon##11055
	step //22
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Disrupting the Twilight Portal##11086
		..turnin The Deadliest Trap Ever Laid##11097 |only if rep ('The Scryers') >= Friendly
		..turnin The Deadliest Trap Ever Laid##11101 |only if rep ('The Aldor') >= Friendly
	step //23
		'Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
	author support@zygorguides.com
	description This guide section will walk you through the final steps of getting your Netherdrake Mount,
	description once you've earned Exalted reputation with the Netherwing faction.
	description You must have completed the Netherwing Reputation (Revered) guide section
	description in order to be able to complete the quests in this guide section.
	startlevel 80
	step //1
		goto Shadowmoon Valley,66.1,86.4
		.talk Taskmaster Varkule Dragonbreath##23140
		..accept Bow to the Highlord##11107
	step //2
		goto 66.2,85.7
		.talk Overlord Mor'ghor##23139
		..turnin Bow to the Highlord##11107
		..accept Lord Illidan Stormrage##11108
		.' Watch the cutscene
		.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
	step //3
		goto Shattrath City,66.6,16.4
		.talk Barthamus##23433
		..turnin Lord Illidan Stormrage##11108
	step //4
		goto 66.8,17.6
		.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
		..accept Voranaku the Violet Netherwing Drake##11113 |instant |or
		..accept Zoya the Veridian Netherwing Drake##11114 |instant |or
		..accept Suraku the Azure Netherwing Drake##11112 |instant |or
		..accept Onyxien the Onyx Netherwing Drake##11111 |instant |or
		..accept Malfas the Purple Netherwing Drake##11110 |instant |or
		..accept Jorus the Cobalt Netherwing Drake##11109 |instant |or
	step //5
		'Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Netherdrake Mount Guide\\Netherwing Egg Hunting - Optimized Path", [[
	author support@zygorguides.com
	description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
	description which you can turn in for 250 Netherwing rep each.
	description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
	description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
	startlevel 80
	step //1
		goto Shadowmoon Valley,69.4,63.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
	step //2
		goto 70.1,62.0 |n
		.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
	step //3
		goto 71.4,60.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
	step //4
		goto 70.9,62.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
	step //5
		goto 71.3,62.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
	step //6
		goto 71.4,60.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
	step //7
		goto 70.0,60.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
	step //8
		goto 69.7,58.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
	step //9
		goto 68.1,59.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
	step //10
		goto 68.3,59.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
	step //11
		goto 68.5,61.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
	step //12
		goto 67.2,61.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
	step //13
		goto 67.2,62.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
	step //14
		goto 68.9,62.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
	step //15
		goto 76.0,81.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
	step //16
		goto 75.2,82.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
	step //17
		goto 73.7,82.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
	step //18
		goto 73.0,84.0 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
	step //19
		goto 71.0,81.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //20
		goto 68.2,81.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //21
		goto 66.2,83.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //22
		goto 65.7,84.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
	step //23
		goto 63.3,81.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //24
		goto 65.4,76.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
	step //25
		goto 63.2,75.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
	step //26
		goto 62.2,74.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
	step //27
		goto 61.7,73.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
	step //28
		goto 63.0,71.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
	step //29
		goto 61.3,70.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
	step //30
		goto 60.6,73.4 |n
		.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
	step //31
		goto 59.3,74.1 |n
		.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
	step //32
		goto 60.0,76.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
	step //33
		goto 59.6,78.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
	step //34
		goto 61.2,77.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
	step //35
		goto 62.2,77.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
	step //36
		goto 63.3,81.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //37
		goto 63.0,83.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //38
		goto 63.5,84.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //39
		goto 65.5,84.9 |n
		.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
	step //40
		goto 66.0,86.5
		.talk Yarzill the Merc##23141
		.' Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506
	step //41
		goto 64.0,86.1 |n
		.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
	step //42
		goto 62.5,84.9 |n
		.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
	step //43
		goto 60.2,87.1 |n
		.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
	step //44
		goto 62.1,89.5 |n
		.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
	step //45
		goto 64.9,90.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
	step //46
		'Go inside the mine to 64.8,87.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
	step //47
		goto 68.3,84.0 |n
		.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
	step //48
		goto 68.8,86.1 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
	step //49
		goto 72.3,87.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
	step //50
		goto 69.9,85.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
	step //51
		goto 73.6,85.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
	step //52
		goto 73.0,89.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
	step //53
		goto 73.6,85.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
	step //54
		goto 68.5,81.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
	step //55
		goto 64.8,83.0 |n
		.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
	step //56
		goto 65.2,84.2 |n
		.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
	step //57
		goto 65.3,90.2 |n
		.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
	step //58
		goto 65.5,94.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
	step //59
		goto 68.0,94.9 |n
		.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
	step //60
		goto 69.6,91.8 |n
		.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
	step //61
		goto 70.9,89.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //62
		goto 71.4,86.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
	step //63
		goto 72.2,87.1 |n
		.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //64
		goto 73.4,90.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //65
		goto 75.8,91.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
	step //66
		goto 77.6,92.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
	step //67
		goto 77.4,95.7 |n
		.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
	step //68
		goto 77.3,85.9 |n
		.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
	step //69
		goto 76.5,83.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
	step //70
		goto 78.9,83.3 |n
		.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
	step //71
		goto 78.1,81.2 |n
		.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
	step //72
		goto 78.8,79.6 |n
		.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
	step //73
		autoscript ZGV:FocusStep(1)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\Argent Crusade", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Argent Crusade faction with this guide.
	startlevel 80
	step //1
		map Icecrown
		'To gain reputation with the Argent Crusade faction:
		.' Complete the Icecrown Full Zone Quest Path guide section in the Icecrown section.
		.' Complete the Slaves of Saronite daily quest in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section.  |tip Do this daily, if you'd like.
		.' Complete the Zul'Drak Pre-Quests guide section in the Zul'Drak section.
		.' Complete the The Argent Stand Dailies guide section in the Zul'Drak section.  |tip Do this daily, if you'd like.
		.' Complete the ATG Champion Rank Dailies - Non-Death Knight Only guide section in the Icecrown section.  |tip Do this daily, if you'd like.  You can only do this if you are not a Death Knight.
		.' Once you earn Friendly reputation with the Argent Crusade faction, you can buy the Tabard of the Argent Crusade. |tip Wear the Tabard of the Argent Crusade and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Argent Crusade for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
		..' You can buy the Tabard of the Argent Crusade by talking to Veteran Crusader Aliocha Segard in Icecrown at 87.5,75.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\Kirin Tor", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Kirin Tor faction with this guide.
	startlevel 80
	step //1
		map Dalaran
		'To gain reputation with the Kirin Tor faction:
		.' Complete the Cooking Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
		.' Complete the Fishing Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
		.' Complete the Jewelcrafting Dailies guide section in the Dalaran section. |tip Do this daily, if you'd like.
		.' Once you earn Friendly reputation with the Kirin Tor faction, you can buy the Tabard of the Kirin Tor. |tip Wear the Tabard of the Kirin Tor and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Kirin Tor for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
		..' You can buy the Tabard of the Argent Crusade by talking to Archmage Alvareaux in Dalaran at 25.2,47.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\Knights of the Ebon Blade", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Knights of the Ebon Blade faction with this guide.
	startlevel 80
	step //1
		map Icecrown
		'To gain reputation with the Knights of the Ebon Blade faction:
		.' Complete the Icecrown Full Zone Quest Path guide section in the Icecrown section.
		.' Complete the Shadowvault Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.
		.' Complete the Death's Rise Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.
		.' Complete the ATG Champion Rank Dailies - Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are a Death Knight.
		.' Once you earn Friendly reputation with the Knights of the Ebon Blade faction, you can buy the Tabard of the Ebon Blade. |tip Wear the Tabard of the Ebon Blade and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with the Knights of the Ebon Blade for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
		..' You can buy the Tabard of the Ebon Blade by talking to Duchess Mynx in Icecrown at 43.4,20.6
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Kalu'ak", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Kalu'ak faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Kalu'ak faction:
		.' Complete the Kaskala Dailies guide section in the Borean Tundra section. |tip Do this daily, if you'd like.
		.' Complete the Moa'ki Harbor Dailies guide section in the Dragonblight section. |tip Do this daily, if you'd like.
		.' Complete the Kamagua Dailies guide section in the Howling Fjord section. |tip Do this daily, if you'd like.
		.' There is no tabard for The Kalu'ak available at this time.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Sons of Hodir", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Sons of Hodir faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Sons of Hodir faction:
		.' Complete The Storm Peaks Full Zone Quest Path guide section in The Storm Peaks section.
		.' Complete The Sons of Hodir Reputation guide sections in The Storm Peaks section. |tip Do this daily, if you'd like.
		.' There is no tabard for The Sons of Hodir available at this time.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Wyrmrest Accord", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Wyrmrest Accord faction with this guide.
	startlevel 80
	step //1
		map Dragonblight
		'To gain reputation with The Wyrmrest Accord faction:
		.' Complete the Coldarra Dailies guide section in the Borean Tundra section. |tip Do this daily, if you'd like.
		.' Complete the Wyrmrest Temple Dailies guide section in the Dragonblight section. |tip Do this daily, if you'd like.
		.' Once you earn Friendly reputation with The Wyrmrest Accord faction, you can buy the Tabard of the Wyrmrest Accord. |tip Wear the Tabard of the Wyrmrest Accord and use the Dungeon Finder tool to complete random Lich King Heroics.  You will gain reputation with The Wyrmrest Accord for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
		..' You can buy the Tabard of the Wyrmrest Accord by talking to Cielstrasza in Dragonblight at 60.0,53.0
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Hand of Vengeance", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Hand of Vengeance faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Hand of Vengeance faction:
		.' Complete the ATG Champion Rank Dailies - Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are a Death Knight.
		.' Complete the ATG Champion Rank Dailies - Non-Death Knight Only guide section in the Icecrown section. |tip Do this daily, if you'd like.  You can only do this if you are not a Death Knight.
		.' Complete the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.  All of the daily quests in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section won't give The Hand of Vengeance reputation, but many will.
		.' There is no tabard for The Hand of Vengeance available at this time. |tip Although there is no tabard for The Hand of Vengeance at this time, you can still gain reputation with The Hand of Vengeance by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Hand of Vengeance for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Sunreavers", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Sunreavers faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Sunreavers faction:
		.' Complete the Argent Tournament Grounds Dailies guide sections in the Icecrown section. |tip Do these daily, if you'd like.
		.' Complete the guide sections in the Crusader Title section in the Icecrown section. |tip Do these daily, if you'd like.
		.' There is no tabard for The Sunreavers available at this time. |tip Although there is no tabard for The Sunreavers at this time, you can still gain reputation with The Sunreavers by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Sunreavers for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Taunka", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Taunka faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Taunka faction:
		.' Complete The Storm Peaks Full Zone Quest Path guide section in The Storm Peaks section.
		.' There is no tabard for The Taunka available at this time. |tip Although there is no tabard for The Taunka at this time, you can still gain reputation with The Taunka by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Taunka for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\Warsong Offensive", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Warsong Offensive faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with the Warsong Offensive faction:
		.' Complete the Blackriver Logging Camp Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
		.' Complete the Blue Sky Logging Grounds Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
		.' Complete the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.  All of the daily quests in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section won't give Warsong Offensive reputation, but many will.
		.' There is no tabard for the Warsong Offensive available at this time. |tip Although there is no tabard for the Warsong Offensive at this time, you can still gain reputation with the Warsong Offensive by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with the Warsong Offensive for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\Frenzyheart Tribe", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Frenzyheart Tribe faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with the Frenzyheart Tribe faction:
		.' Complete the Frenzyheart Tribe Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Reputation\\The Oracles", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Oracles faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Oracles faction:
		.' Complete The Oracles Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Love is in the Air (February 7th - 20th)\\Love is in the Air Main Questline",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the main questline for the Love is in the Air event.
	step //1
		goto Orgrimmar,50.7,65.8
		.talk Detective Snap Snagglebolt##37172
		..accept Something Stinks##24536
	step //2
		goto 50.5,72.4
		.' Use Snagglebolt's Air Analyzer on pink glowing Orgrimmar Grunts around this area |use Snagglebolt's Air Analyzer##50131
		.' Analyze 6 Perfumed Guards |q 24536/1
	step //3
		goto 50.7,65.8
		.talk Detective Snap Snagglebolt##37172
		..turnin Something Stinks##24536
		..accept Pilfering Perfume##24541
	step //4
		'Go outside Orgrimmar |goto Durotar |noway |c
	step //5
		goto Durotar,47.7,11.8
		.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24541 |tip To get the package, run outside the gates of Orgrimmar and take an immediate left.  Keep close to the wall, you will eventually get to a small camp where two Undead NPCs are standing next to a pile of boxes.  Get close to them in order to get the package.
	step //6
		'Run back inside Orgrimmar |goto Orgrimmar |noway |c
	step //7
		goto Orgrimmar,50.7,65.8
		.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him. |condition ZGV.questsbyid[24541] and ZGV.questsbyid[24541].complete |q 24541
		.' If you lose your disguise, ask the Detective for another one and repeat the run.
	step //8
		goto Orgrimmar,50.7,65.8
		.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
		.talk Detective Snap Snagglebolt##37172
		..turnin Pilfering Perfume##24541
		..accept Snivel's Sweetheart##24850
	step //9
		goto 59.0,53.1
		.talk Roka##38328
		..turnin Snivel's Sweetheart##24850
		..accept Hot On The Trail##24851
	step //10
		goto 53.9,64.4
		.' Search the Orgrimmar Auction House |q 24851/2
	step //11
		goto 49.8,70.1
		.' Search the Orgrimmar Bank |q 24851/1
	step //12
		goto 47.3,54.4
		.' Search the Orgrimmar Barber Shop |q 24851/3 |tip The Orgrimmar Barber Shop is in the Cleft of Shadow.
	step //13
		goto 59.0,53.1
		.talk Roka##38328
		..turnin Hot On The Trail##24851
		..accept A Friendly Chat...##24576
	step //14
		'Go outside Orgrimmar |goto Durotar |noway |c
	step //15
		goto Durotar,50.6,13.1
		.talk Snivel Rustrocket##37715
		..' Tell him you have a rocket with his mark on it.
		..get Snivel's Ledger |q 24576/1
	step //16
		'Go inside Orgrimmar |goto Orgrimmar |noway |c
	step //17
		goto Orgrimmar,50.7,65.8
		.talk Detective Snap Snagglebolt##37172
		..turnin A Friendly Chat...##24576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Love is in the Air (February 7th - 20th)\\Love is in the Air Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Love is in the Air even daily quests.
	daily
	step //1
		goto Orgrimmar,50.7,65.8
		.talk Detective Snap Snagglebolt##37172
		..' You have to be at least level 5 to accept a quest from him
		..accept Crushing the Crown##24638 |daily |only if level >= 5 and level < 14
		..accept Crushing the Crown##24645 |daily |only if level >= 14 and level < 23
		..accept Crushing the Crown##24647 |daily |only if level >= 23 and level < 32
		..accept Crushing the Crown##24648 |daily |only if level >= 32 and level < 41
		..accept Crushing the Crown##24649 |daily |only if level >= 41 and level < 51
		..accept Crushing the Crown##24650 |daily |only if level >= 51 and level < 61
		..accept Crushing the Crown##24651 |daily |only if level >= 61 and level < 71
		..accept Crushing the Crown##24652 |daily |only if level >= 71
	step //2
		goto 53.8,66.4
		.talk Public Relations Agent##37675
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Cloudlet of Classy Cologne##24635 |daily |or
		..accept A Perfect Puff of Perfume##24629 |daily |or
		..accept Bonbon Blitz##24636 |daily |or
	step //3
		goto 53.7,66.9
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the Warchief##24612 |daily
	step //4
		'Run around Orgrimmar and:
		.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
		.' Give 10 Cologne Samples |q 24635/1
	step //5
		'Run around Orgrimmar and:
		.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
		.' Give 10 Perfume Samples |q 24629/1
	step //6
		'Run around Orgrimmar and:
		.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
		.' Give 10 Chocolate Samples |q 24636/1
	step //7
		'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
	step //8
		goto Durotar,40.2,15.4
		.kill 5 Crown Lackey |q 24638/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24638/1
		only if level >= 5 and level < 14
	step //9
		goto Durotar,41.4,18.9 |n
		.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
	step //10
		goto Thunder Bluff,44.0,52.6
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the High Chieftain##24614 |daily
	step //11
		goto 53.8,66.4
		.talk Public Relations Agent##37675
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Cloudlet of Classy Cologne##24635
		..turnin A Perfect Puff of Perfume##24629
		..turnin Bonbon Blitz##24636
	step //12
		goto 15.4,25.7 |n
		.' Ride the zeppelin to Orgrimmar |goto Durotar |noway |c
	step //13
		goto Durotar,50.8,13.7 |n
		.' Ride the zeppelin to Undercity |goto Tirisfal Glades |noway |c
	step //14
		Go inside Undercity |goto Undercity |noway |c
	step //15
		goto Undercity,66.5,38.6
		.talk Kwee Q. Peddlefeet##38042 |tip He is in the Ruins of Lordaeron.
		..accept A Gift for the Banshee Queen##24613 |daily
	step //16
		goto 63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to The Sepulcher |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
		only if level >= 14 and level < 23
	step //17
		goto Silverpine Forest,54.7,61.3
		.kill 5 Crown Thug |q 24645/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24645/1
		only if level >= 14 and level < 23
	step //18
		goto 45.6,42.6
		.talk Karos Razok##2226
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 14 and level < 23
	step //19
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to Tarren Mill |goto Hillsbrad Foothills,60.2,18.8,0.5 |noway |c
		only if level >= 23 and level < 32
	step //20
		goto Hillsbrad Foothills,54.7,61.3
		.kill 5 Crown Duster |q 24647/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24647/1
		only if level >= 23 and level < 32
	step //21
		goto 60.1,18.6
		.talk Zarise##2389
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 23 and level < 32
	step //22
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to Revantusk Village |goto The Hinterlands,81.7,81.9,0.5 |noway |c
		only if level >= 41 and level < 51
	step //23
		goto The Hinterlands,23.6,53.7
		.kill 5 Crown Agent |q 24649/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24649/1
		only if level >= 41 and level < 51
	step //24
		goto 81.7,81.8
		.talk Gorkas##4314
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 41 and level < 51
	step //25
		goto Undercity,54.9,11.3 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
	step //26
		goto Silvermoon City,64.4,66.5
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the Regent Lord of Quel'Thalas##24615 |daily
	step //27
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
	step //28
		'Go to Silvermoon City |goto Silvermoon City |noway |c
	step //29
		goto Silvermoon City,53.8,20.2
		.talk Lor'themar Theron##16802
		..turnin A Gift for the Regent Lord of Quel'Thalas##24615
	step //30
		goto 49.4,14.8 |n
		.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in the back room of this building, up on a platform.
	step //31
		goto Undercity,58.1,91.8
		.talk Lady Sylvanas Windrunner##10181
		..turnin A Gift for the Banshee Queen##24613
	step //32
		'Go outside of Undercity to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //33
		goto Durotar,60.7,58.8 |n
		.' Ride the zeppelin to Orgrimmar |goto Durotar |noway |c
	step //34
		goto Durotar,41.4,18.9 |n
		.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
	step //35
		goto Thunder Bluff,60.3,51.7
		.talk Cairne Bloodhoof##3057
		..turnin A Gift for the High Chieftain##24614
	step //36
		goto 15.4,25.7 |n
		.' Ride the zeppelin to Orgrimmar |goto Durotar |noway |c
	step //37
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 5 and level < 14
	step //38
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 14 and level < 23
	step //39
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 23 and level < 32
	step //40
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 32 and level < 41
	step //41
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 41 and level < 51
	step //42
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 51 and level < 61
	step //43
		'Go inside of Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 61 and level < 71
	step //44
		goto Durotar,41.4,17.8 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
		only if level >= 71
	step //45
		goto Borean Tundra,40.4,51.4
		.talk Turida Coldwind##25288
		..' Fly to Dalaran |goto Dalaran |noway |c
		only if level >= 71
	step //46
		'Go outside of Dalaran to Crystalsong Forest |goto Crystalsong Forest |noway |c
		only if level >= 71
	step //47
		goto Crystalsong Forest,46.3,50.8
		.kill 5 Crown Sprayer |q 24652/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24652/1
		only if level >= 71
	step //48
		'Go to Dalaran |goto Dalaran |noway |c
		only if level >= 71
	step //49
		goto Dalaran,55.3,25.5 |n
		.' Click the Portal to Orgrimmar |goto Orgrimmar |noway |c 
		only if level >= 71
	step //50
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..' Fly to Brackenwall Village |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
		only if level >= 32 and level < 41
	step //51
		goto Dustwallow Marsh,60.7,38.3
		.kill 5 Crown Hoodlum |q 24648/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24648/1
		only if level >= 32 and level < 41
	step //52
		goto 35.6,31.9
		.talk Shardi##11899
		..' Fly to Orgrimmar |goto Orgrimmar,45.3,63.7,0.5 |noway |c
		only if level >= 32 and level < 41
	step //53
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..' Fly to Everlook |goto Winterspring,60.5,36.3,0.5 |noway |c
		only if level >= 51 and level < 61
	step //54
		goto Winterspring,64.6,37.3
		.kill 5 Crown Sprinkler |q 24650/2 |tip They are on top of this big hill.
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24650/1
		only if level >= 51 and level < 61
	step //55
		goto 60.5,36.3
		.talk Yugrek##11139
		..' Fly to Orgrimmar |goto Orgrimmar,45.3,63.7,0.5 |noway |c
		only if level >= 51 and level < 61
	step //56
		goto Orgrimmar,38.1,85.7 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands,57.5,51.1,0.5 |noway |c |tip It's a blue portal at the top of this hut building.
		only if level >= 61 and level < 71
	step //57
		goto Blasted Lands,58.7,59.7 |n
		'Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
		only if level >= 61 and level < 71
	step //58
		goto Hellfire Peninsula,87.3,48.1
		.talk Vlagga Freyfeather##18930
		..' Fly to Shattrath City |goto Shattrath City,63.8,41.7 |noway |c
		only if level >= 61 and level < 71
	step //59
		'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
		only if level >= 61 and level < 71
	step //60
		goto Terokkar Forest,41.4,22.4
		.kill 5 Crown Underling |q 24651/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24651/1
		only if level >= 61 and level < 71
	step //61
		'Go inside Shattrath City |goto Shattrath City |noway |c
		only if level >= 61 and level < 71
	step //62
		goto Shattrath City,52.2,52.9 |n
		.' Click the Portal to Orgrimmar |goto Orgrimmar |noway |c
		only if level >= 61 and level < 71
	step //63
		goto Orgrimmar,31.6,37.8
		.talk Thrall##32363
		..turnin A Gift for the Warchief##24612
	step //64
		goto 50.7,65.8
		.talk Detective Snap Snagglebolt##37172
		..' You have to be at least level 5 to accept a quest from him
		..turnin Crushing the Crown##24638 |only if level >= 5 and level < 14
		..turnin Crushing the Crown##24645 |only if level >= 14 and level < 23
		..turnin Crushing the Crown##24647 |only if level >= 23 and level < 32
		..turnin Crushing the Crown##24648 |only if level >= 32 and level < 41
		..turnin Crushing the Crown##24649 |only if level >= 41 and level < 51
		..turnin Crushing the Crown##24650 |only if level >= 51 and level < 61
		..turnin Crushing the Crown##24651 |only if level >= 61 and level < 71
		..turnin Crushing the Crown##24652 |only if level >= 71
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Lunar Festival (February 14th - March 6th)\\Lunar Festival Main Questline",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the main questline for the Lunar Festival event.
	step //1
		goto Orgrimmar,51.0,70.5
		.talk Lunar Festival Emissary##15891
		..accept The Lunar Festival##8873
	step //2
		goto 41.6,32.0
		.talk Lunar Festival Harbinger##15895
		..turnin The Lunar Festival##8873
		..accept Lunar Fireworks##8867
	step //3
		goto 41.3,32.4
		.talk Lunar Festival Vendor##15898
		..buy 8 Small Blue Rocket |q 8867
		..buy 2 Blue Rocket Cluster |q 8867
	step //4
		goto 41.6,32.8
		.' Use Small Blue Rockets|use Small Blue Rocket##21558
		.' Use Blue Rocket Clusters|use Blue Rocket Cluster##21571
		.' Fire 8 Lunar Fireworks|q 8867/1
		.' Fire 2 Lunar Fireworks Clusters|q 8867/2
	step //5
		goto 41.6,32.0
		.talk Lunar Festival Harbinger##15895
		..turnin Lunar Fireworks##8867
		..accept Valadar Starsong##8883
	step //6
		goto 41.0,31.0
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |c |q 8883
	step //7
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Valadar Starsong##8883
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Lunar Festival (February 14th - March 6th)\\Lunar Festival Optimized Elders Path",[[
	author support@zygorguides.com
	description This guide section will walk you through an optimized path for honoring the elders
	description that are spread out all over Azeroth for the Lunar Festival event.
	description The 13 elders that are inside instances are not included in this guide section.
	description Using this guide section, you will collect 62 of the total 75 Coins of Ancestry.
// EASTERN KINGDOMS
	step //1
		goto Western Plaguelands,69.0,73.0
		.talk Elder Moonstrike##15594
		..accept Moonstrike the Elder##8714|instant
	step //2
		goto Western Plaguelands,66.0,47.8
		.talk Elder Meadowrun##15602
		..accept Meadowrun the Elder##8722|instant
	step //3
		.' Follow the road west to Tirisfal Glades|goto Tirisfal Glades
	step //4
		goto Tirisfal Glades,61.9,53.8
		.talk Elder Graveborn##15568
		..accept Graveborn the Elder##8652|instant
	step //5
		'Go south to Undercity |goto Undercity |noway |c
	step //6
		goto Undercity,66.7,38.1
		.talk Elder Darkcore##15564
		..accept Darkcore the Elder##8648|instant
	step //7
		goto 63.3,48.6
		.talk Michael Garrett##4551
		..' Fly to The Sepulcher |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
	step //8
		 goto Silverpine Forest,45.0,41.1
		.talk Elder Obsidian##15561
		..accept Obsidian the Elder##8645 |instant
	step //9
		goto 45.6,42.6
		.talk Karos Razok##2226
		..' Fly to Light's Hope Chapel |goto Eastern Plaguelands,74.4,51.2,0.5 |noway |c
	step //10
		goto Eastern Plaguelands,75.7,54.6
		.talk Elder Snowcrown##15566
		..accept Snowcrown the Elder##8650|instant
	step //11
		goto 35.6,68.8
		.talk Elder Windrun##15592
		..accept Windrun the Elder##8688|instant
	step //12
		'Go west to Western Plaguelands |goto Western Plaguelands |noway |c
	step //13
		goto Western Plaguelands,69.3,49.7
		.talk Frax Bucketdrop##37888
		..' Fly to Revantusk Village |goto The Hinterlands,81.7,81.9,0.5 |noway |c
	step //14
		goto The Hinterlands,49.9,47.9
		.talk Elder Highpeak
		.accept Highpeak the Elder##8643|instant
	step //15
		goto 81.7,81.8
		.talk Gorkas##4314
		..' Fly to Kargath |goto Badlands,4.1,44.9,0.5 |noway |c
	step //16
		'Go northeast to Loch Modan |goto Loch Modan |noway |c
	step //17
		goto Loch Modan,33.0,46.5
		.talk Elder Silvervein##15558
		..accept Silvervein the Elder##8642|instant
	step //18
		'Go southwest to Dun Morogh |goto Dun Morogh |noway |c
	step //19
		'Go northwest into Ironforge |goto Ironforge |noway |c |tip Run in the front gates and don't stop, guards will be chasing you, and possibly players as well.  Run straight to the Elder in the next step, then immediately run back out.
	step //20
		goto Ironforge,28.1,17.0
		.talk Elder Bronzebeard##15871
		..accept Bronzebeard the Elder##8866|instant
	step //21
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c |tip If you die trying to leave Ironforge, just resurrect at the spirit healer you get sent to.
	step //22
		goto Dun Morogh,46.7,51.4
		.talk Elder Goldwell##15569
		..accept Goldwell the Elder##15569|instant
	step //23
		'Go east to Loch Modan |goto Loch Modan |noway |c
	step //24
		'Go southeast to Badlands |goto Badlands |noway |c
	step //25
		goto Badlands,4.0,44.8
		.talk Gorrik##2861
		..' Fly to Thorium Point |goto Searing Gorge,34.8,30.6,0.5 |noway |c
	step //26
		goto Searing Gorge,21.1,78.8
		.talk Elder Ironband##15567
		..accept Ironband the Elder##8651 |instant
	step //27
		goto 34.8,30.9
		.talk Grisha##3305
		..' Fly to Flame Crest |goto Burning Steppes,65.6,24.2,0.5 |noway |c
	step //28
		goto Burning Steppes,64.2,24.0
		.talk Elder Dawnstrider##15585
		..accept Dawnstrider the Elder##8683|instant
	step //29
		goto 81.9,46.3
		.talk Elder Rumblerock##15557
		..accept Rumblerock the Elder##8636|instant
	step //30
		'Go south to Redridge Mountains |goto Redridge Mountains |noway |c
	step //31
		'Go southwest to Elwynn Forest |goto Elwynn Forest |noway |c
	step //32
		goto Elwynn Forest,39.6,63.5
		.talk Elder Stormbrow##15565
		..accept Stormbrow the Elder##8649|instant
	step //33
		'Go northwest to Stormwind City |goto Stormwind City |noway |c	|tip Run in the front gates and don't stop, guards will be chasing you, and possibly players as well.  Run straight to the Elder in the next step, then immediately run back out.  Also, if you want to take the time, you could swim to Stormwind Harbor from the northeast part of Westfall.  Doing so would allow you to have a MUCH shorter and easier run to the Elder in the next step.
	step //34
		goto Stormwind City,36.0,66.0
		.talk Elder Hammershout##15562
		..accept Hammershout the Elder##8646|instant
	step //35
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c |tip If you die trying to leave Ironforge, just resurrect at the spirit healer you get sent to.
	step //36
		'Go southwest to Westfall |goto Westfall |noway |c
	step //37
		goto Westfall,55.6,47.0
		.talk Elder Skychaser##15577
		..accept Skychaser the Elder##8675|instant
	step //38
		'Go southeast to Duskwood |goto Duskwood |noway |c
	step //39
		'Go east to Deadwind Pass |goto Deadwind Pass |noway |c
	step //40
		'Go east to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step //41
		'Go southeast to Blasted Lands |goto Blasted Lands |noway |c
	step //42
		goto Blasted Lands,57.7,54.7
		.talk Elder Bellowrage##15563
		..accept Bellowrage the Elder##8647|instant
	step //43
		'Go north Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step //44
		goto Swamp of Sorrows,46.1,54.8
		.talk Breyk##6026
		..' Fly to Grom'Gol |goto Stranglethorn Vale,32.5,29.3,0.5 |noway |c
	step //45
		goto Stranglethorn Vale,53.1,18.3
		.talk Elder Starglade##15596
		..accept Starglade the Elder##8716 |instant
	step //46
		goto 32.5,29.4
		.talk Thysta##1387
		..' Fly to Booty Bay |goto Stranglethorn Vale,26.8,77.0,0.5 |noway |c
	step //47
		goto 26.3,76.4
		.talk Elder Winterhoof##15576
		..accept Winterhoof the Elder##15576 |instant
	step //48
		goto 26.0,73.2 |n
		'Ride the boat to Ratchet |goto The Barrens |noway |c
// KALIMDOR
	step //49
		goto The Barrens,62.6,36.7
		.talk Elder Windtotem##15582
		..accept Windtotem the Elder##8680 |instant
	step //50
		goto 63.1,37.2
		.talk Bragok##16227
		..' Fly to the Crossroads |goto The Barrens,51.5,30.4,0.5 |noway |c
	step //51
		goto 51.4,30.6
		.talk Elder Moonwarden##15597
		..accept Moonwarden the Elder##8717 |instant
	step //52
		goto 51.5,30.3
		.talk Devrak##3615
		..' Fly to Camp Taurajo |goto The Barrens,44.5,59.1,0.5 |noway |c
	step //53
		goto 45.0,57.9
		.talk Elder High Mountain##15588
		..accept High Mountain the Elder##8686 |instant
	step //54
		'Go west to Mulgore |goto Mulgore |noway |c
	step //55
		goto Mulgore,48.3,53.4
		.talk Elder Bloodhoof##15575
		..accept Bloodhoof the Elder##8673 |instant
	step //56
		'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
	step //57
		goto Thunder Bluff,72.2,23.5
		.talk Elder Ezra Wheathoof##15580
		..accept Wheathoof the Elder##8678 |instant
	step //58
		goto 47.0,49.8
		.talk Tal##2995
		..' Fly to Camp Mojache |goto Feralas,75.4,44.3,0.5 |noway |c
	step //59
		goto Feralas,76.7,37.7
		.talk Elder Grimtotem##15581
		..accept Grimtotem the Elder##8679 |instant
	step //60
		goto 59.5,40.0
		.talk Elder Mistwalker##15587
		..accept Mistwalker the Elder##8685 |instant
	step //61
		'Go outside to Feralas |goto Feralas |noway |c
	step //62
		goto Feralas,75.5,44.4
		.talk Shyn##8020
		..' Fly to Cenarion Hold |goto Silithus,48.8,36.7,0.5 |noway |c
	step //63
		goto Silithus,48.8,37.6
		.talk Elder Bladesing##15599
		..accept Bladesing the Elder##8719 |instant
	step //64
		goto 23.1,11.8
		.talk Elder Primestone##15570
		..accept Primestone the Elder##8654 |instant
	step //65
		goto 48.7,36.7
		.talk Runk Windtamer##15178
		..' Fly to Marshal's Refuge |goto Un'Goro Crater,45.3,6.0,0.5 |noway |c
	step //66
		goto Un'Goro Crater,50.4,76.2
		.talk Elder Thunderhorn##15583
		..accept Thunderhorn the Elder##8681 |instant
	step //67
		'Go east to Tanaris |goto Tanaris |noway |c
	step //68
		goto Tanaris,36.2,80.4
		.talk Elder Ragetotem##15573
		..accept Ragetotem the Elder##8671 |instant
	step //69
		goto 51.5,27.9
		.talk Elder Dreamseer##15586
		..accept Dreamseer the Elder##8684 |instant
	step //70
		'Go north to Thousand Needles |goto Thousand Needles |noway |c
	step //71
		goto Thousand Needles,79.0,76.9
		.talk Elder Morningdew##15604
		..accept Morningdew the Elder##8724 |instant
	step //72
		goto 45.3,49.8
		.talk Elder Skyseer##15584
		..accept Skyseer the Elder##8682 |instant
	step //73
		goto 45.1,49.1
		.talk Nyse##4317
		..' Fly to Ogrimmar |goto Orgrimmar |noway |c
	step //74
		goto Orgrimmar,40.9,32.9
		.talk Elder Darkhorn##15579
		..accept Darkhorn the Elder##8677 |instant
	step //75
		'Go outside to Durotar |goto Durotar |noway |c
	step //76
		goto Durotar,53.1,43.5
		.talk Elder Runetotem##15572
		..accept Runetotem the Elder##8670 |instant
	step //77
		'Go north to Orgrimmar |goto Orgrimmar |noway |c
	step //78
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		..' Fly to Valormok |goto Azshara,22.0,49.7,0.5 |noway |c
	step //79
		goto Azshara,72.4,84.9
		.talk Elder Skygleam##15600
		..accept Skygleam the Elder##8720 |instant
	step //80
		goto 21.9,49.6
		.talk Kroum##8610
		..' Fly to Everlook |goto Winterspring,60.5,36.3,0.5 |noway |c
	step //81
		goto Winterspring,61.3,37.7
		.talk Elder Stonespire##15574
		..accept Stonespire the Elder##8672 |instant
	step //82
		goto 55.6,43.6
		.talk Elder Brightspear##15606
		..accept Brightspear the Elder##8726 |instant
	step //83
		goto 60.5,36.3
		.talk Yugrek##11139
		..' Fly to Bloodvenom Post |goto Felwood,34.4,53.9,0.5 |noway |c
	step //84
		goto Felwood,37.7,52.9
		.talk Elder Nightwind##15603
		..accept Nightwind the Elder##8723 |instant
	step //85
		goto 34.5,54.0
		.talk Brakkar##11900
		..' Fly to Zoram'gar Outpost |goto Ashenvale,12.2,33.8,0.5 |noway |c
	step //86
		goto Ashenvale,35.4,48.9
		.talk Elder Riversong##15605
		..accept Riversong the Elder##8725 |instant
	step //87
		'Go northwest to Darkshore |goto Darkshore |noway |c
	step //88
		goto Darkshore,36.7,46.6
		.talk Elder Starweave##15601
		..accept Starweave the Elder##8721 |instant
	step //89
		goto 33.2,40.1 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step //90
		'Go through the pink portal to Darnassus |goto Darnassus |noway |c |tip Once in Darnassus, don't stop running, guards will be chasing you, and possibly players as well.  Run straight to the Elder in the next step, then immediately leave Dalaran out of the east exit.
	step //91
		goto Darnassus,33.6,15.1
		.talk Elder Bladeswift##15598
		..accept Bladeswift the Elder##8718 |instant
	step //92
		'Go out of the east exit of Darnassus to go to Teldrassil |goto Teldrassil |noway |c
	step //93
		goto Teldrassil,57.2,60.7
		.talk Elder Bladeleaf##15595
		..accept Bladeleaf the Elder##8715 |instant
	step //94
		'Go west to Darnassus |goto Darnassus |noway |c
	step //95
		goto Darnassus,31.6,12.5
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |c
	step //96
		goto Moonglade,35.7,58.9
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Orgrimmar |goto Orgrimmar |c
	step //97
		'Go outside to Durotar |goto Durotar |noway |c
// NORTHREND
	step //98
		goto Durotar,41.3,17.7 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
	step //99
		goto Borean Tundra,42.9,49.6
		.talk Elder Pamuya##30371
		..accept Pamuya the Elder##13029 |instant
	step //100
		goto 33.8,34.4
		.talk Elder Northal##30360
		..accept Northal the Elder##13016 |instant
	step //101
		goto 59.1,65.6
		.talk Elder Sardis##30348
		..accept Sardis the Elder##13012 |instant
	step //102
		goto 57.4,43.7
		.talk Elder Arp##30364
		..accept Arp the Elder##13033 |instant
	step //103
		'Go north to Sholazar Basin |goto Sholazar Basin |noway |c
	step //104
		goto Sholazar Basin,49.8,63.6
		.talk Elder Sandrene##30362
		..accept Sandrene the Elder##13018 |instant
	step //105
		goto 63.8,49.0
		.talk Elder Wanikaya##30365
		..accept Wanikaya the Elder##13024 |instant
	step //106
		'Go southeast to Wintergrasp |goto Wintergrasp |noway |c
	step //107
		goto Wintergrasp,50.5,16.4
		.' Click the Defender's Portal
		.' Go to the upper level of the Wintergrasp Fortress |goto Wintergrasp,50.4,15.9,0.1 |noway |c
	step //108
		goto 49.0,13.9
		.talk Elder Bluewolf##30368
		..accept Bluewolf the Elder##13026 |instant
	step //109
		goto 49.6,15.9
		.' Click the Defender's Portal
		.' Go to outside of the Wintergrasp Fortress |goto Wintergrasp,49.6,16.3,0.1 |noway |c
	step //110
		'Leave Wintergrasp and get back on your flying mount
		.' Skip to the next step of the guide once you are back on your flying mount
	step //111
		'Go southeast to Dragonblight |goto Dragonblight |noway |c
	step //112
		goto Dragonblight,35.1,48.3
		.talk Elder Skywarden##30373
		..accept Skywarden the Elder##13031 |instant
	step //113
		goto 29.7,55.9
		.talk Elder Morthie##30358
		..accept Morthie the Elder##13014 |instant
	step //114
		goto 48.8,78.2
		.talk Elder Thoim##30363
		..accept Thoim the Elder##13019 |instant
	step //115
		'Go east to Grizzly Hills |goto Grizzly Hills |noway |c
	step //116
		goto Grizzly Hills,64.2,47.0
		.talk Elder Whurain##30372
		..accept Whurain the Elder##13030 |instant
	step //117
		goto 80.5,37.1
		.talk Elder Lunaro##30367
		..accept Lunaro the Elder##13025 |instant
	step //118
		goto 60.6,27.7
		.talk Elder Beldak##30357
		..accept Beldak the Elder##13013 |instant
	step //119
		'Go northwest to Zul'Drak |goto Zul'Drak |noway |c
	step //120
		goto Zul'Drak,58.9,56.0
		.talk Elder Tauros##30369
		..accept Tauros the Elder##13027 |instant
	step //121
		'Go northwest to The Storm Peaks |goto The Storm Peaks |noway |c
	step //122
		goto The Storm Peaks,41.2,84.7
		.talk Elder Graymane##30370
		..accept Graymane the Elder##13028 |instant
	step //123
		goto 28.9,73.7
		.talk Elder Fargal##30359
		..accept Fargal the Elder##13015 |instant
	step //124
		goto 31.3,37.6
		.talk Elder Stonebeard##30375
		..accept Stonebeard the Elder##13020 |instant
	step //125
		goto 64.6,51.3
		.talk Elder Muraco##30374
		..accept Muraco the Elder##13032 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Noblegarden (April 4th - April 11th)\\Noblegarden Quests and Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the dailies for the Noblegarden event.
	daily
	step //1
		goto Thunder Bluff,40.8,56.1
		.talk Tauren Commoner##19176
		..accept Spring Gatherers##13483
	step //2
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //3
		goto Mulgore,46.7,60.1
		.talk Spring Gatherer##32798
		..turnin Spring Gatherers##13483
		..accept The Great Egg Hunt##13479 |daily
	step //4
		goto 46.9,60.5
		.talk Noblegarden Merchant##32837
		..accept A Tisket, a Tasket, a Noblegarden Basket##13503
	step //5
		'Search around Bloodhoof Village for Brightly Colored Eggs and click them:
		.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Bloodhoof Village is too crowed with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.get 20 Brightly Colored Shell Fragment |q 13479/1
		.get 10 Noblegarden Chocolate |q 13503/1
	step //6
		goto 46.9,60.5
		.talk Noblegarden Merchant##32837
		..turnin A Tisket, a Tasket, a Noblegarden Basket##13503
	step //7
		goto 46.7,60.1
		.talk Spring Gatherer##32798
		..turnin The Great Egg Hunt##13479
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Noblegarden (April 4th - April 11th)\\Noblegarden Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
	step //1
		'You may be unable to complete some of the achievements if you are lower level.  So, if you find you cannot do something in this guide, simply skip it and do what you can.
	step //2
		goto Mulgore,47.4,57.5
		.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Bloodhoof Village is too crowed with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.collect 100 Noblegarden Chocolate##44791+ |n
		.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
		.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
		.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249
	step //3
		'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Merchant at 46.9,60.5:
		.collect Noblegarden Egg##44818 |achieve 2420 |tip It costs 5 Noblegarden Chocolates.
		.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
		.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Rabbit's Foot##44794 |achieve 2497 |tip It costs 100 Noblegarden Chocolates.
	step //4
		goto Mulgore,47.4,57.5
		.' Use your Spring Rabbit's Foot in your bags to get a Spring Raibbit companion |use Spring Rabbit's Foot##44794
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Bloodhoof Village |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Bloodhoof Village |achieve 2497/1	
	step //5
		'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
	step //6
		goto Thunder Bluff,47.0,49.8
		.talk Tal##2995
		.' Fly to Shadowprey Village, Desolace |goto Desolace,21.6,74.0,0.5 |noway |c
	step //7
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Desolace |achieve 2436/2
	step //8
		goto Desolace,21.6,74.1
		.talk Thalon##6726
		.' Fly to Cenarion Hold, Silithus |goto Silithus,48.8,36.7,0.5 |noway |c
	step //9
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Silithus |achieve 2436/3
	step //10
		goto Silithus,48.7,36.7
		.talk Runk Windtamer##15178
		.' Fly to Marshal's Refuge, Un'Goro Crater |goto Un'Goro Crater,45.3,6.0,0.5 |noway |c
	step //11
		goto Un'Goro Crater,35.6,49.0
		.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
		.' Stand in this spot until you lay an egg
		.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
	step //12
		goto 45.2,5.8
		.talk Gryfe##10583
		.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.6,25.5,0.5 |noway |c
	step //13
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Tanaris |achieve 2436/4
	step //14
		goto Tanaris,51.6,25.4
		.talk Bulkrek Ragefist##7824
		.' Fly to Freewind Post, Thousand Needles |goto Thousand Needles,45.0,49.1,0.5 |noway |c
	step //15
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Thousand Needles |achieve 2436/5
	step //16
		goto Thousand Needles,45.1,49.1
		.talk Nyse##4317
		.' Fly to Orgrimmar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
	step //17
		'Go outside to Durotar |goto Durotar |noway |c
	step //18
		goto Durotar,52.7,41.2
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Razor Hill |tip Spring Rabbits look like small brown and white rabbits.
		.' Find your Spring Rabbit another one to love in Razor Hill |achieve 2497/4
	step //19
		goto 50.9,13.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //20
		goto Tirisfal Glades,61.0,53.5
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Brill |tip Spring Rabbits look like small brown and white rabbits.
		.' Find your Spring Rabbit another one to love in Brill |achieve 2497/2
	step //21
		'Go south to Undercity |goto Undercity |noway |c
	step //22
		goto Undercity,54.9,11.2 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a glowing red crystal ball in a side room in the Ruins of Lordaron.
	step //23
		'Use your Noblegarden Egg anywhere in Silvermoon City |use Noblegarden Egg##44818
		.' Hide a Brightly Colored Egg in Silvermoon City |achieve 2420
	step //24
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step //25
		goto Eversong Woods,46.7,47.3
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Falconwing Square |tip Spring Rabbits look like small brown and white rabbits.
		.' Find your Spring Rabbit another one to love in Falconwing Square |achieve 2497/3
	step //26
		'Go to Silvermoon City |goto Silvermoon City |noway |c
	step //27
		goto Silvermoon City,49.5,14.8 |n
		.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a glowing red crystal ball in the back room of this building, up a big ramp.
	step //28
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		.' Fly to Kargath, Badlands |goto Badlands,4.1,44.9,0.5 |noway |c
	step //29
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in The Badlands |achieve 2436/1
	step //30
		'Equip your Black Tuxedo Pants and White Tuxedo Shirt
		.' Find another player who is wearing the Elegant Dress and perform the /kiss emote on them |tip The Elegant Dress looks like a long pink dress when worn.
		.' Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
	step //31
		'Find a female characters of every race that are at least level 18 and do the following: |tip The best place, by far, to find them is in Dalaran.  You could also try Shattrath.
		.' Use your Spring Flowers on them |use Spring Flowers##45073
		.' Place bunny ears on a Blood Elf |achieve 2422/1
		.' Place bunny ears on a Human |achieve 2422/5
		.' Place bunny ears on a Troll |achieve 2422/9
		.' Place bunny ears on a Draenei |achieve 2422/2
		.' Place bunny ears on a Night Elf |achieve 2422/6
		.' Place bunny ears on a Undead |achieve 2422/10
		.' Place bunny ears on a Dwarf |achieve 2422/3
		.' Place bunny ears on a Orc |achieve 2422/7
		.' Place bunny ears on a Gnome |achieve 2422/4
		.' Place bunny ears on a Tauren |achieve 2422/8
	step //32
		'Congratulations, you are now a Noble Gardener!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Orgrimmar Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.
	startlevel 80
	step //1
		goto Orgrimmar,70.9,25.6
		.talk Orphan Matron Battlewail##14451
		..accept Children's Week##172
	step //2
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Children's Week##172
		..accept Lordaeron Throne Room##1800
		..accept Down at the Docks##910
		..accept Gateway to the Frontier##911
	step //3
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		.' Fly to Ratchet, The Barrens |goto The Barrens,63.1,37.1,0.5 |noway |c 
	step //4
		goto The Barrens,63.1,38.2
		.' Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.' Take your orphan to the docks of Ratchet in the Barrens |q 910/1
	step //5
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Down at the Docks##910
	step //6
		goto The Barrens,63.1,37.2
		.talk Bragok##16227
		.' Fly to the Crossroads, The Barrens |goto The Barrens,51.5,30.4,0.5 |noway |c
	step //7
		goto The Barrens,48.0,5.6
		.' Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.' Take your orphan to the Mor'shan Rampart in the Barrens |q 911/1
	step //8
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Gateway to the Frontier##911
	step //9
		goto The Barrens,51.5,30.3
		.talk Devrak##3615
		.' Fly to Orgrimmar, Durotar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
	step //10
		'Go outside to Durotar |goto Durotar |noway |c
	step //11
		goto Durotar,50.8,13.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //12
		'Go south to Undercity |goto Undercity |noway |c
	step //13
		goto Undercity,66.0,36.8
		.' Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.' Take your orphan to the old Lordaeron Throne Room that lies just before descending into the Undercity |q 1800/1
	step //14
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Lordaeron Throne Room##1800
		..accept You Scream, I Scream...##915
		..accept Cairne's Hoofprint##925
	step //15
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //16
		goto Tirisfal Glades,60.7,58.8 |n
		.' Ride the zeppelin to Durotar |goto Durotar |noway |c
	step //17
		'Go inside Orgrimmar |goto Orgrimmar |noway |c
	step //18
		goto Orgrimmar,52.2,69.0
		.talk Alowicious Czervik##14480
		..get Tigule and Foror's Strawberry Ice Cream |q 915/1
	step //19
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin You Scream, I Scream...##915
	step //20
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.6,49.9,0.5 |noway |c
	step //21
		goto Thunder Bluff,60.3,51.7
		.talk Cairne Bloodhoof##3057
		..' Ask him for his Hoofprint
		.get Cairne's Hoofprint |q 925/1
	step //22
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Cairne's Hoofprint##925
		..accept A Warden of the Horde##5502
	step //23
		goto Thunder Bluff,47.0,49.8
		.talk Tal##2995
		.' Fly to Orgrimmar, Durotar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
	step //24
		goto Orgrimmar,70.9,25.6
		.talk Orphan Matron Battlewail##14451
		..turnin A Warden of the Horde##5502 |tip You will be able to choose from 3 pet companions or a 5 gold reward.  If you already have all 3 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Shattrath Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
	startlevel 80
	step //1
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..accept Children's Week##10942
	step //2
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin Children's Week##10942
		..accept Hch'uu and the Mushroom People##10945
		..accept A Trip to the Dark Portal##10951
		..accept Visit the Throne of the Elements##10953 
	step //3
		goto Nagrand,60.7,22.3
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Throne of the Elements |q 10953/1
	step //4
		goto Nagrand,60.7,22.1
		.talk Elementalist Sharvak##18072
		..turnin Visit the Throne of the Elements##10953
	step //5
		goto Zangarmarsh,19.3,51.3
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to Sporeggar |q 10945/1
	step //6
		goto Zangarmarsh,19.3,51.3
		.talk Hch'uu##22823
		..turnin Hch'uu and the Mushroom People##10945
	step //7
		goto Hellfire Peninsula,89.6,50.2
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Dark Portal |q 10951/1
	step //8
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin A Trip to the Dark Portal##10951
		..accept Now, When I Grow Up...##11975
		..accept Time to Visit the Caverns##10963
	step //9
		'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
	step //10
		'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step //11
		goto Swamp of Sorrows,46.1,54.8
		.talk Breyk##6026
		..' Fly to Booty Bay, Stranglethorn |goto Stranglethorn Vale,26.8,77.0,0.5 |noway |c
	step //12
		goto Stranglethorn Vale,26.1,73.3 |n
		.' Ride the boat to Ratchet |goto The Barrens |noway |c
	step //13
		goto The Barrens,63.1,37.2
		.talk Bragok##16227
		..' Fly to Gadgetzan, Tanaris |goto Tanaris,51.6,25.5,0.5 |noway |c
	step //14
		goto Tanaris,61.5,50.6 |n
		.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
	step //15
		'Follow the path down to 60.6,57.5 |goto Tanaris,60.6,57.5 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Caverns of Time |q 10963/1
	step //16
		goto Tanaris,63.6,57.6
		.talk Alurmi##21643
		..get Toy Dragon##31951 |q 10963/2
	step //17
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin Time to Visit the Caverns##10963
	step //18
		'Go outside to 51.6,25.4 |goto Tanaris,51.6,25.4
		.talk Bulkrek Ragefist##7824
		..' Fly to Orgrimmar, Durotar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
	step //19
		'Go outside to Durotar |goto Durotar |noway |c
	step //20
		goto Durotar,50.8,13.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //21
		'Go south to Undercity |goto Undercity |noway |c
	step //22
		goto 54.9,11.3 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
	step //23
		goto Silvermoon City,76.7,80.7
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to see the Elite Tauren Chieftain in Silvermoon City's Walk of Elders |q 11975
	step //24
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin Now, When I Grow Up...##11975
		..accept Back to the Orphanage##10967
	step //25
		goto Silvermoon City,58.4,21.0 |n
		.' Click the Portal to Blasted Lands to go to the Blasted Lands |goto Blasted Lands |noway |c
	step //26
		'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step //27
		goto Hellfire Peninsula,87.3,48.1
		.talk Vlagga Freyfeather##18930
		..' Fly to Shattrath, Terokkar Forest |goto Shattrath City |noway |c
	step //28
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..turnin Back to the Orphanage##10967 |tip You will be able to choose from 3 pet companions.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Dalaran Oracles Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
	startlevel 80
	step //1
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Roo Of The Oracles##13926
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Oracle Orphan |q 13926/1
	step //2
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Little Orphan Roo Of The Oracles##13926
		..accept The Biggest Tree Ever!##13929
		..accept The Bronze Dragonshrine##13933
		..accept Playmates!##13950 
	step //3
		goto Grizzly Hills,50.8,42.8
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Grizzlemaw |q 13929/1
	step //4
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Biggest Tree Ever!##13929
	step //5
		goto Dragonblight,72.5,36.9
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit the Bronze Dragonshrine |q 13933/1
	step //6
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Bronze Dragonshrine##13933
	step //7
		goto Borean Tundra,43.5,13.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Winterfin Retreat |q 13950/1
	step //8
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Playmates!##13950
		..accept The Dragon Queen##13954
		..accept Meeting a Great One##13956
	step //9
		goto Sholazar Basin,40.3,83.0 |n
		.' Walk into the light to teleport to Un'Goro Crater |goto Un'Goro Crater |noway |c
	step //10
		goto Un'Goro Crater,47.5,9.2
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit The Etymidian |q 13956/1
	step //11
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Meeting a Great One##13956
	step //12
		goto Un'Goro Crater,50.5,7.8 |n
		.' Walk into the light to teleport to Sholazar Basin |goto Sholazar Basin |noway |c
	step //13
		goto Dragonblight,59.8,54.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Alexstrasza the Life-Binder |q 13954/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step //14
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Dragon Queen##13954
		..accept A Trip To The Wonderworks##13937
	step //15
		goto Dragonblight,60.3,51.6
		.talk Nethestrasz##26851
		..' Fly to Dalaran |goto Dalaran |noway |c
	step //16
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		..collect 1 Small Paper Zeppelin##46693
	step //17
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Use your Small Paper Zeppelin on your Oracle Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Roo |q 13937/1
	step //18
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin A Trip To The Wonderworks##13937
		..accept Back To The Orphanage##13959
	step //19
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##13959 |tip You will receive a Curious Oracle Hatchling pet companion in the mail.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Dalaran Wolvar Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
	startlevel 80
	step //1
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Kekek Of The Wolvar##13927
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Wolvar Orphan |q 13927/1
	step //2
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Little Orphan Kekek Of The Wolvar##13927
		..accept Home Of The Bear-Men##13930
		..accept The Bronze Dragonshrine##13934
		..accept Playmates!##13951 
	step //3
		goto Grizzly Hills,50.8,42.8
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Grizzlemaw |q 13930/1
	step //4
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Home Of The Bear-Men##13930
	step //5
		goto Dragonblight,72.5,36.9
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit the Bronze Dragonshrine |q 13934/1
	step //6
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Bronze Dragonshrine##13934
	step //7
		goto Dragonblight,45.3,63.3
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Snowfall Glade |q 13951/1
	step //8
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Playmates!##13951
		..accept The Dragon Queen##13955
		..accept The Mighty Hemet Nesingwary##13957
	step //9
		goto Dragonblight,59.8,54.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Alexstrasza the Life-Binder |q 13955/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step //10
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Dragon Queen##13955
	step //11
		goto Sholazar Basin,27.1,58.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Hemet Nesingwary |q 13957/1
	step //12
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Mighty Hemet Nesingwary##13957	
		..accept A Trip To The Wonderworks##13938
	step //13
		goto Sholazar Basin,25.3,58.5
		.talk The Spirit of Gnomeregan##28037
		..' Fly to Dalaran |goto Dalaran |noway |c
	step //14
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		..collect 1 Small Paper Zeppelin##46693
	step //15
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Use your Small Paper Zeppelin on your Wolvar Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Kekek |q 13938/1
	step //16
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin A Trip To The Wonderworks##13938
		..accept Back To The Orphanage##13960
	step //17
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##13960 |tip You will receive a Curious Wolvar Pup pet companion in the mail.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Achievements for the Children's Week event.
	startlevel 80
	step //1
		goto Orgrimmar,70.9,25.6
		.talk Orphan Matron Battlewail##14451
		..' Ask her for another Orphan Whistle |collect 1 Orcish Orphan Whistle##18597
	step //2
		'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		.' Get the Daily Chores Achievement |achieve 1789
	step //3
		goto Orgrimmar,52.2,69.0
		.talk Alowicious Czervik##14480
		..buy Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788
	step //4
		'Purchase the follow items from the Auction House, or use your Cooking ability to create them, if you'd like:
		.collect 1 Tasty Cupcake##43490 |achieve 1788
		.collect 1 Delicious Chocolate Cake##33924 |achieve 1788
	step //5
		goto Dalaran,51.2,29.1
		.talk Aimee##29548
		..buy 1 Red Velvet Cupcake##42429 |achieve 1788
		..buy 1 Lovely Cake##42438 |achieve 1788
		..buy 1 Dalaran Doughnut##42430 |achieve 1788
		..buy 1 Dalaran Brownie##42431 |achieve 1788
	step //6
		'Use your Lovely Cake in your bags to place a cake on the ground |use Lovely Cake##42438
		.' Click the Lovely Cake
		.collect 1 Lovely Cake Slice##42434 |achieve 1788
	step //7
		'Use whichever Orphan Whistle you currently have to summon your Orphan, so that the Orphan is standing next to you:
		.' Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
		.' Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
		.' Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
		.' Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
		.' Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
		.' Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
		.' Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
	step //8
		'Use your Hearthstone while your Orphan is standing next to you |use Hearthstone##6948
		.' Get the Home Alone Achievement |achieve 1791
	step //9
		'The following achievements are a little more dynamic, so we cannot walk you step-by-step through getting them.  Skip to the next guide step.
	step //10
		'Find a group, run the Utgarde Pinnacle dungeon, and defeat King Ymiron |tip Make sure your Orphan is standing next to you when you defeat King Ymiron, or else you won't get credit for the achievement.
		.' Get the Hail To The King, Baby Achievement |achieve 1790
	step //11
		'Enter the Eye of the Storm battleground and capture the flag |tip Make sure your Orphan is standing next to you when you capture the flag, or else you won't get credit for the achievement.
		.' Capture the flag in Eye of the Storm |achieve 1786/1
	step //12
		'Enter the Alterac Valley battleground and assault a tower |tip Make sure your Orphan is standing next to you when you assault the tower, or else you won't get credit for the achievement.
		.' Assault a tower in Alterac Valley |achieve 1786/2
	step //13
		'Enter the Arathi Basin battleground and assault a flag |tip Make sure your Orphan is standing next to you when you assault the flag, or else you won't get credit for the achievement.
		.' Assault a flag in Arathi Basin |achieve 1786/3
	step //14
		'Enter the Warsong Gulch battleground and return a fallen flag |tip Make sure your Orphan is standing next to you when you return the fallen flag, or else you won't get credit for the achievement.
		.' Return a fallen flag in Warsong Gulch |achieve 1786/4
	step //15
		'Congratulations, you do it For The Children!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
	startlevel 80
	step //1
		goto Mulgore,51.9,59.8
		.talk Mulgore Flame Keeper##25936
		..accept Honor the Flame##11852 |instant
	step //2
		goto Mulgore,51.8,60.1
		.talk Flame Eater##25994
		..accept Playing with Fire##11915
	step //3
		'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
	step //4
		 goto Thunder Bluff,40.8,56.1
		.talk Tauren Commoner##19176
		..accept The Spinner of Summer Tales##11971
	step //5
		goto Thunder Bluff,21.6,27.7
		.talk Festival Talespinner##16818
		..turnin The Spinner of Summer Tales##11971
		..accept Incense for the Festival Scorchlings##11966
	step //6
		goto Thunder Bluff,21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Playing with Fire##11915
		..accept Torch Tossing##11922
	step //7
		'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
		.' Hit 8 braziers |q 11922/1
	step //8
		goto Thunder Bluff,21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Torch Tossing##11922
		..accept Torch Catching##11923
	step //9
		goto Thunder Bluff,21.8,27.3
		.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
		.' As soon as you light torch, it will fly in the air.  There will be be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
		.' Catch 4 torches in a row. |q 11923/1
	step //10
		goto Thunder Bluff,21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Torch Catching##11923
	step //11
		goto Thunder Bluff,21.2,24.0
		.talk Earthen Ring Elder##26221
		..accept Unusual Activity##11886
	step //12
		goto Thunder Bluff,47.0,49.8
		.talk Tal##2995
		.' Fly to Brackenwall Village, Dustwallow Marsh |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
	step //13
		goto Dustwallow Marsh,33.5,30.9
		.talk Festival Scorchling##11966
		..turnin Incense for the Festival Scorchlings##11966
	step //14
		goto Dustwallow Marsh,33.4,30.9
		.talk Dustwallow Marsh Flame Keeper##25930
		..accept Honor the Flame##11847 |instant
	step //15
		goto Dustwallow Marsh,62.1,40.3
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11744 |instant
	step //16
		goto Dustwallow Marsh,35.6,31.9
		.talk Shardi##11899
		.' Fly to Freewind Post, Thousand Needles |goto Thousand Needles,45.0,49.1,0.5 |noway |c
	step //17
		goto Thousand Needles,42.3,52.9
		.talk Thousand Needles Flame Keeper##25945
		..accept Honor the Flame##11861 |instant
	step //18
		goto Thousand Needles,45.1,49.1
		.talk Nyse##4317
		.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.6,25.5,0.5 |noway |c
	step //19
		goto Tanaris,49.8,26.9
		.talk Tanaris Flame Keeper##25921
		..accept Honor the Flame##11838 |instant
	step //20
		goto Tanaris,52.8,29.1
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11762 |instant
	step //21
		goto Tanaris,51.6,25.4
		.talk Bulkrek Ragefist##7824
		.' Fly to Cenarion Hold, Silithus |goto Silithus,48.8,36.7,0.5 |noway |c
	step //22
		goto Silithus,46.5,44.5
		.talk Silithus Flame Keeper##25919
		..accept Honor the Flame##11836 |instant
	step //23
		goto Silithus,57.8,34.9
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11760 |instant
	step //24
		goto Silithus,48.7,36.7
		.talk Runk Windtamer##15178
		.' Fly to Camp Mojache, Feralas |goto Feralas,75.4,44.3,0.5 |noway |c
	step //25
		goto Feralas,72.4,47.8
		.talk Feralas Flame Keeper##25932
		..accept Honor the Flame##11849 |instant
	step //26
		goto Feralas,43.4,42.8 |n
		.' Ride the boat to Feathermoon |goto Feralas,31.0,39.9,4 |noway |c
	step //27
		goto Feralas,28.1,43.9
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11746 |instant
	step //28
		goto Feralas,31.0,39.9 |n
		.' Ride the boat to the mainland |goto Feralas,43.4,42.8,4 |noway |c
	step //29
		'Go north to Desolace |goto Desolace |noway |c
	step //30
		goto Desolace,26.2,76.9
		.talk Desolace Flame Keeper##25928
		..accept Honor the Flame##11845 |instant
	step //31
		goto Desolace,65.8,16.9
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11741 |instant
	step //32
		goto Stonetalon Mountains,38.2,68.3 |n
		.' The path up to Sun Rock Retreat starts here |goto Stonetalon Mountains,38.2,68.3,0.5 |noway |c
	step //33
		goto Stonetalon Mountains,50.5,60.5
		.talk Stonetalon Flame Keeper##25940
		..accept Honor the Flame##11856 |instant
	step //34
		goto Stonetalon Mountains,45.1,59.8
		.talk Tharm##4312
		.' Fly to Crossroads, The Barrens |goto The Barrens,51.5,30.4,0.5 |noway |c
	step //35
		goto The Barrens,52.2,28.1
		.talk The Barrens Flame Keeper##25943
		..accept Honor the Flame##11859 |instant
	step //36
		'Go northeast to Durotar |goto Durotar |noway |c
	step //37
		goto Durotar,52.2,47.3
		.talk Durotar Flame Keeper##25929
		..accept Honor the Flame##11846 |instant
	step //38
		'Go north to Orgrimmar |goto Orgrimmar |noway |c
	step //39
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		.' Fly to Everlook, Winterspring |goto Winterspring,60.5,36.3,0.5 |noway |c
	step //40
		goto Winterspring,59.9,35.6
		.talk Winterspring Flame Keeper##25922
		..accept Honor the Flame##11839 |instant
	step //41
		goto Winterspring,62.7,35.3
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11763 |instant
	step //42
		goto Winterspring,60.5,36.3
		.talk Yugrek##11139
		.' Fly to Splintertree Post, Ashenvale |goto Ashenvale,73.3,61.7,0.5 |noway |c
	step //43
		goto Ashenvale,70.2,69.3
		.talk Ashenvale Flame Keeper##25884
		..accept Honor the Flame##11841 |instant
	step //44
		goto Ashenvale,37.9,55.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11734 |instant
	step //45
		goto Ashenvale,15.3,20.1
		.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
		.get Twilight Correspondence |q 11886/1
	step //46
		goto Ashenvale,15.7,20.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin Unusual Activity##11886
		..accept An Innocent Disguise##11891
	step //47
		goto Ashenvale,9.6,13.2
		.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
		.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
	step //48
		'While in the crab disguise, go to 9.2,12.6 |goto Ashenvale,9.2,12.6
		.' Listen to the plan of the Twilight Cultists |q 11891/1
	step //49
		goto Ashenvale,9.7,13.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin An Innocent Disguise##11891
		..accept Inform the Elder##12012
	step //50
		'Go east to Darkshore |goto Darkshore |noway |c
	step //51
		goto Darkshore,37.1,45.9
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11740 |instant
	step //52
		goto Darkshore,33.2,40.1 |n
		.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
	step //53
		goto Teldrassil,56.7,92.2
		.' Click the Flame of Darnassus |tip It's a huge blue bonfire.
		.collect Flame of Darnassus##23184 |n
		.' Click the Flame of Darnassus in your bags |use Flame of Darnassus##23184
		..accept Stealing Darnassus's Flame##9332 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //54
		'Go inside the pink portal to Darnassus |goto Darnassus |noway |c
	step //55
		'Go out of the east exit of Darnassus to Teldrassil |goto Teldrassil |noway |c
	step //56
		goto Teldrassil,54.9,60.4
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11753 |instant
	step //57
		'Go west to Darnassus |goto Darnassus |noway |c
	step //58
		goto Darnassus,30.2,41.5 |n
		.' Go inside the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step //59
		goto Teldrassil,54.9,96.8 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //60
		goto Darkshore,30.8,41.0 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //61
		'Go inside the Exodar |goto Exodar |noway |c
	step //62
		goto The Exodar,41.6,26.9
		.' Click the Flame of the Exodar |tip It's a huge blue bonfire.
		.collect Flame of the Exodar##35569 |n
		.' Click the Flame of the Exodar in your bags |use Flame of the Exodar##35569
		..accept Stealing the Exodar's Flame##11933 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //63
		'Go outside to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //64
		goto Azuremyst Isle,44.7,52.7
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11735 |instant
	step //65
		'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
	step //66
		goto Bloodmyst Isle,55.9,68.6
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11738 |instant
	step //67
		'Go south to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //68
		goto Azuremyst Isle,20.4,54.2 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //69
		'Go south to Ashenvale |goto Ashenvale |noway |c
	step //70
		goto Ashenvale,12.2,33.8
		.talk Andruk##11901
		.' Fly to Ratchet, The Barrens |goto The Barrens,63.1,37.1,0.5 |noway |c
	step //71
		goto The Barrens,63.6,38.6 |n
		.' Ride the boat to Booty Bay |goto Stranglethorn Vale |noway |c
	step //72
		goto Stranglethorn Vale,32.9,75.2
		.talk Stranglethorn Vale Flame Keeper##25920
		..accept Honor the Flame##11837 |instant
	step //73
		goto Stranglethorn Vale,33.8,73.3
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11761 |instant
	step //74
		goto Stranglethorn Vale,26.9,77.1
		.talk Gringer##2858
		.' Fly to Stonard, Swamp of Sorrows |goto Swamp of Sorrows,46.0,54.7,0.5 |noway |c
	step //75
		goto Swamp of Sorrows,46.7,47.0
		.talk Swamp of Sorrows Flame Keeper##25941
		..accept Honor the Flame##11857 |instant
	step //76
		'Go southwest to the Blasted Lands |goto Blasted Lands |noway |c
	step //77
		goto Blasted Lands,58.9,17.3
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11737 |instant
	step //78
		'Go northwest to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step //79
		'Go west to Duskwood |goto Duskwood |noway |c
	step //80
		goto Duskwood,73.4,55.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11743 |instant
	step //81
		'Go west to Westfall |goto Westfall |noway |c
	step //82
		goto Westfall,56.1,54.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11581 |instant
	step //83
		'Go northeast to Elwynn Forest |goto Elwynn Forest |noway |c
	step //84
		goto Elwynn Forest,43.1,63.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11745 |instant
	step //85
		'Go northwest to Stormwind City |goto Stormwind City |noway |c
	step //86
		goto Stormwind City,50.0,72.6
		.' Click the Flame of Stormwind |tip It's a huge blue bonfire.
		.collect Flame of Stormwind##23182 |n
		.' Click the Flame of Stormwind in your bags |use Flame of Stormwind##23182
		..accept Stealing Stormwind's Flame##9330 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //87
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
	step //88
		'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
	step //89
		goto Redridge Mountains,24.8,59.5
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11751 |instant
	step //90
		'Go northeast to Burning Steppes |goto Burning Steppes |noway |c
	step //91
		goto Burning Steppes,80.6,62.2
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11739 |instant
	step //92
		goto Burning Steppes,61.8,29.0
		.talk Burning Steppes Flame Keeper##25927
		..accept Honor the Flame##11844 |instant
	step //93
		goto Burning Steppes,65.7,24.2
		.talk Vahgruk##13177
		.' Fly to Kargath, Badlands |goto Badlands,4.1,44.9,0.5 |noway |c
	step //94
		goto Badlands,4.7,48.6
		.talk Badlands Flame Keeper##25925
		..accept Honor the Flame##11842 |instant
	step //95
		'Go northeast to Loch Modan |goto Loch Modan |noway |c
	step //96
		goto Loch Modan,32.6,40.4
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11749 |instant
	step //97
		'Go southwest to Dun Morogh |goto Dun Morogh |noway |c
	step //98
		goto Dun Morogh,46.6,46.4
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11742 |instant
	step //99
		'Go northeast to Ironforge |goto Ironforge |noway |c
	step //100
		goto Ironforge,64.3,26.0
		.' Click the Flame of Ironforge |tip It's a huge blue bonfire.
		.collect Flame of Ironforge##23183 |n
		.' Click the Flame of Ironforge in your bags |use Flame of Ironforge##23183
		..accept Stealing Ironforge's Flame##9331 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //101
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //102
		'Go east to Loch Modan |goto Loch Modan |noway |c
	step //103
		'Go north to Wetlands |goto Wetlands |noway |c
	step //104
		goto Wetlands,13.2,47.3
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11757 |instant
	step //105
		'Go northeast to Arathi Highlands |goto Arathi Highlands |noway |c
	step //106
		goto Arathi Highlands,50.3,45.1
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11732 |instant
	step //107
		goto Arathi Highlands,74.2,41.5
		.talk Arathi Flame Keeper##25923
		..accept Honor the Flame##11840 |instant
	step //108
		goto Arathi Highlands,73.1,32.6
		.talk Urda##2851
		.' Fly to Tarren Mill, Hillsbrad |goto Hillsbrad Foothills,60.2,18.8,0.5 |noway |c
	step //109
		goto Hillsbrad Foothills,58.6,25.4
		.talk Hillsbrad Flame Keeper##25935
		..accept Honor the Flame##11853 |instant
	step //110
		goto Hillsbrad Foothills,50.4,47.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11748 |instant
	step //111
		goto Hillsbrad Foothills,60.1,18.6
		.talk Zarise##2389
		.' Fly to The Sepulcher, Silverpine Forest |goto Silverpine Forest,45.6,42.4,0.5 |noway |c
	step //112
		goto Silverpine Forest,49.7,38.3
		.talk Silverpine Forest Flame Keeper##25939
		..accept Honor the Flame##11584 |instant
	step //113
		goto Silverpine Forest,45.6,42.6
		.talk Karos Razok##2226
		.' Fly to Undercity, Tirisfal |goto Undercity,63.1,48.3,0.5 |noway |c
	step //114
		goto Undercity,66.9,13.5
		.talk Earthen Ring Elder##26221
		..turnin Inform the Elder##12012
	step //115
		goto Undercity,67.7,8.3
		.talk Festival Talespinner##16818
		..turnin Stealing Darnassus's Flame##9332
		..turnin Stealing the Exodar's Flame##11933
		..turnin Stealing Stormwind's Flame##9330
		..turnin Stealing Ironforge's Flame##9331
		..accept A Thief's Reward##9339 |instant
	step //116
		goto Undercity,54.9,11.3
		.' Click the Orb of Translocation |tip It's a glowing red ball floating above a spinning golden base.
		.' Go to Silvermoon City |goto Silvermoon City |noway |c
	step //117
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step //118
		goto Eversong Woods,46.4,50.6
		.talk Eversong Woods Flame Keeper##25931
		..accept Honor the Flame##11848 |instant
	step //119
		'Go south to Ghostlands |goto Ghostlands |noway |c
	step //120
		goto Ghostlands,46.9,26.3
		.talk Ghostlands Flame Keeper##25933
		..accept Honor the Flame##11850 |instant
	step //121
		goto Ghostlands,45.4,30.5
		.talk Skymaster Sunwing##16189
		.' Fly to Revantusk Village, The Hinterlands |goto The Hinterlands,81.7,81.9,0.5 |noway |c
	step //122
		goto The Hinterlands,76.7,75.0
		.talk The Hinterlands Flame Keeper##25944
		..accept Honor the Flame##11860 |instant
	step //123
		goto The Hinterlands,14.6,49.8
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11755 |instant
	step //124
		'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
	step //125
		goto Hillsbrad Foothills,60.1,18.6
		.talk Zarise##2389
		.' Fly to The Bulwark, Tirisfal |goto Tirisfal Glades,83.5,70.1,0.5 |noway |c
	step //126
		'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
	step //127
		goto Western Plaguelands,43.6,82.5
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11756 |instant
	step //128
		'Go northwest to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //129
		goto Tirisfal Glades,57.2,51.7
		.talk Tirisfal Glades Flame Keeper##25946
		..accept Honor the Flame##11862 |instant
	step //130
		'Go southeast to Undercity |goto Undercity |noway |c
	step //131
		goto Undercity,85.3,17.1 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step //132
		'Go inside the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step //133
		goto Hellfire Peninsula,61.9,58.5
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11747 |instant
	step //134
		goto Hellfire Peninsula,57.1,42.0
		.talk Hellfire Peninsula Flame Keeper##25934
		..accept Honor the Flame##11851 |instant
	step //135
		goto Netherstorm,32.1,68.3
		.talk Netherstorm Flame Keeper##25918
		..accept Honor the Flame##11835 |instant
	step //136
		goto Netherstorm,31.1,62.9
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11759 |instant
	step //137
		goto Blade's Edge Mountains,49.9,58.7
		.talk Blade's Edge Flame Keeper##25926
		..accept Honor the Flame##11843 |instant
	step //138
		goto Blade's Edge Mountains,41.8,66.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11736 |instant
	step //139
		goto Zangarmarsh,35.4,51.6
		.talk Zangarmarsh Flame Keeper##25947
		..accept Honor the Flame##11863 |instant
	step //140
		goto Zangarmarsh,68.6,52.1
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11758 |instant
	step //141
		goto Nagrand,50.9,34.1
		.talk Nagrand Flame Keeper##25937
		..accept Honor the Flame##11854 |instant
	step //142
		goto Nagrand,49.7,69.7
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11750 |instant
	step //143
		goto Terokkar Forest,52.0,42.9
		.talk Terokkar Forest Flame Keeper##25942
		..accept Honor the Flame##11858 |instant
	step //144
		goto Terokkar Forest,54.2,55.5
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11754 |instant
	step //145
		goto Shadowmoon Valley,33.4,30.5
		.talk Shadowmoon Valley Flame Keeper##25938
		..accept Honor the Flame##11855 |instant
	step //146
		goto Shadowmoon Valley,39.5,54.4
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11752 |instant
	step //147
		goto Shattrath City,52.2,52.9 |n
		.' Click the Shattrath Portal to Orgrimmar |goto Orgrimmar |noway |c
	step //148
		'Go outside to Durotar |goto Durotar |noway |c
	step //149
		goto Durotar,41.4,17.7 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
	step //150
		goto Borean Tundra,55.2,20.2
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13440 |instant
	step //151
		goto Borean Tundra,51.1,11.5
		.talk Borean Tundra Flame Keeper##32809
		..accept Honor the Flame##13493 |instant
	step //152
		goto Sholazar Basin,47.9,66.2
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13442 |instant
	step //153
		goto Sholazar Basin,47.1,61.5
		.talk Sholazar Basin Flame Keeper##32810
		..accept Honor the Flame##13494 |instant
	step //154
		goto Dragonblight,38.3,48.5
		.talk Dragonblight Flame Keeper##32811
		..accept Honor the Flame##13495 |instant
	step //155
		goto Dragonblight,75.1,43.8
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13443 |instant
	step //156
		goto Crystalsong Forest,77.6,75.2
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13447 |instant
	step //157
		goto Crystalsong Forest,80.0,53.2
		.talk Crystalsong Forest Flame Keeper##32815
		..accept Honor the Flame##13499 |instant
	step //158
		goto The Storm Peaks,40.3,85.3
		.talk Storm Peaks Flame Keeper##32814
		..accept Honor the Flame##13498 |instant
	step //159
		goto The Storm Peaks,41.4,87.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13446 |instant
	step //160
		goto Zul'Drak,40.5,61.0
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13449 |instant
	step //161
		goto Zul'Drak,43.4,71.7
		.talk Zul'Drak Flame Keeper##32816
		..accept Honor the Flame##13500 |instant
	step //162
		goto Grizzly Hills,19.3,61.2
		.talk Grizzly Hills Flame Keeper##32813
		..accept Honor the Flame##13497 |instant
	step //163
		goto Grizzly Hills,34.2,60.6
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13445 |instant
	step //164
		goto Howling Fjord,48.6,13.1
		.talk Howling Fjord Flame Keeper##32812
		..accept Honor the Flame##13496 |instant
	step //165
		goto Howling Fjord,57.8,15.8
		.' Click the Alliance Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13444 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
	startlevel 80
	step //1
		'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
		.' Skip to the next step in the guide
	step //2
		goto Undercity,66.9,13.6
		.talk Earthen Ring Elder##26221
		..' Queue for The Frost Lord Ahune battle.
		..' Click Find Group
		..from Lord Ahune##25740
		.' Complete the Ice the Frost Lord Achievement |achieve 263
	step //3
		goto Undercity,68.1,11.2
		.talk Midsummer Merchant##26124
		.buy 15 Juggling Torch##34599
		.buy 1 Mantle of the Fire Festival##23324
		.buy 1 Vestment of Summer##34685
		.buy 1 Sandals of Summer##34683
	step //4
		goto Undercity,68.0,14.4
		.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
		'
		'
		.' Equip your Vestment of Summer |use Vestment of Summer##34685
		'
		'
		.' Equip your Sandals of Summer |use Sandals of Summer##34683
		.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
		.' Let your character spin around for 1 minute
		.' Complete the Burning Hot Pole Dance Achievement |achieve 271
	step //5
		'Don't forget to put your regular gear back on
		.' Skip to the next step in the guide
	step //6
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //7
		goto Tirisfal Glades,59.1,59.0 |n
		.' Ride the zeppelin to Howling Fjord |goto Howling Fjord |noway |c
	step //8
		goto Howling Fjord,79.0,29.7
		.talk Bat Handler Adeline##27344
		.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
	step //9
		goto Dalaran,36.8,44.1
		.' Use your 40 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is the place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
		.' Complete the Torch Juggler Achievement |achieve 272
	step //10
		'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Zalazane's Fall Pre-Cataclysm Event",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Zalazane's Fall Pre-Cataclysm event.
	step //1
		goto Durotar,57.5,72.5
		.talk Vanira##40184
		..accept Da Perfect Spies##25444
	step //2
		goto 57.2,76.7
		.' Click Sen'jin Frogs
		.collect 5 Captured Frog##53510 |q 25444
	step //3
		goto 57.6,72.5
		.' Use your Captured Frogs next to Vanira's Sentry Totem |use Captured Frog##53510 |tip It's a pink-ish glowing totem.
		.' Attune 5 Sen'jin Frogs |q 25444/1
	step //4
		goto 57.5,72.5
		.talk Vanira##40184
		..turnin Da Perfect Spies##25444
		..accept Frogs Away!##25446
	step //5
		goto 57.1,75.1
		.talk Handler Marnlek##40204
		..' Tell him Vanira told you to speak with him about borrowing a bat
		.' Use your Sack o' Frogs on the smokey spots on the ground |use Sack o' Frogs##53637
		.' Deploy 12 Attuned Frogs |q 25446/1
	step //6
		goto 57.5,72.5
		.talk Vanira##40184
		..turnin Frogs Away!##25446
	step //7
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..accept Trollin' For Volunteers##25461
	step //8
		goto 52.9,43.4
		.' Use Vol'jin's War Drums on Troll Citizens |use Vol'jin's War Drums##54215
		.' Recruit 5 Troll Volunteers |q 25461/1
	step //9
		goto 57.8,73.0
		.' Stand next to Champion Uru'zin
		.' Deliver 5 Troll Volunteers to Champion Uru'zin |q 25461/2
	step //10
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..turnin Trollin' For Volunteers##25461
	step //11
		goto 57.5,72.5
		.talk Vanira##40184
		..accept Lady Of Da Tigers##25470
	step //12
		goto 59.8,82.7
		.' Once you get to this spot, the Tiger Matriarch will appear and attack you
		.' Use the abilities on your hotbar to fight the Tiger Matriarch
		.' Challenge the Tiger Matriarch |q 25470/1
	step //13
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Lady Of Da Tigers##25470
		..accept Dance Of De Spirits##25480
	step //14
		goto 57.0,74.1
		.talk Witch Doctor Hez'tok##40352 |tip If he's not there, don't worry.  Just go in the middle of all the dancing troll spirits and complete the rest of this step.
		.' Tell him let us consult the omens
		.' Follow him to the blue flame
		.' Dance in the middle of the troll spirits |script DoEmote("DANCE")
		.' Perform the Dance of the Spirits |q 25480/1
	step //15
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Dance Of De Spirits##25480
	step //16
		'From this point on, you need to be at least level 75.
	step //17
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..accept Preparin' For Battle##25495
	step //18
		goto 57.1,75.1
		.talk Handler Marnlek##40204
		..' Tell him you are ready to take back to Echo Isles
		.' You will fly to the Echo Isles |goto 63.9,75.4,0.5 |noway |c |q 25495
	step //19
		goto 64.5,74.1
		.talk Vol'jin##39654
		..turnin Preparin' For Battle##25495
		..accept Zalazane's Fall##25445
	step //20
		'Use your Darkspear Pride |use Darkspear Pride##54653
		.' Transform into a Darkspear Warrior
		.' Wait until the battle begins
		.' Follow Vol'jin through the battle and fight for Echo Isles!
		.' Kill Zalazane |q 25445/1
	step //21
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Zalazane's Fall##25445
	step //22
		'Congratulations, you've taken back Echo Isles for the Trolls!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Harvest Festival",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Hervest Festival event.
	step //1
		goto Durotar,46.1,13.8
		.talk Javnir Nashak##15012
		..accept Honoring a Hero##8150
	step //2
		.' Go to Orgrimmar | goto Orgrimmar| noway |c
	step //3
		goto 45.1,63.9
		.talk Doras##3310
		.' Fly to Splintertree Post, Ashenvale |goto Ashenvale,73.3,61.7,0.5 |noway |c
	step //4
		goto 82.9,79.1
		.' Use Grom's Tribute in front of Grom's statue |use Grom's Tribute##19851
		.' Place a tribute at Grom's Tomb |q 8150/1
	step //5
		goto 73.2,61.6
		.talk Vhulgra##12616
		.' Fly to Orgrimmar |goto Durotar |noway |c
	step //6
		goto Durotar,46.1,13.8
		.talk Javnir Nashak##15012
		..turnin Honoring a Hero##8150
	step //7
		goto 46.5,13.5
		.' You can click special food items on the table.
		.' In 2 days You will also get an item called Bounty of the Harvest in the mail.
	step //8
		'Congratulations, you've completed the Harvest Festival
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Brewfest (September 20th - October 6th)\\Brewfest Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the quests for the Brewfest event.
	step //1
		goto Orgrimmar,51.4,69.5
		.talk Orc Commoner##19175
		..accept Brewfest!##11446
	step //2
		'Go outside to Durotar |goto Durotar |noway |c
	step //3
		goto Durotar,46.3,15.0
		.talk Ram Master Ray##24497
		..accept Now This is Ram Racing... Almost.##11409
	step //4
		'As you run around on the ram:
		.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  The make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
		.' Maintain a Trot for 8 seconds |q 11409/1
		.' Maintain a Canter for 8 seconds |q 11409/2
		.' Maintain a Gallop for 8 seconds |q 11409/3
	step //5
		goto 46.3,15.0
		.talk Ram Master Ray##24497
		..turnin Now This is Ram Racing... Almost.##11409
		..accept There and Back Again##11412
	step //6
		goto 48.2,27.5 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
		.' Bok Dropcertain will throw you a keg when you get close
		.' Once you have a keg, run back and turn it in to Driz Tumblequick at 46.3,14.8 |tip Just get near him and you will throw the keg to him.
		.' Deliver 3 Kegs in Under 4 Minutes|q 11412/1
	step //7
		goto 46.3,15.0
		.talk Ram Master Ray##24497
		..turnin There and Back Again##11412
	step //8
		goto 46.3,14.8
		.talk Driz Tumblequick##24510
		..accept Another Year, Another Souvenir.##13931
	step //9
		goto 45.6,17.2
		.talk Tapper Swindlekeg##24711
		..turnin Brewfest!##11446
	step //10
		goto 45.3,17.3
		.talk Bizzle Quicklift##27216
		..accept Chug and Chuck!##12191
	step //11
		goto 45.2,17.4
		.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
		.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
		.' Hit S.T.O.U.T. 5 Times |q 12191/1
	step //12
		goto 45.3,17.3
		.talk Bizzle Quicklift##27216
		..turnin Chug and Chuck!##12191
	step //13
		goto 45.0,17.4
		.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
		.talk Glodrak Huntsniper##24657
		..accept Catch the Wild Wolpertinger!##11431
		..accept Pink Elekks On Parade##11120
	step //14
		goto 45.0,17.4
		.talk Glodrak Huntsniper##24657
		..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
		.collect Synthebrew Goggles##46735 |q 11431
	step //15
		goto 44.1,18.0
		.talk Blix Fixwidget##24495
		..turnin Another Year, Another Souvenir.##13931
	step //16
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11431
	step //17
		goto 44.0,17.3
		.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
		.get 5 Stunned Wolpertinger |q 11431/1
	step //18
		goto 45.0,17.4
		.talk Glodrak Huntsniper##24657
		..turnin Catch the Wild Wolpertinger!##11431
	step //19
		goto 50.9,13.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //20
		'Go south into Undercity |goto Undercity |noway |c
	step //21
		goto Undercity,70.5,12.0
		.' Use your Elekk Dispersion Ray on Tirisfal Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Tirisfal Pink Elekk |q 11120/3
	step //22
		goto 54.9,11.3 |n
		.' Click the Orb of Translocation |tip It looks like a red glowing orb in a gold spinning stand.
		.' Teleport to Silvermoon City |goto Silvermoon City |noway |c
	step //23
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step //24
		goto Eversong Woods,57.0,53.1
		.' Use your Elekk Dispersion Ray on Eversong Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Eversong Pink Elekk |q 11120/1
	step //25
		'Go inside Silvermoon City |goto Silvermoon City |noway |c
	step //26
		goto Silvermoon City,49.5,14.8 |n
		.' Click the Orb of Translocation |tip It looks like a red glowing orb in a gold spinning stand.
		.' Teleport to Undercity |goto Undercity |noway |c
	step //27
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c	
	step //28
		goto Tirisfal Glades,60.7,58.7 |n
		.' Ride the zeppelin to Durotar |goto Durotar |noway |c
	step //29
		'Go inside Orgrimmar |goto Orgrimmar |noway |c
	step //30
		goto Orgrimmar,45.1,63.9
		.talk Doras##3310
		.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.6,49.9,0.5 |noway |c
	step //31
		goto Thunder Bluff,34.7,74.7
		.' Go down the lifts
		.' Use your Elekk Dispersion Ray on Mulgore Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Mulgore Pink Elekk |q 11120/2
	step //32
		goto 47.0,49.8
		.talk Tal##2995
		.' Fly to Orgrimmar, Durotar |goto Orgrimmar,45.3,63.8,0.5 |noway |c
	step //33
		'Go outside to Durotar |goto Durotar |noway |c
	step //34
		goto Durotar,45.0,17.4
		.talk Glodrak Huntsniper##24657
		..turnin Pink Elekks On Parade##11120
	step //35
		'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
		.' You will fight Coren Direbrew
		.from Coren Direbrew##23872
		.collect Direbrew's Dire Brew##38281 |n
		.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38281
		..accept Direbrew's Dire Brew##12492
	step //36
		'Click the green eye on the edge of your minimap
		.' Teleport Out of the Dungeon |goto Durotar |noway |c
	step //37
		goto Durotar,45.6,17.2
		.talk Tapper Swindlekeg##24711
		..turnin Direbrew's Dire Brew##12492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Brewfest (September 20th - October 6th)\\Brewfest Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests for the Brewfest event.
	step //1
		'You will only be able to do 1 of the first 2 dailies in this guide, per day. |tip Quests "Bark for Drohn's Distillery!" or "Bark for T'chali's Voodoo Brewery!".
		.' Skip to the next step in the guide
	step //2
		goto Durotar,44.4,17.9
		.talk Cort Gorestein##24498
		..accept Bark for Drohn's Distillery!##11407 |daily
	step //3
		goto Durotar,43.6,17.6
		.talk Ja'ron##24499
		..accept Bark for T'chali's Voodoo Brewery!##11408 |daily
	step //4
		'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11407
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
	step //5
		'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11294
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
	step //6
		goto Orgrimmar,52.9,66.5 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Auction House |q 11407/1
	step //7
		goto 71.5,34.8 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Honor |q 11407/2
	step //8
		goto 43.8,36.5 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Wisdom |q 11407/3
	step //9
		goto 37.0,74.3 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Spirits |q 11407/4
	step //10
		goto Orgrimmar,52.9,66.5 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Auction House |q 11408/1
	step //11
		goto 71.5,34.8 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Honor |q 11408/2
	step //12
		goto 43.8,36.5 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Wisdom |q 11408/3
	step //13
		goto 37.0,74.3 
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Valley of Spirits |q 11408/4
	step //14
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //15
		goto Durotar,44.4,17.9
		.talk Cort Gorestein##24498
		..turnin Bark for Drohn's Distillery!##11407
	step //16
		goto Durotar,43.6,17.6
		.talk Ja'ron##24499
		..turnin Bark for T'chali's Voodoo Brewery!##11408
	step //17
		goto 44.1,17.3
		.' Click the Dark Iron Mole Machine Wreckage |tip It looks like a big metal gear laying on ground in the middle of the festival.  It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
		..accept This One Time, When I Was Drunk...##12192 |daily
	step //18
		goto 45.3,17.3
		.talk Bizzle Quicklift##27216
		..turnin This One Time, When I Was Drunk...##12192
	step //19
		goto 46.3,15.0
		.talk Ram Master Ray##24497
		..' Ask him if he still needs some help shipping kegs from the crash site near Razor Hill, then offer to work |tip This isn't actually a quest, but you can help him one time per day.
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
		.' On your Ram, run to Bok Dropcertain at 48.2,27.5 |tip Bok Dropcertain will throw you a keg when you get close.
		.' Once you have a keg, run back and turn it in to Driz Tumblequick at 46.3,14.8 |tip Just get near him and you will throw the keg to him.
		.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Brewfest (September 20th - October 6th)\\Brewfest Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the achievements for the Brewfest event.
	step //1
		goto Durotar,44.8,17.5
		.talk Uta Roughdough##23603
		.buy The Essential Brewfest Pretzel##33043 |achieve 1185
	step //2
		'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
		.' Eat The Essential Brewfest Pretzels |achieve 1185/7
	step //3
		goto 43.9,17.9
		.talk Agnes Farwithers##23604
		.buy Spiced Onion Cheese##34065 |achieve 1185
	step //4
		'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
		.' Eat the Spiced Onion Cheese |achieve 1185/4
	step //5
		goto 44.4,16.6
		.talk Bron##23605
		.buy Dried Sausage##34063 |achieve 1185
		.buy Succulent Sausage##34064 |achieve 1185
		.buy Savory Sausage##33023 |achieve 1185
		.buy Pickled Sausage##33024 |achieve 1185
		.buy Spicy Smoked Sausage##33025 |achieve 1185
		.buy The Golden Link##33026 |achieve 1185
	step //6
		'Do the following:
		.' Click the Dried Sausage in your bags |use Dried Sausage##34063
		.' Eat the Dried Sausage |achieve 1185/1
		.' Click the Succulent Sausage in your bags |use Succulent Sausage##34064
		.' Eat the Succulent Sausage |achieve 1185/6
		.' Click the Savory Sausage in your bags |use Savory Sausage##33023
		.' Eat the Savory Sausage |achieve 1185/3
		.' Click the Pickled Sausage in your bags |use Pickled Sausage##33024
		.' Eat the Pickled Sausage |achieve 1185/2
		.' Click the Spicy Smoked Sausage in your bags |use Spicy Smoked Sausage##33025
		.' Eat Spicy Smoked Sausage |achieve 1185/5
		.' Click the The Golden Link in your bags |use The Golden Link##33026
		.' Eat The Golden Link |achieve 1185/8
	step //7
		goto 44.1,18.0
		.talk Blix Fixwidget##24495
		.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
	step //8
		'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
		.' Make your Mount Festive for Brewfest! |achieve 303
	step //9
		'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
		.collect 200 Brewfest Prize Token##37829 |achieve 2796
	step //10
		goto 44.1,18.0
		.talk Blix Fixwidget##24495
		.buy "Brew of the Month" Club Membership Form##37599 |n
		.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
		..accept Brew of the Month Club##12306
	step //11
		'Go inside Orgrimmar |goto Orgrimmar |noway |c
	step //12
		goto Orgrimmar,37.7,85.7
		.talk Ray'ma##27489
		..turnin Brew of the Month Club##12306
	step //13
		'Congratulations, you are a Brewmaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Events\\Zalazane's Fall Pre-Cataclysm Event",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Zalazane's Fall Pre-Cataclysm event.
	step //1
		goto Durotar,57.5,72.5
		.talk Vanira##40184
		..accept Da Perfect Spies##25444
	step //2
		goto 57.2,76.7
		.' Click Sen'jin Frogs
		.collect 5 Captured Frog##53510 |q 25444
	step //3
		goto 57.6,72.5
		.' Use your Captured Frogs next to Vanira's Sentry Totem |use Captured Frog##53510 |tip It's a pink-ish glowing totem.
		.' Attune 5 Sen'jin Frogs |q 25444/1
	step //4
		goto 57.5,72.5
		.talk Vanira##40184
		..turnin Da Perfect Spies##25444
		..accept Frogs Away!##25446
	step //5
		goto 57.1,75.1
		.talk Handler Marnlek##40204
		..' Tell him Vanira told you to speak with him about borrowing a bat
		.' Use your Sack o' Frogs on the smokey spots on the ground |use Sack o' Frogs##53637
		.' Deploy 12 Attuned Frogs |q 25446/1
	step //6
		goto 57.5,72.5
		.talk Vanira##40184
		..turnin Frogs Away!##25446
	step //7
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..accept Trollin' For Volunteers##25461
	step //8
		goto 52.9,43.4
		.' Use Vol'jin's War Drums on Troll Citizens |use Vol'jin's War Drums##54215
		.' Recruit 5 Troll Volunteers |q 25461/1
	step //9
		goto 57.8,73.0
		.' Stand next to Champion Uru'zin
		.' Deliver 5 Troll Volunteers to Champion Uru'zin |q 25461/2
	step //10
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..turnin Trollin' For Volunteers##25461
	step //11
		goto 57.5,72.5
		.talk Vanira##40184
		..accept Lady Of Da Tigers##25470
	step //12
		goto 59.8,82.7
		.' Once you get to this spot, the Tiger Matriarch will appear and attack you
		.' Use the abilities on your hotbar to fight the Tiger Matriarch
		.' Challenge the Tiger Matriarch |q 25470/1
	step //13
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Lady Of Da Tigers##25470
		..accept Dance Of De Spirits##25480
	step //14
		goto 57.0,74.1
		.talk Witch Doctor Hez'tok##40352 |tip If he's not there, don't worry.  Just go in the middle of all the dancing troll spirits and complete the rest of this step.
		.' Tell him let us consult the omens
		.' Follow him to the blue flame
		.' Dance in the middle of the troll spirits |script DoEmote("DANCE")
		.' Perform the Dance of the Spirits |q 25480/1
	step //15
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Dance Of De Spirits##25480
	step //16
		'From this point on, you need to be at least level 75.
	step //17
		goto 57.8,73.0
		.talk Champion Uru'zin##40253
		..accept Preparin' For Battle##25495
	step //18
		goto 57.1,75.1
		.talk Handler Marnlek##40204
		..' Tell him you are ready to take back to Echo Isles
		.' You will fly to the Echo Isles |goto 63.9,75.4,0.5 |noway |c |q 25495
	step //19
		goto 64.5,74.1
		.talk Vol'jin##39654
		..turnin Preparin' For Battle##25495
		..accept Zalazane's Fall##25445
	step //20
		'Use your Darkspear Pride |use Darkspear Pride##54653
		.' Transform into a Darkspear Warrior
		.' Wait until the battle begins
		.' Follow Vol'jin through the battle and fight for Echo Isles!
		.' Kill Zalazane |q 25445/1
	step //21
		goto 57.4,72.7
		.talk Vol'jin##40391
		..turnin Zalazane's Fall##25445
	step //22
		'Congratulations, you've taken back Echo Isles for the Trolls!
]])

ZygorGuidesViewer.HordeDailiesInstalled=true --!TRIAL
