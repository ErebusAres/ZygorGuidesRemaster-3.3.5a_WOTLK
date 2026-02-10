local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceDailiesInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Borean Tundra\\Borean Tundra Pre-Quests",[[
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
		.' Destroy 5 Dragon Eggs|q 11936/1
	step //6
		goto 33.3,34.5
		.talk Raelorasz##26117
		..turnin Hatching a Plan##11936
		..accept Drake Hunt##11919
	step //7
		goto 24.6,27.1|n
		.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
		.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue |q 11919
	step //8
		goto 33.3,34.5
		.' Stand here until it says Captured Nexus Drake|q 11940/1
		.talk Raelorasz##26117
		..turnin Drake Hunt##11919
	step //9
		goto 33.5,34.4
		.talk Librarian Serrah##26110
		..accept Corastrasza##13412
	step //10
		goto 29.5,24.8
		.talk Corastrasza##32548		..turnin Corastrasza##13412
		..accept Aces High!##13413
	step //11
		.' Tell Corastrasza you have the courage to face Malygos drakes
		.' She will give you a Wyrmrest Skytalon to ride
		.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
		.' Target a Scalesworn Elite flying above Corastrasza.
		.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
		.kill 5 Scalesworn Elites|q 13413/1
	step //12
		goto 29.5,24.8
		.talk Corastrasza##32548
		She's standing on a platform floating in the sky
		..turnin Aces High!##13413
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Borean Tundra\\Coldarra Dailies",[[
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
		.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue |q 11919
	step //3
		goto 33.3,34.5
		.' Stand here until it says Captured Nexus Drake|q 11940/1
		.talk Raelorasz##26117
		..turnin Drake Hunt##11940
	step //4
		goto 29.5,24.8
		.talk Corastrasza##32548
		..accept Aces High!##13414|daily
	step //5
		.' Tell Corastrasza you are ready
		.' She will give you a Wyrmrest Skytalon to ride
		.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
		.' Target a Scalesworn Elite flying above Corastrasza.
		.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
		.kill 5 Scalesworn Elites|q 13414/1
	step //6
		goto 29.5,24.8
		.talk Corastrasza##32548
		..turnin Aces High!##13414
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Borean Tundra\\Kaskala Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dalaran\\Cooking Dailies Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quest to unlock the Cooking daily quests in Dalaran.
	description This quest is only available to you if you have 350+ Cooking skill.
	step //1
		goto Howling Fjord,58.2,62.1
		.talk Brom Brewbaster##26905
		..accept Northern Cooking##13087|tip This quest is only available to you if you have 350+ Cooking skill.
	step //2
		goto 79.0,73.1
		.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
		.get 4 Chilled Meat |q 13087/1
	step //3
		goto 58.2,62.1
		.talk Brom Brewbaster##26905
		..turnin Northern Cooking##13087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dalaran\\Jewelcrafting Dailies Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quest to unlock the Jewelcrafting daily quests in Dalaran.
	description This quest is only available to you if you have 375+ Jewelcrafting skill.
	step //1
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		..accept Finish the Shipment##13041|tip This quest is only available once you have 375+ Jewelcrafting skill.
	step //2
		'Go the the Auction House in a major city:
		.' Buy 1 Chalcedony|q 13041/1|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
	step //3
		goto Dalaran,40.7,35.4
		.talk Timothy Jones##28701
		..turnin Finish the Shipment##13041
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dalaran\\Cooking Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Cooking daily quests in Dalaran.
	daily
	step //1
		goto Dalaran,40.8,65.4
		.talk Katherine Lee##28705
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13103 |daily |or
		..accept Convention at the Legerdemain##13101 |daily |or
		..accept Infused Mushroom Meatloaf##13100 |daily |or
		..accept Mustard Dogs!##13107 |daily |or
		..accept Sewer Stew##13102 |daily |or
	step //2
		goto 54.7,31.5
		.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		.collect 1 Aged Dalaran Limburger##43137 |q 13103
		.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
		.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
		.' You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
	step //3
		'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
		.get 1 Wine and Cheese Platter |q 13103/1
	step //4
		goto 55.0,30.8
		.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
		.get 1 Jug of Wine |q 13101/2
	step //5
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13101
	step //6
		'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
		.get 4 Northern Stew |q 13101/1
	step //7
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13100
	step //8
		goto 59.5,43.6
		.from Underbelly Rat##32428+
		.collect 4 Infused Mushroom##43100 |q 13100
	step //9
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13100
	step //10
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 2 Chilled Meat##43013 |q 13100
	step //11
		'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
		.get 1 Infused Mushroom Meatloaf |q 13100/1
	step //12
		goto Dalaran,67.7,40.0
		.' Click the Wild Mustard|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
		.collect 4 Wild Mustard##43143 |q 13107
		.' You can find more Wild Mustard flowers:
		..' At 50.3,48.3
		..' At 37.2,43.9
	step //13
		goto Borean Tundra,46.7,43.6
		.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		.collect 4 Rhino Meat##43012 |q 13107
	step //14
		'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
		.collect 4 Rhino Dogs##34752 |q 13107
	step //15
		'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
		.get 1 Mustard Dog Basket! |q 13107/1
	step //16
		goto Crystalsong Forest,26.9,45.5
		.' Click the Crystalsong Carrots|tip they looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
		.collect 4 Crystalsong Carrot##43148 |q 13102
	step //17
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13102
	step //18
		'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
		.get 1 Vegetable Stew |q 13102/1
	step //19
		goto Dalaran,36.6,27.8
		.talk Ranid Glowergold##28718
		..turnin Cheese for Glowergold##13103
	step //20
		goto Dalaran,48.6,37.5
		.talk Arille Azuregaze##29049
		..turnin Convention at the Legerdemain##13101
	step //21
		goto Dalaran,52.3,55.6
		.talk Orton Bennet##29527
		..turnin Infused Mushroom Meatloaf##13100
	step //22
		goto Dalaran,68.6,42.0
		.talk Archmage Pentarus##28160
		..turnin Mustard Dogs!##13107
	step //23
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13102
	step //24
		goto Dalaran,35.5,57.6
		.talk Ajay Green##29532
		..turnin Sewer Stew##13102
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dalaran\\Fishing Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dalaran\\Jewelcrafting Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dragonblight\\Dragonblight Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight.
	description The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.
	step //1
		'Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1
		.from Goramosh##26349
		.get Goramosh's Strange Device|n
		.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36742
		..accept A Strange Device##12055
	step //2
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin A Strange Device##12055
		..accept Projections and Plans##12060
	step //3
		goto 24.2,55.6
		.' Use your Surge Needle Teleporter|use Surge Needle Teleporter##36747
		.' Walk around on the platform you get teleported onto
		.' Observe the Object on the Surge Needle|q 12060/1
	step //4
		'Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c
	step //5
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Projections and Plans##12060
		..accept The Focus on the Beach##12065
	step //6
		goto 26.4,65
		.from Captain Emmy Malin##26762
		.get Ley Line Focus Control Ring|n
		.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|q 12065/1
		.get Captain Malin's Letter|n
		.' Click Captain Malin's Letter in your bags|use Captain Malin's Letter##36756
		..accept A Letter for Home##12067
	step //7
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin The Focus on the Beach##12065
		..accept Atop the Woodlands##12083
	step //8
		goto 32.2,70.6
		.from Lieutenant Ta'zinni##26815|tip He walks in a circle around the half-circle purple glowing thing.
		.collect Ley Line Focus Control Amulet##36779|q 12083
	step //9
		goto 32.2,71.2
		.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
		.' Retrieve ley line focus information|q 12083/1
	step //10
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin Atop the Woodlands##12083
		..accept Search Indu'le Village##12098
        step //11
		goto 40.3,66.9
		.' Click Mage-Commander Evenstar's body|tip His body is floating underwater here.
		..turnin Search Indu'le Village##12098
		..accept The End of the Line##12107
	step //12
		goto 39.8,66.9
		.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
		.' Retrieve ley line focus information|q 12107/1
	step //13
		goto 53,66.4
		.' Go to this spot on the cliff to Observe Azure Dragonshrine|q 12107/2
        step //14
		goto 48.5,74.4
		'Fly to Star's Rest|goto Dragonblight,29.2,55.4,0.5|noway|c
	step //15
		goto 29,55.5
		.talk Image of Archmage Modera##26673
		..turnin The End of the Line##12107
		..accept Gaining an Audience##12119
	step //16
		'Hearth to Moa'ki Harbor|goto Dragonblight,48.2,74.8,0.5|use Hearthstone##6948|noway|c
	step //17
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin Gaining an Audience##12119
		..accept Speak with your Ambassador##12766
	step //18
		home Wyrmrest Temple
        step //19
		goto 60,55.1
		.talk Lauriel Trueblade##27803
		..turnin Speak with your Ambassador##12766
		..accept Report to the Ruby Dragonshrine##12460
	step //20
		goto 60.3,51.6
		.talk Nethestrasz##26851
		..fpath Wyrmrest Temple
	step //21
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Report to the Ruby Dragonshrine##12460
		..accept Heated Battle##12416
	step //22
		goto 52.7,46.2
		.' Help kill the following:
		..'12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12416/1
		..'8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12416/2
		..'1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12416/3
		.' You can find more of these at 50.9,52.4|n
	step //23
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Heated Battle##12416
		..accept Return to the Earth##12417
	step //24
		goto 46.7,52.8
		.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
		.collect 6 Ruby Acorn##37727|n
		.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
		.' Return 6 Ruby Keepers to the Earth|q 12417/1
	step //25
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Return to the Earth##12417
		..accept Through Fields of Flame##12418
	step //26
		'Go into the valley to 48.2,47.8|goto 48.2,47.8
		.kill 6 Frigid Necromancer|q 12418/1
	step //27
		'Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49
		.from Dahlia Suntouch##27680
		.' Cleanse the Ruby Corruption|q 12418/2
	step //28
		goto 52.2,50
		.talk Ceristrasz##27506
		..turnin Through Fields of Flame##12418
		..accept The Steward of Wyrmrest Temple##12768
	step //29
		goto 57.9,54.2
		.talk Tariolstrasz##26443
		..turnin The Steward of Wyrmrest Temple##12768
		..accept Informing the Queen##12123
	step //30
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
	step //31
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Informing the Queen##12123
		..accept Report to Lord Afrasastrasz##12435
	step //32
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to Lord Afrasastrasz|goto Dragonblight,59.2,54.3,0.1|noway|c
	step //33
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Report to Lord Afrasastrasz##12435
		..accept Defending Wyrmrest Temple##12372
	step //34
		goto 58.3,55.2
		.talk Wyrmrest Defender##27629
		..'Tell him you are ready to get into the fight
		.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
		.kill 3 Azure Dragon|q 12372/1
		.kill 5 Azure Drake|q 12372/2
	step //35
		'Fly southwest to 55.1,66.4|goto 55.1,66.4
		.' Fly into the huge purple swirling column
		.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
		.' Destabilize the Azure Dragonshrine|q 12372/3
	step //36
		goto 58.7,54.5|n
		'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
	step //37
		goto 59.2,54.3
		.talk Lord Afrasastrasz##27575
		..turnin Defending Wyrmrest Temple##12372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dragonblight\\Moa'ki Harbor Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight.
	description There are no pre-quests needed to unlock the daily quest offered in this guide section.
	daily
	step //1
		goto Dragonblight,48.3,74.3
		.talk Trapper Mau'i##26228
		..accept Planning for the Future##11960
	step //2
		goto 45.3,63.7
		.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
		.get 12 Snowfall Glade Pup|q 11960/1
	step //3
		goto 48.3,74.3
		.talk Trapper Mau'i##26228
		..turnin Planning for the Future##11960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Dragonblight\\Wyrmrest Temple Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Wyrmrest Temple region of Dragonblight.
	daily
	step //1
		goto Dragonblight,59.2,54.3
		.talk Lord Afrasastrasz##27575
		..accept Defending Wyrmrest Temple##12372
	step //2
		goto 58.3,55.2
		.talk Wyrmrest Defender##27629
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Grizzly Hills\\Grizzly Hills Pre-Quests",[[
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
		.' Capture a Live Ice Troll|q 11984/1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Grizzly Hills\\Blackriver Logging Camp Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quest offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,30.0,59.8
		.talk Scout Captain Carter##27783
		..accept Blackriver Skirmish##12444
	step //2
		goto 28.3,63.4
		.' Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
		.' Kill 10 Horde in Blackriver|goal 10 Horde in Blackriver slain|q 12444/1
	step //3
		goto 30.0,59.8
		.talk Scout Captain Carter##27783
		..turnin Blackriver Skirmish##12444
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quests offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,39.3,43.9
		.talk Sergeant Hartsman##27468
		..accept Kick 'Em While They're Down##12289|daily
	step //2
		goto 39.5,43.6
		.talk Synipus##27371
		..accept Shredder Repair##12244|daily
	step //3
		goto 39.6,43.4
		.talk Pipthwack##27416
		..accept Pieces Parts##12268|daily
	step //4
		goto 40.5,42.7
		.talk Rheanna##27484
		..accept Life or Death##12296|daily
	step //5
		goto 34.9,39.8
		.' Use Renewing Bandages on Wounded Wesfall Infantry|use Renewing Bandage##37576
		.' Heal 10 Westfall Infantry|goal 10 Westfall Infantry Healed|q 12296/1
		.' Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
		..get 4 Grooved Cogs##37412|q 12268/1
		..get 3 Notched Sprockets##37413|q 12268/2
		..get 2 High Tension Springs##37416|q 12268/3
	step //6
		goto 33.4,35.7
		.' Kill Horde Players or Wounded Skirmishers in the area
		.' Eliminate 15 Horde units|goal 15 Horde units eliminated|q 12289/1
	step //7
		goto 34.9,39.8
		.' Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
		.' Click the Broken-down Shredder to get inside it
		.' Use your abilities on your hot bar to return the shredder to Synipus|goto Grizzly Hills,39.5,43.6
		.' Deliver 3 Shredders|goal 3 Shredder Delievered|q 12244/1
	step //8
		goto 39.3,43.9
		.talk Sergeant Hartsman##27468
		..turnin Kick 'Em While They're Down##12289
	step //9
		goto 39.5,43.6
		.talk Synipus##27371
		..turnin Shredder Repair##12244
	step //10
		goto 39.6,43.4
		.talk Pipthwack##27416
		..turnin Pieces Parts##12268
	step //11
		goto 40.5,42.7
		.talk Rheanna##27484
		..turnin Life or Death##12296
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Grizzly Hills\\Granite Springs Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.
	daily
	step //1
		goto Grizzly Hills,16.7,48.3
		.talk Mack Fearsen##26604
		..accept Seared Scourge##12038
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Grizzly Hills\\Venture Bay Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills.
	description There are no pre-quests needed to unlock the daily quests offered in this guide section.
	daily
	step //1
		goto Grizzly Hills,14.8,86.6
		.talk Commander Howser##27759
		..accept Riding the Red Rocket##12437
		.' If he's not there, then you have to take control of Venture Bay for the Alliance
		..' To take control of Venture Bay for the Alliance, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
	step //2
		goto 22.1,81.2
		.talk Sergeant Downey##27602
		..accept Smoke 'Em Out##12323
	step //3
		goto 22.1,81.2
		.talk Lieutenant Stuart##27562
		..accept Keep Them at Bay!##12316
	step //4
		goto 22.2,81.2
		.talk Baron Freeman##27520
		..accept Down With Captain Zorna##12314
	step //5
		goto 18.0,79.6
		.' Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers|use Smoke Bomb##37621
		.' Building one can be found at 18.0,79.6
		.' Building two can be found at 16.4,76.6
		.' Building three can be found at 14.6,76.7
		.' Smoke out 20 Venture Company Stragglers|goal 20 Venture Company Stragglers smoked out|q 12323/1
	step //6
		goto 19.9,76.4
		.' Kill Horde Players or Conquest Hold Berserker in Venture Bay
		.' Kill 10 Horde in Venture Bay|goal 10 Horde killed in Venture Bay|q 12316/1
	step //7
		goto 13.3,80.2
		..kill Captain Zorna##27511|q 12314/1
	step //8
		goto 16.4,80.3
		.' Click the Element 115 in the back room of the ship|tip It looks like a red canister with a handle on the top
		..collect Element 115##37664|q 12437
	step //9
		goto 9.6,79.2
		.' On the next step you will guide a rocket into this Horde Lumberboat
		.' Your target will be the wooden X on the back
		.' Go to 13.6,88.9|goto Grizzly Hills,13.6,88.9,0.5
		.' You will want to use your keys, not your mouse, to guide the rocket
		.' Avoid icebergs or the rocket will explode and you will have to start over
		.' Click a red rocket to take control of one|invehicle|c|q 12437
	step //10
		goto 9.6,79.1
		.' Hit the wooden X on the back of the Horde Lumberboat
		.' Destroy the Horde Lumberboat|goal Horde Lumberboat destroyed|q 12437/1
	step //11
		goto 14.8,86.6
		.talk Commander Howser##27759
		..turnin Riding the Red Rocket##12437
	step //12
		goto 22.1,81.2
		.talk Lieutenant Stuart##27562
		..turnin Keep Them at Bay!##12316
	step //13
		goto 22.1,81.2
		.talk Baron Freeman##27520
		..turnin Down With Captain Zorna##12314
	step //14
		goto 22.1,81.2
		.talk Sergeant Downey##27602
		..turnin Smoke 'Em Out##12323
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Howling Fjord\\Howling Fjord Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock the daily quest in the Kamagua and Steel Gate regions of Howling Fjord.
	description The Westguard Keep region of Howling Fjord does not have any pre-quests to unlock the daily quest that is available there.
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
	step //13
		goto Howling Fjord,30.2,28.7
		.talk Overseer Irena Stonemantle##23891
		..accept See to the Operations##11176
	step //14
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin See to the Operations##11176
		..accept I've Got a Flying Machine!##11390
	step //15
		'Click the plane near you on the wooden platform to ride in it|invehicle
	step //16
		'Fly down into the valley below
		.' They look like huge sacks with yellow stuff in them on the ground
		.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
		.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
		.' Repeat this 2 more time
		.' Deliver 3 Sacks of Relics|goal 3 Sack of Relics Delivered|q 11390/1
	step //17
		'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
	step //18
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin I've Got a Flying Machine!##11390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Howling Fjord\\Steel Gate Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Apothecary Camp region of Howling Fjord.
	daily
	step //1
		goto Howling Fjord,30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..accept Steel Gate Patrol##11391
	step //2
		'Click the plane near you on the wooden platform to ride in it|invehicle
	step //3
		'Use the abilities on your hotbar as you fly around to fight the flying gargoyles
		.kill 8 Gjalerbron Gargoyle|q 11391/1
	step //4
		'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
	step //5
		goto 30.8,28.6
		.talk Steel Gate Chief Archaeologist##24399
		..turnin Steel Gate Patrol##11391
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Howling Fjord\\Kamagua Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.
	daily
	step //1
		goto Howling Fjord,24.6,58.9
		.talk Anuniaq##24810
		..accept The Way to His Heart...##11472
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Howling Fjord\\Westguard Keep Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quest in the Westguard Keep region of Howling Fjord.
	daily
	 step //1
		goto Howling Fjord,29,41.9
		.talk Bombardier Petrov##23895
		..accept Break the Blockade##11153
	step //2
		goto 28.1,42.1
		.' If you have a flying mount you can just fly onto the boats and kill the pirates and cannons
		.' If you do not have a flying mountm wait for the zeppelin to come back, if it is there already, then get on it
		.' Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
		.kill 25 Blockade Pirate|q 11153/1
		.' Destroy 10 Blockade Cannons|goal 10 Blockade Cannons destroyed|q 11153/2
	step //3
		goto 29,41.9
		.talk Bombardier Petrov##23895
		..turnin Break the Blockade##11153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests)",[[
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
		.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle
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
		.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle
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
		.' Stand next to the Pile of Crusader Skulls
		.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		.' Defend the Banner of the Crusade against oncoming attackers
		.' Complete the Battle for Crusaders' Pinnacle |goal Battle for Crusaders' Pinnacle |q 13141/1
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
		goto 79.4,72.9
		.talk Marshal Ivalius##31241
		..accept The Skybreaker##13225
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
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		..talk High Captain Justin Bartlett##30344
		...turnin The Skybreaker##13225
		...accept The Broken Front##13231
	step //75
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..accept It's All Fun and Games##12887
	step //76
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..accept Blood of the Chosen##13336
		..accept Joining the Assault##13341
	step //77
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..accept Slaves to Saronite##13300
	step //78
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..accept Get to Ymirheim!##13296
	step //79
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Joining the Assault##13341
		..accept Assault by Air##13309
	step //80
		 goto Icecrown,62.5,51.1
		.talk Skybreaker Squad Leader##31737
		..accept Assault by Ground##13284
	step //81
		'Follow the Alliance troops up the mountain and help them fight
		.'Escort the Alliance troops into Ymirheim|goal 4 Alliance troops escorted to Ymirhem|q 13284/1|tip At least 4 Alliance troops must survive.
	step //82
		'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
	step //83
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves|goal 10 Saronite Mine Slave rescued|q 13300/1
	step //84
		'Go outside the cave|goto 57.0,57.3,0.3|c
	step //85
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13336/1
	step //86
		goto 57.0,62.5
		.talk Frazzle Geargrinder##31776
		..turnin Get to Ymirheim!##13296
		..accept King of the Mountain##13280
	step //87
		goto 51.9,57.6
		'Click Geargrinder's Jumpbot to get in the robot |invehicle
	step //88
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
		.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Alliance Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Alliance Battle Standard|goal Alliance Battle Standard planted|q 13280/1
	step //89
		'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c
	step //90
		goto 57.0,62.5
		.talk Frazzle Geargrinder##31776
		..turnin King of the Mountain##13280
	step //91
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Ground##13284
	step //92
		goto 62.6,50.9
		.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
	step //93
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
	step //94
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Air##13309
	step //95
		goto 69.0,67.3
		.talk Dying Soldier##31304
		..' Ask him what happened here
		.' Question the Dying Soldier|goal Dying Soldier Questioned|q 13231/1
	step //96
		goto 69.0,67.3
		.talk Dying Soldier##31304
		..accept Finish Me!##13232
	step //97
		goto 68.8,67.2
		.talk Dying Soldier##31304
		..' Tell 5 Dying Soldiers to travel well
		.' Kill 5 Dying Alliance Soldiers|goal 5 Dying Alliance Soldiers slain|q 13232/1
	step //98
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		..talk High Captain Justin Bartlett##30824
		...turnin The Broken Front##13231
		...turnin Finish Me!##13232
		...accept Your Attention, Please##13290
		...accept ...All the Help We Can Get.##13286
	step //99
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..turnin ...All the Help We Can Get.##13286
		..accept Poke and Prod##13287
	step //100
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..turnin Blood of the Chosen##13336
	step //101
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..turnin Slaves to Saronite##13300
	step //102
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin Your Attention, Please##13290
		..accept Borrowed Technology##13291
	step //103
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13291
		.' Click Abandoned Helm|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13291
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13291
	step //104
		goto 68.8,67.5
		.' Use Smuggled Solution 3 times|use Smuggled Solution##44048
		.' Conduct 3 Field Tests|goal 3 Field Tests Conducted|q 13291/1
	step //105
		goto 68.8,66.6
		.' Kill 5 Hulking Abominations|goal 5 Hulking Abominations Slain|q 13287/1
		.' Kill 5 Malefic Necromancer|goal 5 Malefic Necromancers Slain|q 13287/2
		.' Kill 5 Shadow Adept|goal 5 Shadow Adepts Slain|q 13287/3
	step //106
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Poke and Prod##13287
		..accept That's Abominable!##13288
	step //107
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin Borrowed Technology##13291
		..accept Killohertz##13383
	step //108
		goto 69.8,62.9
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13288/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13288/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13288/3
	step //109
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin That's Abominable!##13288
		..accept Sneak Preview##13315
	step //110
		goto 55.1,43.9
		.' Visit Aldur'thar South|goal Aldur'thar South Visited|q 13315/1
	step //111
		goto 54.7,38.9
		.' Visit Aldur'thar Central|goal Aldur'thar Central Visited|q 13315/2
	step //112
		goto 57.5,35.2
		.' Visit Aldur'thar North|goal Aldur'thar North Visited|q 13315/3
	step //113
		goto 51.3,35.3
		.' Visit Aldur'thar Northwest|goal Aldur'thar Northwest Visited|q 13315/4
	step //114
		'Fly up to and land on the platform at 54.0,42.9
	step //115
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Killohertz##13383
		..accept Leading the Charge##13380
	step //116
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle|q 13380
	step //117
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly behind you (you have to aim it)
		..kill 15 Gargoyle Ambusher|q 13380/3
		.' Drop bombs on the mobs below
		..kill 40 Bombardment Infantry|q 13380/1
		..kill 8 Bombardment Captain|q 13380/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //118
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13380
	step //119
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Leading the Charge##13380
	step //120
		goto 44.3,21.5
		.' Use your Eyesore Blaster on The Ocular|use Eyesore Blaster##41265|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
		.' Destroy The Ocular|goal The Ocular has been destroyed|q 12887/1
	step //121
		goto 44.1,24.7
		.talk Baron Sliver##12887
		..turnin It's All Fun and Games##12887
		..accept I Have and Idea, But First...##12891
	step //122
		goto 43.7,24.8
		.from Shadow Cultist##29717+
		.get 1 Cultist Rod|q 12891/1
		.from Morbid Carcass##29719+
		.get 1 Abomination Hook|q 12891/2
		.from Vault Geist##29720+
		.get 1 Geist Rope|q 12891/3
		.from Morbid Carcass##29719+, Vault Geist##29720+, Rabid Cannibal##29722+, Death Knight Master##29738+
		.get 5 Scourge Essence|q 12891/4
	step //123
		goto 44.1,24.7
		.talk Baron Sliver##29804
		..turnin I Have and Idea, But First...##12891
		..accept Free Your Mind##12893
	step //124
		goto 43.4,19.1
		.from The Leaper##29840
		.' Use your Sovereign Rod on The Leaper's corpse|use Soveriegn Rod##41366
		.' Turn The Leaper|goal The Leaper turned|q 12893/3
	step //125
		goto 44.4,27.0
		.from Vile##29769
		.' Use your Sovereign Rod on Vile's corpse|use Soveriegn Rod##41366
		.' Turn Vile|goal Vile turned|q 12893/1
	step //126
		goto 41.8,24.5
		.from Lady Nightswood##29770
		.' Use your Sovereign Rod on Lady Nightswood's corpse|use Soveriegn Rod##41366
		.' Turn Lady Nightswood|goal Lady Nightswood turned|q 12893/2
	step //127
		goto 44.1,24.7
		.talk Baron Sliver##29804
		..turnin Free Your Mind##12893
		..accept If He Cannot Be Turned##12896
	step //128
		'The entrance to the Shadow Vault starts here|goto 43.7,23.6,0.3|c
	step //129
		goto 44.9,19.9
		.' Click the General's Weapon Rack|It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
		.' General Lightsbane spawns
		.kill General Lightsbane|q 12896/1
	step //130
		'Leave the Shadow Vault|goto 43.7,23.6,0.3|c
	step //131
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin If He Cannot Be Turned##12896
		..accept The Shadow Vault##12898
		..turnin Sneak Preview##13315
		..accept Drag and Drop##13318
		..accept Chain of Command##13319
		..accept Cannot Reproduce##13320
	step //132
		goto 53.9,46.9
		.' Kill Overseer Faedris|goal Overseer Faedris Killed|q 13319/1|tip He's standing in a tent.
	step //133
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion|q 13318
	step //134
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators|goal 3 Dark Subjugators dragged and dropped|q 13318/1
	step //135
		goto 54.7,32.6
		.' Kill Overseer Jhaeqon|goal Overseer Jhaeqon Killed|q 13319/2|tip He's standing in a tent.
	step //136
		goto 53.7,29.2
		.' Kill Overseer Veraj|goal Overseer Veraj Killed|q 13319/3|tip He's standing under a white canopy.
	step //137
		goto 49.7,34.4
		.' Use your Partitioned Flask next to the big cauldron with purple smoke|use Partitioned Flask##44251
		.' Collect the Dark Sample|goal Dark Sample Collected|q 13320/3
	step //138
		goto 49.1,34.2
		.' Use your Partitioned Flask next to the big cauldron with green smoke|use Partitioned Flask##44251
		.' Collect the Green Sample|goal Green Sample Collected|q 13320/2
	step //139
		goto 49.0,33.2
		.' Use your Partitioned Flask next to the big cauldron with gray or blue smoke|use Partitioned Flask##44251
		.' Collect the Blue Sample|goal Blue Sample Collected|q 13320/1
	step //140
		goto 49.4,31.2
		.' Kill Overseer Savryn|goal Overseer Savryn Killed|q 13319/4|tip He's standing under a white canopy.
	step //141
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin The Shadow Vault##12898
		..accept The Duke##12938
		..accept Blackwatch##13106
	step //142
		goto 43.7,24.4
		.talk Morlia Doomwing##30314
		..fpath The Shadow Vault
	step //143
		goto 44.0,22.2
		.talk Initiate Brenners##30308
		..home The Shadow Vault
	step //144
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin The Duke##12938
		..accept Honor Challenge##12939
	step //145
		goto 43.6,24.7
		.talk The Leaper##30074
		..accept Eliminate the Competition##12955
	step //146
		goto 37.9,25.1
		.' Watch out for the Mjordin Combatants. They will attack you!
		.talk Efrem the Faithful##30081
		..' Challenge him to a duel
		.' Defeat Efrem the Faithful|goal Efrem the Faithful defeated|q 12955/2
	step //147
		goto 36.1,23.6
		.talk Tinky Wickwhistle##30162
		..' Tell her you can't afford her as a distraction
		.' Defeat Tinky Wickwhistle|goal Tinky Wickwhistle defeated|q 12955/4
	step //148
		goto 37.5,24.6
		.' Use your Challenge Flag on Mjordin Combatants to challenge them|use Challenge Flag##41372
		..' Challenge and defeat 6 Mjordin Combatants|goal 6 Mjordin Combatants challenged and defeated|q 12939/1
	step //149
		goto 37.1,22.5
		.talk Sigrid Iceborn##30086
		..' Tell her you heard vrykul women cannot fight at all
		.' Defeat Sigrid Iceborn|goal Sigrid Iceborn defeated|q 12955/1
	step //150
		goto 37.9,22.9
		.talk Onu'zun##30180
		..' Tell him you have bad news for him
		.' Defeat Onu'zun|goal Onu'zun defeated|q 12955/3
	step //151
		goto 32.4,24.2
		.' Click the Jotunheim Rapid-Fire Harpoon
		.' Shoot down 15 Jotunheim Proto-Drakes|goal 15 Jotunheim Proto-Drakes & their riders shot down|q 13069/1
	step //152
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //153
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Honor Challenge##12939
		..accept Shadow Vault Decree##12943
	step //154
		goto 43.6,24.7
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
		..turnin Eliminate the Competition##12955
		..accept The Bone Witch##12999
	step //155
		'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
	step //156
		goto 41.0,23.9
		.talk Vaelen the Flayed##30056
		..accept Get the Key##12949
	step //157
		goto 40.3,23.9
		.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty|use Shadow Vault Decree##41776
		..kill Thane Ulfrang the Mighty|q 12943/1
	step //158
		'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
	step //159
		goto 36.5,23.6
		.from Instructor Hroegar##29915
		.get Key to Vaelan's Chains|q 12949/1
	step //160
		'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
	step //161
		goto 41.0,23.9
		.talk Vaelen the Flayed##30056
		..turnin Get the Key##12949
		..accept Let the Baron Know##12951
	step //162
		'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
	step //163
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin Let the Baron Know##12951
		..accept Leave Our Mark##12995
		..accept Vaelen Has Returned##13085
	step //164
		goto 43.3,24.8
		.talk Vile##30216
		..accept Crush Dem Vrykuls!##12992
	step //165
		goto 43.1,21.1
		.talk Vaelen the Flayed##30218
		..turnin Vaelen Has Returned##13085
		..accept Ebon Blade Prisoners##12982
	step //166
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Shadow Vault Decree##12943
		..accept Vandalizing Jotunheim##13084
	step //167
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Drag and Drop##13318
		..turnin Chain of Command##13319
		..accept Exploiting an Opening##13386
		..accept Not a Bug##13342
	step //168
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin Cannot Reproduce##13320
		..accept Retest Now##13321
	step //169
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13321
		.from Enslaved Minion##32260+
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13342
	step //170
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger|goal Dark Messenger summoned|q 13342/1
	step //171
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass|goal Writhing Mass Banished|q 13321/1
	step //172
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Not a Bug##13342
		..accept Need More Info##13345
	step //173
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin Retest Now##13321
	step //174
		.' Some classes may need to get in a three-man group for the next quest
		.' Go into the building at 51.9,32.7|goto 51.9,32.7,0.3|c|q 13345
	step //175
		goto Icecrown,51.9,30.8
		.from Cult Researcher##32297+
		..collect Cult of the Damned Research - Page 1##44459|n
		..collect Cult of the Damned Research - Page 2##44460|n
		..collect Cult of the Damned Research - Page 3##44461|n
		..' Use a Cult of the Damned Research Page to combine them|use Cult of the Damned Research - Page 1##44459
		..get Cult of the Damned Thesis##44462|q 13345/1
	step //176
		goto 33.0,28.1
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
	step //177
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin The Bone Witch##12999
		..accept Reading the Bones##13092
		..turnin Reading the Bones##13092
		..accept Deep in the Bowels of the Underhalls##13042
	step //178
		'The entrance to The Underhalls starts here|goto 32.6,32.1,0.3|c
	step //179
		goto 36.1,33.0
		.talk Bethod Feigr##30406
		..accept Revenge for the Vargul##13059
	step //180
		goto 33.1,37.7
		.' Use Bethod's Sword in the middle of the room|use Bethod's Sword##42928
		.' Issue a challenge using Bethod's Sword|goal Challenge issued using Bethod's Sword|q 13059/1
		.kill Thane Illskar|q 13059/2
	step //181
		goto 34.0,36.3
		.kill Apprentice Osterkilgr##30409|q 13042/2
		.' Beat the information out of Apprentice Osterkilgr|goal Information beaten out of Apprentice Osterkilgr|q 13042/1
		.collect Dr. Terrible's "Building a Better Flesh Giant"##42772|n
		.' Click Dr. Terrible's "Building a Better Flesh Giant" in your bags|use Dr. Terrible's "Building a Better Flesh Giant"##42772
		..accept The Sum is Greater than the Parts##13043
	step //182
		goto 33.4,33.2
		.' Click Nergeld to control him|tip He's a big undead monster.
		.'Use Nergeld's abilities to kill Dr. Terrible|tip The best way to kill Dr. Terrible is to knock him, and all the other mobs, away using Nergeld's shout ability.  Then, target Dr. Terrible and pull him close with Nergeld's chain ability.  When Dr. Terrible is close to you, use Nergeld's punch ability to get his health down quickly.  When Dr. Terrible tries to heal, use Nergeld's shout ability to interrupt him, then pull him close again and resume punching him.
		.kill Dr. Terrible|q 13043	
	step //183
		goto 36.1,33.0
		.talk Bethod Feigr##30406
		..turnin Revenge for the Vargul##13059
	step //184
		'Leave The Underhalls|goto 32.6,32.1,0.3|c
	step //185
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Deep in the Bowels of the Underhalls##13042
		..turnin The Sum is Greater than the Parts##13043
		..accept The Art of Being a Water Terror##13091
	step //186
		goto 31.4,41.2
		.' Click the huge Lock Gate to control a Water Terror
		.' Use the Water Terror's abilities to kill mobs around this area
		.' Slay 10 Jotunheim vrykul while possessing a Water Terror|goal 10 Jotunheim vrykul slain while possessing a Water Terror|q 13091/1
	step //187
		'Click the red arrow on your vehicle hot bar to stop controlling the Water Terror|script VehicleExit()|outvehicle|c
	step //188
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin The Art of Being a Water Terror##13091
		..accept Through the Eye##13121
	step //189
		'The entrance to Kul'galar Keep starts here|goto 25.1,61.3,0.3|c
	step //190
		goto 26.2,62.3
		.' Click the Eye of the Lich King|tip It's a blue floating ball up on a stage.
		.' Grasp the Eye of the Lich King and focus
		.' Gain information for The Bone Witch|goal Information gained for The Bone Witch|q 13121/1
	step //191
		'Leave Kul'galar Keep|goto 25.1,61.3,0.3|c
	step //192
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Through the Eye##13121
		..accept Find the Ancient Hero##13133
	step //193
		'The entrance to the Halls of the Ancestors starts here|goto 27.9,47.2,0.3|c
	step //194
		goto 27.4,47.9
		.talk Slumbering Mjordin##30718
		..' Waken them to see if it is Iskalder
		.' Use The Bone Witch's Amulet on Iskalder|use The Bone Witch's Amulet##43166
		.' Bring Iskalder back to The Bone Witch at 32.5,42.9|n
		.' Deliver Iskalder to The Bone Witch|goal Iskalder delivered to The Bone Witch|q 13133/1
	step //195
		goto 32.5,42.9
		.talk The Bone Witch##30232
		..turnin Find the Ancient Hero##13133
	step //196
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Blackwatch##13106
		..accept Where Are They Coming From?##13117
	step //197
		goto 36.8,70.7
		.' Click a Summoning Altar|tip They look like small stone stages with green summoning circles on them on the ground around this area.
		.' Investigate a Summoning Altar|goal Summoning Altar investigated|q 13117/1
	step //198
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Where Are They Coming From?##13117
		..accept Destroying the Altars##13119
		..accept Death's Gaze##13120
	step //199
		goto 30.5,65.1
		.' Click the Cauldron Area Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Cauldron Area Orb Stand|goal Orb placed in cauldron area|q 13120/3
	step //200
		goto 32.6,70.6
		.' Click the Abomination Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Abomination Lab Orb Stand|goal Orb placed in abomination lab|q 13120/1
	step //201
		goto 34.6,69.6
		.' Click the Flesh Giant Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
		.' Place the orb in the Flesh Giant Lab Orb Stand|goal Orb placed in flesh giant lab|q 13120/2
	step //202
		goto 37.0,71.1
		.from Master Summoner Zarod##30746
		.collect 1 Master Summoner's Staff##43159|q 13119
	step //203
		goto 36.7,70.7
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the First Summoning Altar|goal First Summoning Altar destroyed|q 13119/1
	step //204
		goto 36.6,71.6
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Second Summoning Altar|goal Second Summoning Altar destroyed|q 13119/2
	step //205
		goto 37.4,71.5
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Fourth Summoning Altar|goal Fourth Summoning Altar destroyed|q 13119/4
	step //206
		goto 37.8,70.7
		.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
		.' Destroy the Third Summoning Altar|goal Third Summoning Altar destroyed|q 13119/3
	step //207
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Destroying the Altars##13119
		..turnin Death's Gaze##13120
		..accept Spill Their Blood##13134
	step //208
		goto 34.0,70.0
		.' Attack the vats of Embalming Fluid|tip They look like big glass balls half full of green liquid with 4 metal legs holding them around this area.
		.' Destroy 5 Vats of Embalming Fluid|goal 5 Vats of Embalming Fluid destroyed|q 13134/2
		.' Attack the Blood Orbs|tip They look like small glass balls half full of red liquid floating above small metal pillars around this area.
		.' Shatter 5 Blood Orbs|goal 5 Blood Orbs shattered|q 13134/1
		.from Spiked Ghoul##30597+
		.collect 1 Jagged Shard##43242|n
		.' Click the Jagged Shard in your bags|use Jagged Shard##43242
		..accept Jagged Shards##13136
	step //209
		goto 34.4,68.9
		.from Spiked Ghoul##30597+|tip You can find them all around this area.
		.get 10 Jagged Shard|q 13136/1
	step //210
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Spill Their Blood##13134
	step //211
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin Jagged Shards##13136
		..accept I'm Smelting... Smelting!##13138
		..accept The Runesmiths of Malykriss##13140
	step //212
		goto 51.8,86.7
		.talk Captain Kendall##31444
		..turnin Exploiting an Opening##13386
		..accept Securing the Perimeter##13387
	step //213
		goto 52.2,87.4
		.kill 10 Hulking Horror|q 13387/1
	step //214
		goto 51.8,86.7
		.talk Captain Kendall##31444
		..turnin Securing the Perimeter##13387
		..accept Set it Off!##13388
	step //215
		goto 54.4,86.3
		.' Click the Saronite Bomb Stack|tip It looks like a pile of big spiked round bombs.
		..turnin Set it Off!##13388
		..accept A Short Fuse##13389
	step //216
		goto 54.0,87.3
		.' Click the Pulsing Crystal underwater|tip This is underground in Naz'anak: The Forgotten Depths.
		..turnin A Short Fuse##13389
		..accept A Voice in the Dark##13390
	step //217
		goto 53.8,86.9
		.talk Matthias Lehner##31237
		..turnin A Voice in the Dark##13390
		..accept Time to Hide##13391
	step //218
		goto 54.5,87.4
		.from Faceless Lurker##31691+|tip They look like elephant men with squid arms underground in Naz'anak: The Forgotten Depths.
		.get 3 Faceless One's Blood|q 13391/1
	step //219
		goto 53.8,86.9
		.talk Matthias Lehner##31237
		..turnin Time to Hide##13391
		..accept Return to the Surface##13392
	step //220
		goto 53.8,86.8
		.' Click the Surface Portal|tip It looks like a small round green and black portal underground in Naz'anak: The Forgotten Depths.
		..' Go to the surface|goto Icecrown,49.1,71.6,0.5|noway|c
	step //221
		goto 58.1,70.9
		.' Use your Bag of Jagged Shards while standing on the big platform with fire shooting out of it|use Bag of Jagged Shards##43289
		.get Smelted Bar|q 13138/1
	step //222
		goto 58.9,73.3
		.from Skeletal Runesmith##30921+
		.get 5 Runed Saronite Plate|q 13140/1
	step //223
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Need More Info##13345
		..turnin Return to the Surface##13392
		..accept Field Repairs##13393
		..accept Raise the Barricades##13332
	step //224
		goto 66.0,53.7
		.from Scavenging Geist##31847+
		.get 5 Demolisher Parts|q 13393/1
	step //225
		goto 68.0,51.9
		.talk Wrecked Demolisher##31868
		..turnin Field Repairs##13393
	step //226
		goto 68.0,51.6
		.talk Matthias Lehner##32408
		..accept Do Your Worst##13394
	step //227
		goto 68.0,51.8
		.' Click the Refurbished Demolisher to drive it|invehicle|tip It looks like a big wooden catapult machine.
	step //228
		goto 65.4,47.9
		.' Use the catapult's abilities around this area to:
		.kill 150 Decomposed Ghoul|q 13394/1
		.kill 20 Frostskull Magus|q 13394/2
		.kill 2 Bone Giant|q 13394/3
	step //229
		goto 64.5,44.0
		.talk Matthias Lehner##32404
		..turnin Do Your Worst##13394
		..accept Army of the Damned##13395
	step //230
		goto 64.9,43.9
		.' Use your abilities as Arthas to kill Lordaeron Footsoldiers and turn them into Ghoulish Minions
		.' Raise 100 Ghoulish Minions|goal 100 Ghoulish Minions Raised|q 13395/1
	step //231
		'Click the red arrow on your vehicle hot bar to stop controlling Arthas|script VehicleExit()|outvehicle|c
	step //232
		goto 64.5,44.0
		.talk Matthias Lehner##32404
		..turnin Army of the Damned##13395
		..accept Futility##13396
	step //233
		goto 50.6,38.5
		.' Use your Barricade Construction Kit near the floating orbs that glow pink|use Barricade Construction Kit##44127
		.' Construct 8 Barricades|q 13332/1
	step //234
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Raise the Barricades##13332
		..turnin Futility##13396
		..accept Sindragosa's Fall##13397
	step //235
		'On the Skybreaker airship:
		.talk High Captain Justin Bartlett##30344
		..accept Get the Message##13314
	step //236
		goto 43.3,58.2
		.' Use the Dart Gun on Orgrim's Hammer Scouts|use Dart Gun##44222|tip They are flying up in the air on purple dragons
		.' When they hit the ground, fly down and loot their bodies
		..get 6 Orgrim's Hammer Dispatch##44220+|q 13314/1
	step //237
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..turnin Get the Message##13314
	step //238
		goto 71.5,37.6
		.talk Matthias Lehner##32423
		..accept Where Dragons Fell##13398
	step //239
		goto 69.7,36.7
		.kill 8 Cultist Corrupter|q 13397/2
		.kill 3 Vrykul Necrolord|q 13397/3
		.from Frostbrood Whelp##31718+
		.get 6 Whelp Bone Dust|q 13398/1
	step //240
		goto 71.5,37.6
		.talk Matthias Lehner##32423
		..turnin Where Dragons Fell##13398
		..accept Time for Answers##13399
	step //241
		goto 72.3,36.7
		.kill 5 Wyrm Reanimator|q 13397/1
	step //242
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Sindragosa's Fall##13397
	step //243
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //244
		goto 43.1,21.1
		.talk Vaelen the Flayed##30218
		..turnin Ebon Blade Prisoners##12982
	step //245
		goto 43.6,25.1
		.talk Leaper##30074
		..accept Shoot 'Em Up##13069
	step //246
		goto 44.7,20.3
		.talk Duke Lankral##30002
		..turnin Vandalizing Jotunheim##13084
	step //247
		goto 43.3,24.8
		.talk Vile##30216
		..turnin Crush Dem Vrykuls!##12992
		..accept Vile Like Fire!##13071
	step //248
		goto 42.8,24.9
		.talk Baron Sliver##29343
		..turnin Leave Our Mark##12995
		..accept To the Rise with all Due Haste!##12806
	step //249
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..accept Parting Gifts##13168
	step //250
		goto 44.1,24.7
		.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
		.' Sieze Control of an Eidolon Watcher|goal Sieze Control of an Eidolon Watcher|q 13168/1
	step //251
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin Payearting Gifts##13168
		..accept From Whence They Came##13171
		..accept An Undead's Best Friend##13169
		..accept Honor is for the Weak##13170
	step //252
		goto 44.1,24.7
		.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
		.' Sieze Control of an Eidolon Watcher|invehicle|c
	step //253
		goto 41.5,32.4
		.' Use your Eidolon Watcher abilities around this area to:
		.' Feed 18 Hungering Plaguehounds|goal 18 Hungering Plaguehounds fed|q 13169/1
		.' Assassinate 20 Restless Lookouts|goal 20 Restless Lookouts assassinated|q 13170/1
		.' Banish 10 Scourge Crystals|goal 10 Banished Scourge Crystals|q 13171/1|tip The Scourge Crystals look like big crystals floating above small stone pillars around this area.
	step //254
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin From Whence They Came##13171
		..turnin An Undead's Best Friend##13169
		..turnin Honor is for the Weak##13170
		..accept Seeds of Chaos##13172
		..accept Amidst the Confusion##13174
	step //255
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..' Tell him you are prepared to join the assault|invehicle
	step //256
		'Use your Firebomb ability as you fly around to:
		.' Slaughter 80 Weeping Quarry Undead|goal 80 Weeping Quarry Undead slaughtered|q 13172/1
	step //257
		'Click the red arrow on your vehicle hot bar to stop riding the skeleton mount|script VehicleExit()|outvehicle|c
	step //258
		goto 37.2,41.6
		.' Click the Weeping Quarry Schedule|tip It looks like a rolled up white scroll laying on the back of this wagon, next to a bunch of wooden boxes.
		.get Weeping Quarry Schedule|q 13174/4
	step //259
		goto 38.7,39.4
		.' Click the Weeping Quarry Map|tip It looks like a tan piece of paper laying on a wooden box, next to a bunch of wooden boxes and a canopy.
		.get Weeping Quarry Map|q 13174/3
	step //260
		goto 39.2,36.7
		.' Click the Weeping Quarry Ledger|tip It looks like a rolled up white scroll laying on the corner of a wooden box, under a canopy.
		.get Weeping Quarry Ledger|q 13174/2
	step //261
		goto 39.1,33.6
		.' Click the Weeping Quarry Document|tip It looks like an unrolled white scroll with black writing on it, laying on the corner of a wooden box, under a canopy.
		.get Weeping Quarry Document|q 13174/1
	step //262
		goto 44.1,24.5
		.talk Keritose Bloodblade##30946
		..turnin Seeds of Chaos##13172
		..turnin Amidst the Confusion##13174
		..accept Vereth the Cunning##13155
	step //263
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle
	step //264
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings|goal 8 Vrykul buildings set ablaze|q 13071/1
	step //265
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c
	step //266
		goto 19.3,47.8
		.talk Dreadwind##31078
		..fpath Death's Rise
	step //267
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin To the Rise with all Due Haste!##12806
		..accept The Story Thus Far...##12807
	step //268
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..' Tell him you would hear his tale|goal Lord-Commander Arete's tale listened to.|q 12807/1
	step //269
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin The Story Thus Far...##12807
		..accept Blood in the Water##12810
	step //270
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..accept From Their Corpses, Rise!##12813
	step //271
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..accept Intelligence Gathering##12838
	step //272
		goto 9.6,44.3
		.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
		.collect Scarlet Onslaught Trunk Key##40652+|n
		.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
		.' Transform 10 Scarlet Onslaught Corpses|goal 10 Scarlet Onslaught corpse transformed|q 12813/1
		.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
		.get 5 Onslaught Intel Documents|q 12838/1
		.collect Note from the Grand Admiral##40666|n
		.' Click the Note from the Grand Admiral in your bags|use Note from the Grand Admiral##40666
		..accept The Grand (Admiral's) Plan##12839
	step //273
		goto 10.5,40.8
		.from Ravenous Jaws##29392|tip They are sharks in the water.
		.' Use your Gore Bladder on their corpses|use Gore Bladder##40551
		.' Collect 10 Blood from Ravenous Jaws|goal 10 Blood collected from Ravenous Jaws|q 12810/1
	step //274
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin Blood in the Water##12810
		..accept You'll Need a Gryphon##12814
		..turnin The Grand (Admiral's) Plan##12839
		..accept In Strict Confidence##12840
	step //275
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..turnin From Their Corpses, Rise!##12813
	step //276
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..turnin Intelligence Gathering##12838
	step //277
		goto 8.5,44.3
		.from Onslaught Gryphon Rider##29333+
		.collect 1 Onslaught Gryphon Reins##40970|q 12814
	step //278
		goto 7.0,41.9
		.from Captain Hartford##29490|tip Standind on the top deck of the ship, next to the wooden steering wheel.
		.' Beat and kill Captain Hartford for information|goal Captain Hartford beaten for information and killed|q 12840/2
	step //279
		goto 5.7,41.9
		.from Captain Welsington##29489|tip Standind on the top deck of the ship, next to the wooden steering wheel.
		.' Beat and kill Captain Welsington for information|goal Captain Welsington beaten for information and killed|q 12840/1
		.' Use your Onslaught Gryphon Reins in your bags|use Onslaught Gryphon Reins##40970
		.' Take control of an Onslaught Gryphon|invehicle|q 12814
	step //280
		goto 19.6,47.8
		.' Use the Deliver Gryphon ability on your gryphon hotbar next to Uzo Deathcaller|tip He's standing on a bunch of scattered straw on the ground.
		.' Deliver the Onslaught Gryphon to Uzo Deathcaller|q 12814/1
	step //281
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin You'll Need a Gryphon##12814
		..accept No Fly Zone##12815
	step //282
		goto 19.5,48.2
		.talk Lord-Commander Arete##29344
		..turnin In Strict Confidence##12840
	step //283
		goto 12.5,44.4
		.' Use your Bone Gryphon in your bags|use Bone Gryphon##40600
		.' Ride a Bone Gryphon|invehicle|q 12815
	step //284
		goto 10.2,41.9
		.' Use your Bone Gryphon abilities to:
		.kill 10 Onslaught Gryphon Rider|q 12815/1
	step //285
		'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c 
	step //286
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin No Fly Zone##12815
	step //287
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin I'm Smelting... Smelting!##13138
		..turnin The Runesmiths of Malykriss##13140
		..accept By Fire Be Purged##13211
	step //288
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..accept A Visit to the Doctor##13152
	step //289
		'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
	step //290
		goto 34.6,67.7
		.' Use Olakin's Torch on Festering Corpses|use Olakin's Torch##43524|tip They look like dead soldiers on the ground inside this cave.
		.' Burn 7 Festering Corpses|goal 7 Festering Corpse burned|q 13211/1
	step //291
		goto 35.8,67.0
		.' Follow the path in the cave to this spot
		.' Click the Metal Stake|tip It looks like a big metal spike sticking out of the ground.
		.' Free Patches|goal Patches freed|q 13152/1
		.' Help Patches kill Doctor Sabnok|goal Help Patches kill Doctor Sabnok|q 13152/2
	step //292
		'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
	step //293
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin A Visit to the Doctor##13152
	step //294
		goto 35.5,66.4
		.talk Crusader Olakin Sainrith##30708
		..turnin By Fire Be Purged##13211
	step //295
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..accept Killing Two Scourge With One Skeleton##13144
	step //296
		goto 35.1,69.4
		.' Click Grasping Arms|tip They look like green arms on the ground that reach up sometimes.
		.' Get a Burning Skeleton minion
		.' With a Burning Skeleton minion, go to 32.2,71.2
		.' Stand next to Chained Abominations with your Burning Skeleton to burn them|tip They look like fat white abominations chained to the big spikes around the edge of this platform.
		.' Repeat this process 2 more times
		.' Burn 3 Chained Abominations|goal 3 Chained Abominations burned|q 13144	
	step //297
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Killing Two Scourge With One Skeleton##13144
		..accept He's Gone to Pieces##13212
	step //298
		goto 34.0,69.2
		.from Corpulent Horror##30696+
		.get Olakin's Torso|q 13212/1
		.get Olakin's Legs|q 13212/2
		.get Olakin's Left Arm|q 13212/3
		.get Olakin's Right Arm|q 13212/4
	step //299
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin He's Gone to Pieces##13212
		..accept Putting Olakin Back Together Again##13220
	step //300
		'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
	step //301
		goto 34.7,66.0
		.' Click the Spool of Thread|tip It looks like a red spool with white thread wound on it, sitting on a small metal chest with a skull on it, in a small side room in the Sanctum of Reanimation.
		.collect 1 Spool of Thread|q 13220
	step //302
		goto 36.6,67.6
		.' Follow the path in the cave all the way to the end into the doctor's big lab.
		.' Click The Doctor's Cleaver|tip It looks like a butcher's cleaver stuck in a bloody metal table.
		.collect 1 The Doctor's Cleaver|q 13220
	step //303
		goto 35.6,66.7
		.' Follow the path in the cave back up into the main entrance room of the cave
		.' Use Crusader Olakin's Remains while standing on the big black stone slab made of skulls|use Crusader Olakin's Remains##43564
		.' Revive Crusader Olakin Sainrith|goal Crusader Olakin Sainrith revived|q 13220/1
	step //304
		'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
	step //305
		goto 35.4,66.3
		.talk Darkrider Arly##30631
		..turnin Putting Olakin Back Together Again##13220
	step //306
		goto 31.8,64.8
		.talk Father Kamaros##31279
		..accept Let's Get Out of Here!##13482
		.' Escort Father Kamaros to safety|goal Escort Father Kamaros to safety|q 13482/1
	step //307
		goto 49.2,73.1
		.talk Matthias Lehner##32497
		..turnin Time for Answers##13399
		..accept The Hunter and the Prince##13400
	step //308
		goto 49.2,73.9
		.' Click a Bloodstained Stone|tip They look like pointed rocks on the ground around this area.
		.' Fight Illidan using your Arthas abilities|tip The best way to kill Illidan is to just keep parrying his attacks until your mana is full.  Once your mana is full, use your knockback ability, followed immediately by your Annihilate ability.  Keep repeating this process until Illidan is dead.
		.' Find out the Prince's Destiny|goal The Prince's Destiny|q 13400/1
	step //309
		goto 49.2,73.1
		.talk Matthias Lehner##32497
		..turnin The Hunter and the Prince##13400
		..accept Knowledge is a Terrible Burden##13401
	step //310
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin Vereth the Cunning##13155
		..accept New Recruit##13143
	step //311
		goto 55.5,71.5
		.' Fight a Lithe Stalker until you see a message in your chat that it's weak|tip You can find Lithe Stalkers up on this high bridge.
		.' Use your Sigil of the Ebon Blade on a weakened Lithe Stalker|use Sigil of the Ebon Blade##43315
		.' Bring the Lithe Stalker off the bridge to 55.4,70.8
		.' Return the Subdued Lithe Stalker|goal Subdued Lithe Stalker Returned|q 13143/1
	step //312
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin New Recruit##13143
		..accept The Vile Hold##13145
	step //313
		goto 56.1,79.8
		.' Explore the Altar of Sacrifice|goal Altar of Sacrifice explored|q 13145/1
	step //314
		goto 59.0,73.8
		.' Explore the Runeworks|goal Runeworks explored|q 13145/4
	step //315
		goto 58.0,71.3
		.' Explore the Blood Forge|goal Blood Forge explored|q 13145/2
	step //316
		goto 60.4,68.7
		.' Explore the Icy Lookout|goal Icy Lookout explored|q 13145/3
	step //317
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin The Vile Hold##13145
		..accept Generosity Abounds##13146
		..accept Matchmaker##13147
		..accept Stunning View##13160
	step //318
		goto 54.3,70.6
		.' Click the Eye of Domination|tip It looks like a red globe floating above a small metal pillar.
		.' Seize control of a Lithe Stalker|invehicle|q 13146
	step //319
		goto 57.7,73.7
		.' Start 5 Worker Fights|q 13147/1|tip To start a Worker Fight, use your Lithe Stalker Throw Rock ability on Umbral Brutes when they get close to the skeletons around this area.
		.' Deliver 4 Scourge Bomb Gifts|q 13146/1|tip The Scourge Bombs look like spiked round metal bombs on the ground around this area.  Use your Lithe Stalker Iron Chain ability on the Scourge Bombs.  Then, drag the Scourge Bombs next to Lumbering Atrocities.  Lumbering Atrocities look like abominations around this area.
	step //320
		goto 59.6,76.2
		.' Use your Lithe Stalker Leap ability to jump up the cliff to this spot.
		.' Destroy 12 Iceskin Sentries|goal 12 Iceskin Sentry destroyed|q 13160|tip The Iceskin Sentries look like gargoyles sitting high up on the cliffside.  Use your Lithe Stalker Leap ability to jump around to them.  Once you get close to them, use your Lithe Stalker Heave ability to destroy them.
	step //321
		'Click the red arrow on your hot bar to stop controlling a Lithe Stalker|script VehicleExit()|outvehicle|c 
	step //322
		goto 54.1,71.2
		.talk Vereth the Cunning##30944
		..turnin Generosity Abounds##13146
		..turnin Matchmaker##13147
		..turnin Stunning View##13160
	step //323
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk Thassarian##29799
		..turnin Knowledge is a Terrible Burden##13401
		..accept Tirion's Help##13402
	step //324
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..turnin Let's Get Out of Here!##13482
	step //325
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Tirion's Help##13402
		..accept Tirion's Gambit##13403
	step //326
		goto 46.1,76.6
		.from Cultist Acolyte##32507+
		.collect 1 Cultist Acolyte's Hood##44784|q 13403
		.' Use your Cultist Acolyte's Hood|use Cultist Acolyte's Hood##44784
		.' Become disguised as a cultist|havebuff Ability_Rogue_MasterOfSubtlety|q 13364
	step //327
		goto 44.4,76.2
		.talk Highlord Tirion Fordring##32239
		..' Tell him you're ready and follow him into the cathedral
		.' Watch the cutscene
		.' See Tirion's Gambit|goal Tirion's Gambit|q 13403/1
	step //328
		goto 42.8,78.8|n
		.' Click the Escape Portal that appears after the cutscene|goto Icecrown,80.2,70.3,0.5|noway|c
	step //329
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##31044
		..turnin Tirion's Gambit##13403
	step //330
		'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
	step //331
		goto 43.3,24.8
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Argent Tournament Grounds Pre-Quests",[[
	author support@zygorguides.com
	description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
	description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.
	step //1
		goto Icecrown,72.6,22.6
		.talk Helidan Lightwing##33849
		..fpath Argent Tournament Grounds
	step //2
		goto Icecrown,69.7,22.9
		.talk Justicar Mariel Trueheart##33817
		..accept The Argent Tournament##13667
	step //3
		goto Icecrown,76.5,19.4
		.talk Arcanist Taelis##33625
		..turnin The Argent Tournament##13667
		..accept Mastery Of Melee##13828
	step //4
		goto 76.5,19.4
		.talk Avareth Swiftstrike##33646
		..accept Mastery Of The Charge##13837
	step //5
		goto Icecrown,76.5,19.5
		.talk Scout Shalyndria##33647
		..accept Mastery Of The Shield-Breaker##13835
	step //6
		 goto Icecrown,75.9,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13828
	step //7
		goto 73.2,19.2
		.talk Valis Windchaser##33974
		.' Listen to Valis Windchaser's advice|q 13835/1
	step //8
		goto 72.7,18.9
		.talk Rugan Steelbelly##33972
		.' Listen to Rugan Steelbelly's advice|q 13837/1
	step //9
		goto 72.5,19.3
		.talk Jeran Lockwood##33973
		.' Listen to Jeran Lockwood's advice|q 13828/1
	step //10
		goto 72.6,19.7
		.' Target a Melee Target
		.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
		.' Use your Thrust ability to attack the target 5 times|q 13828/2
	step //11
		goto 72.9,18.8
		.' Target a Charge Target from a distance
		.' Use Shield-Breaker ability until you notice the targets Defend is gone
		.' Use your Charge ability on the Charge Target 2 times|q 13837/2
	step //12
		goto 73.1,19.0
		.' Target a Ranged Target from a distance
		.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
		.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13835/2
	step //13
		'Click the red arrow on your hotbar to stop riding the steed mount|outvehicle|q 13828
	step //14
		goto Icecrown,76.5,19.4
		.talk Arcanist Taelis##33625
		..turnin Mastery Of Melee##13828
	step //15
		goto 76.5,19.4
		.talk Avareth Swiftstrike##33646
		..turnin Mastery Of The Charge##13837
	step //16
		goto Icecrown,76.5,19.5
		.talk Scout Shalyndria##33647
		..turnin Mastery Of The Shield-Breaker##13835
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing your race's Aspirant Rank dailies
	description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
	daily
	step //1
		goto Icecrown,76.5,19.4
		.talk Arcanist Taelis##33625
		..accept Up To The Challenge##13672
	step //2
		goto 76.5,19.4
		.talk Arcanist Taelis##33625
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13666 |daily |or
		..accept A Worthy Weapon##13669 |daily |or
		..accept The Edge of Winter##13670 |daily |or
	step //3
		goto 76.5,19.4
		.talk Avareth Swiftstrike##33646
		..accept Training in the Field##13671 |daily
	step //4
		goto Icecrown,76.5,19.5
		.talk Scout Shalyndria##33647
		..accept Learning the Reins##13625 |daily
	step //5
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		..talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13666/1
	step //6
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13669
	step //7
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13669/1
	step //8
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13670
	step //9
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13670/1
	step //10
		goto Icecrown,71.3,37.5
		.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		.kill 8 Icecrown Scourge |q 13671/1
	step //11
		 goto Icecrown,75.9,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13625
	step //12
		goto 72.6,19.7
		.' Target a Melee Target
		.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
		.' Use your Thrust ability to attack the target 5 times|q 13625/1
	step //13
		goto 72.9,18.8
		.' Target a Charge Target from a distance
		.' Use Shield-Breaker ability until you notice the targets Defend is gone
		.' Use your Charge ability on the Charge Target 2 times|q 13625/3
	step //14
		goto 73.1,19.0
		.' Target a Ranged Target from a distance
		.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
		.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13625/2
	step //15
		goto 76.5,19.4
		.talk Arcanist Taelis##33625
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13666
		..turnin A Worthy Weapon##13669
		..turnin The Edge of Winter##13670
	step //16
		goto 76.5,19.4
		.talk Avareth Swiftstrike##33646
		..turnin Training in the Field##13671
	step //17
		goto Icecrown,76.5,19.5
		.talk Scout Shalyndria##33647
		..turnin Learning the Reins##13625
	step //18
		goto 76.5,19.4
		.talk Arcanist Taelis##33625
		..turnin Up To The Challenge##13672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing your race's Valiant Rank dailies
	description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
	description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
	description in order to have access to the quests in this guide section.
	daily
	step //1
		goto Icecrown,76.5,19.4
		.talk Arcanist Taelis##33625
		..accept The Aspirant's Challenge##13679|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
	step //2
		goto 71.8,20.0
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Quel'dorei Steed|invehicle |q 13679
	step //3
		goto 71.4,19.6
		.talk Squire David##33447
		.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
		.'An Argent Valiant runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13679/1
	step //4
		goto 76.5,19.4
		.talk Arcanist Taelis##33625
		..turnin The Aspirant's Challenge##13679
		..accept A Valiant Of Stormwind##13684 |only Human
		..accept A Valiant Of Darnassus##13689 |only NightElf
		..accept A Valiant Of Ironforge##13685 |only Dwarf
		..accept A Valiant Of Gnomeregan##13688 |only Gnome
		..accept A Valiant Of The Exodar##13690 |only Draenei
	step //5
		goto 76.6,19.2
		.talk Marshal Jacob Alerius##33225
		..turnin A Valiant Of Stormwind##13684
		..accept The Valiant's Charge##13718
		only Human
	step //6
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin A Valiant Of Darnassus##13689
		..accept The Valiant's Charge##13717
		only NightElf
	step //7
		goto 76.6,19.5
		.talk Lana Stouthammer##33312
		..turnin A Valiant Of Ironforge##13685
		..accept The Valiant's Charge##13714
		only Dwarf
	step //8
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		..turnin A Valiant Of Gnomeregan##13688
		..accept The Valiant's Charge##13715
		only Gnome
	step //9
		goto 76.1,19.2
		.talk Colosos##33593
		..turnin A Valiant Of The Exodar##13690
		..accept The Valiant's Charge##13716
		only Draenei
	// DRAENEI VALIANT RANK DAILY LOOP (END)
	step //10
		goto 76.1,19.1
		.talk Colosos##33593
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13752 |daily |or
		..accept A Worthy Weapon##13753 |daily |or
		..accept The Edge Of Winter##13754 |daily |or
		only Draenei
	step //11
		goto 76.1,19.2
		.talk Saandos##33655
		..accept A Valiant's Field Training##13755 |daily
		only Draenei
	step //12
		goto 76.2,19.1
		.talk Ranii##33656
		..accept The Grand Melee##13756 |daily
		..accept At The Enemy's Gates##13854 |daily
		only Draenei
	step //13
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13752/1
		only Draenei
	step //14
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13753
		only Draenei
	step //15
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13753/1
		only Draenei
	step //16
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13754
		only Draenei
	step //17
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13754/1
		only Draenei
	step //18
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
		only Draenei
	step //19
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Draenei
	step //20
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
		only Draenei
	step //21
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13755/1
		only Draenei
	step //22
		goto 76.4,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
		only Draenei
	step //23
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13756/1
		only Draenei
	step //24
		goto 76.1,19.1
		.talk Colosos##33593
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13752
		..turnin A Worthy Weapon##13753
		..turnin The Edge Of Winter##13754
		only Draenei
	step //25
		goto 76.1,19.2
		.talk Saandos##33655
		..turnin A Valiant's Field Training##13755
		only Draenei
	step //26
		goto 76.2,19.1
		.talk Ranii##33656
		..turnin The Grand Melee##13756
		..turnin At The Enemy's Gates##13854
		only Draenei
	// DRAENEI VALIANT RANK DAILY LOOP (END)
	//
	// DWARF VALIANT RANK DAILY LOOP (BEGIN)
	step //27
		goto 76.6,19.5
		.talk Lana Stouthammer##33312
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13741 |daily |or
		..accept A Worthy Weapon##13742 |daily |or
		..accept The Edge Of Winter##13743 |daily |or
		only Dwarf
	step //28
		goto 76.7,19.4
		.talk Rollo Sureshot##33315
		..accept A Valiant's Field Training##13744 |daily
		only Dwarf
	step //29
		goto 76.6,19.6
		.talk Clara Tumblebrew##33309
		..accept The Grand Melee##13745 |daily
		..accept At The Enemy's Gates##13851 |daily
		only Dwarf
	step //30
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13741/1
		only Dwarf
	step //31
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13742
		only Dwarf
	step //32
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13742/1
		only Dwarf
	step //33
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13743
		only Dwarf
	step //34
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13743/1
		only Dwarf
	step //35
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
		only Dwarf
	step //36
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Dwarf
	step //37
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
		only Dwarf
	step //38
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13744/1
		only Dwarf
	step //39
		goto 76.3,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
		only Dwarf
	step //40
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13745/1
		only Dwarf
	step //41
		goto 76.6,19.5
		.talk Lana Stouthammer##33312
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13741
		..turnin A Worthy Weapon##13742
		..turnin The Edge Of Winter##13743
		only Dwarf
	step //42
		goto 76.7,19.4
		.talk Rollo Sureshot##33315
		..turnin A Valiant's Field Training##13744
		only Dwarf
	step //43
		goto 76.6,19.6
		.talk Clara Tumblebrew##33309
		..turnin The Grand Melee##13745
		..turnin At The Enemy's Gates##13851
		only Dwarf
	// DWARF VALIANT RANK DAILY LOOP (END)
	//
	// HUMAN VALIANT RANK DAILY LOOP (BEGIN)
	step //44
		goto 76.6,19.1
		.talk Marshal Jacob Alerius##33225
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13603 |daily |or
		..accept A Worthy Weapon##13600 |daily |or
		..accept The Edge Of Winter##13616 |daily |or
		only Human
	step //45
		goto 76.5,19.1
		.talk Sir Marcus Barlowe##33222
		..accept A Valiant's Field Training##13592 |daily
		only Human
	step //46
		goto 76.6,19.2
		.talk Captain Joseph Holley##33223
		..accept The Grand Melee##13665 |daily
		..accept At The Enemy's Gates##13847 |daily
		only Human
	step //47
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13603/1
		only Human
	step //48
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13600
		only Human
	step //49
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13600/1
		only Human
	step //50
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13616
		only Human
	step //51
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13616/1
		only Human
	step //52
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
		only Human
	step //53
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Human
	step //54
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
		only Human
	step //55
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13592/1
		only Human
	step //56
		goto 76.1,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
		only Human
	step //57
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13665/1
		only Human
	step //58
		goto 76.6,19.1
		.talk Marshal Jacob Alerius##33225
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13603
		..turnin A Worthy Weapon##13600
		..turnin The Edge Of Winter##13616
		only Human
	step //59
		goto 76.5,19.1
		.talk Sir Marcus Barlowe##33222
		..turnin A Valiant's Field Training##13592
		only Human
	step //60
		goto 76.6,19.2
		.talk Captain Joseph Holley##33223
		..turnin The Grand Melee##13665
		..turnin At The Enemy's Gates##13847
		only Human
	// HUMAN VALIANT RANK DAILY LOOP (END)
	//
	// NIGHT ELF VALIANT RANK DAILY LOOP (BEGIN)
	step //61
		goto 76.3,19.0
		.talk Jaelyne Evensong##33592
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13757 |daily |or
		..accept A Worthy Weapon##13758 |daily |or
		..accept The Edge Of Winter##13759 |daily |or
		only NightElf
	step //62
		goto 76.3,19.0
		.talk Illestria Bladesinger##33652
		..accept A Valiant's Field Training##13760 |daily
		only NightElf
	step //63
		goto 76.4,19.0
		.talk Airae Starseeker##33654
		..accept The Grand Melee##13761 |daily
		..accept At The Enemy's Gates##13855 |daily
		only NightElf
	step //64
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13757/1
		only NightElf
	step //65
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13758
		only NightElf
	step //66
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13758/1
		only NightElf
	step //67
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13759
		only NightElf
	step //68
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13759/1
		only NightElf
	step //69
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
		only NightElf
	step //70
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only NightElf
	step //71
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
		only NightElf
	step //72
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13760/1
		only NightElf
	step //73
		goto 76.0,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
		only NightElf
	step //74
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13761/1
		only NightElf
	step //75
		goto 76.3,19.0
		.talk Jaelyne Evensong##33592
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13757
		..turnin A Worthy Weapon##13758
		..turnin The Edge Of Winter##13759
		only NightElf
	step //76
		goto 76.3,19.0
		.talk Illestria Bladesinger##33652
		..turnin A Valiant's Field Training##13760
		only NightElf
	step //77
		goto 76.4,19.0
		.talk Airae Starseeker##33654
		..turnin The Grand Melee##13761
		..turnin At The Enemy's Gates##13855
		only NightElf
	// NIGHT ELF VALIANT RANK DAILY LOOP (END)
	//
	// GNOME VALIANT RANK DAILY LOOP (BEGIN)
	step //78
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13746 |daily |or
		..accept A Worthy Weapon##13747 |daily |or
		..accept The Edge Of Winter##13748 |daily |or
		only Gnome
	step //79
		goto 76.6,19.8
		.talk Tickin Gearspanner##33648
		..accept A Valiant's Field Training##13749 |daily
		only Gnome
	step //80
		goto 76.5,19.9
		.talk Flickin Gearspanner##33649
		..accept The Grand Melee##13750 |daily
		..accept At The Enemy's Gates##13852 |daily
		only Gnome
	step //81
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13746/1
		only Gnome
	step //82
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13747
		only Gnome
	step //83
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13747/1
		only Gnome
	step //84
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13748
		only Gnome
	step //85
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13748/1
		only Gnome
	step //86
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
		only Gnome
	step //87
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Gnome
	step //88
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
		only Gnome
	step //89
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13749/1
		only Gnome
	step //90
		goto 76.2,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
		only Gnome
	step //91
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13750/1
		only Gnome
	step //92
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13746
		..turnin A Worthy Weapon##13747
		..turnin The Edge Of Winter##13748
		only Gnome
	step //93
		goto 76.6,19.8
		.talk Tickin Gearspanner##33648
		..turnin A Valiant's Field Training##13749
		only Gnome
	step //94
		goto 76.5,19.9
		.talk Flickin Gearspanner##33649
		..turnin The Grand Melee##13750
		..turnin At The Enemy's Gates##13852
		only Gnome
	// GNOME VALIANT RANK DAILY LOOP (END)
	step //95
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
		.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
		.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
		.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
		.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
	step //96
		goto 76.6,19.2
		.talk Marshal Jacob Alerius##33225
		..turnin The Valiant's Charge##13718
		..accept The Valiant's Challenge##13699
		only Human
	step //97
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Charge##13717
		..accept The Valiant's Challenge##13725
		only NightElf
	step //98
		goto 76.6,19.5
		.talk Lana Stouthammer##33312
		..turnin The Valiant's Charge##13714
		..accept The Valiant's Challenge##13713
		only Dwarf
	step //99
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		..turnin The Valiant's Charge##13715
		..accept The Valiant's Challenge##13723
		only Gnome
	step //100
		goto 76.1,19.2
		.talk Colosos##33593
		..turnin The Valiant's Charge##13716
		..accept The Valiant's Challenge##13724
		only Draenei
	step //101
		goto 71.6,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
		only Human
	step //102
		goto 71.6,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
		only NightElf
	step //103
		goto 71.8,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
		only Dwarf
	step //104
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
		only Gnome
	step //105
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
		only Draenei
	step //106
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13699/1 |only Human
		.' Defeat the Argent Valiant |q 13725/1 |only NightElf
		.' Defeat the Argent Valiant |q 13713/1 |only Dwarf
		.' Defeat the Argent Valiant |q 13723/1 |only Gnome
		.' Defeat the Argent Valiant |q 13724/1 |only Draenei
	step //107
		goto 76.6,19.2
		.talk Marshal Jacob Alerius##33225
		..turnin The Valiant's Challenge##13699
		..accept A Champion Rises##13702
		only Human
	step //108
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Challenge##13725
		..accept A Champion Rises##13735
		only NightElf
	step //109
		goto 76.6,19.5
		.talk Lana Stouthammer##33312
		..turnin The Valiant's Challenge##13713
		..accept A Champion Rises##13732
		only Dwarf
	step //110
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		..turnin The Valiant's Challenge##13723
		..accept A Champion Rises##13733
		only Gnome
	step //111
		goto 76.1,19.2
		.talk Colosos##33593
		..turnin The Valiant's Challenge##13724
		..accept A Champion Rises##13734
		only Draenei
	step //112
		goto 69.7,22.9
		.talk Justicar Mariel Trueheart##33817
		..turnin A Champion Rises##13702 |only Human
		..turnin A Champion Rises##13735 |only NightElf
		..turnin A Champion Rises##13732 |only Dwarf
		..turnin A Champion Rises##13733 |only Gnome
		..turnin A Champion Rises##13734 |only Draenei
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",[[
	author support@zygorguides.com
	description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
	description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
	daily
	step //1
		goto Icecrown,73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..accept Taking Battle To The Enemy##13791 |daily
		only DeathKnight
	step //2
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..accept Threat From Above##13788 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13864 |daily
		only DeathKnight
	step //3
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..accept Among the Champions##13793 |daily
		only DeathKnight
	step //4
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
		only Draenei DeathKnight
	step //5
		goto 71.8,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
		only Dwarf DeathKnight
	step //6
		goto 71.6,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
		only Human DeathKnight
	step //7
		goto 71.6,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
		only NightElf DeathKnight
	step //8
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
		only Gnome DeathKnight
	step //9
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13793/1
		only DeathKnight
	step //10
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
		only DeathKnight
	step //11
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13791/1
		only DeathKnight
	step //12
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
		only DeathKnight
	step //13
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only DeathKnight
	step //14
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
		only DeathKnight
	step //15
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only DeathKnight
	step //16
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13788/2	
		only DeathKnight
	step //17
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..turnin Taking Battle To The Enemy##13791
		only DeathKnight
	step //18
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin Threat From Above##13788
		..turnin Battle Before The Citadel##13864	
		only DeathKnight
	step //19
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..turnin Among the Champions##13793
		only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",[[
	author support@zygorguides.com
	description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
	description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
	daily
	step //1
		goto Icecrown,69.9,23.3
		.talk Luuri##33771
		..accept Among the Champions##13790 |daily
		only !DeathKnight
	step //2
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..accept Threat From Above##13682 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13861 |daily
		only !DeathKnight
	step //3
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..accept Taking Battle To The Enemy##13789 |daily
		only !DeathKnight
	step //4
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
		only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
	step //5
		goto 71.8,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
		only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
	step //6
		goto 71.6,22.4
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
		only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
	step //7
		goto 71.6,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
		only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
	step //8
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
		only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
	step //9
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13790/1
		only !DeathKnight
	step //10
		'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
		only !DeathKnight
	step //11
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13789/1
		only !DeathKnight
	step //12
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only !DeathKnight
	step //13
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13682/2
		only !DeathKnight
	step //14
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
		only !DeathKnight
	step //15
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only !DeathKnight
	step //16
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
		only !DeathKnight
	step //17
		goto 69.9,23.3
		.talk Luuri##33771
		..turnin Among the Champions##13790
		only !DeathKnight
	step //18
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Threat From Above##13682
		..turnin Battle Before The Citadel##13861
		only !DeathKnight
	step //19
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..turnin Taking Battle To The Enemy##13789
		only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Argent Tournament Grounds Crusader Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\ATG Black Knight Quest Chain",[[
	author support@zygorguides.com
	description This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest.
	description We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section,
	description and achieve Champion Rank with your race, before doing this quest chain.
	description Starting this quest chain when you are already Champion Rank will allow you to do the entire quest chain
	description without having to switch back and forth between guide sections, allowing you to get it done much faster and more efficiently.
	description You will be unable to get some quests in this quest chain if you are not already at Champion Rank with The Argent Tournament Grounds.
	step //1
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..accept The Black Knight of Westfall?##13633
	step //2
		goto 76.2,19.7
		.talk Caris Sunlance##33970
		..home Silver Covenant Pavilion
	step //3
		goto 72.6,22.6
		.talk Helidan Lightwing##33849
		..' Fly to Dalaran |goto Dalaran |noway |c |q 13633
	step //4
		goto Dalaran,40.1,62.8|n
		.' Click the Dalaran Portal to Stormwind City |goto Stormwind City |noway |c |q 13633
	step //5
		goto Stormwind City,71.0,72.5
		.talk Dungar Longdrink##352
		..' Fly to Sentinel Hill |goto Westfall,56.6,52.7 |noway |c |q 13633
	step //6
		goto Westfall,42.1,69.7
		.' Click the Dusty Journal |tip It's a blue open book laying on the floor inside this house.
		.get Dusty Journal |q 13633/1
	step //7
		'Hearth to Silver Covenant Pavilion |goto Icecrown,76.2,19.6,0.5 |use Hearthstone##6948 |noway |c |q 13633
	step //8
		goto Icecrown,69.4,23.0
		.talk Crusader Rhydalla##33417
		..turnin The Black Knight of Westfall?##13633
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
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Argent Warhorse|invehicle |q 13664
	step //22
		goto 71.3,23.2
		.talk Squire Cavin##33522
		..'Ask him to summon the Black Knight.
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
		.from Cult Assassin##35127|tip You must stay near the tombstone for it to complete
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
	step //28
		'Congratulations! You've reached the end of this section.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\The Skybreaker",[[
	author support@zygorguides.com
	daily
	step //1
		map Icecrown
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..accept Capture More Dispatches##13333 |daily
	step //2
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..accept That's Abominable!##13289 |daily
		..accept Drag and Drop##13323 |daily
		..accept Not a Bug##13344 |daily
	step //3
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..accept Slaves to Saronite##13300 |daily
	step //4
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..accept Blood of the Chosen##13336 |daily
	step //5
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..accept The Solution Solution##13292 |daily
		..accept Retest Now##13322 |daily
	step //6
		goto Icecrown,55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301|n
		.' Use a Tainted Essence to combine them|use Tainted Essence##44301
		..collect 1 Writhing Mass##44304|q 13322
		.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
		.collect 5 Dark Matter##44434|q 13344
	step //7
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger|goal Dark Messenger summoned|q 13344/1
	step //8
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
		.' Banish the Writhing Mass|goal Writhing Mass Banished|q 13322/1
	step //9
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion|q 13323
	step //10
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators|goal 3 Dark Subjugators dragged and dropped|q 13323/1
	step //11
		goto 43.3,58.2
		.' Use the Dart Gun on Orgrim's Hammer Scouts|use Dart Gun##44222|tip They are flying up in the air on purple dragons.
		.' When they hit the ground, fly down and loot their bodies|tip There are elites and grouped mobs on the ground.
		..get 6 Orgrim's Hammer Dispatch##44220+|q 13333/1
	step //12
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves|goal 10 Saronite Mine Slave rescued|q 13300/1
	step //13
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul|q 13336/1
	step //14
		goto 69.8,62.9
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6|n
		.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13289/1
		.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13289/2
		.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13289/3
	step //15
		goto 69.9,64.3
		.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616|q 13292
		.' Click Abandoned Helm|tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610|q 13292
		.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609|q 13292
	step //16
		goto 68.8,67.5
		.' Use Smuggled Solution 3 times|use Smuggled Solution##44048
		.' Frostbrood Skytalons Destroyed|goal 3 Field Tests Conducted|q 13292/1
	step //17
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..turnin Capture More Dispatches##13333
	step //18
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..turnin That's Abominable!##13289
		..turnin Drag and Drop##13323
		..turnin Not a Bug##13344
	step //19
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..turnin Slaves to Saronite##13300
	step //20
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..turnin Blood of the Chosen##13336
	step //21
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin The Solution Solution##13292
		..turnin Retest Now##13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\The Valley of Lost Hope",[[
	author support@zygorguides.com
	daily
	step //1
		goto Icecrown,62.6,51.3
		.talk Ground Commander Koup##31808
		..accept Assault by Air##13309 |daily
	step //2
		goto Icecrown,62.5,51.1
		.talk Skybreaker Squad Leader##31737
		..accept Assault by Ground##13284 |daily
	step //3
		'Follow the Alliance troops up the mountain and help them fight
		.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
	step //4
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Ground##13284
	step //5
		goto 62.6,50.9
		.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
	step //6
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Skybreaker Infiltrators |q 13309/1
	step //7
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Air##13309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Ymirheim",[[
	author support@zygorguides.com
	daily
	step //1
		goto Icecrown,57.0,62.6
		.talk Frazzle Geargrinder##31776
		..accept King of the Mountain##13280 |daily
	step //2
		goto 57.0,62.6
		.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
	step //3
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
		.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Alliance Battle Standard |q 13280/1
	step //4
		'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
	step //5
		goto 57.0,62.5
		.talk Frazzle Geargrinder##31776
		..turnin King of the Mountain##13280
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Aldur'thar: The Desolation Gate",[[
	author support@zygorguides.com
	daily
	step //1
		goto Icecrown,54.0,42.9
		.talk Kibli Killohertz##32444
		..accept Putting the Hertz: The Valley of Lost Hope##13382 |daily
	step //2
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle|q 13382
	step //3
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles and sentries that fly around you (you have to aim it)
		..kill 20 Gargoyle Ambusher|q 13382/2
		..kill 12 Frostbrood Sentries|q 13382/4
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry|q 13382/1
		..kill 12 Scourge War Machines|q 13382/3
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //4
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13382
	step //5
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Putting the Hertz: The Valley of Lost Hope##13382
	step //6
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..accept Static Shock Troops: the Bombardment##13404 |daily
	step //7
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle|q 13404
	step //8
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly around you (you have to aim it)
		..kill 20 Gargoyle Ambusher|q 13404/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry|q 13404/1
		..kill 10 Bombardment Captain|q 13404/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //9
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13404
	step //10
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Static Shock Troops: the Bombardment##13404
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Shadowvault Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Death's Rise Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\The Silver Covenant Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests
	description for The Silver Covenant faction in the Argent Tournament Grounds area of Icecrown.
	daily
	step //1
		goto Icecrown,76.3,19.6
		.talk Narasi Snowdawn##34880
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..accept A Leg Up##14074 |daily |or 2
		..accept Rescue at Sea##14152 |daily |or 2
		..accept Stop The Aggressors##14140 |daily |or 2
		..accept The Light's Mercy##14077 |daily |or 2
		..accept You've Really Done It This Time, Kul##14096 |daily |or 2
	step //2
		goto 76.2,19.6
		.talk Savinia Loresong##34912
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Breakfast Of Champions##14076 |daily |or
		..accept Gormok Wants His Snobolds##14090 |daily |or
		..accept What Do You Feed a Yeti, Anyway?##14112 |daily |or
	step //3
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 4 Black Cage Key##46895 |n
		.' Click Black Cages |tip They look like big sqaure cages around this area.
		.' Rescue 4 Captive Aspirants |q 14096/2
	step //4
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 1 Black Cage Key##46895 |q 14096
	step //5
		goto 60.8,23.2
		.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
		.' Rescue Kul the Reckless |q 14096/1
	step //6
		goto 67.0,8.1
		.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
		.collect 6 Fresh Chum##47036 |q 14112
	step //7
		goto 66.8,9.5
		.' Use the Fresh Chum in your bags |use Fresh Chum##47036
		.from North Sea Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
		.get 3 North Sea Shark Meat |q 14112/1
	step //8
		goto Hrothgar's Landing,50.4,49.3
		.kill 8 Kvaldir Berserker |q 14152/1
		.kill 3 Kvaldir Harpooner |q 14152/2
	step //9
		goto 43.3,27.5
		.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.get 10 Stolen Tallstrider Leg |q 14074/1
	step //10
		goto 46.5,32.8
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.' Kill 10 Kvaldir |q 14080/1
	step //11
		goto 46.5,32.8
		.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
		.' Administer 8 Last Rites |q 14077/1
	step //12
		goto The Storm Peaks,40.5,53.3
		.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
		.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
		.get 4 Jormungar Egg Sac |q 14076/1
	step //13
		goto 42.8,81.3
		.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
		.' Capture 8 Snowblind Followers |q 14090/1
	step //14
		goto Icecrown,76.3,19.6
		.talk Narasi Snowdawn##34880
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..turnin A Leg Up##14074
		..turnin Rescue at Sea##14152
		..turnin Stop The Aggressors##14140
		..turnin The Light's Mercy##14077
		..turnin You've Really Done It This Time, Kul##14096
	step //15
		goto 76.2,19.6
		.talk Savinia Loresong##34912
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Breakfast Of Champions##14076
		..turnin Gormok Wants His Snobolds##14090
		..turnin What Do You Feed a Yeti, Anyway?##14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Sholazar Basin\\Sholazar Basin Pre-Quests",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Sholazar Basin\\Frenzyheart Tribe Dailies",[[
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
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..' Ask him for some booze
		.collect Thunderbrew's Hard Ale##39738 |n
		.' Click the Wolvar Berries in your bags |use Wolvar Berries##39739
		.get Secret Strength of the Frenzyheart |q 12760/2
	step //21
		goto 30.1,70.7
		.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
		.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
		.' Kill 30 Sparktouched Gorlocs |q 12760/1
	step //22
		goto 24.0,83.1
		.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
		.collect Spike Bomb##39697 |q 12759
		.collect Ensnaring Trap##39695 |q 12759
		.collect Volatile Trap##39696 |q 12759
	step //23
		goto 28.4,76.1
		.' Use your Spike Bomb |use Spike Bomb##39697
		.' Use your Ensnaring Trap |use Ensnaring Trap##39695
		.' Use your Volatile Trap |use Volatile Trap##39696
		.' Use your traps near Oracles mobs around this area
		.' Kill 50 Sparktouched Gorlocs |q 12759/1
	step //24
		goto 23.4,83.3
		.talk Shaman Jakjek##28106
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Kartak's Rampage##12703
		..turnin Secret Strength of the Frenzyheart##12760
		..turnin Tools of War##12759
	step //25
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Chicken Party!##12702
	step //26
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Hero's Headgear##12758
		..turnin Rejek: First Blood##12734
		..turnin Strength of the Tempest##12741
		..turnin The Heartblood's Strength##12732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Sholazar Basin\\The Oracles Dailies",[[
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
		.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",[[
	author support@zygorguides.com
	description This guide section contains the quest path for the entire The Storm Peaks zone,
	description which includes the pre-quests to unlock the daily quests in the Brunnhildar Village,
	description Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.
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
		.' Click Dried Gnoll Rations|tip The Dried Gnoll Rations crates look like wooden boxes sitting on the ground around this area.
		.get 16 Dried Gnoll Rations|q 12827/1
	step //8
		goto 30.3,85.7
		.kill Gnarlhide##30003|q 12836/1
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
		.' Click the U.D.E.D. Dispenser next to Tore Rumblewrench|tip Standing next to some debris.
		.' Retrieve a bomb from the dispenser
		.collect U.D.E.D.##40686|q 12828
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
		.from Icetip Crawler##29461
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
		.collect 5 Cold Iron Key##40641|n
		.' Click the Rusty Cages
		.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
		.' Click the K3 Equipment|tip The K3 Equipment looks like wooden crates on the ground around town.
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
		goto 48.1,81.9
		.kill 6 Garm Watcher|q 12822/1
		.kill 8 Snowblind Devotee|q 12822/2
	step //34
		'Go outside and go to 50.0,81.8|goto 50.0,81.8
		.talk Gino##29432
		..turnin A Flawless Plan##12823
		..accept Demolitionist Extraordinaire##12824
	step //35
		Fly up into the cave to 42.8,68.9|goto 42.8,68.9
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
		.kill 1 Garhal##30147|q 12907/1
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
		ding 79
	step //62
		goto 55.8,63.9
		.'Kill 8 Ravenous Jormungar inside this cave|kill 8 Ravenous Jormungar|q 12989/1
	step //63
		'Follow the path in the cave to 54.8,60.4|goto 54.8,60.4
		.' Click the Injured Icemaw Matriarch|tip She's a big white bear laying on the ground inside this cave.
		.' The bear runs back to Brunnhildar Village
		.' Rescue the Icemaw Matriarch|goal Icemaw Matriarch Rescued|q 12983/1
	step //64
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Last of Her Kind##12983
		..accept The Warm-Up##12996
		..turnin The Slithering Darkness##12989
	step //65
		'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
	step //66
		goto 50.8,67.7
		.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
		.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
	step //67
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //68
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin The Warm-Up##12996
		..accept Into the Pit##12997
	step //69
		goto 49.1,69.4
		.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
		.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
		.kill 6 Hyldsmeet Warbear|q 12997/1
	step //70
		'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
	step //71
		goto 49.7,71.8
		.talk Astrid Bjornrittar##29839
		..turnin Into the Pit##12997
		..accept Prepare for Glory##13061
	step //72
		goto 47.5,69.1
		.talk Lok'lira the Crone##29975
		..turnin Prepare for Glory##13061
		..accept Lok'lira's Parting Gift##13062
	step //73
		goto 50.9,65.6
		.talk Gretta the Arbiter##29796
		..turnin Lok'lira's Parting Gift##13062
		..accept The Drakkensryd##12886
	step //74
		'You fly off on a drake and start flying in circles around a tower:
		.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
		.kill Hyldsmeet Drakeriders|n
		.' Repeat this process 9 more times
		.' Defeat 10 Hyldsmeet Drakeriders|goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
	step //75
		'They look like light fixtures on the side of the stone columns.
		.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
	step //76
		goto 33.4,58
		.talk Thorim##29445
		..turnin The Drakkensryd##12886
		..accept Sibling Rivalry##13064
	step //77
		goto 33.4,58
		.talk Thorim##29445
		..'Ask him what became of Sif
		.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
	step //78
		goto 33.4,58
		.talk Thorim##29445
		..turnin Sibling Rivalry##13064
		..accept Mending Fences##12915
	step //79
		goto 27.3,63.7
		.kill 12 Nascent Val'kyr|q 12942/1
		.kill Valkyrion Aspirants|n
		.collect 6 Vial of Frost Oil##41612|q 12925
	step //80
		goto 23.7,58.3
		.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
		.' Try to get 6 at a time
		.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
	step //81
		goto 24,61.8
		.kill 1 Yulda the Stormspeaker|q 12968/1|tip Yulda the Stormspeaker is standing inside this house.
		.' Click the Harpoon Crate|tip The Harpoon Crate looks like a huge square chest.
		..accept Valkyrion Must Burn##12953
	step //82
		goto 26,59.8
		.' Click the Valkyrion Harpoon Guns|tip They look like bronze dragon guns.
		.' Use the Flaming Harpoon abilitiy on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
		.' Start 6 Fires|goal 6 Fires Started|q 12953/1
	step //83
		'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
	step //84
		'Hearth to K3|goto The Storm Peaks,41.0,85.9,0.5|use Hearthstone##6948|noway|c
	step //85
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Demolitionist Extraordinaire##12824
		..turnin Know No Fear##12822
		..accept Overstock##12833
	step //86
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader|q 12833/1
	step //87
		goto 40.9,85.3
		.talk Ricket##29428
		..turnin Overstock##12833
	step //88
		goto 48.4,72.1
		.talk Thyra Kvinnshal##30041
		..turnin Aberrations##12925
	step //89
		goto 48.4,72.1
		.talk Iva the Vengeful##29997
		..turnin Off With Their Black Wings##12942
		..turnin Yulda's Folly##12968
		..turnin Valkyrion Must Burn##12953
	step //90
		goto 75.8,63
		.' Click the Granite Boulders and get them 1 at a time|tip The Granite Boulders look like big grey rocks on the ground around this area.
		.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
		.' Help the dwarves kill them
		.kill 5 Stormforged Iron Giant|q 12915/2
		.collect Slag Covered Metal##41556 |q 12922 |future |n
		.use Slag Covered Metal##41556
		..accept The Refiner's Fire##12922
	step //91
		goto 75.4,63.5
		.from Seething Revenants
		.get 10 Furious Spark|q 12922/1
	step //92
		goto 77.2,62.9
		.' Click a Granite Boulder and get one
		.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
		.' Help the dwarves kill him
		.kill Fjorn|q 12915/1
	step //93
		goto 77.2,62.9
		.' Click Fjorn's Anvil|tip Fjorn's Anvil is a huge anvil.
		..turnin The Refiner's Fire##12922
		..accept A Spark of Hope##12956
	step //94
		goto 33.4,58
		.talk Thorim##29445
		..turnin A Spark of Hope##12956
		..turnin Mending Fences##12915
		..accept Forging an Alliance##12924
	step //95
		goto 62.6,60.9
		.talk Halvdan##32571
		..fpath Dun Niffelem
	step //96
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept You Can't Miss Him##12966
	step //97
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin You Can't Miss Him##12966
		..accept Battling the Elements##12967
	step //98
		goto 75.7,63.9
		.' Click Snorri to accompany on him|invehicle|c|tip Standing on the side of the road.
	step //99
		goto 76.7,63.4
		.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
		.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
		.kill 10 Seething Revenant|q 12967/1
	step //100
		'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
	step //101
		goto 75.4,63.6
		.talk Njormeld##30099
		..turnin Battling the Elements##12967
	step //102
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging an Alliance##12924
		..accept A New Beginning##13009
	step //103
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981
	step //104
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept In Memoriam##12975
	step //105
		goto 69.7,60.2
		.kill Brittle Revenants|n
		.collect 6 Essence of Ice##42246 |q 12981
	step //106
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
		.' Click the Frozen Iron Scraps|tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.get 6 Frozen Iron Scrap|q 12981/1
	step //107
		goto 72.1,49.4
		.' Click the Horn Fragments|tip The Horn Fragments look like grey scraps on the ground around this area.
		.get 8 Horn Fragment|q 12975/1
	step //108
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin In Memoriam##12975
		..accept A Monument to the Fallen##12976
	step //109
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin A Monument to the Fallen##12976
	step //110
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //111
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977
	step //112
		goto 72.1,51.8
		.kill Niffelem Forefathers and Restless Frostborn Ghosts|n
		.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
		.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
	step //113
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //114
		goto 63.2,63.2
		.talk Njormeld##30127
		..accept Forging a Head##12985
	step //115
		goto 65.4,60.2
		.talk King Jokkum##30105
		..accept Jormuttar is Soo Fat...##13011
	step //116
		goto 69.7,58.9
		.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
		.kill the Stormforged Ambushers that spawn|n
		.get 8 Stormforged Eye|q 12985/1
	step //117
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Forging a Head##12985
		..accept Mounting Hodir's Helm##12987
	step //118
		goto 64.3,59.2
		.' Fly to the tip of this ice spike
		.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
		.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
	step //119
		goto 63.2,63.2
		.talk Njormeld##30127
		..turnin Mounting Hodir's Helm##12987
	step //120
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006
	step //121
		goto 55.6,63.4
		.kill Viscous Oils inside this cave|n
		.get 5 Viscous Oil|q 13006/1
		.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
		.collect 1 Icemaw Bear Flank##42733|q 13011
	step //122
		goto 54.7,60.8
		.' Follow the path inside the cave to this spot
		.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
		.kill 1 Jormuttar|q 13011/1
	step //123
		'Go outside and go to 33.4,58|goto 33.4,58
		.talk Thorim##29445
		..turnin A New Beginning##13009
		..accept Veranus##13050
	step //124
		goto 43.7,67.4
		.' Click the Small Proto-Drake Eggs|tip They are big spiked brown eggs on top of this mountain in a nest.
		.get 5 Small Proto-Drake Egg|q 13050/1
		.' You can find more Small Proto-Drake Eggs at 45.2,66.9|n
	step //125
		goto 33.4,58
		.talk Thorim##29445
		..turnin Veranus##13050
		..accept Territorial Trespass##13051
	step //126
		goto 38.7,65.6
		.' Stand in this big nest
		.' Click the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
		.' Lure Veranus|goal Veranus Lured|q 13051/1
	step //127
		goto 33.4,58
		.talk Thorim##29445
		..turnin Territorial Trespass##13051
		..accept Krolmir, Hammer of Storms##13010
	step //128
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //129
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin Jormuttar is Soo Fat...##13011
	step //130
		goto 65.4,60.2
		.talk King Jokkum##30105
		..'Ask him what has become of Krolmir
		.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
	step //131
		goto 71.4,48.8
		.talk Thorim##30390
		..turnin Krolmir, Hammer of Storms##13010
		..accept The Terrace of the Makers##13057
	step //132
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Terrace of the Makers##13057
		..accept The Earthen Oath##13005
		..accept Loken's Lackeys##13035
	step //133
		goto 57.3,46.7
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.' Fight mobs around this area
		.kill 7 Iron Sentinel|q 13005/1
		.kill 20 Iron Dwarf Assailant|q 13005/2
	step //134
		'Fly up into the building to 55.3,43.3|goto 55.3,43.3
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Eisenfaust|q 13035/1|tip He's inside this Hall of the Shaper building in the very back of the room.
	step //135
		goto 48.6,45.6
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Halefnir the Windborn|q 13035/2|tip Standing in the middle of this huge staircase.
	step //136
		goto 45,38.1
		.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
		.kill Duronn the Runewrought|q 13035/3|tip Standing at the bottom of this huge staircase.
	step //137
		goto 56.3,51.4
		.talk Thorim##30295
		..turnin The Earthen Oath##13005
		..turnin Loken's Lackeys##13035
		..accept The Reckoning##13047
	step //138
		goto 35.9,31.5
		.talk Thorim##30399
		..'Tell him you are with him
		.' Witness the Reckoning|goal Witness the Reckoning|q 13047/1
	step //139
		goto 65.4,60.2
		.talk King Jokkum##30105
		..turnin The Reckoning##13047
	step //140
		goto 40.9,85.3
		.talk Ricket##29428
		..accept When All Else Fails##12862
	step //141
		goto 40.9,85.3
		.talk Ricket##29428
		..'Tell her you are ready to head further into Storm Peaks
		.'You will fly to Frosthold|goto 28.6,74.6,0.5|noway|c
	step //142
		goto 29.5,74.3
		.talk Faldorf Bitterchill##29750
		..fpath Frosthold
	step //143
		goto 29.5,74.1
		.talk Archaeologist Andorin##29650
		..accept On Brann's Trail##12854
	step //144
		goto 29.4,73.8
		.talk Lagnus##29743
		..accept Offering Thanks##12863
	step //145
		goto 28.8,74.1
		.talk Rork Sharpchin##29744
		..turnin When All Else Fails##12862
		..accept Ancient Relics##12870
	step //146
		goto 28.7,74.4
		home Frosthold
	step //147
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Offering Thanks##12863
		..accept Missing Scouts##12864
	step //148
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..accept Loyal Companions##12865
	step //149
		goto 36.4,77.3
		.talk the Frostborn Scout##29811
		..'Ask him if he is okay
		.' Locate the Missing Scout|goal Locate Missing Scout|q 12864/1
	step //150
		goto 46.5,68.3
		.kill Vrykuls|n|tip Inside this mine.
		.' Get 10 Relics of Ulduar|goal 10 Relic of Ulduar|q 12870/1
	step //151
		'Go outside to 44.5,60.4|goto 44.5,60.4
		.kill Ice Steppe Rhinos|n
		.collect 8 Fresh Ice Rhino Meat##41340|q 12865
	step //152
		goto 36.1,64.1
		.' Click the Disturbed Snow|tip It's a pile of snow on the ground.
		.get Burlap-Wrapped Note|q 12854/1
	step //153
		goto 33.2,73.7
		.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain|use Fresh Ice Rhino Meat##41340
		.' Feed 8 Stormcrest Eagles|goal 8 Stormcrest Eagles fed|q 12865/1
	step //154
		goto 29.5,74.1
		.talk Archaeologist Andorin##29650
		..turnin On Brann's Trail##12854
		..accept Sniffing Out the Perpetrator##12855
	step //155
		goto 28.8,74.1
		.talk Rork Sharpchin##29744
		..turnin Ancient Relics##12870
	step //156
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Missing Scouts##12864
		..accept Stemming the Aggressors##12866
	step //157
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Loyal Companions##12865
		..accept Baby Stealers##12867
	step //158
		goto 33,66.8
		.' Click Eagle Eggs on the ground|tip They look like white eggs sitting on the ground around this area, usually next to trees.
		.get 15 Stormcrest Eagle Egg|q 12867/1
		.kill 8 Frostfeather Screecher|q 12866/1
		.kill 8 Frostfeather Witch|q 12866/2
	step //159
		goto 36.4,64.1
		.' Use the Frosthound's Collar in your bags next to this broken down tent|use Frosthound's Collar##41430
		.' Use the abilities on your hotbar to keep the dwarves away from you
		.' Track down the thief|goal Track down thief|q 12855/1
	step //160
		goto 48.5,60.8
		.kill Tracker Thulin|q 12855/2|tip He's sitting on the ground inside this small cave.
		.collect Brann's Communicator##40971|q 12871
	step //161
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Sniffing Out the Perpetrator##12855
		..accept Pieces to the Puzzle##12858
	step //162
		goto 37.6,43.5
		.kill Library Guardians|n
		.collect 6 Inventor's Disk Fragment##41130|n
		.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
		.get The Inventor's Disk|q 12858/1
	step //163
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Pieces to the Puzzle##12858
		..accept Data Mining##12860
	step //164
		goto 38.5,44.2
		.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
		.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12860/1
	step //165
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Data Mining##12860
		..accept The Library Console##13415
	step //166
		goto 37.4,46.8
		.' Click the Inventor's Library Console|tip Inside the building, all the way at the end of the hall.
		..turnin The Library Console##13415
		..accept Norgannon's Shell##12872
	step //167
		'Click the Charged Disk in your bags|use Charged Disk##44704
		.kill Archivist Mechaton that spawns|n
		.get Norgannon's Shell|q 12872/1
	step //168
		'Use Brann's Communicator in your bags|use Brann's Communicator##40971
		.talk Brann Bronzebeard##29579
		..turnin Norgannon's Shell##12872
		..accept Aid from the Explorers' League##12871
		..accept The Exiles of Ulduar##12885
	step //169
		goto 30.6,36.3
		.talk Breck Rockbrow##29950
		..fpath Bouldercrag's Refuge
	step //170
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin The Exiles of Ulduar##12885
		..accept Rare Earth##12930
	step //171
		'Hearth to Frosthold|goto The Storm Peaks,28.7,74.4,0.5|use Hearthstone##6948|noway|c
	step //172
		goto 29.4,73.8
		.talk Lagnus##29743
		..turnin Aid from the Explorers' League##12871
		..accept The Frostborn King##12873
	step //173
		goto 29.2,74.9
		.talk Glorthal Stiffbeard##29727
		..turnin Stemming the Aggressors##12866
	step //174
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Baby Stealers##12867
	step //175
		goto 30.31,74.8
		.talk Yorg Stormheart##29593
		..turnin The Frostborn King##12873
		..accept Fervor of the Frostborn##12874
	step //176
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..'Tell him you are ready for your test|goto The Storm Peaks,53.5,35.1,0.5|c
	step //177
		goto 53.6,35.1
		.' Click the Battered Storm Hammer|tip It's a big hammer on the ground next to a dead body.
		.collect Battered Storm Hammer##42624|q 12874
	step //178
		goto 53.5,37.9
		.' Use your Battered Storm Hammer on The Iron Watcher repeatedly|use Battered Storm Hammer##42624
		.' While he is stuned, run away so the Hammer can recharge
		.' When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
		.kill The Iron Watcher|q 12874/1
	step //179
		goto 30.31,74.8
		.talk Yorg Stormheart##29593
		..turnin Fervor of the Frostborn##12874
		..accept An Experienced Guide##12875
	step //180
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..accept Unwelcome Guests##12876
	step //181
		goto 27.0,66.9|n
		.' The path to An Experienced Guide and Unwelcome Guests starts here|goto The Storm Peaks,27.0,66.9,0.2|noway|c
	step //182
		goto 26.3,66.7
		.kill Stormforged mobs inside this cave|n
		.kill 10 Stormforged Invaders|q 12876/1
		.get 5 Frostweave Cloth|q 12930/2
	step //183
		goto 25.2,68.5
		.talk Drom Frostgrip##29751
		..turnin An Experienced Guide##12875
		..accept The Lonesome Watcher##12877
	step //184
		'Go outside to 27.1,67.3|goto 27.1,67.3
		.from the Stormforged Monitor##29862
		.get Frostgrip's Signet Ring|q 12877/1
	step //185
		goto 39.6,59.8
		.talk Creteus##30052
		..turnin The Lonesome Watcher##12877
		..accept Fate of the Titans##12986
	step //186
		'Fly to the top of this temple to 52.6,56.9|goto 52.6,56.9
		.' Use Creteus's Mobile Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Winter|goal Temple of Winter Investigated|q 12986/2
	step //187
		goto 64.3,46.7
		.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Life|goal Temple of Life Investigated|q 12986/3
	step //188
		'Fly to the top of this temple to 53.5,42.3|goto 53.5,42.3
		.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Order|goal Temple of Order Investigated|q 12986/4
	step //189
		'Fly to the top of this temple to 45.6,49.2|goto 45.6,49.2
		.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
		.' Investigate the Temple of Invention|goal Temple of Invention Investigated|q 12986/1
	step //190
		goto 39.6,59.8
		.talk Creteus##30052
		..turnin Fate of the Titans##12986
		..accept The Hidden Relic##12878
	step //191
		goto 41.5,62.1|n
		.' The path to The Hidden Relic starts here|goto The Storm Peaks,41.5,62.1,0.2|noway|c
	step //192
		'Go inside the cave to 44.5,64.5|goto 44.5,64.5
		.' Click The Guardian's Charge|tip It's at the very lowest level of the cave.
		..turnin The Hidden Relic##12878
		..accept Fury of the Frostborn King##12879
	step //193
		'Go outside the cave to 38.2,61.7|goto 38.2,61.7
		.talk Creteus##30082
		..turnin Fury of the Frostborn King##12879
		..accept The Master Explorer##12880
	step //194
		goto 39.6,56.4
		.talk Brann Bronzebeard##30382
		..turnin The Master Explorer##12880
		..accept The Brothers Bronzebeard##12973
	step //195
		'Click Brann's Flying Machine next to you
		.kill the dwarves that jump on the plane as you fly|n
		.' Accompany Brann Bronzebeard to Frosthold|goal Accompany Brann Bronzebeard to Frosthold. |q 12973/1
	step //196
		goto 30.3,74.8
		.talk Velog Icebellow##30401
		..turnin The Brothers Bronzebeard##12973
	step //197
		goto 29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..turnin Unwelcome Guests##12876
		..accept Pushed Too Far##12869
	step //198
		goto 44.6,59.8
		.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
		.kill 16 Stormpeak Wyrm|q 12869/1
	step //199
		goto 29.8,75.7
		.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
		.talk Fjorlin Frostbrow##29732
		..turnin Pushed Too Far##12869
	step //200
		goto 28.3,29.4
		.' Click the Enchanted Earth|tip They look like big black spikes of rock coming out of the ground at the bottom of this cliff, near the water and all along the cliffside.
		.get 7 Enchanted Earth|q 12930/1
	step //201
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Rare Earth##12930
		..accept Fighting Back##12931
		..accept Relief for the Fallen##12937
	step //202
		home Bouldercrag's Refuge
	step //203
		goto 28.1,36.7
		.kill Stormforged Raiders and Stormforged Reavers|n
		.kill 10 Stormforged Attacker|q 12931/1
		.' Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
		.' Heal 8 Fallen Earthen Defenders|goal 8 Fallen Earthen Defenders healed|q 12937/1
	step //204
		'Go inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Fighting Back##12931
		..turnin Relief for the Fallen##12937
		..accept Slaves of the Stormforged##12957
		..accept The Dark Ore##12964
	step //205
		'Go inside the mine to 27.5,49.7|goto 27.5,49.7
		.kill 3 Stormforged Taskmaster|q 12957/2
		.talk Captive Mechagnome##29384
		.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
		.' Click Ore Carts|tip They look like carts with ore in them.
		.get 5 Dark Ore Sample|q 12964/1
	step //206
		'Go outside and inside the building to 31.4,38.1|goto 31.4,38.1
		.talk Bouldercrag the Rockshaper##29801
		..turnin Slaves of the Stormforged##12957
		..turnin The Dark Ore##12964
		..accept The Gifts of Loken##12965
	step //207
		goto 31.3,38.2
		.talk Bruor Ironbane##30152
		..accept Facing the Storm##12978
	step //208
		goto 25,42.9
		.kill Stormforged mobs|n
		.kill 10 Nidavelir Stormforged|q 12978/1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Friendly)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Honored reputation with The Sons of Hodir.
	description You must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests) guide section,
	description as it contains pre-quests to unlock The Sons of Hodir up to Friendly reputation, before having access to the quests in this guide section.
	daily
	step //1
		'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.
	step //2
		goto The Storm Peaks,64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //3
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //4
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //5
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //6
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //7
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //8
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //9
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //10
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //11
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //12
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //13
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //14
		'Repeat this process until you are Honored with The Sons of Hodir, then go to the The Sons of Hodir (Honored Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Honored) - Pre-Quest",[[
	author support@zygorguides.com
	description This guide section will walk you through completing a pre-quest, unlocked by earning
	description Honored reputation with The Sons of Hodir faction, that unlocks a daily quest.
	description You must have completed the The Sons of Hodir Reputation (Friendly) guide section
	description in order to have access to the quest in this guide section.
	step //1
		'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir.
	step //2
		goto The Storm Peaks,64.8,59.1
		.talk Lorekeeper Randvir##30252
		..accept Raising Hodir's Spear##13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
	step //3
		goto 59.0,61.2
		.from Stoic Mammoth##30260+
		..get 3 Stoic Mammoth Hide |q 13001/2
	step //4
		'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
	step //5
		goto 54.7,60.8
		.' Click Everfrost Shards |tip They look like greenish blue spikes coming out of this frozen pond in the back of the cave.
		.get 3 Everfrost Shard |q 13001/1
	step //6
		'Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
	step //7
		goto 64.8,59.1
		.talk Lorekeeper Randvir##30252
		..turnin Raising Hodir's Spear##13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Honored)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Revered reputation with The Sons of Hodir.
	description You must have completed the The Sons of Hodir Reputation (Friendly) guide section and
	description the The Sons of Hodir Reputation (Honored) - Pre-Quest guide section
	description before having access to the quests in this guide section.
	daily
	step //1
		'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir.
	step //2
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //3
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //4
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
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
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //9
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //10
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //11
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //12
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //13
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //14
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //15
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //16
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //17
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //18
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //19
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //20
		'Repeat this process until you are Revered with The Sons of Hodir, then go to the The Sons of Hodir (Revered Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\The Sons of Hodir Reputation (Revered)",[[
	author support@zygorguides.com
	description This guide section will walk you through earning Exalted reputation with The Sons of Hodir.
	description You must have completed the The Sons of Hodir Reputation (Honored) guide section before having access to the quests in this guide section.
	daily
	step //1
		'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir, and then the you must complete the THE SONS OF HODIR (HONORED) guide section until you are Revered with The Sons of Hodir.
	step //2
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //3
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //4
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //5
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046 |daily
	step //6
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //7
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //8
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1	
	step //9
		goto 56.4,65.0
		.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		.' Feed Arngrim's Spirit 5 Times |q 13046/1
	step //10
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //11
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //12
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //13
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //14
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
	step //15
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..turnin Feeding Arngrim##13046
	step //16
		goto 69.7,60.2
		.from Brittle Revenant##30160+
		.collect 6 Essence of Ice##42246 |q 12981
	step //17
		goto 75.3,62.8
		.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
		.' Click the Frozen Iron Scraps
		.get 6 Frozen Iron Scrap |q 12981/1
	step //18
		goto 72.1,51.8
		.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
		.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
		.' Free 5 Niffelem Forefathers |q 12977/1
		.' Free 5 Restless Frostborn |q 12977/2
	step //19
		goto 67.0,45.1
		.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
		.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
		.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
		.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
	step //20
		goto 63.2,62.9
		.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
		..turnin Hot and Cold##12981
	step //21
		goto 64.1,65.1
		.' Click Hodir's Horn|tip It's a huge bone war horn.
		..turnin Blowing Hodir's Horn##12977
	step //22
		goto 66.2,61.4
		.talk Lillehoff##32540
		..accept Hodir's Tribute##13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
	step //23
		'You can repeat this process until you are Exalted with The Sons of Hodir.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\Brunnhildar Village Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
	description If you are not Revered with The Sons of Hodir, you will not be able to accept some of the quests in this guide section.
	description To become Revered with The Sons of Hodir, use the The Sons of Hodir (Friendly), The Sons of Hodir (Honored) - Pre-Quest,
	description and The Sons of Hodir (Honored) guide sections in the Reputation section of the Dailies guide.
	daily
	step //1
		'If you are not Revered with The Sons of Hodir, you will not be able to accept some of the following quests.  To become Revered with The Sons of Hodir, use the THE SONS OF HODIR REPUTATION GUIDE.
	step //2
		goto The Storm Peaks,63.5,59.8
		.talk Frostworg Denmother##30294
		..accept Spy Hunter##12994 |daily
	step //3
		goto 64.2,59.2
		.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
		..accept Polishing the Helm##13006 |daily
	step //4
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..accept Thrusting Hodir's Spear##13003 |daily
	step //5
		goto 67.6,59.9
		.' Click Arngrim the Insatiable
		..accept Feeding Arngrim##13046 |daily
	step //6
		goto 63.2,62.9
		.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
		..accept Hot and Cold##12981 |daily
	step //7
		goto 64.1,65.1
		.' Click Hodir's Horn |tip It's a huge bone war horn.
		..accept Blowing Hodir's Horn##12977 |daily
	step //8
		goto 57.2,64.0
		.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
		.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
		.' Repeat this process 2 more times
		.' Kill 3 Stormforged Infiltrators |q 12994/1	
	step //9
		goto 56.4,65.0
		.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
		.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
		.' Feed Arngrim's Spirit 5 Times |q 13046/1
	step //10
		goto 55.6,63.4
		.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
		.get 5 Viscous Oil |q 13006/1
	step //11
		goto 56.6,64.3
		.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
		.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
		.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.  
		.' Kill the Wild Wyrm |q 13003/1	
	step //12
		goto 63.5,59.8
		.talk Frostworg Denmother##30294
		..turnin Spy Hunter##12994
	step //13
		goto 64.2,59.2
		.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
		..turnin Polishing the Helm##13006
	step //14
		goto 65.1,60.8
		.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
		..turnin Thrusting Hodir's Spear##13003
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\Frosthold Dailies",[[
	author support@zygorguides.com
	daily
	step //1
		goto The Storm Peaks,29.8,75.7
		.talk Fjorlin Frostbrow##29732
		..accept Pushed Too Far##12869 |daily
	step //2
		goto 44.6,59.8
		.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
		.kill 16 Stormpeak Wyrm|q 12869/1
	step //3
		goto 29.8,75.7
		.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
		.talk Fjorlin Frostbrow##29732
		..turnin Pushed Too Far##12869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\The Storm Peaks\\K3 Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Zul'Drak\\Zul'Drak Pre-Quests",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Zul'Drak\\The Argent Stand Dailies",[[
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
		autoscript ZGV.completioninterval=5
	step //23
		goto 40.3,66.6
		.talk Commander Kunz##28039
		.accept Congratulations!##12604 |daily |instant |tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Home Cities Exalted Reputation Guide",[[
	description This guide will help you to get Exalted reputation with the Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions.
	description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
	author support@zygorguides.com
	startlevel 77
	step //1
		goto Elwynn Forest,48.1,43.6
		.talk Deputy Willem##823
		..accept A Threat Within##783
	step //2
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin A Threat Within##783
		..accept Kobold Camp Cleanup##7
	step //3
		goto 48.1,43.6
		.talk Deputy Willem##823
		..accept Eagan Peltskinner##5261
		..accept Brotherhood of Thieves##18
	step //4
		goto 48.9,40.2
		.talk Eagan Peltskinner##196
		..turnin Eagan Peltskinner##5261
		..accept Wolves Across the Border##33
	step //5
		goto 47.4,39.7
		.from Diseased Young Wolf##299+
		.get 8 Diseased Wolf Pelt|q 33/1
	step //6
		goto 47.9,37.1
		.kill 8 Kobold Vermin|q 7/1
	step //7
		goto 48.9,40.2
		.talk Eagan Peltskinner##196
		..turnin Wolves Across the Border##33
	step //8
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Kobold Camp Cleanup##7
		..accept Investigate Echo Ridge##15
	step //9
		goto 51.3,37.0
		.kill 10 Kobold Workers|q 15/1
	step //10
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Investigate Echo Ridge##15
		..accept Skirmish at Echo Ridge##21
	step //11
		goto 47.7,32
		.kill 12 Kobold Laborer##80|q 21/1
	step //12
		goto 54.3,41
		.from Defias Thug##38+
		.get 8 Red Burlap Bandana|q 18/1
	step //13
		goto 48.1,43.6
		.talk Deputy Willem##823
		..turnin Brotherhood of Thieves##18
		..accept Milly Osworth##3903
		..accept Bounty on Garrick Padfoot##6
	step //14
		goto 50.7,39.3
		.talk Milly Osworth##9296
		..turnin Milly Osworth##3903
		..accept Milly's Harvest##3904
	step //15
		goto 53.6,47.3
		.' Click Milly's Harvest barrels around the vineyard|tip Milly's Harvest look like barrels of grapes.
		.get 8 Milly's Harvest|q 3904/1
	step //16
		goto 57.5,48.3
		.from Garrick Padfoot##103
		.get Garrick's Head|q 6/1
	step //17
		goto 50.7,39.3
		.talk Milly Osworth##9296
		..turnin Milly's Harvest##3904
		..accept Grape Manifest##3905
	step //18
		goto 48.1,43.6
		.talk Deputy Willem##823
		..turnin Bounty on Garrick Padfoot##6
	step //19
		'Go into the church and up the spiral staircase to the very top|goto Elwynn Forest,49.3,41.0,0.1|noway|c
	step //20
		goto 49.5,41.6
		.talk Brother Neals##952
		..turnin Grape Manifest##3905
	step //21
		goto 48.9,41.6
		.talk Marshal McBride##197
		..turnin Skirmish at Echo Ridge##21
		..accept Report to Goldshire##54
	step //22
		goto 45.6,47.7
		.talk Falkhaan Isenstrider##6774
		..accept Rest and Relaxation##2158
	step //23
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin Report to Goldshire##54
		..accept The Fargodeep Mine##62
	step //24
		goto 43.3,65.7
		.talk William Pestle##253
		..accept Kobold Candles##60
	step //25
		goto 43.8,65.8
		.talk Innkeeper Farley##295
		..turnin Rest and Relaxation##2158
	step //26
		home Goldshire
	step //27
		goto 42.1,67.3
		.talk Remy "Two Times"##241
		..accept Gold Dust Exchange##47
	step //28
		goto 39,82.3
		.from Kobold Tunneler##475+, Kobold Miner##40+
		.get 10 Gold Dust|q 47/1
		.get 8 Large Candle|q 60/1
	step //29
		'Go northeast inside the mine to 41.3,79.1|goto 41.3,79.1
		.' Explore the Fargodeep Mine|goal Scout through the Fargodeep Mine|q 62/1
	step //30
		goto 42.1,67.3
		.talk Remy "Two Times"##241
		..turnin Gold Dust Exchange##47
	step //31
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin The Fargodeep Mine##62
		..accept The Jasperlode Mine##76
	step //32
		goto 41.7,65.6
		.talk Smith Argus##514
		..accept Elmore's Task##1097
	step //33
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Kobold Candles##60
		..accept Shipment to Stormwind##61
	step //34
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..accept Lost Necklace##85
	step //35
		goto 34.6,84.5
		.talk Ma Stonefield##244
		..accept Princess Must Die!##88
	step //36
		goto 43.1,85.7
		.talk Billy Maclure##247
		..turnin Lost Necklace##85
		..accept Pie for Billy##86
	step //37
		goto 41.7,86.9
		.from Stonetusk Boar##113+
		.get 4 Chunk of Boar Meat|q 86/1
	step //38
		goto 43.2,89.6
		.talk Maybell Maclure##251
		..accept Young Lovers##106
	step //39
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..turnin Pie for Billy##86
		..accept Back to Billy##84
	step //40
		goto 29.8,86
		.talk Tommy Joe Stonefield##252
		..turnin Young Lovers##106
		..accept Speak with Gramma##111
	step //41
		goto 34.9,83.9
		.talk Gramma Stonefield##248
		..turnin Speak with Gramma##111
		..accept Note to William##107
	step //42
		goto 43.1,85.7
		.talk Billy Maclure##247
		..turnin Back to Billy##84
		..accept Goldtooth##87
	step //43
		'Go northwest into the Fargodeep Mine to 38.3,81.6|goto 38.3,81.6|n
		.' Enter using the lower entrance|goto Elwynn Forest,38.3,81.6,0.5|noway|c
	step //44
		'Follow the path inside the cave to 41.7,78.3|goto 41.7,78.3
		.from Goldtooth##327
		.get Bernice's Necklace|q 87/1
	step //45
		'Go outside to 42.1,67.3|goto 42.1,67.3
		.talk Remy "Two Times"##241
		..accept A Fishy Peril##40
	step //46
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin A Fishy Peril##40
		..accept Further Concerns##35
	step //47
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Note to William##107
		..accept Collecting Kelp##112
	step //48
		goto 49.7,66.3
		.from Murloc##285+, Murloc Steamrunner##735+
		.get 4 Crystal Kelp Frond|q 112/1
	step //49
		goto 43.3,65.7
		.talk William Pestle##253
		..turnin Collecting Kelp##112
		..accept The Escape##114
	step //50
		goto 43.2,89.6
		.talk Maybell Maclure##251
		..turnin The Escape##114
	step //51
		goto 34.5,84.2
		.talk "Auntie" Bernice Stonefield##246
		..turnin Goldtooth##87
	step //52
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Further Concerns##35
		..accept Find the Lost Guards##37
		..accept Protect the Frontier##52
	step //53
		goto 79.5,68.8
		.talk Sara Timberlain##278
		..accept Red Linen Goods##83
	step //54
		goto 81.4,66.1
		.talk Supervisor Raelen##10616
		..accept A Bundle of Trouble##5545
	step //55
		goto 81.3,60.6
		.' Click the small stacks of wood at the base of trees|tip They look like little stacks of 3 firewood at the base of trees in this area.
		.get 8 Bundle of Wood|q 5545/1
	step //56
		goto 72.7,60.3
		.' Click the Half-Eaten body|tip On the ground next to some big rocks by the river and a tree.
		..turnin Find the Lost Guards##37
		..accept Discover Rolf's Fate##45
	step //57
		goto 79.8,55.5
		.' Click Rolf's Corpse|tip On the ground next to a murloc hut.
		..turnin Discover Rolf's Fate##45
		..accept Report to Thomas##71
	step //58
		goto 81.4,66.1
		.talk Supervisor Raelen##10616
		..turnin A Bundle of Trouble##5545
	step //59
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Report to Thomas##71
		..accept Deliver Thomas' Report##39
	step //60
		goto 80,77.8
		.kill 8 Prowler|q 52/1
		.kill 5 Young Forest Bear|q 52/2
	step //61
		goto 70.6,76.3
		.from Defias Bandit##116+
		.get 6 Red Linen Bandana|q 83/1
	step //62
		goto 69.7,79.5
		'Kill Princess
		.get Brass Collar##1006|q 88/1
	step //63
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Protect the Frontier##52
	step //64
		goto 79.5,68.8
		.talk Sara Timberlain##278
		..turnin Red Linen Goods##83
	step //65
		'Go inside the mine to 60.4,49.7|goto 60.4,49.7
		.' Explore the Jasperlode Mine|goal Scout through the Jasperlode Mine|q 76/1
	step //66
		'Hearth to Goldshire|goto Elwynn Forest,42.4,65.8,2|use Hearthstone##6948|noway|c
	step //67
		goto 42.1,65.9
		.talk Marshal Dughan##240
		..turnin The Jasperlode Mine##76
		..turnin Deliver Thomas' Report##39
		..accept Westbrook Garrison Needs Help!##239
		..accept Cloth and Leather Armor##59
	step //68
		goto 74,72.2
		.talk Guard Thomas##261
		..accept Bounty on Murlocs##46
	step //69
		goto 79.5,68.8
		.talk Sara Timberlain##278
		..turnin Cloth and Leather Armor##59
	step //70
		goto 78.8,56.6
		.'kill murlocs
		.get 8 Torn Murloc Fin|q 46/1
	step //71
		goto 74,72.2
		.talk Guard Thomas##261
		..turnin Bounty on Murlocs##46
	step //72
		goto 34.6,84.5
		.talk Ma Stonefield##244
		..turnin Princess Must Die!##88
	step //73
		goto 24.3,74.8
		.talk Deputy Rainer##963
		..turnin Westbrook Garrison Needs Help!##239
		..accept Riverpaw Gnoll Bounty##11
	step //74
		goto 26.8,86.3
		.from Riverpaw Outrunner##478+, Riverpaw Runt##97+
		.get 8 Painted Gnoll Armband|q 11/1
	step //75
		goto 24.3,74.8
		.talk Deputy Rainer##963
		..turnin Riverpaw Gnoll Bounty##11
	step //76
		'Go to Stormwind|goto Stormwind City|noway|c
	step //77
		goto Stormwind City,63.2,74.4
		.talk Morgan Pestle##279
		..turnin Shipment to Stormwind##61
	step //78
		goto 63.8,73.6
		.talk Renato Gallina##1432
		..accept Wine Shop Advert##332
	step //79
		goto 62.3,67.9
		.talk Harlan Bagley##1427
		..accept Harlan Needs a Resupply##333
	step //80
		goto 60.3,76.8
		.talk Suzetta Gallina##1431
		..turnin Wine Shop Advert##332
	step //81
		goto 58.1,67.5
		.talk Rema Schneider##1428
		..turnin Harlan Needs a Resupply##333
		..accept Package for Thurman##334
	step //82
		goto 52.6,83.4
		.talk Thurman Schneider##1429
		..turnin Package for Thurman##334
	step //83
		goto 59.7,33.8
		.talk Grimand Elmore##1416
		..turnin Elmore's Task##1097
		..accept Stormpike's Delivery##353
	step //84
		goto 69,30.9|n
		'Ride the train to Ironforge|goto Ironforge|noway|c
	step //85
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		..fpath Ironforge
	step //86
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
        step //87
		  goto Dun Morogh,29.9,71.9
		.talk Sten Stoutarm##658
		..accept Dwarven Outfitters##179
	step //88
		goto 29.8,73.8
		.from Ragged Young Wolf##705+
		.get 8 Tough Wolf Meat|q 179/1
	step //89
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		.talk Balir Frosthammer##713
		..accept A New Threat##170
	step //90
		goto 29.8,71.3
		.talk Sten Stoutarm##658
		..turnin Dwarven Outfitters##179
		..accept Coldridge Valley Mail Delivery (1)##233
		.talk Balir Frosthammer##713
		..accept A New Threat##170
	step //91
		goto 30.4,74.8
		.kill 6 Rockjaw Trogg|q 170/1
		.kill 6 Burly Rockjaw Trogg|q 170/2
	step //92
		goto 29.8,71.3
		.talk Balir Frosthammer##713
		..turnin A New Threat##170
	step //93
		goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..accept A Refugee's Quandary##3361
	step //94
		goto 28.8,67.2
		.talk Thran Khorman##912
		..turnin Simple Rune##3106
	step //95
		goto 28.4,67.5
		.talk Solm Hargrin##916
		..turnin Encrypted Rune##3109
	step //96
		goto 28.6,66.4
		.talk Branstock Khalder##837
		..turnin Hallowed Rune##3110
	step //97
		goto 28.8,68.3
		.talk Bromos Grummner##926
		..turnin Consecrated Rune##3107
	step //98
		goto 29.2,67.5
		.talk Thorgas Grimson##895
		..turnin Etched Rune##3108
	step //99
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin Coldridge Valley Mail Delivery (1)##233
		..accept Coldridge Valley Mail Delivery (2)##234
		..accept The Boar Hunter##183
	step //100
		goto 22.0,71.3
		.kill 12 Small Crag Boar|q 183/1
	step //101
		goto 22.6,71.4
		.talk Talin Keeneye##714
		..turnin The Boar Hunter##183
	step //102
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin Coldridge Valley Mail Delivery (2)##234
		..accept The Troll Cave##182
	step //103
		goto 26.3,79.3
		.' Click Felix's Bucket of Bolts|tip Outside troll cave entrance on the ground next to the campfire.
		.get Felix's Bucket of Bolts|q 3361/3
		.kill 10 Frostmane Troll Whelp|q 182/1
	step //104
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin The Troll Cave##182
		..accept The Stolen Journal##218
	step //105
		'Go into the cave at 26.8,79.8|goto 26.8,79.8|c
	step //106
		goto 30.5,80.2
		.from Grik'nir the Cold##808
		.get Grelin Whitebeard's Journal|q 218/1
	step //107
		'Go outside to 22.8,80.0|goto 22.8,80.0
		.' Click Felix's Chest|tip In the troll camp on the ground, to the left directly next to the campfire.
		.get Felix's Chest|q 3361/2
	step //108
		goto 20.9,76.1
		.' Click Felix's Box|tip In the troll camp on the ground, to the right of the campfire.
		.get Felix's Box|q 3361/1
	step //109
		goto 25.1,75.7
		.talk Grelin Whitebeard##786
		..turnin The Stolen Journal##218
		..accept Senir's Observations (1)##282
		.talk Nori Pridedrift##12738
		..accept Scalding Mornbrew Delivery##3364
	step //110
		'Go northeast to Anvilmar|goto Dun Morogh,28.8,69.8,0.3|noway|c
	step //111
		goto 28.5,67.7
		.talk Felix Whindlebolt##8416
		..turnin A Refugee's Quandary##3361
	step //112
		goto 28.8,66.4
		.talk Durnan Furcutter##836
		..turnin Scalding Mornbrew Delivery##3364
		..accept Bring Back the Mug##3365
	step //113
		goto 25.0,76.0
		.talk Nori Pridedrift##12738
		..turnin Bring Back the Mug##3365
	step //114
		goto 33.5,71.8
		.talk Mountaineer Thalos##1965
		..turnin Senir's Observations (1)##282
		..accept Senir's Observations (2)##420
		.talk Hands Springsprocket##6782
		..accept Supplies to Tannok##2160
	step //115
		'Go through the tunnel to the other side|goto Dun Morogh,35.6,65.8,0.3|noway|c
	step //116
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Senir's Observations (2)##420
	step //117
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..accept Beer Basted Boar Ribs##384
	step //118
		goto 47.3,52.3
		.talk Tannok Frosthammer##6806
		..turnin Supplies to Tannok##2160
		.talk Innkeeper Belm##1247
		..buy Rhapsody Malt|goal 1 Rhapsody Malt|q 384/2
	step //119
		home Kharanos
	step //120
		goto 50.1,49.4
		.talk Loslor Rudge##1694
		..accept Ammo for Rumbleshot##5541
	step //121
		goto 46.0,51.7
		.talk Tharek Blackstone##1872
		..accept Tools for Steelgrill##400
	step //122
		goto 50.4,49.1
		.talk Beldin Steelgrill##1376
		..turnin Tools for Steelgrill##400
	step //123
		goto 49.6,48.5
		.talk Pilot Stonegear##1377
		..accept The Grizzled Den##313
		.talk Pilot Bellowfiz##1378
		..accept Stocking Jetsteam##317
	step //124
		goto 49.7,50.8
		.from Large Crag Boar##1126+, Crag Boar##1125+, Young Black Bear##1128+, Ice Claw Bear##1196+
		.get 4 Chunk of Boar Meat|q 317/1
		.get 6 Crag Boar Rib|q 384/1
		.get 2 Thick Bear Fur|q 317/2
	step //125
		goto 44.1,57
		.' Click the crate|tip In the small camp next to a tent.
		.get Rumbleshot's Ammo|q 5541/1
	step //126
		goto 42.4,54.1
		.from Young Wendigo##1134+, Wendigo##1135+
		.get 8 Wendigo Mane|q 313/1
	step //127
		goto 40.7,65.1
		.talk Hegnar Rumbleshot##1243
		..turnin Ammo for Rumbleshot##5541
	step //128
		goto 46.8,52.4
		.talk Ragnar Thunderbrew##1267
		..turnin Beer Basted Boar Ribs##384
	step //129
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..accept Frostmane Hold##287
	step //130
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..accept Operation Recombobulation##412
	step //131
		goto 49.6,48.5
		.talk Pilot Stonegear##1377
		..turnin The Grizzled Den##313
		.talk Pilot Bellowfiz##1378
		..turnin Stocking Jetsteam##317
		..accept Evershine##318
	step //132
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin Evershine##318
		..accept A Favor for Evershine##319
		..accept The Perfect Stout##315
		.talk Marleth Barleybrew##1375
		..accept Bitter Rivals##310
	step //133
		goto 27.8,48.3
		.kill 6 Ice Claw Bear|q 319/1
		.kill 8 Elder Crag Boar|q 319/2
		.kill 8 Snow Leopard|q 319/3
	step //134
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin A Favor for Evershine##319
		..accept Return to Bellowfiz##320
	step //135
		goto 37.9,42.1|n
		.' The path up to Shimmerweed starts here|goto Dun Morogh,37.9,42.1,0.3|noway|c
	step //136
		goto 41.2,36.4
		.from Frostmane Seer##1397+
		.' Click the Shimmerweed Baskets|tip The Shimmerweed Baskets look like woven wooden baskets on the ground around this area.
		.get 6 Shimmerweed|q 315/1
	step //137
		goto 49.6,48.5
		.talk Pilot Bellowfiz##1378
		..turnin Return to Bellowfiz##320
	step //138
		goto 47.3,52.3
		.talk Innkeeper Belm##1247
		..buy 1 Thunder Ale|q 308/1
	step //139
		goto 47.6,52.7
		.talk Jarven Thunderbrew##1373
		..'Give him the Thunder Ale
		.' Click the barrel next to him
		..turnin Bitter Rivals##310
		..accept Return to Marleth##311
	step //140
		goto 30.2,45.6
		.talk Rejold Barleybrew##1374
		..turnin The Perfect Stout##315
		..accept Shimmer Stout##413
		.talk Marleth Barleybrew##1375
		..turnin Return to Marleth##311
	step //141
		goto 25.1,51.1
		.kill 5 Frostmane Headhunter|q 287/2
	step //142
		goto 21.2,52.3
		.' Explore Frostmane Hold|goal Fully explore Frostmane Hold|q 287/1|tip By the time you reach this point, you should have seen the "Explore Frostmane Hold" completed message.
	step //143
		goto 25.9,43.2
		.from Leper Gnome##1211+
		.get 8 Restabilization Cog|q 412/1
		.get 8 Gyromechanic Gear|q 412/2
	step //144
		'Hearth to Kharanos|goto Dun Morogh,47.3,52.5,0.5|use Hearthstone##6948|noway|c
	step //145
		goto 45.8,49.4
		.talk Razzle Sprysprocket##1269
		..turnin Operation Recombobulation##412
	step //146
		goto 46.7,53.8
		.talk Senir Whitebeard##1252
		..turnin Frostmane Hold##287
		..accept The Reports##291
	step //147
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..accept Protecting the Herd##314
	step //148
		goto 59.8,50.0|n
		.' The path up to Protecting the Herd starts here|goto Dun Morogh,59.8,50.0,0.5|noway|c
	step //149
		goto 62.6,46.1
		.from Vagash##1388
		.get Fang of Vagash|q 314/1
	step //150
		goto 63.1,49.9
		.talk Rudra Amberstill##1265
		..turnin Protecting the Herd##314
	step //151
		goto 68.7,56
		.talk Senator Mehr Stonehallow##1977
		..accept The Public Servant##433
	step //152
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..accept Those Blasted Troggs!##432
	step //153
		'Go inside the cave to 70.7,56.5|goto 70.7,56.5
		.kill 6 Rockjaw Skullthumper|q 432/1
		.kill 10 Rockjaw Bonesnapper|q 433/1
	step //154
		'Go outside to 68.7,56.0|goto 68.7,56.0
		.talk Senator Mehr Stonehallow##1977
		..turnin The Public Servant##433
	step //155
		goto 69.1,56.3
		.talk Foreman Stonebrow##1254
		..turnin Those Blasted Troggs!##432
	step //156
		goto Dun Morogh,86.3,48.8
		.talk Mountaineer Barleybrew##1959
		..turnin Shimmer Stout##413
		..accept Stout to Kadrell##414
	step //157
		'Go southeast to Loch Modan|goto Loch Modan|noway|c
	step //158
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..accept In Defense of the King's Lands (1)##224
	step //159
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..accept The Trogg Threat##267
	step //160
		goto 31.1,70.7
		.kill 10 Stonesplinter Trogg|q 224/1
		.kill 10 Stonesplinter Scout|q 224/2
		.from Stonesplinter Scout##1162+, Stonesplinter Trogg##1161+
		.get 8 Trogg Stone Tooth|q 267/1
	step //161
		goto 22.1,73.1
		.talk Mountaineer Cobbleflint##1089
		..turnin In Defense of the King's Lands (1)##224
	step //162
		goto Loch Modan,23.5,76.4
		.talk Mountaineer Gravelgaw##1091
		..accept In Defense of the King's Lands (2)##237
	step //163
		goto 23.2,73.7
		.talk Captain Rugelfuss##1092
		..turnin The Trogg Threat##267
	step //164
		goto 36.1,80.4
		.kill 10 Stonesplinter Skullthumper|q 237/1
		.kill 10 Stonesplinter Seer|q 237/2
	step //165
		goto Loch Modan,23.5,76.4
		.talk Mountaineer Gravelgaw##1091
		..turnin In Defense of the King's Lands (2)##237
	step //166
		goto Loch Modan,23.5,74.5
		.talk Mountaineer Wallbang##1090
		..accept In Defense of the King's Lands (3)##263
	step //167
		goto Loch Modan,33.9,51
		.talk Thorgrum Borrelson##1572
		..fpath Thelsamar
	step //168
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Stout to Kadrell##414
		..accept Rat Catching##416
		..accept Mountaineer Stormpike's Task##1339
	step //169
		goto 34.6,44.5
		.talk Magistrate Bluntnose
		..accept Mercenaries##255
	step //170
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..accept Thelsamar Blood Sausages##418
	step //171
		goto 37.3,46.5
		.' Click the Wanted Sign
		..accept WANTED: Chok'sul##256
	step //172
		goto 37.4,38.9
		.from Mountain Boar##1190+, Elder Black Bear##1186+, Forest Lurker##1195+
		.get 3 Boar Intestines|q 418/1
		.get 3 Bear Meat|q 418/2
		.get 3 Spider Ichor|q 418/3
	step //173
		goto 24.5,33.6
		.from Tunnel Rat Scout##1173+, Tunnel Rat Forager##1176+, Tunnel Rat Kobold##1202+, Tunnel Rat Vermin##1172+
		.get 12 Tunnel Rat Ear|q 416/1
	step //174
		goto 24.8,18.4
		.talk Mountaineer Stormpike##1343
		..turnin Stormpike's Delivery##353
	step //175
		goto 55.2,25.2
		.kill 10 Stonesplinter Bonesnapper|q 263/1
		.kill 10 Stonesplinter Shaman|q 263/2
	step //176
		goto 69.0,28.0
		.kill 4 Mo'grosh Orge|q 255/1
		.kill 4 Mo'grosh Enforcer|q 255/3
	step //177
		.' Go inside the cave at 74.5,20.0
		.kill 4 Mo'grosh Brute|q 255/2
	step
		goto 79.7,14.7
		.kill Chok'sul|q 256/1
	step //178
		'Hearth to Thelsamar|goto Loch Modan,35.5,48.3,0.5|use Hearthstone##6948|noway|c
	step //179
		goto 34.8,49.3
		.talk Vidra Hearthstove##1963
		..turnin Thelsamar Blood Sausages##418
	step //180
		goto 34.8,47.1
		.talk Mountaineer Kadrell##1340
		..turnin Rat Catching##416
	step //181
		goto 34.6,44.5
		.talk Magistrate Bluntnose
		..turnin Mercenaries##255
		..turnin WANTED: Chok'sul##256
	step //182
		goto Loch Modan,23.5,74.5
		.talk Mountaineer Wallbang##1090
		..turnin In Defense of the King's Lands (3)##263
	step //183
		goto 33.9,51|n
		.talk Thorgrum Borrelson##1572
		'Fly to Ironforge|goto Ironforge|noway|c
	step //184
		goto Ironforge,39.5,57.5
		.talk Senator Barin Redstone##1274
		..turnin The Reports##291
	step //185
		goto 76.9,51.2|n
		'Ride the train to Stormwind|goto Stormwind City|noway|c
	step //186
		goto 22.6,56.1|n
		'Ride the boat to Auberdine|goto Darkshore,32.4,43.7,1|noway|c
	step //187
		goto Teldrassil,58.6,44.7
		.talk Conservator Ilthalaine##2079
		..accept The Balance of Nature (1)##456
	step //188
		goto 58.5,45.9
		.kill 7 Young Nightsaber|q 456/1
		.kill 4 Young Thistle Boar|q 456/2
	step //189
		goto 58.6,44.7
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (1)##456
		..accept The Balance of Nature (2)##457
	step //190
		goto 59.9,42.5
		.talk Melithar Staghelm##2077
		..accept The Woodland Protector (1)##458
	step //191
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..accept A Good Friend##4495
	step //192
		goto 57.6,45.3
		.talk Tarindrella##1992
		..turnin The Woodland Protector (1)##458
		..accept The Woodland Protector (2)##459
	step //193
		goto 56.5,45.5
		.from Grell##1988+, Grellkin##1989+
		.get 8 Fel Moss|q 459/1
	step //194
		goto 57.6,45.3
		.talk Tarindrella##1992
		..turnin The Woodland Protector (2)##459
	step //195
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..accept Webwood Venom##916
	step //196
		goto 58.8,36.8
		.kill 7 Mangy Nightsaber|q 457/1
		.kill 7 Thistle Boar|q 457/2
	step //197
		goto 58.3,32.9
		.from Webwood Spider##1986+
		.get 10 Webwood Venom Sac|q 916/1
	step //198
		goto 54.6,33
		.talk Iverron##8584
		..turnin A Good Friend##4495
		..accept A Friend in Need##3519
	step //199
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..turnin Webwood Venom##916
		..accept Webwood Egg##917
	step //200
		goto 58.7,44.3
		.talk Conservator Ilthalaine##2079
		..turnin The Balance of Nature (2)##457
	step //201
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..turnin A Friend in Need##3519
		..accept Iverron's Antidote (1)##3521
	step //202
		goto 55.2,39.6
		.from Grell##1988+, Grellkin##1989+
		.get 7 Hyacinth Mushroom|q 3521/1
	step //203
		goto 57.7,38.5
		.' Click Moonpetal Lilies|tip The Moonpetal Lillies look like tall flower with orange petals around the pond here.
		.get 4 Moonpetal Lily|q 3521/2
	step //204
		goto 56.7,32.1
		.from Webwood Spider##1986+
		.get Webwood Ichor|q 3521/3
	step //205
		'Go into the cave at 56.8,31.7|goto 56.8,31.7|n
		.' Follow the path in the middle, then go left
		.' Go up to the ledge above|goto Teldrassil,55.8,25.5,0.5|c
	step //206
		goto 56.7,26.4
		.' Click a Webwood Egg
		.get Webwood Egg|q 917/1
	step //207
		'Leave the cave|goto Teldrassil,56.8,32.0,0.5|noway|c
	step //208
		goto 57.8,41.7
		.talk Gilshalan Windwalker##2082
		..turnin Webwood Egg##917
		..accept Tenaron's Summons##920
	step //209
		'Follow the ramp to the top of the tree|goto Teldrassil,59.4,39.0,0.5|noway|c
	step //210
		goto 59.1,39.4
		.talk Tenaron Stormgrip##3514
		..turnin Tenaron's Summons##920
		..accept Crown of the Earth (1)##921
	step //211
		goto 60.9,42
		.talk Dirania Silvershine##8583
		..turnin Iverron's Antidote (1)##3521
		..accept Iverron's Antidote (2)##3522
	step //212
		goto 54.6,33
		.talk Iverron##8584
		..turnin Iverron's Antidote (2)##3522
	step //213
		goto 59.9,33.1
		.' Use your Crystal Phial in the moonwell water|use Crystal Phial##5185
		.get Filled Crystal Phial|q 921/1
	step //214
		goto 59.1,39.4
		.talk Tenaron Stormgrip##3514
		..'Go to the top of the big tree
		..turnin Crown of the Earth (1)##921
		..accept Crown of the Earth (2)##928
	step //215
		goto 61.2,47.6
		.talk Porthannius##6780
		..accept Dolanaar Delivery##2159
	step //216
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..accept Zenn's Bidding##488
	step //217
		goto 63.8,54.2
		.from Strigid Owl##1995+
		.get 3 Strigid Owl Feather|q 488/2
	step //218
		goto 60.6,58.2
		.from Webwood Lurker##1998+
		.get 3 Webwood Spider Silk|q 488/3
		.from Nightsaber##2042+
		.get 3 Nightsaber Fang|q 488/1
	step //219
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..turnin Zenn's Bidding##488
	step //220
		goto 56.1,57.7
		.talk Syral Bladeleaf##2083
		..accept Seek Redemption!##489
		..accept Denalan's Earth##997
	step //221
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..accept A Troubling Breeze##475
	step //222
		'Go to the top of the tower|goto Teldrassil,55.0,57.2,0.5|noway|c
	step //223
		goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..accept The Emerald Dreamcatcher##2438
		..accept Twisted Hatred##932
	step //224
		goto 55.6,59.8
		.talk Innkeeper Keldamyr##6736
		..turnin Dolanaar Delivery##2159
	step //225
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (2)##928
		..accept Crown of the Earth (3)##929
	step //226
		goto 63.3,58.1
		.' Use your Jade Phial in the moonwell water|use Jade Phial##5619
		.get Filled Jade Phial|q 929/1
	step //227
		goto 66.3,58.5
		.talk Gaerolas Talvethren##2107
		..turnin A Troubling Breeze##475
		..accept Gnarlpine Corruption##476
	step //228
		goto 68,59.6
		.' Click Tallonkai's Dresser|tip To the right in the small house.
		.get Emerald Dreamcatcher|q 2438/1
	step //229
		goto 63.6,62.3
		.' Click Fel Cones|tip They are big, brown, green smoking pine cones at the base of trees.
		.get 3 Fel Cone|q 489/1
	step //230
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin Gnarlpine Corruption##476
		..accept The Relics of Wakening##483
	step //231
		'Go to the top of the tower|goto Teldrassil,55.0,57.2,0.5|noway|c
	step //232
		goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin The Emerald Dreamcatcher##2438
		..accept Ferocitas the Dream Eater##2459
	step //233
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (3)##929
		..accept Crown of the Earth (4)##933
	step //234
		goto 60.4,56.3
		.talk Zenn Foulhoof##2150
		..turnin Seek Redemption!##489
	step //235
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin Denalan's Earth##997
		..accept Timberling Seeds##918
		..accept Timberling Sprouts##919
	step //236
		goto 61.2,66.8
		.from Timberling##2022+
		.get 8 Timberling Seed|q 918/1
		.' Click Timberling Sprouts|tip They are brown and green bulbs on the ground.
		.get 12 Timberling Sprout|q 919/1
	step //237
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin Timberling Seeds##918
		..accept Rellian Greenspyre##922
		..turnin Timberling Sprouts##919
	step //238
		goto 68.3,53.7
		.kill 7 Gnarlpine Mystic|q 2459/1
	step //239
		goto 69.4,53.3
		.from Ferocitas the Dream Eater##7234
		.get Gnarlpine Necklace|n
		.' Click the Gnarlpine Necklace|use Gnarlpine Necklace##8049
		.get Tallonkai's Jewel|q 2459/2
	step //240
		'Go to the top of the tower to 55.6,56.9|goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin Ferocitas the Dream Eater##2459
	step //241
		goto 52.4,56.5
		.talk Moon Priestess Amara##2151
		..accept The Road to Darnassus##487
	step //242
		goto 46.7,53.5
		.kill 6 Gnarlpine Ambusher|q 487/1
	step //243
		'Go southwest into the cave at 44.4,57.8|goto Teldrassil,44.4,57.8,0.5|c
	step //244
		goto 43.7,61.2
		.' Click the Chest of the Black Feather|tip On the top floor of the cave, across the bridge to the right, in the small room, on the right on the ground.
		.get Black Feather Quill|q 483/2
	step //245
		goto 44.4,60.7
		.' Click the Chest of Nesting|tip On the top floor of the cave, across the middle bridge, on the ground to the right in the small room.
		.get Rune of Nesting|q 483/4
	step //246
		'Go downstairs to 44.9,61.6|goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..accept The Sleeping Druid##2541
	step //247
		'Go to the next room over to 45.6,58.7|goto 45.6,58.7
		.from Gnarlpine Shaman##2009+
		.get Shaman Voodoo Charm|q 2541/1
	step //248
		goto 45.7,57.4
		.' Click the Chest of the Raven Claw|tip At the bottom of the cave, up across the bridge, on a ledge.
		.get Raven Claw Talisman|q 483/1
	step //249
		goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..turnin The Sleeping Druid##2541
		..accept Druid of the Claw##2561
	step //250
		goto 45.6,58.7
		.kill Rageclaw##7318|n
		.' Use the Voodoo Charm on his corpse|use Voodoo Charm##8149
		.' Release Oben Rageclaw's spirit|goal Release Oben Rageclaw's spirit|q 2561/1
	step //251
		'Go through the tunnel back to where Oben Rageclaw is to 44.7,62.5|goto 44.7,62.5
		.' Click the Chest of the Sky|tip Down the path at the bottom of the cave, next to Greenpaw.
		.get Sapphire of Sky|q 483/3
	step //252
		'Go back up the path to 44.9,61.6|goto 44.9,61.6
		.talk Oben Rageclaw##7317
		..turnin Druid of the Claw##2561
	step //253
		'Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c
	step //254
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin The Relics of Wakening##483
		..accept Ursal the Mauler##486
	step //255
		'Go north to Fel Rock|goto Teldrassil,54.7,52.8,0.5|c
	step //256
		'Go inside the cave to 52.8,50.2|goto 52.8,50.2
		.from Lord Melenas##2038
		.get Melenas' Head|q 932/1
	step //257
		'Go outside and go to the top of the tower to 55.6,56.9|goto 55.6,56.9
		.talk Tallonkai Swiftroot##3567
		..turnin Twisted Hatred##932
	step //258
		goto 42.4,67.1
		.' Use your Tourmaline Phial in the moonwell water|use Tourmaline Phial##5621
		.get Filled Tourmaline Phial|q 933/1
	step //259
		goto 42.6,76.1
		.' Click the Strange Fruited Plant|tip It looks like a big pink glowing plant.
		..accept The Glowing Fruit##930
	step //260
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin The Glowing Fruit##930
	step //261
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (4)##933
		..accept Crown of the Earth (5)##7383
	step //262
		goto 52.4,56.5
		.talk Moon Priestess Amara##2151
		..turnin The Road to Darnassus##487
	step //263
		goto 38.3,34.4
		.talk Sentinel Arynia Cloudsbreak##3519
		..accept The Enchanted Glade##937
	step //264
		goto 38.4,34.1
		.' Click the Amethyst Phial in your bags|use Amethyst Phial##18152
		.get Filled Amethyst Phial|q 7383/1
	step //265
		goto 37.4,37.3
		.from Bloodfeather Rogue##2017+, Bloodfeather Sorceress##2018+, Bloodfeather Harpy##2015+
		.get 6 Bloodfeather Belt|q 937/1
	step //266
		goto 38.3,34.4
		.talk Sentinel Arynia Cloudsbreak##3519
		..turnin The Enchanted Glade##937
	step //267
		goto 34.7,29
		.' Click the Strange Fronded Plant|tip It's a big glowing pink plant up on a hill.
		..accept The Shimmering Frond##931
	step //268
		'Hearth to Dolanaar|goto Teldrassil,55.7,59.8,1|use Hearthstone##6948|noway|c
	step //269
		goto 56.1,61.7
		.talk Corithras Moonrage##3515
		..turnin Crown of the Earth (5)##7383
		..accept Crown of the Earth (6)##935
	step //270
		goto Teldrassil,39.2,80.1
		.kill Ursal the Mauler##2039|q 486/1
	step //271
		goto 60.9,68.5
		.talk Denalan##2080
		..turnin The Shimmering Frond##931
	step //272
		goto 56,57.3
		.talk Athridas Bearmantle##2078
		..turnin Ursal the Mauler##486
	step //273
		'Go west to Darnassus|goto Darnassus|noway|c
	step //274
		goto 38.2,21.6
		.talk Rellian Greenspyre##3517
		..turnin Rellian Greenspyre##922
	step //275
		goto 35.1,9.1
		.talk Arch Druid Fandral Staghelm##3516
		..turnin Crown of the Earth (6)##935
	step //276
		.' Go into the pink portal to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //277
		goto 58.4,94
		.talk Vesprystus##3838
		..accept Flight to Auberdine##6342
	step //278
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.5|noway|c
	step //279
		goto Darkshore,36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //280
		goto 37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //281
		home Auberdine
	step //282
		goto Darkshore,37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..accept The Red Crystal##4811
	step //283
		goto 38.1,41.2
		.talk Gorbold Steelhand##6301
		..accept Deep Ocean, Vast Sea##982
	step //284
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //285
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
		..accept Tools of the Highborne##958
	step //286
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //287
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //288
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //289
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //290
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //291
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //292
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //293
		goto 47.4,48.7
		.' Walk up next to the big red crystal at the top of this hill
		.' Locate the large, red crystal on Darkshore's eastern mountain range|goal Locate the large, red crystal on Darkshore's eastern mountain range|q 4811/1
	step //294
		goto 42.2,58.3
		.'Kill Writhing and Cursed Highbornes
		.get 7 Highborne Relics|q 958/1
	step //295
		goto 37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..turnin The Red Crystal##4811
		..accept As Water Cascades##4812
	step //296
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //297
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //298
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
		..turnin Tools of the Highborne##958
		..accept The Cliffspring River##4762
	step //299
		goto 37.8,44.1
		.' Use your Empty Water Tube in your bags in the moonwell water|use Empty Water Tube##14338
		.get Moonwell Water Tube|q 4812/1
	step //300
		goto 47.3,48.7
		.' Click the Mysterious Red Crystal|tip It's a big red crystal sitting at the top of this hill.
		..turnin As Water Cascades##4812
		..accept The Fragments Within##4813
	step //301
		goto 37.7,43.4
		.talk Sentinel Glynda Nal'Shea##2930
		..turnin The Fragments Within##4813
	step //302
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //303
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //304
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //305
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //306
		'Go underwater to 39.6,27.5|goto 39.6,27.5
		.' Click the Mist Veil's Lockbox|tip It's a small grey chest at the very bottom of the ship.
		.get Mist Veil's Lockbox|q 982/2
	step //307
		'Go underwater to 38.2,28.8|goto 38.2,28.8
		.' Click the Silver Dawning's Lockbox|tip It's a small grey chest at the very bottom of this ship.
		.get Silver Dawning's Lockbox|q 982/1
	step //308
		goto 38.1,41.2
		.talk Gorbold Steelhand##6301
		..turnin Deep Ocean, Vast Sea##982
	step //309
		'Jump down into the water below the bridge to 50.9,25.7|goto 50.9,25.7
		.' Use your Empty Sampling Tube at the bottom of this waterfall|use Empty Sampling Tube##12350
		.get Cliffspring River Sample|q 4762/1

	step //310
		'Hearth to Auberdine|goto Darkshore,37.0,44.1,0.5|use Hearthstone##6948|noway|c
		step //311
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		..fpath Auberdine
	step //312
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..accept Washed Ashore (1)##3524
	step //313
		goto 37,44.1
		.talk Wizbang Cranktoggle##3666
		..accept Buzzbox 827##983
	step //314
		home Auberdine
	step //315
		goto 39.4,43.5
		.talk Terenthis##3693
		..accept How Big a Threat? (1)##984
	step //316
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..accept Bashal'Aran (1)##954
	step //317
		goto 36.1,47.3
		.from Pygmy Tide Crawler##2231+, Young Reef Crawler##2234+
		.get 6 Crawler Leg|q 983/1
	step //318
		goto 36.4,50.8
		.' Click the Beached Sea Creature|tip It looks like a big green rotting dinosaur laying on the beach.
		.get Sea Creature Bones|q 3524/1
	step //319
		goto 36.7,46.3
		.' Click Buzzbox 827|tip It looks like a mechanical box with levers on it sitting in the grass next to a big wooden platform.
		..turnin Buzzbox 827##983
		..accept Buzzbox 411##1001
	step //320
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (1)##3524
		..accept Washed Ashore (2)##4681
	step //321
		goto 32.7,47.7
		.from Darkshore Thresher##2185+
		.get 3 Thresher Eye|q 1001/1
	step //322
		goto 31.9,46.3
		.' Click the Skeletal Sea Turtle|tip It looks like a big turtle skull underwater here.
		.get Sea Turtle Remains|q 4681/1
	step //323
		goto 39.6,52.9
		.' Find a corrupt furbolg camp at this spot|goal Find a corrupt furbolg camp|q 984/1
	step //324
		goto 39.4,43.5
		.talk Terenthis##3693
		..turnin How Big a Threat? (1)##984
		..accept Thundris Windweaver##4761
	step //325
		goto 36.6,45.6
		.talk Gwennyth Bly'Leggonde##10219
		..turnin Washed Ashore (2)##4681
	step //326
		goto 37.4,40.1
		.talk Thundris Windweaver##3649
		..turnin Thundris Windweaver##4761
	step //327
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (1)##954
		..accept Bashal'Aran (2)##955
	step //328
		goto 44.6,36.9
		.from Wild Grell##2190+, Vile Sprite##2189+
		.get 8 Grell Earring|q 955/1
	step //329
		goto 44.2,36.3
		.talk Asterion##3650
		..turnin Bashal'Aran (2)##955
	step //330
		goto 42,28.6
		.' Click the Buzzbox 411|tip It's a metal box with levers on it, sitting on the beach.
		..turnin Buzzbox 411##1001
	step //331
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
	step //332
		goto 80.4,45.9
		.talk Proenitus##16477
		..accept Replenishing the Healing Crystals##9369
	step //333
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..accept Volatile Mutations##10302
	step //334
		goto 78.6,45.4
		.kill 8 Volatile Mutation|q 10302/1
		.from Vale Moth##16520+
		.get 8 Vial of Moth Blood|q 9280/1
	step //335
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin Volatile Mutations##10302
		..accept What Must Be Done...##9293
		.talk Apprentice Vishael##20233
		..accept Botanical Legwork##9799
	step //336
		goto 80.4,45.9
		.talk Proenitus##16477
		..turnin Replenishing the Healing Crystals##9369
		..accept Urgent Delivery!##9409
	step //337
		goto 80.1,48.8
		.talk Zalduun##16502
		..turnin Urgent Delivery!##9409
	step //338
		goto 79.5,51.4
		.talk Technician Zhanaa##17071
		..accept Spare Parts##9305
		.talk Vindicator Aldar##16535
		..accept Inoculation##9303
	step //339
		goto 80.3,42.4
		.' Use your racial ability, Gift of the Naaru, on a Draenei Survivor|cast Gift of the Naaru|tip They are Draeneis that are laying on the ground in this area.  I found a Dranei Survivor here, but you may have to search around the area.
		.' Save a Draenei Survivor|goal Draenei Survivors Saved|q 9283/1
	step //340
		goto 80.1,48.8
		.talk Zalduun##16502
		..turnin Rescue the Survivors!##9283
	step //341
		goto 74.9,50.4
		.from Mutated Root Lasher##16517+
		.get 10 Lasher Sample|q 9293/1
		.' Click the Corrupted Flowers|tip The Corrupted Flowers are tall red flowers around this area.
		.get 3 Corrupted Flower|q 9799/1
	step //342
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin What Must Be Done...##9293
		..accept Healing the Lake##9294
		.talk Apprentice Vishael##20233
		..turnin Botanical Legwork##9799
	step //343
		goto 77.3,58.7
		.' Click the Irradiated Power Crystal|tip It's a huge purple crystal sitting in the lake.
		.' Disperse the Neutralizing Agent|goal Disperse the Neutralizing Agent|q 9294/1
	step //344
		goto 78.4,60.4
		.' Use your Inoculating Crystal on Nestlewood Owlkins|use Inoculating Crystal##22962
		.' Inoculate 6 Nestlewood Owlkins|goal 6 Nestlewood Owlkin inoculated|q 9303/1
	step //345
		goto 84.7,65.6
		.' Go through the tunnel into the small clearing
		.' Click the Emitter Spare Parts|tip They look like purple crystal guns sitting on the ground.
		.get 4 Emitter Spare Part|q 9305/1
	step //346
		'Hearth to Ammen Vale|goto Azuremyst Isle,84.3,43.0,0.5|use Hearthstone##6948|noway|c
	step //347
		goto 79.1,46.5
		.talk Botanist Taerix##16514
		..turnin Healing the Lake##9294
	step //348
		goto 79.5,51.4
		.talk Technician Zhanaa##17071
		..turnin Spare Parts##9305
		.talk Vindicator Aldar##16535
		..turnin Inoculation##9303
		..accept The Missing Scout##9309
	step //349
		goto 72,60.8
		.talk Tolaan##16546
		..turnin The Missing Scout##9309
		..accept The Blood Elves##10303
	step //350
		goto 71.3,60.7
		.kill 10 Blood Elf Scout|q 10303/1
	step //351
		goto 72,60.8
		.talk Tolaan##16546
		..turnin The Blood Elves##10303
		..accept Blood Elf Spy##9311
	step //352
		goto 69.3,65.7
		.kill Surveyor Candress##16522|q 9311/1
		.'Get the Blood Elf Plans
		.' Click the Blood Elf Plans|use Blood Elf Plans##24414
		..accept Blood Elf Plans##9798
	step //353
		goto 79.5,51.4
		.talk Vindicator Aldar##16535
		..turnin Blood Elf Spy##9311
		..turnin Blood Elf Plans##9798
		..accept The Emitter##9312
		.talk Technician Zhanaa##17071
		..turnin The Emitter##9312
		..accept Travel to Azure Watch##9313
	step //354
		'Go west through the mountains|goto Azuremyst Isle,67.6,53.7,0.5|noway|c
	step //355
		goto 64.5,54
		.talk Aeun##16554
		..accept Word from Azure Watch##9314
	step //356
		goto 61.1,54.2
		.talk Diktynna##17101
		..accept Red Snapper - Very Tasty!##9452
	step //357
		goto 61.9,51.6
		.' Use your Draenei Fishing Net next to the Schools of Red Snapper|use Draenei Fishing Net##23654|tip They look like little round schools of fish in the water.
		.get 10 Red Snapper|q 9452/1
	step //358
		goto 61.1,54.2
		.talk Diktynna##17101
		..turnin Red Snapper - Very Tasty!##9452
		..accept Find Acteon!##9453
	step //359
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin Find Acteon!##9453
		..accept The Great Moongraze Hunt (1)##9454
	step //360
		goto 48.4,51.8
		.talk Anchorite Fateema##17214
		..accept Medicinal Purpose##9463
	step //361
		goto 48.7,50.3
		.talk Technician Dyvuun##16551
		..turnin Travel to Azure Watch##9313
	step //362
		goto 48.3,49.2
		.talk Caregiver Chellan##16553
		..turnin Word from Azure Watch##9314
	step //363
		home Azure Watch
	step //364
		goto 50.3,56.6
		.from Moongraze Stag##17200+
		.get 6 Moongraze Stag Tenderloin|q 9454/1
		.from Root Trapper##17196+
		.get 8 Root Trapper Vine|q 9463/1
	step //365
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..accept A Small Start##9506
	step //366
		goto 46.7,70.5
		.talk "Cookie" McWeaksauce##17246
		..accept Cookie's Jumbo Gumbo##9512
	step //367
		goto 47.6,73
		.from Skittering Crawler##17216+
		.get 6 Skittering Crawler Meat|q 9512/1
	step //368
		goto 46.7,70.5
		.talk "Cookie" McWeaksauce##17246
		..turnin Cookie's Jumbo Gumbo##9512
	step //369
		goto 47,70.2
		.talk Priestess Kyleen Il'dinare##17241
		..accept Reclaiming the Ruins##9513
	step //370
		goto 47.2,70
		.talk Archaeologist Adamant Ironheart##17242
		..accept Precious and Fragile Things Need Special Handling##9523
	step //371
		goto 58.6,66.4
		.' Click the Nautical Map sitting on a box under a green canopy
		.get Nautical Map##23739|q 9506/2
	step //372
		goto 59.6,67.6
		.' Click the Nautical Compass under the blue canopy with a green stripe on it
		.get Nautical Compass##23738|q 9506/1
	step //373
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin A Small Start##9506
		..accept I've Got a Plant##9530
	step //374
		goto 45.9,65.7
		.' Click a Hollowed Out Tree|tip They look like tall, skinny tree stumps around this area.
		.get Hollowed Out Tree|q 9530/1
		.' Click the small piles of purple leaves
		.get 5 Pile of Leaves|q 9530/2
	step //375
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin I've Got a Plant##9530
		..accept Tree's Company##9531
	step //376
		goto 36.1,77
		.' Click the white glowing orbs
		.get 8 Ancient Relic|q 9523/1
		.kill 5 Wrathscale Myrmidon|q 9513/1
		.kill 5 Wrathscale Naga|q 9513/2
		.kill 5 Wrathscale Siren|q 9513/3
		.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
		.' Get a Rune Covered Tablet
		.' Click the Rune Covered Tablet|use Rune Covered Tablet##23759
		..accept Rune Covered Tablet##9514
	step //377
		goto 18.5,84.3
		.' Use your Tree Disguise Kit next to the Naga Flag on the beach|use Tree Disguise Kit##23792
		.' Watch the conversation
		.' Uncover the Traitor|goal The Traitor Uncovered|q 9531/1
	step //378
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //379
		goto 48.4,51.8
		.talk Anchorite Fateema##17214
		..turnin Medicinal Purpose##9463
		.talk Daedal##17215
		..accept An Alternative Alternative##9473
	step //380
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin The Great Moongraze Hunt (1)##9454
		..accept The Great Moongraze Hunt (2)##10324
	step //381
		goto 50.6,46.2
		.from Moongraze Buck##17201+
		.get 6 Moongraze Buck Hide|q 10324/1
		.from Infected Nightstalker Runt##17202+
		.' Get a Faintly Glowing Crystal
		.' Click the Faintly Glowing Crystal|use Faintly Glowing Crystal##23678
		..accept Strange Findings##9455
	step //382
		goto 50.4,37.1
		.' Click the Azure Snapdragons|tip They are tall flowers with big bulbs that puff smoke at the base of trees.
		.get 5 Azure Snapdragon Bulb|q 9473/1
	step //383
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Strange Findings##9455
		..accept Nightstalker Clean Up, Isle 2...##9456
	step //384
		goto 48.4,51.8
		.talk Daedal##17215
		..turnin An Alternative Alternative##9473
	step //385
		goto 49,51.1
		.talk Dulvi##17488
		..accept The Missing Fisherman##10428
	step //386
		goto 49.8,51.9
		.talk Acteon##17110
		..turnin The Great Moongraze Hunt (2)##10324
	step //387
		goto 45.7,43.9
		.kill 8 Infected Nightstalker Runt|q 9456/1
	step //388
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Nightstalker Clean Up, Isle 2...##9456
	step //389
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Tree's Company##9531
		..accept Show Gnomercy##9537
		.talk Priestess Kyleen Il'dinare##17241
		..turnin Reclaiming the Ruins##9513
		..turnin Rune Covered Tablet##9514
		..accept Warlord Sriss'tiz##9515
	step //390
		goto 47.2,70
		.talk Archaeologist Adamant Ironheart##17242
		..turnin Precious and Fragile Things Need Special Handling##9523
	step //391
		goto 48.2,72.5
		.from Engineer "Spark" Overgrind##17243
		.get Traitor's Communication|q 9537/1
	step //392
		goto 47,70.2
		.talk Admiral Odesyus##17240
		..turnin Show Gnomercy##9537
		..accept Deliver Them From Evil...##9602
	step //393
		goto 47.1,50.6
		.talk Exarch Menelaous##17116
		..turnin Deliver Them From Evil...##9602
	step //394
		goto 49.40,51.0
		.talk Cryptographer Aurren##17232
		..accept Learning the Language##9538
		.' Click the Stillpine Furbolg Language Primer in your bags|use Stillpine Furbolg Language Primer##23818
		.' Click the Totem of Akida next to Cryptographer Aurren|tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
		..turnin Learning the Language##9538
		..accept Totem of Coo##9539
	step //395
		'Follow the ghost furbolg as he runs up the hill northeast to 55.2,41.6|goto 55.2,41.6
		.' Click the Totem of Coo
		..turnin Totem of Coo##9539
		..accept Totem of Tikti##9540
	step //396
		'Follow the ghost furbolg to the edge of the cliff
		.' He will give you wings
		.' Jump off the cliff and glide to the ground to 64.5,39.8|goto 64.5,39.8|n
		.' Click the Totem of Tikti
		..turnin Totem of Tikti##9540
		..accept Totem of Yor##9541
	step //397
		'Follow the ghost furbolg to the river
		.' He will give you a swim speed buff
		.' Swim south to 63,67.9|goto 63,67.9|n
		.' Click the Totem of Yor underwater
		..turnin Totem of Yor##9541
		..accept Totem of Vark##9542
	step //398
		'Follow the ghost furbolg out of the water
		.' He will turn you into a ghost panther
		.' Follow him as he runs northwest to 28.1,62.4|goto 28.1,62.4|n
		.' Click the Totem of Vark
		..turnin Totem of Vark##9542
		..accept The Prophecy of Akida##9544
	step //399
		goto 28.5,66.4
		.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
		.collect 8 Bristlelimb Key##23801|n
		.' Click the yellow cages
		.' Free 8 Stillpine Captives|goal 8 Stillpine Captive Freed|q 9544/1
	step //400
		goto 27,76.7|n
		.' The path down to 'Warlord Sriss'tiz' starts here
		.' Go inside the cave|goto Azuremyst Isle,27.0,76.7,0.3|noway|c
	step //401
		'Follow the path to the bottom of the cave to 25.2,74.2|goto 25.2,74.2
		.kill Warlord Sriss'tiz|q 9515/1
	step //402
		'Leave the cave|goto Azuremyst Isle,27.0,76.7,0.3|noway|c
	step //403
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin The Missing Fisherman##10428
		..accept All That Remains##9527
	step //404
		goto 14.8,92
		.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
		.get Remains of Cowlen's Family|q 9527/1
	step //405
		goto 16.6,94.5
		.talk Cowlen##17311
		..turnin All That Remains##9527
	step //406
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //407
		goto 49.41,51.0
		.talk Arugoo the Stillpine##17114
		..turnin The Prophecy of Akida##9544
		..accept Stillpine Hold##9559
	step //408
		goto 47,70.2
		.talk Priestess Kyleen Il'dinare##17241
		..turnin Warlord Sriss'tiz##9515
	step //409
		goto Azuremyst Isle,47.1,50.6
		.talk Exarch Menelaous##17116
		..accept Coming of Age##9623
	step //410
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Stillpine Hold##9559
	step //411
		goto 44.7,23.6
		.talk Gurf##17441
		..accept Murlocs... Why Here? Why Now?##9562
	step //412
		goto 33.8,25.7
		.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
		.' Click the Stillpine Grain bags near the murloc huts
		.get 5 Stillpine Grain|q 9562/1
		.from Murgurgala##17475
		.' Get Gurf's Dignity|n
		.' Click Gurf's Dignity|use Gurf's Dignity##23850
		..accept Gurf's Dignity##9564
	step //413
		goto 44.7,23.6
		.talk Gurf##17441
		..turnin Murlocs... Why Here? Why Now?##9562
		..turnin Gurf's Dignity##9564
	step //414
		goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..accept Search Stillpine Hold##9565
	step //415
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..accept Chieftain Oomooroo##9573
	step //416
		'Go inside the big cave to 50.5,11.5|goto 50.5,11.5
		.' Click the Blood Crystal|tip It's a huge red crystal on a little dirt island in the water.
		..turnin Search Stillpine Hold##9565
		..accept Blood Crystals##9566
	step //417
		'Go upstairs in the cave to 47.4,16.0|goto 47.4,16.0
		.kill 9 Crazed Wildkin|q 9573/2
	step //418
		goto 47.4,14.1
		.kill Chieftain Oomooroo##17448|q 9573/1
	step //419
		'Go outside the cave to 46.7,20.6|goto 46.7,20.6
		.talk High Chief Stillpine##17440
		..turnin Blood Crystals##9566
	step //420
		goto 46.9,21.2
		.talk Stillpine the Younger##17445
		..turnin Chieftain Oomooroo##9573
	step //421
		goto 47,22.3
		.talk Kurz the Revelator##17443
		..accept The Kurken is Lurkin'##9570
	step //422
		'Go inside the big cave to 49.9,13.0|goto 49.9,13.0
		.from The Kurken##17447
		.get The Kurken's Hide|q 9570/1
	step //423
		'Go outside the cave to 47.0,22.3|goto 47.0,22.3
		.talk Kurz the Revelator##17443
		..turnin The Kurken is Lurkin'##9570
		..accept The Kurken's Hide##9571
	step //424
		goto 44.8,23.9
		.talk Moordo##17442
		..turnin The Kurken's Hide##9571
	step //425
		'Hearth to Azure Watch|goto Azuremyst Isle,49.2,50.8,2|use Hearthstone##6948|noway|c
	step //426
		goto 35.1,43.4
		.talk Torallius the Pack Handler##17584
		..turnin Coming of Age##9623
	step //427
		.' This is the end of the Home Cities Reputation Section. This section, in combination with the Argent Tournament section, should get you to Exalted with all five home cities.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Human Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
	description You cannot complete this section if you are a Human.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Human.
	step //2
		goto Icecrown,76.6,19.1
		.talk Marshal Jacob Alerius##33225
		..accept Valiant Of Stormwind##13593
		..turnin Valiant Of Stormwind##13593
		..accept The Valiant's Charge##13718
	step //3
		goto Icecrown,76.6,19.1
		.talk Marshal Jacob Alerius##33225
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13603 |daily |or
		..accept A Worthy Weapon##13600 |daily |or
		..accept The Edge Of Winter##13616 |daily |or
	step //4
		goto 76.5,19.1
		.talk Sir Marcus Barlowe##33222
		..accept A Valiant's Field Training##13592 |daily
	step //5
		goto 76.6,19.2
		.talk Captain Joseph Holley##33223
		..accept The Grand Melee##13665 |daily
		..accept At The Enemy's Gates##13847 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13603/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13600
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13600/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13616
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13616/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13592/1
	step //15
		goto 76.1,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
	step //16
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13665/1
	step //17
		goto 76.6,19.1
		.talk Marshal Jacob Alerius##33225
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13603
		..turnin A Worthy Weapon##13600
		..turnin The Edge Of Winter##13616
	step //18
		goto 76.5,19.1
		.talk Sir Marcus Barlowe##33222
		..turnin A Valiant's Field Training##13592
	step //19
		goto 76.6,19.2
		.talk Captain Joseph Holley##33223
		..turnin The Grand Melee##13665
		..turnin At The Enemy's Gates##13847
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.6,19.2
		.talk Marshal Jacob Alerius##33225
		..turnin The Valiant's Charge##13718
		..accept The Valiant's Challenge##13699
	step //22
		goto 76.0,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13699
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13699/1
	step //24
		goto 76.6,19.2
		.talk Marshal Jacob Alerius##33225
		..turnin The Valiant's Challenge##13699
	step //25
		'Congratulations, you are now a Champion of Stormwind! |tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Night Elf Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
	description You cannot complete this section if you are a Night Elf.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Night Elf.
	step //2
		goto Icecrown,76.3,19.0
		.talk Jaelyne Evensong##33592
		..accept Valiant Of Darnassus##13706
		..turnin Valiant Of Darnassus##13706
		..accept The Valiant's Charge##13717
	step //3
		goto Icecrown,76.3,19.0
		.talk Jaelyne Evensong##33592
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13757 |daily |or
		..accept A Worthy Weapon##13758 |daily |or
		..accept The Edge Of Winter##13759 |daily |or
	step //4
		goto 76.3,19.0
		.talk Illestria Bladesinger##33652
		..accept A Valiant's Field Training##13760 |daily
	step //5
		goto 76.4,19.0
		.talk Airae Starseeker##33654
		..accept The Grand Melee##13761 |daily
		..accept At The Enemy's Gates##13855 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13757/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13758
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13758/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13759
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13759/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13760/1
	step //15
		goto 76.0,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
	step //16
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13761/1
	step //17
		goto 76.3,19.0
		.talk Jaelyne Evensong##33592
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13757
		..turnin A Worthy Weapon##13758
		..turnin The Edge Of Winter##13759
	step //18
		goto 76.3,19.0
		.talk Illestria Bladesinger##33652
		..turnin A Valiant's Field Training##13760
	step //19
		goto 76.4,19.0
		.talk Airae Starseeker##33654
		..turnin The Grand Melee##13761
		..turnin At The Enemy's Gates##13855
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Charge##13717
		..accept The Valiant's Challenge##13725
	step //22
		goto 76.0,20.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13725/1
	step //24
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Challenge##13725
	step //25
		'Congratulations, you are now a Champion of Darnassus! |tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Dwarf Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
	description You cannot complete this section if you are a Dwarf.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Dwarf.
	step //2
		goto Icecrown,76.3,19.0
		.talk Lana Stouthammer##33312
		..accept Valiant Of Ironforge##13703
		..turnin Valiant Of Ironforge##13703
		..accept The Valiant's Charge##13714
	step //3
		goto Icecrown,76.6,19.5
		.talk Lana Stouthammer##33312
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13741 |daily |or
		..accept A Worthy Weapon##13742 |daily |or
		..accept The Edge Of Winter##13743 |daily |or
	step //4
		goto 76.7,19.4
		.talk Rollo Sureshot##33315
		..accept A Valiant's Field Training##13744 |daily
	step //5
		goto 76.6,19.6
		.talk Clara Tumblebrew##33309
		..accept The Grand Melee##13745 |daily
		..accept At The Enemy's Gates##13851 |daily
	step //6
		goto 76.3,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
	step //7
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13745/1
	step //8
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13744/1
	step //9
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
	step //10
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //11
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
	step //12
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13741/1
	step //13
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13742
	step //14
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13742/1
	step //15
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13743
	step //16
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13743/1
	step //17
		goto Icecrown,76.6,19.5
		.talk Lana Stouthammer##33312
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13741
		..turnin A Worthy Weapon##13742
		..turnin The Edge Of Winter##13743
	step //18
		goto 76.7,19.4
		.talk Rollo Sureshot##33315
		..turnin A Valiant's Field Training##13744
	step //19
		goto 76.6,19.6
		.talk Clara Tumblebrew##33309
		..turnin The Grand Melee##13745
		..turnin At The Enemy's Gates##13851
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Charge##13714
		..accept The Valiant's Challenge##13713
	step //22
		goto 76.3,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion
		info The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
		info When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
		info Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13713/1
	step //24
		goto 76.3,19.1
		.talk Jaelyne Evensong##33592
		..turnin The Valiant's Challenge##13713
	step //25
		'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Gnome Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
	description You cannot complete this section if you are a Gnome.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Gnome.
	step //2
		goto Icecrown,76.5,19.8
		.talk Ambrose Boltspark##33335
		..accept Valiant Of Gnomeregan##13704
		..turnin Valiant Of Gnomeregan##13704
		..accept The Valiant's Charge##13715
	step //3
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13746 |daily |or
		..accept A Worthy Weapon##13747 |daily |or
		..accept The Edge Of Winter##13748 |daily |or
	step //4
		goto 76.6,19.8
		.talk Tickin Gearspanner##33648
		..accept A Valiant's Field Training##13749 |daily
	step //5
		goto 76.5,19.9
		.talk Flickin Gearspanner##33649
		..accept The Grand Melee##13750 |daily
		..accept At The Enemy's Gates##13852 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13746/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13747
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13747/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13748
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13748/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13749/1
	step //15
		goto 76.2,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
	step //16
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13750/1
	step //17
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13746
		..turnin A Worthy Weapon##13747
		..turnin The Edge Of Winter##13748
	step //18
		goto 76.6,19.8
		.talk Tickin Gearspanner##33648
		..turnin A Valiant's Field Training##13749
	step //19
		goto 76.5,19.9
		.talk Flickin Gearspanner##33649
		..turnin The Grand Melee##13750
		..turnin At The Enemy's Gates##13852
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		..turnin The Valiant's Charge##13715
		..accept The Valiant's Challenge##13723
	step //22
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13723/1
	step //24
		goto 76.5,19.8
		.talk Ambrose Boltspark##33335
		..turnin The Valiant's Challenge##13723
	step //25
		'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Draenei Champion Rank",[[
	author support@zygorguides.com
	description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
	description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
	description You cannot complete this section if you are a Draenei.
	daily
	step //1
		'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
		.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
		.' You cannot complete this section if you are a Draenei.
	step //2
		goto Icecrown,76.1,19.1
		.talk Colosos##33593
		..accept Valiant Of The Exodar##13705
		..turnin Valiant Of The Exodar##13705
		..accept The Valiant's Charge##13716
	step //3
		goto 76.1,19.1
		.talk Colosos##33593
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13752 |daily |or
		..accept A Worthy Weapon##13753 |daily |or
		..accept The Edge Of Winter##13754 |daily |or
	step //4
		goto 76.1,19.2
		.talk Saandos##33655
		..accept A Valiant's Field Training##13755 |daily
	step //5
		goto 76.2,19.1
		.talk Ranii##33656
		..accept The Grand Melee##13756 |daily
		..accept At The Enemy's Gates##13854 |daily
	step //6
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13752/1
	step //7
		goto Icecrown,69.1,76.2
		.' Click Winter Hyacinth
		.collect 4 Winter Hyacinth##45000 |q 13753
	step //8
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.' Click the Blade of Drak'Mar that spawns
		.get Blade of Drak'Mar |q 13753/1
	step //9
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13754
	step //10
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13754/1
	step //11
		goto Icecrown,48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
	step //12
		goto 50.1,74.8
		.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
	step //13
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
	step //14
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13755/1
	step //15
		goto 76.4,20.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
	step //16
		goto 75.3,18.5
		.' Talk to the riders on mounts of other Alliance races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13756/1
	step //17
		goto 76.1,19.1
		.talk Colosos##33593
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13752
		..turnin A Worthy Weapon##13753
		..turnin The Edge Of Winter##13754
	step //18
		goto 76.1,19.2
		.talk Saandos##33655
		..turnin A Valiant's Field Training##13755
	step //19
		goto 76.2,19.1
		.talk Ranii##33656
		..turnin The Grand Melee##13756
		..turnin At The Enemy's Gates##13854
	step //20
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
	step //21
		goto 76.1,19.2
		.talk Colosos##33593
		..turnin The Valiant's Charge##13716
		..accept The Valiant's Challenge##13724
	step //22
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
	step //23
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13724/1
	step //24
		goto 76.1,19.2
		.talk Colosos##33593
		..turnin The Valiant's Challenge##13724
	step //25
		'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",[[
	author support@zygorguides.com
	description This guide section will walk you through a 25 daily quest speed gold run at level 80, without including any Argent Tournament Grounds dailies.
	description To be able to complete all the quests in this guide section, you must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests),
	description The Sons of Hodir Reputation (Honored), and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections. 
	daily
	step //1
		goto The Storm Peaks,40.9,85.3
		.talk Ricket##29428
		..accept Overstock##12833 |daily
	step //2
		goto 43.1,81.2
		.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
		.kill 12 Garm Invader##29619 |q 12833/1
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
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..accept Capture More Dispatches##13333 |daily
	step //23
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..accept That's Abominable!##13289 |daily
		..accept Drag and Drop##13323 |daily
		..accept Not a Bug##13344 |daily
	step //24
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..accept Slaves to Saronite##13300 |daily
	step //25
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..accept Blood of the Chosen##13336 |daily
	step //26
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..accept The Solution Solution##13292 |daily
		..accept Retest Now##13322 |daily	
	step //27
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..accept Assault by Air##13309 |daily
	step //28
		goto 62.6,50.9
		.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
	step //29
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
	step //30
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Air##13309
	step //31
		goto 62.5,51.1
		.talk Skybreaker Squad Leader##31737
		..accept Assault by Ground##13284 |daily
	step //32
		'Follow the Alliance troops up the mountain and help them fight
		.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
	step //33
		'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
	step //34
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves |q 13300/1
	step //35
		'Go outside the cave |goto 57.0,57.3,0.3 |c
	step //36
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul |q 13336/1
	step //37
		goto 57.0,62.6
		.talk Frazzle Geargrinder##31776
		..accept King of the Mountain##13280 |daily
	step //38
		goto 57.0,62.6
		.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
	step //39
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
		.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Alliance Battle Standard |q 13280/1
	step //40
		'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
	step //41
		goto 57.0,62.5
		.talk Frazzle Geargrinder##31776
		..turnin King of the Mountain##13280
	step //42
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Ground##13284	
	step //43
		goto 69.9,64.3
		.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616 |q 13292
		.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610 |q 13292
		.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609 |q 13292
	step //44
		goto 68.8,67.5
		.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
		.' Destroy 3 Frostbrood Skytalons |q 13292/1
	step //45
		goto 69.8,62.9
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6 |n
		.' Use your Burst at the Seams ability to explode the mobs around this area
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls |q 13289/1
		.' Explode 15 Vicious Geists |q 13289/2
		.' Explode 15 Risen Alliance Soldiers |q 13289/3
	step //46
		goto 43.3,58.2
		.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
		.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
		.get 6 Orgrim's Hammer Dispatch |q 13333/1
	step //47
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion |q 13323
	step //48
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13323/1
	step //49
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..accept Static Shock Troops: the Bombardment##13404 |daily
	step //50
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle |q 13404
	step //51
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly around you (you have to aim it)
		..kill 20 Gargoyle Ambusher|q 13404/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry|q 13404/1
		..kill 10 Bombardment Captain|q 13404/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //52
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13404
	step //53
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Static Shock Troops: the Bombardment##13404
	step //54
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301 |n
		.' Use a Tainted Essence to combine them |use Tainted Essence##44301
		..collect 1 Writhing Mass##44304 |q 13322
		.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
		.collect 5 Dark Matter##44434 |q 13344
	step //55
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger |q 13344/1
	step //56
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
		.' Banish the Writhing Mass |q 13322/1
	step //57
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..accept Leave Our Mark##12995 |daily
	step //58
		goto 43.6,25.1
		.talk The Leaper##30074
		..accept Shoot 'Em Up##13069 |daily
	step //59
		goto 43.1,25.2
		.talk Vile##30216
		..accept Vile Like Fire!##13071 |daily
	step //60
		goto 33.0,23.9
		.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
	step //61
		'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
		.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
	step //62
		.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
	step //63
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
	step //64
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //65
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //66
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //67
		goto 19.7,48.4
		.talk Setaal Darkmender##29396
		..accept From Their Corpses, Rise!##12813 |daily
	step //68
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..accept Intelligence Gathering##12838 |daily
	step //69
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..accept No Fly Zone##12815 |daily
	step //70
		goto 9.6,44.3
		.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
		.collect Scarlet Onslaught Trunk Key##40652+|n
		.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
		.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
		.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
		.get 5 Onslaught Intel Documents|q 12838/1
	step //71
		'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
		.' Ride a Bone Gryphon|invehicle|q 12815
	step //72
		goto 10.2,41.9
		.' Use your Bone Gryphon abilities to:
		.kill 10 Onslaught Gryphon Rider|q 12815/1
	step //73
		'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
	step //74
		goto Icecrown,19.7,48.4
		.talk Setaal Darkmender##29396
		..turnin From Their Corpses, Rise!##12813
	step //75
		goto 19.9,48.3
		.talk Aurochs Grimbane##29456
		..turnin Intelligence Gathering##12838
	step //76
		goto 19.6,47.8
		.talk Uzo Deathcaller##29405
		..turnin No Fly Zone##12815
	step //77
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..turnin Leave Our Mark##12995
	step //78
		goto 43.6,25.1
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
	step //79
		goto 43.1,25.2
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
	step //80
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..turnin Capture More Dispatches##13333
	step //81
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..turnin That's Abominable!##13289
		..turnin Drag and Drop##13323
		..turnin Not a Bug##13344
	step //82
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..turnin Slaves to Saronite##13300
	step //83
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..turnin Blood of the Chosen##13336
	step //84
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin The Solution Solution##13292
		..turnin Retest Now##13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",[[
	author support@zygorguides.com
	description This guide section will walk you through a 25 daily quest speed gold run at level 80.
	description To be able to complete all the quests in this guide section, you must have completed
	description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
	description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections. 
	daily
	step //1
		goto Icecrown,76.3,19.6
		.talk Narasi Snowdawn##34880
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..accept A Leg Up##14074 |daily |or 2
		..accept Rescue at Sea##14152 |daily |or 2
		..accept Stop The Aggressors##14080 |daily |or 2
		..accept The Light's Mercy##14077 |daily |or 2
		..accept You've Really Done It This Time, Kul##14096 |daily |or 2
	step //2
		goto 76.2,19.6
		.talk Savinia Loresong##34912
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Breakfast Of Champions##14076 |daily |or
		..accept Gormok Wants His Snobolds##14090 |daily |or
		..accept What Do You Feed a Yeti, Anyway?##14112 |daily |or
	step //3
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..accept Taking Battle To The Enemy##13791 |daily
		only DeathKnight
	step //4
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..accept Threat From Above##13788 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13864 |daily
		only DeathKnight
	step //5
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..accept Among the Champions##13793 |daily
		only DeathKnight
	step //6
		goto 69.9,23.3
		.talk Luuri##33771
		..accept Among the Champions##13790 |daily
		only !DeathKnight
	step //7
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..accept Threat From Above##13682 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
		..accept Battle Before The Citadel##13861 |daily
		only !DeathKnight
	step //8
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..accept Taking Battle To The Enemy##13789 |daily
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
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
		only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
	step //12
		goto 71.8,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
		only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
	step //13
		goto 71.6,22.4
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
		only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
	step //14
		goto 71.6,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
		only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
	step //15
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
		only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
	step //16
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13790/1
		only !DeathKnight
	step //17
		'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
		only !DeathKnight
	step //18
		goto 71.7,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
		only Draenei DeathKnight
	step //19
		goto 71.8,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
		only Dwarf DeathKnight
	step //20
		goto 71.6,22.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
		only Human DeathKnight
	step //21
		goto 71.6,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
		only NightElf DeathKnight
	step //22
		goto 71.9,22.5
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
		only Gnome DeathKnight
	step //23
		goto 71.6,23.8
		.' Talk to the riders on mounts around this area
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.get 4 Mark of the Champion |q 13793/1
		only DeathKnight
	step //24
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
		only DeathKnight
	step //25
		goto 66.9,8.1
		.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
		.collect 6 Fresh Chum##47036 |q 14112
	step //26
		goto 66.8,9.5
		.' Use the Fresh Chum in your bags |use Fresh Chum##47036
		.from North Sea Blue Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
		.get 3 North Sea Shark Meat |q 14112/1
	step //27
		goto Hrothgar's Landing,50.6,49.4
		.kill 8 Kvaldir Berserker |q 14152/1
		.kill 3 Kvaldir Harpooner |q 14152/2
	step //28
		goto 43.3,27.5
		.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.get 10 Stolen Tallstrider Leg |q 14074/1
	step //29
		goto 46.5,32.8
		.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
		.' Kill 10 Kvaldir |q 14080/1
	step //30
		goto 46.5,32.8
		.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
		.' Administer 8 Last Rites |q 14077/1	
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
		.' Rescue 4 Captive Aspirants |q 14096/2
	step //37
		goto 64.0,21.5
		.from Dark Ritualist##34734+, Dark Zealot##34728+
		.collect 1 Black Cage Key##46895 |q 14096
	step //38
		goto 60.8,23.2
		.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
		.' Rescue Kul the Reckless |q 14096/1
	step //39
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13791/1
		only DeathKnight
	step //40
		goto 64.3,21.4
		.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
		.kill 15 Cult of the Damned member |q 13789/1
		only !DeathKnight
	step //41
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..accept Capture More Dispatches##13333 |daily
	step //42
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..accept That's Abominable!##13289 |daily
		..accept Drag and Drop##13323 |daily
		..accept Not a Bug##13344 |daily
	step //43
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..accept Slaves to Saronite##13300 |daily
	step //44
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..accept Blood of the Chosen##13336 |daily
	step //45
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..accept The Solution Solution##13292 |daily
		..accept Retest Now##13322 |daily	
	step //46
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..accept Assault by Air##13309 |daily
	step //47
		goto 62.6,50.9
		.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
	step //48
		'You will fly off in the airplane:
		.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
		.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
	step //49
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Air##13309
	step //50
		goto 62.5,51.1
		.talk Skybreaker Squad Leader##31737
		..accept Assault by Ground##13284 |daily
	step //51
		'Follow the Alliance troops up the mountain and help them fight
		.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
	step //52
		'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
	step //53
		goto 56.0,57.6
		.' Talk to Saronite Mine Slaves
		..' Tell them they're free, get out of here!
		.' Rescue 10 Saronite Mine Slaves |q 13300/1
	step //54
		'Go outside the cave |goto 57.0,57.3,0.3 |c
	step //55
		goto 57.3,57.0
		.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
		.kill 20 Ymirheim Vrykul |q 13336/1
	step //56
		goto 57.0,62.6
		.talk Frazzle Geargrinder##31776
		..accept King of the Mountain##13280 |daily
	step //57
		goto 57.0,62.6
		.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
	step //58
		goto 54.9,60.1
		.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
		.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
		.' Plant the Alliance Battle Standard |q 13280/1
	step //59
		'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
	step //60
		goto 57.0,62.5
		.talk Frazzle Geargrinder##31776
		..turnin King of the Mountain##13280
	step //61
		goto 62.6,51.3
		.talk Ground Commander Koup##31808
		..turnin Assault by Ground##13284	
	step //62
		goto 69.9,64.3
		.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
		.collect 3 Abandoned Armor##43616 |q 13292
		.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
		.collect 3 Abandoned Helm##43610 |q 13292
		.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
		.collect 3 Pile of Bones##43609 |q 13292
	step //63
		goto 68.8,67.5
		.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
		.' Destroy 3 Frostbrood Skytalons |q 13292/1
	step //64
		goto 69.8,62.9
		.from Hulking Abomination##31140+
		.collect Chilled Abomination Guts|n
		.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
		.' With your control Abomination, go to 69.1,61.6 |n
		.' Use your Burst at the Seams ability to explode the mobs around this area
		.' Keep repeating this process until you:
		.' Explode 15 Icy Ghouls |q 13289/1
		.' Explode 15 Vicious Geists |q 13289/2
		.' Explode 15 Risen Alliance Soldiers |q 13289/3
	step //65
		goto 43.3,58.2
		.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
		.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
		.get 6 Orgrim's Hammer Dispatch |q 13333/1
	step //66
		goto 53.9,46.1
		.from Bitter Initiate##32238
		.collect 3 Orb of Illusion |q 13323
	step //67
		goto 54.3,45.6
		.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
		.' Drag and drop 3 Dark Subjugators |q 13323/1
	step //68
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..accept Putting the Hertz: The Valley of Lost Hope##13382 |daily
	step //69
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle|q 13382
	step //70
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles and sentries that fly around you (you have to aim it)
		..kill 20 Gargoyle Ambusher|q 13382/2
		..kill 12 Frostbrood Sentries|q 13382/4
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry|q 13382/1
		..kill 12 Scourge War Machines|q 13382/3
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //71
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13382
	step //72
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Putting the Hertz: The Valley of Lost Hope##13382
		..accept Static Shock Troops: the Bombardment##13404 |daily
	step //73
		goto 54.0,43.1
		.talk Karen No##31648
		.' Tell her to give you a bomber!|invehicle|q 13404
	step //74
		'You fly off in an airplane:
		.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
		.' Shoot rockets at the gargoyles that fly around you (you have to aim it)
		..kill 20 Gargoyle Ambusher|q 13404/3
		.' Drop bombs on the mobs below
		..kill 50 Bombardment Infantry|q 13404/1
		..kill 10 Bombardment Captain|q 13404/2
		.' Use your Charge Shield ability to keep your airplane's defense up
		.' Use your Fight Fire ability to put out fires on your airplane
	step //75
		'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13404
	step //76
		goto 54.0,42.9
		.talk Kibli Killohertz##32444
		..turnin Static Shock Troops: the Bombardment##13404	
	step //77
		goto 51.1,38.4
		.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
		.collect 6 Discarded Soul Crystal##47035 |n
		.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
		.' Bless 6 Fallen Hero's Spirits |q 14107/1
	step //78
		goto 55.2,29.1
		.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
		.from Void Summoner##32259+, Shadow Channeler##32262+
		.collect 10 Tainted Essence##44301 |n
		.' Use a Tainted Essence to combine them |use Tainted Essence##44301
		..collect 1 Writhing Mass##44304 |q 13322
		.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
		.collect 5 Dark Matter##44434 |q 13344
	step //79
		goto 53.8,33.6
		.' Click the Summoning Stone
		.' Summon the Dark Messenger |q 13344/1
	step //80
		goto 49.1,34.2
		.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
		.' Banish the Writhing Mass |q 13322/1
	step //81
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..accept Leave Our Mark##12995 |daily
	step //82
		goto 43.6,25.1
		.talk The Leaper##30074
		..accept Shoot 'Em Up##13069 |daily
	step //83
		goto 43.1,25.2
		.talk Vile##30216
		..accept Vile Like Fire!##13071 |daily
	step //84
		goto 33.0,23.9
		.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
	step //85
		'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
		.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
	step //86
		.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
	step //87
		goto 33.0,27.0
		.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
		.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
		.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
	step //88
		goto 27.2,39.1
		.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
	step //89
		goto 28.4,37.6
		.' Use your Proto-Drake abilities near the buildings around this area to:
		.' Burn 8 Vrykul Buildings |q 13071/1
	step //90
		'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
	step //91
		goto 42.8,24.9
		.talk Baron Sliver##29804
		..turnin Leave Our Mark##12995
	step //92
		goto 43.6,25.1
		.talk The Leaper##30074
		..turnin Shoot 'Em Up##13069
	step //93
		goto 43.1,25.2
		.talk Vile##30216
		..turnin Vile Like Fire!##13071
	step //94
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only DeathKnight
	step //95
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13788/2	
		only DeathKnight
	step //96
		goto 48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
		only DeathKnight
	step //97
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only DeathKnight
	step //98
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
		only DeathKnight
	step //99
		'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
		only !DeathKnight
	step //100
		goto 44.1,32.6
		.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
		.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
		.kill 3 Cultist Bombardier |q 13682/2
		only !DeathKnight
	step //101
		goto 48.9,71.4
		.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
		.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
		only !DeathKnight
	step //102
		goto 50.1,74.8
		.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
		only !DeathKnight
	step //103
		goto 48.9,71.4
		'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
		only !DeathKnight
	step //104
		'The Skybreaker flies in a circular pattern using these points:
		.' Point 1: 57.4,37.2
		.' Point 2: 64.4,55.4
		.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
		.talk High Captain Justin Bartlett##30344
		..turnin Capture More Dispatches##13333
	step //105
		'On the Skybreaker airship:
		.talk Thassarian##29799
		..turnin That's Abominable!##13289
		..turnin Drag and Drop##13323
		..turnin Not a Bug##13344
	step //106
		'On the Skybreaker airship:
		.talk Absalan the Pious##31259
		..turnin Slaves to Saronite##13300
	step //107
		'On the Skybreaker airship:
		.talk Knight-Captain Drosche##32302
		..turnin Blood of the Chosen##13336
	step //108
		'On the Skybreaker airship:
		.talk Chief Engineer Boltwrench##30345
		..turnin The Solution Solution##13292
		..turnin Retest Now##13322
	step //109
		goto 69.9,23.3
		.talk Luuri##33771
		..turnin Among the Champions##13790
		only !DeathKnight
	step //110
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Threat From Above##13682
		..turnin Battle Before The Citadel##13861
		only !DeathKnight
	step //111
		goto 69.9,23.5
		.talk Cellian Daybreak##33763
		..turnin Taking Battle To The Enemy##13789
		only !DeathKnight
	step //112
		goto 69.5,23.1
		.talk High Crusader Adelard##34882
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin Deathspeaker Kharos##14105
		..turnin Drottinn Hrothgar##14101
		..turnin Mistcaller Yngvar##14102
		..turnin Ornolf The Scarred##14104
	step //113
		goto 69.5,23.1
		.talk Crusader Silverdawn##35094
		.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
		..turnin Get Kraken!##14108
		..turnin The Fate Of The Fallen##14107
	step //114
		goto 73.8,19.4
		.talk Zor'be the Bloodletter##33769
		..turnin Taking Battle To The Enemy##13791
		only DeathKnight
	step //115
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin Threat From Above##13788
		..turnin Battle Before The Citadel##13864	
		only DeathKnight
	step //116
		goto 73.6,20.1
		.talk Illyrie Nightfall##33770
		..turnin Among the Champions##13793
		only DeathKnight
	step //117
		goto The Storm Peaks,40.5,53.3
		.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
		.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
		.get 4 Jormungar Egg Sac |q 14076/1
	step //118
		goto The Storm Peaks,42.8,81.3
		.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
		.' Capture 8 Snowblind Followers |q 14090/1
	step //119
		goto Icecrown,76.3,19.6
		.talk Narasi Snowdawn##34880
		.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
		..turnin A Leg Up##14074
		..turnin Rescue at Sea##14152
		..turnin Stop The Aggressors##14140
		..turnin The Light's Mercy##14077
		..turnin You've Really Done It This Time, Kul##14096
	step //120
		goto 76.2,19.6
		.talk Savinia Loresong##34912
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Breakfast Of Champions##14076
		..turnin Gormok Wants His Snobolds##14090
		..turnin What Do You Feed a Yeti, Anyway?##14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral) - Pre-Quests", [[
	author support@zygorguides.com
	description This guide section will walk you through getting Neutral reputation with Netherwing faction. You need to have Artisan flying to complete this section.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly) - Pre-Quests", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Honored) - Pre-Quests", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Revered) - Pre-Quests", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Netherdrake Mount Guide\\Netherwing Egg Hunting - Optimized Path", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Argent Crusade", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Kirin Tor", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Knights of the Ebon Blade", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Kalu'ak", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Sons of Hodir", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Sons of Hodir faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Sons of Hodir faction:
		.' Complete The Storm Peaks Full Zone Quest Path guide section in The Storm Peaks section.
		.' Complete The Sons of Hodir Reputation guide sections in The Storm Peaks section. |tip Do this daily, if you'd like.
		.' There is no tabard for The Sons of Hodir available at this time.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Wyrmrest Accord", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Explorers' League", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Explorers' League faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with the Explorers' League faction:
		.' Complete the Steel Gate Dailies guide section in the Howling Fjord section. |tip Do this daily, if you'd like.
		.' There is no tabard for the Explorers' League available at this time. |tip Although there is no tabard for the Explorers' League at this time, you can still gain reputation with the Explorers' League by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with the Explorers' League for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Frostborn", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Frostborn faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Frostborn faction:
		.' Complete the Frosthold Dailies guide section in The Storm Peaks section. |tip Do this daily, if you'd like.
		.' There is no tabard for The Frostborn available at this time. |tip Although there is no tabard for The Frostborn at this time, you can still gain reputation with The Frostborn by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Frostborn for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Silver Covenant", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Silver Covenant faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Silver Covenant faction:
		.' Complete the Argent Tournament Grounds Dailies guide sections in the Icecrown section. |tip Do these daily, if you'd like.
		.' Complete the guide sections in the Crusader Title section in the Icecrown section. |tip Do these daily, if you'd like.
		.' There is no tabard for The Silver Covenant available at this time. |tip Although there is no tabard for The Silver Covenant at this time, you can still gain reputation with The Silver Covenant by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with The Silver Covenant for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Valiance Expedition", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Valiance Expedition faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with the Valiance Expedition faction:
		.' Complete the Blackriver Logging Camp Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
		.' Complete the Blue Sky Logging Grounds Dailies guide section in the Grizzly Hills section. |tip Do this daily, if you'd like.
		.' Complete the Westguard Keep Dailies guide section in the Howling Fjord section. |tip Do this daily, if you'd like.
		.' Complete the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section in the Icecrown section. |tip Do this daily, if you'd like.  All of the daily quests in the Orgrim's Hammer / Ymirheim / Aldur'Thar Dailies guide section won't give Warsong Offensive reputation, but many will.
		.' There is no tabard for the Valiance Expedition available at this time. |tip Although there is no tabard for the Valiance Expedition at this time, you can still gain reputation with the Valiance Expedition by using the Dungeon Finder tool to complete random Lich King Heroics while not wearing any tabard at all.  You will gain reputation with the Valiance Expedition for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\Frenzyheart Tribe", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with the Frenzyheart Tribe faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with the Frenzyheart Tribe faction:
		.' Complete the Frenzyheart Tribe Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Reputation\\The Oracles", [[
	author support@zygorguides.com
	description This guide section will tell you the various ways you can gain reputation with The Oracles faction with this guide.
	startlevel 80
	step //1
		'To gain reputation with The Oracles faction:
		.' Complete The Oracles Dailies guide section in the Sholazar Basin section. |tip Do this daily, if you'd like.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Love is in the Air (February 7th - 20th)\\Love is in the Air Main Questline",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the main questline for the Love is in the Air event.
	step //1
		goto Ironforge,35.3,69.0
		.talk Junior Inspector##38293
		..accept Uncommon Scents##24804
	step //2
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
	step //3
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Uncommon Scents##24804
		..accept Something Stinks##24655
	step //4
		goto 62.4,76.9
		.' Find Stormwind Guards that have the Heavily Perfumed buff on them|tip They are all over Stormwind and will have a glowing pink aura around them
		.' Use Snagglebolt's Air Analyzer on Stormwind Guards|use Snagglebolt's Air Analyzer##50131
		.' Analyze 6 Perfumed Guards|q 24655/1
	step //5
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Something Stinks##24655
		..accept Pilfering Perfume##24656
	step //6
		' While disguised as a package-runner, RUN to the Crown Chemical Company's stockpile outside the gates of Stormwind|goto Elwynn Forest,34.0,47.4,0.3
		.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24656
	step //7
		' Quickly return the package they toss you to Inspector Snip Snagglebolt in Stormwind.|goto Stormwind City,61.6,75.3,0.3
		' Deliver the package in time |condition ZGV.questsbyid[24656] and ZGV.questsbyid[24656].complete |q 24656
		.' If you lose your disguise, ask the Inspector for another one and repeat the run.
	step //8
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Pilfering Perfume##24656
		..accept Fireworks At The Gilded Rose##24848
	step //9
		goto Stormwind City,60.6,76.4
		.talk Marion Sutton##38325
		..turnin Fireworks At The Gilded Rose##24848
		..accept Hot On The Trail##24849
	step//
		goto Stormwind City,63.2,79.1
		.' Search the Stormwind Counting House|q 24849/1
	step//
		goto Stormwind City,60.9,70.4
		.' Search the Stormwind Auction House|q 24849/2
	step//
		goto Stormwind City,61.3,65.0
		.' Search the Stormwind Barber Shop|q 24849/3
	step //10
		goto Stormwind City,60.6,76.4
		.talk Marion Sutton##38325
		..turnin Hot On The Trail##24849
		..accept A Friendly Chat...##24657
	step //11
		goto Stormwind City,27.43,34.8
		.talk Snivel Rustrocket##37715
		.' Talk to him until he gives you Snivel's Ledger
		..collect Snivel's Ledger##49915|q 24657/1
	step //12
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin A Friendly Chat...##24657
	next Zygor's Alliance Dailies Guides\\Events\\Love is in the Air (February 7th - 20th)\\Love is in the Air Dailies
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Love is in the Air (February 7th - 20th)\\Love is in the Air Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Love is in the Air even daily quests.
	daily
	step //1
		goto Ironforge,33.5,65.6
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the Lord of Ironforge##24609 |daily
	step //2
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
	step //3
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..' You have to be at least level 5 to accept a quest from him
		..accept Crushing the Crown##24658 |daily // |only if level >= 5 and level < 14
		..accept Crushing the Crown##24659 |daily // |only if level >= 14 and level < 23
		..accept Crushing the Crown##24660 |daily // |only if level >= 23 and level < 32
		..accept Crushing the Crown##24662 |daily // |only if level >= 32 and level < 41
		..accept Crushing the Crown##24663 |daily // |only if level >= 41 and level < 51
		..accept Crushing the Crown##24664 |daily // |only if level >= 51 and level < 61
		..accept Crushing the Crown##24665 |daily // |only if level >= 61 and level < 71
		..accept Crushing the Crown##24666 |daily // |only if level >= 71
	step //4
		goto 62.4,75.4
		.talk Public Relations Agent##37675
		..accept A Perfect Puff of Perfume##24629 |daily |or
		..accept A Cloudlet of Classy Cologne##24635 |daily |or
		..accept Bonbon Blitz##24636 |daily |or
	step //5
		goto Stormwind City,62.5,75.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the King of Stormwind##24597 |daily
	step //6
		'Run around Stormwind and:
		.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
		.' Give 10 Cologne Samples |q 24635/1
	step //7
		'Run around Stormwind and:
		.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
		.' Give 10 Perfume Samples |q 24629/1
	step //8
		'Run around Stormwind and:
		.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
		.' Give 10 Chocolate Samples |q 24636/1
	step //9
		'Go outside Stormwind to Elwynn Forest |goto Elwynn Forest |noway |c
		// if level >= 5 and level < 14
	step //10
		goto Elwynn Forest,29.3,65.4
		.kill 5 Crown Lackey |q 24658/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24658/1
		// if level >= 5 and level < 14
	step //11
		.' Kill any mobs that give you XP.
		..collect 40 Lovely Charm##49655+|q 24609
		// if level >= 5 and level < 14
	step //12
		.' Use Lovely Charms to create Lovely Charm Bracelets|use Lovely Charm##49655
		..collect 4 Lovely Charm Bracelet##49916+|q 24609
		// |if level >= 5 and level < 14
	step //13
		'Go to Stormwind City |goto Stormwind |noway |c
		// if level >= 5 and level < 14
	step //14
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24658 |daily 
		// |if level >= 5 and level < 14
	step //15
		goto 62.4,75.4
		.talk Public Relations Agent##37675
		..turnin A Perfect Puff of Perfume##24629
		..turnin A Cloudlet of Classy Cologne##24635
		..turnin Bonbon Blitz##24636
	step //16
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// |if level >= 5 and level < 14
	step //17
		'Ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
	step //18
		goto Darkshore,42.4,79.4
		.kill 5 Crown Thugs |q 24659/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24659/1
		// if level >= 14 and level < 23
	step //19
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// if level >= 14 and level < 23
	step //20
		.'Fly to Rut'theran Village|goto Teldrassil,58.4,93.9,0.3|noway|c
	step //21
		'Go through the big pink portal to Darnassus|goto Darnassus|noway|c
	step //22
		goto Darnassus,42.5,52.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the High Priestess of Elune##24610 |daily
		// |if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
		// |if level >= 51 and level < 61
		// |if level >= 61 and level < 71
		// |if level >= 71
	step //23
		goto Darnassus,42.5,52.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the High Priestess of Elune##24610 |daily
		..turnin A Gift for the High Priestess of Elune##24610
		// |if level >= 14 and level < 23
		// |if level >= 5 and level < 14
	step //24
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
	step //25
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
	step //26
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
	step //27
		goto The Exodar,73.6,57.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the Prophet##24611 |daily
		// |if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
		// |if level >= 51 and level < 61
		// |if level >= 61 and level < 71
		// |if level >= 71
	step //28
		goto The Exodar,73.6,57.0
		.talk Kwee Q. Peddlefeet##16075
		..accept A Gift for the Prophet##24611 |daily
		..turnin A Gift for the Prophet##24611
		// |if level >= 14 and level < 23
		// |if level >= 5 and level < 14
	step //29
		goto 22,54|n
		.' Ride the boat to Auberdine|goto Darkshore|noway|c
	step //30
		'Fly to Ironforge|goto Ironforge|noway|c
		// |if level >= 5 and level < 14
		// |if level >= 14 and level < 23
	step //31
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
		// if level >= 5 and level < 14 - DONE
	step //32
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
		// |if level >= 14 and level < 23
	step //33
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// |if level >= 14 and level < 23
	step //34
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24659 |daily // |if level >= 14 and level < 23 - DONE
	step //35
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		// if level >= 23 and level < 32
	step //36
		'Fly to Southshore|goto Hillsbrad Foothills,50.0,56.9,8|noway|c
		// if level >= 23 and level < 32
	step //37
		goto Hillsbrad Foothills,28.1,37.8
		.kill 5 Crown Duster |q 24660/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24660/1
		// if level >= 23 and level < 32
	step //38
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 23 and level < 32
	step //39
		'Fly to Ironforge|goto Ironforge|noway|c
		// if level >= 23 and level < 32
	step //40
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		// if level >= 32 and level < 41
	step //41
		'Fly to Menethil Harbor|goto Wetlands,9.5,59.7,0.5|noway|c
		// if level >= 32 and level < 41
	step //42
		'Ride the boat to Theramore|goto Dustwallow Marsh|noway|c
		// if level >= 32 and level < 41
	step //43
		goto Dustwallow Marsh,60.8,38.2
		.kill 5 Crown Hoodlum |q 24662/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24662/1
		// if level >= 32 and level < 41
	step //44
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 32 and level < 41
	step //45
		goto 71.5,56.3|n
		'Ride the boat to Menethil Harbor|goto Wetlands|noway|c
		// |if level >= 32 and level < 41
	step //46
		'Fly to Ironforge|goto Ironforge|noway|c
		// |if level >= 32 and level < 41
	step //47
		goto Darkshore,32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		// if level >= 41 and level < 51
	step //48
		'Fly to Aerie Peak|goto The Hinterlands,13.4,46.5,4|noway|c
		// if level >= 41 and level < 51
	step //49
		goto The Hinterlands,23.3,53.7
		.kill 5 Crown Agent |q 24663/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24663/1
		// if level >= 41 and level < 51
	step //50
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 41 and level < 51
	step //51
		'Fly to Ironforge|goto Ironforge|noway|c
		// |if level >= 41 and level < 51
	step //52
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //53
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //54
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //55
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24660 // if level >= 23 and level < 32
		..turnin Crushing the Crown##24662 // |if level >= 32 and level < 41
		..turnin Crushing the Crown##24663 // |if level >= 41 and level < 51
	step //56
		'Ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //57
		.'Fly to Rut'theran Village|goto Teldrassil,58.4,93.9,0.3|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //58
		'Go through the big pink portal to Darnassus|goto Darnassus|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //59
		goto Darnassus,38.3,80.9
		.talk Tyrande Whisperwind##7999
		..turnin A Gift for the High Priestess of Elune##24610 |daily
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //60
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //61
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //62
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		// if level >= 23 and level < 32
		// |if level >= 32 and level < 41
		// |if level >= 41 and level < 51
	step //63
		goto The Exodar,32.8,54.5
		.talk Prophet Velen##17468
		..turnin A Gift for the Prophet##24611 |daily
		// |if level >= 23 and level < 32 - DONE
		// |if level >= 32 and level < 41 - DONE
		// |if level >= 41 and level < 51 - DONE
	step //64
		'Fly to Everlook|goto Winterspring,61.2,38.3,3|noway|c
		// |if level >= 51 and level < 61
	step //65
		goto Winterspring,64.6,37.4
		.kill 5 Crown Sprinkler |q 24664/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24664/1
		// if level >= 51 and level < 61
	step //66
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 51 and level < 61
	step //67
		'Go to Everlook|goto Winterspring,61.3,38.9,0.5|noway|c
		// |if level >= 51 and level < 61
	step //68
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		// |if level >= 51 and level < 61
	step //69
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		// |if level >= 51 and level < 61
	step //70
		goto The Exodar,73.6,57.0
		.talk Kwee Q. Peddlefeet##16075
		..turnin A Gift for the Prophet##24611
		// |if level >= 51 and level < 61
	step //71
		goto 22,54|n
		.' Ride the boat to Auberdine|goto Darkshore|noway|c
		// |if level >= 51 and level < 61
	step //72
		'Fly to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		// |if level >= 51 and level < 61
	step //73
		goto Darnassus,42.5,52.0
		.talk Kwee Q. Peddlefeet##16075
		..turnin A Gift for the High Priestess of Elune##24610
		// |if level >= 51 and level < 61
	step //74
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		// |if level >= 51 and level < 61
	step //75
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		// |if level >= 51 and level < 61
	step //76
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		// |if level >= 51 and level < 61
	step //77
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// |if level >= 51 and level < 61
	step //78
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24664
		// |if level >= 51 and level < 61
	step //79
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Ironforge|goto Ironforge|noway|c
		// |if level >= 51 and level < 61
	step //80
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
		// |if level >= 51 and level < 61 - DONE
	step //81
		goto Stormwind City,49.0,87.4 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands,57.5,51.1,0.5 |noway |c |tip It's a blue portal at the top of the mage tower.
		// if level >= 61 and level < 71
	step //82
		goto Blasted Lands,58.7,59.7 |n
		'Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
		// if level >= 61 and level < 71
	step //83
		goto Hellfire Peninsula,87.4,52.4
		.talk Amish Wildhammer##18931
		..' Fly to Shattrath City |goto Shattrath City,63.8,41.7 |noway |c
		// if level >= 61 and level < 71
	step //84
		'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
		// if level >= 61 and level < 71
	step //85
		goto Terokkar Forest,41.4,22.5
		.kill 5 Crown Underling |q 24665/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24665/1
		// if level >= 61 and level < 71
	step //86
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 61 and level < 71
	step //87
		goto Shattrath City,56.3,37.0|n
		.' Click the Shattrath Portal to Ironforge|goto Ironforge|noway|c
		// |if level >= 61 and level < 71
	step //88
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
		// |if level >= 61 and level < 71
	step //89
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
		// |if level >= 61 and level < 71
	step //90
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// |if level >= 61 and level < 71
	step //91
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24665
		// |if level >= 61 and level < 71
	step //92
		'Ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		// |if level >= 61 and level < 71
	step //93
		.'Fly to Rut'theran Village|goto Teldrassil,58.4,93.9,0.3|noway|c
		// |if level >= 61 and level < 71
	step //94
		'Go through the big pink portal to Darnassus|goto Darnassus|noway|c
		// |if level >= 61 and level < 71
	step //95
		goto Darnassus,38.3,80.9
		.talk Tyrande Whisperwind##7999
		..turnin A Gift for the High Priestess of Elune##24610
		// |if level >= 61 and level < 71
	step //96
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		// |if level >= 61 and level < 71
	step //97
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		// |if level >= 61 and level < 71
	step //98
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		// |if level >= 61 and level < 71
	step //99
		goto The Exodar,32.8,54.5
		.talk Prophet Velen##17468
		..turnin A Gift for the Prophet##24611
		// |if level >= 61 and level < 71 - DONE
	step //100
		goto 32.4,43.8|n
		'Ride the boat to Stormwind Harbor|goto Stormwind City|noway|c
		// |if level >= 71
	step //101
		goto 18.2,25.5|n
		.'Ride the boat to Borean Tundra|goto Borean Tundra|noway|c
		// |if level >= 71
	step //102
		.' The next quest requires you to go to Crystalsong Forest. 
		.' Before level 74 this isn't easy to do. The next steps will guide you on how to get there.
		.' Be warned, you will encounter high level mobs and may die. This was badly designed by Blizzard.|q 24666
		// |if level >= 71 and level < 74
	step //103
		'Fly to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
		// |if level >= 74
	step //104
		.' Follow the road north east to Dragonblight|goto Dragonblight|noway|c
		// |if level >= 71 and level < 74
	step //105
		.' We recommend the following route to get through Dragonblight
		.' Follow the road north east to this point: 50.1,55.6
		.' Head towards Wyrmrest temple to this point: 57.9,51.2
		.' Travel north up the Path of the Titans starting at: 60.0,42.3
		.' Continue up through the Crystal Vice starting here 64.6,23.9|tip Avoid the elite giants the best you can
		.' Go north to Crystalsong Forest|goto Crystalsong Forest|noway|c
		// |if level >= 71 and level < 74
	step //106
		goto Crystalsong Forest,49.0,47.8
		.kill 5 Crown Sprayer |q 24666/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24666/1
		// |if level >= 71
	step //107
		'This step depends on your character's level and what you want to do.  
		.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916
		// |if level >= 71
	step //108
		'Go to Dragonblight|goto Dragonblight|noway|c
		// |if level >= 71 and level < 74
	step //109
		'Go to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
		// |if level >= 74
	step //110
		.' We recommend the following route to get through Dragonblight
		.' Follow The Crystal Vice to this point 64.6,23.9|tip Avoid the elite giants the best you can
		.' Travel south down the Path of the Titans to this point: 60.0,42.3
		.' Head towards Wyrmrest temple to this point: 57.9,51.2
		.' Follow the road west to this point: 50.1,55.6
		.' Go west to Borean Tundra|goto Borean Tundra|noway|c
		// |if level >= 71 and level < 74
	step //111
		'Fly to Valiance Keep|goto Borean Tundra,58.9,68.4,0.1|noway|c
		// |if level >= 71 and level < 74
	step //112
		'Ride the boat to Stormwind City|goto Stormwind City|noway|c
		// |if level >= 71 and level < 74
	step //113
		'Fly to Ironforge|goto Ironforge|noway|c
		// |if level >= 71 and level < 74
	step //114
		goto Dalaran,39.5,64.0
		'Click the Dalaran Portal to Ironforge
		// |if level >= 71
	step //115
		goto Ironforge,40.0,55.1
		.talk King Magni Bronzebeard##2784
		..turnin A Gift for the Lord of Ironforge##24609
		// |if level >= 71
	step //116
		goto 76.9,51.2|n
		'Ride the Deep Run Tram to Stormwind City|goto Stormwind City|noway|c
		// |if level >= 71
	step //117
		goto 80,38.4
		.talk King Varian Wrynn##29611
		..turnin A Gift for the Lord of Stormwind##24597
		// |if level >= 71
	step //118
		goto Stormwind City,61.6,75.3
		.talk Inspector Snip Snagglebolt##38066
		..turnin Crushing the Crown##24666
		// |if level >= 71
	step //119
		'Ride the boat to Auberdine|goto Darkshore,32.8,42.0,9|noway|c
		// |if level >= 71
	step //120
		.'Fly to Rut'theran Village|goto Teldrassil,58.4,93.9,0.3|noway|c
		// |if level >= 71
	step //121
		'Go through the big pink portal to Darnassus|goto Darnassus|noway|c
		// |if level >= 71
	step //122
		goto Darnassus,38.3,80.9
		.talk Tyrande Whisperwind##7999
		..turnin A Gift for the High Priestess of Elune##24610 |daily
		// |if level >= 71
	step //123
		'Go to Rut'theran Village|goto Teldrassil,56.3,92.4,6|noway|c
		// |if level >= 71
	step //124
		'Fly to Auberdine|goto Darkshore,36.4,45.6,0.3|noway|c
		// |if level >= 71
	step //125
		'Ride the boat to Azuremyst Isle|goto Azuremyst Isle|noway|c
		// |if level >= 71
	step //126
		goto The Exodar,32.8,54.5
		.talk Prophet Velen##17468
		..turnin A Gift for the Prophet##24611 |daily
		// |if level >= 71 - DONE
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Lunar Festival (February 14th - March 6th)\\Lunar Festival Main Questline",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the main questline for the Lunar Festival event.
	step //1
		goto Ironforge,30.9,61.6
		.talk Lunar Festival Emissary##15892
		..accept The Lunar Festival##8870
	step //2
		goto Ironforge,28.8,16.2
		.talk Lunar Festival Harbinger##15895
		..turnin The Lunar Festival##8870
		..accept Lunar Fireworks##8867
	step //3
		goto 29.9,14.2
		.talk Lunar Festival Vendor##15898
		..buy 8 Small Blue Rocket+
		..buy 2 Blue Rocket Cluster+
	step //4
		goto 30.6,17.8
		.' Use Small Blue Rockets|use Small Blue Rocket##21558
		.' Use Blue Rocket Clusters|use Blue Rocket Cluster##21571
		.' Fire 8 Lunar Fireworks|q 8867/1
		.' Fire 2 Lunar Fireworks Clusters|q 8867/2
	step //5
		goto 28.9,16.2
		.talk Lunar Festival Harbinger##15895
		..turnin Lunar Fireworks##8867
		..accept Valadar Starsong##8883
	step //6
		goto 30.6,17.8
		.' Use the Lunar Festival Invitation while standing in the beam of light|use Lunar Festival Invitation##21711|q 8883
	step //7
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Valadar Starsong##8883
	step //8
		goto Moonglade,36.4,59.9
		.' Use the Lunar Festival Invitation while standing in Ironforge Revelers beam of light|use Lunar Festival Invitation##21711|goto Ironforge|noway|c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Lunar Festival (February 14th - March 6th)\\Lunar Festival Optimized Elders Path",[[
	author support@zygorguides.com
	description This guide section will walk you through an optimized path for honoring the elders
	description that are spread out all over Azeroth for the Lunar Festival event.
	description The 13 elders that are inside instances are not included in this guide section.
	description Using this guide section, you will collect 62 of the total 75 Coins of Ancestry.
