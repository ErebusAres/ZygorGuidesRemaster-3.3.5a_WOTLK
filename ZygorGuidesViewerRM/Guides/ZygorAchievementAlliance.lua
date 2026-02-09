local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
--TRIAL if ZygorGuidesViewer.AllianceInstalled then return end
if UnitFactionGroup("player")~="Alliance" then return end
ZygorGuidesViewer:RegisterGuide("Coreys's Alliance Achievement Guides\\Explore Kalimdor\\Explore Teldrassil",[[
	author ErebusAres
    next Coreys's Alliance Achievement Guides\\Explore Kalimdor\\Explore Darkshore
	step //1
        goto Teldrassil,55,91
        .'Unlock Rut'theran Village|achieve 842/6
    step //2
        goto Darnassusa,25,55
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
]])
ZygorGuidesViewer:RegisterGuide("Coreys's Alliance Achievement Guides\\Explore Kalimdor\\Explore Darkshore",[[
author ErebusAres
next Coreys's Alliance Achievement Guides\\Explore Kalimdor\\Explore Ashenvale
    step //1
        .'Head towards Darkshore through Darnassus|goto Darnassus|noway|c
    step //2
        .'Go through the pink portal towards Rut'theran Village|goto Darnassus,30.8,41.4
    step //3
        .'Get on the boat to Darkshore|goto Teldrassil,54.9,96.8
    step //4
        goto Darkshore,38,44
        .'Arrive and Unlock Auberdine|achieve 844/1
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
ZygorGuidesViewer:RegisterGuide("Coreys's Alliance Achievement Guides\\Explore Kalimdor\\Explore Ashenvale",[[
author ErebusAres
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
--TRIAL ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Main Guide (13-20)",[[
--TRIAL 	author support@zygorguides.com
--TRIAL 	step //1
--TRIAL 		' Thank you for trying the Zygor Guides Version 2.0 Leveling Guides Demo.  Please visit ZygorGuides.com to purchase the complete in-game Version 2.0 leveling guides.  Take care
--TRIAL 		level 13
--TRIAL ]])
ZygorGuidesViewer.AllianceInstalled=true --!TRIAL
