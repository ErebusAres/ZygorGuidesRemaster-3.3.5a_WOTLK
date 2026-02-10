local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[68] Borean Tundra",[[
author danaton
description This guide contain quest-chain (142) for Borean Tundra location.
startlevel 68
		step
			goto Stormwind City,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy Overcharged Capacitor##39682|q 11650 |future
			.info This is needed for a future quest.
		step
			goto Borean Tundra,57.85,67.60
			.talk Recruitment Officer Blythe##25307
			..accept Enlistment Day##11672
		step
			goto Borean Tundra,56.67,72.64
			.talk General Arlos##25250
			..turnin Enlistment Day##11672
			..accept A Time for Heroes##11727
		step
			goto Borean Tundra,56.36,69.59
			.talk Sergeant Hammerhill##25816
			..turnin A Time for Heroes##11727
			..accept The Siege##11797
		step
			goto Borean Tundra,55.00,68.92
			.talk Medic Hawthorn##25825
			..accept A Soldier in Need##11789
		step
			goto Borean Tundra,53.01,70.10
			.kill 6 Crypt Crawler##25227|q 11797/1
		step
			goto Borean Tundra,56.36,69.59
			.talk Sergeant Hammerhill##25816
			..turnin The Siege##11797
			..accept Death From Above##11889
		step
			goto Borean Tundra,57.50,69.28
			.collect Hawthorn's Anti-Venom##35119|q 11789/1
			.info Inside the ship.
		step
			goto Borean Tundra,57.53,69.12
			.' Interact with gameobject: Cultist Shrine
			.info Inside the ship.
			..accept Cultists Among Us##11920
		step
			goto Borean Tundra,57.83,69.20
			.talk Captain "Lefty" Lugsail##25298
			..turnin Cultists Among Us##11920
		step
			goto Borean Tundra,57.80,69.19
			.talk Admiral Cantlebree##25299
			..accept Notify Arlos##11791
		step
			goto Borean Tundra,56.67,72.64
			.talk General Arlos##25250
			..turnin Notify Arlos##11791
		step
			goto Borean Tundra,56.71,72.62
			.talk Counselor Talbot##25301
			..accept A Diplomatic Mission##12141
		step
			goto Borean Tundra,56.60,72.47
			.talk Harbinger Vurenn##25285
			..accept Enemies of the Light##11792
		step
			goto Borean Tundra,55.00,68.93
			.talk Medic Hawthorn##25825
			..turnin A Soldier in Need##11789
		step
			goto Borean Tundra,54.77,70.41
			.use Reinforced Net##35278
			.info Use it on Scourged Flamespitters flying above you.
			.kill 6 Scourged Flamespitter##25582|q 11889/1
		step
			goto Borean Tundra,56.36,69.58
			.talk Sergeant Hammerhill##25816
			..turnin Death From Above##11889
			..accept Plug the Sinkholes##11897
		step
			goto Borean Tundra,54.19,61.60
			.from Cultist Necrolyte##25651
			.get Cultist Communique##35122|q 11792/1
		step
			goto Borean Tundra,54.05,63.89
			.use Incendiary Explosives##35704
			.info Use it while standing on the edge of the sinkhole.
			.' Set the Explosives at the Northern Sinkhole|q 11897/2
		step
			goto Borean Tundra,50.89,72.11
			.use Incendiary Explosives##35704
			.info Use it while standing on the edge of the sinkhole.
			.' Set the Explosives at the Southern Sinkhole|q 11897/1
		step
			goto Borean Tundra,56.36,69.58
			.talk Sergeant Hammerhill##25816
			..turnin Plug the Sinkholes##11897
			..accept Farshire##11928
		step
			goto Borean Tundra,56.77,69.51
			.talk Mark Hanes##26155
			..accept Word on the Street##11927
		step
			goto Borean Tundra,56.61,72.46
			.talk Harbinger Vurenn##25285
			..turnin Enemies of the Light##11792
			..accept Further Investigation##11793
		step
			goto Borean Tundra,58.41,67.79
			.talk Midge##25249
			..accept Nick of Time##11575
		step
			goto Borean Tundra,58.75,68.36
			.talk Leryssa##25251
			..turnin Word on the Street##11927
			..accept Thassarian, My Brother##11599
		step
			goto Borean Tundra,58.55,67.31
			.talk Vindicator Yaala##25826
			..turnin Further Investigation##11793
			..accept The Hunt is On##11794
		step
			goto Borean Tundra,58.58,67.14
			.use Oculus of the Exorcist##35125
			.info Use it on "Salty" John Thorpe.
			.talk "Salty" John Thorpe##25248
			.' Tell him "I have reason to believe you're involved in cultist activity."
			.info Watch the dialogue.
			.kill "Salty" John Thorpe##25248|n
			.' Defeat the Cultist in the Kitchen|q 11794/3
		step
			goto Borean Tundra,58.84,68.72
			.talk Airman Skyhopper##25737
			..accept Distress Call##11707
		step
			goto Borean Tundra,59.21,68.39
			.use Oculus of the Exorcist##35125
			.info Use it on Tom Hegger.
			.talk Tom Hegger##25827
			.' Ask him "What do you know about the Cult of the Damned?"
			.info Watch the dialogue.
			.kill Tom Hegger##25827|n
			.' Defeat the Cultist on the Docks|q 11794/1
		step
			goto Borean Tundra,56.72,71.83
			.use Oculus of the Exorcist##35125
			.info Use it on Guard Mitchells.
			.talk Guard Mitchells##25828
			.' Ask him "How long have you worked for the Cult of the Damned?"
			.info Watch the dialogue.
			.kill Guard Mitchells##25828|n
			.' Defeat the Cultist in the Jail|q 11794/2
		step
			goto Borean Tundra,58.55,67.30
			.talk Vindicator Yaala##25826
			..turnin The Hunt is On##11794
		step
			goto Borean Tundra,58.21,62.82
			.talk Gerald Green##26083
			..turnin Farshire##11928
			..accept Military? What Military?##11901
		step
			goto Borean Tundra,56.81,55.56
			.' Interact with gameobject: Plagued Grain
			.info Inside the mine.
			..turnin Military? What Military?##11901
			..accept Pernicious Evidence##11902
		step
			goto Borean Tundra,56.05,55.42
			.talk William Allerton##25385
			..turnin Thassarian, My Brother##11599
			..accept The Late William Allerton##11600
		step
			goto Borean Tundra,58.21,62.82
			.talk Gerald Green##26083
			..turnin Pernicious Evidence##11902
			..accept It's Time for Action##11903
		step
			goto Borean Tundra,58.28,62.77
			.talk Wendy Darren##26085
			..accept Take No Chances##11913
		step
			goto Borean Tundra,58.19,62.98
			.talk Jeremiah Hawning##26084
			..accept Reference Material##11908
		step
			goto Borean Tundra,55.75,58.32
			.collect Fields, Factories and Workshops##35481|q 11908/1
			.info A book lies on the floor of a burnt house.
		step
			goto Borean Tundra,55.79,60.83
			.use Wendy's Torch##35491
			.info Use it next to Farshire Grain around this area.
			.info They look like bags with patches on the ground around this area.
			.' Burn 8 Farshire Grain|q 11913/1
		step
			goto Borean Tundra,55.79,60.83
			.kill 14 Plagued Scavenger##25650|q 11903/1
		step
			goto Borean Tundra,58.28,62.77
			.talk Wendy Darren##26085
			..turnin Take No Chances##11913
		step
			goto Borean Tundra,58.22,62.82
			.talk Gerald Green##26083
			..turnin It's Time for Action##11903
			..accept Fruits of Our Labor##11904
		step
			goto Borean Tundra,58.19,62.98
			.talk Jeremiah Hawning##26084
			..turnin Reference Material##11908
			..accept Repurposed Technology##12035
		step
			goto Borean Tundra,58.15,60.68
			.from Harvest Collector##25623
			.use Jeremiah's Tools##35943
			.info Use it on their corpses.
			.' Rewire 5 Harvest Collectors|q 12035/1
		step
			goto Borean Tundra,57.95,53.67
			.from Captain Jacobs##26252
			.info He walks around this area inside the mine.
			.collect Cart Release Key##35705|q 11904 |future
		step
			goto Borean Tundra,57.19,54.64
			.' Interact with Cart Release
			.info Inside the mine.
			.' Release the Ore Cart|q 11904/1
		step
			goto Borean Tundra,58.22,62.82
			.talk Gerald Green##26083
			..turnin Fruits of Our Labor##11904
			..accept One Last Delivery##11962
		step
			goto Borean Tundra,58.19,62.98
			.talk Jeremiah Hawning##26084
			..turnin Repurposed Technology##12035
		step
			goto Borean Tundra,57.32,66.64
			.talk Hilda Stoneforge##25235
			..turnin One Last Delivery##11962
			..accept Weapons for Farshire##11963
		step
			goto Borean Tundra,58.75,68.36
			.talk Leryssa##25251
			..turnin The Late William Allerton##11600
			..accept Lost and Found##11601
		step
			goto Borean Tundra,58.29,68.05
			.talk James Deacon##25245
			..turnin Lost and Found##11601
			..accept In Wine, Truth##11603
		step
			goto Borean Tundra,58.22,62.82
			.talk Gerald Green##26083
			..turnin Weapons for Farshire##11963
			..accept Call to Arms!##11965
		step
			goto Borean Tundra,57.32,59.43
			.' Interact with gameobject: Bell Rope
			.info It looks like a huge long rope hanging in this stairwell inside the building.
			.goal Ring the Farshire Bell|q 11965/1
		step
			goto Borean Tundra,58.22,62.82
			.talk Gerald Green##26083
			..turnin Call to Arms!##11965
		step
			goto Borean Tundra,61.90,65.68
			.collect Kul Tiras Wine##34714|q 11603/1
			.info Underwater.
		step
			goto Borean Tundra,58.53,68.09
			.talk Old Man Colburn##25302
			..turnin In Wine, Truth##11603
			..accept A Deserter##11604
		step
			goto Borean Tundra,56.68,71.45
			.talk Private Brau##25395
			..turnin A Deserter##11604
			..accept Cowards and Fools##11932
		step
			goto Borean Tundra,47.13,75.48
			.talk Karuk##25435
			..turnin A Diplomatic Mission##12141
			..accept Karuk's Oath##11613
		step
			goto Borean Tundra,44.09,77.90
			.kill Riplash Myrmidon##24576|n
			.info Kill the cheering npc's nearby as well.
			.talk Captured Tuskarr Prisoner##25636
			..accept Cruelty of the Kvaldir##12471
		step
			goto Borean Tundra,46.92,78.07
			.kill 6 Skadir Raider##25522|q 11613/1
		step
			goto Borean Tundra,46.92,78.07
			.kill 5 Skadir Longboatsman##25521|q 11613/2
		step
			goto Borean Tundra,47.13,75.48
			.talk Karuk##25435
			..turnin Karuk's Oath##11613
			..turnin Cruelty of the Kvaldir##12471
			..accept Gamel the Cruel##11619
		step
			goto Borean Tundra,46.42,78.23
			.kill Gamel the Cruel##26449|q 11619/1
			.info Inside the small cave.
		step
			goto Borean Tundra,47.13,75.48
			.talk Karuk##25435
			..turnin Gamel the Cruel##11619
			..accept A Father's Words##11620
		step
			goto Borean Tundra,43.61,80.52
			.talk Veehja##25450
			..turnin A Father's Words##11620
			..accept The Trident of Naz'jan##11625
		step
			goto Borean Tundra,54.99,88.56
			.from Ragnar Drakkarlund##26451
			.info Inside the building.
			.get Trident of Naz'jan##35774|q 11625/1
		step
			goto Borean Tundra,43.60,80.53
			.talk Veehja##25450
			..turnin The Trident of Naz'jan##11625
			..accept The Emissary##11626
		step
			goto Borean Tundra,52.16,88.27
			.use Trident of Naz'jan##35850
			.info Use it on Leviroth underwater nearby.
			.info Swim to the bubbling rock underwater at this spot.
			.info Being next to the bubbling rock will allow you to breathe underwater.
			.kill Leviroth##26452|q 11626/1
		step
			goto Borean Tundra,47.13,75.48
			.talk Karuk##25435
			..turnin The Emissary##11626
		step
			goto Borean Tundra,57.05,44.32
			.talk Arch Druid Lathorius##25809
			..accept A Mission Statement##11864 |instant
			..accept Ears of Our Enemies##11866
			..accept Help Those That Cannot Help Themselves##11876
		step
			goto Borean Tundra,57.32,44.08
			.talk Hierophant Cenius##25810
			..accept Happy as a Clam##11869
		step
			goto Borean Tundra,57.24,43.70
			.talk Killinger the Den Watcher##25812
			..accept Ned, Lord of Rhinos...##11884
		step
			goto Borean Tundra,56.80,44.03
			.talk Zaza##25811
			..accept Unfit for Death##11865
		step
			goto Borean Tundra,55.18,38.58
			.use D.E.H.T.A. Trap Smasher##35228
			.info Use it while standing next to Trapped Mammoth Calves around this area.
			.info Try to avoid	killing mammoths, you'll get a debuff for 3 minutes that may cause nearby druid guards to attack you.
			.' Free 8 Mammoth Calves|q 11876/1
		step
			goto Borean Tundra,52.30,44.84
			.from Loot Crazed Diver##25836
			.info Underwater around this area.
			.get 15 Nesingwary Lackey Ear##35188|q 11866/1
		step
			goto Borean Tundra,52.30,44.84
			.kill 10 Loot Crazed Diver##25836|q 11869/1
		step
			goto Borean Tundra,45.1,44.9
			.kill Nedar, Lord of Rhinos##25801|q 11884/1 
			.info He rides on a gray rhino that walks around this area.
			.kill "Lunchbox"##25968|q 11884/2
			.info He looks like a gray rhino that walks around this area.
			.' You can find them here (1)|at 46.5,45
			.' You can find them here (2)|at 48.05,40.3
		step
			goto Borean Tundra,56.75,48.66
			.use Pile of Fake Furs##35127
			.info Use it inside the Caribou Traps on the ground around this area.
			.info They look like metal spiked traps on the ground around this area.
			.' Trap 8 Nesingwary Trappers|q 11865/1
		step
			goto Borean Tundra,57.05,44.32
			.talk Arch Druid Lathorius##25809
			..turnin Ears of Our Enemies##11866
			..turnin Help Those That Cannot Help Themselves##11876
			..accept Khu'nok Will Know##11878
		step
			goto Borean Tundra,57.33,44.09
			.talk Hierophant Cenius##25810
			..turnin Happy as a Clam##11869
			..accept The Abandoned Reach##11870
		step
			goto Borean Tundra,57.14,43.60
			.talk Killinger the Den Watcher##25812
			..turnin Ned, Lord of Rhinos...##11884
		step
			goto Borean Tundra,56.80,44.04
			.talk Zaza##25811
			..turnin Unfit for Death##11865
			..accept The Culler Cometh##11868
		step
			goto Borean Tundra,59.44,30.37
			.goal Deliver the Orphaned Mammoth Calf to Khu'nok|q 11878/1
			.info The calf is slow so don't move too fast or you'll lose it.
		step
			goto Borean Tundra,59.44,30.37
			.talk Khu'nok the Behemoth##25862
			..turnin Khu'nok Will Know##11878
			..accept Kaw the Mammoth Destroyer##11879
		step
			goto Borean Tundra,55.88,31.39
			.' Interact with NPC: Wooly Mammoth Bull
			.info Around this area.
			.' Ride a Wooly Mammoth Bull |invehicle |q 11879
		step
			goto Borean Tundra,53.7,23.9
			.kill Kaw the Mammoth Destroyer##25802|n
			.info Use the abilities on your action bar.
			.collect Kaw's War Halberd##35234|q 11879/1
			.info It appears after you	kill Kaw the Mammoth Destroyer.
			.info You will have to stop riding the mammoth to be able to loot it.
			.info Click the red arrow on your action bar to stop riding the mammoth.
		step
			goto Borean Tundra,56.98,18.70
			.talk Fizzcrank Fullthrottle##25590
			..turnin Distress Call##11707
			..accept The Mechagnomes##11708
		step
			goto Borean Tundra,56.98,18.70
			.talk Fizzcrank Fullthrottle##25590
			.' Tell him "Tell me what's going on out here, Fizzcrank."
			.goal Listen to Fizzcrank's Tale|q 11708/1
		step
			goto Borean Tundra,57.44,18.74
			.talk Jinky Wingnut##25747
			..turnin The Mechagnomes##11708
			..accept Re-Cursive##11712
		step
			goto Borean Tundra,57.51,18.61
			.talk Mordle Cogspinner##25702
			..accept King Mrgl-Mrgl##11704
			..accept What's the Matter with the Transmatter?##11710
		step
			goto Borean Tundra,57.93,18.80
			.talk Crafty Wobblesprocket##25477
			..accept Dirty, Stinkin' Snobolds!##11645
		step
			goto Borean Tundra,57.05,44.32
			.talk Arch Druid Lathorius##25809
			..turnin Kaw the Mammoth Destroyer##11879
		step
			goto Borean Tundra,57.26,56.45
			.kill Karen "I Don't Caribou" the Culler##25803|q 11868/1
			.info She walks around this small area.
		step
			goto Borean Tundra,57.80,55.11
			.talk Hierophant Liandra##25838
			..turnin The Abandoned Reach##11870
			..accept Not On Our Watch##11871
		step
			goto Borean Tundra,59.53,58.66
			.collect 12 Shipment of Animal Parts##35222|q 11871/1
			.info They look like brown bags and crates on the ground around this area.
		step
			goto Borean Tundra,57.80,55.11
			.talk Hierophant Liandra##25838
			..turnin Not On Our Watch##11871
			..accept The Nefarious Clam Master...##11872
		step
			goto Borean Tundra,61.19,66.62
			.kill Clam Master K##25800|q 11872/1
			.info He walks underwater around this area.
		step
			goto Borean Tundra,57.33,44.08
			.talk Hierophant Cenius##25810
			..turnin The Nefarious Clam Master...##11872
		step
			goto Borean Tundra,56.80,44.04
			.talk Zaza##25811
			..turnin The Culler Cometh##11868
		step
			goto Borean Tundra,57.05,44.32
			.talk Archdruid Lathorius##25809
			..accept The Assassination of Harold Lane##11892
		step
			goto Borean Tundra,49.91,41.54
			.kill Harold Lane##25804|q 11892/1
		step
			goto Borean Tundra,57.05,44.32
			.talk Archdruid Lathorius##25809
			..turnin The Assassination of Harold Lane##11892
		step
			goto Borean Tundra,54.29,36.10
			.talk Etaruk##25292
			..accept Reclaiming the Quarry##11612
		step
			goto Borean Tundra,54.60,36.00
			.' Interact with gameobject: Elder Atkanok
			..accept The Honored Ancestors##11605
		step
			goto Borean Tundra,52.82,34.03
			.' Interact with gameobject: "Elder Sagani"
			.' Identify the Elder Sagani|q 11605/2
		step
			goto Borean Tundra,52.31,31.15
			.' Interact with gameobject: "Elder Takret"
			.' Identify the Elder Takret|q 11605/3
		step
			goto Borean Tundra,50.87,32.39
			.' Interact with gameobject: "Elder Kesuk"
			.' Identify the Elder Kesuk|q 11605/1
		step
			goto Borean Tundra,52.16,33.57
			.kill 12 Beryl Treasure Hunter##25353|q 11612/1
		step
			goto Borean Tundra,54.62,35.74
			.' Interact with gameobject: Elder Atkanok
			..turnin The Honored Ancestors##11605
			..accept The Lost Spirits##11607
		step
			goto Borean Tundra,54.29,36.10
			.talk Etaruk##25292
			..turnin Reclaiming the Quarry##11612
			..accept Hampering Their Escape##11617
		step
			goto Borean Tundra,52.12,33.18
			.from Beryl Reclaimer##25449
			.collect 3 Gnomish Grenade##34772|q 11617 |future
		step
			goto Borean Tundra,52.28,31.93
			.use Gnomish Grenade##34772
			.info Use it while standing up on the floating platform.
			.goal Destroy the North Platform|q 11617/2
		step
			goto Borean Tundra,51.00,33.99
			.use Gnomish Grenade##34772
			.info Use it while standing up on the floating platform.
			.goal Destroy the West Platform|q 11617/3
		step
			goto Borean Tundra,52.71,34.69
			.use Gnomish Grenade##34772
			.info Use it while standing up on the floating platform.
			.goal Destroy the East Platform|q 11617/1
		step
			goto Borean Tundra,52.12,33.18
			.from Beryl Hound##25355
			.collect Core of Malice##34711|n
			.use Core of Malice##34711
			.info Use them on Kaskala Craftsmen around this area.
			.info They look like walrus man spirits around this area.
			.' Free 3 Kaskala Craftsman Spirits|q 11607/1
			.' Free 3 Kaskala Shaman Spirits|q 11607/2
		step
			goto Borean Tundra,54.62,35.74
			.' Interact with gameobject: Elder Atkanok
			..turnin The Lost Spirits##11607
			..accept Picking Up the Pieces##11609
		step
			goto Borean Tundra,54.29,36.10
			.talk Etaruk##25292
			..turnin Hampering Their Escape##11617
			..accept A Visit to the Curator##11623
		step
			goto Borean Tundra,50.09,32.56
			.kill Curator Insivius##25448|q 11623/1
			.info He walks around this small area.
		step
			goto Borean Tundra,51.95,32.94
			.collect 6 Tuskarr Ritual Object##34713|q 11609/1
			.info They look like stone fish and incense smoke bowls on the ground around this area.
		step
			goto Borean Tundra,54.62,35.74
			.' Interact with gameobject: Elder Atkanok
			..turnin Picking Up the Pieces##11609
			..accept Leading the Ancestors Home##11610
		step
			goto Borean Tundra,54.29,36.10
			.talk Etaruk##25292
			..turnin A Visit to the Curator##11623
		step
			goto Borean Tundra,52.82,34.04
			.use Tuskarr Ritual Object##34715
			.info Use it while standing next to the Elder Sagani.
			.' Complete Elder Sagani's Ceremony|q 11610/2
		step
			goto Borean Tundra,52.31,31.15
			.use Tuskarr Ritual Object##34715
			.info Use it while standing next to the Elder Takret.
			.' Complete Elder Takret's Ceremony|q 11610/3
		step
			goto Borean Tundra,50.87,32.39
			.use Tuskarr Ritual Object##34715
			.info Use it while standing next to the Elder Kesuk.
			.' Complete Elder Kesuk's Ceremony|q 11610/1
		step
			goto Borean Tundra,54.62,35.74
			.' Interact with gameobject: Elder Atkanok
			..turnin Leading the Ancestors Home##11610
		step
			goto Borean Tundra,45.26,33.35
			.talk Librarian Donathan##25262
			..turnin Nick of Time##11575
			..accept Prison Break##11587
		step
			goto Borean Tundra,44.98,33.38
			.talk Librarian Garren##25291
			..accept Monitoring the Rift: Cleftcliff Anomaly##11576
		step
			goto Borean Tundra,41.99,37.65
			.from Beryl Mage Hunter##25585
			.collect Beryl Prison Key##34688|q 11587 |future
		step
			goto Borean Tundra,40.44,39.16
			.' Interact with gameobject: Arcane Prison
			.info Not all of the Arcane Prisons will complete the quest goal.
			.info It seems random.
			.' Rescue the Arcane Prisoners|q 11587/1
			.' You can find more Arcane Prisons (1)|at 41.79,42.54
			.' You can find more Arcane Prisons (2)|at 42.59,36.76
		step
			goto Borean Tundra,34.36,42.06
			.use Arcanometer##34669
			.' Take the Cleftcliff Anomaly Reading|q 11576/1
		step
			goto Borean Tundra,44.98,33.38
			.talk Librarian Garren##25291
			..turnin Monitoring the Rift: Cleftcliff Anomaly##11576
			..accept Monitoring the Rift: Sundered Chasm##11582
		step
			goto Borean Tundra,45.26,33.35
			.talk Librarian Donathan##25262
			..turnin Prison Break##11587
			..accept Abduction##11590
		step
			goto Borean Tundra,43.98,28.49
			.use Arcanometer##34669
			.info Swim down to the pink chasm underwater.
			.' Take the Sundered Chasm Reading|q 11582/1
		step
			goto Borean Tundra,44.98,33.38
			.talk Librarian Garren##25291
			..turnin Monitoring the Rift: Sundered Chasm##11582
			..accept Monitoring the Rift: Winterfin Cavern##12728
		step
			goto Borean Tundra,40.11,19.77
			.use Arcanometer##34669
			.' Take the Winterfin Cavern Reading|q 12728/1
		step
			goto Borean Tundra,44.98,33.38
			.talk Librarian Garren##25291
			..turnin Monitoring the Rift: Winterfin Cavern##12728
		step
			goto Borean Tundra,42.66,38.06
			.kill Beryl Sorcerer##25316|n
			.info Don't kill them, just weaken them.
			.use Arcane Binder##34691
			.info Use it on the Beryl Sorcerer when it is weakened.
			.' Capture a Beryl Sorcerer|q 11590/1
		step
			goto Borean Tundra,45.26,33.35
			.talk Librarian Donathan##25262
			..turnin Abduction##11590
			..accept The Borean Inquisition##11646
		step
			goto Borean Tundra,46.33,32.85
			.talk Librarian Normantis##25480
			..turnin The Borean Inquisition##11646
			..accept The Art of Persuasion##11648
		step
			goto Borean Tundra,46.32,32.92
			.use Neural Needler##34811
			.info Use it on the Imprisoned Beryl Sorcerer repeatedly.
			.info Upstairs inside the tower.
			.' Interrogate the Prisoner|q 11648/1
		step
			goto Borean Tundra,46.33,32.85
			.talk Librarian Normantis##25480
			..turnin The Art of Persuasion##11648
			..accept Sharing Intelligence##11663
		step
			goto Borean Tundra,45.26,33.35
			.talk Librarian Donathan##25262
			..turnin Sharing Intelligence##11663
			..accept A Race Against Time##11671
		step
			goto Borean Tundra,41.80,39.16
			.use Beryl Shield Detonator##34897
			.info If it won't let you, wait until Inquisitor Salrand appears again.
			.kill Inquisitor Salrand##25584|n
			.' Interact with gameobject: Salrand's Lockbox
			.info It appears after you kill Inquisitor Salrand.
			.collect Salrand's Broken Key##34909|q 11671/1
		step
			goto Borean Tundra,45.26,33.35
			.talk Librarian Donathan##25262
			..turnin A Race Against Time##11671
			..accept Reforging the Key##11679
		step
			goto Borean Tundra,45.32,34.52
			.talk Surristrasz##24795
			..turnin Reforging the Key##11679
			..accept Taking Wing##11680
		step
			goto Borean Tundra,46.38,37.31
			.talk Warmage Anzim##25356
			..turnin Taking Wing##11680
			..accept Rescuing Evanor##11681
		step
			goto Borean Tundra,46.37,32.40
			.talk Archmage Evanor##25785
			..turnin Rescuing Evanor##11681
			..accept Dragonspeak##11682
		step
			goto Borean Tundra,45.32,34.52
			.talk Surristrasz##24795
			..turnin Dragonspeak##11682  
			..accept Traversing the Rift##11733
		step
			goto Borean Tundra,32.95,34.40
			.talk Archmage Berinand##25314
			..turnin Traversing the Rift##11733
			..accept Reading the Meters##11900
			..accept Secrets of the Ancients##11910
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..accept Basic Training##11918
		step
			goto Borean Tundra,33.49,34.38
			.talk Librarian Serrah##26110
			..accept Nuts for Berries##11912
		step
			goto Borean Tundra,34.29,28.61
			.kill Coldarra Spellbinder##25719|n
			.collect Scintillating Fragment##35648|q 11941 |future
			.use Scintillating Fragment##35648
			..accept Puzzling...##11941
		step
			goto Borean Tundra,28.32,28.48
			.' Interact with gameobject: Coldarra Geological Monitor
			.' Take the Nexus Geological Reading|q 11900/1
		step
			goto Borean Tundra,31.71,20.57
			.' Interact with gameobject: Coldarra Geological Monitor
			.info Inside the building.
			.' Take the Northern Coldarra Reading|q 11900/3
		step
			goto Borean Tundra,22.62,23.45
			.' Interact with gameobject: Coldarra Geological Monitor
			.info Inside the building.
			.' Take the Western Coldarra Reading|q 11900/4
		step
			goto Borean Tundra,28.27,35.02
			.' Interact with gameobject: Coldarra Geological Monitor
			.info Inside the building.
			.' Take the Southern Coldarra Reading|q 11900/2
		step
			goto Borean Tundra,31.49,30.09
			.kill 10 Coldarra Spellweaver##25722|q 11918/1
		step
			goto Borean Tundra,31.49,30.09
			.from Glacial Ancient##25709
			.get 3 Glacial Splinter##35483|q 11910/1
		step
			goto Borean Tundra,31.49,30.09
			.from Magic-Bound Ancient##25707
			.get 3 Magic-Bound Splinter##35484|q 11910/2
		step
			goto Borean Tundra,26.05,19.57
			.collect 10 Frostberry##35492|q 11912/1
			.info They look like bushes on the ground around this area.
		step
			goto Borean Tundra,32.95,34.40
			.talk Archmage Berinand##25314
			..turnin Reading the Meters##11900
			..turnin Secrets of the Ancients##11910
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..turnin Basic Training##11918
			..turnin Puzzling...##11941
			..accept Hatching a Plan##11936
			..accept The Cell##11943
		step
			goto Borean Tundra,33.49,34.38
			.talk Librarian Serrah##26110
			..turnin Nuts for Berries##11912
			..accept Keep the Secret Safe##11914
		step
			goto Borean Tundra,24.99,34.60
			.from Coldarra Wyrmkin##25728
			.collect 5 Frozen Axe##35586|q 11936 |future
		step
			goto Borean Tundra,24.13,29.59
			.from Warbringer Goredrak##25712
			.get Energy Core##35669|q 11943/1
		step
			goto Borean Tundra,27.32,20.40
			.from General Cerulean##25716
			.get Prison Casing##35668|q 11943/2
		step
			goto Borean Tundra,27.95,24.20
			.' Destroy 5 Dragon Eggs|q 11936/1
			.info They look like big dark colored eggs with white crystals on them on the ground around this area.
		step
			goto Borean Tundra,27.95,24.20
			.from Arcane Serpent##25721
			.get 5 Nexus Mana Essence##35493|q 11914/1
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..turnin Hatching a Plan##11936
			..accept Drake Hunt##11919
			..turnin The Cell##11943
		step
			goto Borean Tundra,33.49,34.38
			.talk Librarian Serrah##26110
			..turnin Keep the Secret Safe##11914
		step
			goto Borean Tundra,24.72,27.95
			.use Raelorasz's Spear##35506
			.info Use it on a Nexus Drake Hatchling around this area.
			.info They are flying above you in the sky around this area.
			.info Do not kill it, let it hit you until it becomes friendly.
			.' Subdue a Drake Hatchling |havebuff 134155 |q 11919
		step
			goto Borean Tundra,33.31,34.53
			.' Capture the Nexus Drake|q 11919/1
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..turnin Drake Hunt##11919
			..accept Cracking the Code##11931
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26206
			..accept Keristrasza##11946
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26206
			..turnin Keristrasza##11946
			..accept Bait and Switch##11951
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			.' Tell him "I seem to have lost the Augmented Arcane Prison. Did I leave it here with you?"
			.collect Augmented Arcane Prison##35671|q 11951 |future
		step
			goto Borean Tundra,32.70,27.83
			.from Inquisitor Caleras##25720
			.get Azure Codex##35628|q 11931/2
		step
			goto Borean Tundra,32.63,28.60
			.from Coldarra Spellbinder##25719
			.get 3 Shimmering Rune##35629|q 11931/1
		step
			goto Borean Tundra,28.52,30.93
			.collect 10 Crystallized Mana Shard##35685|q 11951/1
			.info They look like clusters of pink crystals on the ground around this area.
			.info You can find more around the perimeter of the big tower shooting energy into the sky.
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26237
			..turnin Bait and Switch##11951
			..accept Saragosa's End##11957
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26237
			.' Tell her "I am prepared to face Saragosa!"
			.' Teleport to Saragosa|goto 21.19,22.47,0.5 |noway |q 11957
		step
			goto Borean Tundra,22.07,22.66
			.use Arcane Power Focus##35690
			.info Watch the dialogue.
			.from Saragosa##26232
			.get Saragosa's Corpse##35709|q 11957/1
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26206
			..turnin Saragosa's End##11957
			..accept Mustering the Reds##11967
		step
			.use Augmented Arcane Prison##35671
			.info Next to you:
			.talk Keristrasza##26206
			.' Tell her "Keristrasa, I am finished here. Please return me to the Transitus Shield."
			.' Return to Transitus Shield|goto 33.28,34.44,0.5 |noway |q 11967
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..turnin Cracking the Code##11931
			..turnin Mustering the Reds##11967
			..accept Springing the Trap##11969
		step
			goto Borean Tundra,25.40,21.77
			.use Raelorasz' Spark##44950
			.info Use it next to the Signal Fire.
			.info Watch the dialogue.
			.' Lure Malygos|q 11969/1
		step
			goto Borean Tundra,34.19,25.55
			.info Watch the dialogue
			.' Fly with Keristrasa|q 11969
		step
			goto Borean Tundra,33.31,34.53
			.talk Raelorasz##26117
			..turnin Springing the Trap##11969
		step
			goto Borean Tundra,56.74,12.61
			.collect 10 Crafty's Stuff##34787|q 11645/1
			.info They look like wooden crates on the ground around this area.
		step
			goto Borean Tundra,55.57,12.57
			.talk Bonker Togglevolt##25589
			..accept Get Me Outa Here!##11673
		step
			goto Borean Tundra,53.8,13.87
			.goal Escort Bonker Togglevolt to Safety|q 11673/1
			.info Follow Bonker Togglevolt and protect him.
		step
			goto Borean Tundra,56.98,18.71
			.talk Fizzcrank Fullthrottle##25590
			..turnin Get Me Outa Here!##11673
		step
			goto Borean Tundra,57.72,18.97
			.talk Crafty Wobblesprocket##25477
			..turnin Dirty, Stinkin' Snobolds!##11645
			..accept Just a Few More Things...##11650
		step
			goto Borean Tundra,64.40,23.14
			.collect Crafty's Tools##34802|q 11650/1
		step
			goto Borean Tundra,63.51,23.81
			.kill Fizzcrank Mechagnome##25814|n
			.use Re-Cursive Transmatter Injection##34973
			.info Use it on their corpses.
			.' Curse & Port 6 Fizzcrank Gnomes|q 11712/1
		step
			goto Borean Tundra,63.51,23.81
			.from Scavenge-bot 004-A8##25752, Sentry-bot 57-K##25753, Defendo-tank 66D##25758, Scavenge-bot 005-B6##25792, 55-D Collect-a-tron##25793
			.collect The Ultrasonic Screwdriver##34984|q 11729 |future
		step
			.use The Ultrasonic Screwdriver##34984
			..accept The Ultrasonic Screwdriver##11729
		step
			goto Borean Tundra,63.51,23.81
			.collect 15 Fizzcrank Spare Parts##34972|q 11710/1
			.info They look like grey metal objects on the ground around this area.
		step
			goto Borean Tundra,57.63,18.99
			.talk Crafty Wobblesprocket##25477
			..turnin The Ultrasonic Screwdriver##11729
			..accept Master and Servant##11730
		step
			goto Borean Tundra,57.44,18.74
			.talk Jinky Wingnut##25747
			..turnin Re-Cursive##11712
			..accept Lefty Loosey, Righty Tighty##11788
		step
			goto Borean Tundra,57.52,18.61
			.talk Mordle Cogspinner##25702
			..turnin What's the Matter with the Transmatter?##11710
			..accept Check in With Bixie##11692
		step
			goto Borean Tundra,56.98,18.71
			.talk Fizzcrank Fullthrottle##25590
			..accept Finding Pilot Tailspin##11725
		step
			goto Borean Tundra,60.23,20.39
			.' Interact with gameobject: West Point Station Valve
			.kill Twonky##25830|q 11788/1
		step
			goto Borean Tundra,65.41,17.51
			.' Interact with gameobject: North Point Station Valve
			.kill ED-210##25831|q 11788/2
		step
			goto Borean Tundra,63.68,22.50
			.' Interact with gameobject: Mid Point Station Valve
			.kill Max Blasto##25832|q 11788/3
		step
			goto Borean Tundra,65.25,28.78
			.' Interact with gameobject: South Point Station Valve
			.kill The Grinder##25833|q 11788/4
		step
			goto Borean Tundra,63.29,23.87
			.from Scavenge-bot 004-A8##25752, Sentry-bot 57-K##25753, Defendo-tank 66D##25758, Scavenge-bot 005-B6##25792, 55-D Collect-a-tron##25793
			.use The Ultrasonic Screwdriver##35116
			.info Use it on their corpses.
			.' Reprogram 15 Robots|q 11730/1
		step
			goto Borean Tundra,61.68,35.78
			.talk Iggy "Tailspin" Cogtoggle##25807
			..turnin Finding Pilot Tailspin##11725
			..accept A Little Bit of Spice##11726
		step
			goto Borean Tundra,60.82,50.13
			.from Gorloc Waddler##25685, Gorloc Gibberer##25686, Gorloc Steam Belcher##25687
			.get 4 Gorloc Spice Pouch##34983|q 11726/1
		step
			goto Borean Tundra,61.68,35.78
			.talk Iggy "Tailspin" Cogtoggle##25807
			..turnin A Little Bit of Spice##11726
			..accept Lupus Pupus##11728
		step
			goto Borean Tundra,61.31,32.56
			.use Wolf Bait##35121
			.info Use it on Oil-stained Wolves around this area.
			.collect 8 Microfilm##35123|q 11728/1
			.info They appear on the ground after the wolves eat the bait.
		step
			goto Borean Tundra,61.68,35.78
			.talk Iggy "Tailspin" Cogtoggle##25807
			..turnin Lupus Pupus##11728
			..accept Emergency Protocol: Section 8.2, Paragraph C##11795
		step
			goto Borean Tundra,61.35,34.08
			.' Interact with Fizzcrank Recon Pilot
			.info They look like dead gnomes on the ground around this area.
			.' Choose "Search for the pilot's insignia."
			.collect 6 Fizzcrank Pilot's Insignia##35126|q 11795/1
		step
			goto Borean Tundra,61.68,35.78
			.talk Iggy "Tailspin" Cogtoggle##25807
			..turnin Emergency Protocol: Section 8.2, Paragraph C##11795
			..accept Emergency Protocol: Section 8.2, Paragraph D##11796
		step
			goto Borean Tundra,59.62,39.10
			.use Emergency Torch##35224
			.' Scuttle a Southern Wreck|q 11796/2
		step
			goto Borean Tundra,63.32,37.02
			.use Emergency Torch##35224
			.' Scuttle the Eastern Wreck|q 11796/1
		step
			goto Borean Tundra,60.90,33.62
			.use Emergency Torch##35224
			.' Scuttle a Northwestern Wreck|q 11796/3
		step
			goto Borean Tundra,61.68,35.78
			.talk Iggy "Tailspin" Cogtoggle##25807
			..turnin Emergency Protocol: Section 8.2, Paragraph D##11796
			..accept Give Fizzcrank the News##11873
		step
			goto Borean Tundra,63.80,46.12
			.talk Ataika##26169
			..turnin Cowards and Fools##11932
			..accept The Son of Karkut##12086
			..accept Not Without a Fight!##11949
		step
			goto Borean Tundra,67.27,53.03
			.kill 12 Kvaldir Raider##25760|q 11949/1
		step
			goto Borean Tundra,63.80,46.12
			.talk Ataika##26169
			..turnin Not Without a Fight!##11949
			..accept Muahit's Wisdom##11950
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin Muahit's Wisdom##11950
			..accept Spirits Watch Over Us##11961
		step
			goto Borean Tundra,67.64,50.41
			.talk Iruk##26219
			.info Underwater.
			.' Choose <Search corpse for Issliruk's Totem.>
			.collect Issliruk's Totem##35701|q 11961/1
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin Spirits Watch Over Us##11961
			..accept The Tides Turn##11968
		step
			goto Borean Tundra,67.60,56.70
			.kill Heigarr the Horrible##26266|q 11968/1
			.info He fights around this area.
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin The Tides Turn##11968
		step
			goto Borean Tundra,67.27,54.85
			.talk Hotawa##28382
			..accept Travel to Moa'ki Harbor##12117
		step
			goto Borean Tundra,82.01,46.42
			.talk Corporal Venn##26187
			..turnin The Son of Karkut##12086
			..accept Surrounded!##11944
		step
			goto Borean Tundra,82.16,46.40
			.talk Private Casey##26186
			..accept The Lost Courier##12157
		step
			goto Borean Tundra,81.54,42.50
			.from Rocknar##25514
			.get A Handful of Rocknar's Grit##34804|q 11650/3
		step
			goto Borean Tundra,82.38,43.73
			.kill 7 Ziggurat Defender##26202|q 11944/1
		step
			goto Borean Tundra,82.01,46.42
			.talk Corporal Venn##26187
			..turnin Surrounded!##11944
			..accept Thassarian, the Death Knight##12088
		step
			goto Borean Tundra,84.79,41.67
			.talk Thassarian##26170
			..turnin Thassarian, the Death Knight##12088
			..accept Finding the Phylactery##11956
		step
			goto Borean Tundra,85.40,33.34
			.' Interact with gameobject Frozen Phylactery
			.info Underwater.
			.from Phylactery Guardian##26225
			.get Tanathal's Phylactery##35687|q 11956/1
		step
			goto Borean Tundra,84.79,41.67
			.talk Thassarian##26170
			..turnin Finding the Phylactery##11956
			..accept Buying Some Time##11938
		step
			goto Borean Tundra,85.99,25.13
			.' Kill En'kilah enemies around this area
			.' Slay 20 En'kilah Casualties|q 11938/1
		step
			goto Borean Tundra,84.79,41.67
			.talk Thassarian##26170
			..turnin Buying Some Time##11938
			..accept Words of Power##11942
		step
			goto Borean Tundra,89.43,28.89
			.from High Priest Talet-Kha##26073
			.info You must kill the 2 cocoons next to her before you can attack her.
			.get High Priest Talet-Kha's Scroll##35354|q 11942/3
		step
			goto Borean Tundra,88.06,20.94
			.from High Priest Andorath##25392
			.info Enter the 2-nd floor building.
			.get High Priest Andorath's Scroll##35355|q 11942/1
		step
			goto Borean Tundra,83.88,20.46
			.from High Priest Naferset##26076
			.info Inside the building.
			.info You must kill the 3 enemies around him before you can attack him.
			.get High Priest Naferset's Scroll##35353|q 11942/2
		step
			goto Borean Tundra,84.79,41.67
			.talk Thassarian##26170
			..turnin Words of Power##11942
			..accept Last Rites##12019
		step
			goto Borean Tundra,86.48,28.54|n
			.' Stand in the glowing circle to teleport|goto 86.48,28.54,0.1|q 12019
		step
			goto Borean Tundra,86.91,30.15|n
			.' Teleport on the second floor|goto 86.91,30.15,0.1|q 12019
		step
			goto Borean Tundra,86.64,31.37
			.talk Thassarian##26170
			.' Tell him "Let's do this, Thassarian. It's now or never."
			.info Watch the dialogue.
			.kill Prince Valanar##28189|n
			.' Witness the Last Rites|q 12019/1
		step
			goto Borean Tundra,86.79,30.58
			.talk Thassarian##26170
			..turnin Last Rites##12019
		step
			goto Borean Tundra,56.98,18.71
			.talk Fizzcrank Fullthrottle##25590
			..turnin Give Fizzcrank the News##11873
		step
			goto Borean Tundra,57.06,20.11
			.talk Abner Fizzletorque##25780
			..accept Scouting the Sinkholes##11713
		step
			goto Borean Tundra,57.44,18.74
			.talk Jinky Wingnut##25747
			..turnin Lefty Loosey, Righty Tighty##11788
			..accept The Gearmaster##11798
		step
			goto Borean Tundra,57.62,19.05
			.talk Crafty Wobblesprocket##25477
			..turnin Just a Few More Things...##11650
			..turnin Master and Servant##11730
			..accept Hah... You're Not So Big Now!##11653
		step
			goto Borean Tundra,56.53,12.50
			.use Crafty's Ultra-Advanced Proto-Typical Shortening Blaster##34812
			.info Use it on Magmoth Crushers around this area.
			.kill Magmoth Crusher##25434|n
			.info Don't kill them until they have the buff.
			.info They look like big blue four-legged creatures that walk around this area.
			.' Test Crafty's Blaster 5 Times|q 11653/1
		step
			goto Borean Tundra,57.62,19.02
			.talk Crafty Wobblesprocket##25477
			..turnin Hah... You're Not So Big Now!##11653
			..accept Plan B##11658
		step
			goto Borean Tundra,49.59,26.68
			.collect Warsong Banner##34690|q 11658/2
		step
			goto Borean Tundra,49.78,24.17
			.' Interact with NPC: Dead Caravan Worker
			.info They look like corpses with green smoke coming out of them on the ground around this area.
			.' Choose "Take their clothing."
			.collect 10 Warsong Outfit##34842|q 11658/1
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..turnin King Mrgl-Mrgl##11704
			..accept Learning to Communicate##11571
		step
			goto Borean Tundra,42.78,17.07
			.kill Scalder##25226|n
			.info He looks like a blue water elemental that swims along this purple trench underwater around this area.
			.use The King's Empty Conch##34598
			.info Use it on Scalder's corpse.
			.collect The King's Filled Conch##34623|q 11571/1
		step
			goto Borean Tundra,40.61,16.85
			.from Winterfin Shorestriker##25215, Winterfin Oracle##25216, Winterfin Warrior##25217
			.info They look like small grey clams on the ground around this area.
			.collect 5 Winterfin Clam##34597|q 11559 |future
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..turnin Learning to Communicate##11571
			..accept Winterfin Commerce##11559
		step
			goto Borean Tundra,43.04,13.81
			.talk Ahlurglgr##25206
			..turnin Winterfin Commerce##11559
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..accept Oh Noes, the Tadpoles!##11560
		step
			goto Borean Tundra,42.83,13.65
			.talk Brglmurgl##25199
			..accept Them!##11561
		step
			goto Borean Tundra,40.61,16.85
			.' Interact with gameobject: Cage
			.info They look like yellow wooden cages on the ground around this area.
			.' Rescue 20 Winterfin Tadpoles|q 11560/1
		step
			goto Borean Tundra,40.61,16.85
			.from Winterfin Shorestriker##25215, Winterfin Oracle##25216, Winterfin Warrior##25217
			.' Slay 15 Winterfin Murlocs|q 11561/1
		step
			goto Borean Tundra,42.83,13.65
			.talk Brglmurgl##25199
			..turnin Them!##11561
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..turnin Oh Noes, the Tadpoles!##11560
			..accept I'm Being Blackmailed By My Cleaner##11562
		step
			goto Borean Tundra,42.00,12.77
			.talk Mrmrglmr##25205
			..turnin I'm Being Blackmailed By My Cleaner##11562
			..accept Grmmurggll Mrllggrl Glrggl!!!##11563
		step
			goto Borean Tundra,36.47,8.23
			.from Glrggl##25203
			.info It looks like a larger orca that swims on the surface of the water around this area.
			.get Glrggl's Head##34617|q 11563/1
		step
			goto Borean Tundra,42.00,12.77
			.talk Mrmrglmr##25205
			..turnin Grmmurggll Mrllggrl Glrggl!!!##11563
			..accept The Spare Suit##11565
		step
			goto Borean Tundra,42.03,13.15
			.talk Cleaver Bmurglbrm##25211
			..accept Succulent Orca Stew##11564
		step
			goto Borean Tundra,39.92,11.81
			.from Glimmer Bay Orca##25204
			.info Underwater around this area.
			.get 7 Succulent Orca Blubber##34618|q 11564/1
		step
			goto Borean Tundra,42.03,13.15
			.talk Cleaver Bmurglbrm##25211
			..turnin Succulent Orca Stew##11564
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..turnin The Spare Suit##11565
			..accept Surrender... Not!##11566
		step
			goto Borean Tundra,40.33,19.21
			.use King Mrgl-Mrgl's Spare Suit##34620
			.' Wear King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01|q 11566
		step
			goto Borean Tundra,37.84,23.19
			.talk Glrglrglr##28375
			..accept Keymaster Urmgrgl##11569
		step
			goto Borean Tundra,39.07,22.69
			.' Remove King Mrgl-Mrgl's Spare Suit |nobuff INV_Misc_Head_Murloc_01|q 11566
			.info Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
			.info Be careful, enemies will attack you.
		step
			goto Borean Tundra,39.07,22.69
			.from Keymaster Urmgrgl##25210
			.info He walks around this area inside the cave.
			.get Urmgrgl's Key##34600|q 11569/1
		step
			.use King Mrgl-Mrgl's Spare Suit##34620
			.' Wear King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01|q 11566
		step
			goto Borean Tundra,37.55,27.51
			.from Claximus##25209
			.info Inside the cave.
			.get Claw of Claximus##34621|q 11566/1
		step
			.use King Mrgl-Mrgl's Spare Suit##34620
			.' Wear King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01|q 11566
		step
			goto Borean Tundra,37.84,23.19
			.talk Glrglrglr##28375
			..turnin Keymaster Urmgrgl##11569
		step
			goto Borean Tundra,37.75,23.02
			.' Remove King Mrgl-Mrgl's Spare Suit |nobuff INV_Misc_Head_Murloc_01|q 11570 |future
			.info Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
			.info Be careful, enemies will attack you.
		step
			goto Borean Tundra,37.75,23.02
			.talk Lurgglbr##25208
			..accept Escape from the Winterfin Caverns##11570
		step
			goto Borean Tundra,41.35,16.33
			.goal Escort Lurgglbr to Safety|q 11570/1
			.info Follow Lurgglbr and protect him as he walks.
			.info Let him get attacked first, otherwise he won't stop to help you fight.
		step
			goto Borean Tundra,43.50,13.97
			.talk King Mrgl-Mrgl##25197
			..turnin Surrender... Not!##11566
			..turnin Escape from the Winterfin Caverns##11570
		step
			goto Borean Tundra,57.63,19.00
			.talk Crafty Wobblesprocket##25477
			..turnin Plan B##11658
			..accept It Was The Orcs, Honest!##11670
		step
			.use Crafty's Sack##34871
			.collect Warsong Banner##34869|q 11670
			.collect Warsong Orc Disguise##34870|q 11670
		step
			goto Borean Tundra,55.48,11.17
			.use Warsong Orc Disguise##34870
			.' Wear the Warsong Orc Disguise|havebuff INV_Misc_TabardPVP_04|q 11670
		step
			goto Borean Tundra,55.34,11.93
			.kill Magmothregar##25430|n
			.info He walks around this small area inside the cave.
			.use Warsong Banner##34869
			.info Use it on Magmothregar's corpse.
			.' Plant the Warsong Banner in Magmothregar|q 11670/1
		step
			goto Borean Tundra,57.63,19.00
			.talk Crafty Wobblesprocket##25477
			..turnin It Was The Orcs, Honest!##11670
		step
			goto Borean Tundra,64.53,23.40
			.' Interact with gameobject: The Gearmaster's Manual
			.info Inside the building.
			.info Watch the dialogue
			.from Gearmaster Mechazod##25834
			.get Mechazod's Head##35486|q 11798/2
		step
			goto Borean Tundra,66.35,32.49
			.use Map of the Geyser Fields##34920
			.goal Mark the Location of the Northwest Sinkhole|q 11713/3
		step
			goto Borean Tundra,69.69,32.59
			.use Map of the Geyser Fields##34920
			.goal Mark the Location of the Northeast Sinkhole|q 11713/2
		step
			goto Borean Tundra,70.35,36.68
			.use Map of the Geyser Fields##34920
			.goal Mark the Location of the South Sinkhole|q 11713/1
		step
			goto Borean Tundra,73.42,18.79
			.talk Bixie Wrenchshanker##25705
			..turnin Check in With Bixie##11692
			..accept Oh Great... Plagued Magnataur!##11693
		step
			goto Borean Tundra,75.96,21.60
			.kill 10 Plagued Magnataur##25615|q 11693/1
		step
			goto Borean Tundra,73.42,18.79
			.talk Bixie Wrenchshanker##25705
			..turnin Oh Great... Plagued Magnataur!##11693
			..accept There's Something Going On In Those Caves##11694
		step
			goto Borean Tundra,74.74,14.14
			.use Bixie's Inhibiting Powder##34915
			.info Use it next to the Den of Dying Plague Cauldron inside the small cave.
			.goal Neutralize the Plague Cauldron|q 11694/1
		step
			goto Borean Tundra,73.42,18.79
			.talk Bixie Wrenchshanker##25705
			..turnin There's Something Going On In Those Caves##11694
			..accept Rats, Tinky Went into the Necropolis!##11697
			..accept Might As Well Wipe Out the Scourge##11698
		step
			goto Borean Tundra,69.90,14.74
			.talk Tinky Wickwhistle##25714
			..turnin Rats, Tinky Went into the Necropolis!##11697
			..accept I'm Stuck in this Damned Cage... But Not For Long!##11699
		step
			goto Borean Tundra,68.54,18.41
			.from Festering Ghoul##25660
			.info You can find more upstairs inside the building.
			.get Engine-Core Crystal##34957|q 11699/1
		step
			goto Borean Tundra,69.64,13.86
			.from Lich-Lord Chillwinter##25682
			.info On top of the building.
			.get Piloting Scourgestone##34959|q 11699/3
		step
			goto Borean Tundra,69.70,12.87
			.from Doctor Razorgrin##25678
			.info He walks around this small area inside the building.
			.info Jump down to him from on top of the building.
			.get Magical Gyroscope##34958|q 11699/2
		step
			goto Borean Tundra,69.90,14.74
			.talk Tinky Wickwhistle##25714
			..turnin I'm Stuck in this Damned Cage... But Not For Long!##11699
			..accept Let Bixie Know##11700
		step
			goto Borean Tundra,68.54,18.41
			.' Kill enemies around this area
			.' Destroy 20 Talramas Scourge|q 11698/1
		step
			goto Borean Tundra,73.42,18.79
			.talk Bixie Wrenchshanker##25705
			..turnin Let Bixie Know##11700
			..turnin Might As Well Wipe Out the Scourge##11698
			..accept Back to the Airstrip##11701
		step
			goto Borean Tundra,56.98,18.71
			.talk Fizzcrank Fullthrottle##25590
			..turnin Back to the Airstrip##11701
			..turnin The Gearmaster##11798
		step
			goto Borean Tundra,57.06,20.11
			.talk Abner Fizzletorque##25780
			..turnin Scouting the Sinkholes##11713
			..accept Fueling the Project##11715
		step
			goto Borean Tundra,60.44,27.98
			.use Portable Oil collector##34975
			.info Use it next to the black oil spots on the ground in the water around this area.
			.collect 8 Barrels of Oil|q 11715/1
		step
			goto Borean Tundra,57.06,20.11
			.talk Abner Fizzletorque##25780
			..turnin Fueling the Project##11715
			..accept A Bot in Mammoth's Clothing##11718
		step
			goto Borean Tundra,52.86,21.87
			.from Wooly Mammoth##24614, Wooly Mammoth Bull##25743
			.get 6 Thick Mammoth Hide##34977|q 11718/1
		step
			goto Borean Tundra,57.06,20.11
			.talk Abner Fizzletorque##25780
			..turnin A Bot in Mammoth's Clothing##11718
			..accept Deploy the Shake-n-Quake!##11723
		step
			goto Borean Tundra,70.18,36.36
			.use Shake-n-Quake 5000 Control Unit##34981
			.info Watch the dialogue
			.' Deploy the Shake-n-Quake 5000|q 11723/2
		step
			goto Borean Tundra,70.18,36.36
			.kill Lord Kryxix##25768|q 11723/1
		step
			goto Borean Tundra,57.06,20.11
			.talk Abner Fizzletorque##25780
			..turnin Deploy the Shake-n-Quake!##11723
		step
			.' Congratulations! +142/130 quests for achievement "Nothing Boring About Borean".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[68] Howling Fjord",[[
author danaton
description This guide contain quest-chain (130) for Howling Fjord location.
startlevel 68
		step
			goto Howling Fjord,61.05,62.60
			.talk Macalroy##23547
			..accept Hell Has Frozen Over...##11228
		step
			goto Howling Fjord,60.50,61.19
			.talk Vice Admiral Keller##23546
			..turnin Hell Has Frozen Over...##11228
			..accept If Valgarde Falls...##11243
		step
			goto Howling Fjord,58.93,59.60
			.from Dragonflayer Invader##24051, Dragonflayer Worg##24063
			.info They look like large humans and wolves.
			.info They continually attack near this location.
			.' Slay 12 Dragonflayer Invaders|q 11243/1
		step
			goto Howling Fjord,60.50,61.19
			.talk Vice Admiral Keller##23546
			..turnin If Valgarde Falls...##11243
			..accept Rescuing the Rescuers##11244
		step
			goto Howling Fjord,58.40,56.21
			.' Interact with gameobject: Ceremonial Dragonflayer Harpoon
			.info They look like poles sticking out of the ground around this area.
			.' Rescue 8 Valgarde Scouts|q 11244/1
		step
			goto Howling Fjord,60.50,61.19
			.talk Vice Admiral Keller##23546
			..turnin Rescuing the Rescuers##11244
			..accept Prisoners of Wyrmskull##11255
		step
			goto Howling Fjord,60.17,61.03
			.talk Beltrand McSorf##23548
			..accept The Human League##11273
		step
			goto Howling Fjord,59.80,61.48
			.talk Thoralius the Wise##23975
			..accept Into the World of Spirits##11333
		step
			goto Howling Fjord,59.79,63.24
			.talk Pricilla Winterwind##23736
			.fpath Valgarde Port, Howling Fjord|q 11333
		step
			goto Howling Fjord,60.12,62.43
			.talk Guard Captain Zorek##23728
			..accept The Path to Payback##11420
		step
			goto Howling Fjord,62.06,57.62
			.collect Reagent Pouch##6652|q 11333/1
			.info Underwater, on the deck of the ship.
		step
			goto Howling Fjord,59.80,61.48
			.talk Thoralius the Wise##23975
			..turnin Into the World of Spirits##11333
			..accept The Echo of Ymiron##11343
		step
			goto Howling Fjord,59.18,54.57
			.talk Pulroy the Archaeologist##24122
			..turnin The Human League##11273
			..accept Zedd's Probably Dead##11274
		step
			goto Howling Fjord,60.25,51.33
			.use Incense Burner##33637
			.info Use it in the doorway of the building.
			.' Enter the Spirit World |havebuff Spell_Holiday_ToW_SpiceCloud |q 11343
		step
			goto Howling Fjord,60.16,50.87
			.' Watch the dialogue.
			.info Inside the building.
			.' Uncover the Secrets of the Wyrmskull|q 11343/1
		step
			goto Howling Fjord,58.26,52.96
			.' Kill Dragonflayer enemies around this area
			.collect Dragonflayer Cage Key##33308|n
			.' Click Dragonflayer Cages
			.info They look like metal cages on the ground and inside buildings around this area.
			.' Rescue 3 Captured Valgarde Prisoners|q 11255/1
		step
			goto Howling Fjord,60.47,61.13
			.talk Vice Admiral Keller##23546
			..turnin Prisoners of Wyrmskull##11255
			..accept Dragonflayer Battle Plans##11290
		step
			goto Howling Fjord,59.80,61.48
			.talk Thoralius the Wise##23975
			..turnin The Echo of Ymiron##11343
			..accept Anguish of Nifflevar##11344
		step
			goto Howling Fjord,56.63,52.38
			.talk Zedd##24145
			..turnin Zedd's Probably Dead##11274
			..accept And Then There Were Two...##11276
		step
			goto Howling Fjord,55.68,52.58
			.collect Dragonflayer Battle Plans##33488|q 11290/1
			.info Inside the cave.
		step
			goto Howling Fjord,56.63,49.45|n
			.' Enter the cave and go down|goto Howling Fjord,56.63,49.45,0.5|noway|q 11276
		step
			goto Howling Fjord,56.94,53.75
			.talk Glorenfeld##24150
			..turnin And Then There Were Two...##11276
			..accept The Depths of Depravity##11277
		step
			goto Howling Fjord,59.26,55.38
			.collect Harpoon Operation Manual##34031|q 11420/1
			.info Inside the cave, on the top level.
		step
			goto Howling Fjord,59.34,55.42
			.talk Ares the Oathbound##24189
			..accept The Shining Light##11288
		step
			goto Howling Fjord,56.65,53.43
			.collect Sacred Artifact##33485|q 11288/1
			.info Downstairs inside the cave, on the bottom level.
			.info You can run through the ghouls, they won't attack you, since you have the "Shining Light" buff.
			.info HURRY, this quest is timed!
		step
			goto Howling Fjord,59.34,55.42
			.talk Ares the Oathbound##24189
			.info HURRY, this quest is timed!
			..turnin The Shining Light##11288
			..accept Guided by Honor##11289
		step
			goto Howling Fjord,57.32,56.36
			.collect 10 Wyrmskull Tablet##33355|q 11277/1
			.info They look like broken stone tablets laying on the ground all around inside this cave.
			.info They are only on the top and middle levels of the cave.
		step
			goto Howling Fjord,56.94,53.75
			.talk Glorenfeld##24150
			..turnin The Depths of Depravity##11277
			..accept The Ring of Judgement##11299
		step
			goto Howling Fjord,55.70,57.37
			.talk Daegarn##24151
			..turnin The Ring of Judgement##11299
			..accept Stunning Defeat at the Ring##11300
		step
			goto Howling Fjord,55.02,57.49
			.' Kill the enemies that attack in waves.
			.info Inside the cave, on the middle level.
			.from Oluf the Violent##23931
			.' Click Ancient Cipher.
			.info It looks like a green stone block that appears on the ground after you kill Oluf the Violent.
			.get Ancient Cipher##33545|q 11300/1
		step
			goto Howling Fjord,56.94,53.75
			.talk Glorenfeld##24150
			..turnin Stunning Defeat at the Ring##11300
			..accept Return to Valgarde##11278
		step
			goto Howling Fjord,55.99,50.2|n
			.' Move towards the exit of the cave|goto 55.99,50.2,1 |q 11289
		step
			goto Howling Fjord,59.74,62.43
			.talk Lord Irulon Trueblade##24191
			..turnin Guided by Honor##11289
		step
			goto Howling Fjord,60.11,62.43
			.talk Guard Captain Zorek##23728
			..turnin The Path to Payback##11420
			..accept Locating the Mechanism##11426
		step
			goto Howling Fjord,60.47,61.07
			.talk Vice Admiral Keller##23546
			..turnin Dragonflayer Battle Plans##11290
			..accept To Westguard Keep!##11291
		step
			goto Howling Fjord,60.18,61.03
			.talk Beltrand McSorf##23548
			..turnin Return to Valgarde##11278
			..accept The Explorers' League Outpost##11448
		step
			goto Howling Fjord,60.16,53.40
			.from Dragonflayer Harpooner##24635
			.get Harpoon Control Mechanism##34032|q 11426/1
		step
			goto Howling Fjord,60.12,62.42
			.talk Guard Captain Zorek##23728
			..turnin Locating the Mechanism##11426
			..accept Meet Lieutenant Icehammer...##11427
		step
			goto Howling Fjord,60.12,62.42
			.talk Guard Captain Zorek##23728
			.' Tell him "Take me to Lieutenant Icehammer, Zorek!"
			.' Begin Flying to Lieutenant Icehammer |invehicle |q 11427
		step
			goto Howling Fjord,64.88,46.29|n
			.' Fly to Lieutenant Icehammer|goto 64.88,46.29,1 |q 11427
		step
			goto Howling Fjord,64.43,46.95
			.talk Lieutenant Icehammer##24634
			..turnin Meet Lieutenant Icehammer...##11427
			..accept Drop It then Rock It!##11429
		step
			goto Howling Fjord,64.89,40.10
			.use Alliance Banner##34051
			.' Place the Alliance Banner|q 11429/2
		step
			goto Howling Fjord,64.89,40.10
			.' Kill the enemies that attack in waves.
			.' Defend the Alliance Banner|q 11429/1
		step
			goto Howling Fjord,64.43,46.95
			.talk Lieutenant Icehammer##24634
			..turnin Drop It then Rock It!##11429
			..accept Harpoon Master Yavus##11430
		step
			goto Howling Fjord,65.15,56.58
			.kill Harpoon Master Yavus##24644|q 11430/1
			.info Inside the building.
		step
			goto Howling Fjord,68.81,54.85
			.use Incense Burner##33774
			.' Enter the Spirit World |havebuff Spell_Holiday_ToW_SpiceCloud |q 11344
		step
			goto Howling Fjord,68.81,54.85
			.' Watch the dialogue.
			.' Uncover the Secrets of Nifflevar|q 11344/1
		step
			goto Howling Fjord,74.95,65.41
			.talk Stanwad##24717
			..turnin The Explorers' League Outpost##11448
			..accept Problems on the High Bluff##11474
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Problems on the High Bluff##11474
			..accept Tools to Get the Job Done##11475
		step
			goto Howling Fjord,75.27,64.97
			.talk Hidalgo the Master Falconer##24750
			..accept Trust is Earned##11460
		step
			goto Howling Fjord,75.81,64.56
			.collect Fjord Grub##34102|q 11460
			.info They look like flat grey stones on the ground around this area.
		step
			goto Howling Fjord,75.27,64.91
			.' Click Rock Falcon
			.info Inside the cage.
			.' Choose <Feed the grub to the rock falcon.>
			.' Feed the Fjord Rock Falcon|q 11460/1
		step
			goto Howling Fjord,75.27,64.97
			.talk Hidalgo the Master Falconer##24750
			..turnin Trust is Earned##11460
			..accept The Ransacked Caravan##11465
		step
			goto Howling Fjord,78.81,48.87
			.talk Donny##24811
			..accept Out of My Element?##11477
		step
			goto Howling Fjord,79.00,47.56
			.collect Building Tools##34131|q 11475/1
			.info On the wooden platform.
		step
			goto Howling Fjord,79.20,47.79
			.kill 5 Iron Rune Laborer##23711|q 11477/2
			.kill 2 Iron Rune Sage##23674|q 11477/3
		step
			goto Howling Fjord,77.19,48.44
			.kill 10 Iron Rune Destroyer##23676|q 11477/1
			.info There are many of them along the top of the cliff here.
		step
			goto Howling Fjord,78.81,48.87
			.talk Donny##24811
			..turnin Out of My Element?##11477
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Tools to Get the Job Done##11475
			..accept We Can Rebuild It##11483
			..accept We Have the Technology##11484
		step
			goto Howling Fjord,70.96,64.09
			.' Kill Shoveltusk enemies around this area.
			.collect Pristine Shoveltusk Hide##34136|q 11484/1
		step
			goto Howling Fjord,75.51,65.77
			.' Click Loose Rock.
			.info They look like flat grey stones on the ground around this area.
			.collect 5 Fjord Grub##34102|q 11465
			.' You can find more around (1)|at 75.51,65.76
			.' You can find more around (2)|at 75.54,66.77
			.' You can find more around (3)|at 74.46,66.32
			.' You can find more around (4)|at 75.96,67.46
		step
			goto Howling Fjord,68.84,68.76
			.use Trained Rock Falcon##34111
			.info Use it on Fjord Turkeys around this area.
			.info You will be attacked each time you capture a turkey.
			.collect 5 Fjord Turkey##34112|q 11465/1
		step
			goto Howling Fjord,64.43,46.95
			.talk Lieutenant Icehammer##24634
			..turnin Harpoon Master Yavus##11430
			..accept It Goes to 11...##11421
		step
			goto Howling Fjord,64.74,40.97
			.' Click Industrial Strength Rope.
			.info Outside the building.
			.collect Industrial Strength Rope##34134|q 11483/2
		step
			goto Howling Fjord,65.17,40.23
			.' Kill Winterskorn enemies around this area.
			.collect Steel Ribbing##34137|q 11484/2
		step
			goto Howling Fjord,67.58,52.25
			.' Click Large Barrel.
			.info Outside the building.
			.collect Large Barrel##34133|q 11483/1
		step
			goto Howling Fjord,64.77,52.67
			.use Harpoon Control Mechanism##34032
			.info Use it next to the big metal harpoon gun.
			.' Control the Harpoon |invehicle |q 11421
		step
			goto Howling Fjord,64.8,52.7
			.info Use the Fiery Harpoon ability on your action bar.
			.' Destroy the Dragonflayer Longhouse|q 11421/2
			.info It's the building farthest to the left across the water.
			.' Destroy the Dragonflayer Dockhouse|q 11421/3
			.info It's the middle building across the water.
			.' Destroy the Dragonflayer Storage Facility|q 11421/4
			.info It's the building to the left across the water.
		step
			goto Howling Fjord,64.8,52.7
			.kill 8 Dragonflayer Defender##24533|q 11421/1
			.info Use the Fiery Lance ability on your action bar on Dragonflayer Defenders.
			.info They will attack you after you destroy each building.
		step
			.' Stop Controlling the Harpoon |outvehicle |q 11421
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,64.43,46.95
			.talk Lieutenant Icehammer##24634
			..turnin It Goes to 11...##11421
			..accept Let's Go Surfing Now##11436
		step
			goto Howling Fjord,65.23,57.20
			.' Click Large Harpoon Lever.
			.' Go Harpoon Surfing|q 11436/1
		step
			goto Howling Fjord,60.12,62.43
			.talk Guard Captain Zorek##23728
			..turnin Let's Go Surfing Now##11436
		step
			goto Howling Fjord,59.80,61.49
			.talk Thoralius the Wise##23975
			..turnin Anguish of Nifflevar##11344
		step
			goto Howling Fjord,60.78,61.53
			.talk McGoyver##24040
			.' Tell him "Walt sent me to pick up some dark iron ingots."
			.collect Dark Iron Ingots##34135|q 11483/3
		step
			goto Howling Fjord,60.77,61.52
			.talk McGoyver##24040
			.' Tell him "Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"
			.' Begin Flying to the Explorers' League Outpost|q 11483
		step
			.' Fly to the Explorers' League Outpost |goto 74.68,65.31 |q 11483
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin We Can Rebuild It##11483
			..turnin We Have the Technology##11484
			..accept Iron Rune Constructs and You: Rocket Jumping##11485
		step
			goto Howling Fjord,75.11,65.51
			.' Click Work Bench.
			.' Choose <Get on the work bench and let Walt put you in the golem suit.>
			.' Wear the Golem Suit |invehicle |q 11485
		step
			goto Howling Fjord,75.15,65.43
			.' Master the Rocket Jump|q 11485/1
			.info Use the Rocket Jump ability on your action bar.
		step
			.' Stop Wearing the Golem Suit |outvehicle |q 11485
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,75.27,64.97
			.talk Hidalgo the Master Falconer##24750
			..turnin The Ransacked Caravan##11465
			..accept Falcon Versus Hawk##11468
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Iron Rune Constructs and You: Rocket Jumping##11485
			..accept Iron Rune Constructs and You: Сollecting Data##11489
		step
			goto Howling Fjord,75.11,65.51
			.' Сlick Work Bench.
			.' Choose <Get on the work bench and let Walt put you in the golem suit.>
			.' Wear the Golem Suit |invehicle |q 11489
		step
			goto Howling Fjord,74.81,65.74
			.collect Test Data|q 11489/1
			.info Use the collect Data ability on your action bar next to the blue crystal.
		step
			.' Stop Wearing the Golem Suit |outvehicle |q 11489
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Iron Rune Constructs and You: Collecting Data##11489
			..accept Iron Rune Constructs and You: The Bluff##11491
		step
			goto Howling Fjord,75.11,65.51
			.' Click Work Bench.
			.' Choose <Get on the work bench and let Walt put you in the golem suit.>
			.' Wear the Golem Suit |invehicle |q 11491
		step
			goto Howling Fjord,74.8,65.3
			.' Watch the dialogue.
			.info Walk to this location and stand on the rug on the ground.
			.' Bluff Lebronski|q 11491/1
			.info Use the Bluff ability on your action bar on Lebronski when he starts talking.
		step
			.' Stop Wearing the Golem Suit |outvehicle |q 11491
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Iron Rune Constructs and You: The Bluff##11491
			..accept Lightning Infused Relics##11494
			..accept The Delicate Sound of Thunder##11495
		step
			goto Howling Fjord,75.11,65.51
			.' Click Work Bench.
			.' Choose <Get on the work bench and let Walt put you in the golem suit.>
			.' Wear the Golem Suit |invehicle |q 11494
		step
			goto Howling Fjord,74.33,70.82
			.info On the wooden platform.
			.info Use the Rocket Jump ability on your action bar on the middle rune on the ground.
			.' Rocket Jump to the Lower Level |noway |c |q 11495
		step
			goto Howling Fjord,71.56,69.37
			.' Watch the dialogue.
			.info Inside the cave.
			.info This quest seems a little buggy.
			.info Run around this small area inside the cave, trying every spot, until the dialogue starts.
			.' Investigate the Thundering Cave|q 11495/1
		step
			goto Howling Fjord,73.46,73.05
			.' Collect 15 Iron Rune Data|q 11494/1
			.info You can jump down to the ground in the golem suit without dying.
			.info Use the collect Data ability on your action bar next to the blue crystals on the ground around this area.
			.info Use the Bluff ability on your action bar to get rid of any suspicious dwarves you encounter.
		step
			goto Howling Fjord,72.12,70.41
			.info On the wooden platform.
			.info Use the Rocket Jump ability on your action bar on the middle rune on the ground.
			.' Return to the Top of the Excavation Site|noway |c |q 11494
		step
			.' Stop Wearing the Golem Suit |outvehicle |q 11494
			.info Get to a safe spot first.
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,69.06,69.95
			.' Click Loose Rock.
			.info They look like grey stones on the ground around this area.
			.collect 10 Fjord Grub##34102|q 11468
		step
			goto Howling Fjord,70.40,66.75
			.use Trained Rock Falcon##34121
			.' Click Fjord Hawk
			.info Use it on Fjord Hawks around this area.
			.info Most of them are flying above you around this area.
			.collect 10 Fjord Hawk##34120|q 11468/1
			.' Hawks rest near the ground at these locations (1)|at 73.89,56.55
			.' Hawks rest near the ground at these locations (2)|at 70.89,63.23
			.' Hawks rest near the ground at these locations (3)|at 74.21,59.52
			.' Hawks rest near the ground at these locations (4)|at 68.04,63.88
			.' Hawks rest near the ground at these locations (5)|at 68.59,68.71
			.' Hawks rest near the ground at these locations (6)|at 69.30,72.19
		step
			goto Howling Fjord,75.27,64.97
			.talk Hidalgo the Master Falconer##24750
			..turnin Falcon Versus Hawk##11468
			..accept There Exists No Honor Among Birds##11470
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			..turnin Lightning Infused Relics##11494
			..turnin The Delicate Sound of Thunder##11495
			..accept News From the East##11501
		step
			goto Howling Fjord,76.66,67.67
			.use Trained Rock Falcon##34124
			.' Control a Trained Falcon Hawk |havebuff Hawk Hunting##44407|q 11470
		step
			goto Howling Fjord,76.7,67.7
			.collect 8 Fjord Hawk Egg##34123|q 11470/1
			.info Use the Scavenge ability on your action bar.
			.info Use it next to the big white eggs in bird nests on the side of the cliff in front of your character.
			.info If your falcon gets killed by eagles, use the Trained Rock Falcon item again next to the Vrykul Hawk Roost, to control another one.
		step
			.' Stop Controlling a Trained Falcon Hawk |nobuff Hawk Hunting##44420|q 11470
			.info Right-click the "Hawk Hunting" buff near your minimap.
		step
			goto Howling Fjord,75.27,64.97
			.talk Hidalgo the Master Falconer##24750
			..turnin There Exists No Honor Among Birds##11470
		step
			goto Howling Fjord,75.05,65.51
			.talk Walt##24807
			.' Tell him "I'm ready to go, Walt."
			.' Begin Flying to Westguard Keep |invehicle |q 11501
		step
			goto Howling Fjord,30.84,42.82
			.' Fly to Westguard Keep |outvehicle |q 11501 |noway
		step
			goto Howling Fjord,31.17,40.84
			.talk Chef Kettleblack##23773
			..accept Shoveltusk Soup Again?##11155
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..turnin To Westguard Keep!##11291
			..turnin News From the East##11501
			..accept The Clutches of Evil##11157
		step
			goto Howling Fjord,31.26,43.98
			.talk Greer Orehammer##23859
			.fpath Westguard Keep, Howling Fjord|q 11155
		step
			goto Howling Fjord,33.98,43.80
			.talk Cannoneer Ely##23770
			..accept One Size Does Not Fit All##11190
		step
			goto Howling Fjord,36.09,42.94
			.' Click Westguard Cannonball.
			.info They look like grey round rocks on the ground around this area.
			.collect 10 Westguard Cannonball##33123|q 11190/1
			.' You can find more around (1)|at 35.61,43.79
			.' You can find more around (2)|at 36.69,45.48
			.' You can find more around (3)|at 36.12,44.57
			.' You can find more around (4)|at 34.95,41.41
			.' You can find more around (5)|at 35.55,40.59
			.' You can find more around (6)|at 36.70,40.61
			.' You can find more around (7)|at 37.89,43.93
			.' You can find more around (8)|at 38.32,44.68
			.' You can find more around (9)|at 35.10,47.96
		step
			goto Howling Fjord,35.82,42.81
			.' Kill Shoveltusk enemies around this area.
			.info They look like buffalo.
			.collect 6 Shoveltusk Meat##33120|q 11155/1
		step
			goto Howling Fjord,37.4,48.48
			.talk Ember Clutch Ancient##23870
			..accept Root Causes##11182
		step
			goto Howling Fjord,41.46,52.35
			.kill Skeld Drakeson##23940|q 11182/2
			.info Inside the building.
		step
			goto Howling Fjord,41.44,53.87
			.kill 5 Dragonflayer Handler##23871|q 11182/1
		step
			goto Howling Fjord,37.4,48.48
			.talk Ember Clutch Ancient##23870+
			..turnin Root Causes##11182
		step
			goto Howling Fjord,38.72,49.54
			.from Proto-Drake Egg##23777
			.info They look like large white eggs.
			.info You can find them all around the Ember Clutch area.
			.' Destroy 15 Proto-Drake Eggs|q 11157/1
		step
			goto Howling Fjord,38.72,49.54
			.kill 15 Proto-Whelp##23688|q 11157/2
		step
			goto Howling Fjord,33.98,43.79
			.talk Cannoneer Ely##23770
			..turnin One Size Does Not Fit All##11190
		step
			goto Howling Fjord,31.17,40.84
			.talk Chef Kettleblack##23773
			..turnin Shoveltusk Soup Again?##11155
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..turnin The Clutches of Evil##11157
			..accept Mage-Lieutenant Malister##11187
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..turnin Mage-Lieutenant Malister##11187
			..accept Two Wrongs...##11188
		step
			goto Howling Fjord,38.86,50.35
			.use Malister's Frost Wand##33119
			.info Use it on Proto-Drakes.
			.info They look like dragons flying in the sky around this area.
			.kill 3 Proto-Drake##23689|q 11188/1
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..turnin Two Wrongs...##11188
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..accept Report to Scout Knowles##11199
		step
			goto Howling Fjord,29.11,41.78
			.talk Sapper Steelring##23976
			..accept Danger! Explosives!##11218
		step
			goto Howling Fjord,32.28,46.79
			.talk Lunk-tusk##25233
			..accept Orfus of Kamagua##11573
		step
			goto Howling Fjord,40.29,60.25
			.talk Orfus of Kamagua##23804
			..turnin Orfus of Kamagua##11573
			..accept The Dead Rise!##11504
		step
			goto Howling Fjord,44.47,57.59
			.talk Scout Knowles##23906
			..turnin Report to Scout Knowles##11199
			..accept Mission: Eternal Flame##11202
		step
			goto Howling Fjord,48.26,55.94
			.use Ever-burning Torches##33164
			.' Destroy the Southwest Plague Tank|q 11202/1
		step
			goto Howling Fjord,47.95,52.96
			.use Ever-burning Torches##33164
			.' Destroy the Northwest Plague Tank|q 11202/2
		step
			goto Howling Fjord,51.29,50.09
			.use Ever-burning Torches##33164
			.info Up on the cliff.
			.info Follow the path on the outskirts of Halgrind.
			.' Destroy the Northeast Plague Tank|q 11202/3
		step
			goto Howling Fjord,51.55,57.73
			.use Ever-burning Torches##33164
			.info Up on the cliff.
			.info Follow the path on the outskirts of Halgrind.
			.' Destroy the Southeast Plague Tank|q 11202/4
		step
			goto Howling Fjord,44.47,57.59
			.talk Scout Knowles##23906
			..turnin Mission: Eternal Flame##11202
			..accept Mission: Package Retrieval##11327
		step
			goto Howling Fjord,50.75,53.89
			.' Click Apothecary's Package.
			.collect Apothecary's Package##33620|q 11327/1
		step
			goto Howling Fjord,44.47,57.59
			.talk Scout Knowles##23906
			..turnin Mission: Package Retrieval##11327
			..accept Mission: Forsaken Intel##11328
		step
			goto Howling Fjord,57.68,77.52
			.' Click Mound of Debris.
			.info It looks like a pile of dirt.
			.collect Fengir's Clue##34222|q 11504/1
		step
			goto Howling Fjord,59.23,76.98
			.' Click Unlocked Chest.
			.info It looks like a small brown metal and wooden chest.
			.collect Rodin's Clue##34223|q 11504/2
		step
			goto Howling Fjord,59.79,79.39
			.' Click Long Tail Feather.
			.info It looks like a blue feather.
			.collect Isuldof's Clue##34224|q 11504/3
		step
			goto Howling Fjord,61.97,80.06
			.' Click Cannonball.
			.info It looks like a grey boulder.
			.collect Windan's Clue##34225|q 11504/4
		step
			goto Howling Fjord,40.29,60.25
			.talk Orfus of Kamagua##23804
			..turnin The Dead Rise!##11504
			..accept Elder Atuik and Kamagua##11507
		step
			goto Howling Fjord,25.02,56.97
			.talk Elder Atuik##24755
			..turnin Elder Atuik and Kamagua##11507
			..accept Grezzix Spindlesnap##11508
			..accept Feeding the Survivors##11456
		step
			goto Howling Fjord,24.66,57.77
			.talk Kip Trawlskip##28197
			fpath Kamagua, Howling Fjord|q 11456
		step
			goto Howling Fjord,30.53,60.03
			.from Island Shoveltusk##24681
			.info They look like buffalo.
			.info The grey wolves will kill nearby Shoveltusks, so kill those too, if you need to.
			.info You can find them all around the Isle of Spears area.
			.get 6 Island Shoveltusk Meat##36776|q 11456/1
			.' You can find more around (1)|at 29.21,58.55
			.' You can find more around (2)|at 27.24,63.61
			.' You can find more around (3)|at 28.62,64.69
			.' You can find more around (4)|at 32.64,66.28
			.' You can find more around (5)|at 36.38,53.29
			.' You can find more around (6)|at 29.16,66.53
			.' You can find more around (7)|at 30.95,62.43
		step
			goto Howling Fjord,25.02,56.97
			.talk Elder Atuik##24755
			..turnin Feeding the Survivors##11456
			..accept Arming Kamagua##11457
		step
			goto Howling Fjord,28.12,54.71
			.from Frostwing Chimaera##24673
			.info They look like blue and white two-headed dragons.
			.get 3 Chimaera Horn##34101|q 11457/1
			.' You can find more around|at 27.52,67.05
		step
			goto Howling Fjord,25.02,56.97
			.talk Elder Atuik##24755
			..turnin Arming Kamagua##11457
			..accept Avenge Iskaal##11458
		step
			goto Howling Fjord,23.08,62.66
			.talk Grezzix Spindlesnap##24643
			..turnin Grezzix Spindlesnap##11508
			..accept Street "Cred"##11509
		step
			goto Howling Fjord,23.10,62.58
			.talk Lou the Cabin Boy##24896
			.' Tell him "I don't have time for chit-chat, Lou. Take me to Scalawag Point."
			.' Begin Traveling to Scalawag Point |invehicle |q 11509
		step
			goto Howling Fjord,35.51,82.40
			.' Watch the dialogue.
			.info You will eventually travel to this location.
			.' Travel to Scalawag Point |outvehicle |q 11509 |noway
		step
			goto Howling Fjord,35.09,80.94
			.talk "Silvermoon" Harry##24539
			..turnin Street "Cred"##11509
			..accept "Scoodles"##11510
		step
			goto Howling Fjord,35.60,80.22
			.talk Handsome Terry##24537
			..accept Forgotten Treasure##11434
		step
			goto Howling Fjord,37.75,79.58
			.talk Scuttle Frostprow##24784
			..accept Swabbin' Soap##11469
		step
			goto Howling Fjord,37.1,86.3
			.from "Scoodles"##24899
			.info It looks like an orca that swims in the water around this area.
			.get Sin'dorei Scrying Crystal##34235|q 11510/1
		step
			.use Fish Bladder##34076
			.info This will allow you to breathe underwater for 3 minutes.
			.' Gain Water Breathing |havebuff Water Breathing##44235|q 11434
		step
			goto Howling Fjord,37.77,84.62
			.' Click Eagle Figurine.
			.info It looks like a small grey and blue stone bird statue.
			.info Underwater, inside the ship.
			.collect Eagle Figurine##34070|q 11434/2
		step
			goto Howling Fjord,37.15,85.49
			.' Click Amani Vase.
			.info It looks like a grey stone jar.
			.info Underwater, inside the broken boat.
			.collect Amani Vase##34069|q 11434/1
		step
			goto Howling Fjord,35.60,80.22
			.talk Handsome Terry##24537
			..turnin Forgotten Treasure##11434
			..accept The Fragrance of Money##11455
		step
			goto Howling Fjord,36.32,80.48
			.talk Taruk##24541
			..accept Gambling Debt##11464
		step
			goto Howling Fjord,35.09,80.94
			.talk "Silvermoon" Harry##24539
			..turnin "Scoodles"##11510
			..accept The Staff of Storm's Fury##11511
			..accept The Frozen Heart of Isuldof##11512
			..accept The Lost Shield of the Aesirites##11519
			..accept The Ancient Armor of the Kvaldir##11567
		step
			goto Howling Fjord,35.09,80.94
			.talk "Silvermoon" Harry##24539
			.' Tell him "Taruk sent me to collect what you owe."
			.from "Silvermoon" Harry##24539
			.info Don't kill him, just get him to low health.
			.info You will eventually be able to talk to him again.
			.talk "Silvermoon" Harry##24539
			.' Tell him "Pay up, Harry!"
			.get "Silvermoon" Harry's Debt##34115|q 11464/1
		step
			goto Howling Fjord,36.32,80.48
			.talk Taruk##24541
			..turnin Gambling Debt##11464
			..accept Jack Likes His Drink##11466
		step
			goto Howling Fjord,35.31,79.59
			.talk Olga, the Scalawag Wench##24639
			.' Tell her "I'd like to buy Jack a drink. Perhaps something... extra strong."|q 11466
			.info Manual skip this step.
		step
			goto Howling Fjord,35.49,79.38
			.' Watch the dialogue.
			.info Jack Adams will pass out on the table.
			.info Inside the building.
			.talk Jack Adams##24788
			.' Choose <Discreetly search the pirate's pockets for Taruk's payment.>
			.collect Jack Adams' Debt##34116|q 11466/1
		step
			goto Howling Fjord,36.32,80.48
			.talk Taruk##24541
			..turnin Jack Likes His Drink##11466
			..accept Dead Man's Debt##11467
		step
			goto Howling Fjord,34.09,77.91
			.from Rabid Brown Bear##24633
			.info They look like brown bears.
			.info You can find them all around the Garvan's Reef area.
			.get 4 Bear Musk##34084|q 11455/1
		step
			goto Howling Fjord,31.40,78.62
			.from Big Roy##24785
			.info He looks like a big seal that swims in the water around this area.
			.get Big Roy's Blubber##34122|q 11469/1
		step
			goto Howling Fjord,35.60,80.22
			.talk Handsome Terry##24537
			..turnin The Fragrance of Money##11455
			..accept A Traitor Among Us##11473
		step
			goto Howling Fjord,35.56,80.63
			.talk Zeh'gehn##24525
			..turnin A Traitor Among Us##11473
			..accept Zeh'gehn Sez##11459
		step
			goto Howling Fjord,35.60,80.22
			.talk Handsome Terry##24537
			..turnin Zeh'gehn Sez##11459
			..accept A Carver and a Croaker##11476
		step
			goto Howling Fjord,35.1,80.9
			.talk "Silvermoon" Harry##24539
			.buy Shiny Knife##35813|q 11476/2
		step
			goto Howling Fjord,35.56,81.81
			.collect Scalawag Frog##35803|q 11476/1
			.info They look like blue and green frogs that hop around on the ground around this area.
		step
			goto Howling Fjord,35.56,80.63
			.talk Zeh'gehn##24525
			..turnin A Carver and a Croaker##11476
		step
			goto Howling Fjord,35.56,80.63
			.' Watch the dialogue.
			.talk Zeh'gehn##24525
			..accept "Crowleg" Dan##11479
		step
			goto Howling Fjord,35.95,83.60
			.talk "Crowleg" Dan##24713
			.' Tell him "Ummm... the frog says you're a traitor, "matey.""
			.kill "Crowleg" Dan##24713|q 11479/1
		step
			goto Howling Fjord,35.60,80.22
			.talk Handsome Terry##24537
			..turnin "Crowleg" Dan##11479
			..accept Meet Number Two##11480
		step
			goto Howling Fjord,35.44,79.42
			.talk Annie Bonn##24741
			..turnin Meet Number Two##11480
			..accept The Jig is Up##11471
		step
			goto Howling Fjord,37.75,79.58
			.talk Scuttle Frostprow##24784
			..turnin Swabbin' Soap##11469
		step
			goto Howling Fjord,37.85,74.79
			.talk Captain Ellis##24910
			..turnin The Lost Shield of the Aesirites##11519
			..accept Mutiny on the Mercy##11527
		step
			.' Downstairs Inside the Ship:
			.from Mutinous Sea Dog##25026
			.info Downstairs, on the bottom deck, inside the pirate ship that sails around this area.
			.get 5 Barrel of Blasting Powder##34387|q 11527/1
		step
			.' On the Ship Desk:
			.talk Captain Ellis##24910
			..turnin Mutiny on the Mercy##11527
			..accept Sorlof's Booty##11529
		step
			.' Interact with NPC: The Big Gun
			.info At the front of the ship, on the top deck of the pirate ship that sails around this area.
			.info Keep clicking it repeatedly until Sorlof is dead on the shore.
			.from Sorlof##24914
			.info He looks like a large tree that walks along the shore around this area.
			.' Сlick Sorlof's Booty
			.info It looks like a yellow pile of gold that appears on the ground after Sorlof dies.
			.info Jump off the ship to loot it.
			.get Sorlof's Booty##34468|q 11529/1
		step
			goto Howling Fjord,33.5,75.5
			.kill "Mad" Jonah Sterling##24742|n |goto 33.78,78.02
			.info He looks like a human wearing a red coat.
			.info He walks around this small area inside the cave.
			.info He eventually runs away and gets eaten by a large white bear on the bottom level of the cave.
			.info He is a level 70 elite enemy, but you should be able to kill him at this level.
			.info If you have trouble, try to find someone to help you, or skip the quest.
			.' Manually skip after killing "Mad" Jonah Sterling|q 11471
		step
			goto Howling Fjord,33.39,78.30
			.from Hozzer##24547
			.info He looks like a large white bear.
			.info Downstairs inside the cave.
			.info He is a level 71 elite enemy, but you should be able to kill him at this level.
			.info If you have trouble, try to find someone to help you, or skip the quest.
			.get Jonah Sterling's Spyglass##34128|q 11471/1
		step
			goto Howling Fjord,32.34,78.68
			.collect The Frozen Heart of Isuldof##34237|q 11512/1
			.info Downstairs inside the cave.
		step
			goto Howling Fjord,32.69,60.21
			.' Interact with: Dirt Mound
			.info If another player interacted with it recently, you may have to wait for it to respawn.
			.' Watch the dialogue.
			.' Kill the enemies that attack.
			.from Black Conrad's Ghost##24790
			.get Black Conrad's Treasure##34118|q 11467/1
		step
			goto Howling Fjord,35.26,64.84
			.collect The Staff of Storm's Fury##34236|q 11511/1
			.info Downstairs inside the ship, on the bottom level.
		step
			goto Howling Fjord,33.71,63.84
			.kill 8 Crazed Northsea Slaver##24676|q 11458/1
		step
			goto Howling Fjord,25.02,56.97
			.talk Elder Atuik##24755
			..turnin Avenge Iskaal##11458
		step
			goto Howling Fjord,24.59,58.86
			.talk Anuniaq##24810
			..accept Travel to Moa'ki Harbor##12117 |or
			..accept Travel to Moa'ki Harbor##12118 |or
			.info These will not be available if you have quested in Dragonblight or have quests in your log from the zone.
		step
			goto Howling Fjord,23.10,62.58
			.talk Lou the Cabin Boy##24896
			.' Tell him "I don't have time for chit-chat, Lou. Take me to Scalawag Point."
			.' Begin Traveling to Scalawag Point|q 11471
		step
			goto Howling Fjord,36.32,80.48
			.talk Taruk##24541
			..turnin Dead Man's Debt##11467
		step
			goto Howling Fjord,35.41,79.43
			.talk Annie Bonn##24741
			..turnin The Jig is Up##11471
		step
			goto Howling Fjord,36.09,81.60
			.talk Alanya##27933
			.' Tell her "Harry said I could take his bomber to Bael'gun's. I'm ready to go!"
			.' Begin Flying to Bael'gun's |invehicle |q 11567
		step
			goto Howling Fjord,80.87,75.10
			.' Fly to Bael'gun's|outvehicle |q 11567 |noway
		step
			goto Howling Fjord,81.78,73.91
			.collect The Ancient Armor of the Kvaldir##34239|q 11567/1
			.info It looks like a floating metal chest armor.
			.info Downstairs inside the ship.
		step
			goto Howling Fjord,80.89,75.10
			.' Interact with NPC: Harry's Bomber
			.' Choose <Get in the bomber and return to Scalawag Point.>
			.' Begin Flying Back to Scalawag Point |invehicle |q 11567
		step
			goto Howling Fjord,36.07,81.68
			.' Return to Scalawag Point |outvehicle |q 11567 |noway
		step
			goto Howling Fjord,37.85,74.79
			.talk Captain Ellis##24910
			..turnin Sorlof's Booty##11529
			..accept The Shield of the Aesirites##11530
		step
			goto Howling Fjord,40.29,60.25
			.talk Orfus of Kamagua##23804
			..turnin The Staff of Storm's Fury##11511
			..turnin The Frozen Heart of Isuldof##11512
			..turnin The Shield of the Aesirites##11530
			..turnin The Ancient Armor of the Kvaldir##11567
			..accept A Return to Resting##11568
		step
			goto Howling Fjord,57.64,77.41
			.use Bundle of Vrykul Artifacts##34624
			.' Return the Shield of Aesirites|q 11568/1
		step
			goto Howling Fjord,59.30,77.20
			.use Bundle of Vrykul Artifacts##34624
			.' Return the Staff of Storm's Fury|q 11568/2
		step
			goto Howling Fjord,59.78,79.40
			.use Bundle of Vrykul Artifacts##34624
			.' Return the Frozen Heart of Isuldof|q 11568/3
		step
			goto Howling Fjord,61.89,80.14
			.use Bundle of Vrykul Artifacts##34624
			.' Return the Ancient Armor of the Kvaldir|q 11568/4
		step
			goto Howling Fjord,40.29,60.25
			.talk Orfus of Kamagua##23804
			..turnin A Return to Resting##11568
			..accept Return to Atuik##11572
		step
			goto Howling Fjord,25.02,56.97
			.talk Elder Atuik##24755
			..turnin Return to Atuik##11572
		step
			goto Howling Fjord,30.77,41.61
			.talk Peppy Wrongnozzle##24283
			..turnin Mission: Forsaken Intel##11328
			..accept Absholutely... Thish Will Work!##11330
		step
			goto Howling Fjord,29.46,43.40
			.use Peppy's Special Mix##33627
			.info Use it on the Dragonflayer Vrykul Prisoner.
			.info Downstairs inside the building.
			.' Administer Peppy's Mix to the Vrykul Prisoner|q 11330/1
		step
			goto Howling Fjord,30.77,41.61
			.talk Peppy Wrongnozzle##24283
			..turnin Absholutely... Thish Will Work!##11330
			..accept You Tell Him ...Hic!##11331
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..turnin You Tell Him ...Hic!##11331
			..accept Mission: Plague This!##11332
		step
			goto Howling Fjord,31.26,43.98
			.talk Greer Orehammer##23859
			.' Tell him "Greer, I need a gryphon to ride and some bombs to drop on New Agamand!"
			.' Begin Flying on the Bombing Mission|q 11332 |invehicle
		step
			goto Howling Fjord,52.43,68.08
			.use Orehammer's Precision Bombs##33634
			.info Use them on Plague Tanks as you fly.
			.info They look like large green carts on the ground around New Agamand.
			.' Hit 5 Plague Tanks|q 11332/1 |noway
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..turnin Mission: Plague This!##11332
			..accept Operation: Skornful Wrath##11248
		step
			goto Howling Fjord,30.63,42.79
			.talk Quartermaster Brevin##24494
			..accept Everything Must Be Ready##11406
		step
			goto Howling Fjord,31.62,41.50
			.talk Explorer Abigail##23978
			..accept Send Them Packing##11224
		step
			goto Howling Fjord,30.06,28.59
			.talk Watcher Moonleaf##24273
			..accept The Cleansing##11322
		step
			goto Howling Fjord,30.16,28.77
			.talk Engineer Feknut##24227
			..accept Scare the Guano Out of Them!##11154
		step
			goto Howling Fjord,30.28,28.64
			.talk Overseer Irena Stonemantle##23891
			..accept See to the Operations##11176
			..accept Where is Explorer Jaren?##11393
		step
			goto Howling Fjord,30.81,28.56
			.talk Steel Gate Chief Archaeologist##24399
			..turnin See to the Operations##11176
			..accept I've Got a Flying Machine!##11390
		step
			goto Howling Fjord,30.88,28.19
			.' Interact with NPC: Steel Gate Flying Machine
			.' Borrow the Steel Gate Flying Machine|q 11390
		step
			goto Howling Fjord,30.86,26.43
			.' Deliver 3 Sacks of Relics|q 11390/1
			.info Use the Grappling Hook ability on your action bar near Sacks of Relics on the ground.
			.info They look like huge white bags with yellow stuff in them on the ground around this area.
			.' Deliver the Sacks of Relics to|at 30.74,27.75
			.info Bring them up onto the hanging wooden scale above the dig site.
		step
			goto Howling Fjord,30.89,28.46
			.' Stop Flying in the Steel Gate Flying Machine|q 11390
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,30.81,28.56
			.talk Steel Gate Chief Archaeologist##24399
			..turnin I've Got a Flying Machine!##11390
			..accept Steel Gate Patrol##11391
		step
			.' Check For Gjalerbron Gargoyles
			.info Make sure there are gargoyles flying above the Steel Gate dig site nearby.
			.info They only appear when an event happens.
			.info If they are not there, you can't complete the "Steel Gate Patrol" quest.
			.info You can either wait for them to appear, or abandon the quest and skip it.
			.' Manually skip this step|q 11391
		step
			goto Howling Fjord,30.88,28.19
			.' Interact with NPC: Steel Gate Flying Machine
			.' Borrow the Steel Gate Flying Machine |invehicle |q 11391
		step
			goto Howling Fjord,30.86,26.43
			.kill 8 Gjalerbron Gargoyle##24440|q 11391/1
			.info Use the abilities on your action bar.
			.info If they're not appearing, try to fly down closer to the ground inside the quarry.
			.info They appear as red dots on your minimap.
		step
			goto Howling Fjord,30.89,28.46
			.' Stop Flying in the Steel Gate Flying Machine|q 11391
			.info Click the yellow arrow on your action bar.
		step
			goto Howling Fjord,30.81,28.56
			.talk Steel Gate Chief Archaeologist##24399
			..turnin Steel Gate Patrol##11391
		step
			goto Howling Fjord,33.87,37.98
			.use Steelring's Foolproof Dynamite##33190
			.info Use it on Whisper Gulch Ore.
			.info They look like large dark colored mining nodes on the ground around this area in the canyon.
			.collect 6 Whisper Gulch Ore Fragment##33188|q 11218/1
			.info They appear after you use Steelring's Foolproof Dynamite on a mining node.
		step
			goto Howling Fjord,33.87,37.98
			.use Steelring's Foolproof Dynamite##33190
			.info Use it on Whisper Gulch Ore.
			.info They look like large dark colored mining nodes on the ground around this area in the canyon.
			.collect 18 Whisper Gulch Gem##33187|q 11218/2
			.info They appear after you use Steelring's Foolproof Dynamite on a mining node.
		step
			goto Howling Fjord,33.5,36.1
			.info Perform it on Abandoned Pack Mules around this area in the canyon.
			.info They look like donkeys with a bunch of supplies tied to them around this area in the canyon.
			.' Send 10 Abandoned Pack Mules Packing|q 11224/1
		step
			goto Howling Fjord,24.25,32.46
			.talk Explorer Jaren##23833
			..turnin Where is Explorer Jaren?##11393
			..accept And You Thought Murlocs Smelled Bad!##11394
		step
			goto Howling Fjord,22.73,31.08
			.' Kill enemies around this area.
			.collect Scourge Device##33961|n
			.use Scourge Device##33961
			..accept It's a Scourge Device##11395
		step
			goto Howling Fjord,24.25,32.46
			.talk Explorer Jaren##23833
			..turnin It's a Scourge Device##11395
			..accept Bring Down Those Shields##11396
		step
			goto Howling Fjord,22.69,31.17
			.use Scourging Crystal Controller##33960
			.info Use it near the Scourge Crystal.
			.info It looks like a large floating purple crystal.
			.kill Scourging Crystal##24464|n
			.info Attack the crystal when the purple bubble shield disappears.
			.info If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
			.' Destroy the Scourging Crystal|q 11396/1
		step
			goto Howling Fjord,21.91,28.78
			.use Scourging Crystal Controller##33960
			.info Use it near the Scourge Crystal.
			.info It looks like a large floating purple crystal.
			.kill Scourging Crystal##24464|n
			.info Attack the crystal when the purple bubble shield disappears.
			.info If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
			.' Destroy the Scourging Crystal|q 11396/1
		step
			goto Howling Fjord,21.51,24.63
			.use Scourging Crystal Controller##33960
			.info Use it near the Scourge Crystal.
			.info It looks like a large floating purple crystal.
			.kill Scourging Crystal##24464|n
			.info Attack the crystal when the purple bubble shield disappears.
			.info If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
			.' Destroy the Scourging Crystal|q 11396/1
		step
			goto Howling Fjord,19.78,22.21
			.talk Old Icefin##24544
			..accept Trident of the Son##11422
		step
			goto Howling Fjord,21.50,25.10
			.' Kill enemies around this area.
			.info You can find them all around the Chillmere Coast area.
			.kill 15 Chillmere Coast Scourge|q 11394/1
		step
			goto Howling Fjord,22.89,33.81
			.from Rotgill##24546
			.info He looks like a white murloc that walks along the coast around this area.
			.get Rotgill's Trident##34035|q 11422/1
		step
			goto Howling Fjord,24.25,32.46
			.talk Explorer Jaren##23833
			..turnin And You Thought Murlocs Smelled Bad!##11394
			..turnin Bring Down Those Shields##11396
		step
			goto Howling Fjord,19.78,22.21
			.talk Old Icefin##24544
			..turnin Trident of the Son##11422
		step
			goto Howling Fjord,29.11,41.78
			.talk Sapper Steelring##23976
			..turnin Danger! Explosives!##11218
			..accept Leader of the Deranged##11240
		step
			goto Howling Fjord,31.62,41.50
			.talk Explorer Abigail##23978
			..turnin Send Them Packing##11224
		step
			goto Howling Fjord,31.89,33.49
			.kill Squeeg Idolhunter##24048|q 11240/1
			.info He walks around this area inside the mine.
		step
			goto Howling Fjord,60.27,18.69
			.talk Christopher Sloan##24056
			..accept I'll Try Anything!##11329
		step
			goto Howling Fjord,62.39,19.26
			.' Interact with Water Plant.
			.info They look like brown-ish green bushes on the ground underwater around this area.
			.from Northern Barbfish##24285
			.info Not all of them will contain Northern Barbfish.
			.get 5 Northern Barbfish##33628|q 11329/1
		step
			goto Howling Fjord,60.27,18.69
			.talk Christopher Sloan##24056
			..turnin I'll Try Anything!##11329
			..accept The One That Got Away##11410
		step
			goto Howling Fjord,60.06,16.11
			.talk James Ormsby##24061
			fpath Fort Wildervar, Howling Fjord|q 11284
		step
			goto Howling Fjord,60.18,15.62
			.talk Foreman Colbey##24176
			..accept The Yeti Next Door##11284
		step
			goto Howling Fjord,62.59,16.81
			.talk Gil Grisert##24139
			..turnin Everything Must Be Ready##11406
			..accept Down to the Wire##11269
		step
			goto Howling Fjord,62.66,16.80
			.talk Trapper Jethan##24131
			..accept Preying Upon the Weak##11292
		step
			goto Howling Fjord,56.96,15.74
			.from Frosthorn Ram##23740
			.collect 4 Tough Ram Meat##33352|q 11284
			.' You can find more around (1)|at 52.58,10.15
			.' You can find more around (2)|at 50.97,3.19
		step
			.use Tough Ram Meat##33352
			.collect Giant Yeti Meal##33477|q 11284
		step
			goto Howling Fjord,60.50,11.85
			.use Giant Yeti Meal##33477
			.info Use it near Shatterhorn inside the mine.
			.info You can use it from decently far away.
			.info He will wake up and attack you.
			.kill Shatterhorn##24178|q 11284/1
		step
			goto Howling Fjord,60.18,15.61
			.talk Foreman Colbey##24176
			..turnin The Yeti Next Door##11284
		step
			goto Howling Fjord,61.82,17.19
			.talk Lieutenant Maeve##24282
			..accept The Enigmatic Frost Nymphs##11302
		step
			goto Howling Fjord,62.27,17.22
			.talk Prospector Belvar##24328
			..accept The Book of Runes##11346
		step
			goto Howling Fjord,63.92,19.57
			.use Fresh Barbfish Bait##34013
			.info Use it next to the Sunken Boat underwater.
			.kill Frostfin##24500|q 11410/1
		step
			goto Howling Fjord,65.04,28.94
			.' Kill Iron Rune enemies around this area.
			.info They look like dwarves wearing dark colored armor.
			.info You can find them all around the Giant's Run area.
			.collect Book of Runes - Chapter 1##33778|q 11346
			.collect Book of Runes - Chapter 2##33779|q 11346
			.collect Book of Runes - Chapter 3##33780|q 11346
			.' You can find more around|at 67.78,28.95
		step
			.use Book of Runes - Chapter 1##33778
			.collect The Book of Runes##33781|q 11346/1
		step
			goto Howling Fjord,61.48,22.86
			.talk Lurielle##24117
			..turnin The Enigmatic Frost Nymphs##11302
			..accept Spirits of the Ice##11313
		step
			goto Howling Fjord,60.85,22.08
			.from Ice Elemental##23919
			.info They look like small grey rock elementals.
			.info You can find them all around the Frozen Glade area.
			.get 15 Icy Core##33605|q 11313/1
		step
			goto Howling Fjord,61.48,22.86
			.talk Lurielle##24117
			..turnin Spirits of the Ice##11313
			..accept The Fallen Sisters##11314
			..accept Wild Vines##11315
		step
			goto Howling Fjord,51.57,27.61
			.kill Chill Nymph##23678|n
			.info Don't kill them, just weaken them to about half health.
			.use Lurielle's Pendant##33606
			.info Use it on weakened Chill Nymphs.
			.info They look like female centaurs.
			.info You can find them all around the Vibrant Glade area.
			.' Free 7 Chill Nymphs|q 11314/1
		step
			goto Howling Fjord,51.57,27.61
			.kill 8 Scarlet Ivy##23763|q 11315/1
			.info They look like large walking flowers.
			.info You can find them all around the Vibrant Glade area.
		step
			goto Howling Fjord,61.48,22.86
			.talk Lurielle##24117
			..turnin The Fallen Sisters##11314
			..turnin Wild Vines##11315
			..accept Spawn of the Twisted Glade##11316
			..accept Seeds of the Blacksouled Keepers##11319
		step
			goto Howling Fjord,60.27,18.69
			.talk Christopher Sloan##24056
			..turnin The One That Got Away##11410
		step
			goto Howling Fjord,62.28,17.21
			.talk Prospector Belvar##24328
			..turnin The Book of Runes##11346
			..accept Mastering the Runes##11349
		step
			goto Howling Fjord,54.05,17.75
			.kill Spore##23876|n
			.info They look like orange spikey balls.
			.info You can find them all around the Twisted Glade area.
			.use Enchanted Ice Core##33607
			.info Use it on their corpses.
			.' Freeze 8 Spores|q 11319/1
		step
			goto Howling Fjord,54.05,17.75
			.kill 10 Thornvine Creeper##23874|q 11316/1
			.info They look like black and purple swmap elementals.
			.info You can find them all around the Twisted Glade area.
		step
			goto Howling Fjord,61.48,22.86
			.talk Lurielle##24117
			..turnin Spawn of the Twisted Glade##11316
			..turnin Seeds of the Blacksouled Keepers##11319
			..accept Keeper Witherleaf##11428
		step
			goto Howling Fjord,67.54,23.33
			.collect Iron Rune Carving Tools##33794|q 11349/1
			.info It looks like a small metal chest.
			.info It can spawn in multiple locations.
			.' It can also be located (1)|at 72.40,17.80
			.' It can also be located (2)|at 69.10,22.80
			.' It can also be located (3)|at 67.50,29.20
			.' It can also be located (4)|at 71.20,28.70
			.' It can also be located (5)|at 73.30,24.89
		step
			goto Howling Fjord,53.79,17.46
			.kill Keeper Witherleaf##24638|q 11428/1
			.info He looks like a green and brown centaur that walks around this area.
		step
			goto Howling Fjord,52.80,18.98
			.collect 10 Spotted Hippogryph Down##33348|q 11269/1
			.info They look like brown feathers on the ground around this area.
			.info You can find them all around this area.
		step
			goto Howling Fjord,52.80,18.98
			.collect 8 Trapped Prey##33487|q 11292/1
			.info They look like small animals stuck in silver metal traps on the ground around this area.
			.kill Prowling Worg##24206|n
			.info They sometimes appear after you click the Sprung Traps.
		step
			goto Howling Fjord,61.12,2.02
			.' Interact with: Frostblade Shrine.
			.info At the top of the mountain.
			.' Watch the dialogue.
			.kill Your Inner Turmoil##27959|n
			.' Become Cleansed of Your Inner Turmoil|q 11322/1
		step
			goto Howling Fjord,62.28,17.21
			.talk Prospector Belvar##24328
			..turnin Mastering the Runes##11349
			..accept The Rune of Command##11348
		step
			goto Howling Fjord,62.60,16.82
			.talk Gil Grisert##24139
			..turnin Down to the Wire##11269
			..accept We Call Him Steelfeather##11418
		step
			goto Howling Fjord,62.66,16.80
			.talk Trapper Jethan##24131
			..turnin Preying Upon the Weak##11292
		step
			goto Howling Fjord,62.66,16.80
			.use Feathered Charm##34026
			.info Use it on Steelfeather.
			.info She looks like a hippogryph flies in the sky above Fort Wildevar around this area.
			.info You can easily find and select Steelfeather by typing "/tar Steelfeather" into your chat.
			.' Watch the dialogue.
			.' Learn Steelfeather's Secret|q 11418/1
		step
			goto Howling Fjord,62.60,16.82
			.talk Gil Grisert##24139
			..turnin We Call Him Steelfeather##11418
		step
			goto Howling Fjord,61.48,22.86
			.talk Lurielle##24117
			..turnin Keeper Witherleaf##11428
		step
			goto Howling Fjord,70.41,23.92
			.use Rune of Command##33796
			.info Use it on a neutral Stone Giant around this area.
			.info It will not work on a Runed Stone Giant.
			.' Test the Rune of Command|q 11348/1
		step
			goto Howling Fjord,71.85,24.56
			.kill Binder Murdis##24334|q 11348/2
			.info Your Captive Stone Giant minion from the previous step will help you fight.
		step
			goto Howling Fjord,62.28,17.21
			.talk Prospector Belvar##24328
			..turnin The Rune of Command##11348
		step
			goto Howling Fjord,29.11,41.78
			.talk Sapper Steelring##23976
			..turnin Leader of the Deranged##11240
		step
			goto Howling Fjord,30.05,28.59
			.talk Watcher Moonleaf##24273
			..turnin The Cleansing##11322
			..accept In Worg's Clothing##11325
		step
			goto Howling Fjord,30.95,18.60
			.use Feknut's Firecrackers##33129
			.info Use them on the ground near Darkclaw Bats.
			.info They look like bats that fly in the air around this area.
			.collect 10 Darkclaw Guano##33084|q 11154/1
			.info It appears on the ground after Feknut's Firecrackers.
		step
			goto Howling Fjord,29.21,7.56 
			.use Worg Disguise##33618
			.' Wear the Worg Disguise |havebuff Worg Disguise##68347 |q 11325
		step
			goto Howling Fjord,29.69,5.67
			.talk Ulfang##24261
			..turnin In Worg's Clothing##11325
			..accept Brother Betrayers##11414
		step
			goto Howling Fjord,27.47,21.50
			.kill Bjomolf##24516|q 11414/1
			.info He looks like a larger brown wolf that walks around this area.
		step
			goto Howling Fjord,30.16,28.77
			.talk Engineer Feknut##24227
			..turnin Scare the Guano Out of Them!##11154
		step
			goto Howling Fjord,34.12,30.42
			.kill Varg##24517|q 11414/2
			.info He looks like a larger grey wolf that walks around this area.
		step
			goto Howling Fjord,29.21,7.56
			.use Worg Disguise##33618
			.' Wear the Worg Disguise |havebuff Worg Disguise##68347|q 11414
		step
			goto Howling Fjord,29.69,5.67
			.talk Ulfang##24261
			..turnin Brother Betrayers##11414
			..accept Eyes of the Eagle##11416
		step
			goto Howling Fjord,44.40,26.40
			.use Westguard Command Insignia##33311
			.talk Westguard Sergeant##24060
			..turnin Operation: Skornful Wrath##11248
			..accept Towers of Certain Doom##11245
			..accept Gruesome, But Necessary##11246
			..accept Burn Skorn, Burn!##11247
		step
			goto Howling Fjord,43.66,28.57
			.use Sergeant's Torch##33321
			.info Use it inside this building.
			.' Set the Northwest Longhouse Ablaze|q 11247/1
		step
			goto Howling Fjord,43.66,28.57
			.use Sergeant's Flare##33323
			.' Target the Northwest Tower|q 11245/1
		step
			goto Howling Fjord,46.33,28.21
			.use Sergeant's Torch##33321
			.info Use it inside this building.
			.' Set the Northeast Longhouse Ablaze|q 11247/2
		step
			goto Howling Fjord,45.93,30.71
			.use Sergeant's Torch##33321
			.info Use it inside this building.
			.' Set the Barracks Ablaze|q 11247/3
		step
			.use Westguard Command Insignia##33311
			.talk Westguard Sergeant##24060
			..turnin Burn Skorn, Burn!##11247
		step
			goto Howling Fjord,46.44,33.21
			.use Sergeant's Flare##33323
			.' Target the East Tower|q 11245/2
		step
			goto Howling Fjord,46.95,36.37
			.use Sergeant's Flare##33323
			.' Target the Southeast Tower|q 11245/4
		step
			goto Howling Fjord,44.86,35.07
			.' Kill Winterskorn enemies around this area.
			.collect Vrykul Scroll of Ascension##33314 |n
			.use Vrykul Scroll of Ascension##33314
			..accept Stop the Ascension!##11249
		step
			goto Howling Fjord,44.86,35.07
			.use Vrykul Scroll of Ascension##33339
			.' Watch the dialogue.
			.info Halfdan the Ice-Hearted appears nearby.
			.kill Halfdan the Ice-Hearted##23671|q 11249/1
		step
			goto Howling Fjord,44.86,35.07
			.' Kill Winterskorn enemies around this area.
			.use Sergeant's Machete##33310
			.info Use it on their corpses.
			.' Dismember 20 Winterskorn Vrykul|q 11246/1
		step
			.use Westguard Command Insignia##33311
			.talk Westguard Sergeant##24060
			..turnin Gruesome, But Necessary##11246
		step
			goto Howling Fjord,43.30,35.93
			.use Sergeant's Flare##33323
			.' Target the Southwest Tower|q 11245/3
		step
			.use Westguard Command Insignia##33311
			.talk Westguard Sergeant##24060
			..turnin Towers of Certain Doom##11245
			..accept All Hail the Conqueror of Skorn!##11250
		step
			goto Howling Fjord,41.46,37.69
			.' Interact with: Talonshrike's Egg
			.info At the bottom of the waterfall.
			.from Talonshrike##24518
			.info It flies down to you.
			.get Eyes of the Eagle##34027|q 11416/1
		step
			goto Howling Fjord,28.84,44.13
			.talk Captain Adams##23749
			..turnin All Hail the Conqueror of Skorn!##11250
			..accept Dealing With Gjalerbron##11235
		step
			goto Howling Fjord,28.86,43.98
			.talk Father Levariol##24038
			..turnin Stop the Ascension!##11249
			..accept Of Keys and Cages##11231
		step
			goto Howling Fjord,35.80,11.46
			.' Kill Gjalerbron enemies around this area.
			.info They look like large humans.
			.info You can find them all around the Gjalerbron area.
			.collect Gjalerbron Cage Key##33284+ |n
			.collect Large Gjalerbron Cage Key##33290 |n
			.info This key is rare to find.
			.info It can be used to open the Large Gjalerbron Cage at this location.
			.info The Large Gjalerbron Cage at this location contains multiple prisoners.
			.' Interact with: Gjalerbron Cage
			.info They look like wood and metal cages.
			.' Free 10 Gjalerbron Prisoners|q 11231/1
		step
			goto Howling Fjord,35.37,11.30
			.kill 15 Gjalerbron Warrior##23991|q 11235/1
			.kill 8 Gjalerbron Rune-Caster##23990|q 11235/2
			.kill 8 Gjalerbron Sleep-Watcher##23989|q 11235/3
			.info They look like large humans with an axe and a shield.
			.info You can find them all around the Gjalerbron area.
		step
			goto Howling Fjord,33.69,13.12
			.' Kill Gjalerbron enemies around this area.
			.info They look like large humans.
			.info You can find them all around the Gjalerbron area.
			.collect Gjalerbron Attack Plans##33289 |n
			.use Gjalerbron Attack Plans##33289
			..accept Gjalerbron Attack Plans##11237
		step
			goto Howling Fjord,29.21,7.56
			.use Worg Disguise##33618
			.' Wear the Worg Disguise |havebuff Worg Disguise##68347 |q 11416
		step
			goto Howling Fjord,29.69,5.67
			.talk Ulfang##24261
			..turnin Eyes of the Eagle##11416
			..accept Alpha Worg##11326
		step
			goto Howling Fjord,27,13.4
			.kill Garwal##24277|q 11326/1
			.info He looks like a larger grey wolf that walks around this area.
		step
			goto Howling Fjord,30.05,28.59
			.talk Watcher Moonleaf##24273
			..turnin Alpha Worg##11326
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..turnin Gjalerbron Attack Plans##11237
			..accept The Frost Wyrm and its Master##11238
		step
			goto Howling Fjord,28.84,44.12
			.talk Captain Adams##23749.
			..turnin Dealing With Gjalerbron##11235
			..accept Necro Overlord Mezhen##11236
		step
			goto Howling Fjord,28.86,43.97
			.talk Father Levariol##24038
			..turnin Of Keys and Cages##11231
			..accept In Service to the Light##11239
		step
			goto Howling Fjord,36.5,7.4
			.from Wyrmcaller Vile##24029
			.get Wyrmcaller's Horn##33282|q 11238/3
		step
			.use Wyrmcaller's Horn##33282
			.kill Glacion##24019|q 11238/2
		step
			goto Howling Fjord,38.79,13.08
			.kill Necro Overlord Mezhen##24018|q 11236/1
			.collect Mezhen's Writings##34090|q 11452 |future
		step
			.use Mezhen's Writings##34090
			..accept The Slumbering King##11452
		step
			goto Howling Fjord,40.89,6.48
			.kill Queen Angerboda##24023|q 11452/1
			.info Inside the building.
			.info Follow the path around inside the building to get to her.
		step
			goto Howling Fjord,33.72,9.96
			.kill 10 Deathless Watcher##24013|q 11239/1
			.' You can find more around (1)|at 36.40,15.73
			.' You can find more around (2)|at 36.87,8.19
		step
			goto Howling Fjord,33.72,9.96
			.kill 2 Putrid Wight##23992|q 11239/3
			.' You can find more around (1)|at 36.40,15.73
			.' You can find more around (2)|at 36.87,8.19
		step
			goto Howling Fjord,35.35,12.19
			.kill 4 Fearsome Horror##24073|q 11239/2
			.info Inside the building.
			.info They can be spread out in all of the rooms in this underground building.
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..turnin The Frost Wyrm and its Master##11238
		step
			goto Howling Fjord,28.84,44.12
			.talk Captain Adams##23749
			..turnin Necro Overlord Mezhen##11236
			..turnin The Slumbering King##11452
		step
			goto Howling Fjord,28.86,43.97
			.talk Father Levariol##24038
			..turnin In Service to the Light##11239
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..accept Sleeping Giants##11432
		step
			goto Howling Fjord,38.50,12.53
			.from Necrolord##24014
			.get 5 Awakening Rod##34083|q 11432
			.' You can find more around|at 33.25,9.33
		step
			goto Howling Fjord,35.12,11.70
			.use Awakening Rod##34083
			.info Use them on Dormant Vrykul.
			.info They look like vrykul sleeping upright inside the walls like mummies around this area inside the building.
			.kill 5 Dormant Vrykul##24669|q 11432/1
		step
			goto Howling Fjord,28.94,44.19
			.talk Mage-Lieutenant Malister##23888
			..turnin Sleeping Giants##11432
		step
			.' Congratulations! +130 quests for achievement "I've Toured the Fjord".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[72] Dragonblight",[[
author danaton
description This guide contain quest-chain (115) for Dragonblight location.
startlevel 72
		step
			goto Borean Tundra,63.80,46.12
			.talk Ataika##26169
			..accept Not Without a Fight!##11949
		step
			goto Borean Tundra,67.27,53.03
			.kill 12 Kvaldir Raider##25760|q 11949/1
		step
			goto Borean Tundra,63.80,46.12
			.talk Ataika##26169
			..turnin Not Without a Fight!##11949
			..accept Muahit's Wisdom##11950
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin Muahit's Wisdom##11950
			..accept Spirits Watch Over Us##11961
		step
			goto Borean Tundra,67.64,50.41
			.talk Iruk##26219
			.info Underwater.
			.' Choose <Search corpse for Issliruk's Totem.>
			.collect Issliruk's Totem##35701|q 11961/1
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin Spirits Watch Over Us##11961
			..accept The Tides Turn##11968
		step
			goto Borean Tundra,67.60,56.70
			.kill Heigarr the Horrible##26266|q 11968/1
			.info He fights around this area.
		step
			goto Borean Tundra,67.20,54.85
			.talk Elder Muahit##26218
			..turnin The Tides Turn##11968
		step
			goto Borean Tundra,67.27,54.85
			.talk Hotawa##28382
			..accept Travel to Moa'ki Harbor##12117
		step
			goto Borean Tundra,82.16,46.40
			.talk Private Casey##26186
			..accept The Lost Courier##12157
		step
			goto Dragonblight,28.83,56.18
			.talk Courier Lanson##27060
			..turnin The Lost Courier##12157
			..accept Of Traitors and Treason##12171
		step
			goto Dragonblight,29.18,55.32
			.talk Palena Silvercloud##26881
			..turnin Of Traitors and Treason##12171
			..accept High Commander Halford Wyrmbane##12174
		step
			goto Dragonblight,78.5,48.3
			.talk High Commander Halford Wyrmbane##27136
			..turnin High Commander Halford Wyrmbane##12174
		step
			goto Dragonblight,78.9,45.3
			.talk Vas the Unstable##27158
			..accept A Disturbance In The West##12439
		step
			goto Dragonblight,77.1,49.8
			.talk Rodney Wells##26878
			..turnin A Disturbance In The West##12439
			..accept To Stars' Rest!##12440
		step
			goto Dragonblight,77.1,49.8|n
			.talk Rodney Wells##26878
			.' Fly to Stars Rest, Dragonblight|goto 29,55.5,1.0|noway|q 12440
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin To Stars' Rest!##12440
			..accept Rifle the Bodies##12000
		step
			goto Dragonblight,29.18,55.65
			.talk Warden Jodi Moonsong##26973
			..accept The Liquid Fire of Elune##12166
		step
			goto Dragonblight,28.48,49.48
			.kill Blighted Elk##26616|n
			.info They look like deer bucks around this area.
			.use Liquid Fire of Elune##36956
			.info Use it on their corpses.
			.' Cleanse 6 Blighted Elk Corpses|q 12166/1
			.' You can find more around (1)|at 31.09,47.25
			.' You can find more around (2)|at 24.46,50.29
		step
			goto Dragonblight,28.48,49.48
			.kill Rabid Grizzly##26643|n
			.info They look like diseased bears around this area.
			.use Liquid Fire of Elune##36956
			.info Use it on their corpses.
			.' Cleanse 6 Rabid Grizzly Corpses|q 12166/2
			.' You can find more around (1)|at 31.09,47.25
			.' You can find more around (2)|at 24.46,50.29
		step
			goto Dragonblight,24.20,60.08
			.talk Ethenial Moonshadow##26501
			..accept Avenge this Atrocity!##12006
		step
			goto Dragonblight,23.65,57.82
			.' Interact with NPC: Dead Mage Hunter
			.info They look like dead bodies on the ground around this area.
			.collect Mage Hunter Personal Effects##35792|n
			.use Mage Hunter Personal Effects##35792
			.info You may have to find and use multiple of these.
			.collect Moonrest Gardens Plans##35783|q 12000/1
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin Rifle the Bodies##12000
			..accept Prevent the Accord##12004
		step
			goto Dragonblight,29.18,55.65
			.talk Warden Jodi Moonsong##26973
			..turnin The Liquid Fire of Elune##12166
			..accept Kill the Cultists##12167
		step
			goto Dragonblight,26.17,44.08
			.from Anub'ar Cultist##26319
			.get 5 Functional Cultist Suit##36957|q 12167/1
			.' You can find more around (1)|at 24.97,44.14
			.' You can find more around (2)|at 23.85,44.25
			.' You can find more around (3)|at 25.47,46.27
		step
			goto Dragonblight,26.17,44.08
			.from Anub'ar Cultist##26319
			.collect The Favor of Zangus##36958|q 12168 |future
			.' You can find more around (1)|at 24.97,44.14
			.' You can find more around (2)|at 23.85,44.25
			.' You can find more around (3)|at 25.47,46.27
		step
			.use The Favor of Zangus##36958
			..accept The Favor of Zangus##12168
		step
			goto Dragonblight,29.18,55.65
			.talk Warden Jodi Moonsong##26973
			..turnin Kill the Cultists##12167
			..turnin The Favor of Zangus##12168
			..accept The High Cultist##12169
		step
			goto Dragonblight,18.42,58.89
			.from Wind Trader Mu'fah##26496
			.info Outside, in front of the building.
			.get Wind Trader Mu'fah's Remains##35800|q 12004/1
		step
			goto Dragonblight,19.52,58.12
			.from Goramosh##26349
			.info Upstairs inside the crumbled building.
			.get The Scales of Goramosh##35801|q 12004/2
			.collect Goramosh's Strange Device##36742|q 12055 |future
		step
			.use Goramosh's Strange Device##36742
			..accept A Strange Device##12055
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin Prevent the Accord##12004
			..turnin A Strange Device##12055
			..accept Projections and Plans##12060
		step
			goto Dragonblight,28.84,49.74
			.kill High Cultist Zangus##26655|q 12169/1
		step
			goto Dragonblight,29.18,55.65
			.talk Warden Jodi Moonsong##26973
			..turnin The High Cultist##12169
		step
			goto Dragonblight,26.47,57.22
			.use Surge Needle Teleporter##36747
			.info You will be teleported up to a floating platform.
			.' Teleport to the Surge Needle|goto 19.48,59.59,0.3|q 12060
		step
			goto Dragonblight,19.79,59.82
			.' Watch the dialogue.
			.info On the floating platform.
			.' Observe the Object on the Surge Needle|q 12060/1
		step
			.use Surge Needle Teleporter##36747
			.info On the floating platform.
			.' Return to the Ground|goto 17.64,59,0.3|q 12060
		step
			goto Dragonblight,25.9,64.4
			.from Surge Needle Sorcerer##26257, Dragonblight Mage Hunter##26280, Moonrest Stalker##26281
			.info The Moonrest Highborne ghosts will not count for the quest goal.
			.' Slay 15 Blue Dragonflight Forces at Moonrest Gardens|q 12006/1
			.' You can find more around (1)|at 21.36,60.53
		step
			goto Dragonblight,24.20,60.08
			.talk Ethenial Moonshadow##26501
			..turnin Avenge this Atrocity!##12006
			..accept End Arcanimus##12013
		step
			goto Dragonblight,20.02,59.59
			.kill Arcanimus##26370|q 12013/1
		step
			goto Dragonblight,24.20,60.08
			.talk Ethenial Moonshadow##26501
			..turnin End Arcanimus##12013
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin Projections and Plans##12060
			..accept The Focus on the Beach##12065
		step
			goto Dragonblight,26.32,64.87
			.from Captain Emmy Malin##26762
			.collect Ley Line Focus Control Ring##36751|q 12065
			.collect Captain Malin's Letter##36756|q 12067 |future
		step
			.use Captain Malin's Letter##36756
			..accept A Letter for Home##12067
		step
			goto Dragonblight,26.53,65.07
			.use Ley Line Focus Control Ring##36751
			.info It takes a few seconds to complete the goal after you use the item.
			.goal Retrieve the Ley Line Focus Information|q 12065/1
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin The Focus on the Beach##12065
			..accept Atop the Woodlands##12083
		step
			goto Dragonblight,29.04,55.42
			.talk Commander Saia Azuresteel##26459
			..turnin A Letter for Home##12067
		step
			goto Dragonblight,28.73,57.10
			.talk Sarendryana##26837
			..accept Strengthen the Ancients##12092
		step
			goto Dragonblight,33.92,62.77
			.talk Woodlands Walker##26421
			.info They have a chance to attack you instead of giving you the bark.
			.info You can find them all around the Lothalor Woodlands area.
			.collect Bark of the Walkers##36786|n
			.use Bark of the Walkers##36786
			.info Use them on Lothalor Ancients around this area.
			.info They look like larger dazed tree creatures.
			.' Strengthen 3 Lothalor Ancients|q 12092/1
		step
			goto Dragonblight,32.61,71.39
			.from Lieutenant Ta'zinni##26815
			.info He looks like a troll that walks around this area with a guard.
			.info They walk in a clockwise circle around the large stone half circle with purple symbols on it.
			.collect Ley Line Focus Amulet##36779|q 12083
		step
			goto Dragonblight,32.33,71.33
			.use Ley Line Focus Control Amulet##36779
			.info It takes a few seconds to complete the goal after you use the item.
			.goal Retrieve the Ley Line Focus Information|q 12083/1
		step
			goto Dragonblight,28.73,57.10
			.talk Sarendryana##26837
			..turnin Strengthen the Ancients##12092
		step
			goto Dragonblight,29.00,55.45
			.talk Image of Archmage Modera##26673
			..turnin Atop the Woodlands##12083
			..accept Search Indu'le Village##12098
		step
			goto Dragonblight,40.25,66.86
			.talk Mage-Commander Evenstar##26873
			..turnin Search Indu'le Village##12098
			..accept The End of the Line##12107
		step
			goto Dragonblight,39.79,66.98
			.use Ley Line Focus Control Talisman##36815
			.info Underwater.
			.info It takes a few seconds to complete the goal after you use the item.
			.' Retrieve the Ley Line Focus Information|q 12107/1
		step
			goto Dragonblight,48.26,74.35
			.talk Trapper Mau'i##26228
			..accept Planning for the Future##11960
		step
			goto Dragonblight,48.01,74.87
			.talk Elder Ko'nani##26194
			..turnin Travel to Moa'ki Harbor##12117
			..accept Let Nothing Go To Waste##11958
		step
			goto Dragonblight,53.11,66.52
			.goal Observe the Azure Dragonshrine|q 12107/2
		step
			goto Dragonblight,45.93,68.66
			.collect 12 Snowfall Glade Pup##35692|q 11960/1
			.info They look like small wolverines.
			.info They are usually close to the buildings around this area.
			.' You can find more around (1)|at 43.82,68.46
			.' You can find more around (2)|at 42.78,71.67
			.' You can find more around (3)|at 43.37,71.68
			.' You can find more around (4)|at 44.47,71.46
		step
			goto Dragonblight,43.86,70.43
			.from Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201
			.info They look like wolverines.
			.info You can find them all around the Snowfall Glade area.
			.collect 6 Stolen Moa'ki Goods##35686|q 11958/1
			.' You can find more around|at 49.12,69.76
		step
			goto Dragonblight,48.26,74.35
			.talk Trapper Mau'i##26228
			..turnin Planning for the Future##11960
		step
			goto Dragonblight,48.01,74.87
			.talk Elder Ko'nani##26194
			..turnin Let Nothing Go To Waste##11958
			..accept Slay Loguhn##11959
		step
			goto Dragonblight,46.31,59.15
			.kill Loguhn##26196|n
			.collect Blood of Loguhn##35688|q 11959 |future
		step
			.use Blood of Loguhn##35688
			.goal Smear Loguhn's Blood|q 11959/1
		step
			goto Dragonblight,48.01,74.87
			.talk Elder Ko'nani##26194
			..turnin Slay Loguhn##11959
		step
			goto Dragonblight,49.14,75.66
			.talk Toalu'u the Mystic##26595
			..accept Spiritual Insight##12028
		step
			goto Dragonblight,48.94,75.79
			.use Toalu'u's Spiritual Incense##35907
			.' Release Your Spirit |havebuff Spell_Shadow_ConeOfSilence |q 12028 |future
		step
			.' Watch the dialogue.
			.goal Attain Spiritual Insight Concerning Indu'le Village|q 12028/1
		step
			goto Dragonblight,49.14,75.66
			.talk Toalu'u the Mystic##26595
			..turnin Spiritual Insight##12028
			..accept Elder Mana'loa##12030
		step
			goto Dragonblight,47.70,76.63
			.talk Tua'kea##26245
			..accept Tua'kea's Crab Traps##12009
		step
			.use Tua'kea's Breathing Bladder##37265
			.' Gain Waterbreathing |havebuff INV_Drink_Waterskin_03 |q 12009 |future
		step
			goto Dragonblight,47.74,79.97
			.' Interact with gameobject: Wrecked Crab Trap
			.info It looks like a broken small broken brown cage on the ground underwater.
			..accept Signs of Big Watery Trouble##12011
		step
			goto Dragonblight,47.70,76.63
			.talk Tua'kea##26245
			..turnin Signs of Big Watery Trouble##12011
			..accept The Bait##12016
		step
			goto Dragonblight,43.28,81.84
			.from Kili'ua##26521
			.info He looks like a huge crab.
			.info He walks around this area on this small island.
			.get The Flesh of "Two Huge Pincers"##35831|q 12016/1
		step
			goto Dragonblight,47.70,76.63
			.talk Tua'kea##26245
			..turnin The Bait##12016
			..accept Meat on the Hook##12017
		step
			goto Dragonblight,46.72,78.19
			.use Tu'u'gwar's Bait##35838
			.info Use it next to Tua'kea's Fishing Hook underwater.
			.info It looks like a rope leading into the water, with a large hook on the end.
			.kill Tu'u'gwar|q 12017/1
			.info He swims to you.
		step
			goto Dragonblight,46.58,77.72
			.collect 8 Tua'kea Crab Trap##35802|q 12009/1
			.info They look like small brown cages on the ground underwater.
			.info You can find them all around the Moa'ki Harbor area.
			.' You can find more around (1)|at 49.40,79.93
			.' You can find more around (2)|at 50.70,77.29
		step
			goto Dragonblight,47.70,76.63
			.talk Tua'kea##26245
			..turnin Tua'kea's Crab Traps##12009
			..turnin Meat on the Hook##12017
		step
			goto Dragonblight,36.74,65.17
			.' Interact with gameobject: Elder Mana'loa
			..turnin Elder Mana'loa##12030
			..accept Freedom for the Lingering##12031
		step
			goto Dragonblight,38.09,66.29
			.from Indu'le Mystic##26336, Indu'le Fisherman##26343, Indu'le Warrior##26344
			.info They look like walrus people spirits.
			.info Deranged Indu'le Villagers will not count for the quest goal.
			.info You can find them all around the Indu'le Village area.
			.' Put 15 Indu'le Spirits to Rest|q 12031/1
		step
			goto Dragonblight,36.74,65.17
			.' Interact with gameobject: Elder Mana'loa
			..turnin Freedom for the Lingering##12031
			..accept Conversing With the Depths##12032
		step
			goto Dragonblight,33.99,83.45
			.' Interact with gameobject: The Pearl of the Depths
			.' Watch the dialogue.
			.info A huge sea monster, Oacha'noa, will appear in the water nearby.
			.info You will eventually receive a 30 second buff.
			.info Jump into the water toward Oacha'noa when you have the buff.
			.' Obey Oacha'noa's Compulsion|q 12032/1
		step
			goto Dragonblight,29.00,55.46
			.talk Image of Archmage Modera##26673
			..turnin The End of the Line##12107
			..accept Gaining an Audience##12119
		step
			goto Dragonblight,49.14,75.65
			.talk Toalu'u the Mystic##26595
			..turnin Conversing With the Depths##12032
		step
			goto Dragonblight,78.56,48.27
			.talk High Commander Halford Wyrmbane##27136
			..turnin High Commander Halford Wyrmbane##12174
			..accept Naxxramas and the Fall of Wintergarde##12235
		step
			goto Dragonblight,77.10,50.12
			.talk Gryphon Commander Urik##27317
			..turnin Naxxramas and the Fall of Wintergarde##12235
			..accept Flight of the Wintergarde Defender##12237
		step
			goto Dragonblight,77.30,49.99
			.use Wintergarde Gryphon Whistle##37287
			.info It flies down to you and lands.
			.' Ride the Wintergarde Gryphon |invehicle |q 12237
		step
			goto Dragonblight,86.41,50.36
			.' Rescue 10 Helpless Villagers|q 12237/1
			.info Use the "Rescue Villager" ability on your action bar on Helpless Wintergarde Villagers.
			.info They look like humans running scared on the ground.
			.info They are spread out all around this area.
			.info You must be close to them to be able to pick them up.
			.' Return the Helpless Villagers|at 77.23,49.97
			.info Use the "Drop Off Villager" ability on your action bar.
		step
			goto Dragonblight,77.10,50.12
			.' Stop Riding the Wintergarde Gryphon |outvehicle |q 12237
			.info Click the red arrow on your action bar.
		step
			goto Dragonblight,77.10,50.12
			.talk Gryphon Commander Urik##27317
			..turnin Flight of the Wintergarde Defender##12237
			..accept Return to the High Commander##12251
		step
			goto Dragonblight,78.56,48.27
			.talk High Commander Halford Wyrmbane##27136
			..turnin Return to the High Commander##12251
			..accept Rescue from Town Square##12253
			..accept The Demo-gnome##12275
		step
			goto Dragonblight,78.64,48.18
			.talk Commander Lynore Windstryke##27155
			..accept The Fate of the Dead##12258
		step
			goto Dragonblight,79.15,47.17
			.talk Zelig the Visionary##27314
			..accept Imprints on the Past##12282
		step
			goto Dragonblight,77.85,50.29
			.talk Siege Engineer Quarterflash##27159
			..turnin The Demo-gnome##12275
			..accept The Search for Slinkin##12276
			..accept The Bleeding Ore##12272
		step
			goto Dragonblight,77.80,50.34
			.talk Highlord Leoric Von Zeldig##27156
			..accept Not In Our Mine##12269
		step
			goto Dragonblight,78.85,50.89
			.collect Scrying Orb##37538|q 12282/1
			.info Upstairs inside the building.
		step
			goto Dragonblight,80.03,50.01
			.' Rescue 6 Trapped Wintergarde Villagers|q 12253/1
			.info Kill the Vengeful Geists next to Trapped Wintergarde Villagers.
			.info The Trapped Wintergarde Villagers look like humans.
			.info They can be outside or inside the buildings around this area.
		step
			goto Dragonblight,80.03,50.01
			.kill 15 Vengeful Geist##27370|q 12258/1
			.' You can find more inside the buildings around this area.
		step
			goto Dragonblight,80.16,45.5|n
			.' Enter the lower part of the mine here|goto 80.16,45.5,0.5|q 12276
		step
			goto Dragonblight,81.52,42.21
			.talk Slinkin the Demo-gnome##27412
			..turnin The Search for Slinkin##12276
			..accept Leave Nothing to Chance##12277
		step
			goto Dragonblight,80.74,41.32
			.collect Wintergarde Mine Bomb##37465|q 12277
			.info Inside the mine.
		step
			goto Dragonblight,80.30,41.87
			.collect 10 Strange Ore##37359|q 12272/1
			.info They look like dark colored mining nodes with light blue crystals.
			.info You can find them on the ground all throughout the mine,
		step
			goto Dragonblight,80.14,45.35
			.use Wintergarde Mine Bomb##37465
			.info Use it in the entrance to the mine at this location.
			.info Run out of the mine after using item.
			.info Don't stand too close to the bomb, it can damage you.
			.' Destroy the Lower Wintergarde Mine Shaft|q 12277/2
		step
			goto Dragonblight,80.41,44.81
			.use Wintergarde Mine Bomb##37465
			.info Use it in the entrance to the mine at this location.
			.info Run deeper into the mine after using item.
			.info There are still quests to complete inside the mine.
			.info Don't stand too close to the bomb, it can damage you.
			.' Destroy the Upper Wintergarde Mine Shaft|q 12277/1
		step
			goto Dragonblight,80.30,41.87
			.from Risen Wintergarde Miner##27401
			.info You can find them all throughout the mine.
			.get 10 Wintergarde Miner's Card##37411|q 12269/1
		step
			goto Dragonblight,77.80,50.34
			.talk Highlord Leoric Von Zeldig##27156
			..turnin Not In Our Mine##12269
		step
			goto Dragonblight,77.84,50.30
			.talk Siege Engineer Quarterflash##27159
			..turnin The Bleeding Ore##12272
			..turnin Leave Nothing to Chance##12277
			..accept Understanding the Scourge War Machine##12281
		step
			goto Dragonblight,78.56,48.27
			.talk High Commander Halford Wyrmbane##27136
			..turnin Rescue from Town Square##12253
			..accept Find Durkon!##12309
			..turnin Understanding the Scourge War Machine##12281
		step
			goto Dragonblight,78.65,48.18
			.talk Commander Lynore Windstryke##27155
			..turnin The Fate of the Dead##12258
		step
			goto Dragonblight,79.15,47.17
			.talk Zelig the Visionary##27314
			..turnin Imprints on the Past##12282
			..accept Orik Trueheart and the Forgotten Shore##12287
		step
			goto Dragonblight,79.06,53.20
			.talk Cavalier Durkon##27318
			..turnin Find Durkon!##12309
			..accept The Noble's Crypt##12311
		step
			goto Dragonblight,78.60,52.38
			.kill Necrolord Amarion##27508|q 12311/1
			.info Inside the crypt, on the bottom floor.
		step
			goto Dragonblight,78.62,52.28
			.' Interact with gameobject: Flesh-bound Tome
			.info Inside the crypt, on the bottom floor.
			..accept Secrets of the Scourge##12312
		step
			goto Dragonblight,79.06,53.20
			.talk Cavalier Durkon##27318
			..turnin The Noble's Crypt##12311
			..turnin Secrets of the Scourge##12312
			..accept Mystery of the Tome##12319
		step
			goto Dragonblight,78.56,48.27
			.talk High Commander Halford Wyrmbane##27136
			..turnin Mystery of the Tome##12319
			..accept Understanding the Language of Death##12320
		step
			goto Dragonblight,76.78,47.42
			.talk Inquisitor Hallard##27316
			..turnin Understanding the Language of Death##12320
			..accept A Righteous Sermon##12321
		step
			goto Dragonblight,76.78,47.42
			.' Watch the dialogue.
			.info Downstairs inside the building.
			.' Hear the Righteous Sermon|q 12321/1
		step
			goto Dragonblight,78.56,48.27
			.talk High Commander Halford Wyrmbane##27136
			..turnin A Righteous Sermon##12321
			..accept Into Hostile Territory##12325
		step
			goto Dragonblight,77.20,49.54
			.' Interact with NPC: Wintergarde Gryphon
			.' Borrow the Wintergarde Gryphon |invehicle |q 12325
		step
			goto Dragonblight,89.60,46.86
			.' Fly to Duke August Foehammer |outvehicle |q 12325
		step
			goto Dragonblight,89.68,46.37
			.talk Duke August Foehammer##27157
			..turnin Into Hostile Territory##12325
			..accept Steamtank Surprise##12326
		step
			goto Dragonblight,89.76,46.88
			.' Interact with gameobject: Alliance Steam Tank
			.' Take Control of an Alliance Steam Tank |invehicle |q 12326
		step
			goto Dragonblight,88.74,48.71
			.' Sabotage 6 Plague Wagons|q 12326/1
			.info Use the "Drop Off Gnome" ability on your action bar next to Plague Wagons.
			.info They look like metal carts with pots of orange liquid on the back of them on the ground around this area.
			.info Protect the gnomes while they sabotage the carts.
			.info Allow the gnomes to completely finish working on a Plague Wagon before using the "Drop Off Gnome" ability again.
			.' You can find more around|at 87.40,51.67
		step
			goto Dragonblight,85.70,49.88
			.' Drop Off the 7th Legion Elite|q 12326/2
			.info In front of the crypt entrance.
			.info Use the "Drop Off Soldier" ability on your action bar.
		step
			goto Dragonblight,85.94,50.87
			.talk Ambo Cash##1293
			..turnin Steamtank Surprise##12326
			..accept Scattered To The Wind##12455
		step
			goto Dragonblight,85.86,51.02
			.talk Yord "Calamity" Icebeard##27319
			..accept Breaking Off A Piece##12462
		step
			goto Dragonblight,83.92,46.82
			.collect 8 Wintergarde Munitions##37879|q 12455/1
			.info They look like long brown wooden boxes on the ground around this area.
			.' You can find more around (1)|at 86.29,52.05
			.' You can find more around (2)|at 88.44,49.73
		step
			goto Dragonblight,85.94,50.87
			.talk Ambo Cash##1293
			..turnin Scattered To The Wind##12455
			..accept The Chain Gun And You##12457
		step
			goto Dragonblight,86.23,51.06
			.' Interact with gameobject: 7th Legion Chain Gun
			.info Inside the crypt.
			.' Save 8 Injured 7th Legion Soldiers|q 12457/1
			.info Use the "Call Out Injured Soldier" ability on your action bar, to make the Injured Soldiers walk to you.
			.info Use the "7th Legion Chain Gun" ability to kill the enemies and protect the Injured Soldiers as they walk.
		step
			.' Stop Controlling the 7th Legion Chain Gun|outvehicle |q 12457
			.info Click the yellow arrow on your action bar.
		step
			goto Dragonblight,85.94,50.87
			.talk Ambo Cash##1293
			..turnin The Chain Gun And You##12457
			..accept Plunderbeard Must Be Found!##12463
		step
			goto Dragonblight,84.35,51.00
			.kill Necrolord X'avius##27826|q 12462/2
			.info Inside the crypt.
		step
			goto Dragonblight,86.68,52.89
			.kill Necrolord Horus##27805|q 12462/1
			.info Inside the crypt.
		step
			goto Dragonblight,85.42,52.49
			.' Kill enemies around this area
			.info Inside the crypt, in all of the 3 rooms.
			.' Slay 15 Naxxramas Scourge|q 12462/3
		step
			goto Dragonblight,84.17,54.68
			.' Interact with gameobject: Plunderbeard
			.info Inside the crypt.
			..turnin Plunderbeard Must Be Found!##12463
			..accept Plunderbeard's Journal##12465
		step
			goto Dragonblight,82.69,54.11
			.' Kill enemies around this area
			.info Inside the crypt.
			.get Page 4 of Plunderbeard's Journal##37910|q 12465/1
			.get Page 5 of Plunderbeard's Journal##37911|q 12465/2
			.get Page 6 of Plunderbeard's Journal##37912|q 12465/3
			.get Page 7 of Plunderbeard's Journal##37913|q 12465/4
			.' You can find more around|at 81.10,53.48
		step
			goto Dragonblight,85.94,50.87
			.talk Ambo Cash##1293
			..turnin Plunderbeard's Journal##12465
			..accept Chasing Icestorm: The 7th Legion Front##12466
		step
			goto Dragonblight,85.86,51.03
			.talk Yord "Calamity" Icebeard##27319
			..turnin Breaking Off A Piece##12462
		step
			goto Dragonblight,87.17,57.49
			.talk Orik Trueheart##27347
			..turnin Orik Trueheart and the Forgotten Shore##12287
			..accept The Murkweed Elixir##12290
		step
			goto Dragonblight,89.71,65.89
			.collect 5 Murkweed##37569|q 12290/1
			.info They look like small purple plants on the ground around this area.
			.' You can find more around|at 90.01,71.04
		step
			goto Dragonblight,87.17,57.49
			.talk Orik Trueheart##27347
			..turnin The Murkweed Elixir##12290
			..accept The Forgotten Tale##12291
		step
			goto Dragonblight,86.04,64.14
			.use Murkweed Elixir##37570
			.' Enter the Spirit Form |havebuff INV_Poison_MindNumbing |q 12291
		step
			goto Dragonblight,86.48,65.49
			.talk Forgotten Peasant##27226
			.' Tell him "Sorry to have bothered you, friend. Carry on!"
			.' Question a Forgotten Peasant|q 12291/1
		step
			goto Dragonblight,86.48,65.49
			.talk Forgotten Rifleman##27225
			.' Tell him "I'm sure Arthas will be back any day now, soldier. Keep your chin up!"
			.' Question a Forgotten Rifleman|q 12291/2
		step
			goto Dragonblight,86.48,65.49
			.talk Forgotten Footman##27229
			.' Tell him "I'm sure everything will work out, footman."
			.' Question a Forgotten Footman|q 12291/4
		step
			goto Dragonblight,85.98,68.75
			.talk Forgotten Knight##27224
			.' Tell him "I must be going now, soldier. Stay vigilant!"
			.' Question a Forgotten Knight|q 12291/3
		step
			goto Dragonblight,87.17,57.49
			.talk Orik Trueheart##27347
			..turnin The Forgotten Tale##12291
			..accept The Truth Shall Set Us Free##12301
		step
			goto Dragonblight,86.80,66.18
			.use Orik's Crystalline Orb##37577
			.info Use it near the blue glowing circle on the ground.
			.' Watch the dialogue.
			.' Redeem the Forgotten|q 12301/1
		step
			goto Dragonblight,87.17,57.49
			.talk Orik Trueheart##27347
			..turnin The Truth Shall Set Us Free##12301
			..accept Parting Thoughts##12305
		step
			goto Dragonblight,79.15,47.17
			.talk Zelig the Visionary##27314
			..turnin Parting Thoughts##12305
			..accept What Secrets Men Hide##12475
		step
			goto Dragonblight,78.65,48.18
			.talk Commander Lynore Windstryke##27155
			..accept The Return of the Crusade?##12476
		step
			goto Dragonblight,78.55,48.24
			.talk High Commander Halford Wyrmbane##27136
			..accept The Path of Redemption##12477
		step
			goto Dragonblight,87.58,38.12
			.collect Onslaught Map##37930|q 12475/1
			.info Inside the building.
		step
			goto Dragonblight,85.55,37.02
			.' Kill Onslaught enemies around this area.
			.info Only enemies that look like humans will drop the quest item.
			.get The Path of Redemption##37931|q 12477/1
			.' Slay 20 Scarlet Onslaught|q 12476/1
		step
			goto Dragonblight,78.55,48.24
			.talk High Commander Halford Wyrmbane##27136
			..turnin The Path of Redemption##12477
		step
			goto Dragonblight,78.65,48.18
			.talk Commander Lynore Windstryke##27155
			..turnin The Return of the Crusade?##12476
		step
			goto Dragonblight,79.15,47.17
			.talk Zelig the Visionary##27314
			..turnin What Secrets Men Hide##12475
			..accept Frostmourne Cavern##12478
		step
			goto Dragonblight,57.91,54.16
			.talk Tariolstrasz##26443
			..turnin Gaining an Audience##12119
			..accept Speak with your Ambassador##12766
		step
			goto Dragonblight,57.91,54.16|n
			.talk Tariolstrasz##26443
			.' Tell him "Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple."
			.' Begin Flying to the Top of the Temple|goto 59.7,53,1 |q 12458 |future
		step
			goto Dragonblight,59.60,54.47
			.talk Lord Itharius##27785
			..accept Seeds of the Lashers##12458
		step
			goto Dragonblight,60,54.5
			.talk Chromie##27856
			..accept Mystery of the Infinite##12470
		step
			goto Dragonblight,60.07,54.20
			.talk Nalice##27765
			..accept The Obsidian Dragonshrine##12447
		step
			goto Dragonblight,59.51,53.33|n
			.talk Torastrasza##26949
			.' Tell him "Yes, please, I would like to return to the ground level of the temple."
			.' Begin Flying to the Ground Level of the Temple|goto 58,55.15,1 |q 12467 |future
		step
			goto Dragonblight,71.92,38.99
			.use Hourglass of Eternity##37923
			.goal Hourglass of Eternity protected|q 12470/1
		step
			goto Dragonblight,64.74,27.93
			.talk Legion Commander Tyralion##27844
			..turnin Chasing Icestorm: The 7th Legion Front##12466
			..accept Chasing Icestorm: Thel'zan's Phylactery##12467
		step
			goto Dragonblight,64.61,27.45
			.talk "Wyrmbait"##27843
			.' Tell him "Wyrmbait, eh?  Welp, go fetch us Icestorm!"
			.' Watch the dialogue
			.info Icestorm will fly to you and become chained by the harpoon guns nearby.
			.kill Icestorm##26287|n
			.info Let your allies fight him for a bit, to build aggro, before you attack him, so he won't attack you.
			.collect Thel'zan's Phylactery##37920|q 12467/1
			.info It appears on the ground after you kill Icestorm.
		step
			goto Dragonblight,64.42,26.94
			.talk Duane##26978
			..accept Pest Control##12142
		step
			goto Dragonblight,68.32,33.22
			.' Kill Magnataur enemies around this area
			.info They look like large blue centaurs.
			.' Slay 3 Dragonblight Magnataur|q 12142/2
			.' You can find more around (1)|at 65.58,41.27
			.' You can find more around (2)|at 64.55,47.42
		step
			goto Dragonblight,70.24,32.69
			.' Kill Snowplain enemies around this area
			.info They look like kobolds.
			.' Slay 10 Snowplain Snobolds|q 12142/1
			.' You can find more around (1)|at 64.97,42.89
			.' You can find more around (2)|at 65.12,49.85
		step
			goto Dragonblight,64.42,26.94
			.talk Duane##26978
			..turnin Pest Control##12142
			..accept Canyon Chase##12143
		step
			goto Dragonblight,72.34,28.73
			.kill Chilltusk##27005|q 12143/1
			.info He looks like a Magnataur that walks around in this canyon.
			.collect Emblazoned Battle Horn##36855|q 12146 |future
		step
			.use Emblazoned Battle Horn##36855
			..accept Disturbing Implications##12146
		step
			goto Dragonblight,75.07,20.22
			.use Zelig's Scrying Orb##37933
			.info Inside the cave.
			.' Watch the dialogue.
			.' Reveal the Secrets of the Past|q 12478/1
		step
			goto Dragonblight,78.57,48.23
			.talk High Commander Halford Wyrmbane##27136
			..turnin Chasing Icestorm: Thel'zan's Phylactery##12467
			..accept Finality##12472
		step
			goto Dragonblight,79.15,47.17
			.talk Zelig the Visionary##27314
			..turnin Frostmourne Cavern##12478
		step
			goto Dragonblight,81.18,50.65
			.talk Legion Commander Yorik##27857
			..turnin Finality##12472
			..accept An End And A Beginning##12473
		step
			goto Dragonblight,80.94,50.63
			.' Watch the dialogue.
			.info Inside the crypt.
			.' Kill the enemies that attack
			.info Your allies will help you fight.
			.kill Thel'zan the Duskbringer##27383|n
			.info After you kill him, there is a little more dialogue to wait for before the quest completes.
			.' Defeat Thel'zan the Duskbringer|q 12473/1
		step
			goto Dragonblight,78.57,48.23		
			.talk High Commander Halford Wyrmbane##27136
			..turnin An End And A Beginning##12473
			..accept To Fordragon Hold!##12474
		step
			goto Dragonblight,60.00,55.08
			.talk Lauriel Trueblade##27803
			..turnin Speak with your Ambassador##12766
			..accept Report to the Ruby Dragonshrine##12460
		step
			goto Dragonblight,60.02,55.20
			.talk Aurastrasza##26983
			..turnin Disturbing Implications##12146
		step
			goto Dragonblight,60,54.5
			.talk Chromie##27856
			..turnin Mystery of the Infinite##12470
		step
			goto Dragonblight,52.21,50.03
			.talk Ceristrasz##27506
			..turnin Report to the Ruby Dragonshrine##12460
			..accept Heated Battle##12416
		step
			goto Dragonblight,52.68,46.31
			.kill 12 Frigid Ghoul Attacker##27685|q 12416/1
			.info They look like zombies.
			.kill 8 Frigid Geist Attacker##27686|q 12416/2
			.info They looks like frail humans crouching on the ground.
			.kill Frigid Abomination Attacker##27531|q 12416/3
			.info They look like abominations.
			.' You can find more around (1)|at 50.92,52.52
			.' You can find more around (2)|at 49.35,51.10
		step
			goto Dragonblight,52.21,50.03
			.talk Ceristrasz##27506
			..turnin Heated Battle##12416
			..accept Return to the Earth##12417
		step
			goto Dragonblight,48.25,47.14
			.collect Ruby Acorn##37727|n |q 12417 |future
			.info They look like small red stones on the ground.
			.info You can find them all around the Ruby Dragonshrine area.
			.use Ruby Acorn##37727
			.info Use them on Ruby Keeper corpses.
			.info They look like large red dragons on fire on the ground.
			.' Return 6 Ruby Keepers to the Earth|q 12417/1
		step
			goto Dragonblight,52.21,50.03
			.talk Ceristrasz##27506
			..turnin Return to the Earth##12417
			..accept Through Fields of Flame##12418
		step
			goto Dragonblight,47.64,48.97
			.kill Dahlia Suntouch##27680|n
			.' Cleanse the Ruby Corruption|q 12418/2
			.collect Ruby Brooch##37833|q 12419 |future
		step
			.use Ruby Brooch##37833
			..accept The Fate of the Ruby Dragonshrine##12419
		step
			goto Dragonblight,46.99,50.82
			.kill 6 Frigid Necromancer##27539|q 12418/1
			.info They look like humans wearing robes.
			.info You can find them all around the outside of the tree.
		step
			goto Dragonblight,52.21,50.03
			.talk Ceristrasz##27506
			..turnin Through Fields of Flame##12418
			..accept The Steward of Wyrmrest Temple##12768
		step
			goto Dragonblight,35.21,30.05
			.talk Serinar##26593
			..turnin The Obsidian Dragonshrine##12447
			..accept No One to Save You##12262
			..accept No Place to Run##12261
		step
			goto Dragonblight,41.38,31.86
			.use Destructive Wards##37445
			.' Kill the enemies that attack in waves
			.goal Fully Charge the Destructive Ward|q 12261/1
		step
			goto Dragonblight,38.19,31.90
			.kill 6 Burning Depths Necrolyte##27356|q 12262/1
			.info They look like humans wearing robes and carrying staves.
			.kill 10 Smoldering Skeleton##27360|q 12262/2
			.info They look like skeletons with red smoke rising out of the ground beneath them.
			.info You can find them all around this area.
		step
			goto Dragonblight,35.21,30.05
			.talk Serinar##26593
			..turnin No One to Save You##12262
			..turnin No Place to Run##12261
			..accept The Best of Intentions##12263
		step
			goto Dragonblight,35.21,30.05
			.' Watch the dialogue.
			.info Inside the cave.
			.info You will gain the buff automatically after a few seconds.
			.' Gain the Burning Depths Necrolyte Disguise |havebuff Spell_Shadow_NetherCloak |q 12263
		step
			goto Dragonblight,35.03,31.95|n
			.' Move along the corridor to the end|goto 35.03,31.95,1|noway|q 12263
		step
			goto Dragonblight,34.03,26.37|n
			.' Continue moving along the tunnel|goto 34.03,26.37,1|noway|q 12263
		step
			goto Dragonblight,31.4,30.9
			.goal Uncover the Magmawyrm Resurrection Chamber|q 12263/1
		step
			goto Dragonblight,33.08,31.02|n
			.' Take a shortcut here|goto 33.08,31.02,0.3|noway|q 12263
		step
			goto Dragonblight,35.21,30.05
			.talk Serinar##26593
			..turnin The Best of Intentions##12263
			..accept Culling the Damned##12264
			..accept Defiling the Defilers##12265
		step
			goto Dragonblight,31.87,29.61
			.' Destroy 8 Necromantic Runes|q 12265/1
			.info They look like round purple symbols on the ground around this area inside the cave.
			.info If you couldn't jump up the rocks to take the shortcut, continue follow the path up in the cave until you reach this location.
		step
			goto Dragonblight,31.87,29.61
			.kill 3 Burning Depths Necromancer##27358|q 12264/1
			.info They look like humans wearing robes and carrying orange glowing staves.
			.kill 6 Smoldering Construct##27362|q 12264/2
			.info They look like hunched skeletons with red smoke rising out of the bodies.
			.kill 6 Smoldering Geist##27363|q 12264/3
			.info They look like frail humans crouching on the ground.
			.info Inside the cave.
		step
			goto Dragonblight,35.21,30.05
			.talk Serinar##26593
			..turnin Culling the Damned##12264
			..turnin Defiling the Defilers##12265
			..accept Neltharion's Flame##12267
		step
			goto Dragonblight,31.41,31.01
			.use Neltharion's Flame##37539
			.info Use it on the edge of the rock, next to the lava inside the cave.
			.info If you couldn't jump up the rocks to take the shortcut, continue follow the path up in the cave until you reach this location.
			.' Cleanse the Summoning Area|q 12267/1
		step
			goto Dragonblight,31.41,31.01
			.' Watch the dialogue.
			.info Inside the cave.
			.kill Rothin the Decaying##27355|q 12267/2
		step
			goto Dragonblight,35.21,30.05
			.talk Serinar##26593
			..turnin Neltharion's Flame##12267
			..accept Tales of Destruction##12266
		step
			goto Dragonblight,37.81,23.41
			.talk Highlord Bolvar Fordragon##27872
			..turnin To Fordragon Hold!##12474
			..accept Audience With The Dragon Queen##12495
		step
			goto Dragonblight,57.91,54.17
			.talk Tariolstrasz##26443
			..turnin The Steward of Wyrmrest Temple##12768
			..accept Informing the Queen##12123
		step
			goto Dragonblight,60.07,54.20
			.talk Nalice##27765
			..turnin Tales of Destruction##12266
		step
			goto Dragonblight,59.83,54.66
			.talk Alexstrasza the Life-Binder##26917
			..turnin Audience With The Dragon Queen##12495
			..accept Galakrond and the Scourge##12497
			..turnin Informing the Queen##12123
			..accept Report to Lord Devrestrasz##12435
		step
			goto Dragonblight,59.79,54.70
			.talk Krasus##27990
			..turnin The Fate of the Ruby Dragonshrine##12419
		step
			goto Dragonblight,59.52,53.32
			.talk Torastrasza##26949
			..turnin Galakrond and the Scourge##12497
			..accept On Ruby Wings##12498
		step
			goto Dragonblight,59.73,53.12
			.use Ruby Beacon of the Dragon Queen##38302
			.' Interact with NPC: Wyrmrest Vanquisher
			.info It flies to you.
			.' Ride the Wyrmrest Vanquisher|invehicle|q 12498
		step
			goto Dragonblight,54.3,30.8
			.' Ride the Wyrmrest Vanquisher|invehicle |use Ruby Beacon of the Dragon Queen##38302 |q 12498
			.kill Thiassi the Lightning Bringer##28018|n
			.info He walks around this small area on top of the hill.
			.info Use the abilities on your action bar.
			.kill Grand Necrolord Antiok##28006|n
			.info He appears after you kill Thiassi the Lightning Bringer.
			.info He will knock you off your dragon.
			.collect Scythe of Antiok##38305|q 12498/2
			.info It appears on the ground after you kill Grand Necrolord Antiok.
		step
			goto Dragonblight,56.05,34.4
			.' Ride the Wyrmrest Vanquisher|invehicle |use Ruby Beacon of the Dragon Queen##38302 |q 12498
			.kill 30 Wastes Scavenger##28005|q 12498/1
		step
			goto Dragonblight,64.90,73.64
			.talk Nishera the Garden Keeper##27255
			..accept Cycle of Life##12454
		step
			goto Dragonblight,63.44,71.90
			.from Emerald Lasher##27254
			.info They look like plants with large petals.
			.info You can find them all around the Emerald Dragonshrine area.
			.get 3 Lasher Seed##140458|q 12458/1
		step
			goto Dragonblight,63.94,73.22
			.kill 5 Emerald Skytalon##27244|q 12454/1
			.info They look like owls flying in the air above the lake.
		step
			goto Dragonblight,64.90,73.64
			.talk Nishera the Garden Keeper##27255
			..turnin Cycle of Life##12454
			..accept The Plume of Alystros##12456
		step
			goto Dragonblight,64.78,77.6
			.use Skytalon Molts##37881
			.from Alystros the Verdant Keeper##27249
			.get The Plume of Alystros##37880|q 12456/1
		step
			goto Dragonblight,64.90,73.64
			.talk Nishera the Garden Keeper##27255
			..turnin The Plume of Alystros##12456
		step
			goto Dragonblight,59.60,54.47
			.talk Lord Itharius##27785
			..turnin Seeds of the Lashers##12458
			..accept That Which Creates Can Also Destroy##12459
		step
			goto Dragonblight,64.42,26.94
			.talk Duane##26978
			..turnin Canyon Chase##12143
		step
			goto Dragonblight,55.8,41.8
			.from Reanimated Frost Wyrm##26841|use Seeds of Nature's Wrath##37887
			.kill Weakened Reanimated Frost Wyrm##27821|q 12459/1
		step
			goto Dragonblight,48.46,24.13
			.talk Nozzlerust Supply Runner##26896
			..accept Return to Sender##12469
		step
			goto Dragonblight,54.47,23.60
			.talk Narf##26647
			..accept Nozzlerust Defense##12043
		step
			goto Dragonblight,54.70,23.25
			.talk Zivlix##26661
			..accept Shaved Ice##12045
		step
			goto Dragonblight,55.02,23.43
			.talk Xink##26660
			..turnin Return to Sender##12469
			..accept Stocking Up##12044
		step
			goto Dragonblight,57.74,16.46
			.from Crystalline Ice Elemental##26316
			.get 4 Ice Shard Cluster##36728|q 12045/1
			.' You can find more around (1)|at 53.30,19.09
			.' You can find more around (2)|at 49.86,18.52
		step
			goto Dragonblight,56.19,27.07
			.kill Wastes Taskmaster##26493|q 12043/1
			.info They look like humans wearing robes.
			.' You can find more around (1)|at 59.02,31.14
			.' You can find more around (2)|at 51.80,31.23
		step
			goto Dragonblight,56.19,27.07
			.kill 12 Wastes Digger##26492|q 12043/2
			.info They look like zombies.
			.collect 8 Composite Ore##36727|q 12044/1
			.info They look like carts with ore in them on the ground.
			.' You can find more around (1)|at 59.02,31.14
			.' You can find more around (2)|at 51.80,31.23
			.' You can find more around (3)|at 52.1,38.3
		step
			goto Dragonblight,55.03,23.42
			.talk Xink##26660
			..turnin Stocking Up##12044
		step
			goto Dragonblight,54.70,23.25
			.talk Zivlix##26661
			..turnin Shaved Ice##12045
			..accept Soft Packaging##12046
		step
			goto Dragonblight,54.47,23.60
			.talk Narf##26647
			..turnin Nozzlerust Defense##12043
		step
			goto Dragonblight,51.75,24.79
			.from Jormungar Tunneler##26467
			.info They look like large grubs around this area.
			.info Dragonbone Condors will also drop the quest item.
			.info They look like birds.
			.get 12 Thin Animal Hide##36729|q 12046/1
		step
			goto Dragonblight,54.70,23.25
			.talk Zivlix##26661
			..turnin Soft Packaging##12046
			..accept Something That Doesn't Melt##12047
		step
			goto Dragonblight,55.02,23.43
			.talk Xink##26660
			..accept Hard to Swallow##12049
		step
			goto Dragonblight,59.48,23.04
			.from Hulking Jormungar##26293
			.info They look like centipedes standing upright.
			.info They are elite, but you don't kill them.
			.info Just fight one until it opens its mouth.
			.info You will get a message on your screen when it opens its mouth.
			.use Potent Explosive Charges##36732
			.info Use them on the Hulking Jormungar after it opens its mouth.
			.get 6 Seared Jormungar Meat##36731|q 12049/1
			.info They appear on the ground after the Hulking Jormungar dies.
		step
			goto Dragonblight,57.28,24.29
			.collect 12 Splintered Bone Chunk##36730|q 12047/1
			.info They look like small white pointed bones near the huge bones on the ground around this area.
			.' You can find more around (1)|at 59.96,27.16
			.' You can find more around (2)|at 62.80,28.91
			.' You can find more around (3)|at 53.13,25.7
		step
			goto Dragonblight,55.02,23.43
			.talk Xink##26660
			..turnin Hard to Swallow##12049
		step
			goto Dragonblight,54.70,23.25
			.talk Zivlix##26661
			..turnin Something That Doesn't Melt##12047
		step
			goto Dragonblight,54.47,23.60
			.talk Narf##26647
			..accept Harp on This!##12052
		step
			goto Dragonblight,55.02,23.43
			.talk Xink##26660
			..accept Lumber Hack##12050
		step
			goto Dragonblight,45.44,7.36
			.use Xink's Shredder Control Device##36734
			.info Fly to this location with the dragon and use the item here.
			.' Control a Shredder |invehicle |q 12050
			.info It walks up to you.
		step
			goto Dragonblight,44.99,9.26
			.kill Mistress of the Coldwind##26890|q 12052/1
			.info Use the abilities on your action bar.
			.info She flies in the air around this area.
		step
			goto Dragonblight,45.76,11.52
			.collect 50 Coldwind Lumber##36733|q 12050/1
			.info Use the "Gather Lumber" ability on your action bar next to Coldwind Trees.
			.info They look like trees with small pieces of paper with X's on them on the ground around this area.
			.' You can find more around|at 50.18,18.62
		step
			goto Dragonblight,50.18,18.62
			.' Kill Coldwind enemies around this area
			.info You can find more to the southeast.
			.' Slay 15 Harpies|q 12052/2
			.' You can find more around|at 45.76,11.52
		step
			goto Dragonblight,
			.' Stop Controlling the Shredder |outvehicle |q 12052
			.info Click the red arrow on your action bar.
		step
			goto Dragonblight,54.47,23.60
			.talk Narf##26647
			..turnin Harp on This!##12052
		step
			goto Dragonblight,55.03,23.42
			.talk Xink##26660
			..turnin Lumber Hack##12050
		step
			goto Dragonblight,54.47,23.60
			.talk Narf##26647
			..accept Stiff Negotiations##12112
		step
			goto Dragonblight,59.40,18.18
			.talk Zort##26659
			..turnin Stiff Negotiations##12112
			..accept Slim Pickings##12075
		step
			goto Dragonblight,56.16,11.93
			.collect Sample of Rockflesh##36765|q 12075/1
			.info Inside the cave.
		step
			goto Dragonblight,59.40,18.18
			.talk Zort##26659
			..turnin Slim Pickings##12075
			..accept Messy Business##12076
		step
			goto Dragonblight,58.99,17.81
			.talk Ko'char the Unbreakable##26473
			..accept Stomping Grounds##12079
		step
			goto Dragonblight,60.67,18.58
			.from Ice Heart Jormungar Feeder##26358
			.info Don't kill them, wait for them to cast a poison on you.
			.use Zort's Scraper##36775
			.info Use it when you are affected by the poison.
			.info After you collect the spit, you can kill them.
			.get 2 Vial of Corrosive Spit##36768|q 12076/1
			.' You can find more around (1)|at 60.06,15.81
			.' You can find more around (2)|at 56.74,19.64
		step
			goto Dragonblight,59.40,18.18
			.talk Zort##26659
			..turnin Messy Business##12076
			..accept Apply This Twice A Day##12077
		step
			goto Dragonblight,58.99,17.81
			.talk Ko'char the Unbreakable##26473
			..turnin Apply This Twice A Day##12077
		step
			goto Dragonblight,59.40,18.18
			.talk Zort##26659
			..accept Worm Wrangler##12078
		step
			.use Zort's Protective Elixir##36770
			.info This will give you a buff that protects you from the spit attacks the centipede enemies use.
			.' Become Undigestible| havebuff INV_Potion_93 |q 12078
		step
			goto Dragonblight,57.47,12.28
			.use Sturdy Crates##36771
			.info Use them on Ice Heart Jormungar Spawns.
			.info They look like smaller blue centipedes.
			.info You can find them all throughout inside the cave.
			.collect 3 Captured Jormungar Spawn##36772|q 12078/1
			.info They appear on the ground after you use the Sturdy Crates on Ice Heart Jormungar Spawns.
		step
			goto Dragonblight,57.47,12.28
			.kill 8 Ice Heart Jormungar Feeder##26358|q 12079/1
			.info You can find them all throughout inside the cave.
		step
			goto Dragonblight,59.40,18.18
			.talk Zort##26659
			..turnin Worm Wrangler##12078
		step
			goto Dragonblight,58.99,17.81
			.talk Ko'char the Unbreakable##26473
			..turnin Stomping Grounds##12079
		step
			goto Dragonblight,89.5,19.1
			.from Overseer Deathgaze##27122|use Seeds of Nature's Wrath##37887
			.kill Weakened Overseer Deathgaze##27807|q 12459/3
		step
			goto Dragonblight,86.1,47
			.from Turgid the Vile##27808|use Seeds of Nature's Wrath##37887
			.kill Weakened Turgid the Vile##27809|q 12459/2
		step
			goto Dragonblight,59.84,54.65
			.talk Alexstrasza the Life-Binder##26917
			..turnin On Ruby Wings##12498
			..accept Return To Angrathar##12499
		step
			goto Dragonblight,59.60,54.47
			.talk Lord Itharius##27785
			..turnin That Which Creates Can Also Destroy##12459
		step
			goto Dragonblight,59.24,54.32
			.talk Lord Devrestrasz##27575
			..turnin Report to Lord Devrestrasz##12435
			..accept Defending Wyrmrest Temple##12372
		step
			goto Dragonblight,58.35,55.22
			.talk Wyrmrest Defender##27629
			.' Tell him "We need to get into the fight. Are you ready?"
			.' Fly with the Wyrmrest Defender |invehicle |q 12372
		step
			goto Dragonblight,55.47,66.14
			.' Destabilize the Azure Dragonshrine|q 12372/3
			.info Use the "Destabilize Azure Dragonshrine" ability on your action bar.
		step
			goto Dragonblight,56.96,65.31
			.kill 3 Azure Dragon##27608|q 12372/1
			.info Use the abilities on your action bar. |notinsticky
			.info They look like larger blue dragons flying all around this area.
			.' You can find more all around Wyrmrest Temple around|at 58.78,58.38
		step
			goto Dragonblight,56.96,65.31
			.kill 5 Azure Drake##27682|q 12372/2
			.info Use the abilities on your action bar.
			.info They look like smaller blue dragons flying all around this area
			.' You can find more all around Wyrmrest Temple around|at 58.78,58.38
		step
			goto Dragonblight,59.24,54.32
			.talk Lord Devrestrasz##27575
			..turnin Defending Wyrmrest Temple##12372
		step
			goto Dragonblight,37.81,23.41
			.talk Highlord Bolvar Fordragon##27872
			..turnin Return To Angrathar##12499
		step
			goto Dragonblight,38.42,19.25
			.talk Alexstrasza the Life-Binder##31333
			..accept Reborn From The Ashes##13347
		step
			goto Dragonblight,38,19.6
			.collect Fordragon's Shield##44474|q 13347/1
			.info It looks like a small metal shield on the ground.
		step
			goto Stormwind City,79.99,38.47
			.talk King Varian Wrynn##29611
			..turnin Reborn From The Ashes##13347
		step
			.' Congratulations! +115 quests for achievement "Might of Dragonblight".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[74] Grizzly Hills",[[
author danaton
description This guide contain quest-chain (89) for Grizzly Hills location.
startlevel 74
		step
			goto Dragonblight,77.1,50.1
			.talk Gryphon Commander Urik##27317
			..accept The Hills Have Us##12511
		step
			goto Grizzly Hills,31.80,59.55
			.' Interact with gameobject: Amberseed
			.info Inside the building.
			..accept Mmm... Amberseeds!##12225
		step
			goto Grizzly Hills,32.10,59.96
			.talk Master Woodsman Anderhol##27277
			..turnin Mmm... Amberseeds!##12225
			..accept Just Passing Through##12226
			..accept Replenishing the Storehouse##12212
			..accept Them or Us!##12215
		step
			goto Grizzly Hills,31.84,60.17
			.talk Lieutenant Dumont##26875
			..turnin The Hills Have Us##12511
			..accept Local Support##12292
		step
			goto Grizzly Hills,29.49,52.64
			.collect 5 Blackroot Stalk##37246|q 12226/1
			.info They look like tall grass plants on the ground around this area.
			.' You can find more around|at 29.18,57.09
		step
			goto Grizzly Hills,15.87,65.27
			.collect Cedar Chest##37572|q 12292/1
			.info Inside the building.
			.info Avoid Conquest Hold as you travel here.
		step
			goto Grizzly Hills,20.72,55.17
			.from Tallhorn Stag##26363+
			.info They look like brown deer bucks.
			.get 8 Succulent Venison##37185|q 12212/1
			.info These may have a low drop rate.
			.info Graymist Hunters will kill them as well.
			.' You can find more around (1)|at 24.67,58.08
			.' You can find more around (2)|at 27.18,55.30
		step
			goto Grizzly Hills,25.38,55.60
			.kill 6 Graymist Hunter##26592|q 12215/1
			.info They look like gray wolves.
			.' You can find more around (1)|at 24.15,49.33
		step
			goto Grizzly Hills,32.10,59.96
			.talk Master Woodsman Anderhol##27277
			..turnin Just Passing Through##12226
			..accept Doing Your Duty##12227
			..turnin Replenishing the Storehouse##12212
			..accept Take Their Rear!##12216
			..turnin Them or Us!##12215
			..accept Eagle Eyes##12217
		step
			goto Grizzly Hills,31.83,60.17
			.talk Lieutenant Dumont##26875
			..turnin Local Support##12292
			..accept Close the Deal##12293
			..accept Troll Season!##12210
		step
			goto Grizzly Hills,32.22,58.92
			.' Interact with gameobject: Amberpine Outhouse
			.' Choose "Use the outhouse."
			.' Watch the dialogue.
			.collect Partially Processed Amberseeds##37250|q 12227/1
		step
			goto Grizzly Hills,34.45,58.30
			.kill 5 Imperial Eagle##26369|q 12217/1
			.info They look like bald eagles.
			.info They fly around and land on rocks and logs on the ground around this area.
			.' You can find more around (1)|at 35.28,60.25
			.' You can find more around (2)|at 36.93,60.46
			.' You can find more around (3)|at 38.37,53.05
			.' You can find more around (4)|at 32.15,47.65
		step
			goto Grizzly Hills,34.77,55.61
			.talk Ivan##27469
			..turnin Close the Deal##12293
			..accept A Tentative Pact##12294
		step
			goto Grizzly Hills,29.57,51.92
			.from Grizzly Bear##27131
			.info All along the river.
			.get 8 Grizzly Flank##37200|q 12216/1
			.' You can find more around (1)|at 30.72,46.48
			.' You can find more around (2)|at 29.36,56.13
		step
			goto Grizzly Hills,29.91,59.78
			.talk Scout Captain Carter##27783
			..accept Blackriver Skirmish##12444
		step
			goto Grizzly Hills,28.35,62.42
			.' Slay 10 Horde in Blackriver|q 12444/1
			.info You can kill NPCs or players.
		step
			goto Grizzly Hills,29.91,59.78
			.talk Scout Captain Carter##27783
			..turnin Blackriver Skirmish##12444
		step
			goto Grizzly Hills,32.10,59.96
			.talk Master Woodsman Anderhol##27277
			..turnin Doing Your Duty##12227
			..turnin Take Their Rear!##12216
			..turnin Eagle Eyes##12217
		step
			goto Grizzly Hills,31.83,60.17
			.talk Lieutenant Dumont##26875
			..turnin A Tentative Pact##12294
			..accept An Exercise in Diplomacy##12295
		step
			goto Grizzly Hills,32.42,59.94
			.talk Woodsman Drake##27391
			..accept Secrets of the Flamebinders##12222
			..accept Thinning the Ranks##12223
		step
			goto Grizzly Hills,30.35,75.75
			.from Dragonflayer Flamebinder##27259+
			.info These look like women.
			.info They can also be inside the buildings around this area.
			.get 3 Flame-Imbued Talisman##37229|q 12222/1
			.' You can find more around|at 28.06,74.09
		step
			goto Grizzly Hills,30.35,75.75
			.kill 12 Dragonflayer Huscarl##27260|q 12223/1
			.info They can also be inside the buildings around this area.
			.' You can find more around|at 28.06,74.09
		step
			goto Grizzly Hills,32.42,59.94
			.talk Woodsman Drake##27391
			..turnin Thinning the Ranks##12223 
			..turnin Secrets of the Flamebinders##12222
			..accept The Thane of Voldrune##12255
		step
			goto Grizzly Hills,23.02,80.16
			.talk Barblefink##27495
			..accept Seeking Solvent##12443
		step
			goto Grizzly Hills,22.12,81.25
			.talk Lieutenant Stuart##27562
			..accept Keep Them at Bay!##12316
		step
			goto Grizzly Hills,21.99,80.72
			.talk Sergeant Downey##27602
			..accept Smoke 'Em Out##12323
		step
			goto Grizzly Hills,17.87,79.79
			.use The Smoke Bomb##37621
			.info Use it on Venture Co. Stragglers.
			.info They look like Horde enemies inside the buildings around this area.
			.info They are not in the ships.
			.' Smoke Out 20 Venture Company Stragglers|q 12323/1
			.' You can find more around (1)|at 16.11,76.83
			.' You can find more around (2)|at 14.47,76.78
		step
			goto Grizzly Hills,13.75,78.13
			.kill 10 Horde in Venture Bay|q 12316/1
			.info You can kill NPCs or players.
		step
			goto Grizzly Hills,16.44,80.32
			.' Click Element 115
			.info It looks like a red canister inside the ship, on the main deck level.
			.info HURRY after picking this up, it only lasts for 4 minutes.
			.info In the next step, get back to the questgivers as fast as you can.
			.collect Element 115##37664|q 12443/1
		step
			goto Grizzly Hills,21.99,80.72
			.talk Sergeant Downey##27602
			..turnin Smoke 'Em Out##12323
		step
			goto Grizzly Hills,22.12,81.25
			.talk Lieutenant Stuart##27562
			..turnin Keep Them at Bay!##12316
		step
			goto Grizzly Hills,23.02,80.16
			.talk Barblefink##27495
			..turnin Seeking Solvent##12443
		step
			goto Grizzly Hills,26.6,77.8
			.talk Flamebringer##27292
			.' Control the flight on Flamebringer |invehicle |q 12255
		step
			goto Grizzly Hills,27.06,72.86
			.kill Thane Torvald Eriksson##27377|q 12255/1
			.info Use the abilities on your action bar.
			.info Move out of Volley if Wing buffet is on cooldown.
			.info At the top of the tower.
		step
			goto Grizzly Hills,16.19,47.60
			.talk Samir##26424
			..turnin Troll Season!##12210
			..accept Filling the Cages##11984
		step
			goto Grizzly Hills,16.37,48.26
			.talk Budd##26422
			.' Tell him "Come on, Budd. Time to play with the ice trolls!"
			.' Get Budd's Attention |havebuff INV_Misc_Head_Troll_01 |q 11984
		step
			goto Grizzly Hills,13.79,58.47
			.use Bounty Hunter's Cage##35736
			.info He will aggro enemies on the way to capture a troll.
			.info Be sure to protect him or you will have to go back and get him from the hut.
			.info Use it on a troll that Budd stuns.
			.info To stun a troll, use Budd's "Tag Troll" ability on your pet bar near any Drakkari troll around this area.
			.info He will sneak up and stun a nearby troll.
			.' Capture a Live Ice Troll|q 11984/1
		step
			goto Grizzly Hills,16.19,47.60
			.talk Samir##26424
			..turnin Filling the Cages##11984
		step
			goto Grizzly Hills,16.42,47.81
			.talk Drakuru##26423
			..accept Truce?##11989
		step
			goto Grizzly Hills,16.54,47.81
			.collect Dull Carving Knife##38083|q 11989
			.info Stuck into the side of the tree stump.
		step
			goto Grizzly Hills,16.43,47.81
			.use Dull Carving Knife##38083
			.' Take the Blood Oath |havebuff Spell_Shadow_LifeDrain |q 11989
		step
			goto Grizzly Hills,16.42,47.81
			.talk Drakuru##26423
			.' Choose "Shake Drakuru's outstretched hand."
			.' Form a Blood Pact With Drakuru|q 11989/1
		step
			goto Grizzly Hills,16.42,47.81
			.talk Drakuru##26423
			..turnin Truce?##11989
			..accept Vial of Visions##11990
		step
			goto Grizzly Hills,15.96,47.79
			.talk Ameenah##26474
			.buy Imbued Vial##18256|q 11990/1
		step
			goto Grizzly Hills,15.01,44.39
			.collect 3 Haze Leaf##37085|q 11990/2
			.info They look like small bushy plants with purple flowers on them on the ground around this area.
			.' You can find more around (1)|at 16.63,43.34
			.' You can find more around (2)|at 13.39,41.84
		step
			goto Grizzly Hills,15.23,40.35
			.collect Waterweed Frond##35795|q 11990/3
			.info They look like tall bushy green plants underwater around this area.
		step
			goto Grizzly Hills,16.42,47.81
			.talk Drakuru##26423
			..turnin Vial of Visions##11990
			..accept Subject to Interpretation##11991
		step
			goto Grizzly Hills,15.73,46.69
			.talk Prigmon##26519
			..accept Scourgekabob##12484
		step
			goto Grizzly Hills,15.70,46.86
			.collect Scourged Troll Mummy##38149|q 12484
		step
			goto Grizzly Hills,16.78,48.22
			.use Scourged Troll Mummy##38149
			.info Use it next to the burning pile of mummies.
			.' Burn a Mummified Carcass|q 12484/1
		step
			goto Grizzly Hills,16.67,48.29
			.talk Mack Fearsen##26604
			..turnin Scourgekabob##12484
		step
			goto Grizzly Hills,16.67,48.29
			.' Watch the dialogue.
			.talk Mack Fearsen##26604
			..accept Seared Scourge##12029
		step
			goto Grizzly Hills,15.73,46.69
			.talk Prigmon##26519
			..accept Shimmercap Stew##12483
		step
			goto Grizzly Hills,11.42,54.39
			.collect 5 Shimmering Snowcap##35782|q 12483/2
			.info They look like patches of blue glowing mushrooms on the ground around this area.
			.' You can find more around (1)|at 11.05,57.10
			.' You can find more around (2)|at 11.09,59.55
			.' You can find more around (3)|at 10.66,62.76
		step
			goto Grizzly Hills,12.73,60.84
			.from Drakkari Warrior##26425, Drakkari Shaman##26447
			.info They look like trolls.
			.info You can find them all around in the Ruins of Drak'Zin.
			.collect 5 Frozen Mojo##35799|q 11991
		step
			goto Grizzly Hills,13.27,60.86
			.use Drakuru's Elixir##35797
			.info Use it next to the brazier at the top of the stairs.
			.talk Image of Drakuru##26500
			..turnin Subject to Interpretation##11991
			..accept Sacrifices Must be Made##12007
		step
			goto Grizzly Hills,13.51,59.61
			.from Ice Serpent##26446
			.info They look like thin blue dragons.
			.info You can find them all around in the Ruins of Drak'Zin.
			.get 5 Ice Serpent Eye##35798|q 12483/1
		step
			goto Grizzly Hills,14.51,38.01
			.from Warlord Zim'bo##26544
			.collect Zim'bo's Mojo##35836|q 12007
		step
			goto Grizzly Hills,17.93,36.48
			.' Interact with gameobject: Seer of Zeb'Halak
			.info At the top of the temple.
			.' Choose "Remove the Eye of the Prophets from the idol's face."
			.collect Eye of the Prophets##35806|q 12007/1
		step
			goto Grizzly Hills,17.46,36.37
			.use Drakuru's Elixir##35797
			.info Use it next to the brazier at the top of the temple.
			.talk Image of Drakuru##26543
			..turnin Sacrifices Must be Made##12007
			..accept Heart of the Ancients##12042
		step
			goto Grizzly Hills,15.61,36.25
			.collect 5 Sweetroot##37087|q 12483/3
			.info They look like green spikey plants on the ground around this area.
			.info You can find them all around the Zeb'Halak area.
		step
			goto Grizzly Hills,16.20,29.32
			.use Mack's Dark Grog##35908
			.info Throw it at the trolls running around on the ground nearby.
			.info Don't let the trolls get too close to you, they'll attack you.
			.' Burn 20 Scourge Trolls|q 12029/1
		step
			goto Grizzly Hills,15.74,46.69
			.talk Prigmon##26519
			..turnin Shimmercap Stew##12483
			..accept Say Hello to My Little Friend##12190
		step
			goto Grizzly Hills,16.67,48.29
			.talk Mack Fearsen##26604
			..turnin Seared Scourge##12029
		step
			goto Grizzly Hills,26.41,35.70
			.talk Envoy Ducal##26821
			..turnin An Exercise in Diplomacy##12295
		step
			goto Grizzly Hills,26.48,35.77
			.talk Sergei##27486
			..accept Northern Hospitality##12299
		step
			goto Grizzly Hills,25.61,33.30
			.talk Katja##27545
			..accept Wolfsbane Root##12307
		step
			goto Grizzly Hills,24.28,32.23
			.kill 8 Conquest Hold Marauder##27424|q 12299/1
			.' You can find more around|at 24.09,36.38
		step
			goto Grizzly Hills,26.48,35.77
			.talk Sergei##27486
			..turnin Northern Hospitality##12299
		step
			goto Grizzly Hills,26.30,38.48
			.' Uproot 8 Wolfsbane Roots|q 12307/1
			.info They look like thorny vine plants on the ground around this area.
			.' You can find more around|at 29.26,36.23
		step
			goto Grizzly Hills,25.61,33.30
			.talk Katja##27545
			..turnin Wolfsbane Root##12307
		step
			goto Grizzly Hills,26.48,35.77
			.talk Sergei##27486
			..accept Test of Mettle##12300
		step
			goto Grizzly Hills,21.91,29.80
			.kill Sergeant Bonesnap##27493|n
			.' Perform the Test of Mettle|q 12300/1
		step
			goto Grizzly Hills,21.93,29.93
			.talk Captured Trapper##27497
			..turnin Test of Mettle##12300
			..accept Words of Warning##12302
		step
			goto Grizzly Hills,26.47,31.80
			.talk Caged Prisoner##27499
			..turnin Words of Warning##12302
			..accept Escape from Silverbrook##12308
		step
			goto Grizzly Hills,26.25,31.11
			.' Watch the dialogue.
			.info Follow the Freed Alliance Scout as he walks.
			.' Interact with NPC: Ducal's Horse
			.' Ride with Ducal |invehicle |q 12308
		step
			goto Grizzly Hills,32.38,59.14
			.' Watch the dialogue.
			.info Use the abilities on your action bar to make the horse run faster and fight enemies as you ride with Ducal.
			.info You will ride back to Amberpine Lodge.
			.' Escape from Silverbrook|q 12308/1 |noway
		step
			goto Grizzly Hills,32.42,59.94
			.talk Woodsman Drake##27391
			..turnin The Thane of Voldrune##12255
		step
			goto Grizzly Hills,31.83,60.17
			.talk Lieutenant Dumont##26875
			..turnin Escape from Silverbrook##12308
			..accept A Swift Response##12310
		step
			goto Grizzly Hills,36.24,67.84
			.kill Vladek##27547|q 12310/2
			.info Inside the building.
		step
			goto Grizzly Hills,36.12,68.64
			.from Silverbrook Hunter##27546
			.collect Mikhail's Journal##36940|q 12105 |future
		step
			.use Mikhail's Journal##36940
			..accept Descent into Darkness##12105
		step
			goto Grizzly Hills,36.12,68.64
			.kill 7 Silverbrook Hunter##27546|q 12310/1
			.info They look like humans.
		step
			goto Grizzly Hills,31.83,60.17
			.talk Lieutenant Dumont##26875
			..turnin A Swift Response##12310
			..turnin Descent into Darkness##12105
			..accept Report to Gryan Stoutmantle... Again##12109
		step
			goto Grizzly Hills,31.16,59.47
			.talk Hierophant Thayreen##27295
			..accept The Failed World Tree##12219
			..accept A Dark Influence##12220
		step
			goto Grizzly Hills,30.44,43.80
			.use Geomancer's Orb##37173
			.info Inside the cave.
			.' Use the Orb Beneath Vordrassil's Tears|q 12220/3
		step
			goto Grizzly Hills,32.23,45.89
			.use Geomancer's Orb##37173
			.info Inside the cave.
			.' Use the Orb Beneath Vordrassil's Limb|q 12220/2
		step
			goto Grizzly Hills,39.82,50.50
			.from Entropic Ooze##26366
			.get 6 Slime Sample##37199|q 12219/1
		step
			goto Grizzly Hills,41.15,54.64
			.use Geomancer's Orb##37173
			.info Inside the cave.
			.' Use the Orb Beneath Vordrassil's Heart|q 12220/1
		step
			goto Grizzly Hills,31.16,59.47
			.talk Hierophant Thayreen##27295
			..turnin The Failed World Tree##12219
			..turnin A Dark Influence##12220
			..accept A Possible Link##12246
			..accept Children of Ursoc##12247
		step
			goto Grizzly Hills,48.07,58.86
			.talk Orsonn##27274
			.' Tell him "You're free to go Orsonn, but first tell me what's wrong with the furbolg."
			.' Listen to Orsonn's Story|q 12247/1
		step
			goto Grizzly Hills,66.89,62.40
			.talk Kodian##27275
			.' Ask him "Who was this stranger?"
			.' Listen to Kodian's Story|q 12247/2
		step
			goto Grizzly Hills,65.5,57.57
			.from Frostpaw Warrior##26357, Frostpaw Shaman##26428, Frostpaw Trapper##26434
			.info They look like furbolgs.
			.get 8 Crazed Furbolg Blood##37251|q 12246/1
			.' You can find more around|at 51.75,47.4
		step
			goto Grizzly Hills,31.16,59.47
			.talk Hierophant Thayreen##27295
			..turnin A Possible Link##12246
			..turnin Children of Ursoc##12247
			..accept Vordrassil's Sapling##12248
			..accept Vordrassil's Seeds##12250
		step
			goto Grizzly Hills,50.73,42.66
			.use Verdant Torch##37306
			.info Inside the huge tree, on the bottom floor.
			.collect Vordrassil's Ashes##37303|q 12248/1
		step
			goto Grizzly Hills,50.73,42.70
			.collect 8 Vordrassil's Seed##37302|q 12250/1
			.info They look like small brown pine cones on the ground.
			.info You can find them all around the Grizzlemaw area.
			.info They can be inside or outside the huge tree.
		step
			goto Grizzly Hills,40.47,42.65
			.talk Rheanna##27484
			..accept Life or Death##12296
		step
			goto Grizzly Hills,39.64,43.37
			.talk Pipthwack##27416
			..accept Pieces Parts##12268
		step
			goto Grizzly Hills,39.54,43.57
			.talk Synipus##27371
			..accept Shredder Repair##12244
		step
			goto Grizzly Hills,39.37,43.87
			.talk Sergeant Hartsman##27468
			..accept Kick 'Em While They're Down##12289
		step
			goto Grizzly Hills,34.12,40.46
			.' Interact with NPC: Broken-down Shredder
			.info They look like humanoid metal shredding machines around this area.
			.info You will take control of the shredder machines.
			.info You need to return the machine to your allies.
			.info At the return location, use the "Shredder Delivery" ability on your action bar to return the shredders.
			.' Deliver 3 Shredders|q 12244/1
			.' Return the Shredders|at 39.53,43.40
		step
			goto Grizzly Hills,34.12,40.46
			.use Renewing Bandage##37576
			.info Use it on Wounded Westfall Infantry.
			.info They look like Alliance soldiers kneeling on the ground around this area.
			.info You can find them all around the Blue Sky Logging Grounds area.
			.' Heal 10 Westfall Infantry|q 12296/1
		step
			goto Grizzly Hills,34.12,40.46
			.collect 4 Grooved Cog##37412|q 12268/1
			.info They look like metal cog wheels sticking vertically out of the ground around this area.
			.collect 3 Notched Sprocket##37413|q 12268/2
			.info They look like metal cog wheels laying flat on the ground around this area.
			.collect 2 High Tension Spring##37416|q 12268/3
			.info They look like metal springs on the ground around this area.
		step
			goto Grizzly Hills,34.12,40.46
			.from Wounded Skirmisher##27463
			.info You can kill NPCs or players.
			.' Eliminate 15 Horde Units|q 12289/1
			.' You can find more around|at 33.45,36.07
		step
			goto Grizzly Hills,39.37,43.87
			.talk Sergeant Hartsman##27468
			..turnin Kick 'Em While They're Down##12289
		step
			goto Grizzly Hills,39.54,43.57
			.talk Synipus##27371
			..turnin Shredder Repair##12244
		step
			goto Grizzly Hills,39.64,43.37
			.talk Pipthwack##27416
			..turnin Pieces Parts##12268
		step
			goto Grizzly Hills,40.47,42.65
			.talk Rheanna##27484
			..turnin Life or Death##12296
		step
			goto Grizzly Hills,36.95,32.35
			.' Interact with gameobject: Heart of the Ancients
			.info Inside the building.
			..turnin Heart of the Ancients##12042
			..accept My Heart is in Your Hands##12802
		step
			goto Grizzly Hills,45.13,28.63
			.from Drakkari Defender##26704, Drakkari Witch Doctor##27555
			.info They look like trolls.
			.info You can find them all around the Drak'atal Passage.
			.collect 5 Desperate Mojo##36743|q 12802
		step
			goto Grizzly Hills,45.03,28.41
			.use Drakuru's Elixir##35797
			.info Use it next to the brazier at this location.
			.talk Image of Drakuru##26701
			..turnin My Heart is in Your Hands##12802
			..accept Voices From the Dust##12068
		step
			goto Grizzly Hills,59.42,26.00
			.talk Captain Gryan Stoutmantle##26212
			..turnin Report to Gryan Stoutmantle... Again##12109
			..accept Hollowstone Mine##12158
			..accept Softening the Blow##11998
		step
			goto Grizzly Hills,55.13,23.38
			.talk Petrov##26932
			..turnin Hollowstone Mine##12158
			..accept Souls at Unrest##12159
		step
			goto Grizzly Hills,53.98,22.68
			.from Undead Miner##26891
			.info Inside the mine.
			.use Miner's Lantern##37932
			.info Use it on their corpses.
			.' Put 8 Miners at Rest|q 12159/1
		step
			goto Grizzly Hills,55.13,23.38
			.talk Petrov##26932
			..turnin Souls at Unrest##12159
			..accept A Name from the Past##12160
		step
			goto Grizzly Hills,59.42,26.00
			.talk Captain Gryan Stoutmantle##26212
			..turnin A Name from the Past##12160
		step
			goto Grizzly Hills,59.17,26.18
			.talk Private Arun##27582
			..accept Ruuna the Blind##12161
		step
			goto Grizzly Hills,44.04,47.94
			.talk Ruuna the Blind##27581
			..turnin Ruuna the Blind##12161
			..accept Ruuna's Request##12328
		step
			goto Grizzly Hills,46.01,41.06
			.from Fern Feeder Moth##27421
			.info They look like yellow and blue flying insects.
			.get 4 Gossamer Dust##37662|q 12328/1
			.' You can find more around (1)|at 48.82,35.78
			.' You can find more around (2)|at 51.31,29.72
			.' You can find more around (3)|at 55.54,33.24
		step
			goto Grizzly Hills,44.04,47.94
			.talk Ruuna the Blind##27581
			..turnin Ruuna's Request##12328
			..accept Out of Body Experience##12327
		step
			goto Grizzly Hills,44.09,47.89
			.use Gossamer Potion##37661
			.' Begin the Out of Body Experience |havebuff Spell_Holy_BlessedLife |q 12327
		step
			.' Watch the dialogue.
			.' Experience the Vision from the Past|q 12327/1
		step
			.' Return to Ruuna the Blind |nobuff Spell_Holy_BlessedLife |q 12327
			.info You will return when the "Out of Body Experience" buff expires.
			.info You can also right-click the buff near your minimap to remove the buff and return early.
		step
			goto Grizzly Hills,44.04,47.94
			.talk Ruuna the Blind##27581
			..turnin Out of Body Experience##12327
			..accept Fate and Coincidence##12329
		step
			goto Grizzly Hills,57.52,41.26
			.talk Sasha##26935
			..turnin Fate and Coincidence##12329
			..accept Sasha's Hunt##12134
			..accept Anatoly Will Talk##12330
		step
			goto Grizzly Hills,62.57,41.77
			.kill 12 Solstice Hunter##26389|q 12134/1
			.info They look like humans.
			.info You can find them all around Solstice Village.
		step
			goto Grizzly Hills,62.19,42.39
			.use Tranquilizer Dart##37665
			.info Use it on Tatjana.
			.info Make sure to target Tatjana, and not the horse.
			.' Interact with NPC: Tatjana's Horse
			.' Ride Tatjana's Horse|invehicle
		step
			goto Grizzly Hills,57.75,41.69
			.' Watch the dialogue.
			.info You will eventually run to this location.
			.' Deliver Tatjana|q 12330/1
		step
			goto Grizzly Hills,57.52,41.26
			.talk Sasha##26935
			..turnin Sasha's Hunt##12134
			..turnin Anatoly Will Talk##12330
			..accept A Sister's Pledge##12411
		step
			goto Grizzly Hills,64.82,43.42
			.talk Anya##27646
			..turnin A Sister's Pledge##12411
		step
			goto Grizzly Hills,69.10,40.10
			.talk Hugh Glass##26484
			..accept A Bear of an Appetite##12279
		step
			goto Grizzly Hills,69.10,40.10
			.talk Hugh Glass##26484
			.buy Howlin' Good Moonshine##35796|q 11998/1
		step
			goto Grizzly Hills,59.80,27.57
			.talk Brugar Stoneshear##26226
			..turnin Softening the Blow##11998
			..accept Brothers in Battle##12002
		step
			goto Grizzly Hills,63.68,23.14
			.talk Fallen Earthen Warrior##26335
			..accept Find Kurun!##11981
		step
			goto Grizzly Hills,64.29,19.77
			.' Interact with gameobject: Battered Journal
			.info It looks like an open book on the ground.
			..accept The Damaged Journal##11986
		step
			goto Grizzly Hills,63.90,22.28
			.' Interact with gameobject: Missing Journal Page
			.info They look like yellow torn pieces of paper on the ground around this area.
			.info You can also find them inside the buildings.
			.collect 8 Missing Journal Page##35737|q 11986
		step
			.use Incomplete Journal##35739
			.collect Brann Bronzebeard's Journal##35738|q 11986/1
		step
			goto Grizzly Hills,63.90,22.28
			.kill 10 Runic Battle Golem##26284|q 12002/1
		step
			goto Grizzly Hills,59.76,27.44
			.talk Torthen Deepdig##26361
			..turnin The Damaged Journal##11986
			..accept The Runic Keystone##11988
		step
			goto Grizzly Hills,59.80,27.56
			.talk Brugar Stoneshear##26226
			..turnin Brothers in Battle##12002
			..accept Uncovering the Tunnels##12003
		step
			goto Grizzly Hills,63.45,28.22
			.' Investigate the South Building|q 12003/3
			.info Inside the building.
		step
			goto Grizzly Hills,66.58,24.34
			.' Investigate the East Building|q 12003/2
			.info Inside the building.
		step
			goto Grizzly Hills,62.69,20.83
			.' Investigate the North Building|q 12003/1
			.info Inside the building.
		step
			goto Grizzly Hills,62.99,21.61
			.' Kill Rune enemies around this area
			.info Inside the building.
			.info They look like dwarves wearing dark metal armor.
			.info Only enemies that look like dwarves will drop the quest item.
			.info If you go into the canyon, try to stay close to the exit, if possible.
			.info You will be leaving the Thor Modan area in the next step.
			.collect 5 Runic Keystone Fragment##35747|q 11988/1
			.' Inside the building (1)|at 63.66,27.22
			.' Inside the building (2)|at 66.03,23.72
			.' Throughout the canyon that starts|at 65.07,19.62
		step
			goto Grizzly Hills,59.76,27.44
			.talk Torthen Deepdig##26361
			..turnin The Runic Keystone##11988
			..accept The Runic Prophecies##11993
		step
			goto Grizzly Hills,59.80,27.56
			.talk Brugar Stoneshear##26226
			..turnin Uncovering the Tunnels##12003
			..accept The Fate of Orlond##12010
		step
			goto Grizzly Hills,65.77,17.76
			.talk Kurun##26260
			..turnin Find Kurun!##11981
			..accept Raining Down Destruction##11982
		step
			goto Grizzly Hills,65.70,13.73
			.collect 5 Boulder##35734|q 11982
			.info They look like big grey rocks on the ground around this area.
			.info Not all of the grey rocks will be clickable.
			.' You can find more around (1)|at 67.39,12.22
			.' You can find more around (2)|at 69.80,10.96
			.' You can find more around (3)|at 71.72,11.61
		step
			goto Grizzly Hills,67.67,14.95
			.use Boulder##35734
			.info Use them on Iron Rune-Shapers in the canyon below.
			.info They look like dwarves wearing dark metal armor.
			.info You can use the boulders on the same enemy repeatedly.
			.info Stay on the north side of the canyon when throwing the boulders.
			.info You will have to turn in the quest on the north side of the canyon.
			.' Disrupt 5 Iron Dwarf Operations|q 11982/1
		step
			goto Grizzly Hills,65.77,17.76
			.talk Kurun##26260
			..turnin Raining Down Destruction##11982
			..accept Rallying the Troops##12070
		step
			goto Grizzly Hills,67.63,10.64
			.use Shard of the Earth##36764
			.info Use it on Grizzly Hills Giants  around this area.
			.info They must be fighting an enemy for the item to work.
			.' Rally 5 Grizzly Hills Giants|q 12070/1
			.' You can find more around|at 70.08,6.40
		step
			goto Grizzly Hills,67.63,10.64
			.kill 5 Iron Rune Avenger##26786|q 12070/2
			.info They appear after you rally the Grizzly Hills Giants around this area.
			.' You can find more around|at 70.08,6.40
		step
			goto Grizzly Hills,65.77,17.76
			.talk Kurun##26260
			..turnin Rallying the Troops##12070
			..accept Into the Breach##11985
		step
			goto Grizzly Hills,67.50,15.28
			.' Jump down carefully into the water below|at 67.44,16.10
			.talk Surveyor Orlond##26514
			..turnin The Fate of Orlond##12010
			..accept Steady as a Rock?##12014
		step
			goto Grizzly Hills,68.52,16.21
			.'  Interact with gameobject: Third Rune Plate
			.info On the metal door inside the canyon.
			.' Decipher the Third Prophecy|q 11993/3
		step
			goto Grizzly Hills,68.99,14.42
			.'  Interact with gameobject: First Rune Plate
			.info On the metal door inside the canyon.
			.' Decipher the First Prophecy|q 11993/1
		step
			goto Grizzly Hills,70.18,14.68
			.'  Interact with gameobject: Second Rune Plate
			.info On the metal door inside the canyon.
			.' Decipher the Second Prophecy|q 11993/2
		step
			goto Grizzly Hills,69.93,14.21
			.from Subterranean Thresher##26522
			.info They look like dinosaurs swimming in the water inside the canyon.
			.get Portable Seismograph##35837|q 12014/2
		step
			goto Grizzly Hills,70.60,13.41
			.use Portable Seismograph##35837
			.info Inside the canyon.
			.'  Interact with gameobject: Portable Seismograph
			.info It appears on the ground.
			.collect Thor Modan Stability Profile##35819|q 12014/1
		step
			goto Grizzly Hills,70.21,12.93
			.kill Iron Thane Argrum##26348|q 11985/1
			.info Inside the canyon.
		step
			goto Grizzly Hills,65.77,17.76
			.talk Kurun##26260
			..turnin Into the Breach##11985
			..accept Gavrock##12081
		step
			goto Grizzly Hills,59.76,27.44
			.talk Torthen Deepdig##26361
			..turnin The Runic Prophecies##11993
		step
			goto Grizzly Hills,59.80,27.56
			.talk Brugar Stoneshear##26226
			..turnin Steady as a Rock?##12014
			..accept Check Up on Raegar##12128
		step
			goto Grizzly Hills,73.76,34.02
			.talk Harkor##26884
			..turnin Say Hello to My Little Friend##12190
			..accept Nice to Meat You##12113
			..accept Therapy##12114
		step
			goto Grizzly Hills,73.91,34.12
			.talk Kraz##26886
			..accept It Takes Guts....##12116
		step
			goto Grizzly Hills,79.76,33.61
			.talk Gavrock##26420
			..turnin Gavrock##12081
			..accept Runes of Compulsion##12093
		step
			goto Grizzly Hills,77.70,37.37
			.use Fishing Net##37542
			.info Use it near Schools of Northern Salmon around this area.
			.info They look like groups of small fish in the water around this area.
			.collect 6 Northern Salmon##37501|q 12279/1
			.' You can find more around|at 80.56,42.78
		step
			goto Grizzly Hills,78.79,43.70
			.kill Overseer Brunon##26923|q 12093/4
			.info Kill the 4 enemies channeling on the object to release Overseer Brunon.
		step
			goto Grizzly Hills,75.02,37.16
			.kill Overseer Lochli##26922|q 12093/3
			.info Kill the 4 enemies channeling on the object to release Overseer Lochli.
		step
			goto Grizzly Hills,71.85,34.27
			.kill Overseer Korgan##26921|q 12093/2
			.info Kill the 4 enemies channeling on the object to release Overseer Korgan.
		step
			goto Grizzly Hills,67.53,29.46
			.kill Overseer Durval##26920|q 12093/1
			.info Kill the 4 enemies channeling on the object to release Overseer Durval.
		step
			goto Grizzly Hills,79.76,33.61
			.talk Gavrock##26420
			..turnin Runes of Compulsion##12093
			..accept Latent Power##12094
		step
			goto Grizzly Hills,71.29,39.66
			.use Shard of Gavrock##36787
			.' Draw Power from the First Ancient Stone|q 12094/1
		step
			goto Grizzly Hills,74.11,44.15
			.use Shard of Gavrock##36787
			.' Draw Power from the Third Ancient Stone|q 12094/3
		step
			goto Grizzly Hills,78.85,39.89
			.use Shard of Gavrock##36787
			.' Draw Power from the Second Ancient Stone|q 12094/2
		step
			goto Grizzly Hills,79.76,33.61
			.talk Gavrock##26420
			..turnin Latent Power##12094
			..accept Free at Last##12099
		step
			goto Grizzly Hills,74.58,42.25
			.use Gavrock's Runebreaker##36796
			.info Use it on Runed Giants.
			.info They look like large walking trees around this area.
			.info If they become aggressive, try using it again after they are at half health.
			.info You may have to use it on the same enemy multiple times.
			.' Free 4 Runed Giants|q 12099/1
			.' You can find more around|at 68.72,34.23
		step
			goto Grizzly Hills,69.10,40.10
			.talk Hugh Glass##26484
			..turnin A Bear of an Appetite##12279
		step
			goto Grizzly Hills,79.76,33.61
			.talk Gavrock##26420
			..turnin Free at Last##12099
		step
			goto Grizzly Hills,75.19,39.54
			.from Duskhowl Prowler##27408
			.get 10 Fibrous Worg Meat##36819|q 12113/1
			.from Longhoof Grazer##26418
			.get 10 Shovelhorn Steak##36875|q 12113/2
			.' You can find more around (1)|at 72.18,35.36
			.' You can find more around (2)|at 68.33,30.37
		step
			goto Grizzly Hills,71.25,20.20
			.collect 5 Drakkari Canopic Jar##36825|q 12116/1
			.info They look like grey vases on the ground around this area inside the crypt.
			.info Any nearby Drakkari enemy will become aggressive and attack you when you loot these.
		step
			goto Grizzly Hills,69.38,18.20
			.collect Drakkari Tablets##36757|q 12068/1
			.info Inside the crypt.
		step
			goto Grizzly Hills,69.47,17.50
			.talk Harrison Jones##26814
			..accept Dun-da-Dun-tah!##12082
			.info This is an escort quest.
			.info Wait if the quest isn't available as someone else is likely doing it.
			.info He can take up to 5 minutes to respawn.
		step
			goto Grizzly Hills,73.52,24.03
			.' Watch the dialogue.
			.info Follow Harrison Jones and protect him while he walks.
			.info He eventually walks to this location outside the building.
			.' Allow Harrison to Escort You to Safety|q 12082/1 |noway
		step
			goto Grizzly Hills,71.51,26.99
			.' Kill Drakkari enemies around this area
			.info They look like trolls.
			.info You can find them all around the Drakil'jin Ruins area.
			.collect 5 Sacred Mojo##36758|q 12068
		step
			goto Grizzly Hills,71.51,26.99
			.kill 10 Drakkari Protector##26797|q 12114/1
			.kill 10 Drakkari Oracle##26795|q 12114/2
			.info You can find them all around the Drakil'jin Ruins area.
		step
			goto Grizzly Hills,71.72,26.14
			.use Drakuru's Elixir##35797
			.info Use it next to the brazier.
			.talk Image of Drakuru##26787
			..turnin Voices From the Dust##12068
		step
			goto Grizzly Hills,73.76,34.02
			.talk Harkor##26884
			..turnin Dun-da-Dun-tah!##12082
			..turnin Nice to Meat You##12113
			..turnin Therapy##12114
		step
			goto Grizzly Hills,73.91,34.12
			.talk Kraz##26886
			..turnin It Takes Guts....##12116
			..accept Drak'aguul's Mallet##12120
		step
			goto Grizzly Hills,72.51,29.80
			.from Drak'aguul##26919
			.info He walks along the stairs around this area.
			.info He has 2 guards that walk with him.
			.get Drakil'jin Mallet##36826|q 12120/1
		step
			goto Grizzly Hills,73.91,34.12
			.talk Kraz##26886
			..turnin Drak'aguul's Mallet##12120
			..accept See You on the Other Side##12121
		step
			goto Grizzly Hills,71.53,24.66
			.use Charged Drakil'jin Mallet##36834
			.' Watch the dialogue.
			.' Receive Death by Warlord Jin'arrak|q 12121/1
		step
			goto Grizzly Hills,71.53,24.66
			.' Enter the Other Side |havebuff Ability_Creature_Cursed_02 |q 12121
			.info You will receive the buff automatically.
			.info It will take a few seconds to complete this step.
		step
			goto Grizzly Hills,69.41,19.48
			.talk Gan'jo##26924
			..turnin See You on the Other Side##12121
			..accept Chill Out, Mon##12137
		step
			goto Grizzly Hills,69.36,19.57
			.collect Snow of Eternal Slumber##36859|q 12137/1
			.info Inside the crypt.
		step
			goto Grizzly Hills,69.41,19.48
			.talk Gan'jo##26924
			.' Tell him "I am ready to return to the realm of the living."
			.' Leave the Spirit Realm |nobuff Ability_Creature_Cursed_02|q 12137
		step
			goto Grizzly Hills,70.61,19.84
			.use Snow of Eternal Slumber##36859
			.info Use it on Ancient Drakkari.
			.info They look like spirit trolls around this area inside the crypt.
			.info Follow them when they run to nearby mummies on the ground.
			.collect 5 Drakkari Spirit Particles##36868|q 12137/2
			.info They appear when the Ancient Drakkari enemies reach the mummies.
		step
			goto Grizzly Hills,73.91,34.12
			.talk Kraz##26886
			..turnin Chill Out, Mon##12137
			..accept Jin'arrak's End##12152
		step
			goto Grizzly Hills,71.25,19.66
			.collect Sacred Drakkari Offering##36870|q 12152
			.info Inside the crypt.
		step
			.use Drakkari Spirit Dust##36873
			.collect Infused Drakkari Offering##37063|q 12152
		step
			goto Grizzly Hills,71.53,24.65
			.use Infused Drakkari Offering##37063
			.' Watch the dialogue
			.' Destroy Warlord Jin'arrak|q 12152/1
		step
			goto Grizzly Hills,73.91,34.12
			.talk Kraz##26886
			..turnin Jin'arrak's End##12152
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin Check Up on Raegar##12128
			..accept The Perfect Plan##12129
		step
			goto Grizzly Hills,76.97,48.44
			.talk Mountaineer Kilian##26885
			..accept The Captive Prospectors##12180
		step
			goto Grizzly Hills,75.71,53.55
			.from Runic War Golem##26347, Lightning Sentry##26407, Runic Lightning Gunner##26414
			.info Any enemies will drop keys, except Iron Rune-Smiths.
			.collect Dun Argol Cage Key##37013|q 12180
		step
			goto Grizzly Hills,76.48,55.36
			.' Interact with gameobject: Dun Argol Cage
			.info Inside the building.
			.' Watch the dialogue
			.' Rescue Prospector Gann|q 12180/1
		step
			goto Grizzly Hills,76.22,57.58
			.from Runic War Golem##26347, Lightning Sentry##26407, Runic Lightning Gunner##26414
			.info Any enemies will drop keys, except Iron Rune-Smiths.
			.collect Dun Argol Cage Key##37013|q 12180
		step
			goto Grizzly Hills,76.30,58.54
			.' Interact with gameobject: Dun Argol Cage
			.' Watch the dialogue
			.' Rescue Prospector Torgan|q 12180/2
		step
			goto Grizzly Hills,76.22,57.58
			.from Runic War Golem##26347, Lightning Sentry##26407, Runic Lightning Gunner##26414
			.info Any enemies will drop keys, except Iron Rune-Smiths.
			.collect Dun Argol Cage Key##37013|q 12180
		step
			goto Grizzly Hills,76.01,61.03
			.' Interact with gameobject: Dun Argol Cage
			.' Watch the dialogue
			.' Rescue Prospector Varana|q 12180/3
		step
			goto Grizzly Hills,76.22,57.58
			.from Iron Rune-Smith##26408
			.info You can find them all around the Dun Argol area.
			.info They can also be inside the buildings.
			.collect Golem Blueprint Section 1##36849|q 12129
			.collect Golem Blueprint Section 2##36850|q 12129
			.collect Golem Blueprint Section 3##36851|q 12129
		step
			.use Golem Blueprint Section 1##36849
			.collect War Golem Blueprint##36848|q 12129/1
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin The Perfect Plan##12129
			..accept Why Fabricate When You Can Appropriate?##12130
		step
			goto Grizzly Hills,76.97,48.44
			.talk Mountaineer Kilian##26885
			..turnin The Captive Prospectors##12180
			..accept Looking the Part##12183
		step
			goto Grizzly Hills,76.62,54.81
			.from Iron Rune Overseer##27177
			.get Overseer's Uniform##37035|q 12183/1
			.' You can find more around (1)|at 76.13,57.97
			.' You can find more around (2)|at 78.41,59.36
		step
			goto Grizzly Hills,76.22,57.58
			.collect 8 War Golem Part##36852|q 12130/1
			.info They look like various shaped grey metal objects on the ground.
			.info They can also be inside the buildings.
			.info You can find them all around the Dun Argol area.
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin Why Fabricate When You Can Appropriate?##12130
			..accept We Have the Power##12131
		step
			goto Grizzly Hills,76.97,48.44
			.talk Mountaineer Kilian##26885
			..turnin Looking the Part##12183
			..accept Cultivating an Image##12184
		step
			goto Grizzly Hills,74.89,56.92
			.from Rune-Smith Durar##26409
			.info Inside the building.
			.get Durar's Power Cell##36857|q 12131/1
		step
			goto Grizzly Hills,76.82,59.35
			.from Rune-Smith Kathorn##26410
			.info Inside the building.
			.get Kathorn's Power Cell##36858|q 12131/2
		step
			goto Grizzly Hills,76.22,57.58
			.' Kill enemies around this area
			.info Only the enemies that look like dwarves will count for this quest goal.
			.info You can find them all around the Dun Argol area.
			.use Kilian's Camera##37045
			.info Use it on their corpses.
			.' Capture 8 Iron Dwarf Images|q 12184/1
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin We Have the Power##12131
			..accept ... Or Maybe We Don't##12138
		step
			goto Grizzly Hills,76.97,48.44
			.talk Mountaineer Kilian##26885
			..turnin Cultivating an Image##12184
			..accept Put on Your Best Face for Loken##12185
		step
			goto Grizzly Hills,77.82,53.24
			.use Golem Control Unit##36936
			.info This will summon a Depleted War Golem to follow you around.
			.info If your golem disappears, use this item again to summon another one.
			.kill Lightning Sentry##26407|n
			.info They look like air elementals.
			.info Kill them with the golem next to you.
			.info Make sure you're close to them when you kill them, or the golem won't collect the charge level.
			.collect 10 Charge Levels|q 12138/1
			.' You can find more around (1)|at 75.62,51.49
			.' You can find more around (2)|at 73.54,54.76
			.' You can find more around (3)|at 72.64,59.96
		step
			goto Grizzly Hills,79.9,59.5
			.' Get on Your Mount
			.info Make sure you are mounted and not in combat.
			.info You will use the Overseer Disguise Kit in the next guide step.
			.info If you are already mounted when you use the item, it will let you ride your mount while disguised, so you can run faster.
			.use Overseer Disguise Kit##37071
			.info It can be used anywhere in the Dun Argol subzone.
			.' Wear the Disguise |havebuff INV_Mask_01 |q 12185
		step
			goto Grizzly Hills,81.54,60.30
			.' Interact with gameobject: Loken's Pedestal
			.info Inside the building.
			.' Watch the dialogue.
			.info If you don't want to watch the dialogue, you don't have to wait.
			.info You can leave the building and start running down the mountain to the questgivers.
			.info The quest goal will complete as you are running down the mountain.
			.' Receive the Message from Loken|q 12185/1
		step
			.' Remove the Iron Rune Overseer Disguise |nobuff INV_Mask_01 |q 12185
			.info Right-click the "Iron Rune Overseer Disguise" buff near your minimap.
			.info Make sure you're in a safe spot before removing the disguise.
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin ... Or Maybe We Don't##12138
			..accept The Iron Thane and His Anvil##12153
			..accept Blackout##12154
		step
			goto Grizzly Hills,76.97,48.44
			.talk Mountaineer Kilian##26885
			..turnin Put on Your Best Face for Loken##12185
		step
			goto Grizzly Hills,76.79,63.01
			.use Golem Control Unit##36865
			.info Downstairs inside the building.
			.' Control a War Golem |invehicle |q 12153
		step
			goto Grizzly Hills,76.37,63.72
			.kill Iron Thane Furyhammer##26405|q 12153/1
			.info Downstairs inside the building.
			.info Use the abilities on your action bar.
			.info Use the "EMP" ability to stun The Anvil and remove Iron Thane Furyhammer's Shield.
			.info Use the "Charged Smash" ability Iron Thane Furyhammer.
		step
			.' Stop Controlling the War Golem |outvehicle |q 12153
			.info Click the yellow arrow on your action bar.
		step
			goto Grizzly Hills,76.47,63.24
			.use Raegar's Explosives##36935
			.info Downstairs inside the building.
			.' Destroy the Dun Argol Power Crystal|q 12154/1
		step
			goto Grizzly Hills,77.09,48.65
			.talk Raegar Breakbrow##26883
			..turnin The Iron Thane and His Anvil##12153
			..turnin Blackout##12154
		step
			goto Grizzly Hills,31.2,59.5
			.talk Hierophant Thayreen##27295
			..turnin Vordrassil's Sapling##12248
			..turnin Vordrassil's Seeds##12250
		step
			.' Congratulations! +89/85 quests for achievement "Fo' Grizzle My Shizzle".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[74] Zul'Drak",[[
author danaton
description This guide contain quest-chain (101) for Zul'Drak location.
startlevel 74
		step
			goto Dalaran,48.5,45.3
			.talk Shifty Vickers##30137
			..accept The Champion's Call!##12974
		step
			goto Zul'Drak,40.3,66.6
			.talk Commander Kunz##28039
			..accept First Things First##12792
		step
			goto Zul'Drak,32.03,74.43
			.talk Sergeant Riannah##29137
			..turnin First Things First##12792
		step
			goto Zul'Drak,32.02,75.60
			.talk Elder Shaman Moky##29733
			..accept This Just In: Fire Still Hot!##12859
		step
			goto Zul'Drak,32.14,75.74
			.talk Crusader Lord Lantinga##29687
			..accept In Search Of Answers##12902
		step
			goto Zul'Drak,32.18,75.64
			.talk Chief Rageclaw##29690
			..accept Trolls Is Gone Crazy!##12861
		step
			goto Zul'Drak,32.3,75.7
			.' Interact with gameobject: Wanted!
			..accept Wanted: Ragemane's Flipper##12857
		step
			goto Zul'Drak,34.91,83.89
			.' Interact with gameobject: Orders From Drakuru
			..turnin In Search Of Answers##12902
			..accept Orders From Drakuru##12883
		step
			goto Zul'Drak,38.6,84.4
			.from Ragemane##29664
			.get Ragemane's Flipper##41115|q 12857/1
			.info Underwater.
		step
			goto Zul'Drak,34.04,82.74
			.' Kill Drakuru enemies around this area.
			.info They look like trolls.
			.collect Drakuru "Lock Opener"##41161|n
			.use Drakuru "Lock Opener"##41161
			.info Use them next to Captured Rageclaws.
			.info They look like wolverine humanoids stuck in metal traps on the ground around this area.
			.info You can find them all around the Rageclaw Den area.
			.' Free 8 Captured Rageclaws|q 12861/1
		step
			goto Zul'Drak,34.04,82.74
			.use Rageclaw Fire Extinguisher##41131
			.info Use it next to fires around this area.
			.info You may have to use it multiple times to put the fires out.
			.info You can find them all around the Rageclaw Den area.
			.' Douse 15 Hut Fires|q 12859/1
		step
			goto Zul'Drak,32.02,75.60
			.talk Elder Shaman Moky##29733
			..turnin This Just In: Fire Still Hot!##12859
		step
			goto Zul'Drak,32.18,75.64
			.talk Chief Rageclaw##29690
			..turnin Wanted: Ragemane's Flipper##12857
			..turnin Trolls Is Gone Crazy!##12861
		step
			goto Zul'Drak,32.14,75.74
			.talk Crusader Lord Lantinga##29687
			..turnin Orders From Drakuru##12883
			..accept The Ebon Watch##12884
			..accept Crusader Forward Camp##12894
		step
			goto Zul'Drak,25.28,63.97
			.talk Crusader MacKellar##29689
			..turnin Crusader Forward Camp##12894
			..accept That's What Friends Are For...##12903
		step
			goto Zul'Drak,25.23,63.88
			.talk Engineer Reed##29688
			..accept Making Something Out Of Nothing##12901
		step
			goto Zul'Drak,25.06,51.61
			.' Find Crusader Dargath|q 12903/1
		step
			goto Zul'Drak,19.75,56.44
			.talk Gymer##29647
			..accept A Great Storm Approaches##12912
		step
			goto Zul'Drak,17.62,57.58
			.' Find Gerk|q 12903/2
		step
			goto Zul'Drak,17.62,57.58
			.talk Gerk##29455
			..accept Light Won't Grant Me Vengeance##12904
		step
			goto Zul'Drak,15.71,59.40
			.' Find Burr|q 12903/3
			.info Laying on a metal table.
		step
			goto Zul'Drak,17.24,59.01
			.from Vargul Runelord##29450, Vargul Slayer##29451
			.info Only Slayer and Deathwaker enemies will count for the quest goal.
			.info You can find them all around the Thrym's End area.
			.' Slay 15 Varguls|q 12904/1
		step
			goto Zul'Drak,17.24,59.01
			.collect 10 Scourge Scrap Metal##41399|q 12901/1
			.info They look like pieces of metal with various shapes on the ground around this area.
			.info You can find them all around the Thrym's End area.
		step
			goto Zul'Drak,17.62,57.58
			.talk Gerk##29455
			..turnin Light Won't Grant Me Vengeance##12904
		step
			goto Zul'Drak,25.23,63.88
			.talk Engineer Reed##29688
			..turnin Making Something Out Of Nothing##12901
			..turnin A Great Storm Approaches##12912
			..accept Gymer's Salvation##12914
		step
			goto Zul'Drak,25.27,63.96
			.talk Crusader MacKellar##29689
			..turnin That's What Friends Are For...##12903
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin The Ebon Watch##12884
			..accept Kickin' Nass and Takin' Manes##12630
		step
			goto Zul'Drak,13.03,69.38
			.from Withered Troll##28519
			.use Stefan's Steel Toed Boot##38659
			.info Use it next to their corpses.
			.info Nass will die to AoE attacks easily.
			.' Speak With Stefan Here (If Nass Dies)|at 14.06,73.80
			.get 10 Hair Samples|q 12630/1
			.' You can find more around (1)|at 15.20,69.00
			.' You can find more around (2)|at 17.98,69.23
			.' You can find more around (3)|at 20.99,68.48
		step
			goto Zul'Drak,13.03,69.38
			.from Withered Troll##28519
			.collect Writhing Choker##38673|n
			.use Writhing Choker##38673
			..accept Darkness Calling##12633
			.' You can find more around (1)|at 15.20,69.00
			.' You can find more around (2)|at 17.98,69.23
			.' You can find more around (3)|at 20.99,68.48
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,13.03,69.38
			.from Withered Troll##28519
			.collect Unliving Choker##38660|n
			.use Unliving Choker##38660
			..accept An Invitation, of Sorts...##12631
			.' You can find more around (1)|at 15.20,69.00
			.' You can find more around (2)|at 17.98,69.23
			.' You can find more around (3)|at 20.99,68.48
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,15.06,73.12
			.from Icetouched Earthrager##29436
			.info They look like blue and white elementals holding clubs.
			.info You can find them all surrounding Ebon Watch.
			.collect 6 Diatomaceous Earth##41503|q 12914/2
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Kickin' Nass and Takin' Manes##12630
			..turnin An Invitation, of Sorts...##12631
			..accept Near Miss##12637
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Kickin' Nass and Takin' Manes##12630
			..turnin Darkness Calling##12633
			..accept Close Call##12638
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.28,74.04
			.talk Bloodrose Datura##28532
			..accept Taking a Stand##12795
		step
			goto Zul'Drak,14.28,74.04
			.talk Bloodrose Datura##28532
			.' Tell her "Stefan told me you would demonstrate the purpose of this item."
			.' Expose the Choker's Purpose|q 12637/1
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.28,74.04
			.talk Bloodrose Datura##28532
			.' Tell her "Stefan told me you would demonstrate the purpose of this item."
			.' Expose the Choker's Purpose|q 12638/1
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Close Call##12638
			..accept Silver Lining##12643
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Near Miss##12637
			..accept You Can Run, But You Can't Hide##12629
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.24,73.71
			.from Putrid Abomination##28564
			.info You can find them all around the Reliquary of Agony area.
			.collect 5 Putrid Abomination Guts##38686|q 12629/1 |or
			.' You can find more around|at 18.38,80.93
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.24,73.71
			.from Putrid Abomination##28564
			.info You can find them all around the Reliquary of Agony area.
			.collect 5 Putrid Abomination Guts##38686|q 12643/1
			.' You can find more around|at 18.38,80.93
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.24,73.71
			.talk Gooey Ghoul Drool##29856
			.info They look like small oozes on the ground around this area.
			.info You can find them all around the Reliquary of Agony area.
			.info Turning on Name Plates can help find these.
			.collect 5 Gooey Ghoul Drool##38687|q 12629/2
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.24,73.71
			.talk Gooey Ghoul Drool##29856
			.info They look like small oozes on the ground around this area.
			.info You can find them all around the Reliquary of Agony area.
			.info Turning on Name Plates can help find these.
			.collect 5 Gooey Ghoul Drool##38687|q 12643/2
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80	
			.talk Stefan Vadu##28518
			..turnin Silver Lining##12643
			..accept Suit Up!##12649
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80	
			.talk Stefan Vadu##28518
			..turnin You Can Run, But You Can't Hide##12629
			..accept Dressing Down##12648
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.26,74.00
			.use Ensorcelled Choker##38699
			.' Wear the Scourge Disguise |havebuff Spell_Shadow_UnstableAffliction_3 |q 12648
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.26,74.00
			.use Ensorcelled Choker##38699
			.' Wear the Scourge Disguise |havebuff Spell_Shadow_UnstableAffliction_3 |q 12649
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,19.87,75.44
			.talk Gristlegut##28589
			..accept Feedin' Da Goolz##12652
		step
			goto Zul'Drak,19.87,75.44
			.talk Gristlegut##28589
			.buy Bitter Plasma##38698|q 12648/1
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,19.87,75.44
			.talk Gristlegut##28589
			.buy Bitter Plasma##38698|q 12649/1
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,20.71,73.34
			.use Bowels and Brains Bowl##38701
			.info Use it near Decaying Ghouls.
			.info They look like zombies.
			.info You can find them all around the Reliquary of Agony area.
			.info Be careful, Blightguards (black ghosts) can see through your disguise.
			.' Feed 10 Decaying Ghouls|q 12652/1
		step
			goto Zul'Drak,19.87,75.44
			.talk Gristlegut##28589
			..turnin Feedin' Da Goolz##12652
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Dressing Down##12648
			..accept Infiltrating Voltarus##12661
			only if not ZGV.completedQuests[12238]
		step
			goto Zul'Drak,14.06,73.80
			.talk Stefan Vadu##28518
			..turnin Suit Up!##12649
			..accept Infiltrating Voltarus##12661
			only if ZGV.completedQuests[12238]
		step
			goto Zul'Drak,24.98,58.82
			.from Banshee Soulclaimer##29646
			.info They look like white ghosts flying in the air around this area.
			.info You can find them all around the Dead Fields area.
			.get 6 Banshee Essence##41504|q 12914/1
		step
			goto Zul'Drak,25.23,63.88
			.talk Engineer Reed##29688
			..turnin Gymer's Salvation##12914
			..accept Our Only Hope##12916
		step
			goto Zul'Drak,19.74,56.41
			.' Interact with gameobject: Scourge Enclosure
			.' Blow Up the Scourge Enclosure|q 12916/1
		step
			goto Zul'Drak,19.74,56.41
			.talk Gymer##29647
			..turnin Our Only Hope##12916
			..accept The Storm King's Vengeance##12919
		step
			goto Zul'Drak,19.74,56.41
			.talk Gymer##29647
			.' Tell him "I'm ready, Gymer. Let's go!"
			.' Ride on Gymer's Shoulder |invehicle |q 12919
		step
			goto Zul'Drak,30.06,44.67
			.kill Algar the Chosen##29872|q 12919/2
			.info He flies around this area, in a counter-clockwise pattern, on a large skeletal dragon.
			.info Use the abilties on your action bar.
			.info Pick up the blue electricity balls on the ground around this area to heal yourself.
		step
			goto Zul'Drak,32.50,63.81
			.kill Prince Navarius##29821|q 12919/4
			.info Use the abilties on your action bar.
			.info Pick up the blue electricity balls on the ground around this area to heal yourself.
		step
			goto Zul'Drak,31.12,61.97
			.kill Thrym##29895|q 12919/3
			.info He appears after you kill Prince Navarius.
			.info Use the abilties on your action bar.
			.info Pick up the blue electricity balls on the ground around this area to heal yourself.
		step
			goto Zul'Drak,22.72,58.42
			.' Kill enemies around this area.
			.info You can find them all around this area.
			.info Use the abilties on your action bar.
			.info Only Undead enemies will count for the quest goal.
			.info Pick up the blue electricity balls on the ground around this area to heal yourself.
			.' Slay 100 Scourge|q 12919/1
		step
			goto Zul'Drak,28.46,51.16
			.' Stop Riding on Gymer's Shoulder |outvehicle |q 12919
			.info Click the red arrow on your action bar.
		step
			goto Zul'Drak,28.46,51.16
			.use Ensorcelled Choker##38699
			.' Wear the Ghoul Disguise |havebuff Spell_Shadow_UnstableAffliction_3 |q 12661
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12661
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..accept Dark Horizon##12663
			only if ZGV.completedQuests[12649]
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..accept Reunited##12664
			only if ZGV.completedQuests[12648]
		step
			goto Zul'Drak,29.84,48.03
			.talk Gorebag##28666
			.' Ask him "Uhh, can you send me on the tour of Zul'Drak?"
			.' Begin the Tour of Zul'Drak |invehicle |q 12663
			only if ZGV.completedQuests[12649]
		step
			goto Zul'Drak,29.84,48.03
			.talk Gorebag##28666
			.' Ask him "Uhh, can you send me on the tour of Zul'Drak?"
			.' Begin the Tour of Zul'Drak |invehicle |q 12664
			only if ZGV.completedQuests[12648]
		step
			goto Zul'Drak,27.79,44.60
			.' Watch the dialogue.
			.' Complete the Tour of Zul'Drak|q 12663/1
			only if ZGV.completedQuests[12649]
		step
			goto Zul'Drak,27.79,44.60
			.' Watch the dialogue.
			.' Complete the Tour of Zul'Drak|q 12664/1
			only if ZGV.completedQuests[12648]
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin Reunited##12663
			.' Complete Overlord Drakuru's Task |q 12661/1
			only if ZGV.completedQuests[12649]
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin Dark Horizon##12664
			.' Complete Overlord Drakuru's Task |q 12661/1
			only if ZGV.completedQuests[12648]
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12661
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.05,44.85
			.use Stefan's Horn##41390
			.talk Stefan Vadu##28518
			..turnin Infiltrating Voltarus##12661
			..accept So Far, So Bad##12669
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12669
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..accept It Rolls Downhill##12673
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12673
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.86,46.33
			.use Scepter of Suggestion##39157
			.info Keep your Scourge Disguise active.
			.info Use it on Blight Geists.
			.info They look like frail humanoids crouching on the ground.
			.info This will allow you to temporarily control a Blight Geist as a pet.
			.use Blight Geists to Harvest Blight Crystals
			.info The Crystallized Blight look like orange crystals.
			.info You can find them all around the Reliquary of Pain area.
			.info Use the "Harvest Blight Crystal" ability on your Blight Geists' pet action bar near Crystallized Blight, and then follow the Blight Geists back to the teleport pad to deliver the crystals.
			.collect 7 Blight Crystals|q 12673/1
		step
			goto Zul'Drak,28.86,46.33
			.use Diluting Additive##39154
			.info Keep your Scourge Disguise active.
			.info Use it next to Blight Cauldrons.
			.info They look like large pots with orange liquid in them on the back of cart vehicles.
			.info You can find them all around the Reliquary of Pain area.
			.' Dilute 5 Cauldrons|q 12669/2
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12673
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin It Rolls Downhill##12673
			.' Complete Drakuru's Task|q 12669/1
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12669
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.05,44.85
			.use Stefan's Horn##41390
			.talk Stefan Vadu##28518
			..turnin So Far, So Bad##12669
			..accept Hazardous Materials##12677
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12677
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..accept Zero Tolerance##12686
		step
			goto Zul'Drak,27.56,43.05
			.collect 5 Harvested Blight Crystal##39159|q 12677/2
			.info They look like wooden crates on the ground.
			.info You can find them all around the Voltarus area, in the outermost ring inside the floating building.
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12686
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,30.50,51.62
			.use Scepter of Empowerment##39206
			.info Use it on a Servant of Drakuru around this area.
			.info This will give a Hand of Drakuru minion to control.
			.kill Darmuk##28793|q 12686/1
			.info He walks around this area.
			.info Do not attack him yourself.
			.info Use the abilities on your minion's action bar to fight him.
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12686
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin Zero Tolerance##12686
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12677
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.05,44.85
			.use Stefan's Horn##41390
			.talk Stefan Vadu##28518
			..turnin Hazardous Materials##12677
			..accept Sabotage##12676
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12676
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..accept Fuel for the Fire##12690
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12690
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.86,46.33
			.use Explosive Charges##39165
			.info Use them next to Scourgewagons.
			.info They look like catapult carts on the ground.
			.info You can find them all around the Reliquary of Pain area.
			.' Destroy 5 Scourgewagons|q 12676/1
		step
			.use Scepter of Command##39238|goto 32.43,39.69
			.info Use it on Bloated Abominations around this area.
			.info You will gain control of an abomination.
			.info Send your Bloated Abomination northeast into the troll area.
			.info Try to gather up groups of Drakkari Skullcrusher trolls so that they are all near you.
			.info Use the "Burst at the Seams" ability on your pet action bar when the group of trolls are near you, to kill them.
			.info Keep repeating this process.
			.' Slay 60 Drakkari Skullcrushers|q 12690/1 |goto 33.70,37.70
			.' Lure 3 Drakkari Chieftains|q 12690/2
			.info They will appear as you kill trolls with your abominations.
			.info When they appear, kill them with the other trolls.
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12690
			.info Stand on the teleport pad.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin Fuel for the Fire##12690
			..accept Disclosure##12710
			.' Complete Drakuru's Task|q 12676/2
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to Drakuru's Upper Chamber|goto 27.35,42.52,0.2 |q 12710
			.info Stand on the upper teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,27.27,42.38
			.' Interact with gameobject: Musty Coffin
			.info Upstairs inside the floating building.
			.' Watch the dialogue
			.info Follow Malmortis as he walks.
			.' Explore Drakuru's Upper Chamber|q 12710/1
		step
			goto Zul'Drak,28.40,44.89|n
			.' Teleport to the Main Floor of Voltarus|goto 28.07,45.16,0.2 |q 12710
			.info Stand on the upper teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			..turnin Disclosure##12710
			.' Learn Drakuru's Secret|q 12676/3
		step
			goto Zul'Drak,28.39,44.88|n
			.' Teleport to the Ground|goto 28.05,44.85,0.2 |q 12676
			.info Stand on the lower teleport pad.
			.info Inside the floating building.
		step
			goto Zul'Drak,28.05,44.85
			.use Stefan's Horn##41390
			.talk Stefan Vadu##28518
			..turnin Sabotage##12676
			..accept Betrayal##12713
		step
			goto Zul'Drak,28.37,44.87|n
			.' Teleport Up to Voltarus|goto 28.07,45.16,0.2 |q 12713
			.info Stand on the teleport pad.
			.' Prepare For a Difficult Fight
			.info You are about to fight Overlord Drakuru.
			.info You will talk to him and he will teleport you to the top of the floating building.
			.info A dialogue will begin and your Ghoul Disguise will fail intentionally as part of the quest.
			.' Capture a Blightblood Troll Minion
			.info During the dialogue, 4 orange Blightblood Trolls will appear around the circle platform.
			.info Use the "Scepter of Domination" quest item on one of them to control it as a minion.
			.info It will help you fight Overlord Drakuru.
			.info If your minion dies during the fight, use the quest item again on another Blightblood Troll to get another minion to fight for you.
			.' Avoid the Orange Areas on the Ground
			.info Overlord Drakuru will toss orange crystals at you, which will explode and create orange areas on the ground that will damage you badly.
			.info Try to avoid the orange areas on the ground, while trying to help your Blightblood Troll minion damage Overlord Drakuru, as much as you can.
			.info The orange areas on the ground will start to disappear after some time, so try to position yourself so that they don't infect too much of the ground.
			.info Repeat this process until you win the fight.
			.info If you have trouble, try to find someone to help you, or skip the quest.
		step
			goto Zul'Drak,27.08,46.16
			.talk Overlord Drakuru##28503
			.' Tell him "I am ready to accompany you, Drakuru."
			.' Teleport to the Top fo Voltarus with Drakuru|goto 28.34,45.28,0.2 |q 12713
		step
			goto Zul'Drak,28.39,44.87
			.' Watch the dialogue.
			.use Scepter of Domination##39664
			.info Use it on one of the Blightblood Trolls that appear.
			.from Overlord Drakuru##28998
			.info Avoid the orange areas on the ground.
			.info If your minion dies, use the quest item another one.
			.info If you have trouble, try to find someone to help you, or skip the quest.
			.get Drakuru's Skull##40425|q 12713/1
			.info After a dialogue, it appears on the ground nearby.
		step
			goto Zul'Drak,28.62,44.55
			.' Interact with gameobject: Drakuru's Last Wish
			.info On top of the floating building.
			.' Choose _"I'm ready."_
			.' Teleport to the Ground|q 12713
		step
			goto Zul'Drak,27.82,50.29
			.use Stefan's Horn##41390
			.talk Stefan Vadu##28518
			..turnin Betrayal##12713
		step
			goto Zul'Drak,25.28,63.96
			.talk Crusader MacKellar##29689
			..turnin The Storm King's Vengeance##12919
		step
			goto Zul'Drak,39.42,66.96
			.talk Commander Falstaav##28059
			..turnin Taking a Stand##12795
			..accept Defend the Stand##12503
			..accept Parachutes for the Argent Crusade##12740
		step
			goto Zul'Drak,40.52,65.61
			.talk Hexxer Ubungo##28062
			..accept The Blessing of Zim'Abwa##12565
		step
			goto Zul'Drak,37.43,67.01
			.use Crusader Parachute##39615
			.info Use it on Argent (friendly) NPC's around this area.
			.info It may not work on all of them.
			.' Equip 10 Argent Forces with a Parachute|q 12740/1
		step
			goto Zul'Drak,37.43,67.01
			.from Carrion Eater##28022, Rotting Abomination##28023, Rampaging Geist##28026, Sky Terror##28246
			.collect 10 Drakkari Offerings##38551|q 12565
		step
			goto Zul'Drak,37.43,67.01
			.from Carrion Eater##28022, Rotting Abomination##28023, Rampaging Geist##28026, Sky Terror##28246
			.' Destroy 10 Scourge at The Argent Stand|q 12503/1
		step
			goto Zul'Drak,36.70,72.57
			.' Interact with gameobject: Zim'Abwa
			..turnin The Blessing of Zim'Abwa##12565
		step
			goto Zul'Drak,39.42,66.96
			.talk Commander Falstaav##28059
			..turnin Defend the Stand##12503
			..turnin Parachutes for the Argent Crusade##12740
		step
			goto Zul'Drak,40.27,66.62
			.talk Commander Kunz##28039
			..accept New Orders for Sergeant Stackhammer##12505
			..accept Pa'Troll##12596
		step
			goto Zul'Drak,40.52,65.61
			.talk Hexxer Ubungo##28062
			..accept Trouble at the Altar of Sseratus##12506
		step
			goto Zul'Drak,48.77,78.86
			.talk Captain Brandon##28042
			..accept Something for the Pain##12597
		step
			goto Zul'Drak,58.07,72.43
			.talk Captain Rupert##28044
			..accept Throwing Down##12598
		step
			goto Zul'Drak,58.68,72.49
			.talk Dr. Rogers##28125
			..accept Leave No One Behind##12512
		step
			goto Zul'Drak,49.45,74.71
			.use Crusader's Bandage##38330
			.info use it on Crusader Josephine.
			.info Inside the building.
			.info In the next guide step, HURRY. She will only stay alive for 3 minutes.
			.' Heal Crusader Josephine |havebuff Spell_Shadow_LifeDrain |q 12512
		step
			goto Zul'Drak,58.15,72.30
			.' Save Crusader Josephine|q 12512/3
			.info She will follow you, bring her safely to this location.
			.info Protect her and try to avoid allowing enemies to attack her as you walk.
			.info Don't mount because she won't be able to keep up.
			.info HURRY - She will only stay alive for 3 minutes.
			.info If you don't make it in time, go back to the previous guide step to try again.
		step
			goto Zul'Drak,53.58,75.00
			.use Crusader's Bandage##38330
			.info use it on Crusader Lamoof.
			.info Inside the building.
			.info In the next guide step, HURRY. He will only stay alive for 2 minutes.
			.' Heal Crusader Lamoof |havebuff Spell_Shadow_LifeDrain |q 12512
		step
			goto Zul'Drak,58.15,72.30
			.' Save Crusader Lamoof|q 12512/2
			.info He will follow you, bring him safely to this location.
			.info Protect him and try to avoid allowing enemies to attack him as you walk.
			.info Don't mount because he won't be able to keep up.
			.info HURRY - He will only stay alive for 2 minutes.
			.info If you don't make it in time, go back to the previous guide step to try again.
		step
			goto Zul'Drak,55.18,69.48
			.use High Impact Grenade##38574
			.info Use it next to the Nerubian Tunnels.
			.info They look like dirt mounds on the ground around this area.
			.info Inside and outside the building.
			.' Seal 5 Nerubian Tunnels|q 12598/1
		step
			goto Zul'Drak,50.67,69.86
			.use Crusader's Bandage##38330
			.info Use it on Crusader Jonathan.
			.info Inside the building.
			.info In the next guide step, HURRY. He will only stay alive for 3 minutes.
			.' Heal Crusader Jonathan |havebuff Spell_Shadow_LifeDrain |q 12512
		step
			goto Zul'Drak,58.15,72.30
			.' Save Crusader Jonathan|q 12512/1
			.info He will follow you, bring him safely to this location.
			.info Protect him and try to avoid allowing enemies to attack him as you walk.
			.info Don't mount because he won't be able to keep up.
			.info HURRY - He will only stay alive for 3 minutes.
			.info If you don't make it in time, go back to the previous guide step to try again.
		step
			goto Zul'Drak,58.07,72.43
			.talk Captain Rupert##28044
			..turnin Throwing Down##12598
			.' Complete Captain Rupert's Task|q 12596/2
			..accept Cocooned!##12606
		step
			goto Zul'Drak,58.68,72.49
			.talk Dr. Rogers##28125
			..turnin Leave No One Behind##12512
		step
			goto Zul'Drak,58.26,72.05
			.talk Specialist Cogwheel##28284
			..accept Skimmer Spinnerets##12553
		step
			goto Zul'Drak,58.07,72.04
			.talk Sergeant Moonshard##28283
			..accept Death to the Necromagi##12552
		step
			goto Zul'Drak,55.18,69.48
			.from Nerubian Cocoon##28413
			.info They look like squirming white cocoons on the ground around this area.
			.info They may not all contain Captive Footmen.
			.info Inside and outside the building.
			.' Free 3 Captive Footmen|q 12606/1
			.' You can find more around|at 52.70,66.82
		step
			goto Zul'Drak,56.78,81.62
			.from Hath'ar Skimmer##28258
			.info They look like smaller brown spiders around this area.
			.get 5 Intact Skimmer Spinneret##38514|q 12553/1
		step
			goto Zul'Drak,56.78,81.62
			.kill 8 Hath'ar Necromagus##28257|q 12552/1
			.info They look like larger darker colored spiders around this area.
			.' You can find more inside the building|at 60.15,79.25
		step
			goto Zul'Drak,58.07,72.43
			.talk Captain Rupert##28044
			..turnin Cocooned!##12606
		step
			goto Zul'Drak,58.07,72.04
			.talk Sergeant Moonshard##28283
			..turnin Death to the Necromagi##12552
			..accept Malas the Corrupter##12554
		step
			goto Zul'Drak,58.26,72.05
			.talk Specialist Cogwheel##28284
			..turnin Skimmer Spinnerets##12553
			..accept Crashed Sprayer##12583
		step
			goto Zul'Drak,58.07,72.43
			.talk Captain Rupert##28044
			..accept Pure Evil##12584
		step
			goto Zul'Drak,48.90,75.62
			.collect Plague Sprayer Parts##38560|q 12583/1
		step
			goto Zul'Drak,58.26,72.05
			.talk Specialist Cogwheel##28284
			..turnin Crashed Sprayer##12583
			..accept A Tangled Skein##12555
		step
			goto Zul'Drak,57.39,80.28
			.use Tangled Skein Thrower##38515
			.info Use it on Plague Sprayers.
			.info They look like machines flying in the air around this area.
			.' Web and Destroy 5 Plague Sprayers|q 12555/1
		step
			goto Zul'Drak,61,78
			.from Malas the Corrupter##28255
			.get Head of the Corrupter##38521|q 12554/1
		step
			goto Zul'Drak,60.15,79.25
			.collect 10 Chunk of Saronite##38562|q 12584/1
			.info They look like small green rocks on the ground inside the building.
			.info They can be upstairs too.
		step
			goto Zul'Drak,58.26,72.05
			.talk Specialist Cogwheel##28284
			..turnin A Tangled Skein##12555
		step
			goto Zul'Drak,58.07,72.04
			.talk Sergeant Moonshard##28283
			..turnin Malas the Corrupter##12554
		step
			goto Zul'Drak,48.15,63.89
			.talk Captain Grondel##28043
			..accept Creature Comforts##12599
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..turnin The Champion's Call!##12974
			..accept The Amphitheater of Anguish: Yggdras!##12932
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears in the arena.
			.info Attack him quickly to avoid him despawning.
			.kill Yggdras##30014|q 12932/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Amphitheater of Anguish: Yggdras!##12932
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..accept The Amphitheater of Anguish: Magnataur!##12933
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears and runs into the arena.
			.info Attack him quickly to avoid him despawning.
			.kill Stinkbeard##30017|q 12933/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Amphitheater of Anguish: Magnataur!##12933
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..accept The Amphitheater of Anguish: From Beyond!##12934
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears in the arena.
			.info It can be 1 of 4 different enemies, and it's random.
			.info Attack it quickly to avoid it despawning.
			.kill Gargoral the Water Lord##30024|q 12934/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Amphitheater of Anguish: From Beyond!##12934
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..accept The Amphitheater of Anguish: Tuskarrmageddon!##12935
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears and jumps into the arena.
			.info Attack him quickly to avoid him despawning.
			.kill Orinoko Tuskbreaker##30020|q 12935/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears and runs into the arena.
			.info Attack him quickly to avoid him despawning.
			.kill Korrak the Bloodrager##30023|q 12936/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936
		step
			goto Zul'Drak,48.43,56.36
			.talk Gurgthock##30007
			..accept The Champion of Anguish##12948
		step
			goto Zul'Drak,47.73,56.86
			.' Watch the dialogue.
			.info An elite enemy appears and jumps into the arena.
			.info Attack him quickly to avoid him despawning.
			.from Enormos##30021
			.info Once you damage the mammoth enough, Vladof the Butcher will dismount.
			.info When this happens, someone in your group can click the mammoth to ride it and use it like a vehicle to fight Vladof the Butcher.
			.kill Vladof the Butcher##30022|q 12948/1
		step
			goto Zul'Drak,48.47,56.42
			.talk Wodin the Troll-Servant##30009
			..turnin The Champion of Anguish##12948
		step
			goto Zul'Drak,35.62,52.23
			.talk Captain Arnath##28045
			..accept Siphoning the Spirits##12799
		step
			goto Zul'Drak,35.03,52.11
			.talk Alchemist Finklestein##28205
			..accept Lab Work##12557
		step
			goto Zul'Drak,34.96,51.57
			.' Interact with gameobject: Withered Batwing
			.info It looks like small skeleton bones.
			.info On the bottom shelf on the bookcase.
			.info Inside the building.
			.' Find the Withered Batwing|q 12557/2
		step
			goto Zul'Drak,34.94,51.57
			.' Interact with gameobject: Amberseed
			.info It looks like a brown spikey ball.
			.info On the bottom shelf (and the 3rd shelf down) on the bookcase.
			.info Inside the building.
			.' Find the Amberseed|q 12557/3
		step
			goto Zul'Drak,34.83,51.57
			.' Interact with gameobject: Muddy Mire Maggots
			.info It looks like a bag of yellow grain.
			.info On the ground inside the building.
			.' Find the Muddy Mire Maggot|q 12557/1
		step
			goto Zul'Drak,35.09,53.42
			.' Interact with gameobject: Chilled Serpent Mucus.
			.info It looks like a small skinny green vial.
			.info On the 3rd shelf down on the bookcase.
			.info Inside the building.
			.' Find the Chilled Serpent Mucus|q 12557/4
		step
			goto Zul'Drak,35.03,52.11
			.talk Alchemist Finklestein##28205
			..turnin Lab Work##12557
			.' Complete Alchemist Finklestein's Task|q 12596/4
		step
			goto Zul'Drak,37.80,60.91
			.from Lost Drakkari Spirit##29129
			.info They look like blue troll ghosts.
			.info You can find them all around the Pools of Zha'jin area.
			.get 5 Ancient Ectoplasm##38335|q 12799/1
		step
			goto Zul'Drak,35.62,52.23
			.talk Captain Arnath##28045
			..turnin Siphoning the Spirits##12799
			..accept Stocking the Shelves##12609
			..accept Clipping Their Wings##12610
		step
			goto Zul'Drak,35.74,48.66
			.from Trapdoor Crawler##28221
			.info They look like orange and black spiders around this area.
			.info They can be underground, get close to the jumping rocks on the ground to get them to come out of the ground.
			.collect 7 Fresh Spider Ichor##38610|q 12609/1
			.' You can find more around|at 37.75,55.10
		step
			goto Zul'Drak,35.74,48.66
			.from Zul'Drak Bat##28233
			.info They look like grey bats around this area.
			.collect 7 Unblemished Bat Wing##38620|q 12610/1
			.' You can find more around|at 37.75,55.10
		step
			goto Zul'Drak,35.62,52.23
			.talk Captain Arnath##28045
			..turnin Stocking the Shelves##12609
			..turnin Clipping Their Wings##12610
		step
			goto Zul'Drak,40.40,48.20
			.talk Sergeant Stackhammer##28056
			..turnin New Orders for Sergeant Stackhammer##12505
			..accept Argent Crusade, We Are Leaving!##12504
		step
			goto Zul'Drak,40.37,48.20
			.talk Corporal Maga##28099
			..accept Mopping Up##12508
		step
			goto Zul'Drak,40.28,39.45
			.' Investigate the Main building at the Altar of Sseratus|q 12506/1
			.info Walk into the doorway of the building.
		step
			goto Zul'Drak,40.38,44.81
			.talk Argent Soldier##28041+
			.info They look like friendly NPCs wearing Alliance armor.
			.info You can find them all around the Altar of Sseratus area.
			.' Tell them "Soldier, you have new orders. You're to pull back and report to the sergeant!"
			.' Tell 10 Argent Soldiers to Report Back to the Sergeant|q 12504/1
		step
			goto Zul'Drak,40.38,44.81
			.' Kill enemies around this area
			.info They look like blue trolls.
			.info You can find them all around the Altar of Sseratus area.
			.collect Strange Mojo##38321|q 12507 |future
		step
			.use Strange Mojo##38321
			..accept Strange Mojo##12507
		step
			goto Zul'Drak,40.38,44.81
			.' Kill enemies around this area
			.info They look like blue trolls.
			.info You can find them all around the Altar of Sseratus area.
			.' Slay 10 Followers of Sseratus|q 12508/1
		step
			goto Zul'Drak,40.40,48.20
			.talk Sergeant Stackhammer##28056
			..turnin Argent Crusade, We Are Leaving!##12504
		step
			goto Zul'Drak,40.37,48.20
			.talk Corporal Maga##28099
			..turnin Mopping Up##12508
		step
			goto Zul'Drak,40.83,66.64
			.talk Eitrigg##28244
			..turnin Pure Evil##12584
		step
			goto Zul'Drak,40.53,65.60
			.talk Hexxer Ubungo##28062
			..turnin Trouble at the Altar of Sseratus##12506
			..turnin Strange Mojo##12507
			..accept Precious Elemental Fluids##12510
		step
			goto Zul'Drak,40.18,68.93
			.talk Sub-Lieutenant Jax##28309
			..accept The Drakkari Do Not Need Water Elementals!##12562
		step
			goto Zul'Drak,42.18,77.54
			.kill Crazed Water Spirit##16570|n
			.info They look like water elementals.
			.info You can find them all around the Drak'Sotra Fields area.
			.collect 3 Water Elemental Link##38323|n
			.info These have low drop rates.
			.use Water Elemental Link##38323
			.info These will create Tethers to the Plane of Water.
			.info You need 3 links to create 1 tether.
			.use Tether to the Plane of Water##38324
			.info Water Elemental Links will not drop from enemies if you have a Tether to the Plane of Water in your bags.
			.kill Watery Lord##28118|n
			.info They appear after you use Tethers to the Plane of Water.
			.collect 3 Precious Elemental Fluids##38325|q 12510/1
		step
			goto Zul'Drak,42.18,77.54
			.collect 5 Mature Water-Poppy##38552|q 12597/1
			.info They look like larger and taller plants on the ground around this area.
			.info You can find them all around the Drak'Sotra Fields area.
		step
			goto Zul'Drak,42.18,77.54
			.kill 10 Drakkari Water Binder##28303|q 12562/1
			.info They look like trolls.
			.info You can find them all around the Drak'Sotra Fields area.
		step
			goto Zul'Drak,48.77,78.86
			.talk Captain Brandon##28042
			..turnin Something for the Pain##12597
			.' Complete Captain Brandon's Task|q 12596/1
		step
			goto Zul'Drak,40.18,68.93
			.talk Sub-Lieutenant Jax##28309
			..turnin The Drakkari Do Not Need Water Elementals!##12562
		step
			goto Zul'Drak,40.53,65.60
			.talk Hexxer Ubungo##28062
			..turnin Precious Elemental Fluids##12510
			..accept Mushroom Mixer##12514
		step
			goto Zul'Drak,41.33,65.13
			.talk Apprentice Pestlepot##28204
			..accept Gluttonous Lurkers##12527
		step
			goto Zul'Drak,43.53,59.14
			.' Interact with NPC: Zul'Drak Rat
			.info They look like small rats that run on the ground.
			.info You can find them all around the Drak'Agal area.
			.info To see the rats easier, enable the "Critters and Companions" option in the "Names" section of your Interface settings.
			.collect 5 Zul'Drak Rat##38380|n
			.info Collect 5 rats before using any on a Lurking Basilisk.
			.info You have to use 5 of them on each Lurking Basilisk.
			.use Zul'Drak Rat##38380
			.info use them on Lurking Basilisks.
			.info They look like large green lizard enemies.
			.' Interact with NPC: Gorged Lurking Basilisk
			.info They appear after you use 5 Zul'Drak Rats on a Lurking Basilisk.
			.collect 5 Basilisk Crystals##38382|q 12527/1
		step
			goto Zul'Drak,43.53,59.14
			.collect 20 Dead Thornwood##38563|q 12599/1
			.info They look like dark colored thorny roots on the ground.
			.info You can find them all around the Drak'Agal area.
		step
			goto Zul'Drak,43.53,59.14
			.collect 10 Muddlecap Fungus##38326|q 12514/1
			.info They look like groups of grey mushrooms on the ground.
			.info You can find them all around the Drak'Agal area.
		step
			goto Zul'Drak,48.15,63.89
			.talk Captain Grondel##28043
			..turnin Creature Comforts##12599
			.' Complete Captain Grondel's Task|q 12596/3
		step
			goto Zul'Drak,40.27,66.62
			.talk Commander Kunz##28039
			..turnin Pa'Troll##12596
		step
			goto Zul'Drak,40.53,65.60
			.talk Hexxer Ubungo##28062
			..turnin Mushroom Mixer##12514
			..accept Too Much of a Good Thing##12516
		step
			goto Zul'Drak,35.02,52.11
			.talk Alchemist Finklestein##28205
			..turnin Gluttonous Lurkers##12527
		step
			goto Zul'Drak,40.44,42.55
			.use Modified Mojo##38332
			.info Use it on the Prophet of Sseratus.
			.info He looks like a giant green snake.
			.info He will become weakened and non-elite.
			.kill Muddled Prophet of Sseratus##28151|q 12516/1
		step
			goto Zul'Drak,40.53,65.60
			.talk Hexxer Ubungo##28062
			..turnin Too Much of a Good Thing##12516
			..accept To the Witch Doctor##12623
		step
			goto Zul'Drak,44.08,64.56
			.' Kill enemies around this area
			.collect 10 Drakkari Offerings##38551|q 12615 |future
		step
			goto Zul'Drak,59.50,58.05
			.talk Witch Doctor Khufu##28479
			..turnin To the Witch Doctor##12623
			..accept Breaking Through Jin'Alai##12627
			..accept The Blessing of Zim'Torga##12615
		step
			goto Zul'Drak,59.15,56.20
			.talk Scalper Ahunae##28484
			..accept The Leaders at Jin'Alai##12622
		step
			goto Zul'Drak,59.56,57.33
			.' Interact with gameobject: Zim'Torga
			.info It looks like a stone statue.
			..turnin The Blessing of Zim'Torga##12615
		step
			goto Zul'Drak,57.62,61.70
			.' Interact with gameobject: Purple Cauldron
			.' Disturb the Purple Cauldron|q 12627/3
		step
			goto Zul'Drak,55.70,64.31
			.' Interact with gameobject: Green Cauldron
			.' Disturb the Green Cauldron|q 12627/2
		step
			goto Zul'Drak,57.19,65.32
			.' Interact with gameobject: Blue Cauldron
			.' Disturb the Blue Cauldron|q 12627/1
		step
			goto Zul'Drak,58.76,62.74
			.' Interact with gameobject: Red Cauldron
			.' Disturb the Red Cauldron|q 12627/4
		step
			goto Zul'Drak,57.34,63.49
			.' Kill Jin'Alai enemies around this area
			.info They look like trolls.
			.from Kutube'sa##28494
			.info He looks like a larger troll that appears next to his wooden totem.
			.info You will see him yell in your chat when he appears.
			.' Interact with gameobject: Treasure of Kutube'sa
			.info It appears on the ground after you kill him.
			.get Treasure of Kutube'sa##38637|q 12622/1
		step
			goto Zul'Drak,58.09,62.10
			.' Kill Jin'Alai enemies around this area
			.info They look like trolls.
			.from Gawanil##28495
			.info He looks like a larger troll that appears next to his wooden totem.
			.info You will see him yell in your chat when he appears.
			.' Interact with gameobject: Treasure of Gawanil
			.info It appears on the ground after you kill him.
			.get Treasure of Gawanil##38639|q 12622/2
		step
			goto Zul'Drak,56.43,64.90
			.' Kill Jin'Alai enemies around this area
			.info They look like trolls.
			.from Chulo the Mad##28496
			.info He looks like a larger troll that appears next to his wooden totem.
			.info You will see him yell in your chat when he appears.
			.' Interact with gameobject: Treasure of Chulo the Mad
			.info It appears on the ground after you kill him.
			.get Treasure of Chulo the Mad##38638|q 12622/3
		step
			goto Zul'Drak,59.50,58.05
			.talk Witch Doctor Khufu##28479
			..turnin Breaking Through Jin'Alai##12627
			..accept To Speak With Har'koa##12628
		step
			goto Zul'Drak,59.98,57.93
			.talk Chronicler To'kini##28527
			..accept Relics of the Snow Leopard Goddess##12635
		step
			goto Zul'Drak,59.15,56.20
			.talk Scalper Ahunae##28484
			..turnin The Leaders at Jin'Alai##12622
			..accept Sealing the Rifts##12640
		step
			goto Zul'Drak,59.39,56.41
			.talk Element-Tamer Dagoda##28480
			..accept The Frozen Earth##12639
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin To Speak With Har'koa##12628
			..accept But First My Offspring##12632
		step
			goto Zul'Drak,62.30,68.28
			.from Cursed Offspring of Har'koa##28404
			.info They look like dark colored leopards.
			.info You can find them all around the Altar of Har'koa area.
			.use Whisker of Har'koa##38676
			.info Use it on their corpses.
			.' Resurrect 7 Cursed Offsprings of Har'koa|q 12632/1
		step
			goto Zul'Drak,62.30,68.28
			.collect 10 Har'koan Relic##38677|q 12635/1
			.info They look like grey stone tablets on the ground.
			.info They are usually leaning against an object or a wall.
			.info You can find them all around the Altar of Har'koa area.
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin But First My Offspring##12632
			..accept Spirit of Rhunok##12642
		step
			goto Zul'Drak,59.97,57.93
			.talk Chronicler To'kini##28527
			..turnin Relics of the Snow Leopard Goddess##12635
			..accept Plundering Their Own##12650
			..accept Tails Up##13549
		step
			goto Zul'Drak,59.50,58.04
			.talk Witch Doctor Khufu##28479
			..accept The Blessing of Zim'Rhuk##12655
		step
			goto Zul'Drak,59.21,44.67
			.' Interact with gameobject: Zim'Rhuk
			.info Be careful to avoid the elite enemies as you travel here.
			..turnin The Blessing of Zim'Rhuk##12655
		step
			goto Zul'Drak,53.42,39.01
			.talk Spirit of Rhunok##28561
			..turnin Spirit of Rhunok##12642
			..accept My Prophet, My Enemy##12646
		step
			goto Zul'Drak,54.08,47.55
			.from Prophet of Rhunok##28442
			.info Underwater.
			.get Arctic Bear God Mojo##38695|q 12646/1
		step
			goto Zul'Drak,56.43,45.60
			.from Elemental Rift##28452+
			.info They look like large balls of electricity.
			.info You can find them all around the Drak'Mabwa area.
			.' Seal 7 Elemental Rifts|q 12640/1
		step
			goto Zul'Drak,56.43,45.60
			.from Frozen Earth##28411
			.info They look like grey rock elementals.
			.info You can find them all around the Drak'Mabwa area.
			.collect 7 Essence of the Frozen Earth##38681|q 12639/1
		step
			goto Zul'Drak,56.43,45.60
			.' Kill enemies around this area
			.info You can find them all around the Drak'Mabwa area.
			.collect 10 Drakkari Offerings##38551|q 12655
		step
			goto Zul'Drak,59.21,44.67
			.' Interact with gameobject: Zim'Rhuk
			.info Be careful to avoid the elite enemies as you travel here.
			..turnin The Blessing of Zim'Rhuk##12655
		step
			goto Zul'Drak,54.16,45.86
			.' Kill enemies around this area
			.info They look like trolls.
			.collect 7 Rhunokian Artifact##38700|q 12650/1
			.' You can find more around|at 53.46,38.08
		step
			goto Zul'Drak,53.42,39.01
			.talk Spirit of Rhunok##28561
			..turnin My Prophet, My Enemy##12646
			..accept An End to the Suffering##12647
		step
			goto Zul'Drak,53.38,35.79
			.from Rhunok's Tormentor##28575
			.info In the doorway of the building.
			.collect Tormentor's Incense##38696|q 12647 |future
		step
			goto Zul'Drak,53.51,34.94
			.use Tormentor's Incense##38696
			.info Use it next to Rhunok.
			.info He looks like a giant white bear laying on the ground inside the building.
			.kill Rhunok##28416|q 12647/1
		step
			goto Zul'Drak,53.42,39.01
			.talk Spirit of Rhunok##28561
			..turnin An End to the Suffering##12647
			..accept Back to Har'koa##12653
		step
			goto Zul'Drak,59.15,56.20
			.talk Scalper Ahunae##28484
			..turnin Sealing the Rifts##12640
			..accept Scalps!##12659
		step
			goto Zul'Drak,59.39,56.41
			.talk Element-Tamer Dagoda##28480
			..turnin The Frozen Earth##12639
			..accept Bringing Down Heb'Jin##12662
		step
			goto Zul'Drak,59.97,57.92
			.talk Chronicler To'kini##28527
			..turnin Plundering Their Own##12650
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin Back to Har'koa##12653
			..accept I Sense a Disturbance##12665
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			.' Tell her "Great and powerful Har'koa, please call for one of your children that it might stealthily carry me into the Altar of Quetz'lun."
			.' Ride with a Child of Har'koa |invehicle |q 12665
		step
			goto Zul'Drak,75.78,58.34
			.' Watch the dialogue
			.' Reveal Quetz'lun's Fate|q 12665/1
		step
			goto Zul'Drak,63.66,70.28
			.' Watch the dialogue
			.' Return to Har'koa |outvehicle |q 12665
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin I Sense a Disturbance##12665
			..accept Preparations for the Underworld##12666
		step
			goto Zul'Drak,62.30,68.28
			.from Claw of Har'koa##28402, Har'koan Subduer##28403
			.info They look like trolls.
			.info You can find them all around the Altar of Har'koa area.
			.get 8 Sacred Adornment##39150|q 12666/1
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin Preparations for the Underworld##12666
			..accept Seek the Wind Serpent Goddess##12667
		step
			goto Zul'Drak,73.82,68.55
			.use To'kini's Blowgun##44890
			.info Use it on Frost Leopards.
			.info They look like white leopards around this area.
			.info You can only use the blowgun while not in combat.
			.info They will become tranquilized and clickable.
			.' Interact with NPC: Frost Leopard
			.' Choose "Lift the frost leopard's tail to check if it's a male or a female."
			.info If they are male, they will attack you.
			.' Recover 3 Female Frost Leopards|q 13549/1
		step
			goto Zul'Drak,73.82,68.55
			.use To'kini's Blowgun##44890
			.info Use it on Icepaw Bears.
			.info They look like white bears around this area.
			.info You can only use the blowgun while not in combat.
			.info They will become tranquilized and clickable.
			.' Interact with NPC: Icepaw Bear
			.' Choose "Lift the icepaw bear's tail to check if it's a male or a female."
			.info If they are male, they will attack you.
			.info You can use Feign Death with your pet dismissed to avoid combat entirely.
			.' Recover 3 Female Icepaw Bears|q 13549/2
		step
			goto Zul'Drak,75.34,58.64
			.talk Quetz'lun's Spirit##28030
			..turnin Seek the Wind Serpent Goddess##12667
			..accept Setting the Stage##12672
		step
			goto Zul'Drak,74.04,58.65
			.collect 10 Underworld Power Fragment##39156|q 12672/1
			.info They look like large floating dark colored crystals.
			.info You can find them all around the Altar of Quetz'lun area.
			.info If you have trouble spotting them, you can remove the death screen effect to make it easier to see.
		step
			goto Zul'Drak,75.34,58.64
			.talk Quetz'lun's Spirit##28030
			..turnin Setting the Stage##12672
			..accept Foundation for Revenge##12668
		step
			goto Zul'Drak,74.04,58.65
			.from Quetz'lun Worshipper##28747
			.info They look like trolls.
			.info Kill them near Soul Fonts.
			.info They look like altars shaped like dragon heads.
			.info You can find them all around the Altar of Quetz'lun area.
			.info Make sure they have the "Soul Font Void" buff on them before you kill them.
			.' Kill 12 Trolls Near a Soul Font|q 12668/1
		step
			goto Zul'Drak,75.34,58.64
			.talk Quetz'lun's Spirit##28030
			..turnin Foundation for Revenge##12668
			..accept Hell Hath a Fury##12674
		step
			goto Zul'Drak,73.56,60.78
			.use Quetz'lun's Hexxing Stick##39158
			.info Use it on on High Priestess Tua-Tua.
			.from High Priestess Tua-Tua##28754
			.info Make sure she has the "Quetz'lun's Hex" buff before you kill her.
			.' Hex High Priestess Tua-Tua at Death|q 12674/2
		step
			goto Zul'Drak,74.53,57.39
			.use Quetz'lun's Hexxing Stick##39158
			.info Use it on on High Priest Mu'funu.
			.from High Priest Mu'funu##28752
			.info Make sure he has the "Quetz'lun's Hex" buff before you kill him.
			.' Hex High Priest Mu'funu at Death|q 12674/1
		step
			goto Zul'Drak,76.36,54.91
			.use Quetz'lun's Hexxing Stick##39158
			.info Use it on on High Priest Hawinni.
			.info He looks like a big brute that walks along this path around this area.
			.from High Priest Hawinni##28756
			.info Make sure he has the "Quetz'lun's Hex" buff before you kill him.
			.' Hex High Priest Hawinni at Death|q 12674/3
		step
			goto Zul'Drak,75.34,58.64
			.talk Quetz'lun's Spirit##28030
			..turnin Hell Hath a Fury##12674
			..accept One Last Thing##12675
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin One Last Thing##12675
			..accept Blood of a Dead God##12684
		step
			goto Zul'Drak,64.20,52.58
			.' Interact with gameobject: Heb'Jin's Drum
			.' Watch the dialogue
			.info Heb'Jin flies down to you on a bat.
			.use Bat Net##39041
			.info Use it on Heb'Jin's Bat to pin it to the ground.
			.kill Heb'Jin##28636|q 12662/1
		step
			goto Zul'Drak,64.09,54.17
			.from Heb'Drakkar Striker##28465, Heb'Drakkar Headhunter##28600
			.info They look like trolls, some riding bats.
			.info You can find them all around the Heb'Drakkar area.
			.use Ahunae's Knife##38731
			.info Use it on their corpses.
			.' Scalp 10 Heb'Drakkar Trolls|q 12659/1
		step
			goto Zul'Drak,73.44,50.50
			.from Blood of Mam'toth##28779
			.info They look like blue oozes.
			.info You can find them all around the Mam'toth Crater area.
			.get 7 Blood of Mam'toth##39167|q 12684/1
		step
			goto Zul'Drak,63.71,70.39
			.talk Har'koa##28401
			..turnin Blood of a Dead God##12684
			..accept You Reap What You Sow##12685
		step
			goto Zul'Drak,75.35,58.65
			.use Quetz'lun's Ritual##39187
			.info Use it next to Quetz'lun.
			.info Druids can not use this quest item if shapeshifted.
			.' Watch the dialogue
			.info He will become weakened and non-elite.
			.kill Drained Prophet of Quetz'lun##28795|q 12685/1
		step
			goto Zul'Drak,59.50,58.04
			.talk Witch Doctor Khufu##28479
			..turnin You Reap What You Sow##12685
		step
			goto Zul'Drak,59.97,57.93
			.talk Chronicler To'kini##28527
			..turnin Tails Up##13549
			..accept Hexed Caches##12709
		step
			goto Zul'Drak,60.25,57.73
			.talk Har'koa##28401
			..accept The Key of Warlord Zol'Maz##12712
			.' She can sometimes be found|at 63.71,70.39
		step
			goto Zul'Drak,59.40,56.41
			.talk Element-Tamer Dagoda##28480
			..turnin Bringing Down Heb'Jin##12662
			..accept Enchanted Tiki Warriors##12708
		step
			goto Zul'Drak,59.15,56.20
			.talk Scalper Ahunae##28484
			..turnin Scalps!##12659
			..accept Wooly Justice##12707
		step
			goto Zul'Drak,72.09,41.50
			.use Medallion of Mam'toth##39268
			.info Use it on an Enraged Mammoth around this area.
			.' Interact with NPC: Enraged Mammoth
			.' Ride an Enraged Mammoth |invehicle |q 12707
		step
			goto Zul'Drak,72.09,41.50
			.from Mam'toth Disciple##28861
			.info Use the abilities on your action bar.
			.info If your mammoth dies, use the item again on another mammoth to get a new one to ride.
			.' Trample 12 Mam'toth Disciples to Death|q 12707/1
		step
			goto Zul'Drak,68.20,35.37
			.from Drek'Maz##28918
			.info Inside the building.
			.collect Drek'Maz's Tiki##39315|q 12712 |future
		step
			goto Zul'Drak,67.94,32.72
			.from Yara##28917
			.info Inside the building.
			.collect Yara's Sword##39313|q 12712 |future
		step
			goto Zul'Drak,63.82,37.09
			.from Tiri##28916
			.info Inside the building.
			.collect Tiri's Magical Incantation##39316|q 12712 |future
		step
			.use Tiri's Magical Incantation##39316
			.collect Tiki Dervish Ceremony##39314|q 12712 |future
		step
			goto Zul'Drak,66.07,35.48
			.collect 12 Zol'Maz Stronghold Cache##39301|q 12709/1
			.info They look like yellow wooden boxes on the ground.
			.info You can find them all around the Zol'Maz Stronghold area.
			.use Tiki Hex Remover##39305
			.info You loot these from enemies around this area.
			.info Using these will remove Zol'Maz Stronghold Hexes you get from opening these caches.
		step
			goto Zul'Drak,66.07,35.48
			.from Enchanted Tiki Warrior##28882
			.info They look like floating wooden masks with spears.
			.info You can find them all around the Zol'Maz Stronghold area.
			.' Destroy 12 Enchanted Tiki Warriors|q 12708/1
		step
			goto Zul'Drak,66.16,33.47
			.use Tiki Dervish Ceremony##39314
			.info Near the doorway of the building.
			.' Watch the dialogue
			.from Warlord Zol'Maz##28902
			.get Key of Warlord Zol'Maz##39318|q 12712/1
		step
			goto Zul'Drak,69.99,20.96
			.talk Ha'wana##33025
			..accept Eggs for Dubra'Jin##13556
		step
			goto Zul'Drak,71.87,20.04
			.' Interact with NPC: Gundrak Raptor Egg
			.info They look like brown and white eggs with blue spots on them on the ground around this area.
			.info You can also kill any raptors you see while collecting eggs, but they have a very low drop rate on the quest item.
			.collect 12 Gundrak Raptor Egg##44921|q 13556/1
			.' You can find more around (1)|at 74.02,21.31
			.' You can find more around (2)|at 73.27,18.47
			.' You can find more around (3)|at 75.18,17.06
			.' You can find more around (4)|at 76.85,17.79
		step
			goto Zul'Drak,69.99,20.96
			.talk Ha'wana##33025
			..turnin Eggs for Dubra'Jin##13556
		step
			goto Zul'Drak,59.40,56.42
			.talk Element-Tamer Dagoda##28480
			..turnin Enchanted Tiki Warriors##12708
		step
			goto Zul'Drak,59.15,56.20
			.talk Scalper Ahunae##28484
			..turnin Wooly Justice##12707
		step
			goto Zul'Drak,59.97,57.92
			.talk Chronicler To'kini##28527
			..turnin Hexed Caches##12709
		step
			goto Zul'Drak,60.26,57.74
			.talk Har'koa##28401
			..turnin The Key of Warlord Zol'Maz##12712
			..accept Rampage##12721
		step
			goto Zul'Drak,78.6,25.2
			.use Key of Warlord Zol'Maz##39434
			.info Unlocks the anchors chaining Akali.
			.' Akali unfettered from his chains|q 12721/1
		step
			goto Zul'Drak,59.5,58.1
			.talk Witch Doctor Khufu##28479
			..turnin Rampage##12721
		step
			.' Congratulations! +101/100 quests for achievement "The Empire of Zul'Drak".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[76] Sholazar Basin",[[
author danaton
description This guide contain quest-chain (78) for Sholazar Basin location.
startlevel 76
		step
			goto Dalaran,68.55,42.05
			.talk Archmage Pentarus##28160
			..accept Where in the World is Hemet Nesingwary?##12521
		step
			goto Dalaran,68.55,42.05
			.talk Archmage Pentarus##28160
			.' Tell him "I'm ready to fly to Sholazar Basin."
			.' Begin Flying to Sholazar Basin |invehicle |q 12521
		step
			goto Sholazar Basin,39.11,56.87|n
			.' Fly to Sholazar Basin|goto Sholazar Basin,39.11,56.87,1|q 12521
		step
			goto Sholazar Basin,39.68,58.66
			.talk Monte Muzzleshot##27987
			..turnin Where in the World is Hemet Nesingwary?##12521
			..accept Welcome to Sholazar Basin##12489
		step
			goto Sholazar Basin,27.24,59.89
			.talk Debaar##28032
			..accept Venture Co. Misadventure##12524
		step
			goto Sholazar Basin,26.87,58.94
			.talk Chad##28497
			..accept It Could Be Anywhere!##12624
		step
			goto Sholazar Basin,27.10,58.64
			.talk Hemet Nesingwary##27986
			..turnin Welcome to Sholazar Basin##12489
		step
			goto Sholazar Basin,25.35,58.47
			.talk Weslex Quickwrench##28033
			..accept Need an Engine, Take an Engine##12522
		step
			goto Sholazar Basin,38.67,56.73
			.collect Flying Machine Engine##38334|q 12522/1
			.info Before the crashed plane.
		step
			goto Sholazar Basin,35.55,47.42
			.talk Engineer Helice##28787
			..accept Engineering a Disaster##12688
		step
			goto Sholazar Basin,37.39,50.54
			.' Escort Engineer Helice Out of Swindlegrin's Dig|q 12688/1
			.info Follow Engineer Helice and protect her as she walks.
		step
			goto Sholazar Basin,35.10,47.89
			.' Kill 15 Venture Company Members|q 12524/1
		step
			goto 35.10,47.89
			.from Venture Co. Excavator##28123, Venture Co. Ruffian##28124
			.collect Golden Engagement Ring##38642|q 12624/1
		step
			goto Sholazar Basin,26.87,58.94
			.talk Chad##28497
			..turnin It Could Be Anywhere!##12624
		step
			goto Sholazar Basin,27.10,58.64
			.talk Hemet Nesingwary##27986
			..turnin Engineering a Disaster##12688
		step
			goto Sholazar Basin,27.24,59.89
			.talk Debaar##28032
			..turnin Venture Co. Misadventure##12524
			..accept Wipe That Grin Off His Face##12525
		step
			goto Sholazar Basin,25.35,58.47
			.talk Weslex Quickwrench##28033
			..turnin Need an Engine, Take an Engine##12522
			..accept Have a Part, Give a Part##12523
		step
			goto Sholazar Basin,35.97,50.34
			.kill Meatpie##28188|q 12525/2
			.info He looks like a blue ogre that walks up and down this platform, and around this area.
		step
			goto Sholazar Basin,35.67,50.16
			.kill Foreman Swindlegrin##28186|q 12525/1
			.info He walks around on top of this platform.
		step
			goto Sholazar Basin,35.10,47.89
			.collect 7 Venture Co. Spare Parts##38349|q 12523/1
			.info They look like metal assorted parts on the ground around this area.
		step
			goto Sholazar Basin,27.24,59.89
			.talk Debaar##28032
			..turnin Wipe That Grin Off His Face##12525
		step
			goto Sholazar Basin,25.35,58.47
			.talk Weslex Quickwrench##28033
			..turnin Have a Part, Give a Part##12523
		step
			goto Sholazar Basin,25.41,58.47
			.talk Professor Calvert##28266
			..accept Aerial Surveillance##12696
		step
			goto Sholazar Basin,26.67,59.03
			.talk Buck Cantwell##28031
			..accept Dreadsaber Mastery: Becoming a Predator##12549
		step
			goto Sholazar Basin,27.09,58.65
			.talk Hemet Nesingwary##27986
			..accept Rhino Mastery: The Test##12520
		step
			goto Sholazar Basin,27.08,59.90
			.talk Drostan##28328
			..accept Kick, What Kick?##12589
		step
			goto Sholazar Basin,27.08,59.90
			.use RJR Rifle##38573
			.info Use it on Lucky Wilhelm nearby.
			.info He looks like a gnome with an apple on his head.
			.info Use th RJR Rifle repeatedly until you hit the apple.
			.' Shoot the Apple on Lucky Wilhelm's Head|q 12589/1
		step
			goto Sholazar Basin,27.08,59.90
			.talk Drostan##28328
			..turnin Kick, What Kick?##12589
			..accept The Great Hunter's Challenge##12592
		step
			goto Sholazar Basin,25.23,53.59
			.kill 15 Dreadsaber##28001|q 12549/1
			.kill 15 Shardhorn Rhino##28009|q 12520/1
		step
			goto Sholazar Basin,26.67,59.03
			.talk Buck Cantwell##28031
			..turnin Dreadsaber Mastery: Becoming a Predator##12549
			..accept Dreadsaber Mastery: Stalking the Prey##12550
		step
			goto Sholazar Basin,27.09,58.64
			.talk Hemet Nesingwary##27986
			..turnin Rhino Mastery: The Test##12520
			..accept Rhino Mastery: The Chase##12526
		step
			goto Sholazar Basin,26.70,59.56
			.talk Korg the Cleaver##28046
			..accept A Steak Fit for a Hunter##12804
		step
			goto Sholazar Basin,26.78,60.07
			.talk Grimbooze Thunderbrew##29157
			..accept Some Make Lemonade, Some Make Liquor##12634
		step
			goto Sholazar Basin,27.24,59.89
			.talk Debaar##28032
			..accept Crocolisk Mastery: The Trial##12551
		step
			goto Sholazar Basin,25.59,66.54
			.talk Oracle Soo-rahm##28191
			..turnin Rhino Mastery: The Chase##12526
			..accept An Offering for Soo-rahm##12543
		step
			goto Sholazar Basin,28.47,67.06
			.from Longneck Grazer##28129+
			.get 5 Longneck Grazer Steak##40394|q 12804/1
		step
			goto Sholazar Basin,49.95,61.53
			.talk Pilot Vic##28746
			..turnin Aerial Surveillance##12696
			..accept An Embarassing Incident##12699
			..accept Force of Nature##12803
		step
			goto Sholazar Basin,50.48,62.13
			.talk Tamara Wobblesprocket##28568
			..accept The Part-time Hunter##12654
		step
			.use Vic's Emergency Air Tank##40390
			.' Gain Water Breathing |havebuff Spell_Frost_ManaRecharge |q 12699
		step
			goto Sholazar Basin,48.31,63.37
			.' Interact with gameobject: Raised Mud
			.info They look like piles of dirt underwater in this lake.
			.info This might take what feels like an eternity to finally find Vic's Keys.
			.collect Vic's Keys##39264|q 12699/1
		step
			goto Sholazar Basin,49.95,61.53
			.talk Pilot Vic##28746
			..turnin An Embarassing Incident##12699
			..accept Reconnaissance Flight##12671
		step
			goto Sholazar Basin,49.95,61.53|n
			.' Begin Flying the Flying Machine |invehicle |q 12671
		step
			goto Sholazar Basin,70.56,37.09|n
			.' Watch the dialogue.
			.info Use the "Air-to-Air Rockets" ability on your action bar to kill the bats that attack.
			.info You don't need to target the bats.
			.' Scout the Scourge|goto Sholazar Basin,70.56,37.09,1|q 12671
		step
			goto Sholazar Basin,50.05,61.36|n
			.' Complete the Reconnaissance Flight|q 12671/1
			.info Use the "Land Flying Machine" ability on your action bar at this location.
			.info Get close to the ground inside the ring of blue crystals.
		step
			goto Sholazar Basin,49.95,61.52
			.talk Pilot Vic##28746
			..turnin Reconnaissance Flight##12671
		step
			goto Sholazar Basin,50.52,77.22
			.from Pitch##28097
			.get Pitch's Remains##38703|q 12654/1
		step
			goto Sholazar Basin,50.53,76.59
			.talk Tracker Gekgek##28095
			..accept Playing Along##12528
		step
			goto Sholazar Basin,50.88,72.82
			.kill 15 Mangal Crocolisk##28002|q 12551/1
		step
			goto Sholazar Basin,50.88,72.82
			.from Emperor Cobra##28011
			.get 5 Intact Cobra Fang##38505|q 12543/1
		step
			goto Sholazar Basin,50.88,72.82
			.' Kill 60 Game Animals|q 12592/1
		step
			goto Sholazar Basin,50.05,73.1
			.' Interact with gameobject: Sturdy Vine
			.info They look like brown vines that hang from trees around this area.
			.talk Adventurous Dwarf##28604
			.info Rarely, a Dwarf will fall down.
			.info Ask them for an orange.
			.collect Orange##38656|q 12634/1
			.collect 2 Banana Bunch##38653|q 12634/2
			.collect Papaya##38655|q 12634/3
		step
			goto Sholazar Basin,33.1,40.55
			.' Interact with gameobject: Dreadsaber Track
			.info They look like brown paw prints on the ground around this area.
			.' Identify 3 Shango Tracks|q 12550/1
		step
			goto Sholazar Basin,26.67,59.03
			.talk Buck Cantwell##28031
			..turnin Dreadsaber Mastery: Stalking the Prey##12550
			..accept Dreadsaber Mastery: Ready to Pounce##12558
		step
			goto Sholazar Basin,26.70,59.56
			.talk Korg the Cleaver##28046
			..turnin A Steak Fit for a Hunter##12804
		step
			goto Sholazar Basin,26.78,60.07
			.talk Grimbooze Thunderbrew##29157
			..turnin Some Make Lemonade, Some Make Liquor##12634
			..accept Still At It##12644
		step
			goto Sholazar Basin,27.1,59.9
			.talk Drostan##28328
			..turnin The Great Hunter's Challenge##12592
		step
			goto Sholazar Basin,27.24,59.89
			.talk Debaar##28032
			..turnin Crocolisk Mastery: The Trial##12551
			..accept Crocolisk Mastery: The Plan##12560
		step
			goto Sholazar Basin,26.67,59.99
			.talk "Tipsy" McManus##28566
			.' Tell him "I'm ready to start the distillation, uh, Tipsy."
			.' Perform the Distillation
			.info Stand here, you can reach all of the objects you need to click from here.
			.info Click the items on the ground or on the machine that he yells at you during the process, it's random.
			.collect Thunderbrew's Jungle Punch##38688|q 12644/1
			.info It looks like a wooden barrel that appears near you after you complete the distillation.
		step
			goto Sholazar Basin,26.78,60.07
			.talk Grimbooze Thunderbrew##29157
			..turnin Still At It##12644
			..accept The Taste Test##12645
		step
			goto Sholazar Basin,27.4,59.4
			.use Jungle Punch Sample##38697
			.info Use it on Hadrius Harlowe.
			.' Watch the dialogue
			.' Complete Hadrius' Taste Test|q 12645/2
		step
			goto Sholazar Basin,27.10,58.64
			.use Jungle Punch Sample##38697
			.info Use it on Hemet Nesingwary.
			.' Watch the dialogue
			.' Complete Hemet's Taste Test|q 12645/1
		step
			goto Sholazar Basin,25.59,66.51
			.talk Oracle Soo-rahm##28191
			..turnin An Offering for Soo-rahm##12543
			..accept The Bones of Nozronn##12544
		step
			goto Sholazar Basin,26.10,71.56
			.use Soo-rahm's Incense##38519
			.' Watch the dialogue.
			.' Reveal the Location of Farunn|q 12544/1
		step
			goto Sholazar Basin,27.10,58.65
			.talk Hemet Nesingwary##27986
			..turnin The Bones of Nozronn##12544
			..accept Rhino Mastery: The Kill##12556
		step
			goto Sholazar Basin,34.13,32.92
			.from Shango##28297
			.info He looks like an orange and black tiger that walks around this area.
			.get Shango's Pelt##38523|q 12558/1
		step
			goto Sholazar Basin,47.4,43.9
			.from Farunn##28288
			.info He looks like a big grey rhino that walks around this area.
			.get Farunn's Horn##38522|q 12556/1
		step
			goto Sholazar Basin,37.39,41.82
			.collect 5 Sandfern##38553|q 12560/1
			.info They look like leafy green plants on the ground along the beach around this area.
		step
			goto Sholazar Basin,50.48,62.13
			.use Jungle Punch Sample##38697
			.info Use it on Tamara Wobblesprocket.
			.' Watch the dialogue.
			.' Complete Tamara's Taste Test|q 12645/3
		step
			goto Sholazar Basin,50.48,62.12
			.talk Tamara Wobblesprocket##28568
			..turnin The Part-time Hunter##12654
		step
			goto Sholazar Basin,26.67,59.03
			.talk Buck Cantwell##28031
			..turnin Dreadsaber Mastery: Ready to Pounce##12558
		step
			goto Sholazar Basin,27.09,58.64
			.talk Hemet Nesingwary##27986
			..turnin Rhino Mastery: The Kill##12556
		step
			goto Sholazar Basin,26.78,60.07
			.talk Grimbooze Thunderbrew##29157
			..turnin The Taste Test##12645
		step
			goto Sholazar Basin,27.25,59.89
			.talk Debaar##28032
			..turnin Crocolisk Mastery: The Plan##12560
			..accept Crocolisk Mastery: The Ambush##12569
		step
			goto Sholazar Basin,46.53,63.45
			.use Sandfern Disguise##38564
			.from Bushwhacker##28317
			.get Bushwhacker's Jaw##38559|q 12569/1
		step
			goto Sholazar Basin,54.99,69.12
			.talk High-Shaman Rakjak##28082
			..turnin Playing Along##12528
			..accept The Ape Hunter's Slave##12529
		step
			.use Goregek's Shackles##38619
			.talk Goregek the Gorilla Hunter##28214
			..accept Tormenting the Softknuckles##12530
		step
			goto Sholazar Basin,60.63,70.58
			.kill 8 Hardknuckle Forager##28098|q 12529/1
		step
			goto Sholazar Basin,66.73,73.86
			.use Softknuckle Poker##38467
			.info Use it on Softknuckles around this area.
			.info They look like baby gorillas around this area.
			.kill Hardknuckle Matriarch##28213|q 12530/1
			.info She will eventually appear and run around this area after you poke enough Softknuckles.
			.info You will see a message in your chat when she appears.
		step
			goto Sholazar Basin,66.73,73.86
			.kill 6 Hardknuckle Charger##28096|q 12529/2
		step
			goto Sholazar Basin,55.00,69.12
			.talk High-Shaman Rakjak##28082
			..turnin The Ape Hunter's Slave##12529
			..turnin Tormenting the Softknuckles##12530
			..accept The Wasp Hunter's Apprentice##12533
		step
			goto Sholazar Basin,55.49,69.68
			.talk Elder Harkek##28138
			..accept The Sapphire Queen##12534
		step
			goto Sholazar Basin,57.15,79.22
			.from Sapphire Hive Queen##28087
			.info Inside the cave.
			.get Stinger of the Sapphire Queen##38477|q 12534/1
		step
			goto Sholazar Basin,60.94,78.55
			.kill 6 Sapphire Hive Wasp##28086|q 12533/1
			.kill 9 Sapphire Hive Drone##28085|q 12533/2
		step
			goto Sholazar Basin,54.99,69.11
			.talk High-Shaman Rakjak##28082
			..turnin The Wasp Hunter's Apprentice##12533
			..turnin The Sapphire Queen##12534
		step
			goto Sholazar Basin,55.50,69.68
			.talk Elder Harkek##28138
			..accept Flown the Coop!##12532
		step
			goto Sholazar Basin,57.47,70.77
			.use Chicken Net##38689
			.info Use it on Chicken Escapees around this area.
			.info They look like tiny chickens running on the ground around this area.
			.' Interact with NPC: Chicken Escapee
			.info They will stop running after you use the Chicken Net.
			.collect 12 Captured Chicken##38483|q 12532/1
		step
			goto Sholazar Basin,55.50,69.69
			.talk Elder Harkek##28138
			..turnin Flown the Coop!##12532
			..accept The Underground Menace##12531
		step
			goto Sholazar Basin,54.99,69.11
			.talk High-Shaman Rakjak##28082
			..accept Mischief in the Making##12535
		step
			goto Sholazar Basin,51.52,86.50
			.from Serfex the Reaver##28083
			.info He looks like a pile of jumping rocks moving on the ground along the river bank around this area.
			.get Claw of Serfex##38473|q 12531/1
		step
			goto Sholazar Basin,55.88,85.90
			.collect 8 Skyreach Crystal Cluster##38504|q 12535/1
			.info They look like clusters of white crystals on the ground along the river bank around this area.
		step
			goto Sholazar Basin,54.99,69.11
			.talk High-Shaman Rakjak##28082
			..turnin The Underground Menace##12531
			..turnin Mischief in the Making##12535
			..accept A Rough Ride##12536
		step
			goto Sholazar Basin,57.28,68.38
			.talk Captive Crocolisk##28298
			.' Tell him "You look safe enough... let's do this."
			.' Ride the Captive Crocolish |invehicle |q 12536
		step
			goto Sholazar Basin,46.25,39.47|n
			.' Travel to Mistwhisper Refuge|q 12536/1
		step
			.use Zepik's Hunting Horn##38512
			.info Use this if Zepik is not next to you.
			.talk Zepik the Gorloc Hunter##28668
			..turnin A Rough Ride##12536
			..accept Lightning Definitely Strikes Twice##12537
			..accept The Mist Isn't Listening##12538
		step
			goto Sholazar Basin,45.38,37.19
			.use Skyreach Crystal Clusters##38510
			.' Interact with gameobject: Arranged Crystal Formation
			.' Sabotage the Mistwhisper Weather Shrine|q 12537/1
		step
			.use Zepik's Hunting Horn##38512
			.info Use this if Zepik is not next to you.
			.talk Zepik the Gorloc Hunter##28216
			..turnin Lightning Definitely Strikes Twice##12537
		step
			goto Sholazar Basin,44.41,36.67
			.' Kill Mistwhisper enemies around this area.
			.' Slay 12 Mistwhisper Gorlocs|q 12538/1
		step
			.use Zepik's Hunting Horn##38512
			.info Use this if Zepik is not next to you.
			.talk Zepik the Gorloc Hunter##28216
			..turnin The Mist Isn't Listening##12538
			..accept Hoofing It##12539
		step
			goto Sholazar Basin,27.25,59.89
			.talk Debaar##28032
			..turnin Crocolisk Mastery: The Ambush##12569
		step
			goto Sholazar Basin,27.10,58.65
			.talk Hemet Nesingwary##27986
			..accept In Search of Bigger Game##12595
		step
			goto Sholazar Basin,42.34,28.70
			.talk Dorian Drakestalker##28376
			..turnin In Search of Bigger Game##12595
			..accept Sharpening Your Talons##12603
			..accept Securing the Bait##12605
		step
			goto Sholazar Basin,46.62,26.61
			.from Primordial Drake Egg##28408
			.info They look like white eggs on the ground next to trees around this area.
			.' Interact with NPC: Primordial Hatchling
			.info They appear after you kill the eggs.
			.get 6 Primordial Hatchling##38600|q 12605/1
		step
			goto Sholazar Basin,46.62,26.61
			.kill 6 Primordial Drake##28378|q 12603/1
			.info They walk on the ground and fly in the air around this area.
		step
			goto Sholazar Basin,42.34,28.70
			.talk Dorian Drakestalker##28376
			..turnin Sharpening Your Talons##12603
			..turnin Securing the Bait##12605
		step
			goto Sholazar Basin,42.07,28.66
			.talk Colvin Norrington##28771
			..accept Reagent Agent##12681
			..accept Burning to Help##12683
		step
			goto Sholazar Basin,42.11,28.89
			.talk Zootfizzle##28374
			..accept A Mammoth Undertaking##12607
			..accept My Pet Roc##12658
		step
			goto Sholazar Basin,40.95,40.76
			.from Bittertide Hydra##28003
			.info They will spit Hydra Sputum on you.
			.use Sample Container##39164
			.info Use it when you have the Hydra Sputum debuff.
			.get 5 Sputum Samples|q 12683/1
			.kill 5 Bittertide Hydra##28003|q 12683/2
		step
			goto Sholazar Basin,43.02,33.23
			.use Mammoth Harness##38627
			.info Use it on a Shattertusk Mammoth around this area.
			.info It won't work on Shattertusk Bulls.
			.' Ride a Shattertusk Mammoth |invehicle |q 12607
		step
			goto Sholazar Basin,42.17,29.07
			.' Deliver the Shattertusk Mammoth|q 12607/1
			.info Use the "Hand Over Mammoth" ability on your action bar.
		step
			goto Sholazar Basin,42.11,28.90
			.talk Zootfizzle##28374
			..turnin A Mammoth Undertaking##12607
		step
			goto Sholazar Basin,42.07,28.67
			.talk Colvin Norrington##28771
			..turnin Burning to Help##12683
		step
			goto Sholazar Basin,42.34,28.70
			.talk Dorian Drakestalker##28376
			..accept Post-partum Aggression##12614
		step
			goto Sholazar Basin,47.38,21.14
			.kill Broodmother Slivina##28467|q 12614/1
			.info She walks around this small area.
			.info Use the abilities on your action bar.
			.info Hemet Nesingway rides with you and places traps on the ground.
			.info Make Broodmother Slivina run over the traps to cause extra damage.
		step
			.' Stop Riding the Mammoth |outvehicle |q 12614
			.info Click the red arrow on your action bar.
		step
			goto Sholazar Basin,56.63,26.88
			.collect 7 Roc Egg##38705|q 12658/1
			.info They look like white eggs in nests on the ground around this area.
		step
			goto Sholazar Basin,56.63,26.88
			.from Goretalon Rocs##28004
			.info They perch on bones and fly in the air around this area.
			.get 5 Twisted Roc Talon##39161|q 12681/1
		step
			goto Sholazar Basin,42.34,28.70
			.talk Dorian Drakestalker##28376
			..turnin Post-partum Aggression##12614
		step
			goto Sholazar Basin,42.07,28.67
			.talk Colvin Norrington##28771
			..turnin Reagent Agent##12681
		step
			goto Sholazar Basin,42.11,28.90
			.talk Zootfizzle##28374
			..turnin My Pet Roc##12658
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Force of Nature##12803
			..accept An Issue of Trust##12561
		step
			goto Sholazar Basin,70.09,51.38
			.kill 6 Blighted Corpse##28101|q 12561/1
			.kill 10 Bonescythe Ravager##28108|q 12561/2
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin An Issue of Trust##12561
			..accept Returned Sevenfold##12611
		step
			goto Sholazar Basin,66.70,44.12
			.info Deathbolts look like a purple shadow spell when he's casting it.
			.use Freya's Ward##38657
			.info Use it on Thalgran Blightbringer when he begins casting Deathbolts to reflect them back at him.
			.kill Thalgran Blightbringer##28443|q 12611/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Returned Sevenfold##12611
			..accept The Fallen Pillar##12612
			..accept Salvaging Life's Strength##12805
		step
			goto Sholazar Basin,65.08,60.31
			.talk Cultist Corpse##28464
			..turnin The Fallen Pillar##12612
			..accept Cultist Incursion##12608
		step
			goto Sholazar Basin,68.95,59.50
			.from Lifeblood Elemental##29124
			.use Lifeblood Gem##40397
			.info Use it on their corpses.
			.' Recover 8 Lifeblood Energy|q 12805/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Cultist Incursion##12608
			..turnin Salvaging Life's Strength##12805
			..accept Exterminate the Intruders##12617
			..accept Weapons of Destruction##12660
		step
			goto Sholazar Basin,56.31,41.74
			.' Interact with gameobject: Unstable Explosives
			.info They look like big metal spiked balls on the ground around this area.
			.' Destroy 4 Unstable Explosives|q 12660/1
		step
			goto Sholazar Basin,56.31,41.74
			.kill 8 Cultist Infiltrator##28373|q 12617/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Exterminate the Intruders##12617
			..turnin Weapons of Destruction##12660
			..accept The Lifewarden's Wrath##12620
		step
			goto Sholazar Basin,50.07,37.44
			.use Freya's Horn##38684
			.info Use it at the top of this huge pillar.
			.' Release The Lifewarden's Wrath|q 12620/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin The Lifewarden's Wrath##12620
			..accept Freya's Pact##12621
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			.' Tell her "I want to stop the Scourge as much as you do. How can I help?"
			.' Receive Freya's Pact|q 12621/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Freya's Pact##12621
			..accept Powering the Waygate - The Maker's Perch##12559
		step
			goto Sholazar Basin,26.2,35.5
			.' Interact with gameobject: Activation Switch Gamma
			.info Inside the building.
			.' Engage the Activation Switch Gamma|q 12559/1
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Powering the Waygate - The Maker's Perch##12559
			..accept Powering the Waygate - The Maker's Overlook##12613
		step
			goto Sholazar Basin,80.38,55.82
			.' Interact with gameobject: Timeworn Coffer
			.info Up on the balcony of the building.
			..accept A Timeworn Coffer##12691
		step
			goto Sholazar Basin,89.07,52.90
			.' Interact with gameobject: Activation Switch Theta
			.info Inside the building.
			.' Engage the Activation Switch Theta|q 12613/1
		step
			goto Sholazar Basin,88.49,52.98
			.from Sholazar Guardian##28069
			.info Inside the building.
			.get Huge Stone Key##39227|q 12691/1
		step
			goto Sholazar Basin,80.38,55.82
			.' Interact with gameobject: Timeworn Coffer
			.info Up on the balcony of the building.
			..turnin A Timeworn Coffer##12691
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Powering the Waygate - The Maker's Overlook##12613
			..accept The Etymidian##12548
		step
			goto Sholazar Basin,40.35,83.08|n
			.' Enter the Waygate
			.' Teleport to Un'Goro Crater|goto Un'Goro Crater,50.40,7.92,1|q 12548
		step
			goto Un'Goro Crater,47.37,9.22
			.talk The Etymidian##28092
			..turnin The Etymidian##12548
			..accept The Activation Rune##12547
		step
			goto Un'Goro Crater,48.17,2.50
			.from High Cultist Herenn##28601
			.info Inside the building.
			.get Omega Rune##38708|q 12547/1
		step
			goto Un'Goro Crater,47.37,9.22
			.talk The Etymidian##28092
			..turnin The Activation Rune##12547
			..accept Back Through the Waygate##12797
		step
			goto Un'Goro Crater,50.48,7.80|n
			.' Enter the Waygate
			.' Teleport to Sholazar Basin|goto Sholazar Basin,40.25,82.73,1|q 12797
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Back Through the Waygate##12797
			..accept Reclamation##12546
		step
			goto Sholazar Basin,68.36,39.52
			.use Omega Rune##38709
			.' Call Forth the Etymidian |invehicle |q 12546
		step
			goto Sholazar Basin,69.92,38.52
			.kill Bythius the Flesh-Shaper##28212|q 12546/2
			.info He looks like a big abomination that walks around this area.
			.info Use the abilities on your action bar.
		step
			goto Sholazar Basin,70.06,37.23
			.kill Urgreth of the Thousand Tombs##28103|q 12546/3
			.info Use the abilities on your action bar.
		step
			goto Sholazar Basin,69.98,34.03
			.kill Hailscorn##28208|q 12546/4
			.info Use the abilities on your action bar.
		step
			goto Sholazar Basin,69.75,37.77
			.' Kill enemies around this area.
			.info Use the abilities on your action bar.
			.' Destroy 200 Scourge Minions|q 12546/1
		step
			.' Release the Etymidian |outvehicle |q 12546
			.info Click the red arrow on your action bar.
		step
			goto Sholazar Basin,64.55,48.61
			.talk Avatar of Freya##27801
			..turnin Reclamation##12546
		step
			goto Sholazar Basin,55.00,69.12
			.talk High-Shaman Rakjak##28082
			..turnin Hoofing It##12539
			..accept Just Following Orders##12540
		step
			goto Sholazar Basin,55.70,64.98
			.talk Injured Rainspeaker Oracle##28217
			.' Choose <Reach down and pull the Injured Rainspeaker Oracle to its feet.>
			.kill Ravenous Mangal Crocolisk##28325|n
			.' Locate the Injured Rainspeaker Oracle|q 12540/1
		step
			goto Sholazar Basin,55.70,64.98
			.talk Injured Rainspeaker Oracle##28217
			..turnin Just Following Orders##12540
			..accept Fortunate Misunderstandings##12570
		step
			goto Sholazar Basin,55.7,64.9
			.talk Injured Rainspeaker Oracle##28217
			.' Tell him "I am ready to travel to your village now."
			.' Begin Escorting the Injured Rainspeaker Oracle|goto Sholazar Basin,54.28,61.52,1|q 12570
		step
			goto Sholazar Basin,53.17,57.24
			.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy|q 12570/1
			.info Follow the Injured Rainspeaker Oracle and protect him as he walks.
		step
			goto Sholazar Basin,54.59,56.36
			.talk High-Oracle Soo-say##28027
			..turnin Fortunate Misunderstandings##12570
			..accept Make the Bad Snake Go Away##12571
		step
			.use Lafoo's Bug Bag##38622
			.info Use this if Lafoo is not next to you.
			.talk Lafoo##28120
			..accept Gods like Shiny Things##12572
		step
			goto Sholazar Basin,58.47,54.38
			.kill Venomtip##28358|q 12571/2
			.info He looks like a purple snake that walks around this area.
		step
			goto Sholazar Basin,54.94,51.75
			.use Lafoo's Bug Bag##38622
			.info Use this if Lafoo is not next to you.
			.collect 6 Shiny Treasures##38575|q 12572/1
			.info Walk next to the twinkles of light on the ground around this area.
			.info Lafoo will dig next to the twinkles of light.
			.info Lafoo won't always dig up Sparkling Treasure, sometimes it's different items or some animal that runs away.
		step
			goto Sholazar Basin,54.94,51.75
			.kill 10 Emperor Cobra##28011|q 12571/1
		step
			goto Sholazar Basin,54.59,56.35
			.talk High-Oracle Soo-say##28027
			..turnin Make the Bad Snake Go Away##12571
			..turnin Gods like Shiny Things##12572
			..accept Making Peace##12573
		step
			goto Sholazar Basin,51.30,64.63
			.talk Shaman Vekjik##28315
			.' Tell him "Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."
			.' Extend the Peace Offering to Shaman Vekjik|q 12573/1
		step
			goto Sholazar Basin,54.59,56.35
			.talk High-Oracle Soo-say##28027
			..turnin Making Peace##12573
			..accept Back So Soon?##12574
		step
			goto Sholazar Basin,42.15,38.65
			.talk Mistcaller Soo-gan##28114
			..turnin Back So Soon?##12574
			..accept The Lost Mistwhisper Treasure##12575
			..accept Forced Hand##12576
		step
			goto Sholazar Basin,41.65,19.53
			.collect Mistwhisper Treasure##38601|q 12575/2
		step
			goto Sholazar Basin,41.28,19.96
			.' Watch the dialogue
			.kill Warlord Tartek##28105|q 12575/1
		step
			goto Sholazar Basin,40.96,22.40
			.kill 8 Frenzyheart Spearbearer##28080|q 12576/1
			.kill 6 Frenzyheart Scavenger##28081|q 12576/2
		step
			goto Sholazar Basin,42.15,38.65
			.talk Mistcaller Soo-gan##28114
			..turnin The Lost Mistwhisper Treasure##12575
			..turnin Forced Hand##12576
			..accept Home Time!##12577
		step
			goto Sholazar Basin,54.59,56.35
			.talk High-Oracle Soo-say##28027
			..turnin Home Time!##12577
			..accept The Angry Gorloc##12578
		step
			goto Sholazar Basin,54.59,56.35
			.talk High-Oracle Soo-say##28027
			.' Ask him "I need to find Moodle, do you have his stress ball?"
			.collect Moodle's Stress Ball##38624|q 12578
		step
			goto Sholazar Basin,75.92,53.68
			.' Travel to Mosswalker Village|q 12578/1
		step
			.use Moodle's Stress Ball##38624
			.info Use this if Moodle is not next to you.
			.talk Moodle##28122
			..turnin The Angry Gorloc##12578
			..accept Lifeblood of the Mosswalker Shrine##12579
			..accept The Mosswalker Savior##12580
		step
			goto Sholazar Basin,75.97,51.12
			.talk Mosswalker Victim##28113+
			.' Choose <Check for a pulse...>
			.info They won't all live to be rescued.
			.' Rescue 6 Mosswalker Victims|q 12580/1
		step
			.use Moodle's Stress Ball##38624
			.info Use this if Moodle is not next to you.
			.talk Moodle##28122
			..turnin The Mosswalker Savior##12580
		step
			goto Sholazar Basin,72.08,54.57
			.collect 10 Lifeblood Shard##39063|q 12579/1
			.info They look like small red crystals on the ground around this area.
		step
			.use Moodle's Stress Ball##38624
			.info Use this if Moodle is not next to you.
			.talk Moodle##28122
			..turnin Lifeblood of the Mosswalker Shrine##12579
			..accept A Hero's Burden##12581
		step
			goto Sholazar Basin,72.12,57.61
			.kill Artruis the Heartless##28659|q 12581/1
			.info Inside the cave.
			.info While fighting him, you will need to kill 1 of the 2 enemies encased in ice nearby before you can kill him.
			.info Kill Jaloot if you want to be friendly with the Frenzyheart Tribe.
			.info Kill Zepik the Gorloc Hunter if you want to be friendly with the Oracles.
		step
			goto Sholazar Basin,72.1,57.7
			.' Interact with gameobject: Artruis' Phylactery
			.info Inside the cave.
			.info It appears after you kill Artruis the Heartless.
			..turnin A Hero's Burden##12581
		step
			.' Congratulations! +78/75 quests for achievement "Into the Basin".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[77] The Storm Peaks",[[
author danaton
description This guide contain quest-chain (106/100) for The Storm Peaks location.
startlevel 77
		step
			goto Stormwind City,61.2,70.7
			.talk Auctioneer Jaxon##15659
			.buy 5 Frostweave Cloth##33470|q 12930 |future
			.info You need to keep these for a later quest.
		step
			goto Dalaran,31.27,49.6
			.talk Rin Duoctane##30490
			..accept Luxurious Getaway!##12853
		step
			goto The Storm Peaks,41.02,86.44
			.talk Jeer Sparksocket##29431
			..turnin Luxurious Getaway!##12853
			..accept Clean Up##12818
		step
			goto The Storm Peaks,41.15,86.15
			.talk Gretchen Fizzlespark##29473
			..accept They Took Our Men!##12843
			..accept Equipment Recovery##12844
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			..accept Reclaimed Rations##12827
			..accept Expression of Gratitude##12836
		step
			goto The Storm Peaks,39.39,86.36
			.collect 10 Charred Wreckage##40603|q 12818/1
			.info They look like various shaped metal parts on the ground around this area.
		step
			goto The Storm Peaks,41.02,86.44
			.talk Jeer Sparksocket##29431
			..turnin Clean Up##12818
			..accept Just Around the Corner##12819
		step
			goto The Storm Peaks,35.10,87.78
			.collect Sparksocket's Tools##40642|q 12819/1
			.info In the middle of the mine field.
			.info You will be shot down if you try to fly, you must walk and try to avoid the mines.
			.info While walking, try to navigate carefully through the wider paths.
			.info If you position yourself carefully, you can also use the mines to knock yourself over other mines, closer to this location.
			.info You may get knocked around in order to get to this spot, but just keep trying.
		step
			goto The Storm Peaks,30.38,85.66
			.kill Gnarlhide##30003|q 12836/1
		step
			goto The Storm Peaks,31.30,85.50
			.from Savage Hill Mystic##29622, Savage Hill Brute##29623
			.info They look like gnolls.
			.collect 16 Dried Gnoll Rations##40645|q 12827/1
			.info They look like wooden boxes on the ground around this area.
			.info The ration boxes will give multiple quest items at once, so focus on those.
			.' You can find more around|at 34.99,83.30
		step
			goto The Storm Peaks,41.02,86.44
			.talk Jeer Sparksocket##29431
			..turnin Just Around the Corner##12819
			..accept Slightly Unstable##12826
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			..turnin Slightly Unstable##12826
			..accept A Delicate Touch##12820
			..turnin Reclaimed Rations##12827
			..turnin Expression of Gratitude##12836
			..accept Ample Inspiration##12828
		step
			goto The Storm Peaks,44.31,81.82
			.use Improved Land Mines##40676
			.info Use them to place mines on the ground around this area.
			.info Try to place them so that the Garm Invaders and Snowblind Followers will run over the mines and die.
			.info You don't need to try to avoid enemies, they won't attack you.
			.' Slay 12 Garm Attackers|q 12820/1
		step
			goto The Storm Peaks,41.67,80.01
			.talk Tore Rumblewrench##29430
			..accept Moving In##12829
			..accept Ore Repossession##12830
		step
			goto The Storm Peaks,41.63,80.04
			.' Interact with gameobject: U.D.E.D. Dispenser
			.' Choose <Retrieve a bomb from the dispenser.>
			.info Hurry to the mammoth location.
			.info You will need to use or destroy the bomb within ~45 seconds, or it will blow up in your bags and damage you.
			.collect U.D.E.D.##40686|q 12828 |n
			.use U.D.E.D.##40686
			.info Use it on an Ironwool Mammoth.
			.info They look like grey hairy elephants around this area.
			.' Interact with gameobject: Mammoth Meat
			.info They look like pieces of meat and bone that appear on the ground after you blow up an Ironwool Mammoth.
			.collect 8 Hearty Mammoth Meat##40728|q 12828/1
			.' You can find the mammoths around|at 43.95,79.02
		step
			goto The Storm Peaks,41.51,74.89
			.talk Injured Goblin Miner##29434
			.info Inside the cave.
			.info He offers an escort quest.
			.info If he's not here, someone may be escorting him.
			.info Wait until he respawns.
			..accept Only Partly Forgotten##12831
		step
			goto The Storm Peaks,47.13,70.95
			.from Icetip Crawler##29461+
			.info They look like purple spider around this area inside the cave.
			.get Icetip Venom Sac##40944|q 12831/1
		step
			goto The Storm Peaks,43.48,75.24
			.talk Injured Goblin Miner##29434
			.info Inside the cave.
			.info He offers an escort quest.
			.info If he's not here, someone may be escorting him.
			.info Wait until he respawns.
			..turnin Only Partly Forgotten##12831
			..accept Bitter Departure##12832
		step
			goto The Storm Peaks,43.48,75.24
			.talk Injured Goblin Miner##29434
			.' Tell them "I'm ready - let's get you out of here."
			.' Watch the dialogue
			.info Follow the Injured Goblin Miner and protect them while walking.
			.info They eventually walks to this location outside the cave.
			.' Escort the Injured Goblin Miner to K3|at 40.20,78.99|q 12832/1
		step
			goto The Storm Peaks,40.42,78.23
			.from Snowblind Digger##29413
			.info They look like kobolds.
			.info You can find them inside the southeast part of the Crystalweb Cavern cave, at the dig site.
			.get 5 Impure Saronite Ore##40744|q 12830/1
		step
			goto The Storm Peaks,40.42,78.23
			.from Crystalweb Weaver##29411, Crystalweb Spitter##29412
			.info They look like spiders.
			.info You can find them all throughout the Crystalweb Cavern cave.
			.' Slay 12 Crystalweb Spiders|q 12829/1
		step
			goto The Storm Peaks,41.67,80.01
			.talk Tore Rumblewrench##29430
			..turnin Moving In##12829
			..turnin Ore Repossession##12830
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			..turnin A Delicate Touch##12820
			..turnin Ample Inspiration##12828
			..turnin Bitter Departure##12832
			..accept Cell Block Tango##12821
		step
			goto The Storm Peaks,45.12,82.38
			.collect Transporter Power Cell##40731|q 12821/2
			.info Next to a dead goblin.
		step
			goto The Storm Peaks,50.66,81.91
			.use Transporter Power Cell##40731
			.info You will be teleported back to K3.
			.' Activate the Garm Teleporter|q 12821/1
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			..turnin Cell Block Tango##12821
			..accept Know No Fear##12822
		step
			goto The Storm Peaks,50.01,81.76
			.talk Gino##29432
			..accept A Flawless Plan##12823
		step
			goto The Storm Peaks,50.50,77.82
			.use Hardpacked Explosive Bundle##41431
			.info Upstairs inside the cave, on the top floor.
			.info You will be attacked.
			.' Place the Explosive Bundle|q 12823/1
		step
			goto The Storm Peaks,50.45,78.32
			.' Watch the dialogue
			.info Tormar Frostgut will walk up behind you.
			.info Upstairs inside the cave, on the top floor.
			.kill Tormar Frostgut##29626|q 12823/2
		step
			goto The Storm Peaks,48.22,81.08
			.kill 6 Garm Watcher##29409|q 12822/1
			.info They look like large blue centaurs.
			.info Inside and outside the cave.
		step
			goto The Storm Peaks,48.22,81.08
			.kill 8 Snowblind Devotee##29407|q 12822/2
			.info They look like kobolds.
			.info Inside and outside the cave.
		step
			goto The Storm Peaks,50.01,81.76
			.talk Gino##29432
			..turnin A Flawless Plan##12823
			..accept Demolitionist Extraordinaire##12824
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			..turnin Know No Fear##12822
			..turnin Demolitionist Extraordinaire##12824
			..accept When All Else Fails##12862
		step
			goto The Storm Peaks,40.78,71.57
			.from Sifreldar Storm Maiden##29323, Sifreldar Runekeeper##29331
			.info They look like blue humans.
			.info You can find them all around the Sifreldar Village area.
			.collect Cold Iron Key##40641|n
			.' Interact with gameobject: Rusty Cage
			.info They look like brown wooden and metal cages.
			.info They can also be inside the buildings around the lower level of the village.
			.' Free 5 Goblin Prisoners|q 12843/1
		step
			goto The Storm Peaks,40.78,71.57
			.collect 8 K3 Equipment##40726|q 12844/1
			.info They look like wooden crates on the ground.
			.info You can find them all around the Sifreldar Village area.
			.info They can also be inside all of the buildings around this area.
		step
			goto The Storm Peaks,41.15,86.14
			.talk Gretchen Fizzlespark##29473
			..turnin They Took Our Men!##12843
			..accept Leave No Goblin Behind##12846
			..turnin Equipment Recovery##12844
		step
			goto The Storm Peaks,40.93,85.31
			.talk Ricket##29428
			.' Tell her "I am ready to head further into Storm Peaks."
			.' Begin Flying in the D16 Propelled Delivery Device |invehicle |q 12862
		step
			goto The Storm Peaks,28.56,74.57|n
			.' Fly to Frosthold |outvehicle |q 12862
		step
			goto The Storm Peaks,28.83,74.07
			.talk Rork Sharpchin##29744
			..turnin When All Else Fails##12862
			..accept Ancient Relics##12870
		step
			goto The Storm Peaks,29.61,74.07
			.talk Archaeologist Andorin##29650
			..accept On Brann's Trail##12854
		step
			goto The Storm Peaks,29.40,73.77
			.talk Lagnus##29743
			..accept Offering Thanks##12863
		step
			goto The Storm Peaks,29.18,74.91
			.talk Glorthal Stiffbeard##29727
			..turnin Offering Thanks##12863
			..accept Missing Scouts##12864
		step
			goto The Storm Peaks,29.82,75.72
			.talk Fjorlin Frostbrow##29732
			..accept Loyal Companions##12865
		step
			goto The Storm Peaks,36.43,77.30
			.talk Frostborn Scout##29811
			.' Ask him "Are you okay? I've come to take you back to Frosthold if you can stand."
			.' Locate the Missing Scout|q 12864/1
		step
			goto The Storm Peaks,36.06,64.13
			.collect Burlap-Wrapped Note##40947|q 12854/1
			.info It looks like a pile of snow.
		step
			goto The Storm Peaks,42.83,58.50
			.from Ice Steppe Rhino##29469
			.info They look like hairy rhinos.
			.info You can find them all around the Foot steppes area.
			.collect 8 Fresh Ice Rhino Meat##41340|q 12865
		step
			goto The Storm Peaks,42.81,68.90
			.talk Lok'lira the Crone##29481
			..turnin Leave No Goblin Behind##12846
			..accept The Crone's Bargain##12841
		step
			.from Overseer Syra##29518
			.info She looks like a blue human that walks around this area on the middle floor inside the mine.
			.get Runes of the Yrkvinn##40690|q 12841/1
		step
			goto The Storm Peaks,42.81,68.90
			.talk Lok'lira the Crone##29481
			..turnin The Crone's Bargain##12841
			..accept Mildred the Cruel##12905
		step
			goto The Storm Peaks,44.39,68.93
			.talk Mildred the Cruel##29885
			..turnin Mildred the Cruel##12905
			..accept Discipline##12906
		step
			goto The Storm Peaks,44.01,68.95
			.use Disciplining Rod##42837
			.info Use it on Exhausted Vrykul.
			.info They look like vrykul men sitting on the ground around this area inside the mine.
			.info They are mostly in the side tunnels inside the mine, on all floors.
			.' Discipline 6 Exhausted Vrykuls|q 12906/1
		step
			goto The Storm Peaks,44.39,68.93
			.talk Mildred the Cruel##29885
			..turnin Discipline##12906
			..accept Examples to be Made##12907
		step
			goto The Storm Peaks,45.41,69.10
			.kill Garhal##30147|q 12907/1
			.info Inside the mine, on the top floor.
		step
			goto The Storm Peaks,44.39,68.93
			.talk Mildred the Cruel##29885
			..turnin Examples to be Made##12907
			..accept A Certain Prisoner##12908
		step
			goto The Storm Peaks,42.81,68.90
			.talk Lok'lira the Crone##29481
			..turnin A Certain Prisoner##12908
			..accept A Change of Scenery##12921
		step
			goto The Storm Peaks,47.47,69.08
			.talk Lok'lira the Crone##29975
			..turnin A Change of Scenery##12921
			..accept Is That Your Goblin?##12969
		step
			goto The Storm Peaks,48.25,69.76
			.talk Agnetta Tyrsdottar##30154
			.' Tell her "Skip the warmup, sister... or are you too scared to face someone your own size?"
			.kill Agnetta Tyrsdottar##30154|q 12969/1
		step
			goto The Storm Peaks,47.47,69.08
			.talk Lok'lira the Crone##29975
			..turnin Is That Your Goblin?##12969
			..accept The Hyldsmeet##12970
		step
			goto The Storm Peaks,47.47,69.08
			.talk Lok'lira the Crone##29975
			.' Tell her "Tell me about this proposal."
			.' Listen to Lok'lira's Proposal|q 12970/1
		step
			goto The Storm Peaks,47.47,69.08
			.talk Lok'lira the Crone##29975
			..turnin The Hyldsmeet##12970
			..accept Taking on All Challengers##12971
		step
			goto The Storm Peaks,48.16,70.30
			.talk Victorious Challenger##30012
			.' Tell them "Let's do this, sister."
			.kill 6 Victorious Challenger##30012|q 12971/1
			.' You can find more around (1)|at 50.38,68.02
			.' You can find more around (2)|at 51.39,66.41
		step
			goto The Storm Peaks,47.47,69.08
			.talk Lok'lira the Crone##29975
			..turnin Taking on All Challengers##12971
			..accept You'll Need a Bear##12972
		step
			goto The Storm Peaks,53.14,65.72
			.talk Brijana##29592
			..turnin You'll Need a Bear##12972
			..accept Bearly Hanging On##12851
		step
			goto The Storm Peaks,53.12,65.62
			.' Ride Icefang |invehicle |q 12851
		step
			goto The Storm Peaks,58.30,59.85
			.' Burn 7 Frostworgs|q 12851/1
			.info Use the "Flaming Arrow" ability on your action bar on Frostworgs.
			.info They look like large white wolves around this area.
		step
			goto The Storm Peaks,58.30,59.85
			.' Burn 15 Frost Giants|q 12851/2
			.info Use the "Flaming Arrow" ability on your action bar on Frost Giants.
			.info They look like large armored dwarves around this area.
		step
			goto The Storm Peaks,53.81,65.29
			.' Return to Brijana |outvehicle |q 12851
			.info Use the "Burst of Speed" ability to travel faster.
			.info You will automatically be dropped off at this location.
		step
			goto The Storm Peaks,53.14,65.72
			.talk Brijana##29592
			..turnin Bearly Hanging On##12851
			..accept Cold Hearted##12856
		step
			goto The Storm Peaks,65.00,60.45
			.' Interact with NPC: Captive Proto-Drake
			.info They look like dragons on chains flying in the air around this area.
			.info Press the jump key if your Drake is bugged and can't move up and down to fix it.
			.' Rescue 9 Brunnhildar Prisoners|q 12856/1
			.info Use the ability on your action bar on Brunnhildar Prisoners.
			.info They look like blue blocks of ice on the ground around this area.
			.' Bring the prisoners to|at 49.09,66.89
			.info Wait until you have the Captive Proto-Drakes holding 3 Brunnhildar Prisoners before you go to this location.
			.info Once you leave the objective area the Captive Proto-Drakes will automatically fly back to Brunnhildar Village.
			.info You will have to do this 3 times.
		step
			goto The Storm Peaks,65.00,60.45
			.' Interact with NPC: Captive Proto-Drake##29708
			.info They look like chained up dragons flying in the air around this area. |notinsticky
			.' Free 3 Proto-Drakes|q 12856/2
			.' Fly the Proto-Drakes to|at 49.09,66.89
		step
			goto The Storm Peaks,53.14,65.72
			.talk Brijana##29592
			..turnin Cold Hearted##12856
			..accept Deemed Worthy##13063
		step
			goto The Storm Peaks,49.75,71.81
			.talk Astrid Bjornrittar##29839
			..turnin Deemed Worthy##13063
			..accept Making a Harness##12900
		step
			goto The Storm Peaks,47.07,76.15
			.from Icemane Yeti##29875
			.info They look like large white gorillas with horns.
			.info You can find them all around the Snowblind Terrace area.
			.get 3 Icemane Yeti Hide##41424|q 12900/1
		step
			goto The Storm Peaks,49.75,71.81
			.talk Astrid Bjornrittar##29839
			..turnin Making a Harness##12900
			..accept The Last of Her Kind##12983
			..accept The Slithering Darkness##12989
		step
			goto The Storm Peaks,55.89,64.04
			.kill 8 Ravenous Jormungar##29605|q 12989/1
			.info They look like centipedes standing upright.
			.info Inside and outside the cave.
			.info The next	step is inside the cave, so try to kill them inside the cave, if possible.
			.info If you find the Injured Icemaw Matriarch inside the cave, don't click her yet.
			.info She looks like a dead white bear in the back of the cave.
			.info You will do it in the next step, and it will take you back to Brunnhildar.
		step
			goto The Storm Peaks,54.79,60.37
			.' Interact with NPC: Injured Icemaw Matriarch
			.info Inside the cave.
			.' Ride the Icemaw Matriarch |invehicle |q 12983
		step
			goto The Storm Peaks,49.82,71.12
			.' Rescue the Icemaw Matriarch|q 12983/1
			.info You will automatically be brought back to Brunnhildar Village.
		step
			goto The Storm Peaks,49.75,71.81
			.talk Astrid Bjornrittar##29839
			..turnin The Last of Her Kind##12983
			..accept The Warm-Up##12996
			..turnin The Slithering Darkness##12989
		step
			goto The Storm Peaks,49.68,70.64
			.use Reins of the Warbear Matriarch##42481
			.' Ride a Warbear Matriarch |invehicle |q 12996
		step
			goto The Storm Peaks,50.81,67.68
			.kill Kirgaraak##29352|n
			.info Use the abilities on your action bar.
			.' Defeat Kirgaraak|q 12996/1
		step
			.' Stop Riding the Warbear Matriarch |outvehicle |q 12996
			.info Click the red arrow on your action bar.
		step
			goto The Storm Peaks,49.75,71.81
			.talk Astrid Bjornrittar##29839
			..turnin The Warm-Up##12996
			..accept Into the Pit##12997
		step
			goto The Storm Peaks,49.19,68.72
			.use Reins of the Warbear Matriarch##42499
			.' Ride a Warbear Matriarch |invehicle |q 12997
		step
			goto The Storm Peaks,49.19,68.56
			.kill 6 Hyldsmeet Warbear##30174|q 12997/1
			.info Use the abilities on your action bar.
		step
			.' Stop Riding the Warbear Matriarch |outvehicle |q 12997
			.info Click the red arrow on your action bar.
		step
			goto The Storm Peaks,49.75,71.81
			.talk Astrid Bjornrittar##29839
			..turnin Into the Pit##12997
			..accept Prepare for Glory##13061
		step
			goto The Storm Peaks,48.44,72.16
			.talk Thyra Kvinnshal##30041
			..accept Aberrations##12925
		step
			goto The Storm Peaks,48.33,72.13
			.talk Iva the Vengeful##29997
			..accept Off With Their Black Wings##12942
			..accept Yulda's Folly##12968
		step
			goto The Storm Peaks,47.47,69.09
			.talk Lok'lira the Crone##29975
			..turnin Prepare for Glory##13061
			..accept Lok'lira's Parting Gift##13062
		step
			goto The Storm Peaks,50.87,65.59
			.talk Gretta the Arbiter##29796
			..turnin Lok'lira's Parting Gift##13062
			..accept The Drakkensryd##12886
		step
			goto The Storm Peaks,33.40,61.29
			.use Hyldnir Harpoon##41058
			.info Use it on Hyldsmeet Proto-Drakes.
			.info They look like dragons with riders on them flying around this area.
			.info You will harpoon and fly over to a new drake to fight the rider.
			.kill Hyldsmeet Drakerider##29694|n
			.' Defeat 10 Hyldsmeet Drakeriders|q 12886/1 |noway
		step
			.use Hyldnir Harpoon##41058
			.info Use it on a Column Ornament.
			.info They look like light fixtures on the side of the stone columns around the Temple of Storms area.
			.' Stop Riding the Proto-Drake |outvehicle |q 12886
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin The Drakkensryd##12886
			..accept Sibling Rivalry##13064
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			.' Ask him "Can you tell me what became of Sif?"
			.' Hear Thorim's History|q 13064/1
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin Sibling Rivalry##13064
			..accept Mending Fences##12915
		step
			goto The Storm Peaks,24.01,61.93
			.kill Yulda the Stormspeaker##30046|q 12968/1
			.info Inside the building.
		step
			goto The Storm Peaks,24.02,61.74
			.' Interact with gameobject: Harpoon Crate
			.info Inside the building.
			..accept Valkyrion Must Burn##12953
		step
			goto The Storm Peaks,25.79,59.60
			.' Interact with NPC: Valkyrion Harpoon Gun
			.info They look like bronze dragon guns.
			.' Start 6 Fires|q 12953/1
			.info Use the ability on your action bar to shoot the tan bundles of straw near buildings and in wagons on the ground around this area.
			.info If you have trouble shooter the further bundles, you can switch to using one of the other harpoon guns nearby.
		step
			.' Stop Controlling the Valkyrion Harpoon Gun |outvehicle |q 12953
			.info Click the yellow arrow on your action bar.
		step
			goto The Storm Peaks,25.34,60.20
			.from Valkyrion Aspirant##29569
			.info They look like blue humans.
			.info You can find them all around the Valkyrion and the Blighted Pool areas.
			.collect 6 Vial of Frost Oil##41612|q 12925
		step
			goto The Storm Peaks,23.27,58.25
			.use Vial of Frost Oil##41612
			.info Use it on Plagued Proto-Drake Eggs.
			.info They look like brown spiked eggs on the ground around this area.
			.info If you run out of vials, kill Valkyrion Aspirant blue humans to get more.
			.' Destroy 30 Plagued Proto-Drake Eggs|q 12925/1
		step
			goto The Storm Peaks,25.34,60.20
			.kill 12 Nascent Val'kyr##29570|q 12942/1
			.info They look like women with wings flying in the air.
			.info You can find them all around the Valkyrion and the Blighted Pool areas.
		step
			goto The Storm Peaks,25.75,60.6
			.from Valkyrion Aspirant##29569, Nascent Val'kyr##29570
			.get 10 Relic of Ulduar##42780|q 12870/1
		step
			goto The Storm Peaks,28.83,74.07
			.talk Rork Sharpchin##29744
			..turnin Ancient Relics##12870
		step
			goto The Storm Peaks,29.18,74.91
			.talk Glorthal Stiffbeard##29727
			..turnin Missing Scouts##12864
			..accept Stemming the Aggressors##12866
		step
			goto The Storm Peaks,29.61,74.07
			.talk Archaeologist Andorin##29650
			..turnin On Brann's Trail##12854
			..accept Sniffing Out the Perpetrator##12855
		step
			goto The Storm Peaks,33.20,73.77
			.use Fresh Ice Rhino Meat##41340
			.info Use them on Stormcrest Eagles.
			.info They look like white birds around the top of the mountain.
			.info You can do this while mounted and don't need to target the eagles.
			.' Feed 8 Stormcrest Eagles|q 12865/1
		step
			goto The Storm Peaks,29.82,75.72
			.talk Fjorlin Frostbrow##29732
			..turnin Loyal Companions##12865
			..accept Baby Stealers##12867
		step
			goto The Storm Peaks,27.02,71.93
			.collect 15 Stormcrest Eagle Egg##41341|q 12867/1
			.info They look like white eggs on the ground around this area.
			.info They are usually next to trees.
			.' You can find more around (1)|at 29.19,66.56
			.' You can find more around (2)|at 33.54,66.02
			.' You can find more around (3)|at 36.38,67.29
		step
			goto The Storm Peaks,27.02,71.93
			.kill 8 Frostfeather Screecher##29792|q 12866/1
			.kill 8 Frostfeather Witch##29793|q 12866/2
			.info They look like black harpies.
			.' You can find more around (1)|at 29.19,66.56
			.' You can find more around (2)|at 33.54,66.02
			.' You can find more around (3)|at 36.38,67.29
		step
			goto The Storm Peaks,36.46,64.26
			.use Frosthound's Collar##41430
			.' Ride the Frosthound |invehicle |q 12855
		step
			goto The Storm Peaks,47.91,61.00
			.' Track Down the Thief|q 12855/1
			.info Use the abilities on your action bar.
			.info Use the "Cast Net" on the dwarves.
			.info Use the "Ice Slick" ability near the white piles of snow on the ground.
			.info You will eventually ride to this location.
		step
			goto The Storm Peaks,48.55,60.82
			.kill Tracker Thulin##29695|q 12855/2
			.info Inside the cave.
			.collect Brann's Communicator##40971|q 12855
		step
			.use Brann's Communicator##40971
			.talk Brann Bronzebeard##29579
			..turnin Sniffing Out the Perpetrator##12855
			..accept Pieces to the Puzzle##12858
		step
			goto The Storm Peaks,48.44,72.15
			.talk Thyra Kvinnshal##30041
			..turnin Aberrations##12925
		step
			goto The Storm Peaks,48.33,72.13
			.talk Iva the Vengeful##29997
			..turnin Off With Their Black Wings##12942
			..turnin Yulda's Folly##12968
			..turnin Valkyrion Must Burn##12953
		step
			goto The Storm Peaks,70.18,61.09
			.' Interact with gameobject: Granite Boulder
			.info They look like large grey rocks on the ground around this area.
			.collect Granite Boulder##41506|n
			.info You can only carry 1 at a time.
			.use Thorim's Charm of Earth##41505
			.info Use it on Stormforged Iron Giants.
			.info They look like large armored dwarves around this area.
			.info Smaller dwarves will appear and attack them.
			.info Help the dwarves	kill them.
			.collect Slag Covered Metal##41556|q 12922 |future
			.' You can find more around|at 74.60,62.96
		step
			.use the Slag Covered Metal##41556
			..accept The Refiner's Fire##12922
		step
			goto The Storm Peaks,70.18,61.09
			.' Interact with gameobject: Granite Boulder
			.info They look like large grey rocks on the ground around this area.
			.collect Granite Boulder##41506+ |n
			.info You can only carry 1 at a time.
			.use Thorim's Charm of Earth##41505
			.info Use it on Stormforged Iron Giants.
			.info They look like large armored dwarves around this area.
			.info Smaller dwarves will appear and attack them.
			.info Help the dwarves kill them.
			.kill 5 Stormforged Iron Giant##29375|q 12915/2
			.' You can find more around|at 74.60,62.96
		step
			goto The Storm Peaks,70.18,61.09
			.from Seething Revenant##29504
			.info They look like armored fire elementals.
			.collect 10 Furious Spark##41558|q 12922/1
			.' You can find more around|at 74.60,62.96
		step
			goto The Storm Peaks,77.35,62.88
			.' Interact with gameobject: Granite Boulder
			.info They look like large grey rocks on the ground around this area.
			.collect Granite Boulder##41506|n
			.info You can only carry 1 at a time.
			.use Thorim's Charm of Earth##41505
			.info Use it on Fjorn.
			.info He looks like a much larger dwarf with brown armor that walks around this area.
			.info Smaller dwarves will appear and attack him.
			.info Help the dwarves kill them.
			.kill Fjorn##29503|q 12915/1
		step
			goto The Storm Peaks,77.15,62.80
			.' Interact with gameobject: Fjorn's Anvil
			.info It looks like a huge blacksmith anvil.
			..turnin The Refiner's Fire##12922
			..accept A Spark of Hope##12956
		step
			goto The Storm Peaks,29.18,74.91
			.talk Glorthal Stiffbeard##29727
			..turnin Stemming the Aggressors##12866
			..accept Sirana Iceshriek##12868
		step
			goto The Storm Peaks,29.82,75.72
			.talk Fjorlin Frostbrow##29732
			..turnin Baby Stealers##12867
		step
			goto The Storm Peaks,24.7,67.8
			.kill Sirana Iceshriek##29794|q 12868/1
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin Mending Fences##12915
			..turnin A Spark of Hope##12956
			..accept Forging an Alliance##12924
		step
			goto The Storm Peaks,38.17,42.64
			.from Library Guardian##29724
			.info They look like mechanical gnomes on mechanical bird mounts.
			.info You can find them all around the Inventory's Library area.
			.collect 6 Inventor's Disk Fragment##41130|q 12858
		step
			.use Inventor's Disk Fragment##41130
			.collect The Inventor's Disk##41132|q 12858/1
		step
			.use Brann's Communicator##40971
			.talk Brann Bronzebeard##29579
			..turnin Pieces to the Puzzle##12858
			..accept Data Mining##12860
		step
			goto The Storm Peaks,38.17,42.64
			.use The Inventor's Disk##41179
			.info Use it near Databanks.
			.info They look like floating geometric orbs.
			.info You can find them all around the Inventory's Library area.
			.' Gather 7 Hidden Data|q 12860/1
		step
			.use Brann's Communicator##40971
			.talk Brann Bronzebeard##29579
			..turnin Data Mining##12860
			..accept The Library Console##13415
		step
			goto The Storm Peaks,37.43,46.80
			.' Interact with gameobject: Inventor's Library Console
			.info Inside the building.
			..turnin The Library Console##13415
			..accept Norgannon's Shell##12872
		step
			goto The Storm Peaks,37.53,46.52
			.use Charged Disk##44704
			.info Inside the building.
			.' Watch the dialogue.
			.from Archivist Mechaton##29775
			.get Norgannon's Shell##41258|q 12872/1
		step
			.use Brann's Communicator##40971
			.talk Brann Bronzebeard##29579
			..turnin Norgannon's Shell##12872
			..accept Aid from the Explorers' League##12871
			..accept The Exiles of Ulduar##12885
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin The Exiles of Ulduar##12885
			..accept Rare Earth##12930
		step
			goto The Storm Peaks,25.36,33.54
			.collect 7 Enchanted Earth##41614|q 12930/1
			.info They look like black rocks with snow on them on the ground.
			.info You can find them all along the side of the cliff around this area.
		step
			goto The Storm Peaks,25.60,46.00
			.from Stormforged Raider##29377, Stormforged Reaver##29382
			.info They look like dwarves.
			.info You can find them all around the Nidavelir and Narvir's Cradle areas.
			.info The metal War Golems won't drop the quest item.
			.collect 5 Frostweave Cloth##33470|q 12930/2
			.' You can find more around|at 29.33,45.39
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin Rare Earth##12930
			..accept Fighting Back##12931
			..accept Relief for the Fallen##12937
		step
			goto The Storm Peaks,26.38,37.58
			.use Telluric Poultice##41988
			.info Use it on Fallen Earthen Defenders.
			.info They look like dwarves made of stone kneeling on the ground around this area.
			.info You only need to channel for a moment for credit.
			.' Heal 8 Fallen Earthen Defenders|q 12937/1
		step
			goto The Storm Peaks,26.38,37.58
			.from Stormforged Raider##29377, Stormforged Reaver##29382
			.info They look like armored dwarves and metal golems around this area.
			.' Slay 10 Stormforged Attackers|q 12931/1
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin Fighting Back##12931
			..turnin Relief for the Fallen##12937
			..accept Slaves of the Stormforged##12957
			..accept The Dark Ore##12964
		step
			goto The Storm Peaks,27.35,49.80
			.talk Captive Mechagnome##29384
			.info They look like metal gnomes mining.
			.info You can find them all throughout the Frozen Mine.
			.' Tell them "I'm not a laborer. I'm here to free you from servitude in the mines."
			.' Attempt to Free 6 Captive Mechagnomes|q 12957/1
		step
			goto The Storm Peaks,27.35,49.80
			.kill 3 Stormforged Taskmaster##29369|q 12957/2
			.info They look like dwarves with dark armor.
			.info You can find them all throughout the Frozen Mine.
		step
			goto The Storm Peaks,27.35,49.80
			.' Interact with gameobject: Ore Cart
			.info They look like brown mining carts with ore in them.
			.info You can find them on the ground all throughout the Frozen Mine.
			.collect 5 Dark Ore Sample##42109|q 12964/1
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin Slaves of the Stormforged##12957
			..turnin The Dark Ore##12964
			..accept The Gifts of Loken##12965
		step
			goto The Storm Peaks,31.28,38.17
			.talk Bruor Ironbane##30152
			..accept Facing the Storm##12978
		step
			goto The Storm Peaks,24.02,42.64
			.' Interact with gameobject: Loken's Fury
			.info Inside this building.
			.' Destroy Loken's Fury|q 12965/1
		step
			goto The Storm Peaks,26.16,47.69
			.' Interact with gameobject: Loken's Power
			.info Inside this building.
			.' Destroy Loken's Power|q 12965/2
		step
			goto The Storm Peaks,24.55,48.42
			.' Interact with gameobject: Loken's Favor
			.info Inside this building.
			.' Destroy Loken's Favor|q 12965/3
		step
			goto The Storm Peaks,25.75,46.60
			.kill Stormforged War Golem##29380|n
			.info They look like metal humanoid machines.
			.info You can find them all around the Nidavelir area.
			.collect Dark Armor Sample##42203|q 12979 |future
		step
			.use the Dark Armor Sample##42203
			..accept Armor of Darkness##12979
		step
			goto The Storm Peaks,25.75,46.60
			.from Stormforged War Golem##29380
			.info They look like metal humanoid machines.
			.info You can find them all around the Nidavelir area.
			.get 4 Dark Armor Sample##42204|q 12979/1
		step
			goto The Storm Peaks,25.75,46.60
			.' Slay 10 Nidavelir Stormforged|q 12978/1
			.info They look like dwarves and metal golems.
			.info You can find them all around the Nidavelir area.
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin The Gifts of Loken##12965
		step
			goto The Storm Peaks,31.28,38.17
			.talk Bruor Ironbane##30152
			..turnin Facing the Storm##12978
			..turnin Armor of Darkness##12979
			..accept The Armor's Secrets##12980
		step
			goto The Storm Peaks,32.04,40.73
			.talk Attendant Tock##30190
			.' Tell him "I found this strange armor plate. Can you tell me more about it?"
			.info Inside the building.
			.' Investigate the Armor Plate|q 12980/1
			.info You will have to wait for the quest goal to complete.
			.info You are waiting for the dialogue to finish that you started in the previous guide step.
			.info When it completes, you will already be next to the NPC to turn in the quest.
		step
			goto The Storm Peaks,31.28,38.17
			.talk Bruor Ironbane##30152
			..turnin The Armor's Secrets##12980
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..accept Valduran the Stormborn##12984
		step
			goto The Storm Peaks,24.28,52.15
			.use Bouldercrag's War Horn##42419
			.info Use it near Valduran the Stormborn.
			.info Inside the building.
			.' Watch the dialogue.
			.info Allies will appear to help you fight.
			.kill Valduran the Stormborn##29368|q 12984/1
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin Valduran the Stormborn##12984
			..accept Destroy the Forges!##12988
		step
			goto The Storm Peaks,31.28,38.17
			.talk Bruor Ironbane##30152
			..accept Hit Them Where it Hurts##12991
		step
			goto The Storm Peaks,29.01,45.81
			.use Bouldercrag's Bomb##42441
			.' Damage the North Lightning Forge|q 12988/1
		step
			goto The Storm Peaks,29.49,45.89
			.use Bouldercrag's Bomb##42441
			.' Damage the Central Lightning Forge|q 12988/2
		step
			goto The Storm Peaks,30.22,46.14
			.use Bouldercrag's Bomb##42441
			Damage the South Lightning Forge|q 12988/3
		step
			goto The Storm Peaks,29.79,45.63
			.kill 10 Stormforged Artificer##29376|q 12991/1
			.info They look like armored dwarves.
			.info You can find them all around the Narvir's Cradle area.
		step
			goto The Storm Peaks,31.28,38.17
			.talk Bruor Ironbane##30152
			..turnin Hit Them Where it Hurts##12991
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin Destroy the Forges!##12988
			..accept A Colossal Threat##12993
		step
			goto The Storm Peaks,28.88,44.06
			.collect Colossus Attack Specs##42475|q 12993/1
			.info It looks like a white unrolled scroll.
		step
			goto The Storm Peaks,29.90,45.81
			.collect Colossus Defense Specs##42476|q 12993/2
			.info It looks like a white unrolled scroll.
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin A Colossal Threat##12993
			..accept The Heart of the Storm##12998
		step
			goto The Storm Peaks,32.4,63.7
			.' Interact with gameobject: Heart of the Storm
			.info Inside the building.
			.' Watch the dialogue.
			.' Attempt to Secure the Heart of the Storm|at 36.10,60.92|q 12998/1
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin The Heart of the Storm##12998
			..accept The Iron Colossus##13007
		step
			goto The Storm Peaks,27.17,35.90
			.' Interact with gameobject: Jormungar Control Orb.
			.' Control a Jormungar |invehicle |q 13007
		step
			goto The Storm Peaks,27.39,45.30
			.kill Iron Colossus##30300|q 13007/1
			.info He looks like a huge armored dwarf that walks around this area.
			.info Use the abilities on your action bar.
			.info Be sure to keep "Acid Breath" stacks at 5 when possible.
			.info Use the "Submerge" ability on your action bar to be able to move around.
			.info Use the "Emerge" ability on your action bar when underground, to come back to the surface.
			.info Use the "Submerge" ability on your action bar when he jumps up to do a ground slam, then move behind him to avoid taking damage.
		step
			.' Stop Controlling the Jormungar |outvehicle |q 13007
			.info Click the red arrow on your action bar.
		step
			goto The Storm Peaks,31.42,38.07
			.talk Bouldercrag the Rockshaper##29801
			..turnin The Iron Colossus##13007
		step
			goto The Storm Peaks,29.40,73.76
			.talk Lagnus##29743
			..turnin Aid from the Explorers' League##12871
			..accept The Frostborn King##12873
		step
			goto The Storm Peaks,30.26,74.76
			.talk Yorg Stormheart##29593
			..turnin The Frostborn King##12873
			..accept Fervor of the Frostborn##12874
		step
			goto The Storm Peaks,29.83,75.72
			.talk Fjorlin Frostbrow##29732
			.' Tell him "King Stormheart sent me to be tested as a frostborn would. I am ready for my test, Fjorlin."
			.' Begin the Test |invehicle |q 12874
		step
			goto The Storm Peaks,53.48,35.10|n
			.' Watch the dialogue.
			.info This is a long flight.
			.' Fly to the Iron Watcher|q 12874
		step
			goto The Storm Peaks,53.61,35.14
			.collect Battered Storm Hammer##42624|q 12874
		step
			goto The Storm Peaks,53.55,37.86
			.use Battered Storm Hammer##42624
			.info Use it repeatedly on The Iron Watcher.
			.info While he is stunned, you can fight him normally, or you can run away to let the hammer recharge, if you want to play it safe.
			.info When his health is low enough, he will run to the end of the bridge.
			.info When he's on the edge of the bridge, use the hammer on him and he will fall off.
			.kill The Iron Watcher##30142|q 12874/1
		step
			goto The Storm Peaks,65.43,60.15
			.talk King Jokkum##30105
			..accept You Can't Miss Him##12966
			..accept In Memoriam##12975
			..accept Jormuttar is Soo Fat...##13011
		step
			goto The Storm Peaks,64.85,59.04
			.talk Lorekeeper Randvir##30252
			..accept Raising Hodir's Spear##13001
		step
			goto The Storm Peaks,75.38,63.57
			.talk Njormeld##30099
			..turnin You Can't Miss Him##12966
			..accept Battling the Elements##12967
		step
			goto The Storm Peaks,75.71,63.91
			.' Interact with NPC: Snorri
			.' Accompany Snorri |invehicle |q 12967
		step
			goto The Storm Peaks,76.18,63.32
			.kill 10 Seething Revenant##29504|q 12967/1
			.info Use the "Gather Snow" ability on your action bar next to Snowdrifts.
			.info They look like piles of white snow on the ground around this area.
			.info Use the "Throw Snowball" ability on your action bar on Seething Revenants.
			.info They look like armored fire elementals around this area.
		step
			.' Stop Accompanying Snorri |outvehicle |q 12967
			.info Click the red arrow on your action bar.
		step
			goto The Storm Peaks,75.38,63.57
			.talk Njormeld##30099
			..turnin Battling the Elements##12967
			.' Bring Fjorn's Anvil to Dun Niffelem|q 12924/1
		step
			goto The Storm Peaks,63.21,63.23
			.talk Njormeld##30127
			..turnin Forging an Alliance##12924
			..accept A New Beginning##13009
			..accept Forging a Head##12985
		step
			goto The Storm Peaks,70.12,60.06
			.use Diamond Tipped Pick##42424
			.info Use it on Dead Iron Giant corpses on the ground around this area.
			.collect 8 Stormforged Eye##42423|q 12985/1
		step
			goto The Storm Peaks,71.58,50.25
			.collect 8 Horn Fragment##42162|q 12975/1
			.info They look like grey scraps on the ground around this area.
		step
			goto The Storm Peaks,65.43,60.15
			.talk King Jokkum##30105
			..turnin In Memoriam##12975
			..accept A Monument to the Fallen##12976
		step
			goto The Storm Peaks,63.21,63.23
			.talk Njormeld##30127
			..turnin A Monument to the Fallen##12976
			..turnin Forging a Head##12985
			..accept Mounting Hodir's Helm##12987
		step
			goto The Storm Peaks,64.23,59.24
			.use Tablets of Pronouncement##42442
			.info Use it next to the tip of this ice spike.
			.info You can use this item while flying.
			.' Mount Hodir's Helm|q 12987/1
		step
			goto The Storm Peaks,63.21,63.23
			.talk Njormeld##30127
			..turnin Mounting Hodir's Helm##12987
		step
			goto The Storm Peaks,58.44,61.22
			.from Stoic Mammoth##30260
			.get 3 Stoic Mammoth Hide##42542|q 13001/2
		step
			goto The Storm Peaks,55.55,63.22
			.use Everfrost Razor##42732
			.info Use it on Dead Icemaw Bears inside the cave.
			.info They look like dead white bears on the ground inside the cave.
			.collect Icemaw Bear Flank##42733|q 13011
		step
			goto The Storm Peaks,54.71,60.75
			.collect 3 Everfrost Shard##42541|q 13001/1
			.info They look like ice crystals on the ground around this small area inside the cave.
		step
			goto The Storm Peaks,54.71,60.75
			.use Icemaw Bear Flank##42733
			.kill Jormuttar##30340|q 13011/1
		step
			goto The Storm Peaks,64.85,59.04
			.talk Lorekeeper Randvir##30252
			..turnin Raising Hodir's Spear##13001
		step
			goto The Storm Peaks,65.43,60.15
			.talk King Jokkum##30105
			..turnin Jormuttar is Soo Fat...##13011
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin A New Beginning##13009
			..accept Veranus##13050
		step
			goto The Storm Peaks,30.26,74.76
			.talk Yorg Stormheart##29593
			..turnin Fervor of the Frostborn##12874
			..accept An Experienced Guide##12875
		step
			goto The Storm Peaks,29.18,74.91
			.talk Glorthal Stiffbeard##29727
			..turnin Sirana Iceshriek##12868
		step
			goto The Storm Peaks,29.8,75.7
			.talk Fjorlin Frostbrow##29732
			..accept Unwelcome Guests##12876
		step
			goto The Storm Peaks,26.82,66.86
			.talk Drom Frostgrip##29751
			..turnin An Experienced Guide##12875|at 25.24,68.47
			..accept The Lonesome Watcher##12877|at 25.24,68.47
		step
			goto The Storm Peaks,27.1,67.3
			.from Stormforged Monitor##29862
			.info He walks around this area with a metal golem inside the cave.
			.get Frostgrip's Signet Ring##41393|q 12877/1
		step
			.from Stormforged Loreseeker##29843, Stormforged Pillager##29586
			.' Slain Stormforged Invaders|q 12876/1
		step
			goto The Storm Peaks,39.24,59.65
			.talk Creteus##30052
			..turnin The Lonesome Watcher##12877
			..accept Fate of the Titans##12986
		step
			goto The Storm Peaks,43.77,67.47
			.collect 5 Small Proto-Drake Egg##42784|q 13050/1
			.info They look like big spiked brown eggs in nests on top of the mountains around this area.
			.' You can find more around|at 45.36,66.94
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin Veranus##13050
			..accept Territorial Trespass##13051
		step
			goto The Storm Peaks,38.75,65.52
			.use Stolen Proto-Dragon Eggs##42797
			.info Use it in the big nest at the top of this mountain.
			.' Watch the dialogue.
			.info She flies to you.
			.' Lure Veranus|q 13051/1
		step
			goto The Storm Peaks,33.42,57.95
			.talk Thorim##29445
			..turnin Territorial Trespass##13051
			..accept Krolmir, Hammer of Storms##13010
		step
			goto The Storm Peaks,45.52,49.25
			.use Creteus's Mobile Databank##42679
			.info Use it at the top of the tower.
			.' Watch the dialogue.
			.' Investigate the Temple of Invention|q 12986/1
		step
			goto The Storm Peaks,52.59,56.93
			.use Creteus's Mobile Databank##42679
			.info Use it at the top of the tower.
			.' Watch the dialogue.
			.' Investigate the Temple of Winter|q 12986/2
		step
			goto The Storm Peaks,53.50,42.26
			.use Creteus's Mobile Databank##42679
			.info Use it at the top of the tower.
			.' Watch the dialogue
			.' Investigate the Temple of Order|q 12986/4
		step
			goto The Storm Peaks,64.36,46.71
			.use Creteus's Mobile Databank##42679
			.' Watch the dialogue
			.' Investigate the Temple of Life|q 12986/3
		step
			goto The Storm Peaks,65.43,60.15
			.talk King Jokkum##30105
			.' Ask him "If it please you, King Jokkum, may I know what has become of Krolmir?"
			.' Discover Krolmir's Fate|q 13010/1
		step
			goto The Storm Peaks,71.37,48.80
			.talk Thorim##30390
			..turnin Krolmir, Hammer of Storms##13010
			..accept The Terrace of the Makers##13057
		step
			goto The Storm Peaks,56.27,51.37
			.talk Thorim##30295
			..turnin The Terrace of the Makers##13057
			..accept The Earthen Oath##13005
			..accept Loken's Lackeys##13035
		step
			goto The Storm Peaks,55.31,43.32
			.use Horn of the Peaks##42840
			.info Use it to summon earthen helpers that will help you fight.
			.kill Eisenfaust##30341|q 13035/1
			.info Inside the building.
			.info Use your helpers' abilities on your pet bar as you fight.
		step
			goto The Storm Peaks,58.37,44.65
			.use Horn of the Peaks##42840
			.info Use it to summon earthen helpers that will help you fight.
			.kill 7 Iron Sentinel##29984|q 13005/1
			.info Use your helpers' abilities on your pet bar as you fight.
		step
			goto The Storm Peaks,58.37,44.65
			.use Horn of the Peaks##42840
			.info Use it to summon earthen helpers that will help you fight.
			.' Slay 20 Iron Dwarf Assailants|q 13005/2
			.info Use your helpers' abilities on your pet bar as you fight.
		step
			goto The Storm Peaks,48.72,45.64
			.use Horn of the Peaks##42840
			.info Use it to summon earthen helpers that will help you fight.
			.kill Halefnir the Windborn##30376|q 13035/2
			.info Use your helpers' abilities on your pet bar as you fight.
		step
			goto The Storm Peaks,44.94,38.04
			.use Horn of the Peaks##42840
			.info Use it to summon earthen helpers that will help you fight.
			.kill Duronn the Runewrought##30353|q 13035/3
			.info Use your helpers' abilities on your pet bar.
		step
			goto The Storm Peaks,56.27,51.37
			.talk Thorim##30295
			..turnin The Earthen Oath##13005
			..turnin Loken's Lackeys##13035
			..accept The Reckoning##13047
		step
			goto The Storm Peaks,39.24,59.65
			.talk Creteus##30052
			..turnin Fate of the Titans##12986
			..accept The Hidden Relic##12878
		step
			goto The Storm Peaks,41.8,61.75
			.' Interact with NPC: The Guardian's Charge|at 44.51,64.58
			.info Inside the cave.
			..turnin The Hidden Relic##12878
			..accept Fury of the Frostborn King##12879
		step
			goto The Storm Peaks,38.25,61.71
			.talk Creteus##30082
			..turnin Fury of the Frostborn King##12879
			..accept The Master Explorer##12880
		step
			goto The Storm Peaks,39.56,56.36
			.talk Brann Bronzebeard##30382
			..turnin The Master Explorer##12880
			..accept The Brothers Bronzebeard##12973
		step
			goto The Storm Peaks,39.61,56.46|n
			.' Interact with NPC: Brann's Flying Machine
			.info At the bottom of the huge hole in the ground.
			.' Begin Flying with Brann Bronzebeard |invehicle |q 12973
		step
			goto The Storm Peaks,30.06,73.81
			.' Kill the enemies that attack.
			.info They will jump onto the plane as you fly.
			.' Watch the dialogue.
			.' Accompany Brann Bronzebeard to Frosthold|q 12973/1
		step
			goto The Storm Peaks,30.26,74.76
			.talk Velog Icebellow##30401
			..turnin The Brothers Bronzebeard##12973
		step
			goto The Storm Peaks,29.8,75.7
			.talk Fjorlin Frostbrow##29732
			..turnin Unwelcome Guests##12876
		step
			goto The Storm Peaks,35.94,31.50
			.talk Thorim##30399
			.' Tell him "I'm with you, Thorim."
			.' Watch the dialogue.
			.info Follow Thorim.
			.' Witness the Reckoning|q 13047/1
		step
			goto The Storm Peaks,65.44,60.15
			.talk King Jokkum##30105
			..turnin The Reckoning##13047
		step
			.' Congratulations! +106/100 quests for achievement "The Summit of Storm Peaks".
]])

ZygorGuidesViewer:RegisterGuide("Ding80's Loremaster Alliance Guides\\Northrend\\[77] Icecrown",[[
author danaton
description This guide contain quest-chain (142) for Icecrown location.
startlevel 77
		step
			goto Dalaran,67.72,47.21
			.talk Officer Van Rossem##31081
			..accept Preparations for War##13418
		step
			goto Icecrown,87.46,75.83
			.talk Highlord Tirion Fordring##28179
			..accept Honor Above All Else##13036
		step
			goto Icecrown,87.09,75.85
			.talk Crusade Commander Entari##30223
			..turnin Honor Above All Else##13036
			..accept Scourge Tactics##13008
		step
			goto Icecrown,86.75,76.60
			.talk Father Gustav##30226
			..accept Curing The Incurable##13040
		step
			goto Icecrown,86.06,75.77
			.talk Crusader Lord Dalfors##30224
			..accept Defending The Vanguard##13039
		step
			goto Icecrown,83.85,75.58
			.kill Webbed Crusader##30273|n
			.info They look like white squirming cocoons on the ground.
			.info You can find them all around the Valley of Echoes area.
			.' Free 8 Webbed Crusaders|q 13008/1
		step
			goto Icecrown,83.85,75.58
			.from Forgotten Depths Acolyte##30205, Carrion Fleshstripper##30206, Forgotten Depths Slayer##30333
			.info They look like spiders.
			.info You can find them all around the Valley of Echoes area.
			.' Slay 15 Forgotten Depths Nerubians|q 13039/1
			.get 10 Forgotten Depths Venom Sac##42770|q 13040/1
		step
			goto Icecrown,86.06,75.77
			.talk Crusader Lord Dalfors##30224
			..turnin Defending The Vanguard##13039
		step
			goto Icecrown,86.75,76.60
			.talk Father Gustav##30226
			..turnin Curing The Incurable##13040
		step
			goto Icecrown,87.09,75.85
			.talk Crusade Commander Entari##30223
			..turnin Scourge Tactics##13008
			..accept If There Are Survivors...##13044
		step
			goto Icecrown,87.01,79.02
			.talk Penumbrius##30227
			..turnin If There Are Survivors...##13044
			..accept Into The Wild Green Yonder##13045
		step
			goto 87.10,79.14
			.' Interact with NPC: Argent Skytalon
			.' Ride an Argent Skytalon |invehicle |q 13045
		step
			goto Icecrown,78.40,64.61
			.' Pick Up Captured Crusaders.
			.info Use the "Grab Captured Crusader" ability on your action bar near Captured Crusaders.
			.info They look like humans trapped in brown and white webbed cocoons.
			.info You can find them all around the Scourgeholme area.
			.' Bring Them to Safety
			.info Fly them back to the Argent Vanguard.
			.info Use the "Drop Off Captured Crusader" ability on your action bar.
			.' Rescue 3 Captured Crusaders|q 13045/1
			.' Bring the Captured Crusaders|at 86.85,76.60
		step
			goto Icecrown,87.46,75.83
			.' Release the Argent Skytalon |outvehicle |q 13045
			.info Click the red arrow on your action bar.
		step
			goto Icecrown,87.46,75.83
			.talk Highlord Tirion Fordring##28179
			..turnin Into The Wild Green Yonder##13045
			..accept A Cold Front Approaches##13070
		step
			goto Icecrown,85.62,76.01
			.talk Siegemaster Fezzik##30657
			..turnin A Cold Front Approaches##13070
			..accept The Last Line Of Defense##13086
		step
			goto Icecrown,85.33,75.84
			.' Interact with NPC Argent Cannon
			.info They look like mounted metal guns on top of the walls around this area.
			.' Control the Argent Cannon |invehicle |q 13086
		step
			goto Icecrown,85.33,75.84
			.kill 3 Frostbrood Destroyer##30575|q 13086/2
			.info They look like skeletal dragons nearby.
			.info Use the abilities on your action bar.
		step
			goto Icecrown,85.33,75.84
			.' Kill enemies around this area.
			.info On the ground and in the air nearby.
			.info Use the abilities on your action bar.
			.' Slay 100 Scourge Attackers|q 13086/1
		step
			.' Stop Controlling the Argent Cannon |outvehicle |q 13086
			.info Click the yellow arrow on your action bar.
		step
			goto Icecrown,85.62,76.01
			.talk Siegemaster Fezzik##30657
			..turnin The Last Line Of Defense##13086
		step
			goto Icecrown,86.03,75.80
			.talk Highlord Tirion Fordring##30677
			..accept Once More Unto The Breach, Hero##13105
			only if DeathKnight
		step
			goto Icecrown,86.03,75.80
			.talk Highlord Tirion Fordring##30677
			..accept Once More Unto The Breach, Hero##13104
			only if not DeathKnight
		step
			goto Icecrown,83.02,72.94
			.talk The Ebon Watcher##30596
			..turnin Once More Unto The Breach, Hero##13105
			..accept The Purging Of Scourgeholme##13118
			..accept The Scourgestone##13122
			only if DeathKnight
		step
			goto Icecrown,83.02,72.94
			.talk The Ebon Watcher##30596
			..turnin Once More Unto The Breach, Hero##13104
			..accept The Purging Of Scourgeholme##13118
			..accept The Scourgestone##13122
			only if not DeathKnight
		step
			goto Icecrown,83.02,73.07
			.talk Crusade Architect Silas##30686
			..accept The Stone That Started A Revolution##13130
		step
			goto Icecrown,82.99,73.07
			.talk Crusade Engineer Spitzpatrick##30714
			..accept It Could kill Us All##13135
		step
			goto Icecrown,82.87,72.78
			.talk Father Gustav##30683
			..accept The Restless Dead##13110
		step
			goto Crystalsong Forest,61.77,58.87
			.collect 10 Crystalline Heartwood##43217|q 13130/1
			.info They look like pink glowing tree stumps on the ground.
			.' You can find more around (1)|at 69.53,69.92
			.' You can find more around (2)|at 75.58,66.02
			.' You can find more around (3)|at 82.96,64.06
		step
			goto Crystalsong Forest,75.58,66.02
			.collect 10 Ancient Elven Masonry##43218|q 13130/2
			.info They look like blue stone column pieces on the ground.
			.' You can find more around|at 82.96,64.06
		step
			goto Crystalsong Forest,78.19,59.09
			.' Kill enemies around this area.
			.collect 8 Crystallized Energy##43225|q 13135/1
			.' You can find more around (1)|at 63.57,66.94
			.' You can find more around (2)|at 61.01,54.67
		step
			goto Icecrown,83.02,73.07
			.talk Crusade Architect Silas##30686
			..turnin The Stone That Started A Revolution##13130
		step
			goto Icecrown,82.99,73.07
			.talk Crusade Engineer Spitzpatrick##30714
			..turnin It Could kill Us All##13135
		step
			goto Icecrown,77.31,68.19
			.kill 3 Forgotten Depths High Priest##31037|q 13118/1
			.info They are usually inside or next to the buildings around the Scourgeholme area.
			.' You can find more around ()|at 79.21,64.00
			.' You can find more around ()|at 75.65,61.06
			.' You can find more around ()|at 79.06,60.42
			.' You can find more around ()|at 78.79,56.27
		step
			goto Icecrown,78.00,63.16
			.kill 3 Forgotten Depths Underking##31039|q 13118/2
			.info They look like huge beetles.
			.info You can find them all around the Scourgeholme area.
		step
			goto Icecrown,78.32,66.36
			.kill 8 Reanimated Crusader##31043|q 13118/3
			.info They look like skeletons.
			.info You can find them all around the Scourgeholme area.
		step
			goto Icecrown,78.32,66.36
			.kill Reanimated Crusader##31043|n
			.info They look like skeletons.
			.info You can find them all around the Scourgeholme area.
			.use the Holy Water##43153
			.info Use it on their corpses.
			.' Free 10 Restless Souls|q 13110/1
		step
			goto Icecrown,78.00,63.16
			.' Kill enemies around this area.
			.info You can find them all around the Scourgeholme area.
			.collect 15 Scourgestone##43169|q 13122/1
		step
			goto Icecrown,83.02,72.94
			.talk The Ebon Watcher##30596
			..turnin The Purging Of Scourgeholme##13118
			..turnin The Scourgestone##13122
			..accept The Air Stands Still##13125
		step
			goto Icecrown,82.87,72.78
			.talk Father Gustav##30683
			..turnin The Restless Dead##13110
		step
			goto Icecrown,77.33,61.90
			.use War Horn of Acherus##43206
			.info Use it on Salranax the Flesh Render inside the building.
			.info He is elite, but don't worry.
			.info Your allies will appear to help you kill him after you use the horn.
			.kill Salranax the Flesh Render##30829|q 13125/1
		step
			goto Icecrown,80.08,61.16
			.use War Horn of Acherus##43206
			.info Use it on High Priest Yath'amon inside the building.
			.info He is elite, but don't worry.
			.info Your allies will appear to help you kill him after you use the horn.
			.kill High Priest Yath'amon##30831|q 13125/3
		step
			goto Icecrown,76.48,53.70
			.use War Horn of Acherus##43206
			.info Use it on Underking Talonox.
			.info He walks around this area.
			.info He is elite, but don't worry.
			.info Your allies will appear to help you kill him after you use the horn.
			.kill Underking Talonox##30830|q 13125/2
			.info High Lord Darion will open a Death Gate after Underking Talonox is defeated.
		step
			goto Icecrown,83.02,72.93
			.talk The Ebon Watcher##30596
			..turnin The Air Stands Still##13125
		step
			goto Icecrown,82.87,72.78
			.talk Father Gustav##30683
			..accept Into The Frozen Heart Of Northrend##13139
		step
			goto Icecrown,86.01,75.75
			.talk Highlord Tirion Fordring##30677
			..turnin Into The Frozen Heart Of Northrend##13139
			..accept The Battle For Crusaders' Pinnacle##13141
		step
			goto Icecrown,80.08,71.94
			.use Blessed Banner of the Crusade##43243
			.info Your allies will appear and help you fight.
			.' Kill the enemies that attack in waves
			.info Groups of enemies will run up the path nearby.
			.kill Halof the Deathbringer##30989|n
			.' Complete the Battle for Crusaders' Pinnacle|q 13141/1
		step
			goto Icecrown,82.87,72.78
			.talk Father Gustav##30683
			..turnin The Battle For Crusaders' Pinnacle##13141
			..accept The Crusaders' Pinnacle##13157
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin The Crusaders' Pinnacle##13157
			..accept A Tale of Valor##13068
		step
			goto Icecrown,79.39,72.88
			.talk Marshal Ivalius##31241
			..accept The Skybreaker##13225
		step
			.' On the Skybreaker Airship:
			.talk High Captain Justin Bartlett##30344
			..turnin Preparations for War##13418
			..turnin The Skybreaker##13225
			..accept The Broken Front##13231
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..accept It's All Fun and Games##12887
		step
			.' On the Skybreaker Airship:
			.talk Knight-Captain Drosche##32302
			..accept Joining the Assault##13341
		step
			.' On the Skybreaker Airship:
			.talk Chief Engineer Boltwrench##30345
			.info Downstairs inside the airship, on the bottom floor, near the front of the airship.
			.info To get downstairs, run down the stairs in the center of the main deck.
			..accept Get to Ymirheim!##13296
		step
			goto Icecrown,79.84,30.82
			.talk Crusader Bridenbrad##30562
			..turnin A Tale of Valor##13068
			..accept A Hero Remains##13072
		step
			goto Icecrown,44.55,22.44
			.use the Eyesore Blaster##41265
			.info Use it repeatedly on The Ocular.
			.info It looks like a huge blue glowing eye at the top of this tower.
			.info You can use this item while flying.
			.' Destroy The Ocular|q 12887/1
		step
			goto Icecrown,44.15,24.68
			.talk Baron Sliver##29804
			..turnin It's All Fun and Games##12887
			..accept I Have an Idea, But First...##12891
		step
			goto Icecrown,43.23,25.19
			.from Shadow Cultist##29717
			.info They look like humans in purple shadowy robes.
			.info You can find them all around the Shadow Vault area.
			.info You can also find them up on the raised platforms and inside the building nearby.
			.get Cultist Rod##41359|q 12891/1
		step
			goto Icecrown,43.23,25.19
			.from Morbid Carcass##29719
			.info They look like abominations.
			.info You can find them all around the Shadow Vault area.
			.info You can also find them up on the raised platforms and inside the building nearby.
			.get Abomination Hook##41361|q 12891/2
		step
			goto Icecrown,43.23,25.19
			.from Vault Geist##29720
			.info They look like frail humanoids crouching on the ground.
			.info You can find them all around the Shadow Vault area.
			.info You can also find them up on the raised platforms and inside the building nearby.
			.get Geist Rope##41362|q 12891/3
		step
			goto Icecrown,43.23,25.19
			.' Kill enemies around this area
			.info Only Undead enemies will drop the quest item.
			.info You can find them all around the Shadow Vault area.
			.info You can also find them up on the raised platforms and inside the building nearby.
			.get 5 Scourge Essence##41363|q 12891/4
		step
			goto Icecrown,44.15,24.68
			.talk Baron Sliver##29804
			..turnin I Have and Idea, But First...##12891
			..accept Free Your Mind##12893
		step
			goto Icecrown,44.42,27.00
			.kill Vile##29769|n
			.info He looks like a larger abomination.
			.info On the raised platform.
			.use Soveriegn Rod##41366
			.info Use it on his corpse.
			.' Turn Vile|q 12893/1
		step
			goto Icecrown,41.75,24.49
			.kill Lady Nightswood##29770|n
			.info She looks like a banshee.
			.info On the raised platform.
			.use Soveriegn Rod##41366
			.info Use it on her corpse.
			.' Turn Lady Nightswood|q 12893/2
		step
			goto Icecrown,46.08,20.83
			.kill The Leaper##29840|n
			.info He looks like a larger Geist.
			.info He runs along the path of the raised tower platform, outside, high off the ground.
			.info The platform almost wraps around the whole tower.
			.use Soveriegn Rod##41366
			.info Use it on his corpse.
			.' Turn the Leaper|q 12893/3
		step
			goto Icecrown,44.15,24.68
			.talk Baron Sliver##29804
			..turnin Free Your Mind##12893
			..accept If He Cannot Be Turned##12896
		step
			goto Icecrown,44.72,19.76
			.' Interact with gameobject: General's Weapon Rack
			.info Inside the building.
			.info Be careful, a level 80 elite enemy will appear and attack you.
			.info If you have trouble, try to find someone to help you.
			.info It is important to get this quest done, since it unlocks a quest hub.
			.kill General Lightsbane##29851|q 12896/1
		step
			goto Icecrown,62.56,51.33
			.talk Ground Commander Koup##31808
			..turnin Joining the Assault##13341
		step
			goto Icecrown,56.99,62.57
			.talk Frazzle Geargrinder##31776
			..turnin Get to Ymirheim!##13296
		step
			.' Move inside the cave|goto 57,57.25,0.3 |q 13308 |future
		step
			goto Icecrown,54.5,59.3
			.talk Darkspeaker R'khem##31892
			..accept Mind Tricks##13308
		step
			goto Icecrown,55.1,59.4
			.from Foreman Thaldrin##31399
			.get Foreman's Key##44153|q 13308/1
		step
			goto Icecrown,54.5,59.3
			.talk Darkspeaker R'khem##31892
			..turnin Mind Tricks##13308
		step
			goto Icecrown,66.75,64.04
			.talk Dying Soldier##31304
			.info They look like alliance soldiers laying on the ground.
			.info You won't be able to talk to them if they are already dead.
			.info You can find them all around the Broken Front Area.
			.' Tell them "Stay with me, friend. I must know what happened here."
			.' Question the Dying Soldier |q 13231/1
		step
			goto Icecrown,67.21,63.29
			.talk Dying Soldier##31304
			.info The Dying Soldier you talked to in the previous step.
			..accept Finish Me!##13232
		step
			goto Icecrown,69.82,64.53
			.talk Dying Soldier##31304
			.info They look like alliance soldiers laying on the ground around this area.
			.info You won't be able to talk to them if they are already dead.
			.info You can find them all around the Broken Front Area.
			.info You can do this while being mounted.
			.' Tell them "Travel well, hero of the Alliance!"
			.' Slay 5 Dying Alliance Soldiers|q 13232/1
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin A Hero Remains##13072
			..accept The Keeper's Favor##13073
		step
			goto Icecrown,87.06,77.02
			.talk Arch Druid Lilliandra##30630
			.' Tell her "It's a pleasure to meet you as well, Archdruid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?"
			.' Interact with gameobject: Moonglade Portal
			.info It appears nearby.
			.info You can use your Teleport Moonglade spell instead if you like.|only Druid
			.' Teleport to Moonglade|goto Moonglade|q 13073
		step
			goto Moonglade,36.20,41.81
			.talk Keeper Remulos##11832
			..turnin The Keeper's Favor##13073
			..accept Hope Within the Emerald Nightmare##13074
		step
			goto Moonglade,34.63,41.48
			.' Interact with gameobject: Emerald Acorn
			.info They look like brown pinecones on the ground, usually near trees.
			.info You can find them all around the Shrine of Remulos area.
			.collect 3 Emerald Acorn##43006|q 13074/1
		step
			.' Wake from the Dream |nobuff Spell_Nature_Sleep |q 13074
			.info Right-click the "Fitful Dream" buff near your minimap.
		step
			goto Moonglade,36.20,41.81
			.talk Keeper Remulos##11832
			..turnin Hope Within the Emerald Nightmare##13074
			..accept The Boon of Remulos##13075
		step
			goto Moonglade,36.20,41.81
			.talk Keeper Remulos##11832
			.' Speak with Keeper Remulos
			.' Interact with gameobject: Moonglade Return Portal|goto Icecrown|q 13075
			.info It appears next to Keeper Remulos.
		step
			goto Icecrown,79.85,30.82
			.talk Crusader Bridenbrad##30562
			..turnin The Boon of Remulos##13075
			..accept Time Yet Remains##13076
		step
			.' On the Skybreaker Airship:
			.talk High Captain Justin Bartlett##30344
			..turnin The Broken Front##13231
			..turnin Finish Me!##13232
			..accept ...All the Help We Can Get##13286
			..accept Your Attention, Please##13290
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin If He Cannot Be Turned##12896
			..accept The Shadow Vault##12898
			..turnin ...All the Help We Can Get.##13286
			..accept Poke and Prod##13287
		step
			.' On the Skybreaker Airship:
			.talk Chief Engineer Boltwrench##30345
			.info Downstairs inside the airship, on the bottom floor, near the front of the airship.
			.info To get downstairs, run down the stairs in the center of the main deck.
			..turnin Your Attention, Please##13290
			..accept Borrowed Technology##13291
		step
			goto Icecrown,42.84,24.92
			.talk Baron Sliver##29343
			..turnin The Shadow Vault##12898
			..accept The Duke##12938
			..accept Blackwatch##13106
		step
			goto Icecrown,44.66,20.34
			.talk Duke Lankral##30002
			..turnin The Duke##12938
			..accept Honor Challenge##12939
		step
			goto Icecrown,43.63,25.13
			.talk The Leaper##30074
			..accept Eliminate the Competition##12955
		step
			goto Icecrown,37.86,25.12
			.talk Efrem the Faithful##30081
			.' Tell him "I challenge you to a duel, Scarlet scum!"
			.kill Efrem the Faithful##30081|n
			.info He will eventually surrender.
			.' Defeat Efrem the Faithful|q 12955/2
		step
			goto Icecrown,36.14,23.57
			.talk Tinky Wickwhistle##30162
			.' Tell her "Sorry, Tinky, but I can't afford you as a distraction while I'm doing what needs to be done here."
			.kill Tinky Wickwhistle##30162|n
			.info She will eventually surrender.
			.' Defeat Tinky Wickwhistle|q 12955/4
		step
			goto Icecrown,37.07,22.47
			.talk Sigrid Iceborn##30086
			.' Tell her "I've heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try."
			.kill Sigrid Iceborn##30086|n
			.info She will eventually surrender.
			.' Defeat Sigrid Iceborn|q 12955/1
		step
			goto Icecrown,37.86,22.93
			.talk Onu'zun##30180
			.' Tell him "I have bad news for you Onu'zun: I'm gonna have to cut short your dreams!"
			.kill Onu'zun##30180|n
			.info He will eventually surrender.
			.' Defeat Onu'zun |q 12955/3
		step
			goto Icecrown,37.21,23.81
			.use Challenge Flag##41372
			.info Use it on Mjordin Combatants.
			.info They look like large humans fighting around this area.
			.kill Mjordin Combatant##30037|n
			.' Challenge and Defeat 6 Mjordin Combatants|q 12939/1
		step
			goto Icecrown,43.63,25.13
			.talk The Leaper##30074
			..turnin Eliminate the Competition##12955
			..accept The Bone Witch##12999
		step
			goto Icecrown,44.66,20.34
			.talk Duke Lankral##30002
			..turnin Honor Challenge##12939
			..accept Shadow Vault Decree##12943
		step
			goto Icecrown,41.04,23.87
			.talk Vaelen the Flayed##30056
			.info Follow the path around to get to him.
			..accept Get the Key##12949
		step
			goto Icecrown,40.12,23.93
			.use Shadow Vault Decree##41776
			.info Use it on Thane Ulfrang the Mighty.
			.info Inside the building.
			.' Watch the dialogue
			.kill Thane Ulfrang the Mighty##29919|q 12943/1
		step
			goto Icecrown,37.15,23.21
			.from Instructor Hroegar##29915
			.info He looks like a larger human wearing a white cape.
			.info He walks around this area.
			.get Key to Vaelan's Chains##41843|q 12949/1
		step
			goto Icecrown,41.04,23.87
			.talk Vaelen the Flayed##30056
			..turnin Get the Key##12949
			..accept Let the Baron Know##12951
		step
			goto Icecrown,42.84,24.92
			.talk Baron Sliver##29343
			..turnin Let the Baron Know##12951
			..accept Vaelen Has Returned##13085
		step
			goto Icecrown,43.16,25.15
			.talk Vile##30216
			..accept Crush Dem Vrykuls!##12992
		step
			goto Icecrown,43.11,21.07
			.talk Vaelen the Flayed##30218
			..turnin Vaelen Has Returned##13085
			..accept Ebon Blade Prisoners##12982
		step
			goto Icecrown,44.66,20.34
			.talk Duke Lankral##30002
			..turnin Shadow Vault Decree##12943
			..accept Vandalizing Jotunheim##13084
		step
			goto Icecrown,33.59,27.83
			.' Kill enemies around this area
			.collect Jotunheim Cage Key##42422|n
			.' Interact with gameobject: Jotunheim Cage
			.info They look like wooden cages.
			.info You can find them all around the Jotunheim area.
			.' Set 8 Ebon Blade Prisoners Free|q 12982/1
			.' You can find more around (1)|at 29.72,36.30
			.' You can find more around (2)|at 28.69,45.38
		step
			goto Icecrown,33.59,27.83
			.' Interact with gameobject: Vrykul Banner
			.info They look like large wooden posts with dark colored banners hanging from them.
			.info You can find them all around the Jotunheim area.
			.' Burn 10 Vrykul Banners|q 13084/1
			.' You can find more around (1)|at 29.72,36.30
			.' You can find more around (2)|at 28.69,45.38
		step
			goto Icecrown,33.59,27.83
			.' Kill enemies around this area
			.info They look like large humans.
			.info You can find them all around the Jotunheim area.
			.collect 15 Vrykul Bones##43089|q 13092 |future
			.' You can find more around (1)|at 29.72,36.30
			.' You can find more around (2)|at 28.69,45.38
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin The Bone Witch##12999
			..accept Deep in the Bowels of the Underhalls##13042
			..accept Reading the Bones##13092
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			.info Choose the "Fate Rune of Fleet Feet" quest reward.
			.info Use it afterward to get a run speed buff.
			..turnin Reading the Bones##13092
		step
			goto Icecrown,36.11,33.07
			.talk Bethod Feigr##30406
			..accept Revenge for the Vargul##13059
		step
			goto Icecrown,33.11,37.68
			.use Bethod's Sword##42928
			.info Inside the building, on the middle floor.
			.info You will be attacked.
			.' Issue a Challenge Using Bethod's Sword|q 13059/1
		step
			goto Icecrown,33.11,37.68
			.' Kill the enemies that attack
			.info Inside the building, on the middle floor.
			.kill Thane Illskar##30475|q 13059/2
		step
			goto Icecrown,34.01,36.34
			.kill Apprentice Osterkilgr##30409|n
			.info He walks around this area inside the building, under the stairs on the bottom floor.
			.info Don't kill him too quickly, just weaken him until he starts talking, then you can kill him.
			.' Beat the Information Out of Apprentice Osterkilgr|q 13042/1
			.kill Apprentice Osterkilgr##30409|q 13042/2
			.collect Dr. Terrible's "Building a Better Flesh Giant"##42772|q 13043 |future
		step
			.use Dr. Terrible's "Building a Better Flesh Giant"##42772
			..accept The Sum is Greater than the Parts##13043
		step
			goto Icecrown,33.37,33.17
			.' Interact with NPC: Nergeld
			.info Inside the building, on the bottom floor.
			.' Kill the enemies that attack in waves
			.info Use the abilities on your action bar.
			.kill Dr. Terrible##30404|q 13043/1
		step
			goto Icecrown,36.11,33.07
			.talk Bethod Feigr##30406
			..turnin Revenge for the Vargul##13059
		step
			goto Icecrown,34.60,34.98
			.' Kill enemies around this area
			.info They look like large humans.
			.info Inside the building.
			.info You can find them all around the Jotunheim area.
			.' Slay 15 Jotunheim Vrykul|q 12992/1
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin Deep in the Bowels of the Underhalls##13042
			..turnin The Sum is Greater than the Parts##13043
			..accept The Art of Being a Water Terror##13091
		step
			goto Icecrown,31.36,41.22
			.' Interact with gameobject: Lock Gate
			.' Control a Water Terror |invehicle |q 13091
		step
			goto Icecrown,31.45,39.66
			.' Kill enemies around this area
			.info They look like large humans.
			.info You can find them all around the Jotunheim area.
			.info Use the abilities on your action bar.
			.' Slay 10 Jotunheim Vrykul While Possessing a Water Terror|q 13091/1
		step
			.' Stop Controlling the Water Terror |outvehicle |q 13091
			.info Click the red arrow on your action bar.
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin The Art of Being a Water Terror##13091
			..accept Through the Eye##13121
		step
			goto Icecrown,43.16,25.15
			.talk Vile##30216
			..turnin Crush Dem Vrykuls!##12992
		step
			goto Icecrown,43.11,21.07
			.talk Vaelen the Flayed##30218
			..turnin Ebon Blade Prisoners##12982
		step
			goto Icecrown,44.66,20.33
			.talk Duke Lankral##30002
			..turnin Vandalizing Jotunheim##13084
		step
			goto Icecrown,42.84,24.92
			.talk Baron Sliver##29343
			..accept To the Rise with all Due Haste!##12806
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			..turnin To the Rise with all Due Haste!##12806
			..accept The Story Thus Far...##12807
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			.' Tell him "Lord-Commander, I would hear your tale."
			.' Listen to Lord-Commander Arete's Tale|q 12807/1
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			..turnin The Story Thus Far...##12807
			..accept Blood in the Water##12810
		step
			goto Icecrown,9.31,40.48
			.' Kill Onslaught enemies around this area
			.info They look like humans in red and white armor all around the Onslaught Harbor area.
			.info They can also be flying in the air on white birds.
			.collect Scarlet Onslaught Trunk Key##40652|n
			.' Interact with gameobject: Scarlet Onslaught Trunk
			.info They look like small wooden boxes on the ground.
			.info You can find them all around the Onslaught Harbor area.
			.info You may not always find a quest item in the chests.
			.collect Note from the Grand Admiral##40666|q 12839 |future
		step
			.use the Note from the Grand Admiral##40666
			..accept The Grand (Admiral's) Plan##12839
		step
			goto Icecrown,13.87,46.23
			.kill Ravenous Jaws##29392|n
			.info They look like hammerhead sharks.
			.info You can find them underwater around the outskirts, and inside the Onslaught Harbor area.
			.use the Gore Bladder##40551
			.info Use it on their corpses.
			.' Collect Blood from 10 Ravenous Jaws|q 12810/1
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			..turnin Blood in the Water##12810
			..accept You'll Need a Gryphon##12814
			..turnin The Grand (Admiral's) Plan##12839
			..accept In Strict Confidence##12840
		step
			goto Icecrown,7.03,41.92
			.kill Captain Hartford##29490|n
			.info On the top deck of the ship.
			.' Beat and kill Captain Hartford for Information|q 12840/2
		step
			goto Icecrown,5.67,41.94
			.kill Captain Welsington##29489|n
			.info On the top deck of the ship.
			.' Beat and kill Captain Welsington for Information|q 12840/1
		step
			goto Icecrown,8.26,43.23
			.kill Onslaught Gryphon Rider##29333|n
			.info They look like humans flying on white birds.
			.info You can find them all around the Onslaught Harbor area.
			.collect Onslaught Gryphon Reins##40970|q 12814
		step
			.use the Onslaught Gryphon Reins##40970
			.' Take Control of an Onslaught Gryphon |invehicle |q 12814
		step
			goto Icecrown,19.64,47.80
			.' Deliver the Onslaught Gryphon to Uzo Deathcaller|q 12814/1
			.info Use the ability on your action bar.
			.info Next to Uzo Deathcaller.
			.info On the platform on the side of the cliff.
		step
			goto Icecrown,19.64,47.80
			.talk Uzo Deathcaller##29405
			..turnin You'll Need a Gryphon##12814
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			..turnin In Strict Confidence##12840
			..accept Second Chances##12847
		step
			goto Icecrown,26.2,62.3
			.' Interact with gameobject: Eye of the Lich King
			.info It looks like a floating blue orb.
			.info Inside the building.
			.info Follow the path around to get to it.
			.' Choose "Grasp the Eye of the Lich King and focus your will upon it to scry for important information."
			.' Watch the dialogue
			.' Gain Information for The Bone Witch|q 13121/1
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Blackwatch##13106
			..accept Where Are They Coming From?##13117
		step
			goto Icecrown,37.06,71.09
			.' Interact with gameobject: Summoning Altar
			.info They look like small stone stages with green summoning circles on them on the ground.
			.' Investigate a Summoning Altar|q 13117/1
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Where Are They Coming From?##13117
			..accept Destroying the Altars##13119
			..accept Death's Gaze##13120
		step
			goto Icecrown,30.55,65.11
			.' Interact with gameobject: Cauldron Area Orb Stand
			.' Place the Orb in the Cauldron Area|q 13120/3
		step
			goto Icecrown,32.59,70.55
			.' Interact with gameobject: Abomination Lab Orb Stand
			.' Place the Orb in the Abomination Lab|q 13120/1
		step
			goto Icecrown,34.59,69.64
			.' Interact with gameobject: Flesh Giant Lab Orb Stand
			.' Place the Orb in the Flesh Giant Lab|q 13120/2
		step
			goto Icecrown,37.14,71.11
			.kill Master Summoner Zarod##30746|n
			.info He looks like a lich wearing a purple robe.
			.info He walks around this area.
			.collect Master Summoner's Staff##43159|q 13119
		step
			goto Icecrown,36.75,70.72
			.use Master Summoner's Staff##43159
			.info You can do this while flying.
			.' Destroy the First Summoning Altar|q 13119/1 |
		step
			goto Icecrown,36.60,71.64
			.use Master Summoner's Staff##43159
			.info You can do this while flying.
			.' Destroy the Second Summoning Altar|q 13119/2
		step
			goto Icecrown,37.36,71.52
			.use Master Summoner's Staff##43159
			.info You can do this while flying.
			.' Destroy the Fourth Summoning Altar|q 13119/4
		step
			goto Icecrown,37.36,71.52
			.use Master Summoner's Staff##43159
			.info You can do this while flying.
			.' Destroy the Third Summoning Altar|q 13119/3
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Destroying the Altars##13119
			..turnin Death's Gaze##13120
			..accept Spill Their Blood##13134
		step
			goto Icecrown,31.76,64.80
			.talk Father Kamaros##31279
			..accept I'm Not Dead Yet!##13221
			.info This is an escort quest.
			.info You may need to wait if he isn't present.
		step
			goto Icecrown,31.98,57.02
			.' Watch the dialogue
			.info Follow Father Kamaros and protect him as he walks.
			.info He eventually walks to this location.
			.' Escort Father Kamaros to Safety|q 13221/1
		step
			goto Icecrown,32.22,68.09
			.kill Spiked Ghoul##30597|n
			.info They look like grey zombies with spikes on the backs.
			.info You can find them all around the Fleshwerks area.
			.collect Jagged Shard##43242|q 13136 |future
		step
			.use the Jagged Shard##43242
			..accept Jagged Shards##13136
		step
			goto Icecrown,32.22,68.09
			.' Interact with gameobject: Embalming Fluid
			.info They look like larger glass orbs with green liquid in them, in short metal stands.
			.info You can find them all around the Fleshwerks area.
			.' Destroy 5 Vats of Embalming Fluid|q 13134/2
		step
			goto Icecrown,32.22,68.09
			.' Interact with gameobject: Blood Orb
			.info They look like smaller glass orbs with red liquid in them, in taller metal stands.
			.info You can find them all around the Fleshwerks area.
			.' Shatter 5 Blood Orbs|q 13134/1
		step
			goto Icecrown,32.22,68.09
			.from Spiked Ghoul##30597
			.info They look like grey zombies with spikes on the backs.
			.info You can find them all around the Fleshwerks area.
			.get 10 Jagged Shard##43242|q 13136/1
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Spill Their Blood##13134
		step
			goto Icecrown,35.50,66.45
			.talk Crusader Olakin Sainrith##30708
			..turnin Jagged Shards##13136
			..accept I'm Smelting... Smelting!##13138
			..accept The Runesmiths of Malykriss##13140
		step
			goto Icecrown,58.09,70.87
			.use Bag of Jagged Shards##43289
			.info Next to a huge vent on the ground with a tornado of fire rising out of it.
			.collect Smelted Metal Bar##43288|q 13138/1
		step
			goto Icecrown,58.91,73.64
			.from Skeletal Runesmith##30921
			.info They look like skeletons.
			.info You can find them alll around the Malykriss: The Vile Hold area.
			.get 5 Runed Saronite Plate##43291|q 13140/1
		step
			goto Icecrown,68.89,65.59
			.collect 3 Pile of Bones##43609|q 13291
			.info They look like small groups of white bones on the ground.
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,68.89,65.59
			.collect 3 Abandoned Armor##43616|q 13291
			.info They look like metal armor chest pieces on the ground.
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,68.89,65.59
			.collect 3 Abandoned Helm##43610|q 13291
			.info They look like small metal helmets on the ground.
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,68.89,65.59
			.use Smuggled Solution##44048
			.info Use it multiple times.
			.info A skeletal dragon will fly down and die each time.
			.' Conduct 3 Field Tests|q 13291/1
		step
			goto Icecrown,68.89,65.59
			.kill 5 Hulking Abomination##31140|q 13287/1
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,68.89,65.59
			.kill 5 Malefic Necromancer##31155|q 13287/2
			.info They look like skeletons wearing brown capes.
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,68.89,65.59
			.kill 5 Shadow Adept##31145|q 13287/3
			.info They look like humans channeling a green spell on objects.
			.info You can find them all around the Broken Front area.
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin Time Yet Remains##13076
			..accept The Touch of an Aspect##13077
		step
			goto Dragonblight,59.83,54.66
			.talk Alexstrasza the Life-Binder##26917
			..turnin The Touch of an Aspect##13077
			..accept Dahlia's Tears##13078
		step
			goto Dragonblight,51.98,47.10
			.collect Dahlia's Tears##43084|q 13078/1
			.info They look like small yellow flowers on the ground around this area.
			.' You can find more around (1)|at 50.36,52.09
			.' You can find more around (2)|at 43.92,51.88
		step
			goto Dragonblight,59.83,54.66
			.talk Alexstrasza the Life-Binder##26917
			..turnin Dahlia's Tears##13078
			..accept The Boon of Alexstrasza##13079
		step
			goto Icecrown,79.85,30.82
			.talk Crusader Bridenbrad##30562
			..turnin The Boon of Alexstrasza##13079
			..accept Hope Yet Remains##13080
		step
			.' On the Skybreaker Airship:
			.talk Absalan the Pious##31259
			..turnin I'm Not Dead Yet!##13221
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin Poke and Prod##13287
			..accept That's Abominable!##13288
			..accept Exploiting an Opening##13386
			..accept Against the Giants##13294
		step
			.' On the Skybreaker Airship:
			.talk Chief Engineer Boltwrench##30345
			.info Downstairs inside the airship, on the bottom floor, near the front of the airship.
			.info To get downstairs, run down the stairs in the center of the main deck.
			..turnin Borrowed Technology##13291
			..accept Killohertz##13383
		step
			goto Icecrown,67.92,60.67
			.kill Hulking Abomination##31140|n
			.info You can find them south and southeast of this location.
			.collect Chilled Abomination Guts##43966|n
			.info You can only have 1 at a time.
			.use the Abomination Reanimation Kit##43968
			.info You will take control of a Hulking Abomination.
			.info It spawns in as aggressive.
			.info Make it Defensive or Passive or it will aggro nearby enemies.
			.info Send your Hulking Abomination into groups of undead enemies near this location.
			.info Gather them up so that a group of many are attacking your abomination.
			.info Use the "Burst at the Seams" ability on your pet action bar when you have many attacking your abomination.
			.info Your abomination will blow up and kill the enemies.
			.info Do this multiple times.
			.' Explode 15 Icy Ghouls|q 13288/1
			.' Explode 15 Vicious Geists|q 13288/2
			.' Explode 15 Risen Alliance Soldiers|q 13288/3
		step
			goto Icecrown,51.75,86.69
			.talk Captain Kendall##31444
			..turnin Exploiting an Opening##13386
			..accept Securing the Perimeter##13387
		step
			goto Icecrown,53.05,89.49
			.kill 10 Hulking Horror##31413|q 13387/1
			.info Inside the building, on the ground floor.
			.info You can find them all around this area.
		step
			goto Icecrown,51.75,86.69
			.talk Captain Kendall##31444
			..turnin Securing the Perimeter##13387
			..accept Set it Off!##13388
		step
			goto Icecrown,54.35,86.24
			.' Interact with gameobject: Saronite Bomb Stack
			.info Inside the building, on the ground floor.
			.info You will fall down the huge whole after you accept the quest.
			..turnin Set it Off!##13388
			..accept A Short Fuse##13389
		step
			goto Icecrown,53.99,87.29
			.' Interact with gameobject: Pulsing Crystal
			.info Underwater.
			.info Underground, beneath Icecrown Citadel.
			..turnin A Short Fuse##13389
			..accept A Voice in the Dark##13390
		step
			goto Icecrown,53.81,86.93
			.talk Matthias Lehner##31237
			.info Be careful to not accidentally click the portal near him.
			..turnin A Voice in the Dark##13390
			..accept Time to Hide##13391
		step
			goto Icecrown,55.23,86.71
			.from Faceless Lurker##31691
			.info They look like elephant people.
			.info Underground around this area.
			.info You can find them all around the Naz'anak: The Forgotten Depths area.
			.get 3 Faceless One's Blood##44001|q 13391/1
		step
			goto Icecrown,53.81,86.93
			.talk Matthias Lehner##31237
			.info Be careful to not accidentally click the portal near him.
			..turnin Time to Hide##13391
			..accept Return to the Surface##13392
		step
			goto Icecrown,53.79,86.84|n
			.' Interact with gameobject: Surface Portal
			.info Underground, beneath Icecrown Citadel.
			.' Escape Naz'anak: The Forgotten Depths|goto Icecrown,49.07,71.56,1|q 13392
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin Hope Yet Remains##13080
			..accept The Will of the Naaru##13081
		step
			goto Icecrown,79.90,71.84|n
			.' Watch the dialogue.
			.info Rhydian will approach nearby and cast a portal.
			.' Interact with gameobject: Portal to Shattrath
			.' Teleport to Shattrath City|goto Shattrath City|q 13081
		step
			goto Shattrath City,54.00,44.64
			.talk A'dal##18481
			..turnin The Will of the Naaru##13081
			..accept The Boon of A'dal##13082
			.info You will be teleported back to Dalaran after you accept the quest.
		step
			goto Icecrown,68.95,73.05
			.from Pustulent Horror##31139
			.get 5 Pustulant Spine##43997|q 13294/1
			.' You can find more around|at 64.8,60.15
		step
			goto Icecrown,79.85,30.82
			.talk Crusader Bridenbrad##30562
			..turnin The Boon of A'dal##13082
		step
			goto Icecrown,79.78,30.83
			.' Interact with gameobject: Bridenbrad's Possessions
			..accept Light Within the Darkness##13083
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin That's Abominable!##13288
			..turnin Return to the Surface##13392
			..turnin Against the Giants##13294
			..accept Field Repairs##13393
			..accept Sneak Preview##13315
		step
			goto Icecrown,54,42.9
			.talk Kibli Killohertz##32444
			..turnin Killohertz##13383
		step
			goto Icecrown,53.93,44.68
			.' Visit the South of Aldur'thar|q 13315/1
			.info Fly over this location.
		step
			goto Icecrown,53.96,41.08
			.' Visit the Central of Aldur'thar|q 13315/2
			.info Fly over this location.
		step
			goto Icecrown,53.99,34.92
			.' Visit the North of Aldur'thar|q 13315/3
			.info Fly over this location.
		step
			goto Icecrown,51.05,34.06
			.' Visit the Northwest of Aldur'thar|q 13315/4
			.info Fly over this location.
		step
			goto Icecrown,44.06,24.54
			.talk Keritose Bloodblade##30946
			..accept Parting Gifts##13168
		step
			goto Icecrown,44.13,24.71
			.' Interact with gameobject: Eye of Dominion
			.' Choose <Seize control of an Eidolon Watcher through the eye.>
			.' Seize Control of an Eidolon Watcher|q 13168/1
		step
			.' Release the Eidolon Watcher |outvehicle |q 13168
			.info Click the red arrow on your action bar.
		step
			goto Icecrown,44.06,24.54
			.talk Keritose Bloodblade##30946
			..turnin Parting Gifts##13168
			..accept An Undead's Best Friend##13169
			..accept Honor is for the Weak##13170
			..accept From Whence They Came##13171
		step
			goto Icecrown,44.13,24.71
			.' Interact with gameobject: Eye of Dominion
			.' Choose <Seize control of an Eidolon Watcher through the eye.>
			.' Seize Control of an Eidolon Watcher |invehicle |q 13169
		step
			goto Icecrown,40.57,32.49
			.' Feed 18 Hungering Plaguehounds|q 13169/1
			.info Use the "Feed Hungering Plaguehound" ability on Hungering Plaguehounds.
			.info They look like demon dogs.
			.info You can find them all around the Weeping Quarry area.
			.' You can find more around|at 37.67,41.04
		step
			goto Icecrown,40.57,32.49
			.' Assassinate 20 Restless Lookouts|q 13170/1
			.info Use the "Assassinate Restless Lookout" ability on Restless Lookouts, when you are behind them.
			.info They look like ghouls.
			.info You can find them all around the Weeping Quarry area.
			.' You can find more around|at 37.67,41.04
		step
			goto Icecrown,40.57,32.49
			.' Banish 10 Scourge Crystals|q 13171/1
			.info Use the "Banish Scourge Crystal" ability on Scourge Crystals.
			.info They look like large purple crystals floating above stone pillars.
			.info You can find them all around the Weeping Quarry area.
			.' You can find more around|at 37.67,41.04
		step
			.' Release the Eidolon Watcher |outvehicle |q 13169
			.info Click the red arrow on your action bar.
		step
			goto Icecrown,44.06,24.54
			.talk Keritose Bloodblade##30946
			..turnin An Undead's Best Friend##13169
			..turnin Honor is for the Weak##13170
			..turnin From Whence They Came##13171
			..accept Seeds of Chaos##13172
			..accept Amidst the Confusion##13174
		step
			goto Icecrown,44.06,24.54
			.talk Keritose Bloodblade##30946
			.' Tell him "I am prepared to join the assault, Keritose. Do you have a skeletal gryphon ready for me?"
			.' Join the Assault |invehicle |q 13172
		step
			goto Icecrown,39.24,39.08
			.' Kill enemies around this area
			.info Use the ability on your action bar on the enemies on the ground as you fly.
			.info You can find them all around the Weeping Quarry area.
			.' Slaughter 80 Weeping Quarry Undead|q 13172/1
		step
			.' Stop Riding the Skeletal Gryphon |outvehicle |q 13172
			.info Click the red arrow on your action bar.
			.info Wait to do this until you know you will land in a safe area.
		step
			goto Icecrown,37.23,41.65
			.collect Weeping Quarry Schedule##43690|q 13174/4
			.info It looks like a rolled up scroll.
		step
			goto Icecrown,38.66,39.41
			.collect Weeping Quarry Map##43691|q 13174/3
			.info It looks like a flat brown piece of paper.
		step
			goto Icecrown,39.16,36.68
			.collect Weeping Quarry Ledger##43689|q 13174/2
			.info It looks like a rolled up scroll.
		step
			goto Icecrown,39.11,33.65
			.collect Weeping Quarry Document##43688|q 13174/1
			.info It looks like an unrolled scroll, under a canopy.
		step
			goto Icecrown,44.06,24.54
			.talk Keritose Bloodblade##30946
			..turnin Seeds of Chaos##13172
			..turnin Amidst the Confusion##13174
			..accept Vereth the Cunning##13155
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin Through the Eye##13121
			..accept Find the Ancient Hero##13133
		step
			goto Icecrown,27.29,48.23
			.talk Slumbering Mjordin##30718
			.info They look like upright sleeping vrykul along the walls inside the building.
			.info You can find them all around the Halls of the Ancestors area.
			.info It's random, but you will eventually find Iskalder.
			.' Choose "Waken the slumbering mjordin to see if it is really the ancient hero, Iskalder."
			.use The Bone Witch's Amulet##43166
			.info Use it on Iskalder once you find him.
			.info He will begin following you.
			.' Deliver Iskalder to The Bone Witch|at Icecrown,32.50,42.94|q 13133/1
			.info You can fly to the cave without losing Iskalder.
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin Find the Ancient Hero##13133
			..accept Not-So-Honorable Combat##13137
		step
			goto Icecrown,28.75,52.2
			.' Interact with gameobject: Battlescar Signal Fire
			.' Watch the dialogue.
			.kill Possessed Iskalder##30924|q 13137/1
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin Not-So-Honorable Combat##13137
			..accept Banshee's Revenge##13142
		step
			goto Icecrown,17.5,56.15
			.' Interact with gameobject: War Horn of Jotunheim
			.' Watch the dialogue.
			.kill Overthane Balargarde##31016|q 13142/1
		step
			.' Move inside the cathedral|goto Icecrown,9.49,45.17,0.3|q 12847
		step
			goto Icecrown,9.5,47.3
			.kill Archbishop Landgren##29542|q 12847/1
			.use Arete's Gate##40730|q 12847/2
			.info Use on his corpse.
		step
			.' Watch the dialogue
			.talk Lord-Commander Arete##29560
			..turnin Second Chances##12847
			..accept The Admiral Revealed##12852
		step
			.' Move inside the cave|goto Icecrown,9.23,49.22,0.3|q 12852
		step
			goto Icecrown,9.1,46.2
			.use Lord-Commander's Nullifier##40917
			.info Use to destroy the sphere.
			.kill Grand Admiral Westwind##29621|q 12852/1
		step
			goto Icecrown,19.54,48.15
			.talk Lord-Commander Arete##29344
			..turnin The Admiral Revealed##12852
		step
			goto Icecrown,32.50,42.94
			.talk The Bone Witch##30232
			..turnin Banshee's Revenge##13142
			..accept Battle at Valhalas##13213
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..turnin Battle at Valhalas##13213
			..accept Battle at Valhalas: Fallen Heroes##13214
		step
			goto Icecrown,30.7,29
			.goal Fallen Heroes Defeated|q 13214/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: Fallen Heroes##13214
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..accept Battle at Valhalas: Khit'rix the Dark Master##13215
		step
			goto Icecrown,30.7,29
			.goal Khit'rix the Dark Master Defeated|q 13215/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: Khit'rix the Dark Master##13215
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..accept Battle at Valhalas: The Return of Sigrid Iceborn##13216
		step
			goto Icecrown,30.7,29
			.goal Sigrid Iceborn Defeated|q 13216/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: The Return of Sigrid Iceborn##13216
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..accept Battle at Valhalas: Carnage!##13217
		step
			goto Icecrown,30.7,29
			.goal Carnage Defeated|q 13217/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: Carnage!##13217
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..accept Battle at Valhalas: Thane Deathblow##13218
		step
			goto Icecrown,30.7,29
			.goal Thane Banahogg Defeated|q 13218/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: Thane Deathblow##13218
		step
			goto Icecrown,30.7,29
			.talk Geirrvif##31135
			..accept Battle at Valhalas: Final Challenge##13219
		step
			goto Icecrown,30.7,29
			.goal Prince Sandoval Defeated|q 13219/1
		step
			goto Icecrown,31.6,31
			.talk Gjonner the Merciless##31154
			..turnin Battle at Valhalas: Final Challenge##13219
		step
			goto Icecrown,35.50,66.45
			.talk Crusader Olakin Sainrith##30708
			..turnin I'm Smelting... Smelting!##13138
			..turnin The Runesmiths of Malykriss##13140
			..accept By Fire Be Purged##13211
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..accept A Visit to the Doctor##13152
		step
			goto Icecrown,35.81,66.99
			.' Interact with gameobject: Metal Stake
			.info Inside the cave, on the bottom floor.
			.' Free Patches|q 13152/1
		step
			goto Icecrown,35.81,66.99
			.' Watch the dialogue.
			.info Inside the cave, on the bottom floor.
			.kill Doctor Sabnok##30992|n
			.info "Patches" will kill him, you don't have to fight, just stand close to them.
			.' Help Patches kill Doctor Sabnok|q 13152/2
		step
			goto Icecrown,34.43,68.39
			.use Olakin's Torch##43524
			.info Use it near Festering Corpses.
			.info They look like dead soldiers on the ground.
			.info You can find them inside and outside the cave.
			.' Burn 7 Festering Corpses|q 13211/1
		step
			goto Icecrown,35.50,66.44
			.talk Crusader Olakin Sainrith##30708
			..turnin By Fire Be Purged##13211
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin A Visit to the Doctor##13152
			..accept Killing Two Scourge With One Skeleton##13144
		step
			goto Icecrown,31.73,70.29
			.' Interact with gameobject: Grasping Arm
			.info They look like green skeleton arms on the ground.
			.info You can find them all around the Fleshwerks area.
			.info You will gain Burning Skeleton minions.
			.info You can only have one minion at a time.
			.' Use the Burning Skeleton Minions
			.info Stand next to Chained Abominations with your Burning Skeletons, but don't attack them yourself.
			.info They are along the edge of the platform around this area.
			.info You can fly without losing your minions.
			.' Burn 3 Chained Abominations|q 13144/1
			.' You can find Grasping Arms around|at 34.02,68.99
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Killing Two Scourge With One Skeleton##13144
			..accept He's Gone to Pieces##13212
		step
			goto Icecrown,34.15,68.95
			.from Corpulent Horror##30696
			.info They look like abominations.
			.get Olakin's Torso##43526|q 13212/1
			.get Olakin's Legs##43527|q 13212/2
			.get Olakin's Left Arm##43528|q 13212/3
			.get Olakin's Right Arm##43529|q 13212/4
			.' You can find more around|at 35.57,71.00
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin He's Gone to Pieces##13212
			..accept Putting Olakin Back Together Again##13220
		step
			goto Icecrown,34.70,65.99
			.collect Spool of Thread##43567|q 13220
			.info Inside the cave, on the top floor.
		step
			goto Icecrown,36.61,67.57
			.collect The Doctor's Cleaver##43568|q 13220
			.info Inside the cave, on the bottom floor.
		step
			goto Icecrown,35.59,66.72
			.use Crusader Olakin's Remains##43564
			.info On the stone table.
			.info Inside the cave, on the top level.
			.' Watch the dialogue
			.' Revive Crusader Olakin Sainrith|q 13220/1
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin Putting Olakin Back Together Again##13220
			..accept The Flesh Giant Champion##13235
		step
			goto Icecrown,29.75,61.26
			.talk Margrave Dhakar##31306
			.' Tell him "Let's kill this... thing... and get this over with."
			.' Watch the dialogue
			.info Your allies will help you fight.
			.kill Morbidus##30698|q 13235/1
		step
			goto Icecrown,35.39,66.32
			.talk Darkrider Arly##30631
			..turnin The Flesh Giant Champion##13235
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin Vereth the Cunning##13155
			..accept New Recruit##13143
		step
			goto Icecrown,55.59,72.16
			.kill Lithe Stalker##30894|n
			.info They look like geists on the bridge.
			.info Don't kill it, just weaken it to about 20-25% health.
			.use Sigil of the Ebon Blade##43315
			.info Use it on a weakened Lithe Stalker.
			.info It will begin following you.
			.' Subdue a Lithe Stalker |havebuff INV_Sword_126 |q 13143
		step
			goto Icecrown,55.29,70.27
			.' Watch the dialogue.
			.info The Lithe Stalker will run here once you bring it close to this location.
			.' Return the Subdued Lithe Stalker|q 13143/1
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin New Recruit##13143
			..accept The Vile Hold##13145
		step
			goto Icecrown,60.81,68.70
			.' Explore the Icy Lookout|q 13145/3
			.info Fly near the lookout platform.
		step
			goto Icecrown,58.08,70.87
			.' Explore the Blood Forge|q 13145/2
			.info Fly near the hole in the ground with a fire tornado rising out of it.
		step
			goto Icecrown,59.05,73.74
			.' Explore the Runeworks|q 13145/4
			.info Fly near the blacksmith anvils.
		step
			goto Icecrown,56.18,80.49
			.' Explore the Altar of Sacrifice|q 13145/1
			.info Fly near the tall stone monument.
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin The Vile Hold##13145
			..accept Generosity Abounds##13146
			..accept Matchmaker##13147
			..accept Stunning View##13160
		step
			goto Icecrown,54.25,70.62
			.' Interact with gameobject: Eye of Dominion
			.' Choose <Seize control of a Lithe Stalker through the eye.>
			.' Seize Control of a Lithe Stalker |invehicle |q 13146
		step
			goto Icecrown,57.93,73.72
			.' Chain Scourge Bombs
			.info Use the "Iron Chain" ability on your action bar on Scourge Bombs.
			.info They look like large, round, spiked metal bombs on the ground.
			.info Drag the Scourge Bombs next to Lumbering Atrocities (abominations) around this area.
			.info Use the "Leap" ability on your action bar to get around faster.
			.' Deliver 4 Scourge Bomb Gifts|q 13146/1
			.' You can find more Scourge Bombs around|at 57.47,75.88
		step
			goto Icecrown,59.02,73.78
			.' Throw Rocks at Umbral Brutes
			.info Use the "Throw Rock" ability on your action bar on Umbral Brutes.
			.info They look like muscular zombies.
			.info Try to throw the rocks when they are already near skeletons.
			.info They will attack the skeletons and start fights.
			.info Use the "Leap" ability on your action bar to get around faster.
			.' Start 5 Worker Fights|q 13147/1
		step
			goto Icecrown,59.01,76.27
			.' Push Iceskin Sentries Off the Cliffs
			.info Use the "Heave" ability on your action bar next to Iceskin Sentries.
			.info They look like gargoyles perched up along the cliffs.
			.info Use the "Leap" ability on your action bar to get around faster, and jump up the cliffs.
			.' Destroy 12 Iceskin Sentries|q 13160/1
			.' You can find more around|at 60.55,72.06
		step
			.' Release the Lithe Stalker |outvehicle |q 13160
			.info Click the red arrow on your action bar.
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin Generosity Abounds##13146
			..turnin Matchmaker##13147
			..turnin Stunning View##13160
			..accept The Rider of the Unholy##13161
			..accept The Rider of Frost##13162
			..accept The Rider of Blood##13163
		step
			goto Icecrown,55.9,80.2
			.kill Rokir##31160|q 13161/1
		step
			goto Icecrown,59.4,72.2
			.kill Baelok##31159|q 13163/1
		step
			goto Icecrown,61.9,68.6
			.kill Sapph##31161|q 13162/1
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin The Rider of the Unholy##13161
			..turnin The Rider of Frost##13162
			..turnin The Rider of Blood##13163
			..accept The Fate of Bloodbane##13164
		step
			goto Icecrown,54.4,86.1
			.kill Orbaz Bloodbane##31283|q 13164/1
		step
			goto Icecrown,54.15,71.17
			.talk Vereth the Cunning##30944
			..turnin The Fate of Bloodbane##13164
		step
			goto Icecrown,65.82,53.08
			.from Scavenging Geist##31847
			.info They look like frail humanoids crouching on the ground.
			.info You can find them all around the southern part of the Valley of Lost Hope area.
			.get 5 Demolisher Parts##44529|q 13393/1
		step
			goto Icecrown,68.01,51.88
			.talk Wrecked Demolisher##31868
			..turnin Field Repairs##13393
		step
			goto Icecrown,68.02,51.59
			.talk Matthias Lehner##32408
			..accept Do Your Worst##13394
		step
			goto Icecrown,68.0,51.8
			.' Interact with gameobject: Refurbished Demolisher
			.' Control the Refurbished Demolisher |invehicle |q 13394
		step
			goto Icecrown,64.22,45.77
			.kill 150 Decomposed Ghoul##31812|q 13394/1
			.info They look like zombies.
			.kill 20 Frostskull Magus##31813|q 13394/2
			.info They look like smaller skeletons wearing capes.
			.kill 2 Bone Giant##31815|q 13394/3
			.info They look like huge skeletons that walk around.
			.info You can find them all around the northern part of the Valley of Lost Hope area.
			.info Use the abilities on your action bar.
		step
			.' Leave the Refurbished Demolisher |outvehicle |q 13394
			.info Click the yellow arrow on your action bar.
			.info Kill any nearby enemies first, so you will be safe.
		step
			goto Icecrown,64.52,44.00
			.talk Matthias Lehner##32404
			..turnin Do Your Worst##13394
			..accept Army of the Damned##13395
		step
			goto Icecrown,65.44,43.97
			.kill Lordaeron Footsoldier##31254|n
			.info Use the abilities on your action bar.
			.info Use the "Gift of the Lich King" ability near their corpses.
			.' Raise 100 Ghoulish Minions|q 13395/1
		step
			goto Icecrown,64.52,44.00
			.' Dispel the Vision |outvehicle |q 13395
			.info Click the red arrow on your action bar.
			.info Go to this location first.
		step
			goto Icecrown,64.52,44.00
			.talk Matthias Lehner##32404
			..turnin Army of the Damned##13395
			..accept Futility##13396
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin Futility##13396
			..turnin Sneak Preview##13315
			..accept Sindragosa's Fall##13397
			..accept Drag and Drop##13318
			..accept Chain of Command##13319
			..accept Cannot Reproduce##13320
		step
			goto Icecrown,53.89,46.84
			.kill Overseer Faedris##32250|q 13319/1
			.info Inside the tent.
		step
			goto Icecrown,53.96,45.71
			.kill Bitter Initiate##32238|n
			.info They look like humans wearing robes.
			.collect Orb of Illusion##44246|n
			.use the Orb of Illusion##44246
			.info Use them on Dark Subjugators.
			.info They look like humans wearing robes and carrying staves.
			.info A gargoyle will fly down and kill them.
			.' Drag and Drop 3 Dark Subjugators|q 13318/1
		step
			goto Icecrown,49.71,34.34
			.use Partitioned Flask##44251
			.info Next to the cauldron with the purple smoke rising out of it.
			.' Dark Sample Collected|q 13320/3
		step
			goto Icecrown,49.11,34.21
			.use Partitioned Flask##44251
			.info Next to the cauldron with the green smoke rising out of it.
			.' Green Sample Collected|q 13320/2
		step
			goto Icecrown,48.98,33.26
			.use Partitioned Flask##44251
			.info Next to the cauldron with the grey smoke rising out of it.
			.' Blue Sample Collected|q 13320/1
		step
			goto Icecrown,49.40,31.20
			.kill Overseer Savryn##32291|q 13319/4
			.info Under the canopy.
		step
			goto Icecrown,54.72,32.62
			.kill Overseer Jhaeqon##32285|q 13319/2
			.info Inside the tent.
		step
			goto Icecrown,53.68,29.20
			.kill Overseer Veraj##32263|q 13319/3
			.info Under the canopy.
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin Drag and Drop##13318
			..turnin Chain of Command##13319
			..accept Not a Bug##13342
			..accept Need More Info##13345
		step
			.' On the Skybreaker Airship:
			.talk Chief Engineer Boltwrench##30345
			.info Downstairs inside the airship, on the bottom floor, near the front of the airship.
			.info To get downstairs, run down the stairs in the center of the main deck.
			..turnin Cannot Reproduce##13320
			..accept Retest Now##13321
		step
			goto Icecrown,55.26,29.28
			.kill Enslaved Minion##32260|n
			.info They look like blue voidwalkers.
			.use Rod of Siphening##44433
			.info Use it near their corpses.
			.collect 5 Dark Matter##44434|q 13342
		step
			goto Icecrown,53.79,33.55
			.' Interact with gameobject: Summoning Stone
			.info It looks like a large floating purple crystal.
			.' Summon the Dark Messenger|q 13342/1
		step
			goto Icecrown,52.35,30.14
			.from Cult Researcher##32297
			.info They look like humans wearing black wearings and carrying daggers.
			.info Be careful, if you use mana, they have an ability that drains your mana and damages you for the same amount.
			.info Inside the building.
			.info If you have trouble, try to get someone to help you.
			.info It's important to get this quest done, since it unlocks more quests.
			.collect Cult of the Damned Research - Page 1##44459|q 13345
			.collect Cult of the Damned Research - Page 2##44460|q 13345
			.collect Cult of the Damned Research - Page 3##44461|q 13345
		step
			.use the Cult of the Damned Research - Page 1##44459
			.collect Cult of the Damned Thesis##44462|q 13345/1
		step
			goto Icecrown,51.90,32.81
			.use Diluted Cult Tonic##44307
			.info Use it repeatedly, to keep the "Dark Discernment" buff active.
			.info This buff allows enemies to drop Tainted Essences.
			.' Kill enemies around this area
			.info Inside and outside the building.
			.info Only enemies that look like humans will drop the quest item.
			.info You can find them all around the Aldur'thar: The Desolation Gate area.
			.collect 10 Tainted Essence##44301|n
			.use Tainted Essence##44301
			.info Use them once you have 10 essences.
			.collect Writhing Mass##44304|q 13321
		step
			goto Icecrown,49.32,33.88
			.use Writhing Mass##44304
			.info Use it next to one 1 of the 3 cauldrons around this area.
			.info Each of the cauldrons will give you a different stat buff for 2 hours, depending on the smoke color.
			.info Purple = Spell Power.
			.info Green = Stamina.
			.info Grey = Attack Power.
			.' Banish the Writhing Mass|q 13321/1
		step
			goto Icecrown,72.31,36.66
			.kill 5 Wyrm Reanimator##31731|q 13397/1
			.info They look like humans wearing robes.
			.' You can find more around (1)|at 72.00,43.46
			.' You can find more around (2)|at 73.54,42.42
			.' You can find more around (3)|at 74.84,44.11
		step
			goto Icecrown,69.30,38.74
			.kill 8 Cultist Corrupter##31738|q 13397/2
			.info They look like humans wearing robes and carrying staves.
			.info You can find them all around the Sindragos's Fall area.
			.' You can find more around|at 73.54,43.15
		step
			goto Icecrown,69.30,38.74
			.kill 3 Vrykul Necrolord##31783|q 13397/3
			.info They look like large zombies carrying staves.
			.info You can find them all around the Sindragos's Fall area.
			.' You can find more around|at 73.54,43.15
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin Not a Bug##13342
			..turnin Sindragosa's Fall##13397
			..turnin Need More Info##13345
			..accept Raise the Barricades##13332
			..accept No Rest For The Wicked##13346
		step
			.' On the Skybreaker Airship:
			.talk Chief Engineer Boltwrench##30345
			.info Downstairs inside the airship, on the bottom floor, near the front of the airship.
			.info To get downstairs, run down the stairs in the center of the main deck.
			..turnin Retest Now##13321
		step
			goto Icecrown,71.55,37.62
			.talk Matthias Lehner##32423
			..accept Where Dragons Fell##13398
		step
			goto Icecrown,69.30,38.74
			.from Frostbrood Whelp##31718
			.info They look like tiny skeleton dragons flying low to the ground.
			.info You can find them all around the Sindragos's Fall area.
			.get 6 Whelp Bone Dust##44631|q 13398/1
			.' You can find more around|at 73.54,43.15
		step
			goto Icecrown,71.55,37.62
			.talk Matthias Lehner##32423
			..turnin Where Dragons Fell##13398
			..accept Time for Answers##13399
		step
			goto Icecrown,50.51,30.00
			.collect Alumeth's Skull##44476|q 13346
			.info Inside the building.
			.info You may need help with this.
		step
			goto Icecrown,52.82,30.69
			.collect Alumeth's Heart##44477|q 13346
			.info Inside the building.
			.info You may need help with this.
		step
			goto Icecrown,52.83,29.73
			.collect Alumeth's Scepter##44478|q 13346
			.info Inside the building.
			.info You may need help with this.
		step
			goto Icecrown,52.99,28.99
			.collect Alumeth's Robes##44479|q 13346
			.info Inside the building.
			.info You may need help with this.
		step
			.use Alumeth's Skull##44476
			.collect Alumeth's Remains##44480|q 13346
		step
			goto Icecrown,51.93,28.71
			.use Alumeth's Remains##44480
			.kill Alumeth the Ascended##32300|n
			.info Inside the building.
			.info You may need help with this.
			.' Defeat Alumeth the Ascended|q 13346/1
		step
			goto Icecrown,49.89,40.47
			.use Barricade Construction Kit##44127
			.info Use it near the bursts of purple light and smoke that appear hovering over the ground.
			.info You can find them all around the Valley of Fallen Heroes area.
			.' Construct 8 Barricades|q 13332/1
		step
			goto Icecrown,49.16,73.12
			.talk Matthias Lehner##32497
			..turnin Time for Answers##13399
			..accept The Hunter and the Prince##13400
		step
			goto Icecrown,49.17,73.91
			.' Interact with gameobject: Bloodstained Stone
			.info They look like blocky chunks of grey stone on the ground.
			.info They appear in random locations around this area.
			.' Watch the dialogue.
			.info Illidan Stormrage will appear and attack you.
			.kill Illidan Stormrage##32588|n
			.info Use the abilities on your action bar.
			.info Use the "Parry" ability on your action bar until your mana is full.
			.info Once your mana is full, use the "Stomp" ability, the immediately use the "Annihilate" ability.
			.info Repeat this process until you kill him.
			.' Find Out the Prince's Destiny|q 13400/1
		step
			goto Icecrown,49.16,73.12
			.talk Matthias Lehner##32497
			..turnin The Hunter and the Prince##13400
			..accept Knowledge is a Terrible Burden##13401
		step
			.' On the Skybreaker Airship:
			.talk Thassarian##29799
			..turnin Raise the Barricades##13332
			..turnin No Rest For The Wicked##13346
			..turnin Knowledge is a Terrible Burden##13401
			..accept Tirion's Help##13402
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin Light Within the Darkness##13083
			..turnin Tirion's Help##13402
			..accept Tirion's Gambit##13403
		step
			goto Icecrown,45.40,78.23
			.from Cultist Acolyte##32507
			.info They look like humans wearing robes.
			.collect Cultist Acolyte's Hood##44784|q 13403
		step
			.use the Cultist Acolyte's Hood##44784
			.' Wear the Cultist Disguise |havebuff Ability_Rogue_MasterOfSubtlety|q 13403
		step
			goto Icecrown,44.41,76.21|n
			.talk Highlord Tirion Fordring##32239
			.' Tell him "I'm ready, Highlord."
			.' Begin Following Highlord Tirion Fordring|goto 42.79,77.9,0.3|q 13403
		step
			goto Icecrown,42.78,78.79
			.' Watch the dialogue
			.info Follow Highlord Tirion Fordring as he walks.
			.info He eventually walks to this location inside the building.
			.' Witness Tirion's Gambit|q 13403/1
		step
			goto Icecrown,42.83,78.76
			.' Interact with gameobject: Escape Portal
			.info Inside the building.
			.' Escape to Crusaders' Pinnacle|q 13403
		step
			goto Icecrown,79.79,71.76
			.talk Highlord Tirion Fordring##31044
			..turnin Tirion's Gambit##13403
		step
			.' Congratulations! +142/140 quests for achievement "Icecrown: The Final Goal".
]])

ZygorGuidesViewer.AllianceInstalled=true