// EASTERN KINGDOMS
	step //1
		.' The Lunar Festival event requires you to speak with special NPCs called Elders who will each give you a Coin of Ancestry. 
		These coins can be used to purchase special items from the Lunar Festival vendor. 
		The following section will take you on an optimized path for aquiring all 75 Coins of Ancestry.
		Since the coins are located all over Azeroth and Outland, this section assumes you possess all major flight paths to travel, this section will require a level 80 character for some steps. If you run into something you cannot do simply click the down arrow to progress to the next step.
	step //2
		..'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //3
		goto Western Plaguelands,69.0,73.0
		.talk Elder Moonstrike##15594
		..accept Moonstrike the Elder##8714|instant
	step //4
		goto Western Plaguelands,66.0,47.8
		.talk Elder Meadowrun##15602
		..accept Meadowrun the Elder##8722|instant
	step //5
		.' Follow the road west to Tirisfal Glades|goto Tirisfal Glades
	step //6
		step //7
		goto Tirisfal Glades,61.9,53.8
		.talk Elder Graveborn##15568
		..accept Graveborn the Elder##8652|instant
	step //8
		'Go south to Undercity |goto Undercity |noway |c
	step //9
		goto Undercity,66.7,38.1
		.talk Elder Darkcore##15564
		..accept Darkcore the Elder##8648|instant
	step //10
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //11
		'Go south west to Silverpine Forest|goto Silverpine Forest
	step //12
		 goto Silverpine Forest,45.0,41.1
		.talk Elder Obsidian##15561
		..accept Obsidian the Elder##8645|instant
	step //13
		.' Go north east to Tirisfal Glades|goto Tirisfal Glades
	step //14
		'Go east to Western Plaguelands|goto Western Plaguelands|noway|c
	step //15
		'Go to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //16
		..'Fly to Light's Hope Chapel|goto Eastern Plaguelands,75.9,53.4|noway|c
	step //17
		goto Eastern Plaguelands,75.7,54.6
		.talk Elder Snowcrown##15566
		..accept Snowcrown the Elder##8650|instant
	step //18
		goto Eastern Plaguelands,35.6,68.8
		.talk Elder Windrun##15592
		..accept Windrun the Elder##8688|instant
	step //19
		goto Eastern Plaguelands,75.8,53.4
		.talk Khaelyn Steelwing##12617
		..'Fly to Aerie Peak|goto The Hinterlands,13.4,46.5,4|noway|c
	step //20
		goto The Hinterlands,49.9,47.9
		.talk Elder Highpeak
		.accept Highpeak the Elder##8643|instant
	step //21
		 goto The Hinterlands,11.1,46.2
		 .talk Guthrum Thunderfist##8018
		..'Fly to Thelsamar|goto Loch Modan,33.9,50.8,0.5|noway|c
	step //22
		goto Loch Modan,33.0,46.5
		.talk Elder Silvervein##15558
		..accept Silvervein the Elder##8642|instant
	step //23
		 goto Loch Modan,33.9,51.0
		.talk Thorgrum Borrelson##1572
		..'Fly to Ironforge|goto Ironforge|noway|c
	step //24
		goto Ironforge,28.1,17.0
		.talk Elder Bronzebeard##15871
		..accept Bronzebeard the Elder##8866|instant
	step //25
		'Go outside to Dun Morogh|goto Dun Morogh|noway|c
	step //26
		goto Dun Morogh,46.7,51.4
		.talk Elder Goldwell##15569
		..accept Goldwell the Elder##15569|instant
	step //27
		'Go to Ironforge|goto Ironforge|noway|c
	step //28
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		..'Fly to Thorium Point|goto Searing Gorge,35.9,27.7,3|noway|c
	step //29
		goto Searing Gorge,21.1,78.8
		.talk Elder Ironband##15567
		..accept Ironband the Elder##8651|instant
	step //30
		goto Searing Gorge,37.9,30.9
		.talk Lanie Reed##2941
		..'Fly to Morgan's Vigil|goto Burning Steppes,84.9,69.1,2|noway|c
	step //31
		goto Burning Steppes,64.2,24.0
		.talk Elder Dawnstrider##15585
		..accept Dawnstrider the Elder##8683|instant
	step //32
		goto Burning Steppes,81.9,46.3
		.talk Elder Rumblerock##15557
		..accept Rumblerock the Elder##8636|instant
	step//
		goto Burning Steppes,84.3,68.3
		.talk Borgus Stoutarm##2299
		..'Fly to Stormwind City|goto Stormwind City|noway|c
	step //33
		goto Stormwind City,36.0,66.0
		.talk Elder Hammershout##15562
		..accept Hammershout the Elder##8646|instant
	step //34
		.' Go outside of the city of Stormwind|goto Elwynn Forest|noway|c
	step //35
		goto Elwynn Forest,39.6,63.5
		.talk Elder Stormbrow##15565
		..accept Stormbrow the Elder##8649|instant
	step //36
		.' Go to Stormwind City|goto Stormwind City|noway|c
	step //37
		..'Fly to Nethergarde Keep|goto Blasted Lands,65.4,19.2,9|noway|c
	step //38
		goto Blasted Lands,57.7,54.7
		.talk Elder Bellowrage##15563
		..accept Bellowrage the Elder##8647|instant
	step //39
		goto Blasted Lands,65.5,24.3
		.talk Alexandra Constantine##8609
		..'Fly to Sentinel Hill|goto Westfall,53.4,50.8,3|noway|c
	step //40
		goto Westfall,55.6,47.0
		.talk Elder Skychaser##15577
		..accept Skychaser the Elder##8675|instant
	step //41
		goto 56.5,52.6
		.talk Thor##523 
		..'Fly to the Rebel Camp|goto Stranglethorn Vale,38.2,4.1,0.5|noway|c
	step //42
		goto Stranglethorn Vale,53.1,18.3
		.talk Elder Starglade##15596
		..accept Starglade the Elder##8716|instant
	step //43
		goto Stranglethorn Vale,38.2,4.0
		.talk Nizzle##24366
		..'Fly to Booty Bay|goto Stranglethorn Vale,27.7,74.6,6|noway|c
	step //44
		goto Stranglethorn Vale,26.3,76.4
		.talk Elder Winterhoof##15576
		..accept Winterhoof the Elder##15576|instant
	step //45
		goto Stranglethorn Vale,26.3,76.4
		.talk Elder Winterhoof##15576
		..accept Winterhoof the Elder##15576|instant
	step //46
		'Ride the boat to Ratchet|goto The Barrens|noway|c
