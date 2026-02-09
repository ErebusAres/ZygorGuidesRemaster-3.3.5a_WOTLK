local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Exploration Achievements\\Kalimdor Progress",[[
    description This guide section displays the entire progress for Kalimdor.
    author ErebusAres
    next Corey's Achievement Guides\\Explore Kalimdor\\Explore Teldrassil
    step //1
        .'Explore Kalimdor Total Progress |achieve 43
    step //2
        .'Progress for Durotar |achieve 728
        .'Progress for Teldrassil |achieve 842
        .'Progress for The Barrens |achieve 750
        .'Progress for Bloodmyst Isle |achieve 861
        .'Progress for Thousand Needles |achieve 846
        .'Progress for Desolace |achieve 848
        .'Progress for Feralas |achieve 849
        .'Progress for Azshara |achieve 852
        .'Progress for Un'Goro Crater |achieve 854        
        .'Progress for Silithus |achieve 856
    step //3
        .'Progress for Mulgore |achieve 736
        .'Progress for Azuremyst Isle |achieve 860
        .'Progress for Darkshore |achieve 844
        .'Progress for Ashenvale |achieve 845
        .'Progress for Stonetalon Mountains |achieve 847
        .'Progress for Dustwallow Marsh |achieve 850
        .'Progress for Tanaris Desert |achieve 851
        .'Progress for Felwood |achieve 853
        .'Progress for Moonglade |achieve 855
        .'Progress for Winterspring |achieve 857

    ]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Teldrassil",[[
	author ErebusAres
    next Corey's Achievement Guides\\Explore Kalimdor\\Explore Darkshore
	step //1
        .'Unlock Rut'theran Village|achieve 842/6|goto Teldrassil,55,91
        .'Begin in Darnassus|goto Darnassus|noway|c
    step //2
        goto Darnassus,25,55
        .'Unlock Darnassus|achieve 842/11
    step //3
        goto Teldrassil,40,65
        .'Unlock Pools of Arlithrien|achieve 842/6
    step //4
        goto Teldrassil,43,74
        .'Unlock Gnarlpine Hold|achieve 842/4
    step //5
        goto Teldrassil,54,68
        .'Unlock Lake Al'Ameth|achieve 842/5
    step //6
        goto Teldrassil,66,57
        .'Unlock Starbreeze Village|achieve 842/7
    step //7
        goto Teldrassil,60,43
        .'Unlock Shadowglen|achieve 842/1
    step //8
        goto Teldrassil,55,58
        .'Unlock Dolanaar|achieve 842/3
    step //9
        goto Teldrassil,46,51
        .'Unlock Ban'ethil Hollow|achieve 842/2
    step //10            
        goto Teldrassil,42,40
        .'Unlock Wellspring Lake|achieve 842/9
    step //11
        goto Teldrassil,38,30
        .'Unlock The Oracle Glade|achieve 842/8
    step //12
        .'Return to Darnassus|goto Darnassus|noway|c
    step //13
        .'Go through the pink portal towards Rut'theran Village|goto Darnassus,30.8,41.4
    step //14
        .'Unlock Rut'theran Village|achieve 842/6|goto Teldrassil,55,91
    step //15
        goto Teldrassil,58.4,94
        .talk Vesprystus##3838
        ..fpath Rut'theran Village
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Darkshore",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Ashenvale
    step //3
        .'Boat to Darkshore|goto Teldrassil,54.9,96.8|or
        .'Fly to Darkshore|goto Darkshore|noway|c|or
    step //4
        goto Darkshore,38,44
        .'Arrive and Unlock Auberdine|achieve 844/1
    step //5
        goto Darkshore,36.3,45.6
        .talk Caylais Moonfeather##3841
        ..fpath Auberdine
    step //5
        goto Darkshore,44,36
        .'Unlock Bashal'Aran|achieve 844/5
    step //6
        goto Darkshore,52,31
        .'Unlock Cliffspring River|achieve 844/4
    step //7
        goto Darkshore,56,26
        .'Unlock Tower of Althalaxx|achieve 844/3
    step //8
        goto Darkshore,58,20
        .'Unlock Ruins of Mathystra|achieve 844/2
    step //9
        goto Darkshore,43,57
        .'Unlock Ameth'Aran|achieve 844/6
    step //10
        goto Darkshore,43,77
        .'Unlock Grove of the Ancients|achieve 844/7
    step //11
        goto Darkshore,35,85
        .'Unlock Remtravel's Excavation|achieve 844/8
    step //12
        goto Darkshore,38,86
        .'Unlock The Master's Glaive|achieve 844/9
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Ashenvale",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Felwood
    step //1
        .'Head southeast to Ashenvale|goto Ashenvale|noway|c
    step //2
        .'Unlock Maestra's Post|achieve 845/3|goto Ashenvale,27,36
    step //3
        .'Unlock The Zoram Strand|achieve 845/1|goto Ashenvale,14,23
    step //4
        .'Unlock Lake Falathim|achieve 845/2|goto Ashenvale,20,42
    step //5
        .'Unlock The Shrine of Aessina|achieve 845/5|goto Ashenvale,22,53
    step //6
        .'Unlock Fire Scar Shrine|achieve 845/6|goto Ashenvale,26,64
    step //7
        .'Unlock Astranaar|achieve 845/7|goto Ashenvale,36,50
    step //8
        goto 34.4,48.0
        .talk Daelyshia##4267
        ..fpath Astranaar
    step //9
        .'Unlock Thistlefur Village|achieve 845/4|goto Ashenvale,36,37
    step //10
        .'Unlock Iris Lake|achieve 845/8|goto Ashenvale,46,46
    step //11
        .'Unlock The Ruins of Stardust|achieve 845/9|goto Ashenvale,33,67
    step //12
        .'Unlock Mystral Lake|achieve 845/10|goto Ashenvale,49,69
    step //13
        .'Unlock Fallen Sky Lake|achieve 845/13|goto Ashenvale,66,82
    step //14
        .'Unlock Fellfire Hill|achieve 845/18|goto Ashenvale,89,77
    step //15
        .'Unlock Warsong Lumber Camp|achieve 845/17|goto Ashenvale,90,58
    step //16
        .'Unlock Bough Shadow|achieve 845/16|goto Ashenvale,93,35
    step //17
        goto 85.1,43.4
        .talk Suralais Fairwind##22935
        ..fpath Forest Song
    step //18
        .'Unlock Satyrnaar|achieve 845/15|goto Ashenvale,80,49
    step //19
        .'Unlock Splintertree Post|achieve 845/14|goto Ashenvale,73,62
    step //20
        .'Unlock Raynewood Retreat|achieve 845/12|goto Ashenvale,61,51
    step //21
        .'Unlock The Howling Vale|achieve 845/11|goto Ashenvale,54,36|tip Go up the path and enter the entrance of the cave at the top.
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Felwood",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Moonglade
    step //1
        .'Just stick to the road during most of this journey and deviate only when necessary.
        .'Unlock Morlos'Aran|achieve 853/12|goto Felwood,56,87
    step //2
        .'Unlock Deadwood Village|achieve 853/11|goto Felwood,48,90
    step //3
        .'Unlock Emerald Sanctuary|achieve 853/10|goto Felwood,51,81
    step //4
        goto Felwood,51.5,82.3
        .talk Gorrim##22931
        ..fpath Emerald Sanctuary
    step //5
        .'Unlock Jadefire Glen|achieve 853/9|goto Felwood,39,82|tip You can catch this point on the hill behind a large tree, if you're lucky.
    step //6
        .'Unlock Ruins of Constellas|achieve 853/8|goto Felwood,37,68|tip Go back to the road, follow the road north, I was able to peak into the west when i arrived in line with this point to nab it.
    step //7
        .'Unlock Jaedenar|achieve 853/7|goto Felwood,35,60
    step//8
        .'Unlock Bloodvenom Falls|achieve 853/6|goto Felwood,41,47
    step //9
        .'Unlock Shatter Scar Vale|achieve 853/5|goto Felwood,42,40
    step //10
        .'Unlock Jadefire Run|achieve 853/4|goto Felwood,42,16
    step //11
        .'Unlock Irontree Woods|achieve 853/3|goto Felwood,48,23
    step //12
        .'Unlock Talonbranch Glade|achieve 853/2|goto Felwood,63,22
    step //13
        goto Felwood,62.5,24.2
        .talk Mishellena##12578
        ..fpath Talonbranch Glade
    step //14
        .'Unlock Felpaw Village|achieve 853/1|goto Felwood,63,10|tip After leaving the flight path, follow the path back north and turn right onto the main road and follow it north.
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Moonglade",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Winterspring
    step //1
        .'Continue following the road around towards the north towards Moonglade|goto Felwood,64.9,8.3|tip Through the Bear Head shaped cave.
    step //2
        .'Follow the path straight forward until you cross over the Tree Trunk bridge and wrap around to the right down the stairs.|goto Felwood,66,3
    step //3
        .'Continue down the path towards Moonglade|goto Moonglade|noway|c
    step //4
        .'Unlock Lake Elune'ara|achieve 855/1|goto 37.6,53.4
    step //5
        only Druid
        goto Moonglade,44.1,45.3|tip Continue following the path, into the building, and across the bridge.
        .talk Silva Fil'naveth##11800
        ..fpath Moonglade
    step //6
        goto Moonglade,48.1,67.4
        .talk Sindrayl##10897
        ..fpath Moonglade
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Winterspring",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Azshara
    step //1
        .'Return back into the cave.|goto Felwood|noway|c
    step //2
        .'Return to the Tree Trunk bridge, but instead turn right instead of crossing the bridge.|goto Felwood,66,3
    step //3
        .'Continue to Winterspring|goto Winterspring|noway|c|tip Just follow the road until you need to deviate for the points.
    step //4
        .'Unlock Frostfire Hot Springs|achieve 857/1|goto Winterspring,30,37
    step //5
        .'Unlock Timbermaw Post|achieve 857/2|goto Winterspring,40,42
    step //6
        .'Unlock Lake Kel'Theril|achieve 857/3|goto Winterspring,53,41
    step //7
        .'Unlock Starfall Village|achieve 857/4|goto Winterspring,50,28
    step //8
        .'Unlock Frostsaber Rock|achieve 857/11|goto Winterspring,49,11
    step //9
        .'Go to the Tunnel Entrance for The Hidden Grove|goto Winterspring,65,18.8|tip Leave the main road, heading East. The entrance is on the south side of the mountain, far east.
    step //12
        .'Unlock The Hidden Grove|achieve 857/10|goto Winterspring,63,16
    step //13
        .'Unlock Winterfall Village|achieve 857/9|goto Winterspring,68,36|tip Just run south, don't bother returning to the road, yet.
    step //14
        .'Unlock Everlook|achieve 857/6|goto Winterspring,61,37|tip Head SouthWest towards town.
    step //15
        goto Winterspring,62.3,36.6
        .talk Maethrya##11138
        ..fpath Everlook
    step //16
        .'Unlock Ice Thistle Hills|achieve 857/8|goto Winterspring,68,43|tip Keep to the Main roads again.
    step //17
        .'Unlock Mazthoril|achieve 857/5|goto Winterspring,57,54
    step //18
        .'Unlock Owl Wing Thicket|achieve 857/7|goto Winterspring,65,60|tip Enter the "path" to the left of Ranshalla.
    step //19
        .'Unlock Frostwhisper Gorge|achieve 857/12|goto Winterspring,61,68|tip You should get this point while crossing the bridge.
    step //20
        .'Unlock Darkwhisper Gorge|achieve 857/13|goto Winterspring,58,80
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Azshara",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore The Barrens
    step //1
        .'Fly to Forest Song, Ashenvale|goto Ashenvale|noway|c
    step //2
        .'Travel East to Azshara|goto Azshara|noway|c
    step //3
        goto Azshara,11.9,77.6
        .talk Jarrodenus##12577
        ..fpath Talrendis Point
    step //4
        .'Unlock Shadowsong Shrine|achieve 852/13 |goto Azshara,13,74
    step //5
        .'Go up the path starting here|goto Azshara,26.7,61.1
    step //6
        .'Unlock Forlorn Ridge|achieve 852/19 |goto Azshara,28,9
    step //7
        .'Unlock Lake Mennar|achieve 852/17 |goto Azshara,40,80|tip Stay on the North side of the Forlorn Ridge's Mountain. Then, head South through the square arch.
    step //8
        .'Unlock The Ruined Reaches|achieve 852/18 |goto Azshara,51,88|tip Take care not to fall off the cliff. Hug the edge and you will unlock the region.
    step //9
        .'Path North to this point|goto Azshara,51,84
    step //10
        .'Cross the Bridge and continue East across the second Bridge|goto Azshara,62.5,81.9
    step //11
        .'Unlock Ravencrest Monument|achieve 852/16 |goto Azshara,72,86|tip Follow the crevace around the North side, Head East and Cross the bridge.
    step //10
        .'Unlock Southridge Beach|achieve 852/15 |goto Azshara,47,66
    step //11
        .'Unlock The Shattered Strand|achieve 852/2 |goto Azshara,45,52
    step //12
        .'Unlock Bay of Storms|achieve 852/1 |goto Azshara,56,59
    step //13
        .'Unlock Temple of Arkkoran|achieve 852/6 |goto Azshara,76,43
    step //14
        .'Unlock Tower of Eldara|achieve 852/5 |goto Azshara,89,33|tip Head down the beach towards the tower by the water.
    step //15
        .'Head NorthWest up the Land ramp|goto Azshara,84,27
    step //16
        .'Unlock Bitter Reaches|achieve 852/4 |goto Azshara,73,21
    step //17
        .'Unlock Thalassian Base Camp|achieve 852/8 |goto Azshara,56,29 
    step //18
        .'Unlock Jagged Reef|achieve 852/3 |goto Azshara,52,10|tip Be careful not to fall off the cliff. Hug the edge and you will unlock the region.
    step //19
        .'Unlock Legash Encampment|achieve 852/7 |goto Azshara,51,19
    step //20
        .'Unlock Ursolan|achieve 852/9 |goto Azshara,44,27
    step //21
        .'Unlock Timbermaw Hold|achieve 852/10 |goto Azshara,38,33 
    step //22
        .'Unlock Ruins of Eldarath|achieve 852/14 |goto Azshara,36,53
    step //23
        .'Unlock Valormok|achieve 852/11 |goto Azshara,21,51
    step //24
        .'Unlock Haldarr Encampment|achieve 852/12 |goto Azshara,20,61
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore The Barrens",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Durotar
    step //1
        .'Travel or Fly to The Barrens|goto The Barrens|noway|c
    step 
        .'Unlock The Mor'shan Rampart|achieve 750/3 |goto The Barrens,49,5
    step
        .'Unlock Dreadmist Peak|achieve 750/4 |goto The Barrens,47,17
    step
        .'Unlock The Dry Hills|achieve 750/5 |goto The Barrens,39,14
    step
        .'Unlock The Forgotten Pools|achieve 750/6 |goto The Barrens,45,22
    step
        .'Unlock Honor's Stand|achieve 750/7 |goto The Barrens,38,28|tip Head to towards the Watchtower South of the Mountain.
    step
        .'Unlock Lushwater Oasis|achieve 750/17 |goto The Barrens,46,39
    step
        .'Unlock Agama'gor|achieve 750/18 |goto The Barrens,43,48
    step
        .'Unlock Camp Taurajo|achieve 750/20 |goto The Barrens,45,60
    step
        .'Unlock Field of Giants|achieve 750/21 |goto The Barrens,47,70
    step
        .'Unlock Blackthorn Ridge|achieve 750/22 |goto The Barrens,43,79
    step
        .'Unlock Bael Modan|achieve 750/23 |goto The Barrens,47,84
    step
        .'Unlock Razorfen Downs|achieve 750/25 |goto The Barrens,47,90
    step
        .'Unlock Razorfen Kraul|achieve 750/24 |goto The Barrens,41,86
    step
        .'Unlock Bramblescar|achieve 750/19 |goto The Barrens,51,54
    step
        .'Unlock The Stagnant Oasis|achieve 750/12 |goto The Barrens,55,42
    step
        .'Unlock Raptor Grounds|achieve 750/16 |goto The Barrens,57,53
    step
        .'Unlock Northwatch Hold|achieve 750/15 |goto The Barrens,60,54
    step
        .'Unlock The Merchant Coast|achieve 750/14 |goto The Barrens,63,43|tip Follow the 'path' around the South side of the ridge towards the coast, then head North when able.
    step
        .'Unlock Ratchet|achieve 750/13 |goto The Barrens,62,37|tip Keep going North, past the large ship, into the city of Ratchet.
    step
        goto The Barrens,63.1,37.2
        .talk Bragok##16227
        ..fpath Ratchet
    step
        .'Unlock The Crossroads|achieve 750/11 |goto The Barrens,51,28|tip Leave the city via the Main road Follow it NorthWest.
    step
        .'Unlock Thorn Hill|achieve 750/10 |goto The Barrens,57,28|tip Keep to the North of the Mountains and enter Thorn Hill area.
    step
        .'Unlock Grol'dom Farm|achieve 750/8 |goto The Barrens,55,20
    step
        .'Unlock The Sludge Fen|achieve 750/2 |goto The Barrens,56,7|tip Keep to the West of the Farm and Continue Northward.
    step
        .'Unlock Boulder Lode Mine |achieve 750/1 |goto The Barrens,61,4|tip Keep Heading straight East until you reach the small road, then nab the Region.
    step
        .'Unlock Far Watch Post|achieve 750/9 |goto The Barrens,61,21|tip Follow the small road South to get this Region.
]]) 
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Durotar",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Dustwallow Marsh
    step
        .'Travel to Durotar|goto Durotar|noway|c
    step
        .'Unlock Razormane Grounds |achieve 728/7 |goto Durotar,41,45
    step
        .'Unlock Razor Hill |achieve 728/6 |goto Durotar,53,43
    step
        .'Unlock Tiragarde Keep |achieve 728/5 |goto Durotar,57,54
    step
        .'Unlock Sen'jin Village |achieve 728/2 |goto Durotar,55,74
    step
        .'Unlock Echo Isles |achieve 728/4 |goto Durotar,62,81|tip This should unlock halfway to the first set of small islands.
    step
        .'Unlock Kolkar Crag |achieve 728/3 |goto Durotar,48,78
    step
        .'Travel to the Entrance of Valley of Trials|goto Durotar,50.6,68.4|tip WARNING, WARNING, WARNING: This area is 65+
    step
        .'Unlock Valley of Trials |achieve 728/1 |goto Durotar,44,59|tip Just peek your head in and the Region should unlock.
    step
        .'Travel the road Back North|goto Durotar,52.6,45.4
    step
        .'Unlock Thunder Ridge |achieve 728/8 |goto Durotar,39,28|tip Follow the road West, then head North towards the Region.
    step
        .'Unlock Drygulch Ravine |achieve 728/9 |goto Durotar,53,23
    step
        .'Unlock Skull Rock |achieve 728/10 |goto Durotar,54,13
    step
        .'Prepare to Enter Orgrimmar |goto Durotar,45.7,13.3|tip WARNING WARNING WARNING: THIS AREA CONTAINS HIGH LEVEL HORDE ENEMIES! PROCEED WITH CAUTION.
    step
        .'Unlock Orgrimmar |achieve 728/11|tip Quickly run in and leave when you get the achievement.
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Dustwallow Marsh",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Mulgore
    step //1
        .'Travel to Dustwallow Marsh|goto Dustwallow Marsh|noway|c
    step //2
        .'Unlock The Quagmire|achieve 850/4|goto Dustwallow Marsh,41,51
    step //3
        .'Unlock The Den of Flame|achieve 850/5|goto Dustwallow Marsh,38,65
    step //4
        goto Dustwallow Marsh,42.8,72.4
        .talk Dyslix Silvergrub##23612
        ..fpath Mudsprocket
    step //5
        .'Unlock Wyrmbog|achieve 850/6|goto Dustwallow Marsh,52,73
    step //6
        .'Unlock Brackenwall Village|achieve 850/3|goto Dustwallow Marsh,35,30|tip You can return to the road, or go straight north through the marsh.
    step //7
        .'Unlock Witch Hill|achieve 850/2|goto Dustwallow Marsh,52,27
    step //8
        .'Unlock Alcaz Island|achieve 850/7|goto Dustwallow Marsh,72,19|tip You can get this Region by swimming nearly the entire way to the island.
    step //9
        .'Unlock Theramore Isle|achieve 850/1|goto Dustwallow Marsh,66,47|tip Return West to the beach and follow it around to the bridge into Theramore Isle.
    step //10
        goto Dustwallow Marsh,67.5,51.3
        .talk Baldruc##4321
        ..fpath Theramore Isle
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Mulgore",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Stonetalon Mtns
    step //1
        .'Travel to Mulgore|goto Mulgore|noway|c|or
        .'Fly to Ratchet, and head Southwest to Mulgore|goto The Barrens|noway|c|or
    step //2
        .'Arrive in Mulgore|goto Mulgore|noway|c
    step //3
        .'Unlock The Rolling Plains|achieve 736/5|goto Mulgore,61,67
    step //4
        .'Unlock Winterhoof Water Well|achieve 736/4|goto Mulgore,53,66
    step //5
        .'Unlock Bloodhoof Village|achieve 736/3|goto Mulgore,49,58
    step //6
        .'Unlock Red Cloud Mesa|achieve 736/1|goto Mulgore,39,82|tip You can get this Region by running up the hill in some places. Otherwise, you can run around to the Entrance.
    step //7
        .'Unlock Palemane Rock|achieve 736/2|goto Mulgore,34,62
    step //8
        .'Unlock Bael'Dun Digsite|achieve 736/10|goto Mulgore,32,48
    step //9
        .'Unlock Thunderhorn Water Well|achieve 736/9|goto Mulgore,44,45
    step //10
        .'Unlock Thunder Bluff|achieve 736/14|goto Mulgore,36,29|tip Head North to the city. Follow the path up the hill it should unlock before you reach the Elevators.
    step //11
        .'Unlock Wildmane Water Well|achieve 736/13|goto Mulgore,42,14|tip Keep to the west of Thunder Bluff and follow around to the North.
    step //12
        .'Unlock Windfury Ridge|achieve 736/12|goto Mulgore,52,11
    step //13
        .'Unlock Red Rocks|achieve 736/11|goto Mulgore,60,21
    step //14
        .'Unlock The Golden Plains|achieve 736/8|goto Mulgore,49,35
    step //15
        .'Unlock Ravaged Caravan|achieve 736/7|goto Mulgore,53,47
    step //16
        .'Unlock The Venture Co. Mine|achieve 736/6|goto Mulgore,62,48
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Stonetalon Mtns",[[ 
author ErebusAres 
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Desolace
    step //1
        .'Travel to Stonetalon Mountains|goto Stonetalon Mountains|noway|c 
    step //2
        .'Unlock Camp Aparaje |achieve 847/1 |goto Stonetalon Mountains,76,92|tip Stick to the roads and deviate when necessary.
    step //3
        .'Unlock Malaka'jin |achieve 847/3 |goto Stonetalon Mountains,72,93
    step //4
        .'Unlock Grimtotem Post |achieve 847/2 |goto Stonetalon Mountains,75,86 
    step //5
        .'Unlock Boulderslide Ravine |achieve 847/5 |goto Stonetalon Mountains,65,91
    step //6
        .'Unlock Sishir Canyon |achieve 847/6 |goto Stonetalon Mountains,54,75 
    step //7
        .'Unlock Windshear Crag |achieve 847/7 |goto Stonetalon Mountains,68,48 
    step //8
        .'Unlock Webwinder Path |achieve 847/4 |goto Stonetalon Mountains,57,66 
    step //9
        .'Unlock Sun Rock Retreat |achieve 847/8 |goto Stonetalon Mountains,49,60 
    step //10
        .'Unlock Mirkfallon Lake |achieve 847/10 |goto Stonetalon Mountains,48,40 
    step //11
        .'Unlock Stonetalon Peak |achieve 847/11 |goto Stonetalon Mountains,36,12 
    step //12
        goto Stonetalon Mountains,36.4,7.2
        .talk Teloren##4407
        ..fpath Stonetalon Peak
    step //13
        .'Unlock The Charred Vale |achieve 847/9 |goto Stonetalon Mountains,32,65 
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Desolace",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Feralas
    step //1
        .'Travel to Desolace|goto Desolace|noway|c
    step //2
        .'Unlock Tethris Aran|achieve 848/1|goto Desolace,54,13
    step //3
        .'Unlock Nijel's Point|achieve 848/2|goto Desolace,65,9
    step //4
        goto Desolace,64.7,10.5
        .talk Baritanas Skyriver##11138
        ..fpath Nijel's Point
    step //5
        .'Unlock Sargeron|achieve 848/3|goto Desolace,76,21
    step //6
        .'Unlock Thunder Axe Fortress|achieve 848/4|goto Desolace,55,28
    step //7
        .'Unlock Ethel Rethor|achieve 848/7|goto Desolace,38,28
    step //8
        .'Unlock Ranazjar Isle|achieve 848/15|goto Desolace,28,9|tip You have to nearly touch the land of this isle to unlock this Region.
    step //9
        .'Unlock Kormek's Hut|achieve 848/5|goto Desolace,62,39|tip Swim back to the mainland and head East along the road.
    step //10
        .'Unlock Kolkar Village|achieve 848/6|goto Desolace,73,48
    step //11
        .'Unlock Magram Village|achieve 848/13|goto Desolace,72,73
    step //12
        .'Unlock Shadowbreak Ravine|achieve 848/14|goto Desolace,79,77|tip Come in from the North, follow the "path" South then East into the Region.
    step //13
        .'Unlock Mannoroc Coven|achieve 848/12|goto Desolace,52,76
    step //14
        .'Unlock Kodo Graveyard|achieve 848/9|goto Desolace,50,57
    step //15
        .'Unlock Valley of Spears|achieve 848/8|goto Desolace,33,58|tip Go through the Archway to the West.
    step //16
        .'Unlock Shadowprey Village|achieve 848/10|goto Desolace,24,70|tip Follow the "Path" around North, Then South, Past the Meeting Stone.
        .'Note: This is a Horde Town, so be careful.|tip Hug the coast to avoid the guards.
    step //17
        .'Unlock Gelkis Village|achieve 848/11|goto Desolace,34,86
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Feralas",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Thousand Needles
    step //1
        .'Travel to Feralas|goto Feralas|noway|c
    step //2
        .'Unlock Ruins of Ravenwind |achieve 849/4 |goto Feralas,40,12
    step //3
        .'Unlock Dream Bough|achieve 849/1 |goto Feralas,51,9
    step //4
        .'Unlock Oneiros |achieve 849/3 |goto Feralas,54,16
    step //5
        .'Unlock The Twin Colossals |achieve 849/5 |goto Feralas,46,18
    step //6
        .'Unlock The Forgotten Coast |achieve 849/6 |goto Feralas,45,49|tip Follow the main road to the fork, and head West towards the dock.
    step //7
        .'Unlock Isle of Dread |achieve 849/16 |goto Feralas,34,78|tip Wait for the Boat, and sit right on the railing of the Port side of the boat.
    step //8
        .'Unlock Sardor Isle |achieve 849/15 |goto Feralas,29,49|tip Wait for the Boat to dock, Stay Mounted.
    step //9
        goto Feralas,30.2,43.3
        .talk Fyldren Moonfeather##8019
        ..fpath Feathermoon|tip If you're quick enough you can make it back to the boat in time.
    step //10
        .'Unlock Feral Scar Vale |achieve 849/8 |goto Feralas,54,56|tip Wait for the boat to dock, then follow the road to the next Region.
    step //11
        .'Unlock Frayfeather Highlands |achieve 849/9 |goto Feralas,54,69
    step //12
        .'Unlock Ruins of Isildien |achieve 849/10 |goto Feralas,59,69
    step //13
        .'Unlock Dire Maul |achieve 849/7 |goto Feralas,59,44
    step //14
        .'Unlock The Writhing Deep |achieve 849/11 |goto Feralas,75,61
    step //15
        .'Unlock Grimtotem Compound |achieve 849/13 |goto Feralas,69,40
    step //16
        .'Unlock Camp Mojache |achieve 849/12 |goto Feralas,75,42
    step //17
        .'Unlock Gordunni Outpost |achieve 849/14 |goto Feralas,75.2,34.6
    step //18
        .'Unlock Lower Wilds |achieve 849/2 |goto Feralas,84,46|tip Return to the main road, and follow it East.
    step //19
        goto Feralas,89.5,45.9
        .talk Thyssiana##4319
        ..fpath Thalanaar
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Thousand Needles",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Tanaris
    step //1
        .'Travel to Thousand Needles|goto Thousand Needles|noway|c
    step //2
        .'Unlock Highperch |achieve 846/9 |goto Thousand Needles,12,34    
    step //3
        .'Unlock Camp E'thok |achieve 846/8 |goto Thousand Needles,18,21
    step //4
        .'Unlock The Great Lift |achieve 846/1 |goto Thousand Needles,31,23
    step //5
        .'Unlock Darkcloud Pinnacle |achieve 846/2 |goto Thousand Needles,34,38
    step //6
        .'Unlock The Screeching Canyon |achieve 846/3 |goto Thousand Needles,37,41
    step //7
        .'Unlock Splithoof Crag |achieve 846/5 |goto Thousand Needles,40,37
    step //8
        .'Unlock Freewind Post |achieve 846/4 |goto Thousand Needles,45,50
    step //9
        .'Unlock Windbreak Canyon |achieve 846/6 |goto Thousand Needles,60,53
    step //10
        .'Unlock The Shimmering Flats |achieve 846/7 |goto Thousand Needles,75,68
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Tanaris",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Un'Goro Crater
    step //1
        .'Travel to Tanaris|goto Tanaris|noway|c
    step //2
        .'Unlock Gadgetzan |achieve 851/1 |goto Tanaris,50,28
    step //3
        goto Tanaris,51,29.3
        .talk Bera Stonehammer##7823
        ..fpath Gadgetzan
    step //4
        .'Unlock Waterspring Field |achieve 851/7 |goto Tanaris,60,36
    step //5
        .'Unlock Noonshade Ruins |achieve 851/3 |goto Tanaris,60,25
    step //6
        .'Unlock Steamwheedle Port |achieve 851/4 |goto Tanaris,67,23
    step //7
        .'Unlock Zalashji's Den |achieve 851/5 |goto Tanaris,67,32
    step //8
        .'Unlock Caverns of Time |achieve 851/20 |goto Tanaris,65,49|tip Enter from the West.
    step //9
        .'Unlock Lost Rigger Cove |achieve 851/6 |goto Tanaris,73,46|tip Wrap back around the North side.
    step //10
        .'Unlock Southbreak Shore |achieve 851/12 |goto Tanaris,64,60
    step //11
        .'Unlock Broken Pillar |achieve 851/9 |goto Tanaris,52,45
    step //12
        .'Unlock Abyssal Sands |achieve 851/8 |goto Tanaris,45,41
    step //13
        .'Unlock Sandsorrow Watch |achieve 851/2 |goto Tanaris,38,27
    step //14
        .'Unlock Zul'Farrak |achieve 851/19 |goto Tanaris,38,16
    step //15
        .'Unlock The Noxious Lair |achieve 851/10 |goto Tanaris,36,43
    step //16
        .'Unlock Dunemaul Compound |achieve 851/11 |goto Tanaris,40,57
    step //17
        .'Unlock Eastmoon Ruins |achieve 851/14 |goto Tanaris,47,65
    step //18
        .'Unlock The Gaping Chasm |achieve 851/13 |goto Tanaris,52,67
    step //19
        .'Unlock Southmoon Ruins |achieve 851/16 |goto Tanaris,40,72
    step //20
        .'Unlock Valley of the Watchers |achieve 851/17 |goto Tanaris,36,77
    step //21
        .'Unlock Land's End Beach |achieve 851/15 |goto Tanaris,54,92|tip Enter the Entrance to the South, and follow the cavern to the East.
    step //22
        .'Unlock Thistleshrub Valley |achieve 851/18 |goto Tanaris,29,64|tip Return through the cavern and head West to this Region. This should drop you out in front of the entrance to Un'Goro Crater.
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Un'Goro Crater",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Silithus
    step //1
        .'Travel to Un'Goro Crater|goto Un'Goro Crater|noway|c
    step //2
        .'Unlock The Marshlands |achieve 854/5 |goto Un'Goro Crater,68,64
    step //3
        .'Unlock The Slithering Scar |achieve 854/4 |goto Un'Goro Crater,50,79
    step //4
        .'Unlock Terror Run |achieve 854/3 |goto Un'Goro Crater,32,67
    step //5
        .'Unlock Golakka Hot Springs |achieve 854/2 |goto Un'Goro Crater,31,50
    step //6
        .'Unlock Fire Plume Ridge |achieve 854/1 |goto Un'Goro Crater,51,47
    step //7
        .'Unlock Ironstone Plateau |achieve 854/6 |goto Un'Goro Crater,76.7,33.2
    step //8
        .'Unlock Lakkari Tar Pits |achieve 854/7 |goto Un'Goro Crater,50,21
    step //9
        goto Un'Goro Crater,45.2,5.8
        .talk Gryfe##10583
        ..fpath Marshal's Refuge
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Silithus",[[
author ErebusAres
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Azuremyst Isle
    step //1
        .'Travel to Silithus|goto Silithus|noway|c
    step //2
        .'Unlock Valor's Rest |achieve 856/2 |goto Silithus,81,18
    step //3
        .'Unlock Staghelm Point |achieve 856/7 |goto Silithus,67,28
    step //4
        .'Unlock Cenarion Hold |achieve 856/3 |goto Silithus,53,34
    step //5
        goto Silithus,50.6,34.5
        .talk Cloud Skydancer##15177
        ..fpath Cenarion Hold
    step //6
        .'Unlock The Crystal Vale |achieve 856/1 |goto Silithus,28,14
    step //7
        .'Unlock Hive'Zora |achieve 856/4 |goto Silithus,32,52
    step //8
        .'Unlock The Scarab Wall |achieve 856/6 |goto Silithus,29,90
    step //9
        .'Unlock Hive'Regal |achieve 856/5 |goto Silithus,59,70
]])
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Azuremyst Isle",[[ 
author ErebusAres 
next Corey's Achievement Guides\\Explore Kalimdor\\Explore Bloodmyst Isle
    step //1
        .'Fly to The Exodar|goto The Exodar|noway|c|or
        .'Boat to Azuremyst Isle|goto Azuremyst Isle|noway|c|tip The boat at the very end of the pier in Darkshore arrives here.|or
    step //2
        .'Unlock The Exodar |achieve 860/15 |goto Azuremyst Isle,31,40
    step //3
        goto The Exodar,68.5,63.7
        .talk Stephanos##17555
        ..fpath The Exodar
    step //3
        .'Unlock Valaar's Berth |achieve 860/16 |goto Azuremyst Isle,21,54
    step //4
        .'Unlock Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle,26,66
    step //5
        .'Unlock Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle,13,80
    step //6
        .'Unlock Wrathscale Point |achieve 860/17 |goto Azuremyst Isle,32,77
    step //7
        .'Unlock Pod Cluster |achieve 860/10 |goto Azuremyst Isle,37,59
    step //8
        .'Unlock Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle,46,71
    step //9
        .'Unlock Pod Wreckage |achieve 860/11 |goto Azuremyst Isle,53,61
    step //10
        .'Unlock Geezle's Camp |achieve 860/7 |goto Azuremyst Isle,59,68
    step //11
        .'Unlock Ammen Ford |achieve 860/2 |goto Azuremyst Isle,62,54
    step //12
        .'Unlock Ammen Vale |achieve 860/1 |goto Azuremyst Isle,77,43
    step //13
        .'Return to Ammen Ford|goto Azuremyst Isle,62,54
    step //14
        .'Unlock Azure Watch |achieve 860/3 |goto Azuremyst Isle,49,50
    step //15
        .'Unlock Moongraze Woods |achieve 860/8 |goto Azuremyst Isle,52,42
    step //16
        .'Unlock Stillpine Hold |achieve 860/14 |goto Azuremyst Isle,45,20
    step //17
        .'Unlock Emberglade |achieve 860/5 |goto Azuremyst Isle,58,17
    step //18
        .'Unlock Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle,47,5
    step //19
        .'Unlock Silting Shore |achieve 860/12 |goto Azuremyst Isle,34,12
]]) 
ZygorGuidesViewer:RegisterGuide("Corey's Achievement Guides\\Explore Kalimdor\\Explore Bloodmyst Isle",[[
author ErebusAres
    step //1
        .'Travel North, over the bridge, to Bloodmyst Isle|goto Bloodmyst Isle|noway|c
    step //2
        .'Unlock Kessel's Crossing |achieve 861/8 |goto Bloodmyst Isle,62.1,89.0
    step //3
        .'Unlock The Lost Fold |achieve 861/22 |goto Bloodmyst Isle,57.8,81.6
    step //4
        .'Unlock Bristlelimb Enclave |achieve 861/7 |goto Bloodmyst Isle,66.1,78.8
    step //5
        .'Unlock Wrathscale Lair |achieve 861/27 |goto Bloodmyst Isle,69.0,67.6
    step //6
        .'Unlock Middenvale |achieve 861/9 |goto Bloodmyst Isle,51.9,76.0
    step //7
        .'Unlock Mystwood |achieve 861/10 |goto Bloodmyst Isle,42.5,84.1
    step //8
        .'Unlock Nazzivian |achieve 861/11 |goto Bloodmyst Isle,38.6,79.0
    step //9
        .'Unlock Blacksilt Shore |achieve 861/3 |goto Bloodmyst Isle,31.8,87.0
    step //10
        .'Unlock The Cryo-Core |achieve 861/19 |goto Bloodmyst Isle,39.1,61.4
    step //11
        .'Unlock Vindicator's Rest |achieve 861/26 |goto Bloodmyst Isle,30.2,45.9
    step //12
        .'Unlock The Vector Coil |achieve 861/23 |goto Bloodmyst Isle,18.2,51.5
    step //13
        .'Unlock Tel'athion's Camp |achieve 861/15 |goto Bloodmyst Isle,25.1,42.6
    step //14
        .'Unlock Amberweb Pass |achieve 861/1 |goto Bloodmyst Isle,17.5,28.8
    step //15
        .'Unlock The Foul Pool |achieve 861/20 |goto Bloodmyst Isle,29.4,36.7
    step //16
        .'Unlock The Hidden Reef |achieve 861/21 |goto Bloodmyst Isle,34.1,23.0
    step //17
        .'Unlock The Bloodwash |achieve 861/17 |goto Bloodmyst Isle,38.9,20.9
    step //18
        .'Unlock The Warp Piston |achieve 861/24 |goto Bloodmyst Isle,53.2,16.0
    step //19
        .'Unlock Axxarien |achieve 861/2 |goto Bloodmyst Isle,51.3,32.4
    step //20
        .'Unlock Ragefeather Ridge |achieve 861/12 |goto Bloodmyst Isle,55.3,35.4
    step //21
        .'Unlock Bladewood |achieve 861/4 |goto Bloodmyst Isle,46.4,45.6
    step //22
        .'Unlock Blood Watch |achieve 861/6 |goto Bloodmyst Isle,54.6,55.3
    step //23
        goto Bloodmyst Isle,57.7,53.9
        .talk Laando##17554
        ..fpath Blood Watch
    step //24
        .'Unlock Ruins of Loreth'Aran |achieve 861/13 |goto Bloodmyst Isle,61.7,44.6
    step //25
        .'Unlock The Crimson Reach |achieve 861/18 |goto Bloodmyst Isle,66.0,49.5
    step //26
        .'Unlock Bloodcurse Isle |achieve 861/5 |goto Bloodmyst Isle,85.0,51.0
    step //27
        .'Unlock The Bloodcursed Reef |achieve 861/16 |goto Bloodmyst Isle,80.5,26.4
    step //28
        .'Start up the Mountain to Talon Stand|goto Bloodmyst Isle,72.6,25.0
    step //29
        .'Unlock Talon Stand |achieve 861/14 |goto Bloodmyst Isle,73.1,20.9
    step //30
        .'Unlock Wyrmscar Island |achieve 861/28 |goto Bloodmyst Isle,71.4,16.3
    step //31
        .'Unlock Veridian Point |achieve 861/25 |goto Bloodmyst Isle,74.5,9.2
]])
ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
