local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Exploration Achievements\\Kalimdor Progress",[[
    description This guide section displays the entire progress for Kalimdor.
    author ErebusAres
    next Ares' Achievement Guides\\Explore Kalimdor\\Explore Teldrassil
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Teldrassil",[[
	author ErebusAres
    next Ares' Achievement Guides\\Explore Kalimdor\\Explore Darkshore
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Darkshore",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Ashenvale
    step //1
        .'Boat to Darkshore|goto Teldrassil,54.9,96.8|or
        .'Fly to Darkshore|goto Darkshore|noway|c|or
    step //2
        goto Darkshore,38,44
        .'Arrive and Unlock Auberdine|achieve 844/1
    step //3
        goto Darkshore,36.3,45.6
        .talk Caylais Moonfeather##3841
        ..fpath Auberdine
    step //4
        goto Darkshore,44,36
        .'Unlock Bashal'Aran|achieve 844/5
    step //5
        goto Darkshore,52,31
        .'Unlock Cliffspring River|achieve 844/4
    step //6
        goto Darkshore,56,26
        .'Unlock Tower of Althalaxx|achieve 844/3
    step //7
        goto Darkshore,58,20
        .'Unlock Ruins of Mathystra|achieve 844/2
    step //8
        goto Darkshore,43,57
        .'Unlock Ameth'Aran|achieve 844/6
    step //9
        goto Darkshore,43,77
        .'Unlock Grove of the Ancients|achieve 844/7
    step //10
        goto Darkshore,35,85
        .'Unlock Remtravel's Excavation|achieve 844/8
    step //11
        goto Darkshore,38,86
        .'Unlock The Master's Glaive|achieve 844/9
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Ashenvale",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Felwood
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Felwood",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Moonglade
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
    step //8
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Moonglade",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Winterspring
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Winterspring",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Azshara
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
    step //10
        .'Unlock The Hidden Grove|achieve 857/10|goto Winterspring,63,16
    step //11
        .'Unlock Winterfall Village|achieve 857/9|goto Winterspring,68,36|tip Just run south, don't bother returning to the road, yet.
    step //12
        .'Unlock Everlook|achieve 857/6|goto Winterspring,61,37|tip Head SouthWest towards town.
    step //13
        goto Winterspring,62.3,36.6
        .talk Maethrya##11138
        ..fpath Everlook
    step //14
        .'Unlock Ice Thistle Hills|achieve 857/8|goto Winterspring,68,43|tip Keep to the Main roads again.
    step //15
        .'Unlock Mazthoril|achieve 857/5|goto Winterspring,57,54
    step //16
        .'Unlock Owl Wing Thicket|achieve 857/7|goto Winterspring,65,60|tip Enter the "path" to the left of Ranshalla.
    step //17
        .'Unlock Frostwhisper Gorge|achieve 857/12|goto Winterspring,61,68|tip You should get this point while crossing the bridge.
    step //18
        .'Unlock Darkwhisper Gorge|achieve 857/13|goto Winterspring,58,80
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Azshara",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore The Barrens
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
    step //12
        .'Unlock Southridge Beach|achieve 852/15 |goto Azshara,47,66
    step //13
        .'Unlock The Shattered Strand|achieve 852/2 |goto Azshara,45,52
    step //14
        .'Unlock Bay of Storms|achieve 852/1 |goto Azshara,56,59
    step //15
        .'Unlock Temple of Arkkoran|achieve 852/6 |goto Azshara,76,43
    step //16
        .'Unlock Tower of Eldara|achieve 852/5 |goto Azshara,89,33|tip Head down the beach towards the tower by the water.
    step //17
        .'Head NorthWest up the Land ramp|goto Azshara,84,27
    step //18
        .'Unlock Bitter Reaches|achieve 852/4 |goto Azshara,73,21
    step //19
        .'Unlock Thalassian Base Camp|achieve 852/8 |goto Azshara,56,29 
    step //20
        .'Unlock Jagged Reef|achieve 852/3 |goto Azshara,52,10|tip Be careful not to fall off the cliff. Hug the edge and you will unlock the region.
    step //21
        .'Unlock Legash Encampment|achieve 852/7 |goto Azshara,51,19
    step //22
        .'Unlock Ursolan|achieve 852/9 |goto Azshara,44,27
    step //23
        .'Unlock Timbermaw Hold|achieve 852/10 |goto Azshara,38,33 
    step //24
        .'Unlock Ruins of Eldarath|achieve 852/14 |goto Azshara,36,53
    step //25
        .'Unlock Valormok|achieve 852/11 |goto Azshara,21,51
    step //26
        .'Unlock Haldarr Encampment|achieve 852/12 |goto Azshara,20,61
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore The Barrens",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Durotar
    step //1
        .'Travel or Fly to The Barrens|goto The Barrens|noway|c
    step //2
        .'Unlock The Mor'shan Rampart|achieve 750/3 |goto The Barrens,49,5
    step //3
        .'Unlock Dreadmist Peak|achieve 750/4 |goto The Barrens,47,17
    step //4
        .'Unlock The Dry Hills|achieve 750/5 |goto The Barrens,39,14
    step //5
        .'Unlock The Forgotten Pools|achieve 750/6 |goto The Barrens,45,22
    step //6
        .'Unlock Honor's Stand|achieve 750/7 |goto The Barrens,38,28|tip Head to towards the Watchtower South of the Mountain.
    step //7
        .'Unlock Lushwater Oasis|achieve 750/17 |goto The Barrens,46,39
    step //8
        .'Unlock Agama'gor|achieve 750/18 |goto The Barrens,43,48
    step //9
        .'Unlock Camp Taurajo|achieve 750/20 |goto The Barrens,45,60
    step //10
        .'Unlock Field of Giants|achieve 750/21 |goto The Barrens,47,70
    step //11
        .'Unlock Blackthorn Ridge|achieve 750/22 |goto The Barrens,43,79
    step //12
        .'Unlock Bael Modan|achieve 750/23 |goto The Barrens,47,84
    step //13
        .'Unlock Razorfen Downs|achieve 750/25 |goto The Barrens,47,90
    step //14
        .'Unlock Razorfen Kraul|achieve 750/24 |goto The Barrens,41,86
    step //15
        .'Unlock Bramblescar|achieve 750/19 |goto The Barrens,51,54
    step //16
        .'Unlock The Stagnant Oasis|achieve 750/12 |goto The Barrens,55,42
    step //17
        .'Unlock Raptor Grounds|achieve 750/16 |goto The Barrens,57,53
    step //18
        .'Unlock Northwatch Hold|achieve 750/15 |goto The Barrens,60,54
    step //19
        .'Unlock The Merchant Coast|achieve 750/14 |goto The Barrens,63,43|tip Follow the 'path' around the South side of the ridge towards the coast, then head North when able.
    step //20
        .'Unlock Ratchet|achieve 750/13 |goto The Barrens,62,37|tip Keep going North, past the large ship, into the city of Ratchet.
    step //21
        goto The Barrens,63.1,37.2
        .talk Bragok##16227
        ..fpath Ratchet
    step //22
        .'Unlock The Crossroads|achieve 750/11 |goto The Barrens,51,28|tip Leave the city via the Main road Follow it NorthWest.
    step //23
        .'Unlock Thorn Hill|achieve 750/10 |goto The Barrens,57,28|tip Keep to the North of the Mountains and enter Thorn Hill area.
    step //24
        .'Unlock Grol'dom Farm|achieve 750/8 |goto The Barrens,55,20
    step //25
        .'Unlock The Sludge Fen|achieve 750/2 |goto The Barrens,56,7|tip Keep to the West of the Farm and Continue Northward.
    step //26
        .'Unlock Boulder Lode Mine |achieve 750/1 |goto The Barrens,61,4|tip Keep Heading straight East until you reach the small road, then nab the Region.
    step //27
        .'Unlock Far Watch Post|achieve 750/9 |goto The Barrens,61,21|tip Follow the small road South to get this Region.
]]) 
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Durotar",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Dustwallow Marsh
    step //1
        .'Travel to Durotar|goto Durotar|noway|c
    step //2
        .'Unlock Razormane Grounds |achieve 728/7 |goto Durotar,41,45
    step //3
        .'Unlock Razor Hill |achieve 728/6 |goto Durotar,53,43
    step //4
        .'Unlock Tiragarde Keep |achieve 728/5 |goto Durotar,57,54
    step //5
        .'Unlock Sen'jin Village |achieve 728/2 |goto Durotar,55,74
    step //6
        .'Unlock Echo Isles |achieve 728/4 |goto Durotar,62,81|tip This should unlock halfway to the first set of small islands.
    step //7
        .'Unlock Kolkar Crag |achieve 728/3 |goto Durotar,48,78
    step //8
        .'Travel to the Entrance of Valley of Trials|goto Durotar,50.6,68.4|tip WARNING, WARNING, WARNING: This area is 65+
    step //9
        .'Unlock Valley of Trials |achieve 728/1 |goto Durotar,44,59|tip Just peek your head in and the Region should unlock.
    step //10
        .'Travel the road Back North|goto Durotar,52.6,45.4
    step //11
        .'Unlock Thunder Ridge |achieve 728/8 |goto Durotar,39,28|tip Follow the road West, then head North towards the Region.
    step //12
        .'Unlock Drygulch Ravine |achieve 728/9 |goto Durotar,53,23
    step //13
        .'Unlock Skull Rock |achieve 728/10 |goto Durotar,54,13
    step //14
        .'Prepare to Enter Orgrimmar |goto Durotar,45.7,13.3|tip WARNING WARNING WARNING: THIS AREA CONTAINS HIGH LEVEL HORDE ENEMIES! PROCEED WITH CAUTION.
    step //15
        .'Unlock Orgrimmar |achieve 728/11|tip Quickly run in and leave when you get the achievement.
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Dustwallow Marsh",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Mulgore
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Mulgore",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Stonetalon Mtns
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Stonetalon Mtns",[[ 
author ErebusAres 
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Desolace
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Desolace",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Feralas
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Feralas",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Thousand Needles
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Thousand Needles",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Tanaris
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Tanaris",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Un'Goro Crater
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Un'Goro Crater",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Silithus
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Silithus",[[
author ErebusAres
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Azuremyst Isle
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Azuremyst Isle",[[ 
author ErebusAres 
next Ares' Achievement Guides\\Explore Kalimdor\\Explore Bloodmyst Isle
    step //1
        .'Fly to The Exodar|goto The Exodar|noway|c|or
        .'Boat to Azuremyst Isle|goto Azuremyst Isle|noway|c|tip The boat at the very end of the pier in Darkshore arrives here.|or
    step //2
        .'Unlock The Exodar |achieve 860/15 |goto Azuremyst Isle,31,40
    step //3
        goto The Exodar,68.5,63.7
        .talk Stephanos##17555
        ..fpath The Exodar
    step //4
        .'Unlock Valaar's Berth |achieve 860/16 |goto Azuremyst Isle,21,54
    step //5
        .'Unlock Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle,26,66
    step //6
        .'Unlock Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle,13,80
    step //7
        .'Unlock Wrathscale Point |achieve 860/17 |goto Azuremyst Isle,32,77
    step //8
        .'Unlock Pod Cluster |achieve 860/10 |goto Azuremyst Isle,37,59
    step //9
        .'Unlock Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle,46,71
    step //10
        .'Unlock Pod Wreckage |achieve 860/11 |goto Azuremyst Isle,53,61
    step //11
        .'Unlock Geezle's Camp |achieve 860/7 |goto Azuremyst Isle,59,68
    step //12
        .'Unlock Ammen Ford |achieve 860/2 |goto Azuremyst Isle,62,54
    step //13
        .'Unlock Ammen Vale |achieve 860/1 |goto Azuremyst Isle,77,43
    step //14
        .'Return to Ammen Ford|goto Azuremyst Isle,62,54
    step //15
        .'Unlock Azure Watch |achieve 860/3 |goto Azuremyst Isle,49,50
    step //16
        .'Unlock Moongraze Woods |achieve 860/8 |goto Azuremyst Isle,52,42
    step //17
        .'Unlock Stillpine Hold |achieve 860/14 |goto Azuremyst Isle,45,20
    step //18
        .'Unlock Emberglade |achieve 860/5 |goto Azuremyst Isle,58,17
    step //19
        .'Unlock Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle,47,5
    step //20
        .'Unlock Silting Shore |achieve 860/12 |goto Azuremyst Isle,34,12
]]) 
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Kalimdor\\Explore Bloodmyst Isle",[[
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
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Exploration Achievements\\Eastern Kingdoms Progress",[[
    description This guide section displays the entire progress for Eastern Kingdoms.
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Elwynn Forest
    step //1
        .'Explore Eastern Kingdoms Total Progress |achieve 42
    step //2
        .'Progress for Elwynn Forest |achieve 776
        .'Progress for Westfall |achieve 802
        .'Progress for Duskwood |achieve 778
        .'Progress for Redridge Mountains |achieve 780
        .'Progress for Stranglethorn Vale |achieve 781
        .'Progress for Burning Steppes |achieve 775
        .'Progress for Searing Gorge |achieve 774
        .'Progress for The Hinterlands |achieve 773
        .'Progress for Eastern Plaguelands |achieve 771
      step //3
        .'Progress for Western Plaguelands |achieve 770
        .'Progress for Loch Modan |achieve 779
        .'Progress for Dun Morogh |achieve 627
        .'Progress for Wetlands |achieve 841
        .'Progress for Arathi Highlands |achieve 761
        .'Progress for Badlands |achieve 765
        .'Progress for Swamp of Sorrows |achieve 782
        .'Progress for Blasted Lands |achieve 766
        .'Progress for Deadwind Pass |achieve 777
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Elwynn Forest",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Westfall
    step //1
        .'Start from Stormwind|goto Stormwind|noway|c
    step //2
        .'Travel to Elwynn Forest|goto Elwynn Forest|noway|c
    step //3
        .'Begin in Stormwind City and head to Valley of Heroes|achieve 776/4 |goto Elwynn Forest,32.4,50
    step //4
        .'Unlock Goldshire |achieve 776/2|goto Elwynn Forest,42,66
    step //5
        .'Unlock Northshire Valley |achieve 776/1|goto Elwynn Forest,50,42
    step //6
        .'Unlock Crystal Lake |achieve 776/11|goto Elwynn Forest,55,66
    step //7
        .'Unlock Tower of Azora |achieve 776/7|goto Elwynn Forest,64,69
    step //8
        .'Unlock Stone Cairn Lake |achieve 776/12|goto Elwynn Forest,73,58
    step //9
        .'Unlock Eastvale Logging Camp |achieve 776/9|goto Elwynn Forest,83,66
    step //10
        .'Unlock Ridgepoint Tower |achieve 776/10|goto Elwynn Forest,84,79
    step //11
        .'Unlock Brackwell Pumpkin Patch |achieve 776/8|goto Elwynn Forest,69,79
    step //12
        .'Unlock Jerod's Landing |achieve 776/6|goto Elwynn Forest,48,87
    step //13
        .'Unlock Fargodeep Mine |achieve 776/3|goto Elwynn Forest,38,82
    step //14
        .'Unlock Forest's Edge |achieve 776/5|goto Elwynn Forest,27.4,77.6
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Westfall",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Duskwood
    step //1
        .'Travel to Westfall|goto Westfall|noway|c
    step //2
        .'Begin at the Bridge connecting Elwynn Forest and Westfall |goto Westfall,61.7,18
    step //3
        .'Unlock The Jansen Stead |achieve 802/4|goto Westfall,57,15
    step //4
        .'Unlock Furlbrow's Pumpkin Farm |achieve 802/3|goto Westfall,51,22
    step //5
        .'Unlock Saldean's Farm |achieve 802/2|goto Westfall,54,33
    step //6
        .'Unlock Sentinel Hill |achieve 802/1|goto Westfall,56,49
    step //7
        goto Westfall,56.4,52.6
        .talk Thor##523
        ..fpath Sentinel Hill
    step //8
        .'Unlock The Molsen Farm |achieve 802/6|goto Westfall,45,35
    step //9
        .'Unlock Jangolode Mine |achieve 802/5|goto Westfall,44.3,25.2
    step //10
        .'Unlock Gold Coast Quarry |achieve 802/7|goto Westfall,32.2,43.3
    step //11
        .'Unlock Alexston Farmstead |achieve 802/10|goto Westfall,38,52
    step //12
        .'Unlock Moonbrook |achieve 802/9|goto Westfall,43,69
    step //13
        .'Unlock The Dead Acre |achieve 802/8|goto Westfall,35.1,72.0
    step //14
        .'Unlock Westfall Lighthouse |achieve 802/12|goto Westfall,30,86
    step //15
        .'Unlock The Dagger Hills |achieve 802/13|goto Westfall,47,78
    step //16
        .'Unlock Demont's Place |achieve 802/11|goto Westfall,32,75
    step //17
        .'Unlock The Dust Plains |achieve 802/14|goto Westfall,64.7,72.0
    step //18
        .'Leave Westfall heading to Duskwood |goto Westfall,67.6,62.8
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Duskwood",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Stranglethorn Vale
    step //1
        .'Travel to Duskwood|goto Duskwood|noway|c
    step //2
        .'Begin at the border between Westfall and Duskwood |goto Duskwood,9,62
    step //3
        .'Unlock The Hushed Bank |achieve 778/1|goto Duskwood,9,49
    step //4
        .'Unlock Raven Hill Cemetery |achieve 778/4|goto Duskwood,20.2,42.9
    step //5
        .'Unlock Raven Hill |achieve 778/3|goto Duskwood,20.0,55.1
    step //6
        .'Unlock Addle's Stead |achieve 778/2|goto Duskwood,21.5,68.5
    step //7
        .'Unlock Vul'Gol Ogre Mound |achieve 778/5|goto Duskwood,35.2,72.8
    step //8
        .'Head to the hill to climb to Twilight Grove |goto Duskwood,45.7,57.2
    step //9
        .'Unlock Twilight Grove |achieve 778/6|goto Duskwood,47.4,44.6
    step //10
        .'Unlock The Darkened Bank |achieve 778/13|goto Duskwood,53.2,12.0|tip If unable to exit from Twilight Grove, return to the hill path and proceed around the mountainous area to reach this point.
    step //11
        .'Unlock Brightwood Grove |achieve 778/8|goto Duskwood,64.3,37.8
    step //12
        .'Unlock Manor Mistmantle |achieve 778/12|goto Duskwood,77.4,35.9
    step //13
        .'Unlock Darkshire |achieve 778/11|goto Duskwood,74.6,46.9
    step //14
        goto Duskwood,77.6,44.4
        .talk Felicia Maline##2409
        ..fpath Darkshire
    step //15
        .'Unlock Tranquil Gardens Cemetery |achieve 778/10|goto Duskwood,76.9,63.8|tip As you visit the next locations, return to the path if needed for easier travel.
    step //16
        .'Unlock The Rotting Orchard |achieve 778/9|goto Duskwood,63.3,72.4
    step //17
        .'Unlock The Yorgen Farmstead |achieve 778/7|goto Duskwood,49.0,73.2
    step //18
        .'Leave Duskwood heading towards Stranglethorn Vale |goto Duskwood,44.5,87.9
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Stranglethorn Vale",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Redridge Mountains
    step //1
        .'Travel to Stranglethorn Vale|goto Stranglethorn Vale|noway|c
    step //2
        .'Begin at the border between Duskwood and Stranglethorn Vale |goto Stranglethorn Vale,40.6,4.5
    step //3
        .'Unlock Rebel Camp |achieve 781/4|goto Stranglethorn Vale,39,4
    step //4
        goto Stranglethorn Vale,38.2,4.1
        .talk Nizzle##24366
        ..fpath Nijel's Point
    step //5
        .'Unlock Kurzen's Compound |achieve 781/5|goto Stranglethorn Vale,45,7
    step //6
        .'Unlock Zul'Gurub |achieve 781/27|goto Stranglethorn Vale,53,17
    step //7
        .'Unlock Mosh'Ogg Ogre Mound |achieve 781/18|goto Stranglethorn Vale,48,28
    step //8
        .'Unlock Venture Co. Base Camp |achieve 781/19|goto Stranglethorn Vale,44,20
    step //9
        .'Unlock Ruins of Zul'Mamwe |achieve 781/15|goto Stranglethorn Vale,46,41
    step //10
        .'Unlock Ziata'jai Ruins |achieve 781/13|goto Stranglethorn Vale,41,40
    step //11
        .'Unlock Crystalvein Mine |achieve 781/12|goto Stranglethorn Vale,40,50
    step //12
        .'Unlock Ruins of Aboraz |achieve 781/10|goto Stranglethorn Vale,39,58
    step //13
        .'Unlock Mistvale Valley |achieve 781/8|goto Stranglethorn Vale,34,64
    step //14
        .'Unlock Wild Shore |achieve 781/6|goto Stranglethorn Vale,32,77
    step //15
        .'Unlock Jaguero Isle |achieve 781/26|goto Stranglethorn Vale,38,81
    step //16
        .'Unlock Booty Bay |achieve 781/1|goto Stranglethorn Vale,27,73
    step //17
        goto Stranglethorn Vale,27.6,77.6
        .talk Gyll##2859
        ..fpath Booty Bay
    step //18
        .'Unlock Nek'mani Wellspring |achieve 781/7|goto Stranglethorn Vale,26,63
    step //19
        .'Unlock Bloodsail Compound |achieve 781/9|goto Stranglethorn Vale,23,51
    step //20
        .'Unlock Gurubashi Arena |achieve 781/14|goto Stranglethorn Vale,30,48
    step //21
        .'Unlock Ruins of Jubuwal |achieve 781/11|goto Stranglethorn Vale,35,51
    step //22
        .'Unlock Balia'mah Ruins |achieve 781/16|goto Stranglethorn Vale,42,35
    step //23
        .'Unlock Mizjah Ruins |achieve 781/17|goto Stranglethorn Vale,36,30
    step //24
        .'Unlock Grom'gol Base Camp |achieve 781/3|goto Stranglethorn Vale,32,28
    step //25
        .'Unlock The Vile Reef |achieve 781/23|goto Stranglethorn Vale,25,27
    step //26
        .'Unlock Lake Nazferiti |achieve 781/20|goto Stranglethorn Vale,40,19
    step //27
        .'Unlock Nesingwary's Expedition |achieve 781/2|goto Stranglethorn Vale,35,12
    step //28
        .'Unlock Kal'ai Ruins |achieve 781/21|goto Stranglethorn Vale,33,20
    step //29
        .'Unlock Bal'lal Ruins |achieve 781/22|goto Stranglethorn Vale,29,19
    step //30
        .'Unlock Zuuldaia Ruins |achieve 781/24|goto Stranglethorn Vale,21,14
    step //31
        .'Unlock Ruins of Zul'Kunda |achieve 781/25|goto Stranglethorn Vale,24,11
    step //32
        .'Go to Nizzle, fly to Darkshire|goto Stranglethorn Vale,38.2,4.1
    step //33
        .'Leave Duskwood heading towards Deadwind Pass|goto Duskwood,88.4,41.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Redridge Mountains",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Burning Steppes
    step //1
        .'Fly to Darkshire in Duskwood|goto Darkshire|noway|c|and
        .'Travel North by Northeast to Redridge Mountains|goto Redridge Mountains|noway|c
    step //2
        .'Unlock Lakeshire|achieve 780/1|goto Redridge Mountains,28,47
    step //3
        .'Unlock Lake Everstill|achieve 780/2|goto Redridge Mountains,39,55
    step //4
        .'Unlock Three Corners|achieve 780/3|goto Redridge Mountains,15,71
    step //5
        .'Unlock Lakeridge Highway|achieve 780/4|goto Redridge Mountains,29,67
    step //6
        .'Unlock Redridge Canyons|achieve 780/5|goto Redridge Mountains,33,23
    step //7
        .'Unlock Alther's Millagazor|achieve 780/6|goto Redridge Mountains,53,42
    step //8
        .'Unlock Stonewatch|achieve 780/7|goto Redridge Mountains,66,53
    step //9
        .'Unlock Render's Valley|achieve 780/8|goto Redridge Mountains,73,77
    step //10
        .'Unlock Render's Camp|achieve 780/9|goto Redridge Mountains,42,17
    step //11
        .'Unlock Stonewatch Falls|achieve 780/10|goto Redridge Mountains,73,62
    step //12
        .'Unlock Galardell Valley|achieve 780/11|goto Redridge Mountains,78,39
    step //13
        goto Redridge Mountains,30.6,59.4
        .talk Ariena Stormfeather##931
        ..fpath Lakeshire
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Burning Steppes",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Searing Gorge
    step //1
        .'Travel Burning Steppes|goto Burning Steppes|noway|c
    step //2
        .'Unlock Dreadmaul Rock |achieve 775/1|goto Burning Steppes,81,42
    step //3
        .'Unlock Morgan's Vigil |achieve 775/2|goto Burning Steppes,84,68
    step //4
        .'Unlock Terror Wing Path |achieve 775/3|goto Burning Steppes,93,45
    step //5
        .'Unlock Blackrock Pass |achieve 775/4|goto Burning Steppes,77,68
    step //6
        .'Unlock Ruins of Thaurissan |achieve 775/5|goto Burning Steppes,65,40
    step //7
        .'Unlock The Pillar of Ash |achieve 775/6|goto Burning Steppes,49,55
    step //8
        .'Unlock Blackrock Stronghold |achieve 775/7|goto Burning Steppes,40,35
    step //9
        .'Unlock Draco'dar |achieve 775/8|goto Burning Steppes,23,63
    step //10
        .'Unlock Altar of Storms |achieve 775/9|goto Burning Steppes,17,29
    step //11
        .'Unlock Blackrock Mountain |achieve 775/10|goto Burning Steppes,29,37
    step //12
        goto Burning Steppes,84.4,68.2
        .talk Borgus Stoutarm##2299
        ..fpath Morgan's Vigil
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Searing Gorge",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Badlands
    step //1
        .'Travel Searing Gorge|goto Searing Gorge|noway|c
    step //2
        .'Unlock  Firewatch Ridge |achieve 774/1|goto Searing Gorge,33,43
    step //3
        .'Unlock  The Cauldron |achieve 774/2|goto Searing Gorge,49,50
    step //4
        .'Unlock  Blackchar Cave |achieve 774/3|goto Searing Gorge,22,80
    step //5
        .'Unlock  The Sea of Cinders |achieve 774/4|goto Searing Gorge,46,72
    step //6
        .'Unlock  Tanner Camp |achieve 774/5|goto Searing Gorge,71,70
    step //7
        .'Unlock  Grimesilt Dig Site |achieve 774/6|goto Searing Gorge,65,59
    step //8
        .'Unlock  Dustfire Valley |achieve 774/7|goto Searing Gorge,72,27
    step //9
        goto Searing Gorge,37.8,30.6
        .talk Lanie Reed##2941
        ..fpath Thorium Point
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Badlands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Loch Modan
    step //1
        .'Travel to Badlands|goto Badlands|noway|c
    step //2
        .'Unlock Lethlor Ravine |achieve 765/1|goto Badlands,68.0,48.2
    step //3
        .'Unlock Camp Kosh |achieve 765/8|goto Badlands,60.1,20.7
    step //4
        .'Unlock Uldaman |achieve 765/3|goto Badlands,38.3,11.6
    step //5
        .'Unlock Angor Fortress |achieve 765/7|goto Badlands,41.1,26.5
    step //6
        .'Unlock The Dustbowl |achieve 765/6|goto Badlands,27.4,38.0
    step //7
        .'Unlock New Kargath |achieve 765/10|goto Badlands,17.7,41.7
    step //8
        .'Unlock Camp Cagg |achieve 765/4|goto Badlands,17.2,63.0
    step //9
        .'Unlock Scar of the Worldbreaker |achieve 765/5|goto Badlands,31.7,54.6
    step //10
        .'Unlock Agmond's End |achieve 765/2|goto Badlands,46.5,57.4
    step //11
        .'Unlock Bloodwatcher Point |achieve 765/9|goto Badlands,52.3,51.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Loch Modan",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Wetlands
    step //1
        .'Travel to Loch Modan|goto Loch Modan|noway|c
    step //2
        .'Unlock Valley of Kings |achieve 779/11|goto Loch Modan,20.3,78.5
    step //3
        .'Unlock Stonesplinter Valley |achieve 779/10|goto Loch Modan,32.5,78.3
    step //4
        .'Unlock Grizzlepaw Ridge |achieve 779/8|goto Loch Modan,38.0,60.7
    step //5
        .'Unlock Ironband's Excavation Site |achieve 779/7|goto Loch Modan,69.4,65.3
    step //6
        .'Unlock The Farstrider Lodge |achieve 779/6|goto Loch Modan,82.3,65.0
    step //7
        .'Unlock Mo'grosh Stronghold |achieve 779/3|goto Loch Modan,71.0,23.8
    step //8
        .'Unlock Thelsamar |achieve 779/9|goto Loch Modan,35.2,47.6
    step //9
        .'Unlock North Gate Pass |achieve 779/5|goto Loch Modan,20.2,17.1
    step //10
        .'Unlock Silver Stream Mine |achieve 779/4|goto Loch Modan,34.8,21.5
    step //11
        .'Unlock Stonewrought Dam |achieve 779/2|goto Loch Modan,48.0,11.4
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Wetlands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Arathi Highlands
    step //1
        .'Travel to Wetlands|goto Wetlands|noway|c
    step //2
        .'Unlock Raptor Ridge |achieve 841/16|goto Wetlands,67.9,34.9
    step //3
        .'Unlock Greenwarden's Grove |achieve 841/11|goto Wetlands,57.9,40.6
    step //4
        .'Unlock Mosshide Fen |achieve 841/12|goto Wetlands,61.9,56.6
    step //5
        .'Unlock Slabchisel's Survey |achieve 841/15|goto Wetlands,58.4,71.0
    step //6
        .'Unlock Dun Algaz |achieve 841/14|goto Wetlands,50.0,76.4
    step //7
        .'Unlock Thelgen Rock |achieve 841/10|goto Wetlands,52.2,61.4
    step //8
        .'Unlock Angerfang Encampment |achieve 841/9|goto Wetlands,48.5,48.0
    step //9
        .'Unlock Whelgar's Excavation Site |achieve 841/4|goto Wetlands,35.8,48.9
    step //10
        .'Unlock Menethil Harbor |achieve 841/1|goto Wetlands,10.2,58.2
    step //11
        .'Unlock Black Channel Marsh |achieve 841/2|goto Wetlands,19.3,46.9
    step //12
        .'Unlock Bluegill Marsh |achieve 841/3|goto Wetlands,18.9,36.0
    step //13
        .'Unlock Sundown Marsh |achieve 841/5|goto Wetlands,24.5,24.3
    step //14
        .'Unlock Saltspray Glen |achieve 841/6|goto Wetlands,32.5,17.6
    step //15
        .'Unlock Ironbeard's Tomb |achieve 841/7|goto Wetlands,43.6,25.9
    step //16
        .'Unlock Dun Modr |achieve 841/8|goto Wetlands,46.9,16.5
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Arathi Highlands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore The Hinterlands
    step //1
        .'Travel to Arathi Highlands|goto Arathi Highlands|noway|c
    step //2
        .'Unlock Thandol Span |achieve 761/8|goto Arathi Highlands,41.3,91.0
    step //3
        .'Unlock Boulderfist Hall |achieve 761/9|goto Arathi Highlands,49.1,78.9
    step //4
        .'Unlock Witherbark Village |achieve 761/12|goto Arathi Highlands,61.6,70.3
    step //5
        .'Unlock Go'Shek Farm |achieve 761/13|goto Arathi Highlands,56.4,57.6
    step //6
        .'Unlock Hammerfall |achieve 761/16|goto Arathi Highlands,69.3,37.2
    step //7
        .'Unlock Circle of East Binding |achieve 761/15|goto Arathi Highlands,59.3,32.8
    step //8
        .'Unlock Dabyrie's Farmstead |achieve 761/14|goto Arathi Highlands,49.9,41.3
    step //9
        .'Unlock Circle of Outer Binding |achieve 761/11|goto Arathi Highlands,47.3,51.4
    step //10
        .'Unlock Refuge Pointe |achieve 761/10|goto Arathi Highlands,39.8,46.4
    step //11
        .'Unlock Circle of Inner Binding |achieve 761/7|goto Arathi Highlands,30.1,59.3
    step //12
        .'Unlock Faldir's Cove |achieve 761/6|goto Arathi Highlands,23.8,81.8
    step //13
        .'Unlock Stromgarde Keep |achieve 761/5|goto Arathi Highlands,16.5,64.1
    step //14
        .'Unlock Boulder'gor |achieve 761/3|goto Arathi Highlands,27.5,44.2
    step //15
        .'Unlock Northfold Manor |achieve 761/2|goto Arathi Highlands,27.0,27.1
    step //16
        .'Unlock Galen's Fall |achieve 761/4|goto Arathi Highlands,13.0,36.4
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore The Hinterlands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Western Plaguelands
    step //1
        .'Travel to The Hinterlands|goto The Hinterlands|noway|c
    step //2
        .'Unlock Aerie Peak |achieve 773/1|goto The Hinterlands,13.9,45.0
    step //3
        .'Unlock Plaguemist Ravine |achieve 773/2|goto The Hinterlands,23.1,33.5
    step //4
        .'Unlock Quel'Danil Lodge |achieve 773/4|goto The Hinterlands,33.3,45.6
    step //5
        .'Unlock Shadra'Alor |achieve 773/5|goto The Hinterlands,34.6,72.0
    step //6
        .'Unlock Valorwind Lake |achieve 773/6|goto The Hinterlands,40.5,59.3
    step //7
        .'Unlock The Altar of Zul |achieve 773/9|goto The Hinterlands,48.4,66.9
    step //8
        .'Unlock The Creeping Ruin |achieve 773/8|goto The Hinterlands,49.0,52.1
    step //9
        .'Unlock Jintha'Alor |achieve 773/13|goto The Hinterlands,63.1,74.7
    step //10
        .'Unlock The Overlook Cliffs |achieve 773/14|goto The Hinterlands,72.7,66.1
    step //11
        .'Unlock Shaol'watha |achieve 773/12|goto The Hinterlands,73.2,54.2
    step //12
        .'Unlock Skulk Rock |achieve 773/11|goto The Hinterlands,57.6,42.6
    step //13
        .'Unlock Seradane |achieve 773/10|goto The Hinterlands,62.7,24.1
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Western Plaguelands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Eastern Plaguelands
    step //1
        .'Travel to Western Plaguelands|goto Western Plaguelands|noway|c
    step //2
        .'Unlock The Bulwark |achieve 770/5|goto Western Plaguelands,27.0,57.7
    step //3
        .'Unlock Felstone Field |achieve 770/6|goto Western Plaguelands,36.5,54.6
    step //4
        .'Unlock Dalson's Farm |achieve 770/7|goto Western Plaguelands,45.1,51.2
    step //5
        .'Unlock Redpine Dell |achieve 770/11|goto Western Plaguelands,46.0,45.5
    step //6
        .'Unlock Hearthglen |achieve 770/10|goto Western Plaguelands,44.9,17.0
    step //7
        .'Unlock The Weeping Cave |achieve 770/13|goto Western Plaguelands,64.4,40.1
    step //8
        .'Unlock Thondroril River |achieve 770/14|goto Western Plaguelands,69.6,50.7
    step //9
        .'Unlock Gahrron's Withering |achieve 770/12|goto Western Plaguelands,63.9,58.2
    step //10
        .'Unlock The Writhing Haunt |achieve 770/8|goto Western Plaguelands,54.9,66.2
    step //11
        .'Unlock Sorrow Hill |achieve 770/3|goto Western Plaguelands,54.6,85.5
    step //12
        .'Unlock Caer Darrow |achieve 770/2|goto Western Plaguelands,68.3,81.1
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Eastern Plaguelands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Swamp of Sorrows
    step //1
        .'Travel to Eastern Plaguelands|goto Eastern Plaguelands|noway|c
    step //2
        .'Unlock Darrowshire |achieve 771/6|goto Eastern Plaguelands,35.1,84.2
    step //3
        .'Unlock The Undercroft |achieve 771/3|goto Eastern Plaguelands,24.0,78.8
    step //4
        .'Unlock Terrordale |achieve 771/20|goto Eastern Plaguelands,12.5,26.3
    step //5
        .'Unlock Stratholme |achieve 771/22|goto Eastern Plaguelands,26.8,9.8
    step //6
        .'Unlock Plaguewood |achieve 771/21|goto Eastern Plaguelands,33.6,24.4
    step //7
        .'Unlock The Fungal Vale |achieve 771/5|goto Eastern Plaguelands,36.1,44.8
    step //8
        .'Unlock Crown Guard Tower |achieve 771/4|goto Eastern Plaguelands,35.7,68.5
    step //9
        .'Unlock Lake Mereldar |achieve 771/9|goto Eastern Plaguelands,57.4,74.1
    step //10
        .'Unlock Corin's Crossing |achieve 771/8|goto Eastern Plaguelands,55.6,62.9
    step //11
        .'Unlock Blackwood Lake |achieve 771/15|goto Eastern Plaguelands,46.3,43.5
    step //12
        .'Unlock Quel'Lithien Lodge |achieve 771/19|goto Eastern Plaguelands,48.1,13.1
    step //13
        .'Unlock Northpass Tower |achieve 771/18|goto Eastern Plaguelands,50.5,20.5
    step //14
        .'Unlock Eastwall Tower |achieve 771/14|goto Eastern Plaguelands,62.4,41.7
    step //15
        .'Unlock Pestilent Scar |achieve 771/7|goto Eastern Plaguelands,68.7,56.5
    step //16
        .'Unlock Tyr's Hand |achieve 771/10|goto Eastern Plaguelands,75.6,75.2
    step //17
        .'Unlock Ruins of the Scarlet Enclave |achieve 771/23|goto Eastern Plaguelands,87.1,78.5
    step //18
        .'Unlock Light's Hope Chapel |achieve 771/11|goto Eastern Plaguelands,76.8,53.9
    step //19
        .'Unlock The Noxious Glade |achieve 771/13|goto Eastern Plaguelands,78.1,35.8
    step //20
        .'Unlock Northdale |achieve 771/16|goto Eastern Plaguelands,66.1,25.0
    step //21
        .'Unlock Zul'Mashar |achieve 771/17|goto Eastern Plaguelands,66.4,10.3
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Swamp of Sorrows",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Blasted Lands
    step //1
        .'Travel to Swamp of Sorrows|goto Swamp of Sorrows|noway|c
    step //2
        .'Unlock Stagalbog |achieve 782/7|goto Swamp of Sorrows,67.8,74.9
    step //3
        .'Unlock Sorrowmurk |achieve 782/8|goto Swamp of Sorrows,84.2,38.9
    step //4
        .'Unlock Misty Reed Strand |achieve 782/10|goto Swamp of Sorrows,77.3,13.7
    step //5
        .'Unlock Bogpaddle |achieve 782/9|goto Swamp of Sorrows,72.3,12.8
    step //6
        .'Unlock Marshtide Watch |achieve 782/12|goto Swamp of Sorrows,68.4,35.8
    step //7
        .'Unlock Pool of Tears |achieve 782/6|goto Swamp of Sorrows,62.6,50.0
    step //8
        .'Unlock The Shifting Mire |achieve 782/4|goto Swamp of Sorrows,48.8,42.1
    step //9
        .'Unlock Stonard |achieve 782/5|goto Swamp of Sorrows,47.1,54.2
    step //10
        .'Unlock Purespring Cavern |achieve 782/11|goto Swamp of Sorrows,18.6,68.1
    step //11
        .'Unlock Splinterspear Junction |achieve 782/3|goto Swamp of Sorrows,22.3,49.4
    step //12
        .'Unlock Misty Valley |achieve 782/1|goto Swamp of Sorrows,14.7,35.8
    step //13
        .'Unlock The Harborage |achieve 782/2|goto Swamp of Sorrows,28.8,32.1
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Blasted Lands",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Deadwind Pass
    step //1
        .'Travel to Blasted Lands|goto Blasted Lands|noway|c
    step //2
        .'Unlock Dreadmaul Hold |achieve 766/1|goto Blasted Lands,39.5,12.9
    step //3
        .'Unlock Rise of the Defiler |achieve 766/9|goto Blasted Lands,45.1,26.7
    step //4
        .'Unlock Dreadmaul Post |achieve 766/7|goto Blasted Lands,47.1,40.1
    step //5
        .'Unlock The Dark Portal |achieve 766/5|goto Blasted Lands,54.4,52.9
    step //6
        .'Unlock The Tainted Scar |achieve 766/8|goto Blasted Lands,32.3,45.7
    step //7
        .'Unlock The Tainted Forest |achieve 766/14|goto Blasted Lands,34.2,72.3
    step //8
        .'Unlock Surwich |achieve 766/12|goto Blasted Lands,44.5,86.1
    step //9
        .'Unlock Sunveil Excursion |achieve 766/11|goto Blasted Lands,50.7,70.9
    step //10
        .'Unlock The Red Reaches |achieve 766/13|goto Blasted Lands,65.8,78.0
    step //11
        .'Unlock Shattershore |achieve 766/10|goto Blasted Lands,69.1,33.5
    step //12
        .'Unlock Serpent's Coil |achieve 766/4|goto Blasted Lands,60.3,28.4
    step //13
        .'Unlock Nethergare Keep |achieve 766/3|goto Blasted Lands,64.3,15.8
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Eastern Kingdoms\\Explore Deadwind Pass",[[
    author ErebusAres
    step //1
        .'Travel to Deadwind Pass|goto Deadwind Pass|noway|c
    step //2
        .'Unlock Deadman's Crossing |achieve 777/1|goto Deadwind Pass,45.1,35.8
    step //3
        .'Unlock Karazhan |achieve 777/3|goto Deadwind Pass,42.6,68.8
    step //4
        .'Unlock The Vice |achieve 777/2|goto Deadwind Pass,58.6,64.7
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Exploration Achievements\\Outland Progress",[[
    description This guide section displays the entire progress for Outland.
    next Ares' Achievement Guides\\Explore Outland\\Explore Hellfire Peninsula
    step //1
        .'Explore Outland Total Progress |achieve 44
        .'Progress for Hellfire Peninsula |achieve 862
        .'Progress for Terokkar Forest |achieve 867
        .'Progress for Shadowmoon Valley |achieve 864
        .'Progress for Nagrand |achieve 866
        .'Progress for Zangarmarsh |achieve 863
        .'Progress for Blade's Edge Mountains |achieve 865
        .'Progress for Netherstorm |achieve 843
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Hellfire Peninsula",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Terokkar Forest
    step //1
        .'Travel to Hellfire Peninsula|goto Hellfire Peninsula|noway|c
    step //2
        .'Unlock The Stair of Destiny |achieve 862/1|goto Hellfire Peninsula,87.7,50.3
    step //3
        .'Unlock Throne of Kil'jaeden |achieve 862/12|goto Hellfire Peninsula,62.0,17.8
    step //4
        .'Unlock Forge Camp: Mageddon |achieve 862/18|goto Hellfire Peninsula,58.9,31.2
    step //5
        .'Unlock The Legion Front |achieve 862/10|goto Hellfire Peninsula,70.0,50.4
    step //6
        .'Unlock Void Ridge |achieve 862/16|goto Hellfire Peninsula,79.1,72.9
    step //7
        .'Unlock Zeth'Gor |achieve 862/13|goto Hellfire Peninsula,70.1,73.6
    step //8
        .'Unlock Expedition Armory |achieve 862/2|goto Hellfire Peninsula,54.3,84.3
    step //9
        .'Unlock The Warp Fields |achieve 862/17|goto Hellfire Peninsula,45.3,82.5
    step //10
        .'Unlock Honor Hold |achieve 862/5|goto Hellfire Peninsula,54.8,64.5
    step //11
        .'Unlock Hellfire Citadel |achieve 862/4|goto Hellfire Peninsula,47.2,52.9
    step //12
        .'Unlock Pools of Aggonar |achieve 862/7|goto Hellfire Peninsula,41.2,32.6
    step //13
        .'Unlock Mag'har Post |achieve 862/6|goto Hellfire Peninsula,31.3,26.9
    step //14
        .'Unlock Temple of Telhamat |achieve 862/9|goto Hellfire Peninsula,23.5,40.0
    step //15
        .'Unlock Den of Haal'esh |achieve 862/14|goto Hellfire Peninsula,27.5,77.0
    step //16
        .'Unlock Fallen Sky Ridge |achieve 862/15|goto Hellfire Peninsula,14.3,41.0
    step //17
        .'Unlock Ruins of Sha'naar |achieve 862/8|goto Hellfire Peninsula,13.3,59.4
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Terokkar Forest",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Shadowmoon Valley
    step //1
        .'Travel to Terokkar Forest|goto Terokkar Forest|noway|c
    step //2
        .'Unlock Razorthorn Shelf |achieve 867/11|goto Terokkar Forest,55.0,20.0
    step //3
        .'Unlock Tuurem |achieve 867/7|goto Terokkar Forest,53.0,29.1
    step //4
        .'Unlock Cenarion Thicket |achieve 867/3|goto Terokkar Forest,43.8,20.2
    step //5
        .'Unlock Shattrath City |achieve 867/8|goto Terokkar Forest,29.1,23.3
    step //6
        .'Unlock The Barrier Hills |achieve 867/10|goto Terokkar Forest,22.4,10.5
    step //7
        .'Unlock Bleeding Hollow Ruins |achieve 867/1|goto Terokkar Forest,17.8,65.4
    step //8
        .'Unlock Veil Rhaze |achieve 867/19|goto Terokkar Forest,24.4,59.9
    step //9
        .'Unlock Shadow Tomb |achieve 867/17|goto Terokkar Forest,31.3,52.5
    step //10
        .'Unlock Refugee Caravan |achieve 867/15|goto Terokkar Forest,37.5,49.6
    step //11
        .'Unlock Carrion Hill |achieve 867/14|goto Terokkar Forest,42.9,51.0
    step //12
        .'Unlock Grangol'var Village |achieve 867/5|goto Terokkar Forest,39.5,39.4
    step //13
        .'Unlock Stonebreaker Hold |achieve 867/6|goto Terokkar Forest,46.6,43.0
    step //14
        .'Unlock Raastok Glade |achieve 867/9|goto Terokkar Forest,60.6,40.2
    step //15
        .'Unlock Firewing Point |achieve 867/4|goto Terokkar Forest,71.7,34.7
    step //16
        .'Unlock Bonechewer Ruins |achieve 867/12|goto Terokkar Forest,66.5,52.3
    step //17
        .'Unlock Allerian Stronghold |achieve 867/2|goto Terokkar Forest,57.1,56.6
    step //18
        .'Unlock Writhing Mound |achieve 867/20|goto Terokkar Forest,49.1,66.0
    step //19
        .'Unlock Ring of Observance |achieve 867/16|goto Terokkar Forest,39.5,65.5
    step //20
        .'Unlock Auchenai Grounds |achieve 867/13|goto Terokkar Forest,33.0,71.8
    step //21
        .'Unlock Derelict Caravan |achieve 867/18|goto Terokkar Forest,43.9,76.1
    step //22
        .'Unlock Skettis |achieve 867/21|goto Terokkar Forest,58.9,76.4
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Shadowmoon Valley",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Nagrand
    step //1
        .'Travel to Shadowmoon Valley|goto Shadowmoon Valley|noway|c
    step //2
        .'Unlock Legion Hold |achieve 864/3|goto Shadowmoon Valley,24.1,39.2
    step //3
        .'Unlock Illidari Point |achieve 864/12|goto Shadowmoon Valley,29.8,52.3
    step //4
        .'Unlock Wildhammer Stronghold |achieve 864/10|goto Shadowmoon Valley,35.5,60.2
    step //5
        .'Unlock Eclipse Point |achieve 864/2|goto Shadowmoon Valley,44.9,66.8
    step //6
        .'Unlock Netherwing Ledge |achieve 864/4|goto Shadowmoon Valley,70.8,85.7
    step //7
        .'Unlock Netherwing Fields |achieve 864/13|goto Shadowmoon Valley,64.2,58.5
    step //8
        .'Unlock Warden's Cage |achieve 864/9|goto Shadowmoon Valley,57.3,50.1
    step //9
        .'Unlock The Hand of Gul'dan |achieve 864/8|goto Shadowmoon Valley,49.8,41.2
    step //10
        .'Unlock The Deathforge |achieve 864/7|goto Shadowmoon Valley,39.6,39.6
    step //11
        .'Unlock Shadowmoon Village |achieve 864/5|goto Shadowmoon Valley,29.4,26.1
    step //12
        .'Unlock Coilskar Point |achieve 864/1|goto Shadowmoon Valley,45.3,26.3
    step //13
        .'Unlock Altar of Sha'tar |achieve 864/11|goto Shadowmoon Valley,61.5,26.1
    step //14
        .'Unlock The Black Temple |achieve 864/6|goto Shadowmoon Valley,77.6,40.6
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Nagrand",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Zangarmarsh
    step //1
        .'Travel to Nagrand|goto Nagrand|noway|c
    step //2
        .'Unlock Windyreed Village |achieve 866/18|goto Nagrand,74.3,52.9
    step //3
        .'Unlock Burning Blade Ruins |achieve 866/12|goto Nagrand,75.1,66.8
    step //4
        .'Unlock Kil'sorrow Fortress |achieve 866/4|goto Nagrand,68.9,79.9
    step //5
        .'Unlock Clan Watch |achieve 866/13|goto Nagrand,62.5,64.3
    step //6
        .'Unlock The Ring of Trials |achieve 866/9|goto Nagrand,65.8,54.0
    step //7
        .'Unlock Southwind Cleft |achieve 866/15|goto Nagrand,49.8,55.9
    step //8
        .'Unlock Telaar |achieve 866/8|goto Nagrand,52.8,69.1
    step //9
        .'Unlock Spirit Fields |achieve 866/6|goto Nagrand,42.0,71.8
    step //10
        .'Unlock Halaa |achieve 866/3|goto Nagrand,42.5,44.0
    step //11
        .'Unlock Sunspring Post |achieve 866/7|goto Nagrand,33.5,44.7
    step //12
        .'Unlock Forge Camp: Fear |achieve 866/1|goto Nagrand,20.6,51.3
    step //13
        .'Unlock The Twilight Ridge |achieve 866/16|goto Nagrand,10.8,39.2
    step //14
        .'Unlock Forge Camp: Hate |achieve 866/14|goto Nagrand,25.9,37.1
    step //15
        .'Unlock Warmaul Hill |achieve 866/11|goto Nagrand,29.7,24.6
    step //16
        .'Unlock Zangar Ridge |achieve 866/19|goto Nagrand,33.9,18.4
    step //17
        .'Unlock Laughing Skull Ruins |achieve 866/5|goto Nagrand,46.9,18.9
    step //18
        .'Unlock Garadar |achieve 866/2|goto Nagrand,56.1,36.4
    step //19
        .'Unlock Throne of the Elements |achieve 866/10|goto Nagrand,60.8,21.1
    step //20
        .'Unlock Windyreed Pass |achieve 866/17|goto Nagrand,72.4,36.3
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Zangarmarsh",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Blade's Edge Mountains
    step //1
        .'Travel to Zangarmarsh|goto Zangarmarsh|noway|c
    step //2
        .'Unlock Darkcrest Shore |achieve 863/18|goto Zangarmarsh,70.6,79.9
    step //3
        .'Unlock Umbrafen Village |achieve 863/11|goto Zangarmarsh,83.5,82.0
    step //4
        .'Unlock Cenarion Refuge |achieve 863/1|goto Zangarmarsh,81.1,63.4
    step //5
        .'Unlock The Dead Mire |achieve 863/8|goto Zangarmarsh,82.5,37.5
    step //6
        .'Unlock Teredor |achieve 863/7|goto Zangarmarsh,68.5,49.2
    step //7
        .'Unlock Bloodscale Grounds |achieve 863/14|goto Zangarmarsh,62.7,41.2
    step //8
        .'Unlock The Lagoon |achieve 863/9|goto Zangarmarsh,58.6,61.8
    step //9
        .'Unlock Twin Spire Ruins |achieve 863/10|goto Zangarmarsh,47.8,51.7
    step //10
        .'Unlock Feralfen Village |achieve 863/3|goto Zangarmarsh,44.9,66.3
    step //11
        .'Unlock Zabra'jin |achieve 863/17|goto Zangarmarsh,31.8,52.3
    step //12
        .'Unlock Quagg Ridge |achieve 863/6|goto Zangarmarsh,29.0,60.7
    step //13
        .'Unlock The Spawning Glen |achieve 863/16|goto Zangarmarsh,14.5,61.9
    step //14
        .'Unlock Sporeggar |achieve 863/12|goto Zangarmarsh,17.8,49.6
    step //15
        .'Unlock Marshlight Lake |achieve 863/5|goto Zangarmarsh,21.7,39.6
    step //16
        .'Unlock Ango'rosh Stronghold |achieve 863/13|goto Zangarmarsh,18.6,8.0
    step //17
        .'Unlock Hewn Bog |achieve 863/4|goto Zangarmarsh,33.6,35.3
    step //18
        .'Unlock Orebor Harborage |achieve 863/15|goto Zangarmarsh,44.9,25.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Blade's Edge Mountains",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Outland\\Explore Netherstorm
    step //1
        .'Travel to Blade's Edge Mountains|goto Blade's Edge Mountains|noway|c
    step //2
        .'Unlock Forge Camp: Terror |achieve 865/10|goto Blade's Edge Mountains,29.1,81.0
    step //3
        .'Unlock Vortex Summit |achieve 865/26|goto Blade's Edge Mountains,30.5,59.5
    step //4
        .'Unlock Forge Camp: Wrath |achieve 865/11|goto Blade's Edge Mountains,33.5,41.1
    step //5
        .'Unlock Raven's Wood |achieve 865/16|goto Blade's Edge Mountains,31.9,27.5
    step //6
        .'Unlock Grishnath |achieve 865/12|goto Blade's Edge Mountains,39.6,19.9
    step //7
        .'Unlock Bash'ir Landing |achieve 865/1|goto Blade's Edge Mountains,51.7,16.7
    step //8
        .'Unlock Crystal Spine |achieve 865/21|goto Blade's Edge Mountains,68.0,10.8
    step //9
        .'Unlock Broken Wilds |achieve 865/6|goto Blade's Edge Mountains,77.9,25.9
    step //10
        .'Unlock Skald |achieve 865/19|goto Blade's Edge Mountains,72.0,22.9
    step //11
        .'Unlock Gruul's Lair |achieve 865/13|goto Blade's Edge Mountains,67.7,23.5
    step //12
        .'Unlock Bloodmaul Camp |achieve 865/4|goto Blade's Edge Mountains,55.6,26.2
    step //13
        .'Unlock Bladespire Hold |achieve 865/3|goto Blade's Edge Mountains,40.7,53.0
    step //14
        .'Unlock Sylvanaar |achieve 865/20|goto Blade's Edge Mountains,37.0,65.4
    step //15
        .'Unlock Veil Lashh |achieve 865/23|goto Blade's Edge Mountains,36.4,78.7
    step //16
        .'Unlock Bloodmaul Outpost |achieve 865/5|goto Blade's Edge Mountains,46.3,77.2
    step //17
        .'Unlock Jagged Ridge |achieve 865/14|goto Blade's Edge Mountains,48.0,64.9
    step //18
        .'Unlock Razor Ridge |achieve 865/17|goto Blade's Edge Mountains,56.0,69.0
    step //19
        .'Unlock Death's Door |achieve 865/8|goto Blade's Edge Mountains,64.2,61.0
    step //20
        .'Unlock Thunderlord Stronghold |achieve 865/22|goto Blade's Edge Mountains,53.1,54.7
    step //21
        .'Unlock Circle of Blood |achieve 865/7|goto Blade's Edge Mountains,53.6,43.9
    step //22
        .'Unlock Ruuan Weald |achieve 865/18|goto Blade's Edge Mountains,61.2,36.5
    step //23
        .'Unlock Veil Ruuan |achieve 865/24|goto Blade's Edge Mountains,65.1,31.6
    step //24
        .'Unlock Bladed Gulch |achieve 865/2|goto Blade's Edge Mountains,65.9,36.8
    step //25
        .'Unlock Forge Camp: Anger |achieve 865/9|goto Blade's Edge Mountains,74.7,41.8
    step //26
        .'Unlock Mok'Nathal Village |achieve 865/15|goto Blade's Edge Mountains,73.9,62.6
    step //27
        .'Unlock Vekhaar Stand |achieve 865/25|goto Blade's Edge Mountains,77.1,75.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Outland\\Explore Netherstorm",[[
    author ErebusAres
    step //1
        .'Travel to Netherstorm|goto Netherstorm|noway|c
    step //2
        .'Unlock Manaforge B'naar |achieve 843/2|goto Netherstorm,23.5,72.9
    step //3
        .'Unlock The Heap |achieve 843/9|goto Netherstorm,28.4,77.5
    step //4
        .'Unlock Area 52 |achieve 843/1|goto Netherstorm,33.5,66.0
    step //5
        .'Unlock Arklon Ruins |achieve 843/10|goto Netherstorm,39.7,73.5
    step //6
        .'Unlock Manaforge Coruu |achieve 843/3|goto Netherstorm,48.8,84.5
    step //7
        .'Unlock Kirin'Var Village |achieve 843/12|goto Netherstorm,57.1,88.5
    step //8
        .'Unlock Sunfury Hold |achieve 843/15|goto Netherstorm,56.0,77.8
    step //9
        .'Unlock Maforge Duro |achieve 843/4|goto Netherstorm,59.6,68.2
    step //10
        .'Unlock Tempest Keep |achieve 843/8|goto Netherstorm,75.8,62.5
    step //11
        .'Unlock Celestial Ridge |achieve 843/11|goto Netherstorm,72.5,38.7
    step //12
        .'Unlock Manaforge Ultris |achieve 843/6|goto Netherstorm,61.7,38.2
    step //13
        .'Unlock Ethereum Staging Grounds |achieve 843/19|goto Netherstorm,55.1,43.5
    step //14
        .'Unlock Ruins of Farahlon |achieve 843/7|goto Netherstorm,54.4,21.3
    step //15
        .'Unlock Netherstone |achieve 843/13|goto Netherstorm,49.5,17.0
    step //16
        .'Unlock Eco-Dome Farfield |achieve 843/18|goto Netherstorm,46.1,9.6
    step //17
        .'Unlock Socrethar's Seat |achieve 843/20|goto Netherstorm,29.9,16.0
    step //18
        .'Unlock Forge Base: Oblivion |achieve 843/21|goto Netherstorm,37.5,26.4
    step //19
        .'Unlock The Stormspire |achieve 843/16|goto Netherstorm,45.1,35.8
    step //20
        .'Unlock Eco-Dome Midrealm |achieve 843/22|goto Netherstorm,45.3,53.7
    step //21
        .'Unlock ruins of Enkaat |achieve 843/14|goto Netherstorm,32.9,54.9
    step //22
        .'Unlock Gyro-Plank Bridge |achieve 843/17|goto Netherstorm,23.2,55.9
    step //23
        .'Unlock Manaforge Ara |achieve 843/5|goto Netherstorm,26.8,39.3
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Exploration Achievements\\Northrend Progress",[[
    description This guide section displays the entire progress for Northrend.
    next Ares' Achievement Guides\\Explore Northrend\\Explore Borean Tundra
    step //1
        .'Explore Northrend Total Progress |achieve 45
        .'Progress for Borean Tundra |achieve 1264
        .'Progress for Sholazar Basin |achieve 1268
        .'Progress for Icecrown |achieve 1270
        .'Progress for Dragonblight |achieve 1265
        .'Progress for Crystalsong Forest |achieve 1457
        .'Progress for Storm Peaks |achieve 1269
        .'Progress for Zul'Drak |achieve 1267
        .'Progress for Grizzly Hills |achieve 1266
        .'Progress for Howling Fjord |achieve 1263
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Borean Tundra",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Sholazar Basin
    step //1
        .'Travel to Borean Tundra|goto Borean Tundra|noway|c
    step //2
        .'Unlock Valiance Keep |achieve 1264/11|goto Borean Tundra,57.7,69.3
    step //3
        .'Unlock Warsong Hold |achieve 1264/10|goto Borean Tundra,43.4,53.2
    step //4
        .'Unlock Riplash Stand |achieve 1264/3|goto Borean Tundra,47.4,81.1
    step //5
        .'Unlock Garrosh's Landing |achieve 1264/5|goto Borean Tundra,27.9,51.6
    step //6
        .'Unlock Coldarra |achieve 1264/7|goto Borean Tundra,25.8,38.4
    step //7
        .'Unlock Amber Ledge |achieve 1264/9|goto Borean Tundra,46.1,34.8
    step //8
        .'Unlock Steeljaw's Carvan |achieve 1264/2|goto Borean Tundra,50.2,24.3
    step //9
        .'Unlock Bor'gorok Outpost |achieve 1264/8|goto Borean Tundra,50.2,10.3
    step //10
        .'Unlock The Geyser Fields |achieve 1264/12|goto Borean Tundra,66.3,28.5
    step //11
        .'Unlock Kaskala |achieve 1264/4|goto Borean Tundra,66.2,51.1
    step //12
        .'Unlock Death's Stand |achieve 1264/6|goto Borean Tundra,82.4,46.4
    step //13
        .'Unlock Temple City of En'kilah |achieve 1264/1|goto Borean Tundra,87.6,25.1
    step //14
        .'Unlock The Dens of the Dying |achieve 1264/13|goto Borean Tundra,76.4,16.4
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Sholazar Basin",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Icecrown
    step //1
        .'Travel to Sholazar Basin|goto Sholazar Basin|noway|c
    step //2
        .'Unlock Makers' Overlook |achieve 1268/4|goto Sholazar Basin,81.0,55.4
    step //3
        .'Unlock The Lifeblood Pillar |achieve 1268/8|goto Sholazar Basin,65.9,60.1
    step //4
        .'Unlock Rainspeaker Canopy |achieve 1268/7|goto Sholazar Basin,53.7,52.5
    step //5
        .'Unlock River's Heart |achieve 1268/1|goto Sholazar Basin,48.0,63.2
    step //6
        .'Unlock The Mosslight Pillar |achieve 1268/3|goto Sholazar Basin,36.0,75.3
    step //7
        .'Unlock Kartak's Hold |achieve 1268/11|goto Sholazar Basin,24.3,81.7
    step //8
        .'Unlock The Suntouched Pillar |achieve 1268/6|goto Sholazar Basin,33.3,52.3
    step //9
        .'Unlock Makers' Perch |achieve 1268/5|goto Sholazar Basin,29.7,40.1
    step //10
        .'Unlock The Stormwright's Shelf |achieve 1268/12|goto Sholazar Basin,24.5,33.5
    step //11
        .'Unlock The Savage Thicket |achieve 1268/2|goto Sholazar Basin,46.8,26.1
    step //12
        .'Unlock The Glimmering Pillar |achieve 1268/10|goto Sholazar Basin,50.0,36.0
    step //13
        .'Unlock The Avalanche |achieve 1268/9|goto Sholazar Basin,74.5,34.6
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Icecrown",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Dragonblight
    step //1
        .'Travel to Icecrown|goto Icecrown|noway|c
    step //2
        .'Unlock Onslaught Harbor |achieve 1270/3|goto Icecrown,8.9,42.9
    step //3
        .'Unlock Jotunheim |achieve 1270/13|goto Icecrown,27.1,39.0
    step //4
        .'Unlock Valhalas |achieve 1270/8|goto Icecrown,36.5,24.1
    step //5
        .'Unlock The Shadow Vault |achieve 1270/15|goto Icecrown,44.4,22.6
    step //6
        .'Unlock Aldur'thar: The Desolation Gate |achieve 1270/6|goto Icecrown,52.8,30.6
    step //7
        .'Unlock The Bombardment |achieve 1270/1|goto Icecrown,63.7,44.0
    step //8
        .'Unlock Sindragosa's Fall |achieve 1270/7|goto Icecrown,74.0,37.7
    step //9
        .'Unlock Scourgeholme |achieve 1270/14|goto Icecrown,78.4,60.2
    step //10
        .'Unlock The Broken Front |achieve 1270/4|goto Icecrown,69.2,64.4
    step //11
        .'Unlock Ymirheim |achieve 1270/10|goto Icecrown,54.9,56.2
    step //12
        .'Unlock The Conflagration |achieve 1270/11|goto Icecrown,43.6,56.5
    step //13
        .'Unlock The Fleshwerks |achieve 1270/5|goto Icecrown,33.1,66.4
    step //14
        .'Unlock Corp'rethar: The Horror Gate |achieve 1270/12|goto Icecrown,48.4,70.6
    step //15
        .'Unlock Icecrown Citadel |achieve 1270/2|goto Icecrown,54.2,85.8
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Dragonblight",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Crystalsong Forest
    step //1
        .'Travel to Dragonblight|goto Dragonblight|noway|c
    step //2
        .'Unlock Angrathar the Wrath Gate |achieve 1265/10|goto Dragonblight,36.0,15.0
    step //3
        .'Unlock Obsidian Dragonshrine |achieve 1265/3|goto Dragonblight,38.4,31.9
    step //4
        .'Unlock Icemist Village |achieve 1265/7|goto Dragonblight,25.1,43.2
    step //5
        .'Unlock Westwind Refugee Camp |achieve 1265/13|goto Dragonblight,13.8,46.2
    step //6
        .'Unlock Agmar's Hammer |achieve 1265/11|goto Dragonblight,36.9,47.8
    step //7
        .'Unlock Lake Indu'le |achieve 1265/2|goto Dragonblight,39.7,67.0
    step //8
        .'Unlock Ruby Dragonshrine |achieve 1265/3|goto Dragonblight,47.3,48.7
    step //9
        .'Unlock Galakrond's Rest |achieve 1265/1|goto Dragonblight,54.9,32.7
    step //10
        .'Unlock Wyrmrest Temple |achieve 1265/12|goto Dragonblight,59.7,49.8
    step //11
        .'Unlock Emerald Dragonshrine |achieve 1265/8|goto Dragonblight,63.5,72.7
    step //12
        .'Unlock New Hearthglen |achieve 1265/4|goto Dragonblight,71.0,75.2
    step //13
        .'Unlock Venomspite |achieve 1265/14|goto Dragonblight,77.1,60.0
    step //14
        .'Unlock The Forgotten Shore |achieve 1265/15|goto Dragonblight,82.5,70.7
    step //15
        .'Unlock Naxxramas |achieve 1265/5|goto Dragonblight,88.9,44.0
    step //16
        .'Unlock Light's Trust |achieve 1265/6|goto Dragonblight,83.6,25.6
    step //17
        .'Unlock Scarlet Point |achieve 1265/17|goto Dragonblight,72.7,25.6
    step //18
        .'Unlock The Crystal Vice |achieve 1265/16|goto Dragonblight,61.8,19.5
    step //19
        .'Unlock Coldwind Heights |achieve 1265/9|goto Dragonblight,50.0,17.5
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Crystalsong Forest",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Storm Peaks
    step //1
        .'Travel to Crystalsong Forest|goto Crystalsong Forest|noway|c
    step //2
        .'Unlock The Azure Front |achieve 1457/1|goto Crystalsong Forest,26.4,61.4
    step //3
        .'Unlock Violet Stand |achieve 1457/7|goto Crystalsong Forest,14.5,44.1
    step //4
        .'Unlock The Great Tree |achieve 1457/6|goto Crystalsong Forest,13.1,33.9
    step //5
        .'Unlock The Decrepit Flow |achieve 1457/2|goto Crystalsong Forest,16.0,15.4
    step //6
        .'Unlock Forlorn Woods |achieve 1457/4|goto Crystalsong Forest,43.0,42.5
    step //7
        .'Unlock The Unbound Thicket |achieve 1457/8|goto Crystalsong Forest,64.7,60.4
    step //8
        .'Unlock Windrunner's Overlook |achieve 1457/5|goto Crystalsong Forest,75.2,83.0
    step //9
        .'Unlock Sunreaver's Command |achieve 1457/3|goto Crystalsong Forest,76.9,46.3
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Storm Peaks",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Zul'Drak
    step //1
        .'Travel to Storm Peaks|goto Storm Peaks|noway|c
    step //2
        .'Unlock Sparksocket Minefield |achieve 1269/7|goto The Storm Peaks,35.1,84.0
    step //3
        .'Unlock Bor's Breath |achieve 1269/4|goto The Storm Peaks,35.3,68.7
    step //4
        .'Unlock Temple of Storms |achieve 1269/12|goto The Storm Peaks,35.9,58.0
    step //5
        .'Unlock Frosthold |achieve 1269/15|goto The Storm Peaks,29.4,73.8
    step //6
        .'Unlock Valkyrion |achieve 1269/5|goto The Storm Peaks,24.0,60.5
    step //7
        .'Unlock Nidavelir |achieve 1269/16|goto The Storm Peaks,23.9,50.1
    step //8
        .'Unlock Snowdrift Plains |achieve 1269/13|goto The Storm Peaks,27.3,41.9
    step //9
        .'Unlock Narvir's Cradle |achieve 1269/2|goto The Storm Peaks,32.2,39.6
    step //10
        .'Unlock Ulduar |achieve 1269/10|goto The Storm Peaks,41.3,17.4
    step //11
        .'Unlock Terrace of the Makers |achieve 1269/6|goto The Storm Peaks,50.3,44.7
    step //12
        .'Unlock Temple of Life |achieve 1269/9|goto The Storm Peaks,64.8,44.8
    step //13
        .'Unlock Thunderfall |achieve 1269/11|goto The Storm Peaks,72.9,48.5
    step //14
        .'Unlock Dun Niffelem |achieve 1269/3|goto The Storm Peaks,64.4,59.1
    step //15
        .'Unlock Engine of the Makers |achieve 1269/8|goto The Storm Peaks,40.9,57.2
    step //16
        .'Unlock Brunnhildar Village |achieve 1269/1|goto The Storm Peaks,47.8,68.2
    step //17
        .'Unlock Garm's Bane |achieve 1269/14|goto The Storm Peaks,47.1,81.6
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Zul'Drak",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Grizzly Hills
    step //1
        .'Travel to Zul'Drak|goto Zul'Drak|noway|c
    step //2
        .'Unlock Thrym's End |achieve 1267/12|goto Zul'Drak,17.0,57.3
    step //3
        .'Unlock Voltarus |achieve 1267/11|goto Zul'Drak,28.2,45.1
    step //4
        .'Unlock Altar of Sseratus |achieve 1267/4|goto Zul'Drak,40.5,38.8
    step //5
        .'Unlock Altar of Rhunok |achieve 1267/5|goto Zul'Drak,53.3,36.5
    step //6
        .'Unlock Gundrak |achieve 1267/1|goto Zul'Drak,83.7,16.7
    step //7
        .'Unlock Altar of Mam'toth |achieve 1267/7|goto Zul'Drak,73.2,45.6
    step //8
        .'Unlock Altar of Quetz'lun |achieve 1267/6|goto Zul'Drak,76.9,59.3
    step //9
        .'Unlock Zim'Torga |achieve 1267/9|goto Zul'Drak,59.3,57.8
    step //10
        .'Unlock Altar of Har'koa |achieve 1267/8|goto Zul'Drak,64.4,68.9
    step //11
        .'Unlock Kolrama |achieve 1267/14|goto Zul'Drak,62.0,77.6
    step //12
        .'Unlock Ampitheater of Anguish |achieve 1267/3|goto Zul'Drak,48.2,56.4
    step //13
        .'Unlock Drak'Sorta Fields |achieve 1267/2|goto Zul'Drak,41.7,76.8
    step //14
        .'Unlock Light's Breach |achieve 1267/13|goto Zul'Drak,32.0,76.4
    step //15
        .'Unlock Zeramas |achieve 1267/10|goto Zul'Drak,21.1,75.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Grizzly Hills",[[
    author ErebusAres
    next Ares' Achievement Guides\\Explore Northrend\\Explore Howling Fjord
    step //1
        .'Travel to Grizzly Hills|goto Grizzly Hills|noway|c
    step //2
        .'Unlock Drak'Tharon Keep |achieve 1266/2|goto Grizzly Hills,17.5,23.6
    step //3
        .'Unlock Granite Springs |achieve 1266/5|goto Grizzly Hills,15.8,49.6
    step //4
        .'Unlock Conquest Hold |achieve 1266/1|goto Grizzly Hills,21.3,65.3
    step //5
        .'Unlock Venture Bay |achieve 1266/9|goto Grizzly Hills,14.5,84.4
    step //6
        .'Unlock Voldrune |achieve 1266/10|goto Grizzly Hills,29.0,76.5
    step //7
        .'Unlock Amberpine Lodge |achieve 1266/11|goto Grizzly Hills,31.4,57.9
    step //8
        .'Unlock Blue Sky Logging Grounds |achieve 1266/12|goto Grizzly Hills,36.0,37.9
    step //9
        .'Unlock Grizzlemaw |achieve 1266/6|goto Grizzly Hills,48.2,42.2
    step //10
        .'Unlock Westfall Brigade Encampment |achieve 1266/14|goto Grizzly Hills,56.8,28.4
    step //11
        .'Unlock Thor Modan |achieve 1266/8|goto Grizzly Hills,68.1,14.8
    step //12
        .'Unlock Drakil'jin Ruins |achieve 1266/3|goto Grizzly Hills,71.8,27.9
    step //13
        .'Unlock Camp Oneqwah |achieve 1266/13|goto Grizzly Hills,64.9,45.6
    step //14
        .'Unlock Dun Argol |achieve 1266/4|goto Grizzly Hills,77.9,59.3
    step //15
        .'Unlock Rage Fang Shrine |achieve 1266/7|goto Grizzly Hills,50.3,57.2
]])
ZygorGuidesViewer:RegisterGuide("Ares' Achievement Guides\\Explore Northrend\\Explore Howling Fjord",[[
    author ErebusAres
    step //1
        .'Travel to Howling Fjord|goto Howling Fjord|noway|c
    step //2
        .'Unlock Gjalerbron |achieve 1263/9|goto Howling Fjord,36.6,9.5
    step //3
        .'Unlock Camp Winterhoof |achieve 1263/3|goto Howling Fjord,47.8,12.1
    step //4
        .'Unlock The Twisted Glade |achieve 1263/17|goto Howling Fjord,54.2,16.8
    step //5
        .'Unlock Fort Wildervar |achieve 1263/12|goto Howling Fjord,60.7,12.8
    step //6
        .'Unlock Giant's Run |achieve 1263/9|goto Howling Fjord,68.6,26.5
    step //7
        .'Unlock Vengeance Landing |achieve 1263/5|goto Howling Fjord,78.1,27.3
    step //8
        .'Unlock Ivald's Ruin |achieve 1263/13|goto Howling Fjord,78.2,46.2
    step //9
        .'Unlock Baelgun's Excavation Site |achieve 1263/20|goto Howling Fjord,72.5,71.3
    step //10
        .'Unlock Nifflevar |achieve 1263/8|goto Howling Fjord,67.9,52.8
    step //11
        .'Unlock Baleheim |achieve 1263/21|goto Howling Fjord,66.6,39.1
    step //12
        .'Unlock Cauldros Isle |achieve 1263/2|goto Howling Fjord,57.6,35.9
    step //13
        .'Unlock Utgarde Keep |achieve 1263/18|goto Howling Fjord,58.3,45.9
    step //14
        .'Unlock Halgrind |achieve 1263/14|goto Howling Fjord,50.1,54.1
    step //15
        .'Unlock New Agamand |achieve 1263/15|goto Howling Fjord,52.9,69.0
    step //16
        .'Unlock Scalawag Point |achieve 1263/7|goto Howling Fjord,34.3,75.5
    step //17
        .'Unlock Kamagua |achieve 1263/1|goto Howling Fjord,24.9,57.7
    step //18
        .'Unlock Ember Clutch |achieve 1263/10|goto Howling Fjord,40.0,50.6
    step //19
        .'Unlock Skorn |achieve 1263/16|goto Howling Fjord,45.1,33.1
    step //20
        .'Unlock Westguard Keep |achieve 1263/19|goto Howling Fjord,30.3,41.4
    step //21
        .'Unlock Steel Gate |achieve 1263/6|goto Howling Fjord,31.3,25.9
    step //22
        .'Unlock Apothecary Camp |achieve 1263/4|goto Howling Fjord,27.0,24.1
]])

ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