// KALIMDOR
	step //47
		goto The Barrens,62.6,36.7
		.talk Elder Windtotem##15582
		..accept Windtotem the Elder##8680 |instant
	step //48
		'Go northeast to Durotar|goto Durotar|noway|c
	step //49
		goto Durotar,53.1,43.5
		.talk Elder Runetotem##15572
		..accept Runetotem the Elder##8670 |instant
	step //50
		'Go north to Orgrimmar|goto Orgrimmar|noway|c
	step //51
		goto Orgrimmar,40.9,32.9
		.talk Elder Darkhorn##15579
		..accept Darkhorn the Elder##8677 |instant
	step //52
		'Go southwest to The Barrens|goto The Barrens|noway|c
	step //53
		goto The Barrens,51.4,30.6
		.talk Elder Moonwarden##15597
		..accept Moonwarden the Elder##8717 |instant
	step //54
		goto The Barrens,45.0,57.9
		.talk Elder High Mountain##15588
		..accept High Mountain the Elder##8686 |instant
	step //55
		'Go to west to Mulgore|goto Mulgore|noway|c
	step //56
		goto Mulgore,48.3,53.4
		.talk Elder Bloodhoof##15575
		..accept Bloodhoof the Elder##8673 |instant
	step //57
		'Go north to Thunder Bluff|goto Thunder Bluff|noway|c
	step //58
		goto Thunder Bluff,72.2,23.5
		.talk Elder Ezra Wheathoof##15580
		..accept Wheathoof the Elder##8678 |instant
	step //59
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //60
		'Go east to The Barrens|goto The Barrens|noway|c
	step //61
		'Go south to Thousand Needles|goto Thousand Needles|noway|c
	step //62
		goto Thousand Needles,45.3,49.8
		.talk Elder Skyseer##15584
		..accept Skyseer the Elder##8682 |instant
	step //63
		goto Thousand Needles,79.0,76.9
		.talk Elder Morningdew##15604
		..accept Morningdew the Elder##8724 |instant
	step //64
		'Go south to Tanaris|goto Tanaris |noway |c
	step //65
		goto Tanaris,51.5,27.9
		.talk Elder Dreamseer##15586
		..accept Dreamseer the Elder##8684 |instant
	step //66
		goto Tanaris,36.2,80.4
		.talk Elder Ragetotem##15573
		..accept Ragetotem the Elder##8671 |instant
	step //67
		'Go northwest to Un'Goro Crater |goto Un'Goro Crater |noway |c
	step //68
		goto Un'Goro Crater,50.4,76.2
		.talk Elder Thunderhorn##15583
		..accept Thunderhorn the Elder##8681 |instant
	step //69
		goto 45.2,5.8
		.talk Gryfe##10583
		..' Fly to Cenarion Hold |goto Silithus,50.7,34.6,0.5 |noway |c
	step //70
		goto Silithus,48.8,37.6
		.talk Elder Bladesing##15599
		..accept Bladesing the Elder##8719 |instant
	step //71
		goto 23.1,11.8
		.talk Elder Primestone##15570
		..accept Primestone the Elder##8654 |instant
	step //72
		goto 50.6,34.5
		.talk Cloud Skydancer##15177
		..' Fly to Feathermoon Stronghold |goto Feralas,30.3,43.3,0.5 |noway |c
	step //73
		goto Feralas,59.5,40.0
		.talk Elder Mistwalker##15587
		..accept Mistwalker the Elder##8685 |instant	
	step //74
		goto Feralas,76.7,37.7
		.talk Elder Grimtotem##15581
		..accept Grimtotem the Elder##8679 |instant	
	step //75
		goto 89.5,45.9
		.talk Thyssiana##4319
		..' Fly to Talrendis Point |goto Azshara,11.9,77.5,0.5 |noway |c
	step //76
		goto Azshara,72.4,84.9
		.talk Elder Skygleam##15600
		..accept Skygleam the Elder##8720 |instant
	step //77
		goto 11.9,77.6
		.talk Jarrodenus##12577
		..' Fly to Everlook |goto Winterspring,62.3,36.7,0.5 |noway |c
	step //78
		goto Winterspring,61.3,37.7
		.talk Elder Stonespire##15574
		..accept Stonespire the Elder##8672 |instant
	step //79
		goto 55.6,43.6
		.talk Elder Brightspear##15606
		..accept Brightspear the Elder##8726 |instant
	step //80
		goto 62.3,36.6
		.talk Maethrya##11138
		..' Fly to Emerald Sanctuary |goto Felwood,51.4,82.3,0.5 |noway |c
	step //81
		goto Felwood,37.7,52.9
		.talk Elder Nightwind##15603
		..accept Nightwind the Elder##8723 |instant
	step //82
		goto 51.5,82.2
		.talk Gorrim##22931
		..' Fly to Astranaar |goto Ashenvale,34.5,48.0,0.5 |noway |c
	step //83
		goto Ashenvale,35.4,48.9
		.talk Elder Riversong##15605
		..accept Riversong the Elder##8725 |instant
	step //84
		goto 34.4,48.0
		.talk Daelyshia##4267
		..' Fly to Auberdine |goto Darkshore,36.4,45.6,0.5 |noway |c
	step //85
		goto Darkshore,36.7,46.6
		.talk Elder Starweave##15601
		..accept Starweave the Elder##8721 |instant
	step //86
		goto 36.3,45.6
		.talk Caylais Moonfeather##3841
		..' Fly to Rut'theran Village |goto Teldrassil,58.4,93.9,0.5 |noway |c
	step //87
		'Go into the pink portal to Darnassus |goto Darnassus |noway |c
	step //88
		goto Darnassus,33.6,15.1
		.talk Elder Bladeswift##15598
		..accept Bladeswift the Elder##8718 |instant
	step //89
		'Go outside the east exit of Darnassus to Teldrassil |goto Teldrassil |noway |c
	step //90
		goto Teldrassil,57.2,60.7
		.talk Elder Bladeleaf##15595
		..accept Bladeleaf the Elder##8715 |instant
	step //91
		'Go west to Darnassus |goto Darnassus |noway |c
	step //92
		goto Darnassus,31.6,12.5
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |c
	step //93
		goto Moonglade,35.7,58.9
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Stormwind City |goto Stormwind City |c
// NORTHREND
	step //94
		goto Stormwind City,18.1,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step //95
		goto Borean Tundra,59.1,65.6
		.talk Elder Sardis##30348
		..accept Sardis the Elder##13012 |instant
	step //96
		goto 57.4,43.7
		.talk Elder Arp##30364
		..accept Arp the Elder##13033 |instant
	step //97
		goto 42.9,49.6
		.talk Elder Pamuya##30371
		..accept Pamuya the Elder##13029 |instant
	step //98
		goto 33.8,34.4
		.talk Elder Northal##30360
		..accept Northal the Elder##13016 |instant
	step //99
		'Go northeast to Sholazar Basin |goto Sholazar Basin |noway |c
	step //100
		goto Sholazar Basin,49.8,63.6
		.talk Elder Sandrene##30362
		..accept Sandrene the Elder##13018 |instant
	step //101
		goto 63.8,49.0
		.talk Elder Wanikaya##30365
		..accept Wanikaya the Elder##13024 |instant
	step //102
		'Go southeast to Wintergrasp |goto Wintergrasp |noway |c
	step //103
		goto Wintergrasp,50.5,16.4
		.' Click the Defender's Portal
		.' Go to the upper level of the Wintergrasp Fortress |goto Wintergrasp,50.4,15.9,0.1 |noway |c
	step //104
		goto 49.0,13.9
		.talk Elder Bluewolf##30368
		..accept Bluewolf the Elder##13026 |instant
	step //105
		goto 49.6,15.9
		.' Click the Defender's Portal
		.' Go to outside of the Wintergrasp Fortress |goto Wintergrasp,49.6,16.3,0.1 |noway |c
	step //106
		'Leave Wintergrasp and get back on your flying mount
		.' Skip to the next step of the guide once you are back on your flying mount
	step //107
		'Go southeast to Dragonblight |goto Dragonblight |noway |c
	step //108
		goto Dragonblight,35.1,48.3
		.talk Elder Skywarden##30373
		..accept Skywarden the Elder##13031 |instant
	step //109
		goto 29.7,55.9
		.talk Elder Morthie##30358
		..accept Morthie the Elder##13014 |instant
	step //110
		goto 48.8,78.2
		.talk Elder Thoim##30363
		..accept Thoim the Elder##13019 |instant
	step //111
		'Go east to Grizzly Hills |goto Grizzly Hills |noway |c
	step //112
		goto Grizzly Hills,64.2,47.0
		.talk Elder Whurain##30372
		..accept Whurain the Elder##13030 |instant
	step //113
		goto 80.5,37.1
		.talk Elder Lunaro##30367
		..accept Lunaro the Elder##13025 |instant
	step //114
		goto 60.6,27.7
		.talk Elder Beldak##30357
		..accept Beldak the Elder##13013 |instant
	step //115
		'Go northwest to Zul'Drak |goto Zul'Drak |noway |c
	step //116
		goto Zul'Drak,58.9,56.0
		.talk Elder Tauros##30369
		..accept Tauros the Elder##13027 |instant
	step //117
		'Go northwest to The Storm Peaks |goto The Storm Peaks |noway |c
	step //118
		goto The Storm Peaks,41.2,84.7
		.talk Elder Graymane##30370
		..accept Graymane the Elder##13028 |instant
	step //119
		goto 28.9,73.7
		.talk Elder Fargal##30359
		..accept Fargal the Elder##13015 |instant
	step //120
		goto 31.3,37.6
		.talk Elder Stonebeard##30375
		..accept Stonebeard the Elder##13020 |instant
	step //121
		goto 64.6,51.3
		.talk Elder Muraco##30374
		..accept Muraco the Elder##13032 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Noblegarden (April 4th - April 11th)\\Noblegarden Quests and Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the dailies for the Noblegarden event.
	daily
	step //1
		goto Darnassus,41.4,44.9
		.talk Night Elf Commoner##19173
		..accept Spring Collectors##13484
	step //2
		'Leave out of the east exit of Darnassus to go outside to Teldrassil |goto Teldrassil |noway |c
	step //3
		goto Teldrassil,55.9,58.8
		.talk Spring Collector##32799
		..turnin Spring Collectors##13484
		..accept The Great Egg Hunt##13480 |daily
	step //4
		goto 56.0,58.7
		.talk Noblegarden Vendor##32836
		..accept A Tisket, a Tasket, a Noblegarden Basket##13502
	step //5
		'Search around Dolanaar for Brightly Colored Eggs and click them:
		.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Dolanaar is too crowed with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.get 20 Brightly Colored Shell Fragment |q 13480/1
		.get 10 Noblegarden Chocolate |q 13502/1
	step //6
		goto 56.0,58.7
		.talk Noblegarden Vendor##32836
		..turnin A Tisket, a Tasket, a Noblegarden Basket##13502
	step //7
		goto 55.9,58.8
		.talk Spring Collector##32799
		..turnin The Great Egg Hunt##13480
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Noblegarden (April 4th - April 11th)\\Noblegarden Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
	step //1
		goto Teldrassil,57.0,60.5
		.' Click Brightly Colored Eggs |tip They look like small Easter eggs on the ground. There is at least one available at all times. You don't have to wait for respawns. If Dolanaar is too crowed with other players looking for eggs, you can also find them at Azure Watch, Goldshire, and Kharanos.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.collect 100 Noblegarden Chocolate##44791+ |n
		.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
		.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
		.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249
	step //2
		'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Vendor at 56.0,58.7:
		.collect Noblegarden Egg##44818 |achieve 2421 |tip It costs 5 Noblegarden Chocolates.
		.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
		.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Rabbit's Foot##44794 |achieve 2419 |tip It costs 100 Noblegarden Chocolates.
	step //3
		goto Teldrassil,57.0,60.5
		.' Use your Spring Rabbit's Foot in your bags to get a Spring Raibbit companion |use Spring Rabbit's Foot##44794
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Dolanaar |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Dolanaar |achieve 2419/2
	step //4
		'Go west to Darnassus |goto Darnassus |noway |c
	step //5
		goto Darnassus,30.2,41.4 |n
		.' Go inside the pink portal to Teldrassil |goto Teldrassil |noway |c
	step //6
		goto Teldrassil,58.4,94.0
		.talk Vesprystus##3838
		.' Fly to Auberdine, Darkshore |goto Darkshore,36.4,45.6,0.5 |noway |c
	step //7
		goto Darkshore,30.8,41.0 |n
		.' Ride the boat to Azuremyst Isel |goto Azuremyst Isle |noway |c
	step //8
		goto Azuremyst Isle,49.1,52.0
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Azure Watch |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Azure Watch |achieve 2419/1
	step //9
		goto 21.4,54.0 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //10
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		.' Fly to Nijel's Point, Desolace |goto Desolace,64.7,10.4,0.5 |noway |c
	step //11
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Desolace |achieve 2436/2
	step //12
		goto Desolace,64.7,10.5
		.talk Baritanas Skyriver##6706
		.' Fly to Thalanar, Feralas |goto Feralas,89.5,45.9,0.5 |noway |c
	step //13
		'Go east to Thousand Needles |goto Thousand Needles |noway |c
	step //14
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Thousand Needles |achieve 2436/5
	step //15
		'Go west to Feralas |goto Feralas |noway |c
	step //16
		goto Feralas,89.5,45.9
		.talk Thyssiana##4319
		.' Fly to Cenarion Hold, Silithus |goto Silithus,50.7,34.6,0.5 |noway |c
	step //17
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Silithus |achieve 2436/3
	step //18
		goto Silithus,50.6,34.5
		.talk Cloud Skydancer##15177
		.' Fly to Marshal's Refuge, Un'Goro Crater |goto Un'Goro Crater,45.3,6.0,0.5 |noway |c
	step //19
		goto Un'Goro Crater,35.6,49.0
		.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
		.' Stand in this spot until you lay an egg
		.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
	step //20
		goto 45.2,5.8
		.talk Gryfe##10583
		.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.0,29.3,0.5 |noway |c
	step //21
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in Tanaris |achieve 2436/4
	step //22
		goto Tanaris,51.0,29.4
		.talk Bera Stonehammer##7823
		.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
	step //23
		goto Dustwallow Marsh,71.5,56.3 |n
		.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
	step //24
		goto Wetlands,9.5,59.7
		.talk Shellei Brondir##1571
		.' Fly to Thelsamar, Loch Modan |goto Loch Modan,33.9,50.8,0.5 |noway |c
	step //25
		'Go southeast to Badlands |goto Badlands |noway |c
	step //26
		'Equip your Spring Robes in your bags
		.' Use your Spring Robes' ability to plant a flower |tip Press C to open your character's equipment screen, then right-click your equipped Spring Robes to use its ability.
		.' Plant a flower in The Badlands |achieve 2436/1
	step //27
		'Go north to Loch Modan |goto Loch Modan |noway |c
	step //28
		goto Loch Modan,33.9,51.0
		.talk Thorgrum Borrelson##1572
		.' Fly to Ironforge, Dun Morogh |goto Ironforge |noway |c
	step //29
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //30
		goto Dun Morogh,46.4,51.0
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Kharanos |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Kharanos |achieve 2419/4
	step //31
		'Go northeast to Ironforge |goto Ironforge |noway |c
	step //32
		goto Ironforge,55.5,47.8
		.talk Gryth Thurden##1573
		.' Fly to Stormwind, Elwynn |goto Stormwind City |noway |c
	step //33
		'Use your Noblegarden Egg anywhere in Stormwind City |use Noblegarden Egg##44818
		.' Hide a Brightly Colored Egg in Stormwind City |achieve 2421
	step //34
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
	step //35
		goto Elwynn Forest,42.4,65.1
		.' Bring out your Spring Rabbit companion |tip Hold SHIFT and press P to bring up your Pets screen, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Goldshire |tip Spring Rabbits look like small brown and white rabbits.  
		.' Find your Spring Rabbit another one to love in Goldshire |achieve 2419/3
	step //36
		'Equip your Black Tuxedo Pants and White Tuxedo Shirt
		.' Find another player who is wearing the Elegant Dress and perform the /kiss emote on them |tip The Elegant Dress looks like a long pink dress when worn.
		.' Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
	step //37
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
	step //38
		'Congratulations, you are now a Noble Gardener!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Stormwind Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Stormwind questline for the Children's Week event.
	startlevel 80
	step //1
		goto Stormwind City,56.3,54.0
		.talk Orphan Matron Nightingale##14450
		..accept Children's Week##1468
	step //2
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Children's Week##1468
		..accept The Bough of the Eternals##1479
		..accept The Stonewrought Dam##1558
		..accept Spooky Lighthouse##1687		
	step //3
		goto Stormwind City,71.0,72.5
		.talk Dungar Longdrink##352
		.' Fly to Thelsamar, Loch Modan |goto Loch Modan,33.9,50.8,0.5 |noway |c 
	step //4
		goto Loch Modan,47.8,14.3
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' Take your orphan to the top of the Stonewrought Dam in Loch Modan |q 1558/1
	step //5
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin The Stonewrought Dam##1558
	step //6
		goto Loch Modan,33.9,51.0
		.talk Thorgrum Borrelson##1572
		..' Fly to Sentinel Hill, Westfall |goto Westfall,56.6,52.7,0.5 |noway |c
	step //7
		goto Westfall,30.5,85.6
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' Take your orphan to the Westfall Lighthouse |q 1687/1
	step //8
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Spooky Lighthouse##1687
	step //9
		goto Westfall,56.5,52.6
		.talk Thor##523
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,72.9,0.5 |noway |c
	step //10
		goto Stormwind City,22.7,56.0 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //11
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		..' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,58.4,93.9,0.5 |noway |c
	step //12
		goto Teldrassil,43.8,16.4 |n
		.' Go in the pink portal to Darnassus |goto Darnassus |noway |c
	step //13
		goto Darnassus,42.1,43.6
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.' Take your orphan to the bank in Darnassus, otherwise known as the Bough of the Eternals |q 1479/1
	step //14
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin The Bough of the Eternals##1479
		..accept You Scream, I Scream...##4822
		..accept Jaina's Autograph##558
	step //15
		goto Darnassus,30.3,41.4 |n
		.' Go in the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step //16
		goto Teldrassil,58.4,94.0
		.talk Vesprystus##3838
		..' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c 
	step //17
		goto Dustwallow Marsh,66.3,49.0
		.talk Lady Jaina Proudmoore##4968
		..' Ask her for her autograph
		.get Jaina's Autograph |q 558/1
	step //18
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin Jaina's Autograph##558
	step //19
		goto Dustwallow Marsh,67.5,51.3
		.talk Baldruc##4321
		..' Fly to Ratchet, The Barrens |goto The Barrens,63.1,37.1,0.5 |noway |c
	step //20
		goto The Barrens,63.7,38.6 |n
		.' Ride the boat to Booty Bay |goto Stranglethorn Vale |noway |c
	step //21
		goto Stranglethorn Vale,27.5,77.8
		.talk Gyll##2859
		..' Fly to Stormwind, Elwynn |goto Stormwind City |noway |c	
	step //22
		goto Stormwind City,61.3,75.0
		.talk Emmithue Smails##14481
		..get Tigule and Foror's Strawberry Ice Cream |q 4822/1
	step //23
		'Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18598
		.talk Human Orphan##14305
		..turnin You Scream, I Scream...##4822
		..accept A Warden of the Alliance##171
	step //24
		goto Stormwind City,56.3,54.0
		.talk Orphan Matron Nightingale##14450
		..turnin A Warden of the Alliance##171 |tip You will be able to choose from 3 pet companions or a 5 gold reward.  If you already have all 3 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Shattrath Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
	startlevel 80
	step //1
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..accept Children's Week##10943
	step //2
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Children's Week##10943
		..accept Auchindoun and the Ring of Observance##10950
		..accept A Trip to the Dark Portal##10952
		..accept Jheel is at Aeris Landing!##10954
	step //3
		goto Nagrand,31.5,57.6
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa taken to Aeris Landing |q 10954/1
	step //4
		goto Nagrand,31.5,57.6
		.talk Jheel##22836
		..turnin Jheel is at Aeris Landing!##10954
	step //5
		goto Terokkar Forest,39.8,64.7
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Ring of Observance |q 10950/1
	step //6
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Auchindoun and the Ring of Observance##10950
	step //7
		goto Hellfire Peninsula,89.6,50.2
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Dark Portal |q 10952/1
	step //8
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin A Trip to the Dark Portal##10952
		..accept The Seat of the Naaru##10956
		..accept Time to Visit the Caverns##10962
	step //9
		'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
	step //10
		goto Blasted Lands,65.5,24.3
		.talk Alexandra Constantine##8609
		..' Fly to Booty Bay, Stranglethorn |goto Stranglethorn Vale,27.5,77.7,0.5 |noway |c
	step //11
		goto Stranglethorn Vale,26.1,73.3 |n
		.' Ride the boat to Ratchet |goto The Barrens |noway |c
	step //12
		goto The Barrens,63.1,37.2
		.talk Bragok##16227
		..' Fly to Gadgetzan, Tanaris |goto Tanaris,51.0,29.3,0.5 |noway |c
	step //13
		goto Tanaris,61.5,50.6 |n
		.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
	step //14
		'Follow the path down to 60.6,57.5 |goto Tanaris,60.6,57.5 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Caverns of Time |q 10962/1
	step //15
		goto Tanaris,63.6,57.6
		.talk Alurmi##21643
		..get Toy Dragon##31951 |q 10962/2
	step //16
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..turnin Time to Visit the Caverns##10962
	step //17
		'Go outside to 51.0,29.4 |goto Tanaris,51.0,29.4
		.talk Bera Stonehammer##7823
		..' Fly to Auberdine, Darkshore |goto Darkshore,36.4,45.6,0.5 |noway |c
	step //18
		goto Darkshore,30.8,41.0 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //19
		'Go inside The Exodar |goto The Exodar |noway |c
	step //20
		goto The Exodar,58.0,41.4
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to the Seat of the Naaru |q 10956/1
	step //21
		goto The Exodar,58.0,41.4
		.talk O'ros##17538
		..turnin The Seat of the Naaru##10956
		..accept Call on the Farseer##10968
	step //22
		goto The Exodar,30.4,33.1
		.' Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.' Take Dornaa to to Farseer Nobundo |q 10968/1
	step //23
		goto The Exodar,30.4,33.1
		.talk Farseer Nobundo##17204
		..turnin Call on the Farseer##10968
	step //24
		'Use your Draenei Orphan Whistle to summon your Draenei Orphan |use Draenei Orphan Whistle##31881
		.talk Draenei Orphan##22818
		..accept Back to the Orphanage##10966
	step //25
		'Go outside to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //26
		goto Azuremyst Isle,21.6,54 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //27
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		..' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,58.4,93.9,0.5 |noway |c 
	step //28
		goto Teldrassil,55.9,89.6 |n
		.' Go inside the pink portal to Darnassus |goto Darnassus |noway |c
	step //29
		goto Darnassus,40.5,81.7 |n
		.' Click the Portal to Blasted Lands to go to the Blasted Lands |goto Blasted Lands |noway |c	
	step //30
		'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step //31
		goto Hellfire Peninsula,87.4,52.4
		.talk Amish Wildhammer##18931
		..' Fly to Shattrath, Terokkar Forest |goto Shattrath City |noway |c
	step //32
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..turnin Back to the Orphanage##10966 |tip You will be able to choose from 3 pet companions.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Dalaran Oracles Quests",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Dalaran Wolvar Quests",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Children's Week (May 2nd - May 9th)\\Children's Week Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Achievements for the Children's Week event.
	startlevel 80
	step //1
		goto Stormwind City,56.3,54.0
		.talk Orphan Matron Nightingale##14450
		..' Ask her for another Orphan Whistle |collect 1 Human Orphan Whistle##18598
	step //2
		'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		.' Get the Daily Chores Achievement |achieve 1789
	step //3
		goto Stormwind City,61.3,75.0
		.talk Emmithue Smails##14481
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Quests",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
	startlevel 80
	step //1
		goto Darnassus,41.5,44.9
		.talk Night Elf Commoner##19173
		..accept The Master of Summer Lore##11970
	step //2
		'Go outside the east exit of Darnassus to Teldrassil |goto Teldrassil |noway |c
	step //3
		goto Teldrassil,55.1,60.4
		.talk Teldrassil Flame Warden##25906
		..accept Honor the Flame##11824 |instant
	step //4
		goto Teldrassil,54.7,60.3
		.talk Fire Eater##25962
		..accept Playing with Fire##11882
	step //5
		'Go west to Darnassus |goto Darnassus |noway |c
	step //6
		goto Darnassus,30.5,41.4 |n
		.' Go inside the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step //7
		goto Teldrassil,56.6,92.1
		.talk Master Fire Eater##25975
		..turnin Playing with Fire##11882
		..accept Torch Tossing##11731
	step //8
		'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
		.' Hit 8 braziers |q 11731/1
	step //9
		goto Teldrassil,56.6,92.1
		.talk Master Fire Eater##25975
		..turnin Torch Tossing##11731
		..accept Torch Catching##11657
	step //10
		goto Teldrassil,56.6,92.1
		.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
		.' As soon as you light torch, it will fly in the air.  There will be be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
		.' Catch 4 torches in a row. |q 11657/1
	step //11
		goto Teldrassil,56.6,92.1
		.talk Master Fire Eater##25975
		..turnin Torch Catching##11657
	step //12
		goto Teldrassil,56.5,92.3
		.talk Festival Loremaster##16817
		..turnin The Master of Summer Lore##11970
		..accept Incense for the Summer Scorchlings##11964
	step //13
		goto Teldrassil,56.1,92.2
		.talk Earthen Ring Elder##26221
		..accept Unusual Activity##11886
	step //14
		goto Teldrassil,58.4,94.0
		.talk Vesprystus##3838
		.' Fly to Auberdine, Darkshore |goto Darkshore,36.4,45.6,0.5 |noway |c
	step //15
		goto Darkshore,37.0,46.2
		.talk Summer Scorchling##26401
		..turnin Incense for the Summer Scorchlings##11964
	step //16
		goto Darkshore,37.0,46.2
		.talk Darkshore Flame Warden##25893
		..accept Honor the Flame##11811 |instant
	step //17
		goto Darkshore,30.8,41.0 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step //18
		goto Azuremyst Isle,44.5,52.5
		.talk Azuremyst Isle Flame Warden##25888
		..accept Honor the Flame##11806 |instant
	step //19
		'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
	step //20
		goto Bloodmyst Isle,55.8,67.9
		.talk Bloodmyst Isle Flame Warden##25891
		..accept Honor the Flame##11809 |instant
	step //21
		goto Bloodmyst Isle,57.7,53.9
		.talk Laando##17554
		.' Fly to The Exodar |goto The Exodar,68.8,63.2,0.5 |noway |c
	step //22
		goto Azuremyst Isle,20.4,54.2 |n
		.' Ride the boat to Auberdine |goto Darkshore |noway |c
	step //23
		goto Darkshore,36.3,45.6
		.talk Caylais Moonfeather##3841
		.' Fly to Everlook, Winterspring |goto Winterspring,62.3,36.7,0.5 |noway |c
	step //24
		goto Winterspring,62.5,35.4
		.talk Winterspring Flame Warden##25917
		..accept Honor the Flame##11834 |instant
	step //25
		goto Winterspring,59.9,35.4
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11803 |instant
	step //26
		goto Winterspring,62.3,36.6
		.talk Maethrya##11138
		.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
	step //27
		goto Ashenvale,15.3,20.1
		.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
		.get Twilight Correspondence |q 11886/1
	step //28
		goto Ashenvale,15.7,20.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin Unusual Activity##11886
		..accept An Innocent Disguise##11891
	step //29
		goto Ashenvale,9.6,13.2
		.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
		.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
	step //30
		'While in the crab disguise, go to 9.2,12.6 |goto Ashenvale,9.2,12.6
		.' Listen to the plan of the Twilight Cultists |q 11891/1
	step //31
		goto Ashenvale,9.7,13.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin An Innocent Disguise##11891
		..accept Inform the Elder##12012
	step //32
		goto Ashenvale,34.4,48.0
		.talk Daelyshia##4267
		.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,58.4,93.9,0.5 |noway |c
	step //33
		goto Teldrassil,56.1,92.2
		.talk Earthen Ring Elder##26221
		..turnin Inform the Elder##12012
	step //34
		goto Teldrassil,58.4,94.0
		.talk Vesprystus##3838
		.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
	step //35
		goto Ashenvale,37.8,54.7
		.talk Ashenvale Flame Warden##25883
		..accept Honor the Flame##11805 |instant
	step //36
		goto Ashenvale,70.0,69.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11765 |instant
	step //37
		'Go south to The Barrens |goto The Barrens |noway |c
	step //38
		goto The Barrens,52.1,27.8
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11783 |instant
	step //39
		'Go northeast to Durotar |goto Durotar |noway |c
	step //40
		goto Durotar,51.9,47.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11770 |instant
	step //41
		'Go north to Orgrimmar |goto Orgrimmar |noway |c
	step //42
		goto Orgrimmar,47.0,38.5
		.' Click the Flame of Orgrimmar |tip It's a huge blue bonfire.
		.collect Flame of Orgrimmar##23179 |n
		.' Click the Flame of Orgrimmar in your bags |use Flame of Orgrimmar##23179
		..accept Stealing Orgrimmar's Flame##9324 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //43
		'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
	step //44
		'Go southwest to The Barrens |goto The Barrens |noway |c
	step //45
		goto The Barrens,63.1,37.2
		.talk Bragok##16227
		.' Fly to Stonetalon Peak, Stonetalon Mountains |goto Stonetalon Mountains,36.5,7.2,0.5 |noway |c
	step //46
		goto Stonetalon Mountains,50.6,60.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11780 |instant
	step //47
		'Go southwest to Desolace |goto Desolace |noway |c
	step //48
		goto Desolace,66.1,17.1
		.talk Desolace Flame Warden##25894
		..accept Honor the Flame##11812 |instant
	step //49
		goto Desolace,26.2,77.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11769 |instant
	step //50
		'Go southeast to Feralas |goto Feralas |noway |c
	step //51
		goto Feralas,43.4,42.8 |n
		.' Ride the boat to Feathermoon |goto Feralas,31.0,39.9,4 |noway |c
	step //52
		goto Feralas,28.3,43.9
		.talk Feralas Flame Warden##25899
		..accept Honor the Flame##11817 |instant
	step //53
		goto Feralas,30.2,43.3
		.talk Fyldren Moonfeather##8019
		.' Fly to Thalanaar, Feralas |goto Feralas,89.5,45.9,0.5 |noway |c
	step //54
		goto Feralas,72.5,47.6
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11773 |instant
	step //55
		goto Feralas,89.5,45.9
		.talk Thyssiana##4319
		.' Fly to Cenarion Hold, Silithus |goto Silithus,50.7,34.6,0.5 |noway |c
	step //56
		goto Silithus,57.5,35.2
		.talk Silithus Flame Warden##25914
		..accept Honor the Flame##11831 |instant
	step //57
		goto Silithus,46.4,44.9
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11800 |instant
	step //58
		goto Silithus,50.6,34.5
		.talk Cloud Skydancer##15177
		.' Fly to Thalanaar, Feralas |goto Feralas,89.5,45.9,0.5 |noway |c
	step //59
		goto Thousand Needles,42.5,52.7
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11785 |instant
	step //60
		'Go southeast to Tanaris |goto Tanaris |noway |c
	step //61
		goto Tanaris,49.8,27.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11802 |instant
	step //62
		goto Tanaris,52.8,29.4
		.talk Tanaris Flame Warden##25916
		..accept Honor the Flame##11833 |instant
	step //63
		goto Tanaris,51.0,29.4
		.talk Bera Stonehammer##7823
		.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
	step //64
		goto Dustwallow Marsh,61.8,40.5
		.talk Dustwallow Marsh Flame Warden##25897
		..accept Honor the Flame##11815 |instant
	step //65
		goto Dustwallow Marsh,33.3,30.7
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11771 |instant
	step //66
		'Go southwest to The Barrens |goto The Barrens |noway |c
	step //67
		'Go northwest to Mulgore |goto Mulgore |noway |c
	step //68
		goto Mulgore,52.1,60.1
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11777 |instant
	step //69
		'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
	step //70
		goto Thunder Bluff,21.7,27.5
		.' Click the Flame of Thunder Bluff |tip It's a huge blue bonfire.
		.collect Flame of Thunder Bluff##23180 |n
		.' Click the Flame of Thunder Bluff in your bags |use Flame of Thunder Bluff##23180
		..accept Stealing Thunder Bluff's Flame##9325 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //71
		'Go outside to Mulgore |goto Mulgore |noway |c
	step //72
		'Go southeast to The Barrens |goto The Barrens |noway |c
	step //73
		goto The Barrens,63.7,38.6 |n
		.' Ride the boat to Booty Bay |goto Stranglethorn Vale |noway |c
	step //74
		goto Stranglethorn Vale,33.9,73.5
		.talk Stranglethorn Vale Flame Warden##25915
		..accept Honor the Flame##11832 |instant
	step //75
		goto Stranglethorn Vale,33.0,75.4
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11801 |instant
	step //76
		goto Stranglethorn Vale,27.5,77.8
		.talk Gyll##2859
		.' Fly to Nethergarde Keep, Blasted Lands |goto Blasted Lands,65.5,24.4,0.5 |noway |c
	step //77
		goto Blasted Lands,59.3,17.0
		.talk Blasted Lands Flame Warden##25890
		..accept Honor the Flame##11808 |instant
	step //78
		'Go northwest to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step //79
		goto Swamp of Sorrows,46.9,46.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11781 |instant
	step //80
		'Go west to Duskwood |goto Duskwood |noway |c
	step //81
		goto Duskwood,73.7,54.6
		.talk Duskwood Flame Warden##25896
		..accept Honor the Flame##11814 |instant
	step //82
		goto Duskwood,77.5,44.3
		.talk Felicia Maline##2409
		.' Fly to Sentinel Hill, Westfall |goto Westfall,56.6,52.7,0.5 |noway |c
	step //83
		goto Westfall,55.9,53.5
		.talk Westfall Flame Warden##25910
		..accept Honor the Flame##11583 |instant
	step //84
		goto Westfall,56.5,52.6
		.talk Thor##523
		.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,72.9,0.5 |noway |c
	step //85
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
	step //86
		goto Elwynn Forest,43.5,62.6
		.talk Elwynn Forest Flame Warden##25898
		..accept Honor the Flame##11816 |instant
	step //87
		'Go northwest to Stormwind City |goto Stormwind City |noway |c
	step //88
		goto Stormwind City,71.0,72.5
		.talk Dungar Longdrink##352
		.' Fly to Lakeshire, Redridge |goto Redridge Mountains,30.4,59.0,0.5 |noway |c
	step //89
		goto Redridge Mountains,25.2,59.0
		.talk Redridge Flame Warden##25904
		..accept Honor the Flame##11822 |instant
	step //90
		goto Redridge Mountains,30.6,59.4
		.talk Ariena Stormfeather##931
		.' Fly to Morgan's Vigil, Burning Steppes |goto Burning Steppes,84.4,68.3,0.5 |noway |c
	step //91
		goto Burning Steppes,80.3,62.9
		.talk Burning Steppes Flame Warden##25892
		..accept Honor the Flame##11810 |instant
	step //92
		goto Burning Steppes,62.2,29.0
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11768 |instant
	step //93
		goto Burning Steppes,84.3,68.3
		.talk Borgus Stoutarm##2299
		.' Fly to Thorium Point, Searing Gorge |goto Searing Gorge,37.9,30.4,0.5 |noway |c
	step //94
		goto Searing Gorge,69.4,54.2 |n
		.' The path over to the Badlands starts here |goto Searing Gorge,69.4,54.2,0.5 |noway |c
	step //95
		'Go to the Badlands |goto Badlands |noway |c
	step //96
		goto Badlands,4.9,49.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11766 |instant
	step //97
		'Go northeast to Loch Modan |goto Loch Modan |noway |c
	step //98
		goto Loch Modan,32.5,41.0
		.talk Loch Modan Flame Warden##25902
		..accept Honor the Flame##11820 |instant
	step //99
		goto Loch Modan,33.9,51.0
		.talk Thorgrum Borrelson##1572
		.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
	step //100
		goto Ironforge,63.8,25.3
		.talk Festival Loremaster##16817
		..turnin Stealing Orgrimmar's Flame##9324
		..turnin Stealing Thunder Bluff's Flame##9325
	step //101
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //102
		goto Dun Morogh,46.7,46.9
		.talk Dun Morogh Flame Warden##25895
		..accept Honor the Flame##11813 |instant
	step //103
		'Go northeast to Ironforge |goto Ironforge |noway |c
	step //104
		goto Ironforge,55.5,47.7
		.talk Gryth Thurden##1573
		.' Fly to Menethil Harbor, Wetlands |goto Wetlands,9.5,59.7,0.5 |noway |c
	step //105
		goto Wetlands,13.5,47.1
		.talk Wetlands Flame Warden##25911
		..accept Honor the Flame##11828 |instant
	step //106
		goto Wetlands,9.5,59.7
		.talk Shellei Brondir##1571
		.' Fly to Refuge Pointe, Arathi |goto Arathi Highlands,45.8,46.1,0.5 |noway |c
	step //107
		goto Arathi Highlands,50.0,44.8
		.talk Arathi Flame Warden##25887
		..accept Honor the Flame##11804 |instant
	step //108
		goto Arathi Highlands,73.9,41.9
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11764 |instant
	step //109
		goto Arathi Highlands,45.7,46.1
		.talk Cedrik Prose##2835
		.' Fly to Southshore, Hillsbrad |goto Hillsbrad Foothills,49.4,52.1,0.5 |noway |c
	step //110
		goto Hillsbrad Foothills,50.4,47.6
		.talk Hillsbrad Flame Warden##25901
		..accept Honor the Flame##11819 |instant
	step //111
		goto Hillsbrad Foothills,58.3,25.1
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11776 |instant
	step //112
		'Go north to Alterac Mountains |goto Alterac Mountains |noway |c
	step //113
		'Go northeast to Western Plaguelands |goto Western Plaguelands |noway |c
	step //114
		goto Western Plaguelands,43.5,82.3
		.talk Western Plaguelands Flame Warden##25909
		..accept Honor the Flame##11827 |instant
	step //115
		goto Western Plaguelands,42.9,85.1
		.talk Bibilfaz Featherwhistle##12596
		.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
	step //116
		goto The Hinterlands,14.3,50.1
		.talk The Hinterlands Flame Warden##25908
		..accept Honor the Flame##11826 |instant
	step //117
		goto The Hinterlands,76.7,74.4
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11784 |instant
	step //118
		goto The Hinterlands,11.1,46.2
		.talk Guthrum Thunderfist##8018
		.' Fly to Southshore, Hillsbrad |goto Hillsbrad Foothills,49.4,52.1,0.5 |noway |c
	step //119
		'Go west to Silverpine Forest |goto Silverpine Forest |noway |c
	step //120
		goto Silverpine Forest,49.6,38.6
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11580 |instant
	step //121
		'Go northeast to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //122
		goto Tirisfal Glades,57.0,51.7
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11786 |instant
	step //123
		'Go south to Undercity |goto Undercity |noway |c
	step //124
		goto Undercity,67.9,8.3
		.' Click the Flame of Undercity |tip It's a huge blue bonfire.
		.collect Flame of Undercity##23181 |n
		.' Click the Flame of Undercity in your bags |use Flame of Undercity##23181
		..accept Stealing Undercity's Flame##9326 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //125
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step //126
		'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
	step //127
		goto Western Plaguelands,69.3,49.7
		.talk Frax Bucketdrop##37888
		.' Fly to Light's Hope Chapel, Eastern Plaguelands |goto Eastern Plaguelands,75.7,53.3,0.5 |noway |c
	step //128
		goto Eastern Plaguelands,54.8,8.5 |n
		.' Go inside the huge swirling portal to the Ghostlands |goto Ghostlands |noway |c
	step //129
		goto Ghostlands,47.0,25.9
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11774 |instant
	step //130
		'Go north to Eversong Woods |goto Eversong Woods |noway |c
	step //131
		goto Eversong Woods,46.4,50.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11772 |instant
	step //132
		'Go east to Silvermoon City |goto Silvermoon City |noway |c
	step //133
		goto Silvermoon City,69.0,43.4
		.' Click the Flame of Silvermoon |tip It's a huge blue bonfire.
		.collect Flame of Silvermoon##35568 |n
		.' Click the Flame of Silvermoon in your bags |use Flame of Silvermoon##35568
		..accept Stealing Silvermoon's Flame##11935 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step //134
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step //135
		'Go south to the Ghostlands |goto Ghostlands |noway |c
	step //136
		goto Ghostlands,52.0,97.8 |n
		.' Go inside the huge swirling portal to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
	step //137
		goto Eastern Plaguelands,75.8,53.4
		.talk Khaelyn Steelwing##12617
		.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
	step //138
		goto Ironforge,63.8,25.3
		.talk Festival Loremaster##16817
		..turnin Stealing the Undercity's Flame##9326
		..turnin Stealing Silvermoon's Flame##11935
		..accept A Thief's Reward##9365 |instant
	step //139
		goto Ironforge,27.3,7.0 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step //140
		'Go inside the big green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step //141
		goto Hellfire Peninsula,62.2,58.3
		.talk Hellfire Peninsula Flame Warden##25900
		..accept Honor the Flame##11818 |instant
	step //142
		goto Hellfire Peninsula,57.2,41.8
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11775 |instant
	step //143
		goto Netherstorm,32.3,68.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11799 |instant
	step //144
		goto Netherstorm,31.2,62.7
		.talk Netherstorm Flame Warden##25913
		..accept Honor the Flame##11830 |instant
	step //145
		goto Blade's Edge Mountains,50.0,59.0
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11767 |instant
	step //146
		goto Blade's Edge Mountains,41.6,65.9
		.talk Blade's Edge Flame Warden##25889
		..accept Honor the Flame##11807 |instant
	step //147
		goto Zangarmarsh,35.6,51.8
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11787 |instant
	step //148
		goto Zangarmarsh,68.8,52.0
		.talk Zangarmarsh Flame Warden##25912
		..accept Honor the Flame##11829 |instant
	step //149
		goto Nagrand,51.1,34.0
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11778 |instant
	step //150
		goto Nagrand,49.6,69.5
		.talk Nagrand Flame Warden##25903
		..accept Honor the Flame##11821 |instant
	step //151
		goto Terokkar Forest,51.9,43.2
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11782 |instant
	step //152
		goto Terokkar Forest,54.1,55.5
		.talk Terokkar Forest Flame Warden##25907
		..accept Honor the Flame##11825 |instant
	step //153
		goto Shadowmoon Valley,33.5,30.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##11779 |instant
	step //154
		goto Shadowmoon Valley,39.6,54.6
		.talk Shadowmoon Valley Flame Warden##25905
		..accept Honor the Flame##11823 |instant
	step //155
		goto Shattrath City,55.8,36.6 |n
		.' Click the Shattrath Portal to Stormwind |goto Stormwind City |noway |c
	step //156
		goto Stormwind City,18.2,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step //157
		goto Borean Tundra,55.1,20.0
		.talk Borean Tundra Flame Warden##32801
		..accept Honor the Flame##13485 |instant
	step //158
		goto Borean Tundra,51.1,11.8
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13441 |instant
	step //159
		goto Sholazar Basin,48.1,66.4
		.talk Sholazar Basin Flame Warden##32802
		..accept Honor the Flame##13486 |instant
	step //160
		goto Sholazar Basin,47.3,61.5
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13450 |instant
	step //161
		goto Dragonblight,38.5,48.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13451 |instant
	step //162
		goto Dragonblight,75.3,43.8
		.talk Dragonblight Flame Warden##32803
		..accept Honor the Flame##13487 |instant
	step //163
		goto Crystalsong Forest,78.2,75.0
		.talk Crystalsong Forest Flame Warden##32807
		..accept Honor the Flame##13491 |instant
	step //164
		goto Crystalsong Forest,80.4,52.7
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13457 |instant
	step //165
		goto The Storm Peaks,40.4,85.6
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13455 |instant
	step //166
		goto The Storm Peaks,41.4,86.7
		.talk Storm Peaks Flame Warden##32806
		..accept Honor the Flame##13490 |instant
	step //167
		goto Zul'Drak,40.4,61.3
		.talk Zul'Drak Flame Warden##32808
		..accept Honor the Flame##13492 |instant
	step //168
		goto Zul'Drak,43.3,71.3
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13458 |instant
	step //169
		goto Grizzly Hills,19.1,61.5
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13454 |instant
	step //170
		goto Grizzly Hills,33.9,60.5
		.talk Grizzly Hills Flame Warden##32805
		..accept Honor the Flame##13489 |instant
	step //171
		goto Howling Fjord,48.4,13.4
		.' Click the Horde Bonfire |tip It's a huge bonfire.
		..accept Desecrate this Fire!##13453 |instant
	step //172
		goto Howling Fjord,57.8,16.1
		.talk Howling Fjord Flame Warden##32804
		..accept Honor the Flame##13488 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Midsummer Fire Festival (June 21st - July 5th)\\Midsummer Fire Festival Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
	startlevel 80
	step //1
		'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
		.' Skip to the next step in the guide
	step //2
		goto Teldrassil,56.1,92.2
		.talk Earthen Ring Elder##26221
		..' Queue for The Frost Lord Ahune battle.
		..' Click Find Group
		..from Lord Ahune##25740
		.' Complete the Ice the Frost Lord Achievement |achieve 263
	step //3
		goto Teldrassil,56.0,92.2
		.talk Midsummer Supplier##26123
		.buy 15 Juggling Torch##34599
		.buy 1 Mantle of the Fire Festival##23324
		.buy 1 Vestment of Summer##34685
		.buy 1 Sandals of Summer##34683
	step //4
		goto Teldrassil,56.0,91.5
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
		'Go inside the pink portal to Darnassus |goto Darnassus |noway |c
	step //7
		goto Darnassus,40.5,81.7 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step //8
		goto Blasted Lands,65.5,24.3
		.talk Alexandra Constantine##8609
		.' Fly to Stormwind, Ewlynn |goto Stormwind City,71.0,72.9,0.5 |noway |c
	step //9
		goto Stormwind City,18.2,25.5 |n
		.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
	step //10
		goto Borean Tundra,59.0,68.3
		.talk Tomas Riverwell##26879
		.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
	step //11
		goto Dalaran,36.8,44.1
		.' Use your 40 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is the place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
		.' Complete the Torch Juggler Achievement |achieve 272
	step //12
		'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Operation Gnomeregan Pre-Cataclysm Event",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Operation Gnomeregan Pre-Cataclysm event.
	step //1
		goto Ironforge,68.7,49.0
		.talk High Tinker Mekkatorque##7937
		..accept A Few Good Gnomes##25229
	step //2
		goto 67.6,51.5
		.' Use your Motivate-a-Tron on Gnome Citizens |use Motivate-a-Tron##52566
		.' Motivate 5 Gnomes |q 25229/1
	step //3
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //4
		goto Dun Morogh,50.2,48.4
		.' Stand next to Captain Tread Sparknozzle
		.' Bring 5 Motivated Gnomes to Captain Tread Sparknozzle |q 25229/2
	step //5
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin A Few Good Gnomes##25229
		..accept Basic Orders##25199
	step //6
		goto 49.5,47.1
		.' Target Drill Sergeant Steakcrank
		.' Salute the Drill Sergeant when he tells you to |script DoEmote("SALUTE") |q 25199/1
		.' Roar with the Drill Sergeant when he tells you to |script DoEmote("ROAR") |q 25199/2
		.' Cheer with the Drill Sergeant when he tells you to |script DoEmote("CHEER") |q 25199/3
		.' Dance with the Drill Sergeant when he tells you to |script DoEmote("DANCE") |q 25199/4
	step //7
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin Basic Orders##25199
		..accept In and Out##25285
	step //8
		goto 50.2,48.6
		.' Click the Ejector Mechano-Tank |tip It looks like an insect machine.
		.' Use the Eject! ability on your hotbar
		.' Test the Ejection System |q 25285/1
	step //9
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin In and Out##25285
		..accept One Step Forward...##25289
	step //10
		goto 50.1,48.2
		.' Click the Scuttling Mechano-Tank |tip It looks like an insect machine.
		.' Use the abilities on your hotbar
		.' Test the Left Leg Servos 3 Times |q 25289/1
		.' Test the Right Leg Servos 3 Times |q 25289/2
		.' Test the Evasive Maneuver System 3 Times |q 25289/3
		.' Use the Eject ability on your hotbar to get out of the vehicle |outvehicle |q 25289
	step //11
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin One Step Forward...##25289
		..accept Press Fire##25295
	step //12
		goto 50.1,47.7
		.talk Pilot Muzzlesprock##39386
		..accept Vent Horizon##25212
	step //13
		goto 50.1,47.8
		.' Click 'Thunderflash' |tip It's a helicopter.
		..' Board the Flying Machine
		.' Use your Radiageigatron on the big vents on the side of the mountain, with green smoking coming out of them |use Radiageigatron##52541
		.' Deploy 3 Radiageigatrons at Gnomeregan Vents |q 25212/1
	step //14
		goto 50.1,47.7
		.talk Pilot Muzzlesprock##39386
		..turnin Vent Horizon##25212
	step //15
		goto 50.4,47.6
		.' Click the Shooting Mechano-Tank |tip It looks like an insect machine.
		.' Control the Shooting Mechano-Tank |invehicle |q 25295
	step //16
		goto 50.6,47.8
		.' Use the Shoot ability in your hotbar while facing the targets
		.' Test the Weapon System 3 Times |q 25295/1
		.' Use the Eject ability on your hotbar to get out of the vehicle |outvehicle |q 25295
	step //17
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin Press Fire##25295
	step //18
		goto 49.3,48.3
		.talk Toby Zeigear##39678
		..accept Prepping the Speech##25283
	step //19
		goto 49.1,48.0
		.' Use your Gnomish Playback Device on Milli Featherwhistle |use Gnomish Playback Device##52709
		.' Perform the Speech to Milli Featherwhistle |q 25283/2
	step //20
		goto 45.9,49.4
		.' Use your Gnomish Playback Device on Ozzie Togglevolt |use Gnomish Playback Device##52709
		.' Perform the Speech to Ozzie Togglevolt |q 25283/1
	step //21
		goto 47.3,53.8
		.' Use your Gnomish Playback Device on Tog Rustsprocket |use Gnomish Playback Device##52709
		.' Perform the Speech to Tog Rustsprocket |q 25283/3
	step //22
		goto 49.3,48.3
		.talk Toby Zeigear##39678
		..turnin Prepping the Speech##25283
		..accept Words for Delivery##25286
	step //23
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..turnin Words for Delivery##25286
	step //24
		'From this point on, you need to be at least level 75.
	step //25
		goto 50.2,48.4
		.talk Captain Tread Sparknozzle##39675
		..accept Words for Delivery##25287
	step //26
		goto 50.1,47.8
		.' Click 'Thunderflash' |tip It's a helicopter.
		..' Take me to Mekkatorque!
		.' You will land near Gnomeregan |goto 26.0,47.4,0.5 |noway |c |q 25287
	step //27
		goto 25.9,47.1
		.talk High Tinker Mekkatorque##39271
		..turnin Words for Delivery##25287
		..accept Operation: Gnomeregan##25393
	step //28
		'Use your Gnomeregan Pride |use Gnomeregan Pride##54651
		.' Transform into a Gnomeregan Infantry
		.' Wait until the battle begins
		.' Follow High Tinker Mekkatorque through the battle and fight for Gnomeregan!
		.' Regain the Surface of Gnomeregan |q 25393/1
	step //29
		goto Ironforge,68.7,49.0
		.talk High Tinker Mekkatorque##7937
		..turnin Operation: Gnomeregan##25393
	step //30
		'Congratulations, you've taken back Gnomeregan for the Gnomes!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Harvest Festival",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the Hervest Festival event.
	step //1
		goto Dun Morogh,52.6,36.0
		.talk Wagner Hammerstrike##15011
		..accept Honoring a Hero##8149
	step //2
		goto Ironforge,55.5,47.8
		.talk Gryth Thurden##1573
		'Fly to Chillwind Camp|goto Western Plaguelands,43.0,84.3,1.5|noway|c
	step //3
		goto 52.0,83.4
		.' Use Uther's Tribute in front of Uther's statue |use Uther's Tribute##19850
		.' Place a tribute at Uther's Tomb |q 8149/1
	step //4
		goto 42.9,85.1
		.talk Bibilfaz Featherwhistle##12596
		'Fly to Ironforge|goto Ironforge|noway|c
	step //5
		goto Dun Morogh,52.6,36.0
		.talk Wagner Hammerstrike##15011
		..turnin Honoring a Hero##8149
	step //6
		goto 52.8,36.6
		.' You can click special food items on the table.
		.' In 2 days You will also get an item called Bounty of the Harvest in the mail.
	step //7
		'Congratulations, you've completed the Harvest Festival
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Brewfest (September 20th - October 6th)\\Brewfest Dailies",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the daily quests for the Brewfest event.
	step //1
		'You will only be able to do 1 of the first 2 dailies in this guide, per day. |tip Quests "Bark for the Barleybrews!" or "Bark for the Thunderbrews!".
		.' Skip to the next step in the guide
	step //2
		goto Dun Morogh,49.0,39.8
		.talk Becan Barleybrew##23627
		..accept Bark for the Barleybrews!##11293 |daily
	step //3
		goto Dun Morogh,49.5,38.7
		.talk Daran Thunderbrew##23628
		..accept Bark for the Thunderbrews!##11294 |daily
	step //4
		'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
	step //5
		'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
	step //6
		goto Ironforge,31.7,66.7
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Bank |q 11293/1
	step //7
		goto 61.2,80.0
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Military Ward |q 11293/2
	step //8
		goto 65.3,24.4
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Hall of Explorers |q 11293/3
	step //9
		goto 29.5,14.2
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Mystic Ward |q 11293/4
	step //10
		goto Ironforge,31.7,66.7
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark Outside the Bank |q 11294/1
	step //11
		goto 61.2,80.0
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Military Ward |q 11294/2
	step //12
		goto 65.3,24.4
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Hall of Explorers |q 11294/3
	step //13
		goto 29.5,14.2
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
		.' Go to this spot
		.' Bark in the Mystic Ward |q 11294/4
	step //14
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step //15
		goto Dun Morogh,49.0,39.8
		.talk Becan Barleybrew##23627
		..turnin Bark for the Barleybrews!##11293
	step //16
		goto Dun Morogh,49.5,38.7
		.talk Daran Thunderbrew##23628
		..turnin Bark for the Thunderbrews!##11294
	step //17
		goto 48.9,38.8
		.' Click the Dark Iron Mole Machine Wreckage |tip It looks like a big metal gear laying on ground in the middle of the festival.  It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
		..accept This One Time, When I Was Drunk...##12020 |daily
	step //18
		goto 47.6,39.9
		.talk Boxey Boltspinner##27215
		..turnin This One Time, When I Was Drunk...##12020
	step //19
		goto 46.6,40.3
		.talk Neill Ramstein##23558
		..' Ask him if he still needs some help shipping kegs from Kharanos, then offer to work |tip This isn't actually a quest, but you can help him one time per day.
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
		.' On your Ram, run to Flynn Firebrew at 45.9,52.8 |tip Flynn Firebrew will throw you a keg when you get close.
		.' Once you have a keg, run back and turn it in to Pol Amberstill at 46.4,40.3 |tip Just get near him and you will throw the keg to him.
		.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Events\\Brewfest (September 20th - October 6th)\\Brewfest Achievements",[[
	author support@zygorguides.com
	description This guide section will walk you through completing the achievements for the Brewfest event.
	step //1
		goto Dun Morogh,48.5,40.0
		.talk Arlen Lochlan##23522
		.buy The Essential Brewfest Pretzel##33043 |achieve 1185
	step //2
		'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
		.' Eat The Essential Brewfest Pretzels |achieve 1185/7
	step //3
		goto 49.3,39.5
		.talk Anne Summers##23521
		.buy Spiced Onion Cheese##34065 |achieve 1185
	step //4
		'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
		.' Eat the Spiced Onion Cheese |achieve 1185/4
	step //5
		goto 48.9,38.1
		.talk Keiran Donoghue##23481
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
		goto 49.3,39.6
		.talk Belbi Quikswitch##23710
		.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
	step //8
		'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
		.' Make your Mount Festive for Brewfest! |achieve 303
	step //9
		'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
		.collect 200 Brewfest Prize Token##37829 |achieve 2796
	step //10
		goto 49.3,39.6
		.talk Belbi Quikswitch##23710
		.buy "Brew of the Month" Club Membership Form##37571 |n
		.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37571
		..accept Brew of the Month Club##12278
	step //11
		'Go inside Ironforge |goto Ironforge |noway |c
	step //12
		goto Ironforge,18.8,53.1
		.talk Larkin Thunderbrew##27478
		..turnin Brew of the Month Club##12278
	step //13
		'Congratulations, you are a Brewmaster!
]])

ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
