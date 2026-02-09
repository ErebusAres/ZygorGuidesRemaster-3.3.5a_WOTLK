local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingNMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\The Wandering Isle 1-12\\Pandaren (1-12)",[[
author support@zygorguides.com
image WanderingIsle
condition suggested raceclass('Pandaren') and level<=5
startlevel 1
endlevel 12
step
goto The Wandering Isle 56.7,18.2
.talk 53566
..turnin 30045
..accept 30038
|only Pandaren Warrior
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip a Trainee's Sword. |q 30038/1 |use Trainee's Sword##73210
|only Pandaren Warrior
step
goto 56.7,18.2
.talk 53566
..turnin 30038
..accept 29406 |next "next01"
|only Pandaren Warrior
step
goto 56.7,18.2
.talk 53566
..turnin 30041
..accept 30034
|only Pandaren Hunter
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip a Trainee's Crossbow. |q 30034/1 |use Trainee's Crossbow##73211
|only Pandaren Hunter
step
goto 56.7,18.2
.talk 53566
..turnin 30034
..accept 29406 |next "next01"
|only Pandaren Hunter
step
goto 56.7,18.2
.talk 53566
..turnin 30043
..accept 30036
|only Pandaren Rogue
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip the Mainhand Dagger. |equipped Trainee's Dagger##73208 |use Trainee's Dagger##73208 |q 30036/1
.' Equip the Offhand Dagger. |q 30036/2 |use Trainee's Dagger##73212
|only Pandaren Rogue
step
goto 56.7,18.2
.talk 53566
..turnin 30036
..accept 29406 |next "next01"
|only Pandaren Rogue
step
goto 56.7,18.2
.talk 53566
..turnin 30042
..accept 30035
|only Pandaren Priest
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip a Trainee's Mace. |equipped Trainee's Mace##73207 |use Trainee's Mace##73207 |q 30035/1
.' Equip the Trainee's Book of Prayers. |q 30035/2 |use Trainee's Book of Prayers##76393
|only Pandaren Priest
step
goto 56.7,18.2
.talk 53566
..turnin 30035
..accept 29406 |next "next01"
|only Pandaren Priest
step
goto 56.7,18.2
.talk 53566
..turnin 30044
..accept 30037
|only Pandaren Shaman
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip a Trainee's Axe. |equipped Trainee's Axe##76391 |use Trainee's Axe##76391 |q 30037/1
.' Equip the Trainee's Shield. |q 30037/2 |use Trainee's Shield##73213
|only Pandaren Shaman
step
goto 56.7,18.2
.talk 53566
..turnin 30037
..accept 29406 |next "next01"
|only Pandaren Shaman
step
goto 56.7,18.2
.talk 53566
..turnin 30040
..accept 30033
|only Pandaren Mage
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip a Trainee's Spellblade. |q 30033/1 |use Trainee's Spellblade##76390
.' Equip a Trainee's Hand-Fan. |q 30033/2 |use Trainee's Hand-Fan##76392
|only Pandaren Mage
step
goto 56.7,18.2
.talk 53566
..turnin 30033
..accept 29406 |next "next01"
|only Pandaren Mage
step
goto 56.7,18.2
.talk 53566
..turnin 30039
..accept 30027
|only Pandaren Monk
step
goto 56.9,19.7
.click Weapon Rack
.' Loot and Equip the Trainee's Staff. |equipped Trainee's Staff##73209 |use Trainee's Staff##73209 |q 30027/1
|only Pandaren Monk
step
goto 56.7,18.2
.talk 53566
..turnin 30027
..accept 29406 |next "next01"
|only Pandaren Monk
step
label "next01"
goto 57.4,19.0
.kill 5 Training Target##53714+ |q 29406/1
step
goto  56.7,18.2
.talk 53566
..turnin 29406
..accept 29524
step
goto 60.2,19.4
.from Huojin Trainee##54586+, Tushui Trainee##65471+, Tushui Trainee##54587+ |tip They are inside this building.
.' Defeat 6 Sparring Trainees |q 29524/1
step
goto 59.7,19.1
.talk 53566
..turnin 29524
..accept 29408
step
'Put your cursor over Master Shang Xi's hand and wait until you can click the flame.
.' Snatch the Master's Flame |q 29408/1
step
goto 59.9,20.5
.' Run up the two flights of stairs to the roof top.
.click Edict of Temperance |tip It looks like a tall white scroll hanging on a large stone object.
.' Burn the Edict of Temperanc |q 29408/2
step
goto 59.7,19.1
.talk 53566
..turnin 29408
..accept 29409
step
goto 67.8,22.7
.from Jaomin Ro##54611
.' Defeat Jaomin Ro |q 29409/1
step
goto 66.0,22.8
.talk 53566
..turnin 29409
..accept 29410
step
goto 55.1,32.8
.talk 54943
..turnin 29410
..accept 29424
..accept 29419
step
goto 54.0,21.0
.' Kill the Amberleaf Scamps that are attacking Min Dimwind
..' Rescue the Cart Driver |q 29419/1
.|tip Just walking up to the Cart Driver will scare off the Amberleafs
.from Amberleaf Scamp##54130+
..get 6 Stolen Training Supplies##72071 |q 29424/1
'|modelnpc Min Dimwind##56503
step
goto 55.1,32.4
.talk 54943
..turnin 29424
..turnin 29419
step
goto 55.1,32.5
.talk 54567
..accept 29414
step
goto 57.8,36.3
.' Kill Amberleaf Troublemakers while Aysa is meditating |tip You can check your progress with the bar on your screen.
.from Amberleaf Troublemaker##59637+
.' Protect Aysa |q 29414/1
|modelnpc Aysa Cloudsinger##54567
step
goto 57.5,34.7
.talk 54608
..turnin 29414
..accept 29522
step
goto 50.2,21.3
.talk 54568
..turnin 29522
..accept 29417
step
goto 50.1,18.0
.from Fe-Feng Hozen##57205+, Fe-Feng Brewthief##56730+, Fe-Feng Leaper##57164+
.' Kill 8 Hozen attackers |q 29417/1
step
goto 50.2,21.2
.talk 54568
..turnin 29417
..accept 29418
..accept 29523
step
goto 47.3,31.3
.' Use your Wind Stone in your bags next to this _Wind Stone_ to summon a _Living Air_ |use Wind Stone##72109
.from Living Air##54631
..get Fluttering Breeze##72112|q 29523/1
step
goto 48.9,29.8
.click Loose Dogwood Root |tip They are on the ground around the trees in this area.
.get 5 Dry Dogwood Root##72111 |q 29418/1
step
goto 50.2,21.3
.talk 54568
..turnin 29418
..turnin 29523
step
goto The Wandering Isle 50.3,21.5
.talk 54609
..accept 29420
step
'Enter the cave and follow the path up to the right |goto 41.5,25.0 <5 |c
step
goto 38.8,25.5
.talk 54135
..turnin 29420
..accept 29664
step
goto 38.7,25.4
.click Brazier of the Flickering Flame
.' Light the Challenge Torch |q 29664/1
step
goto 38.3,24.8
.click Brazier of the Violet Flame
.' Light the Violet Brazier |q 29664/4
step
goto 39.0,23.5
.click Brazier of the Red Flame
.' Light the Red Brazier |q 29664/2
step
goto 39.2,25.4
.click Brazier of the Blue Flame
.' Light the Blue Brazier |q 29664/3
step
goto 38.8,25.5
.talk 54135
..turnin 29664
..accept 29421
step
goto 38.9,24.4
.from Master Li Fei##54734
.' Defeat Master Li Fei |q 29421/1
step
goto 38.8,25.5
.talk 54135
..turnin 29421
..accept 29422
step
goto 39.4,29.6
.' Use Huo's Offerings next to Huo |use Huo's Offerings##72583 |tip Huo is a fire spirit floating above a flaming brazier.
.' Reignite the Spirit of Fire |q 29422/1
step
goto 39.4,29.6
.talk 54787
..turnin 29422
..accept 29423
step
'Follow the path to the right to leave the cave |goto 41.5,25.0 <5 |c
step
'Run up the stairs to the Temple |goto 51.0,30.7 <5 |c
step
goto 51.4,46.4 |n
.' Bring the Spirit of the Fire to the Temple of Five Dawns |q 29423/1
step
goto 51.4,46.4
.talk 54786
..turnin 29423
..accept 29521
step
.' Leave the Temple |goto 53.2,47.5 <5 |c
step
goto 63.5,41.9
.talk 55021
..accept 29662
step
goto 65.6,42.6
.talk 54975
..turnin 29521
..accept 29661
..accept 29663
step
goto 62.9,43.4
.click Exit Pole to jump up on a Balance Pole |tip They look like wooden stumps with red rope around them along the shore of this pond.
.click Balance Poles to move around
.from Tushui Monk##55019+, Tushui Monk##65468+
.' Defeat 6 Tushui Monks |q 29663/1
step
goto 61.4,47.8
.click Training Bell |tip It's on a big stone in the middle of the pond.
.' Ring the Traning Bell |q 29661/1
step
goto 61.1,46.8
.' Jump down into the water
.click Hard Tearwood Reed |tip They look like green plants sticking up out of the water.
.get 8 Hard Tearwood Reed##73178 |q 29662/1
step
goto 63.4,41.9
.talk 55021
..turnin 29662
step
goto 65.6,42.6
.talk 54975
..turnin 29661
..turnin 29663
..accept 29676
step
'Follow this path up and to the left |goto 70.3,40.5 <5 |c
step
goto 70.6,38.7
.talk 55020
..turnin 29676
..accept 29677
..accept 29666
step
goto 72.9,41.4
.kill 6 Water Pincer##60411+ |q 29666/1
step
goto 76.3,47.0
.click Ancient Clam |tip It's underwater.
.get Sun Pearl##73184 |q 29677/1
step
goto 78.5,42.9
.talk 55020
..turnin 29677
..turnin 29666
..accept 29678
step
goto 79.5,41.8 |n
.' Jump on this rock, you will automatically jump up to the top of these piles
.' Go to the Pool of Reflection |goto 79.9,39.8 <5 |noway |c
step
goto 79.3,37.6
.' Cross to the Pool of Reflection |q 29678/1
.' Use your Sun Pearl in the pool of water |use Sun Pearl##73791
.' Coax Shu, the Water Spirit |q 29678/2
step
'Click the Quest Complete Box in the top right of your screen
..turnin 29678
..accept 29679
step
goto 79.3,37.6
.' Move into the waterspouts and shoot up into the air. You will have to do this a few times to complete this quest.
.' Play with the Spirit of Water 5 times |q 29679/1
step
goto 79.8,39.3
.talk 54975
..turnin 29679
..accept 29680
step
goto 79.1,45.3
.clicknpc Delivery Cart##57710 |tip It's sitting on the side of the road with a gray ox in front of it.
.' Ride the Cart to The Dai-Lo Farmstead |invehicle |c
step
goto 68.9,65.0
.talk 55477
..turnin 29680
..accept 29769
step
goto 68.1,66.4
.talk 55479
..accept 29770
step
'Follow the path down |goto 71.9,70.6 <5 |c
step
goto 75.1,74.7
.click Stolen Carrot##+ |tip They are all around inside this tunnel.
..get 3 Stolen Carrot##74296+ |q 29770/2
step
'Follow the path up |goto 76.5,71.0 <5 |c
step
goto 78.9,70.8
.click Pilfered Pumpkin##+ |tip They are around the trees in this area.
..get 3 Pilfered Pumkin##74297+ |q 29770/3
step
goto 71.1,78.8
.click Uprooted Turnip##+ |tip They are lying on the ground all around this area.
..get 3 Uprooted Turnip##74295+ |q 29770/1
step
goto 71.0,71.6
.kill 10 Plump Virmen##55483+ |q 29769/1
step
goto 68.1,66.4
.talk 55479
..turnin 29770
step
goto 68.9,65.0
.talk 55477
..turnin 29769
..accept 29768
step
goto 69.1,66.7
.talk 55478
..accept 29771
step
goto 62.4,76.7
.from Raggis##55506
.click Dai-Lo Recess Mallet |tip It's sitting on a wooden barrel to the left of the small wooden stairs.
..get Dai-Lo Recess Mallet##74298 |q 29768/1
step
goto 63.6,77.6
.click Discarded Wood Plank##+
.get 12 Discarded Wood Plank##74301+ |q 29771/1
.' You can find more Wood Planks around [62.2,79.9]
step
goto 69.1,66.7
.talk 55478
..turnin 29771
step
goto 68.9,65.0
.talk 55477
..turnin 29768
..accept 29772
step
goto 69.0,64.9
.click Break Gong## |tip It's a dark colored metal circle hanging from a wooden structure.
.' Ring the Town Gong |q 29772/1
step
goto 68.9,65.0
.talk 55477
..turnin 29772
..accept 29774
step
goto 69.0,62.9
.talk 55556
.' Ask Shu if she can you wake up Wuguo for you |q 29774/1
.' Follow Shu and watch her wake up Wuguo |q 29774/2
step
goto 68.9,65.0
.talk 55477
..turnin 29774
..accept 29775
step
goto 67.9,67.2
.clicknpc Delivery Cart##59497 |tip It's sitting on the side of the road with a gray ox in front of it.
.' Ride the Cart to the Temple of Five Dawns |invehicle |c
step
goto 51.6,48.3
.talk 54786
..turnin 29775
..accept 29776 |tip You will ride a gust of wind to the top of the building.
step
'Run across the huge bridge to the other side |goto 36.1,51.4 <5 |c
step
goto 31.0,36.8
.talk 55583
..turnin 29776
..accept 29778
step
goto 31.7,39.7
.talk 55588
..accept 29777
step
goto 29.9,39.8
.talk 55585
..accept 29783
step
goto 32.0,52.8
.click Defaced Scroll of Wisdom## |tip They are hanging on large boulders around this area.
..' Burn 5 Defaced Scrolls of Wisdom |q 29778/1
.click Abandoned Stone Block |tip They look like piles of gray blocks on the ground around this area.
..get 12 Abandoned Stone Block##74624+ |q 29783/1
.from Hozen Wiseman##55601+
..get 8 Paint Soaked Brush##74615+ |q 29777/1
step
goto 31.7,39.7
.talk 55588
..turnin 29777
step
goto 29.9,39.8
.talk 55585
..turnin 29783
step
goto 31.0,36.7
.talk 55583
..turnin 29778
..accept 29779
..accept 29780
..accept 29781
step
goto 26.5,33.7
.click Jade Tiger Pillar##
..accept 29782
step
goto 21.0,34.5
.kill Ruk-Ruk##55634 |q 29780/1
step
goto 21.0,34.5
.click Stolen Fireworks
..get 8 Stolen Firework Bundles |q 29781/1
.from Fe-Feng Firethief##57466+, Fe-Feng Firethief##55633+, Fe-Feng Ruffian##55632+
..' Kill 20 Fe-Feng Hozen |q 29779/1
.' You can find more Hozen and Fireworks around [26.5,30.6]
step
'Standing next to you
.talk 56134
..turnin 29779
..turnin 29780
..turnin 29781
..accept 29784
step
goto 29.9,39.8
.talk 55585
..turnin 29782
step
'Start walking on the ropes here |goto 31.1,36.8 <5 |c
step
goto 32.9,35.6
.talk 55595
..turnin 29784
..accept 29785
step
goto 28.4,63.7 |n
.' Wait here until the wind is not blowing, then run through the hallway |goto 27.9,64.6 <5 |noway |c
step
goto 24.7,69.8
.' Locate Dafeng |q 29785/1
step
goto 24.7,69.8
.talk 55592
..turnin 29785
step
goto 24.8,69.8
.talk 55595
..accept 29786
step
goto 30.1,61.9
.click Firework Launcher##+ |tip Follow the Shadow of the Onyx on the ground and click the Firework Launchers until the Serpent is dead.
.kill Zhao-Ren##55786 |q 29786/1
step
goto 30.0,60.4
.talk 55586
..turnin 29786
..accept 29787
step
goto 22.7,52.9
.kill Guardian of the Elders##56274 |q 29787/1
step
goto 19.5,51.2
.talk 55672
..turnin 29787
..accept 29788
..accept 29789
step
goto 22.9,57.2
.click Kun-pai Ritual Charm##+ |tip They are red ropes hanging from tree branches around this area.
..get 8 Kun-Pai Ritual Charm##74634+ |q 29789/1
.kill 8 Thornbranch Scamp##55640 |q 29788/1
.' More of both of these can be found at [The Wandering Isle,20.0,44.5]
step
goto 19.5,51.2
.talk 55672
..turnin 29788
..turnin 29789
..accept 29790
step
goto 19.5,51.2
.' Stay here and listen to Master Shang Xi |q 29790/1
step
goto 15.8,49.1
.talk 56662
..turnin 29790
..accept 29791
step
goto 15.6,48.9
.clicknpc Shang Xi's Hot Air Balloon##55918
.' Board the Hot Air Balloon |q 29791/1
step
'Ride in the Hot Air Balloon and watch the scene |tip You may want to turn your View Distance to Ultra to view this entire scene.
.' Uncover the source of Shen-zin Su's pain |q 29791/2
step
goto 51.3,48.3
.talk 56012
..turnin 29791
..accept 29792
step
goto 51.6,61.2
.' Go to this spot
.' Open the Mandori Village Gate |q 29792/1
step
goto 52.2,68.4
.' Follow Aysa Cloudsinger and watch the dialogue
.' Open the Pei-Wu Forest Gate |q 29792/2
'|modelnpc Aysa Cloudsinger##59986
step
goto 50.1,76.7
.talk 55943
..turnin 29792
..accept 30591
step
goto The Wandering Isle 50.2,76.7
.talk 60042
..accept 29795
step
goto 52.4,82.6
.click Broken Bamboo Stalk##+ |tip They are all around the tall bamboo stalks in this area.
.get 10 Broken Bamboo Stalk##80806+ |q 29795/1
.kill 9 Pei-Wu Tiger##55946+ |q 30591/1
..' You can find more around
..' Here [56.5,82.8]
..' Here [56.2,73.2]
..' And here [50.8,69.8]
step
goto 50.1,76.6
.talk 55943
..turnin 30591
step
goto 50.2,76.7
.talk 60042
..turnin 29795
..accept 30589
step
goto 36.3,72.4
.talk 60055
..turnin 30589
..accept 30590
step
goto 36.4,72.5
.talk 55942
..accept 29793
step
goto 38.3,74.1
.click Packed Explosion Charge##+ |tip They are smal bundles of red dynamite on the ground around this area.
..get 6 Packed Explosion Charge##74955+ |q 30590/1
.from Darkened Terror##56008+, Darkened Horror##56007+
.' Kill #8# Darkened Terrors or Horrors |q 29793/1
step
goto 36.3,72.3
.talk 60055
..turnin 30590
step
goto 36.4,72.5
.talk 55942
..turnin 29793
..accept 29796
step
goto 42.2,86.5
.talk 55944
..turnin 29796
..accept 29794
..accept 29797
step
goto 42.3,86.3
.talk 55940
..accept 29665
step
goto 38.5,87.4
.clicknpc Injured Sailor##55999+
..' Pick up an Injured Sailor
..' Once you have a Sailor you can bring him here [42.2,86.7]
..' Rescue 3 Injured Sailor |q 29794/1
.click Alliance Medical Supplies##+ |tip They look like wooden boxes with red crosses on them on the ground around this area.
..get 8 Alliance Medical Supplies##74958+ |q 29797/1
.kill 8 Deepscale Tormentor##56360 |q 29665/1
step
goto 42.2,86.5
.talk 55944
..turnin 29794
..turnin 29797
step
goto 42.3,86.4
.talk 55940
..turnin 29665
..accept 29798
step
goto 37.1,84.1
.kill Vordraka, the Deep Sea Nightmare##56009 |q 29798/1
.|tip Try and stay moving; he will randomly target you with two different attacks, both of which are aoe's and can be avoided. He also spawns adds occasionally.
step
goto 36.2,84.2
.talk 56416
..turnin 29798
..accept 30767
step
goto 36.4,87.0
.' Follow Aysa Cloudsinger up the stairs
.' Remove the thorn from Shen-zin Su |q 30767/1
step
goto 39.3,86.2
.talk 56418
..turnin 30767
..accept 29799
step
goto 41.2,85.4
.' Watch your minimap and look for bronze cogs.  These are fallen Horde Druids and Alliance Priests. Go to them and revive them. Focus on keeping them alive. |tip They are on the ground laying under sheets of gray metal.
.clicknpc Horde Druid##60834
.clicknpc Alliance Priest##60878
.' Run around this whole area and keep reviving the druids and priest until the bar on the bottom of your screen fills
.' Protect the Healers |q 29799/1
step
goto 39.3,86.2
.talk 56418
..turnin 29799
step
goto 38.8,86.3
.talk 57739
..accept 29800
step
goto 41.7,85.5
.clicknpc Delivery Cart##57741
.' Ride the Cart to The Dai-Lo Farmstead |invehicle |c
step
goto 51.4,48.3
.talk 56013
..turnin 29800
..accept 31450
step
goto 51.4,48.3
.talk 56013
.' Tell him you're ready to decide.
'_Choose Your Destiny!_
.' Here you will have to choose whether you will side with _The Alliance_ or _The Horde_.
.' Click here if you wish to join the Alliance |confirm |next "Alliance" |or
.' Or
.' Click here if you wish to join The Horde |confirm |next "Horde" |or
step
label	"Alliance"
goto Stormwind City 74.2,92.0
.talk 60566
..turnin 31450
..accept 30987
step
goto Stormwind City 85.8,31.7
.talk 29611
..turnin 30987
..accept 30988
step
'Follow King Varian Wrynn and listen to him talk
.' Walk with King Varian Wrynn |q 30988/1
step
goto 82.6,28.1
.talk 61796
..turnin 30988
..accept 30989
step
goto 82.6,28.1
.from King Varian Wrynn##61796 |tip Don't worry, you won't be able to hit him at all.
.' Spar with Varian. |q 30989/1
step
goto 85.8,31.7
.talk 29611
..turnin 30989
|next "end"
step
label	"Horde"
goto Durotar 45.6,12.6
.talk 60570
..turnin 31450
..accept 31012
step
goto Orgrimmar/1 48.1,70.5
.talk 39605
..turnin 31012
..accept 31013
step
'Follow Garrosh Hellscream and listen to him talk
.' Walk with Garrosh Hellscream |q 31013/1
step
goto Orgrimmar/1 70.6,31.4
.talk 62092
..turnin 31013
..accept 31014
step
'Enter the swirling pink portal near you to enter the arena
.' Walk to the center of the room and wait for the fight to start |tip Unfortunately, it can take several minutes for the fight to start, so be patient.
.|tip Attack whichever target Ji is attacking
.from Gadoon##62100, Frozengore##62097, Oggax##62102
.' Complete Hellscream's Trial |q 31014/1
step
goto Orgrimmar/1 48.1,70.5
.talk 39605
..turnin 31014
|next "end"
step
label end
'Use the Suggest section of the guide menu to choose the guide you would like to continue leveling with.
]])
if UnitFactionGroup("player")~="Neutral" then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Gear Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Achievements Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guides\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Your guides will load after you choose a faction.",[[]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Your guides will load after you choose a faction.",[[]])
