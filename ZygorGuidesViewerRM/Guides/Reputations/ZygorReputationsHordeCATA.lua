local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsH") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Home Cities Reputation",[[
author support@zygorguides.com
description This guide will show you how to become exalted the fastest way, with all your Hometown Factions.
step
label	"menu"
.' This guide will show you how to become exalted the fastest way, with all your Hometown Factions.
.' Below you will see which faction you are Exalted with and which ones you are not:
.' Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
.' Click to use the Orgrimmar rep Guide |confirm always |next "org" |only if rep ('Orgrimmar')<=Revered
.' or
.' Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
.' Click to use the Thunder Bluff rep Guide |confirm always |next "tb" |only if rep ('Thunder Bluff')<=Revered
.' or
.' Exalted with Undercity |condition rep('Undercity')==Exalted
.' Click to use the Undercity rep Guide |confirm always |next "uc" |only if rep ('Undercity')<=Revered
.' or
.' Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
.' Click to use the Darkspear Trolls Rep Guide |confirm always |next "troll" |only if rep ('Darkspear Trolls')<Revered
.' or
.' Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
.' Click to use Silvermoon City rep Guide |confirm always |next "belf" |only if rep('Silvermoon City')<=Revered
.' or
.' Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
.' Click to use the Bilgewater Cartel rep Guide |confirm always |next "bilge" |only if rep ('Bilgewater Cartel')<=Revered
.' or
.' Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
.' Click to use the Huojin Pandaren rep Guide |confirm always |next "huojin" |only if rep ('Huojin Pandaren')<=Revered
|next "end" |only if achieved(762)
step
label	"org"
goto Orgrimmar,50.4,58.4
.talk 50488
.buy Orgrimmar Tabard##45581
step
.' Equip your Orgrimmar Tabard |equipped Orgrimmar Tabard##45581 |use Orgrimmar Tabard##45581
.' You can run any dungeon that grants experience to gain reputation for Orgrimmar.
.' Friendly with Orgrimmar |condition rep('Orgrimmar')>=Friendly
.' Honored with Orgrimmar |condition rep('Orgrimmar')>=Honored
.' Revered with Orgrimmar |condition rep('Orgrimmar')>=Revered
.' Become Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
|next "menu"
step
label	"tb"
'Skipping next part of guide |next "+tb_tab" |only if step:Find("+tb_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"tb_buy"
goto Thunder Bluff,47.0,50.2
.talk 50483
.buy Thunder Bluff Tabard##45584
step
label	"tb_tab"
.' Equip your Thunder Bluff Tabard |equipped Thunder Bluff Tabard##45584 |use Thunder Bluff Tabard##45584
.' You can run any dungeon that grants experience to gain reputation for Thunder Bluff.
.' Friendly with Thunder Bluff |condition rep('Thunder Bluff')>=Friendly
.' Honored with Thunder Bluff |condition rep('Thunder Bluff')>=Honored
.' Revered with Thunder Bluff |condition rep('Thunder Bluff')>=Revered
.' Become Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
|next "menu"
step
label	"belf"
'Skipping next part of guide |next "+belf_tab" |only if step:Find("+belf_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"belf_buy"
goto Eversong Woods,54.3,50.8
.talk 50484
.buy Silvermoon City Tabard##45585
step
label	"belf_tab"
.' Equip your Silvermoon City Tabard |equipped Silvermoon City Tabard##45585 |use Silvermoon City Tabard##45585
.' You can run any dungeon that grants experience to gain reputation for Silvermoon City.
.' Friendly with Silvermoon City |condition rep('Silvermoon City')>=Friendly
.' Honored with Silvermoon City |condition rep('Silvermoon City')>=Honored
.' Revered with Silvermoon City |condition rep('Silvermoon City')>=Revered
.' Become Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
|next "menu"
step
label	"uc"
'Skipping next part of guide |next "+uc_tab" |only if step:Find("+uc_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"uc_buy"
goto Undercity,63.0,49.1
.talk 50304
.buy Undercity Tabard##45583
step
label	"uc_tab"
.' Equip your Undercity Tabard |equipped Undercity Tabard##45583 |use Undercity Tabard##45583
.' You can run any dungeon that grants experience to gain reputation for Undercity.
.' Friendly with Undercity |condition rep('Undercity')>=Friendly
.' Honored with Undercity |condition rep('Undercity')>=Honored
.' Revered with Undercity |condition rep('Undercity')>=Revered
.' Become Exalted with Undercity |condition rep('Undercity')==Exalted
|next "menu"
step
label	"troll"
'Skipping next part of guide |next "+troll_tab" |only if step:Find("+troll_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"troll_buy"
goto Orgrimmar,50.0,58.1
.talk 50477
.buy Darkspear Tabard##45582
step
label	"troll_tab"
.' Equip your Darkspear Trolls Tabard |equipped Darkspear Tabard##45582 |use Darkspear Tabard##45582
.' You can run any dungeon that grants experience to gain reputation for Darkspear Trolls.
.' Friendly with Darkspear Trolls |condition rep('Darkspear Trolls')>=Friendly
.' Honored with Darkspear Trolls |condition rep('Darkspear Trolls')>=Honored
.' Revered with Darkspear Trolls |condition rep('Darkspear Trolls')>=Revered
.' Become Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
|next "menu"
step
label	"bilge"
'Skipping next part of guide |next "+bilge_tab" |only if step:Find("+bilge_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"bilge_buy"
goto Orgrimmar,50.1,58.6
.talk 50323
.buy Bilgewater Cartel Tabard##64884
step
label	"bilge_tab"
.' Equip your Bilgewater Cartel Tabard |equipped Bilgewater Cartel Tabard##64884 |use Bilgewater Cartel Tabard##64884
.' You can run any dungeon that grants experience to gain reputation for Bilgewater Cartel.
.' Friendly with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Friendly
.' Honored with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Honored
.' Revered with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Revered
.' Become Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
|next "menu"
step
label	"huojin"
'Skipping next part of guide |next "+huojin_tab" |only if step:Find("+huojin_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"huojin_buy"
goto Orgrimmar 69.8,41.1
.talk 66022
.buy Huojin Tabard##83080
step
label	"huojin_tab"
.' Equip your Huojin Tabard |equipped Huojin Tabard##83080 |use Huojin Tabard##83080
.' You can run any dungeon that grants experience to gain reputation for Bilgewater Cartel.
.' Friendly with Huojin Pandaren |condition rep('Huojin Pandaren')>=Friendly
.' Honored with Huojin Pandaren |condition rep('Huojin Pandaren')>=Honored
.' Revered with Huojin Pandaren |condition rep('Huojin Pandaren')>=Revered
.' Become Exalted with Huojin Pandaren |condition rep('Huojin Pandaren')==Exalted
|next "menu"
step
label	"end"
.' Congratulations, you have earned the Title _Ambassador_! |achieve 948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Tranquillien",[[
step
goto Eversong Woods,49.0,89.0
.talk 16183
..turnin 9144
|only if havequest(16183)
step
goto 49.0,89.0
.talk 16196
..accept 9147
step
goto Ghostlands,49.3,12.6
.from Starving Ghostclaw##16347+, Mistbat##16353+
.get 4 Plagued Blood Sample |q 9147/1
step
goto Eversong Woods,49.0,89.0
.talk 16196
..turnin 9147
step
goto 49.0,89.0
.talk 16183
..accept 9148
step
goto Ghostlands,46.3,28.4
.talk 16197
..turnin 9148
..accept 9327 |or
..accept 9329 |or
step
goto 45.4,30.5
.talk 16189
.fpath Tranquillien
step
goto 44.8,32.5
.talk 16252
..turnin 9329 |or
..turnin 9327 |or
..accept 9758
step
goto 46.3,28.4
.talk 16197
..turnin 9758
..accept 9138
step
goto 47.3,28.6
.talk 16224
..accept 9152
step
goto 48.9,32.4
.talk 16542
.home Tranquillien
step
goto 47.7,34.9
.talk 16198
..accept 9149
step
goto 60.6,14.0
.kill 10 Nerubis Guard##16313+ |q 9138/1
step
goto 46.3,28.4
.talk 16197
..turnin 9138
..accept 9139
step
goto 33.6,26.5
.click Rathis Tomber's Supplies##1869 |tip It's in a wagon with a purple canopy over it.
.get Rathis Tomber's Supplies |q 9152/1
step
goto 27.3,16.2
.kill 6 Quel'dorei Ghost##16325+ |q 9139/1
.kill 4 Quel'dorei Wraith##16326+ |q 9139/2
step
goto 20.5,21.4
.from Withered Grimscale##16403+, Zombified Grimscale##16402+
.get 6 Plagued Murloc Spine |q 9149/1
step
goto 47.1,28.3
.talk 16224
..turnin 9152
step
goto 46.3,28.4
.talk 16197
..turnin 9139
..accept 9140
step
goto 46.0,32.0
.talk 16199
..accept 9150
step
goto 45.5,32.5
.talk 16213
..accept 9145
step
goto 44.9,32.5
.talk 16231
..accept 9160
step
goto 44.8,32.3
.talk 16251
..accept 9192
step
goto 46.0,33.6
.talk 16200
..accept 9155
step
goto 47.7,34.9
.talk 16198
..turnin 9149
step
goto 48.4,30.9
.talk 16253
..accept 9171
step
goto 40.5,33.5
.kill 10 Risen Hungerer##16301+ |q 9155/1
.kill 10 Gangled Cannibal##16309+ |q 9155/2
.' More can be found around [38.3,36.5]
step
goto 35.9,32.9
.from Arcane Devourer##16304+, Mana Shifter##16310+
.get 8 Crystallized Mana Essence |q 9150/1
step
goto 27.6,31.1
.from Spindleweb Spider##16350+
.get 5 Crunchy Spider Leg |q 9171/1
.' You can find more around [33.5,22.2]
step
goto 37.7,22.9 |n
.' Follow the path up |goto 37.7,22.9,0.5 |noway |c
step
goto 35.4,12.4
.' Go to this spot |tip Get near the intertwined tree lamp in the middle of the camp.
.' Investigate An'daroth |q 9160/1
.kill 12 Sentinel Spy##16330+ |q 9160/2
step
goto 48.0,31.0
.talk 16253
..turnin 9171
step
goto 46.0,32.0
.talk 16199
..turnin 9150
step
goto 44.9,32.5
.talk 16231
..turnin 9160
..accept 9163
step
goto 44.7,32.3
.talk 16251
..accept 9199
step
goto 44.8,32.8
.talk 16289
..accept 9193
step
goto 46.0,33.6
.talk 16200
..turnin 9155
step
goto 31.4,48.3
.talk 16293
..accept 9207
step
goto 29.7,46.9
.kill 8 Blackpaw Gnoll##16334+ |q 9192/1
.kill 6 Blackpaw Scavenger##16335+ |q 9192/2
.kill 4 Blackpaw Shaman##16337+ |q 9192/3
.get 6 Underlight Ore |q 9207/1
step
goto 18.8,46.1
.from Phantasmal Seeker##16323+
.get 6 Phantasmal Substance |q 9140/1
.from Stonewing Slayer##16324+
.get 4 Gargoyle Fragment |q 9140/2
step
goto 12.6,26.5
.click Night Elf Plans: An'daroth##183
.get Night Elf Plans: An'daroth |q 9163/1
.' It can also spawn at [13.7,26.8]
step
goto 12.9,23.9
.click Night Elf Plans: An'owyn##222
.get Night Elf Plans: An'owyn |q 9163/2
.' It can also spawn at [12.5,24.8]
step
goto 10.5,22.6
.click Night Elf Plans: Scrying on the Sin'dorei##164
.get Night Elf Plans: Scrying on the Sin'dorei |q 9163/3
step
goto 46.3,28.4
.talk 16197
..turnin 9140
step
goto 44.9,32.5
.talk 16231
..turnin 9163
..accept 9166
step
goto 44.7,32.3
.talk 16251
..turnin 9192
step
goto 44.8,32.5
.talk 16252
..accept 9173
step
goto 48.9,31.3
.talk 16205
..accept 9218
..accept 9216
step
goto 57.6,14.9
.talk 16601
..accept 9315
step
goto 61.3,15.9
.kill Anok'suten##16357 |q 9315/1 |tip He walks all around this village, so you may need to search for him.
step
goto 69.4,15.2
.talk 16219
..turnin 9145
..accept 9143
step
goto 74.8,12.3
.from Shadowpine Ripper##+, Shadowpine Witch##+
.get 6 Zeb'Sora Troll Ear |q 9143/1
step
goto 69.4,15.2
.talk 16219
..turnin 9143
..accept 9146
step
goto 72.3,19.1
.talk 16201
..accept 9157
step
goto 72.5,32.1
.talk 16202
..accept 9158
step
goto 72.3,31.3
.talk 16463
..accept 9276
step
goto 72.4,29.6
.talk 16220
..turnin 9146
..accept 9214
step
goto 72.2,29.8
.talk 16462
..accept 9274
step
goto 72.0,32.6
.talk 16203
..accept 9161
step
goto 73.5,21.9
.kill 8 Ravening Apparition##16327+ |q 9274/1
.kill 8 Vengeful Apparition##16328+ |q 9274/2
.click Glistening Mud##49+
.get 8 Wavefront Medallion |q 9157/1
step
goto 72.3,19.1
.talk 16201
..turnin 9157
..accept 9174
step
goto 71.3,15.1
.click Altar of Tidal Mastery##4853
.kill Aquantion##16292 |q 9174/1
step
goto 72.3,19.1
.talk 16201
..turnin 9174
step
goto 79.6,17.6
.click Dusty Journal##470 |tip It's laying on the balcony platform of this building.
..turnin 9161
..accept 9162
step
goto 75.8,28.4
.kill 10 Ghostclaw Lynx##16348+ |q 9158/1 |tip The Ghostclaw Lynx share spawn points with the bats.
step
goto 72.5,32.1
.talk 16202
..turnin 9158
..accept 9159
step
goto 72.2,29.8
.talk 16462
..turnin 9274
step
goto 72.0,32.6
.talk 16203
..turnin 9162
..accept 9172
step
goto 72.6,31.6
.talk 16464
..accept 9275
step
goto 73.9,38.0
.kill 10 Vampiric Mistbat##16354+ |q 9159/1
step
goto 78.6,38.1
.kill 8 Shadowpine Shadowcaster##16469+ |q 9276/1
.get 3 Shadowcaster Mace |q 9214/2
.kill 8 Shadowpine Headhunter##16344+ |q 9276/2
.get 3 Headhunter Axe |q 9214/1
step
goto 72.3,31.3
.talk 16463
..turnin 9276
..accept 9277
step
goto 46.3,28.4
.talk 16197
..turnin 9315
step
goto 39.2,36.3
.from Risen Stalker##16302+, Risen Hungerer##16301+
.get 10 Rotting Heart |q 9216/1
.' You can find more around [37.8,45.8]
step
goto 29.8,40.9
.kill 8 Spindleweb Lurker##16351+ |q 9159/2
.' You can find more around [26.4,53.5]
step
goto 17,59
.kill 8 Deatholme Acolyte##16315+ |q 9173/1
.kill 10 Fallen Ranger##16314+ |q 9173/2
.collect The Lady's Necklace##22597 |n
.' Click The Lady's Necklace in your bags |use The Lady's Necklace##22597
..accept 9175
step
goto 48.9,31.3
.talk 16205
..turnin 9216
step
goto 46.0,31.9
.talk 16199
..accept 9151
step
goto 44.8,32.4
.talk 16252
..turnin 9173
..turnin 9175
step
goto 55.2,44.8 |n
.' Follow this path |goto 55.2,44.8,1.0 |noway |c
step
goto 55.1,48.8
.talk 16239
..turnin 9172
..accept 9176
step
goto 54.9,48.5
.talk 16291
..turnin 9207
step
goto 54.9,48.5
.talk 16204
..turnin 9151
..accept 9220
step
goto 57.1,45.0 |n
.' Follow this path |goto 57.1,45.0,0.5 |noway |c
step
goto 60.7,42.7 |n
.' Follow the path up |goto 60.7,42.7,0.5 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9166
..accept 9169
step
goto 57.8,64.9
.from Sentinel Infiltrator##16333+
.collect Crystal Controlling Orb##23191
step
goto 58.0,65.1
.click Night Elf Moon Crystal##6749
.' Deactivate the Night Elf Moon Crystal |q 9169/1
step
goto 65.1,66.8
.click Raw Meat Rack##4351
.' Poison the Raw Meat Rack |q 9275/1
step
goto 63.0,75.0
.click Smoked Meat Rack##409
.' Poison the Smoked Meat Rack |q 9275/2
step
goto 68.3,57.8
.click Fresh Fish Rack##6705
.' Poison the Fresh Fish Rack |q 9275/3
step
goto 66.9,58.6
.kill 10 Shadowpine Catlord##16345+ |q 9277/1
.get 3 Catlord Claws |q 9214/3
.kill 10 Shadowpine Hexxer##16346+ |q 9277/2
.get 3 Hexxer Stave |q 9214/4
.' You can find more around [63.5,67.4]
step
goto 72.5,32.1
.talk 16202
..turnin 9159
step
goto 72.3,31.2
.talk 16463
..turnin 9277
step
goto 72.4,29.6
.talk 16220
..turnin 9214
step
goto 72.6,31.6
.talk 16464
..turnin 9275
step
goto 67.7,28.9 |n
.' Follow this path |goto 67.7,28.9,0.5 |noway |c
step
goto 66.2,28.5 |n
.' Enter the Amani Catacombs |goto 66.2,28.5,0.5 |noway |c
step
goto 62.9,31.1
.click Mummified Troll Remains##6804 |tip Do this as you walk.
.' Go to this spot
.' Investigate the Amani Catacombs |q 9193/1
step
goto 62.8,31.8
.from Mummified Headhunter##16342+, Shadowpine Oracle##16343+
.get 8 Troll Juju |q 9199/1
.click Mummified Troll Remains##6804
.' Burn 10 Mummified Troll Remains |q 9193/2
.' There are more Mummified Troll Remains in the hallway at [64.9,28.5]
step
62.9,32.7
.talk 16295
..accept 9212
.' Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1
step
goto 72.4,29.6
.talk 16220
..turnin 9212
step
goto 60.7,42.7 |n
.' Follow this path |goto 60.7,42.7,0.5 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9169
step
goto 44.7,32.3
.talk 16251
..turnin 9199
step
goto 44.8,32.8
.talk 16289
..turnin 9193
step
goto 40.4,49.8
.click Worn Chest##10
.get Stone of Flame |q 9176/1
step
goto 34.3,47.7
.click Dented Chest##10
.get Stone of Light |q 9176/2
step
goto 38.1,58.6
.from Dreadbone Sentinel##16305+, Deathcage Sorcerer##16308+
.get 10 Spinal Dust |q 9218/1
.' You can find more around [36.3,68.8]
step
goto 36.0,71.7 |n
.' Enter Deatholme |goto 36.0,71.7,0.5 |noway |c
step
goto 36.9,76.1
.kill 6 Nerubis Centurion##16319+ |q 9220/2
.' You can find a few more around [39.2,79.7]
step
goto 37.8,81.3
.kill 5 Eye of Dar'Khan##16320+ |q 9220/1
.kill 6 Wailer##16321+ |q 9220/3
step
goto 46.4,56.4
.talk 16480
..accept 9281
step
goto 46.9,60.4
.kill 10 Greater Spindleweb##16352+ |q 9281/1
.kill 10 Ghostclaw Ravager##16349+ |q 9281/2
.' You can find more:
.' Around [56.4,59.9]
.' Around [42.8,55.8]
step
goto 46.4,56.4
.talk 16480
..turnin 9281
step
goto 55.1,48.8
.talk 16239
..turnin 9176
step
goto 54.9,48.6
.talk 16204
..turnin 9220
..accept 9170
step
goto 54.8,48.4
.talk 16240
..accept 9877
step
goto 47.7,34.9
.talk 16198
..turnin 9877
..accept 9164
step
goto 48.9,31.3
.talk 16205
..turnin 9218
step
goto 36.0,71.7 |n
.' Enter Deatholme |goto 36.0,71.7,0.5 |noway |c
step
goto 31.7,73.7 |n
.' Enter the crypt |goto 31.7,73.7,0.5 |noway |c
step
goto 32.1,74.3
.kill Jurion the Deceiver##16248 |q 9170/3
step
goto 32.1,74.0
.talk 16208
..' <Administer the restorative draught.>
.' Rescue Apothecary Enith |q 9164/1
step
goto 37.4,79.3
.kill Mirdoran the Fallen##16250 |q 9170/1
step
goto 35.8,89.1
.kill Masophet the Black##16249 |q 9170/4
.' He can also spawn at [29.3,88.9]
step
goto 32.7,90.5
.kill Borgoth the Bloodletter##16247 |q 9170/2
.' He can also be found at [40.9,83.1]
step
goto 32.8,89.8
.talk 16209
..' <Administer the restorative draught.>
.' Rescue Ranger Vedoran |q 9164/3
step
goto 37.5,84.7 |n
.' Follow the path up |goto 37.5,84.7,0.5 |noway |c
step
goto 40.8,83.2
.talk 16206
..' <Administer the restorative draught.>
.' Rescue Apprentice Varnis |q 9164/2
step
goto 54.9,48.5
.talk 16204
..turnin 9170
step
goto 54.8,48.4
.talk 16240
..turnin 9164
step
goto 72.2,31.2
.click Wanted Poster: Kel'gash the Wicked##6902
.accept 9215
.' This is a group quest, so you may need some extra help with it.
step
goto Ghostlands,65.3,79.5
.from Kel'gash the Wicked##16358
.get Head of Kel'gash the Wicked |q 9215/1
step
goto 72.4,29.7
.talk 16220
.turnin 9215
step
'You should be Exalted with Tranquillien by this point.
.' Earn Exalted with Tranquillien |condition rep('Tranquillien') |next "exalted"
step
label exalted
'Congratulations, you are Exalted with Tranquillien!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Cenarion Circle Faction",[[
step
label	"menu"
.' There are several ways to earn reputation with _Cenarion Circle_.  Earning exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
.' You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
.' or
.' There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to exalted. Click here to go to these quests |confirm always |next "quest"
.' or
.' The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm_text"
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
label	"quest"
goto Silithus,54.9,36.0
.talk 15191
..accept 8280
step
goto 55.0,36.0
.click the Wanted Poster: Deathclasp |tip It looks like a wooden message board.
..accept 8283 |tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 55.5,36.8
.talk 15174
.home Cenarion Hold
step
goto 55.4,36.3
.talk 15189
..accept 8277
step
goto 53.0,34.6
.talk 17081
..accept 9416
step
goto 52.8,34.6
.talk 15178
.fpath Cenarion Hold
step
goto 53.2,35.2
.talk 15270
..accept 8320
step
goto 53.2,35.1
.talk 15306
..accept 8318
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8318/1
.kill 10 Twilight Geolord##11881+ |q 8320/1
step
goto 46.2,34.8
.from Sand Skitterer##11738+
.get 8 Sand Skitterer Fang |q 8277/2
.from Stonelash Scorpid##11735+
.get 8 Stonelash Scorpid Stinger |q 8277/1
.kill 15 Dredge Striker##11740+ |q 8280/1
step
goto 55.4,36.3
.talk 15189
..turnin 8277
..accept 8278
step
goto 54.9,36.0
.talk 15191
..turnin 8280
..accept 8281
step
goto 53.2,35.1
.talk 15306
..turnin 8318
step
goto 53.2,35.2
.talk 15270
..turnin 8320
..accept 8321
step
goto 68.7,63.0
.talk 15194
..turnin 8285
..accept 8279
step
goto 53.0,53.1
.from Stonelash Pincer##11736+
.get 3 Stonelash Pincer Stinger |q 8278/2
step
goto 46.2,39.8
.from Twilight Keeper Havunth##11804 |tip He walks around this area in a purple robe, so you may need to search for him.
.get Twilight Lexicon - Chapter 3 |q 8279/3
step
goto 33.9,34.1
.from Twilight Keeper Mayna##15200 |tip She walks around this area carrying a book, so you may need to search for her.
.get Twilight Lexicon - Chapter 1 |q 8279/1
step
goto 44.9,48.7
.kill 20 Dredge Crusher##11741+ |q 8281/1
.' You can find more Dredge Crushers around [37.9,32.4]
step
goto 54.5,62.9
.talk 17079
..turnin 9416
..accept 9422
step
goto 50.0,49.9
.click the Silithyst Geyser |tip They look like small pink rocks with holes in the top of them.  They have smoke floating out of their tops, and they blow up a stream of orange steam occasionally.  You can find them all around Silithus.
.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9422
.' They spawn in various locations, you find more at:
.' [53.2,41.6]
.' [57.1,47.2]
.' [60.0,41.1]
step
goto 54.9,63.4
.' Stand inside the big red-glowing metal machine
.' Deliver Silithyst |q 9422/1
step
goto 54.5,62.9
.talk 17079
..turnin 9422
step
goto 51.7,64.7
.from Stonelash Flayer##11737+
.get 3 Stonelash Flayer Stinger |q 8278/1
.from Rock Stalker##11739+
.get 3 Rock Stalker Fang |q 8278/3
step
goto 54.9,36.0
.talk 15191
..turnin 8281
step
goto 55.4,36.3
.talk 15189
..turnin 8278
step
goto 55.3,36.2
.talk 15190
..accept 8282
step
goto 70.2,16.1 |n
.' Enter the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 73.1,16.5
.' Follow the path inside the cave
.from Vyral the Vile##15202
.get Vyral's Signet Ring |q 8321/1
step
goto 70.2,16.1 |n
.' Leave the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 52.7,35.6
.talk 15270
..turnin 8321
step
goto 53.6,35.3
.talk 15183
..accept 8284
step
goto 31.0,13.6
.click Twilight Tablet Fragments |tip They look like small blue-glowing stone pieces on the ground around this area.
.get 8 Twilight Tablet Fragment |q 8284/1
step
goto 53.6,35.3
.talk 15183
..turnin 8284
..accept 8285
step
goto 53.2,32.5
.talk 15181
..accept 8304
step
goto 46.0,79.4
.talk 15171
..' Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
.' Question Frankal |q 8304/1
step
goto 46.4,79.1
.talk 15170
..' Tell him the Commander has sent you here to gather some information about his missing wife
.' Question Rutgar |q 8304/2
step
.' Click the Quest Complete Box under your minimap
..turnin 8304
..accept 8306
step
goto 47.4,81.1 |n
.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
step
goto 49.2,81.6
.click Noggle's Satchel |tip It looks like a tan bag sitting on the ground next to the wall.  Be careful of Deathclasp, the elite scorpion that patrols this small area.
.get Noggle's Satchel |q 8282/1
step
goto 49.5,81.3
.from Deathclasp##15196 |tip He's an elite scorpion that patrols this small area with his 2 guards.
.get Deathclasp's Pincer |q 8283/1 |tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 24.8,77.3
.from Twilight Keeper Exeter##11803
.get Twilight Lexicon - Chapter 2 |q 8279/2
step
goto 55.3,36.2
.talk 15190
..turnin 8282
step
goto 54.3,34.0 |n
.' Follow the path up |goto 54.3,34.0,0.5 |noway |c
step
goto 54.5,32.0
.talk 15182
..turnin 8283
step
goto 46.0,79.4
.talk 15171
..accept 8310
step
goto 46.4,79.1
.talk 15170
..accept 8309
step
goto 58.5,78.4 |n
.' Enter the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 55.6,90.6
.from Mistress Natalia Mar'alith##15215
.' Discover the Fate of Mistress Natalia Mar'alith |q 8306/1
step
goto 55.6,90.5
.click the Hive'Regal Glyphed Crystal |tip It looks like a white and green crystal on the ground.
..' <Use the transciption device to gather a rubbing.>
.get Hive'Regal Rubbing |q 8309/1
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 58.5,78.4 |n
.' Leave the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 59.3,74.8
.from Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
.get Hive'Regal Silithid Brain |q 8310/1
.collect Brann Bronzebeard's Lost Letter##20461 |n
.click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
..accept 8308
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8279
..accept 8287
..accept 8323
step
goto 53.2,32.5
.talk 15181
..turnin 8306
..turnin 8287
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8323/1
step
goto 46.0,79.4
.talk 15171
..turnin 8310
step
goto 46.4,79.1
.talk 15170
..turnin 8308
..turnin 8309
..accept 8314
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
step
goto 68.7,63.0
.talk 15194
..turnin 8323
step
goto 53.6,35.3
.talk 15183
..turnin 8314
|next "menu"
label	"farm_text"
goto Silithus,45.6,40.1
.from Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
.collect Encrypted Twilight Text##20404 |n
.' More Twilight mobs can be found at [28.0,74.8]
.' Here [69.7,16.6]
.' Here [33.5,33.9]
.' When you have a lot of Twilight Texts to turn in, click here |confirm always
step
goto Silithus,53.2,35.1
.talk 15306
..accept 8319 |instant |repeatable |tip
.' You can click here to farm more Texts |confirm always |next "farm_text"
.' or
.' Click here to do quests outside of Silithus for more rep |confirm always
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
goto Un'Goro Crater,55.7,60.6
.talk 38269
..accept 24854
step
goto 70.8,76.4
.talk 38274
..turnin 24854
..accept 24719
step
goto 67.4,72.3
.from Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
..get 5 White Ravasaur Claw |q 24719/1
.' More can be found around [Un'Goro Crater,69.1,57.1]
step
goto 70.6,76.8
.talk 38274
..turnin 24719
..accept 24686
step
goto 73.5,60.2
.' While traveling to the coordinates, look in the water for Bloodpetal Seeds |modelnpc 38202
.' Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
.get 4 Un'Goro Lasher Seed |q 24686/1
step
goto 70.6,75.9
.talk 38274
..turnin 24686
..accept 24689
step
goto 76.4,48.3
.talk 38263
..turnin 24689
..accept 24687
step
goto 75.8,44.1
.' Attack the Juvenile Bloodpetals in the area.
..kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1
step
goto 76.4,48.3
.talk 38263
..turnin 24687
..accept 24855
step
goto 69.9,34.1
.kill 11 Bloodpetal##6512+ |q 24855/1
step
goto 76.4,48.3
.talk 38263
..turnin 24855
step
goto 48.9,54.8
.talk 44456
..accept 26953
step
goto 48.5,54.9
.talk 44457
..accept 26956
step
goto 47.4,52.9
.' Click Unhealthy-Looking Pumpkins |tip They look like pumpkins with green bottoms on the ground around this area.
.from Thrashing Pumpkin##44487+
.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
step
goto 46.8,54.1
.' Click Rotten Apples |tip They look like red apples sitting on the ground around this area.
.from Pome Wraith##44488+
.' Remove 4 Rotten Apples |q 26956/2
step
goto 45.8,53.4
.' Click Bad Corn |tip They look like yellow-ish pieces of corn laying on the ground around this area.
.from Corn Stalker##44489+
.' Remove 6 Bad Corn |q 26956/1
step
goto 50.3,59.6
.from Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+ |tip You must do this with the troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
step
goto 48.9,54.8
.talk 44456
..turnin 26953
..accept 26954
step
goto 48.5,54.9
.talk 44457
..turnin 26956
step
goto 53.9,53.7
.' Click Zen'Kiki |tip He's the troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
.kill 7 Diseased Hawk##44481 |q 26954/1
step
goto 48.9,54.8
.talk 44456
..turnin 26954
step
goto 49.3,55.0
.talk 44454
..accept 26999
step
goto 46.0,48.7
.from Hulking Plaguebear##44482+
.get 4 Hulking Plaguebear Sample |q 26999/3
.from Diseased Wolf##1817+
.get 4 Diseased Wolf Sample |q 26999/4
step
goto 57.0,62.7
.from Plague Lurker##1824+
.get 4 Plague Lurker Sample |q 26999/1
.from Venom Mist Lurker##1822+
.get 4 Venom Mist Lurker Sample |q 26999/2
step
goto 49.3,55.0
.talk 44454
..turnin 26999
..accept 26935
step
goto 48.1,32.4
.talk 11616
..turnin 26935
..accept 27000
step
goto 47.7,31.7
.' Click a Hearthglen Mustang |tip They are brown horses.
.' Ride the Hearthglen Mustang |invehicle |c |q 27000
step
goto 47.4,35.0
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Frighten 25 Northridge Spiders |q 27000/1
step
goto 48.1,32.4
.talk 11616
..turnin 27000
..accept 27001
step
goto 47.7,31.7
.' Click a Hearthglen Mustang |tip They are brown horses. |modelnpc 44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27001
step
goto 47.0,35.3
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
.' The Hearthglen Recruits will kill the Northridge Spiders
.' Lure 10 Northridge Spiders to Lumber Mill |q 27001/1
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
goto 48.1,32.4
.talk 11616
..turnin 27001
..accept 27002
step
goto 42.0,14.8
.talk 44441
..turnin 27002
step
goto 49.3,54.9
.talk 44454
..accept 27053
step
goto 62.7,58.9
.from Cauldron Lord Soulwrath##11078
.get Gahrron's Withering Cauldron Key |q 27053/1
step
goto 62.6,58.6
.' Click the Scourge Cauldron |tip It's a huge shaking black pot with orange liquid in it on a stone platform.
..turnin 27053
..accept 27057
step
goto 49.3,55.0
.talk 44454
..turnin 27057
step
goto 48.9,54.8
.talk 44456
..accept 26955
step
goto 66.7,48.9
.' Click Cultist Cages |tip They look like big yellow cages around this area. |model 01787
.' Free and Heal 4 Captive Plaguebears |q 26955/1
step
goto 48.9,54.8
.talk 44456
..turnin 26955
step
goto Eastern Plaguelands,35.6,68.9
.talk 11063
..accept 27383
step
goto Eastern Plaguelands,32.5,83.7
.talk 10926
..turnin 27383
..accept 27384
step
goto 34.0,85.4
.click Pamela's Doll's Right Side##4233
.collect Pamela's Doll's Right Side##12888 |q 27384
.click Pamela's Doll's Left Side##4232
.collect Pamela's Doll's Left Side##12887 |q 27384
.click Pamela's Doll's Head##4231
.collect Pamela's Doll's Head##12886 |q 27384
.' You can find more pieces here [34.0,85.0] here [35.5,85.5] and here [35.6,82.9]
step
'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
.get Pamela's Doll |q 27384/1
step
goto 32.4,83.7
.talk 10926
..turnin 27384
..accept 27392
step
goto 40.3,83.8
.from The Lone Hunter##45450+
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.5,83.6
.talk 10926
..turnin 27392
..accept 27385
step
goto 35.6,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.3,68.1
.talk 10667
..turnin 27386
step
goto Eastern Plaguelands,35.0,68.1
.talk 45500
..accept 27544
step
goto 30.2,56.9
.talk 16135
..turnin 27544
..accept 27420
..accept 27421
step
goto 33.7,44.4
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Western Necropolis |q 27421/2
step
goto 37.8,42.5
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Northeastern Necropolis |q 27421/3
step
goto 37.6,48.3
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Southeastern Necropolis |q 27421/1
step
goto 36.4,46.0
.from Shadowmage##8550+, Dark Adept##8546+
.collect Plague Disseminator Control Rune##61037 |n
.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
.' Destroy 3 Plague Disseminators |q 27420/1
step
goto 30.2,56.9
.talk 16135
..turnin 27420
..turnin 27421
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
.' This is the end of the questing
.' Click here to go back to the Silithus Reputation menu |confirm always |next "menu"
step
label	"exalted"
.' Congratulations, you are Exalted with Cenarion Expedition |only if rep('Cenarion Circle')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Timbermaw Hold Faction",[[
author support@zygorguides.com
achieveid 944
step
goto Felwood,64.0,10.3
.talk 15395
..accept 28338
..accept 28366
step
goto 64.1,10.3
.talk 48461
..accept 28362
step
goto 60.6,9.5
.talk 47556
.turnin 28362
.accept 28364
step
goto 62.1,9.9
.from Chieftain Bloodmaw##9462
.get Drizle's Key##63695 |q 28364/1
step
goto 60.6,9.5
.talk 47556
.turnin 28364
step
goto 62.0,12.8
.from Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
.'Kill 15 Deadwood Furbolg |q 28338/1
.click Deadwood Weapon Pile##10202
.get 7 Deadwood Weapons |q 28366/1
..collect 1 Deadwood Ritual Totem##20741 |n
..accept 8470
.' You can find more around [Felwood,59.7,9.8].
step
goto 64.0,10.3
.talk 15395
..turnin 28338
..turnin 28366
..accept 28521
.' You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
goto 64.7,5.7
.talk 11558
.turnin 8470
.' You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
goto 64.9,5.2
.talk 11557
.accept 6031
only if rep ('Timbermaw Hold')>=Friendly
step
goto Winterspring,21.1,46.2
.talk 11556
..turnin 28521
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 24.5,47.6
.' Click the Winterfall Cauldron.
..turnin 28464
..accept 28467
step
goto 24.5,47.6
.from Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
.'Kill 15 Winterfall Furbolg |q 28460/1
..get 10 Winterfall Spirit Beads |q 28522/1
.' You can find more mobs around [Winterspring,27.3,49.3].
step
goto 25.1,58.5
.talk 9298
..turnin 28467
..turnin 28460
..accept 28469
..accept 28530
step
goto 29.3,54.8
.from Winterfall Runner##10916
.get Winterfall Crate |q 28469/1
.' They walk along the road so some searching may be required.
step
goto 32.7,50.6
.from Scalding Springsurge##48767+,Boiling Springbubble##48768+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..turnin 28530
..accept 28470
.' You should be honored with Timbermaw Hold at this point.
step
goto 37.0,55.6
.kill High Chief Winterfall##10738 |q 28470/1
step
goto 25.1,58.5
.talk 9298
..turnin 28470
step
goto 21.1,46.2
.talk 11556
..turnin 28522
.' You should now be able to do the quest More Beads for Salfa.
step
goto 65.3,46.2
.talk 48722
.accept 28614
step
goto 65.4,46.2
.talk 48723
..accept 28615
step
goto 67.0,47.7
' Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
.' Overload 4 Winterfall Earth Totems |q 28615/1
|modelnpc Winterfall Earth Totem##49177
step
goto 69.3,50.6
..kill Grolnar the Berserk##49178 |q 28614/1
step
goto Winterspring,65.4,46.2
.talk 48723
..turnin 28615
step
goto 65.3,46.2
.talk 48722
..turnin 28614
step
label	"the_grind"
.' At this point, you can do two repeatable quests, as well as grind to earn rep.
.' More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
.' or
.' Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood" |tip
.' Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label	"winterfall"
goto 67.5,49.8
.from Winterfall Shaman##7439+,Winterfall Ursa##7438+
..collect Winterfall Spirit Beads##21383 |n |tip You need to collect at least 5.
.' 5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
.' More can be found at [Winterspring,35.6,56.3]
.' Click here to turn in your beads |confirm
step
goto 21.1,46.2
.talk 11556
..accept 28523 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"deadwood"
goto Felwood,61.9,12.3
.from Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
..collect Deadwood Headdress Feather##21377 |n |tip You need to collect at least 5.
.' 5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
.' More can be found at [Felwood,59.6,8.9]
.' Click here to turn in your feathers |confirm |next "turnin"
step
label	"turnin"
goto 64.0,10.3
.talk 15395
..accept 28395 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"exalted"
.' Congratulations, you are now Exalted with Timbermaw Hold!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\The Steamwheedle Cartel",[[
step
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions you will need to keep Honored status with the _Bloodsail Buccaneers_.
.' If you want the Insane Title, we suggest you get your Bloodsail Buccaneers rep to Revered before working in this guide.
.' You must also become Exalted with the _Darkmoon Faire_ and _Ravenholdt_. For information on these two refer to the Azeroth section of the Zygor Reputation Guides.
.' Click here to continue |confirm
step
label	"Steam_Menu2"
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm |next "gadget" |only if rep('Booty Bay')<=Revered |tip
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm |next "gadget" |only if rep('Gadgetzan')<=Revered |tip
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm |next "ratchet3" |only if rep('Everlook')<=Revered |tip
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm |next "ratchet3" |only if rep('Ratchet')<=Revered |tip
|next "end" |only if default
step
label	"gadget"
goto Tanaris,72.3,47.1
.from Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+
.' You can find more Pirates around here: [69.5,53.8]
.' Hated |condition rep('Gadgetzan')>=Hated |only if rep('Gadgetzan')>=Hated and rep('Gadgetzan')<=Hated
.' Hostile |condition rep('Gadgetzan')>=Hostile |only if rep('Gadgetzan')>=Hostile and rep('Gadgetzan')<=Hostile
.' Unfriendly |condition rep('Gadgetzan')>=Unfriendly |only if rep('Gadgetzan')>=Unfriendly and rep('Gadgetzan')<=Unfriendly
.' Neutral |condition rep('Gadgetzan')>=Neutral |only if rep('Gadgetzan')>=Neutral and rep('Gadgetzan')<=Neutral
.' Friendly |condition rep('Gadgetzan')>=Friendly |only if rep('Gadgetzan')>=Friendly and rep('Gadgetzan')<=Friendly
.' Honored |condition rep('Gadgetzan')>=Honored |only if rep('Gadgetzan')>=Honored and rep('Gadgetzan')<=Honored
.' Revered |condition rep('Gadgetzan')>=Revered |only if rep('Gadgetzan')>=Revered and rep('Gadgetzan')<=Revered
.' Gain Exalted reputation with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' And
.' Hated |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')>=Hated and rep('Booty Bay')<=Hated
.' Hostile |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')>=Hostile and rep('Booty Bay')<=Hostile
.' Unfriendly |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')>=Unfriendly and rep('Booty Bay')<=Unfriendly
.' Neutral |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')>=Neutral and rep('Booty Bay')<=Neutral
.' Friendly |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')>=Friendly and rep('Booty Bay')<=Friendly
.' Honored |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')>=Honored and rep('Booty Bay')<=Honored
.' Revered |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')>=Revered and rep('Booty Bay')<=Revered
.' Gain Exalted reputation with Booty Bay |condition rep('Booty Bay')==Exalted |tip
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
step
label	"ratchet3"
goto Northern Barrens,77.5,90.1
.from Southsea Privateer##3384+, Southsea Cutthroat##3383+, Glomp##34747, Southsea Recruit##44168+
.' Hated |condition rep('Ratchet')>=Hated |only if rep('Ratchet')>=Hated and rep('Ratchet')<=Hated
.' Hostile |condition rep('Ratchet')>=Hostile |only if rep('Ratchet')>=Hostile and rep('Ratchet')<=Hostile
.' Unfriendly |condition rep('Ratchet')>=Unfriendly |only if rep('Ratchet')>=Unfriendly and rep('Ratchet')<=Unfriendly
.' Neutral |condition rep('Ratchet')>=Neutral |only if rep('Ratchet')>=Neutral and rep('Ratchet')<=Neutral
.' Friendly |condition rep('Ratchet')>=Friendly |only if rep('Ratchet')>=Friendly and rep('Ratchet')<=Friendly
.' Honored |condition rep('Ratchet')>=Honored |only if rep('Ratchet')>=Honored and rep('Ratchet')<=Honored
.' Revered |condition rep('Ratchet')>=Revered |only if rep('Ratchet')>=Revered and rep('Ratchet')<=Revered
.' Gain Exalted reputation with Ratchet |condition rep('Ratchet')==Exalted
.' And
.' Hated |condition rep('Everlook')>=Hated |only if rep('Everlook')>=Hated and rep('Everlook')<=Hated
.' Hostile |condition rep('Everlook')>=Hostile |only if rep('Everlook')>=Hostile and rep('Everlook')<=Hostile
.' Unfriendly |condition rep('Everlook')>=Unfriendly |only if rep('Everlook')>=Unfriendly and rep('Everlook')<=Unfriendly
.' Neutral |condition rep('Everlook')>=Neutral |only if rep('Everlook')>=Neutral and rep('Everlook')<=Neutral
.' Friendly |condition rep('Everlook')>=Friendly |only if rep('Everlook')>=Friendly and rep('Everlook')<=Friendly
.' Honored |condition rep('Everlook')>=Honored |only if rep('Everlook')>=Honored and rep('Everlook')<=Honored
.' Revered |condition rep('Everlook')>=Revered |only if rep('Everlook')>=Revered and rep('Everlook')<=Revered
.' Gain Exalted reputation with Everlook |condition rep('Everlook')==Exalted |tip
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations, you are Exalted with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Darkmoon Faire",[[
description This Guide will help you get Reputation with The Darkmoon Faire to earn the title _The Insane_.
author support@zygorguides.com
step
'The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
'The Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town.
|confirm
step
'Click here to go to the Darkmoon Faire Dailies Guide. |next "dailies"
'You can also earn reputation by turning in Darkmoon Decks. Click here to view the Darkmoon Deck statistics. |next "cards" |confirm
step
label	"dailies"
#include "H_Darkmoon_Faire_Dailies"
step
label	"cards"
.' You can now only get cards using _Inscription_, or buying them at the _Auction House_.
.' Cards may be the most expensive turnin for the Faire, but they also provide the most reputation.
.' The higher level of card that you turn in, the more reputation you will receive.
.' You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks.
.' This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly.
.' Reach Neutral with Darkmoone Faire |condition rep('Darkmoon Faire')>=Neutral |only if rep('Darkmoon Faire')>=Neutral and rep('Darkmoon Faire')<=Neutral
.' Reach Friendly with Darkmoone Faire |condition rep('Darkmoon Faire')>=Friendly |only if rep('Darkmoon Faire')>=Friendly and rep('Darkmoon Faire')<=Friendly
.' Reach Honored with Darkmoone Faire |condition rep('Darkmoon Faire')>=Honored |only if rep('Darkmoon Faire')>=Honored and rep('Darkmoon Faire')<=Honored
.' Reach Revered with Darkmoone Faire |condition rep('Darkmoon Faire')>=Revered |only if rep('Darkmoon Faire')>=Revered and rep('Darkmoon Faire')<=Revered
.' Reach Exalted with Darkmoone Faire |condition rep('Darkmoon Faire')>=Exalted
|next "end"
step
label	"end"
' Congratulations, you have reached Exalted with The Darkmoon Faire! |condition rep('Darkmoon Faire')>=Exalted |only if rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Argent Dawn",[[
author support@zygorguides.com
description This Guide will help you reach Exalted with The Argent Dawn
achieveid 946
#include "H_Eastern_Plaguelands_Argent_Dawn"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Ravenholdt",[[
description This Guide will help you get Reputation with Ravenholdt to earn the title _The Insane_.
author support@zygorguides.com
step
'In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation.
.'Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
.' You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
|confirm always
step
goto Arathi Highlands,27.1,30.6
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+  .from Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+
.' You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
.' Reach _11,999/12,000_ Honored with Ravenholdt.
|tip You can only get 1 point away from Revered by grinding, then you will have to do quests.
.' Click here to continue |confirm
|only if repval('Ravenholdt','Honored')<=11999
step
label	"boxes"
goto Blackrock Spire/2 59.0,58.1
.' Now that you have reached Revered, or close to it, you will need to do repeatable quests until Exalted.
.' The only thing you need for the repeatable quests are _Heavy Junkboxes_.
.' You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon. |tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
.' You will need to turnin a total of 1400 _Heavy Junkboxes_ with at least 1 item left in them to go from _Revered_ to _Exalted_. |tip If you have the guild perk Mr. Popularity you only need 1170.
.collect Heavy Junkbox##16885+ |n
.' Click here to continue and turn in your Boxes. |confirm
step
goto Hillsbrad Foothills 71.4,45.0
.talk 7323
..accept 8249 |instant |repeatable |n
.' You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
.' You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
.' Reach Exalted with Ravenholdt |condition rep('Ravenholdt')==Exalted |next end
.' or
.' Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
step
label	"end"
.' Congratulations, you have reached Exalted with Ravenholdt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Bloodsail Buccaneers",[[
step
'The Bloodsail Buccaneer reputation requires a lot of farming.
|confirm |next "bruiser"|only if completedq(26679)
|confirm |next "rum" |only if not completedq(26679)
step
label bruiser
'If you are going to attempt to get exalted with the Bloodsail Buccaneers, our suggestion is that you are max level, have high level gear, and have friends with you.
'The quickest way to gain reputation with the Bloodsail Buccaneers is to farm Booty Bay Bruisers.
'Bruisers have proven to be incredibly difficult to kill. They have a variety of knockbacks and nets, they have high damage and health, and they will call for help so you can quickly find yourself overwhelmed.
|confirm
step
goto Northern Stranglethorn 41.6,73.2
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
.from Booty Bay Bruiser##4624
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label rum
goto The Cape of Stranglethorn,42.1,73.4
.talk 2501
..accept 26593
step
goto 50.4,54.6
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto The Cape of Stranglethorn,40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto The Cape of Stranglethorn,56.6,57.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto The Cape of Stranglethorn 57.0,54.4
.click Half-Buried Bottle##204406
..accept 26603
step
goto 57.8,48.6
.talk 43377
.' Tell him, So you kno why I'm here then. all right Midriff, pay up.
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
goto The Cape of Stranglethorn,59.7,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26603
..accept 26604
step
goto The Cape of Stranglethorn 58.4,80.4
.from Jaguero Stalker##2522+ |q 26604 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+
.get Poobah's Tiara##59057 |q 26605/1
.get Poobah's Scepter##59058 |q 26605/2
.get Poobah's Slippers##59059 |q 26605/3
.get Poobah's Diary##59060 |q 26605/4
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26605
..accept 26606
step
goto The Cape of Stranglethorn 63.4,83.2
.from King Mukla##1559+
..get Shackle Key |q 26606/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26606
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 45.0,79.5
.click Bloodsail Charts##222+
.get Bloodsail Charts |q 26612/3
.click Bloodsail Orders##220+ |tip It looks like a white scroll.
.get Bloodsail Orders |q 26612/4
.' The Bloodsail Orders and Charts can also spawn at the following locations:
.' At [42.0,83.2]
.' At [40.9,82.8]
.kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505
..' Tell her you need to cut off her head, then do the deed
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
..' Tell him you need an extra-large pirate hat. Seahorn's orders.
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
..' Give him the head and the hat and tell him he's the boss
.' Return both items to Fleet Master Seahorn |q 26630/1
step
goto 41.1,73.3
.talk 2487
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto 43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.5,91.4
.talk 2548
..turnin 26631
..accept 26633
step
goto 44.5,92.5
.' Go upstairs to the top deck of the ship
.click Swabbie's Mop##9742
.clicknpc Deck Stain##43511+
.' Swab the Decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,93.3
.talk 2545
..accept 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 46.3,96.0
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 52.5,87.9
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1
.' You can find more Lime Crates around [The Cape of Stranglethorn,56.6,80.0]
step
goto 44.5,93.2
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.4,91.6
.talk 2548
..accept 26644
step
goto 46.7,95.3
.talk 2546
..turnin 26644
step
goto 46.6,95.0
.talk 2547
..accept 26647
step
goto 46.8,94.0
.' Go upstairs
.talk 43556
..accept 26648
step
goto 46.9,93.9
.clicknpc Ol' Blasty##43562
.' Use the abilities on your hotbar to shoot at Smilin' Timmy Sticks |tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
.' Hit Smilin' Timmy Sticks with 5 Cannonballs |q 26647/1
step
'Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
step
goto 46.6,95.0
.' Go downstairs
.talk 2547
..turnin 26647
..accept 26649
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
'Use the Return to Shore ability on your hotbar
.' Return to the Wild Shore |goto 46.0,89.4,0.5 |noway |c |q 26649
step
goto 46.6,95.0
.' Go downstairs in the ship
.talk 2547
..turnin 26649
step
goto 57.1,82.4
.' Use Dead-Eye's Flare Gun |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.2,91.5
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.. Ask him if the Brashtide Crew is ready for battle
.' Speak with Long John Copper |q 26662/1
step
goto 50.6,91.5
.' Go all the way downstairs in this ship
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship
.click Grog Barrel##9095
..' <Nudge the cork.>
.' Sabotage the Grog |q 26663/1
step
goto 46.7,94.2
.' Go all the way downstairs in this ship
.talk 43660
..' Ask him what he can tell you about the Brashtide Crew
.' Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship, unless you've already killed 9 of them
.click Gunpowder Barrel##9095
..' <Pour the water onto the gunpowder.>
.' Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.' Go downstairs in this ship
.talk 43661
..' Ask her if she knows the battle plan
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26662
step
goto 44.7,92.8
.' Go all the way downstairs in this ship
.click Cannonball Crate##9651+
..' <Grease the cannonballs.>
.' Sabotage the Cannonballs |q 26663/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26663
step
goto 44.8,92.9
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Accuse and kill 9 Bloodsail Corsairs |q 26664/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26664
..accept 26665
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.' Go downstairs one level
.click Barrel of Doublerum##32
..turnin 26678
..accept 26679
step
'It is very important that you do not turn this quest in. As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
|confirm
step
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
'Kill any npc with a Booty Bay I.D. in their name, most will award you reputation. |tip The following NPCs give more reputation than the others in Booty Bay: Baron Revilgaz, Viznik and Rickle Goldgrubber, Gizzlowe, and Wharfmaster Lozgil.
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Bloodsail Buccaneers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Hydraxian Waterlords",[[
achieveid 955
step
'This reputation can be earned by running the Molten Core raid.
'Molten Core is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
'If you have never entered Molten Core before you will need to get your attunement to the instance. Click here. |next "attune" |confirm
'If you already have your attunement, click here. |next "noattune" |confirm
step
label
goto Burning Steppes/16 54.3,83.5
.talk 14387
..accept 7848
step
'Follow the path and click on the Shadowforge Gate to open it |goto Blackrock Depths 37.9,66.0 <5 |c
step
goto 55.4,32.4 |n
'Follow the path to this spot and jump into the lava |goto 55.4,32.4 |c |tip It will do 600 damage every few seconds so most high levels will be in no danger.
step
'Swim through the lava to this point |goto Blackrock Depths/2 63.0,30.4 <5 |c
'If you are having trouble keeping your health up you can take breaks to heal at [Blackrock Depths/2 54.5,49.6] |n
'and [Blackrock Depths/2 59.4,33.7] |n
step
'Follow this bridge across |goto Blackrock Depths/2 62.4,29.1 <5 |c
step
goto Blackrock Depths/2 69.2,36.9
.click Core Fragment##5740
.get 1 Core Fragment |q 7848/1
step
'Enter Molten Core through the portal in front of you |tip You must be in a raid group. |goto Molten Core |noway |c
step
'Exit Molten Core through the portal behind you |goto Burning Steppes |noway |c
step
goto Burning Steppes 18.2,24.9
.talk 14387
..turnin 7848
step
label noattune
goto 18.2,24.9
.talk 14387
.' Ask Lothos to transport you to Molten Core |goto Molten Core |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place many times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Hydraxian Waterlords |condition rep('Hydraxian Waterlords')==Exalted |next "exalted" |tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
step
label exalted
'Congratulations, you are now Exalted with the Hydraxian Waterlords!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Brood of Nozdormu",[[
achieveid 956
step
'This reputation can be earned by running the Ahn'Qiraj raid.
'Ahn'Qiraj is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
'Skipping to next step |condition rep('Brood of Nozdormu')>=Friendly|next "farm" |only if rep('Brood of Nozdormu')>=Friendly
'Skipping to next step |condition rep('Brood of Nozdormu')<=Neutral |next "hun" |only if rep('Brood of Nozdormu')<=Neutral
step
label hun
'Every enemy npc in this instance gives reputation and has a chance to drop Scarabs and the Bosses drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet.
'When you have _2999/3000_ Neutral reputation: |only if rep('Brood of Nozdormu')<Friendly
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
step
label turninmob
goto Ahn'Qiraj/2 59.6,68.2
'Use Ancient Qiraji Artifact |use Ancient Qiraji Artifact##21230
..accept 8784 |n
.talk 15502
..turnin 8784 |n
.' Repeat this step until you run out of Ancient Scarabs.
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label turninboss
goto Ahn'Qiraj/2 59.1,68.8
.talk 15503
..accept 8579 |only if not completedq(8579) |n
..accept 8595 |only if completedq(8579) |n
..turnin 8579 |only if not completedq(8579) |n
..turnin 8595 |only if completedq(8579) |n
.' Repeat this step until you run out of Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label farm
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can.
'Bosses in this instance drop Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Brood of Nozdormu!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Azeroth\\Thorium Brotherhood",[[
step
'The Thorium Brotherhood reputation is gained through questing in Searing Gorge and Burning Steppes. It is also gained by turning certain items in to Lokhtos Darkbargainer, most of these items come from Molten Core. See our Hydraxian Waterlords guide for more information on Molten Core.
'Click here to start questing in Searing Gorge |next "searing" |confirm
'Click here to start questing in Burning Steppes |next "burning" |confirm
'Click here to turn in items to Lokhtos Darkbargainer |next "turnin" |confirm
step
label searing
goto Searing Gorge,68.9,53.3
.talk 47269
..accept 27956
step
goto 68.6,53.4
.talk 47266
..turnin 28512
..accept 27963
step
goto 68.5,53.3
.talk 47267
..accept 27960
step
goto 62.2,61.3
.from Gravius Grimesilt##47270 |tip He walks around this area, so you may have to search for him.
.get Dark Iron Memo |q 27963/1
.from Dark Geologist##5839, Dark Iron Watchman##8637 |q 27960/1
.from Tempered War Golem##5853+
.get 15 Tempered Flywheel |q 27956/1
step
goto 68.5,53.3
.talk 47267
..turnin 27960
..accept 27961
..accept 27962
step
goto 68.6,53.4
.talk 47266
..turnin 27963
..accept 27964
step
goto 68.9,53.3
.talk 47269
..turnin 27956
..accept 27957 |instant
step
goto 68.7,53.3
.talk 47268
..accept 27958
step
goto 58.1,62.4
.from Glassweb Spider##5856
.' Lunk will appear next to you
.talk 47280
..accept 27959
step
goto 58.1,62.4
.from Glassweb Spider##5856+
.' Let Lunk ride 7 spiders |q 27959/1
.clicknpc Lunk##47299
.get 14 Glassweb Venom |q 27958/1
.clicknpc Ash Chicken##47278+
.get 8 Ash Chicken |q 27961/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27959
step
goto 65.1,75.9 |n
.' The path up to Margol the Rager starts here |goto 65.1,75.9,0.5 |noway |c
step
goto 71.2,73.5
.from Margol the Rager##5833
.get Margol's Gigantic Horn |q 27962/1
step
goto 68.5,53.3
.talk 47267
..turnin 27961
..turnin 27962
step
goto 68.7,53.3
.talk 47268
..turnin 27958
step
goto 63.4,38.5 |n
.' Follow the path down |goto 63.4,38.5,0.5 |noway |c
step
goto 54.2,44.4
.from Dark Iron Footman##47275+, Dark Iron Excavator##47276+
.' Eventually, Dig-Boss Dinwhisker will spawn |tip You will see him yell in your chat window, asking what in hell's name is going on out here.  He spawns in the location where this step's arrow points to.
.from Dig-Boss Dinwhisker##47271
.click Dark Ember##5746
.get Dark Ember |q 27964/1
step
goto 58.2,40.6 |n
.' Follow the path up |goto 58.2,40.6,0.5 |noway |c
step
goto 68.6,53.4
.talk 47266
..turnin 27964
..accept 27965
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 34.8,30.6
.talk 3305
.fpath Thorium Point
step
goto 37.7,26.6
.talk 14634
..accept 27980
step
goto 38.1,27.0
.talk 14625
..turnin 27965
..accept 28099
step
goto 38.5,27.9
.talk 14627
..accept 27976
..accept 27981
step
goto 37.2,28.7
.talk 14626
..accept 27977
step
goto 41.0,39.6
.from Dark Iron Steamsmith##5840
.' Lunk will appear next to you
.talk 47332
..accept 27983
step
goto 41.6,41.4
.from Dark Iron Steamsmith##5840+
.' Let Lunk put 7 Dark Iron Steamsmiths to sleep |q 27983/1
.get Smithing Tuyere |q 27977/1
.get Lookout's Spyglass |q 27977/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27983
step
goto 42.6,36.6
.from Rasha'krak##47553 |tip He's a magma elemental that patrols the lava pools around this area.  You may need to search for him.
.get Rasha'krak's Bracers of Binding |q 28099/1
.' Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
.get 10 Filled Furnace Flask |q 27981/1
.' You can also find Rasha'krak, along with more elementals at the following locations:
.' At [Searing Gorge,39.3,40.5]
.' At [Searing Gorge,31.6,43.1]
|modelnpc Inferno Elemental##5852
|modelnpc Blazing Elemental##5850
|modelnpc Magma Elemental##5855
step
goto 29.8,42.0
.kill 9 Greater Lava Spider##5858+ |q 27980/1
step
goto 32.3,46.6
.kill 12 Heavy War Golem##5854+ |q 27976/1
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 38.5,27.9
.talk 14627
..turnin 27976
..turnin 27981
step
goto 36.8,28.2
.talk 14626
..turnin 27977
..accept 27982
step
goto 38.5,27.9
.talk 14627
..accept 27979
step
goto 37.7,26.6
.talk 14634
..turnin 27980
step
goto 38.1,27.0
.' Go to the top of the tower
.talk 14625
..turnin 28099
step
goto 24.3,33.0 |n
.' Follow the path up |goto 24.3,33.0,0.5 |noway |c
step
goto 24.6,26.3
.from Minister Finister##47311
.collect Finister's Spherule##62824 |q 27979
step
goto 29.5,26.4
.talk 8436
..accept 27984
step
goto 29.5,26.4
.talk 8436
..' Tell him you wish to hear his tale
.' Listen to Zamael's Story |q 27984/1
step
goto 29.5,26.4
.talk 8436
..turnin 27984
..accept 27985
step
goto 23.1,35.4
.click Twilight's Hammer Crate##10106+
.get Prayer to Elune |q 27985/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27985
step
goto 17.6,42.4
.' Follow the path immediately to the left after you enter the cave
.from Minister Kiyuubi##47309
.collect Kiyuubi's Spherule##62825 |q 27979
step
goto 14.6,36.2
.from Minister Letherio##47310
.collect 1 Letherio's Spherule##62823 |n
.' Use Letherio's Spherule |use Letherio's Spherule##62823
.get Twilight Tripetricine |q 27979/1
step
'All around inside this cave:
.from Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
.get 20 Twilight Collar |q 27982/1
step
goto 38.5,27.9
.talk 14627
..turnin 27979
..accept 27986
step
goto 38.7,28.7
.talk 14624
..turnin 27982
step
goto 39.4,66.3
.talk 47942
.home Iron Summit
step
goto 39.4,67.9
.talk 47393
..turnin 27986
..accept 28028
..accept 28029
..accept 28030
step
goto 38.8,68.9
.talk 47440
..accept 28032
step
goto 35.7,60.7
.click Sentry Brazier##524
.' Set the Southwestern Tower Ablaze |q 28029/2
step
goto 33.3,54.5
.click Sentry Brazier##524
.' Set the Western Tower Ablaze |q 28029/1
step
goto 33.3,66.2
.from Incendosaur##9318+
.get 6 Fire-Gizzard |q 28032/1
step
goto 44.0,60.9
.click Sentry Brazier##524
.' Set the Southeastern Tower Ablaze |q 28029/3
step
goto 52.5,58.0 |n
.' Cross the hanging wooden bridge |goto 52.5,58.0,0.5 |noway |c
step
goto 50.1,54.7
.click Sentry Brazier##524
.' Set the Eastern Tower Ablaze |q 28029/4
step
goto 51.4,55.6 |n
.' Cross the hanging wooden bridge |goto 51.4,55.6,0.5 |noway |c
step
goto 49.6,63.0
.kill 9 Dark Iron Marksman##8338+ |q 28028/1
.click Dark Iron Bullet##1868+
.get 200 Dark Iron Bullet |q 28030/1
step
goto 45.0,67.3 |n
.' Follow the path up |goto 45.0,67.3,0.5 |noway |c
step
goto 38.8,68.9
.talk 47440
..turnin 28032
step
goto 39.4,67.9
.talk 47393
..turnin 28028
..turnin 28029
..turnin 28030
..accept 28033
step
goto 39.8,67.9
.talk 47429
..turnin 28033
..accept 28034
step
goto 40.6,68.1
.talk 47434
..' Ask them if they care to join your dance
.' Build up a three-dwarf conga line |q 28034/1
step
goto 39.4,67.9
.talk 47393
..turnin 28034
..accept 28035
step
goto 38.1,27.0
.talk 14625
..turnin 28035
..accept 28052
step
goto 37.9,30.9
.talk 2941
..' Tell her you're ready to take the flight into the Cauldron
.' Use the Shoot ability on your hotbar on the dwarves that start shooting at you
.' Secure entrance into the Slag Pit |q 28052/1
step
goto 40.8,51.7
.talk 47393
..turnin 28052
..accept 28054
..accept 28055
..accept 28056
step
goto 41.3,25.4
.' Follow the path in The Slag Pit
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
.click Altar of Suntara##328
..' Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion
.kill Obsidion##8400 |q 28056/1
.kill Lathoric the Black##8391 |q 28056/2
step
goto 42.1,25.1
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.' Free or kill 12 Slave Workers |q 28055/1
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+ |q 28054/1
step
goto 43.8,28.7
.talk 14628
..turnin 28054
..turnin 28055
..turnin 28056
..accept 28057
step
ding 49
step
goto 46.2,27.1
.click Dark Iron Pillow##5911+ |tip A big group of dwarves runs up and down the hallway once you steal some pillows. You can kill them easily, though, they have low hit points.
.get 16 Dark Iron Pillow |q 28057/1
step
goto 42.2,34.5
.talk 14626
..turnin 28057
..accept 28060
step
goto 42.3,34.6
.talk 14627
..' Tell him "Let's take out Maltorius and Arkkus!"
.kill Overseer Maltorius##14621 |q 28060/1
.kill Twilight-Lord Arkkus##47460 |q 28060/2
step
goto 47.7,42.0 |n
.' Jump off the bridge to the path below
|confirm
step
goto 50.0,39.0
.talk 14625
..turnin 28060
..accept 28062
..accept 28061
..accept 28515
step
goto 48.0,27.4
.kill 6 Searing Flamewraith##47463+ |q 28061/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28061
step
goto 42.7,30.3
.from Archduke Calcinder##47462
.' Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925 |tip You will see a message pop up when he is at about half health.
.' Banish Archduke Calcinder |q 28062/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28062
..accept 28064
step
goto 39.0,26.0
.talk 47429
..accept 28053 |instant
step
goto 38.1,27.0
.talk 14625
..turnin 28064
step
label burning
goto Burning Steppes 17.5,51.6
.talk 48559
..accept 28418
step
goto 17.0,51.3
.talk 47779
..turnin 28515 |only if havequest(28515)
..accept 28417
step
goto 17.5,60.5
.clicknpc Fettered Green Whelpling##47820
.' Free a Green Whelpling |q 28417/2
step
goto 19.2,61.6
.clicknpc Fettered Blue Whelpling##47821
.' Free a Blue Whelpling |q 28417/3
step
goto 17.8,61.4 |n
.' Follow the path up |goto 17.8,61.4,0.5 |noway |c
step
goto 15.1,69.7
.clicknpc Fettered Bronze Whelpling##47822
.' Free a Bronze Whelpling |q 28417/4
step
goto 14.2,66.8
.clicknpc Fettered Red Whelpling##47814
.' Free a Red Whelpling |q 28417/1
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28418/1
.kill 5 Flamescale Broodling##7049+ |q 28418/2
step
goto 17.5,51.6
.talk 48559
..turnin 28418
..accept 28419
..accept 28420
..accept 28421
step
goto 17.0,51.3
.talk 47779
..turnin 28417
step
goto 15.5,45.0
.click Obsidian-Flecked Mud##20+
.get 9 Obsidian-Flecked Mud |q 28421/1
step
goto 11.8,47.7
.from Ember Worg##9690+
.get 11 Ember Worg Hide |q 28420/1
.from Venomtip Scorpid##9691+
.get 5 Razor-Sharp Scorpid Barb |q 28419/1
step
goto 17.5,51.6
.talk 48559
..turnin 28419
..turnin 28420
..turnin 28421
..accept 28422
step
goto 8.4,35.8
.talk 14437
..turnin 28422
..accept 28423
..accept 28424
step
goto 9.9,29.7
.kill Ner'gosh the Shadow##47805+ |q 28424/1
step
goto 5.4,32.0
.click Slumber Sand##6483
.get Slumber Sand |q 28423/2
step
goto 5.2,30.9
.click Fel Slider Cider##334
.get Fel Slider Cider |q 28423/3
step
goto 6.8,31.8
.from Blackrock Warlock##7028+
.get Clear Glass Orb |q 28423/1
step
goto 8.4,35.8
.talk 14437
..turnin 28423
..turnin 28424
..accept 28425
step
goto 17.5,51.6
.talk 48559
..turnin 28425
..accept 28426
step
goto 31.5,52.1
.from Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+ |q 28426/1
step
goto 46.8,44.1
.talk 48033
..turnin 28426
..accept 28225
..accept 28226
step
goto 46.1,41.8
.talk 48321
.fpath Chiselgrip
step
goto 44.5,44.4
.talk 48568
..accept 28427
step
goto 45.5,46.4
.talk 48001
..turnin 28427
.' He will offer you one of the following four quests:
..accept 28428 |or
..accept 28429 |or
..accept 28430 |or
..accept 28431 |or
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
|confirm
only Orc
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
|confirm
only Troll
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 1 Hide
..' Take 3 Handfuls of Mud
..' Take 4 Spools of Thread
|confirm
only Goblin
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
|confirm
only Scourge
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
|confirm
only Tauren
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
|confirm
only BloodElf
step
goto 45.5,46.4
.talk 48001
..' Tell him you brought him some hides, mud, and thread
.' Create the Perfect Costume |q 28428/1
.' Create the Perfect Costume |q 28429/1
.' Create the Perfect Costume |q 28430/1
.' Create the Perfect Costume |q 28431/1
step
goto 44.5,44.4
.talk 48568
..turnin 28428
..turnin 28429
..turnin 28430
..turnin 28431
step
'From this point you will need to turn in items to Lokhtos Darkbargainer. He is found in Blackrock Depths.
'Click here to for the path to him. |next "turnin" |confirm
step
label turnin
'Go through this Door |goto Blackrock Depths 37.7,66.0,0.5 |c
step
'Enter this doorway |goto Blackrock Depths 40.8,66.8,0.5 |c
step
'Click the Shadowforge lock to open the door upstairs |goto Blackrock Depths/2 41.4,88.3,0.5 |c
step
'Go up the stairs and follow this path to the left |goto Blackrock Depths/2 45.9,86.2,0.5 |c
step
'Go down these stairs and to the right |goto Blackrock Depths/2 36.5,77.2,0.5 |c
step
'Enter the Grim Guzzler and speak with Lokhtos Darkbargainer |goto Blackrock Depths/2 50.3,58.4,0.5 |c
step
goto 50.3,58.5
.talk 12944 |tip All of these quests are repeatable and all of the items can be farmed in Molten Core. |n
..accept 6642 |tip Dark Iron Ore can be mined inside Molten Core, requires 175 mining. |n
..accept 6643 |tip Fiery Cores are dropped by the Fire Elementals in Molten Core, also by Molten Destroyers. |n
..accept 6644 |tip Lava Cores are dropped by the Earthen Elementals in Molten Core, also by the Molten Giants. |n
..accept 6645 |tip Core Leather can be skinned from the various Core Hounds within Molten Core. |n
..accept 6646 |tip These are dropped only by Molten Destroyers, but they can be mined from Dark Iron Deposits. |n
'Earn Exalted status with the Thorium Brotherhood |condition rep('Thorium Brotherhood')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Thorium Brotherhood!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Sporeggar Faction",[[
achieveid 900
step
label	"back up"
goto Zangarmarsh,19.1,64.2
.talk 17923
.accept 9739
.accept 9743
.' turn in these two quests 4 times to go from unfriend to friendly.
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.get 6 Bog Lord Tendril##24291 |q  9743/1
.click Mature Spore Sac##6911+
.get 10 Mature Spore Sac##24290 |q 9739/1 |tip They are on the ground throughout the area.
|only if rep('Sporeggar')<=Neutral
step
goto Zangarmarsh,19.1,64.2
.talk 17923
.turnin 9739 |repeatable
..turnin 9743 |repeatable
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291+ |n
.click Mature Spore Sac##6911+
.collect 10 Mature Spore Sac##24290 |n |tip They are on the ground throughout the area.
.' Turn in 10 Spore Sacs or 6 Bog Lord Tendrils at a time here: [19.0,63.3]
.' Reach Friendly with Sporeggar |condition rep('Sporeggar')>=Friendly
step
goto Zangarmarsh,19.1,64.2
.talk 17923
..accept 9919
step
goto 19.7,52.0
.talk 17924
..turnin 9919
step
.' Once you have reached friendly, you can farm the quest Now That We're Friends... and Bring Me A Shrubbery!  Grinding mobs at The Spawning Glen no longer will give you reputation.
.' Collecting 265 Sanguine Hibiscus from The Underbog will give you enough
.' Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
.' or
.' Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
step
label	"hibiscus_1"
goto The Underbog 31.6,65.4
.talk 54674
..accept 29691
..accept 29567
step
label	"hibiscus"
.' You can find the Sanguine Hibiscus on the ground scattered through out the instance.
.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
.collect Sanguine Hibiscus##24246 |n
.' You need 5 Sanguine Hibiscus for 750 Reputation.
.' 40 Sanguine Hibiscus = 6,000 Reputation.
.' 80 Sanguine Hibiscus = 12,000 Reputation.
.' Click when you are ready to turn in |confirm always
step
goto The Underbog 25.7,44.1
.from The Black Stalker##17882+
.get Brain of the Black Stalker |q 29567/1
step
goto The Underbog 31.6,65.4
.talk 54674
..turnin 29691
..turnin 29567
step
label	"hibiscus_r"
goto The Underbog 31.6,65.4
.talk 54674
.accept 9714 |instant |repeatable |or
.' or
.' Click here to go farming for more _Sanguine Hibiscus_ |confirm always |next "hibiscus" |or
.' or
.' Click here if you would like to farm Naga for more reputation |confirm always |next "grind_1" |or
step
goto 19.5,50.0
.talk 17856
.turnin 9715
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9715)
step
goto 19.5,50.0
.talk 17856
.turnin 9714
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9714)
step
label	"grind_1"
goto Zangarmarsh 19.5,50.0
.talk 17856
.accept 9726
|only if rep('Sporeggar')>=Friendly
|next "grind_2" |only if not completedq(9726)
|next |only if default
step
label	"grind_r"
goto 19.5,50.0
.talk 17856
..accept 9727 |repeatable |next "grind"|or
.' or
.' Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1" |or
|only if rep('Sporeggar')>=Friendly
step
label	"grind_2"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
|only if havequest(9726)
|next "grind_3"
step
label	"grind"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9727/1 |repeatable
.kill 6 Bloodscale Enchantress##18088+ |q 9727/2 |repeatable
|only if havequest(9727)
|next "grind_4"
step
label	"grind_3"
goto 19.5,50.0
.talk 17856
.turnin 9726
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
step
label	"grind_4"
goto 19.5,50.0
.talk 17856
.turnin 9727
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
step
label	"exalted"
.' Congratulations, you are now exalted with Sporeggar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Mag'har Faction",[[
description This Guide will help you reach Exalted status with the Mag'har Faction
author support@zygorguides.com
achieveid 901
step
goto Hellfire Peninsula,55,36
.talk 3230
.accept 9400
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
step
goto 33.6,43.5
.' Click the Fel Orc Corpse |tip It's a corpse laying halfway up the hill.
..turnin 9400
..accept 9401
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot|goto 32,27.8,0.5|c |q 9410
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
goto 55,36
.talk 3230
..turnin 9406
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag##17130+ |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc##17128+ |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof##18205+ |q 9789/1
.from Wild Elekk##18334
.collect 3 Pair of Ivory Tusks##25463 |q 9914 |future
.from Dust Howlers##17158
.collect Howling Wind##24504 |n
.' Use the Howling Wind in your bags |use Howling Wind##24504
..accept 9861
.' You can find more Clefthoofs, Elekks, and Dust Howlers at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 57.2,35.2
.talk 18808
.fpath Garadar
step
goto 57.1,34.9
.talk 18302
..accept 9944
step
goto 56.6,34.6
.talk 18913
.home Garadar
step
goto 55.4,37.4
.talk 18090
..turnin 9797
step
goto 55.5,37.6
.talk 18106
..accept 9888
step
goto 55.8,38
.talk 18407
..accept 10479
.click the Garadar Bulletin Board
..accept 9935
..accept 9939
step
goto 55,39
.talk 18234
..accept 9870
step
goto 54.7,39.7
.talk 18066
..accept 9863
.talk 18067
..accept 9864
.talk 18068
..accept 9867
step
goto 51.9,34.8
.talk 18335
..accept 9913
step
goto 60.5,22.4
.talk 18074
..turnin 9861
..accept 9862
.talk 18072
..turnin 9870
.talk 18073
..accept 9800
..accept 9815
.talk 18071
..accept 9818
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9818
..accept 9819
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer##17131+ |q 9858/1
.click the Dung piles |tip The Dung piles looks like green piles of swirled poop.
.get 8 Digested Caracoli |q 9800/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull##17132+ |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413 |q 9939/1 |tip Inside the cave at the top of the hill.
step
goto 48.3,21.5
.from 5 Warmaul Shaman##18064+ |q 9939/2
.from 5 Warmaul Reaver##17138+ |q 9939/3
.get 10 Obsidian Warbeads |q 10479/1
step
goto 32.4,36.1
.talk 18229
..turnin 9864
..accept 9865
.talk 18414
..turnin 9944
..accept 9945
.talk 18415
..accept 9948
step
goto 29.2,31.6 |n
.' The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here |goto 29.2,31.6,0.5 |noway |c |q 9948
step
goto 23.4,29.2
.kill 8 Warmaul Brute##18065+ |q 9945/1
.kill 8 Warmaul Warlock##18037+ |q 9945/2
.collect Warmaul Prison Key##25604 |n
.click the yellow cages around this area
.' Free 5 Mag'har Prisoners |q 9948/1
step
goto 32.4,36.1
.talk 18414
..turnin 9945
.talk 18415
..turnin 9948
step
goto 41.5,40.9
.from Muck Spawn##17154+
.get 5 Muck-ridden Core |q 9815/1
step
goto 32,39.1
.kill 20 Murkblood Scavenger##18207+ |q 9865/1
.kill 10 Murkblood Raider##18203+ |q 9865/2
.kill 5 Murkblood Putrifier##18202+ |q 9862/1
.get 10 Murkblood Idol |q 9863/1
step
goto 30.9,42.3
.from Ortor of Murkblood##18204 |tip He's standing inside the big building here.
.get Head of Ortor of Murkblood |q 9867/1
step
goto 32.4,36.1
.talk 18229
..turnin 9865
..accept 9866
step
goto 30.8,58.1
.talk 18276
..accept 9900
..accept 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9913
..accept 9882
step
goto 31.8,56.8
.talk 18333
..accept 9914
..turnin 9914
step
goto 33.4,62.4
.click the Oshu'gun Crystal Fragments on the ground. |tip They are the green and white crystals on the ground.
.from Vir'aani Raider##17149
.get 10 Oshu'gun Crystal Fragment |q 9882/1
step
goto 30.6,67.5
.kill 8 Voidspawn##17981+ |q 9925/1
step
goto 42.4,73.5
.kill Gava'xi##18298 |q 9900/1 |tip He spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
step
goto 48.4,61.5
.kill 12 Ravenous Windroc##18220+ |q 9855/1
step
goto 30.8,58.1
.talk 18276
..turnin 9900
..turnin 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9882
step
goto 61.7,67.1
.talk 19035
..accept 10109
step
goto 65.4,70.8
.kill 10 Tortured Earth Spirit##17156+ |q 9819/1
step
goto 69.4,56.9
.from Dust Howler##17158+
.get 3 Air Elemental Gas |q 10109/1
.' You can find more Dust Howlers at [65.5,46.9]
step
goto 61.7,67.1
.talk 19035
..turnin 10109
step
goto Terokkar Forest,19.8,60.9
.talk 18273
..turnin 9888
..accept 9889
step
goto 20,63.1
.kill 10 Boulderfist Invader##18260+ |q 9889/1
step
goto 20,63.1
.' Fight Unkor the Ruthless until he submits |q 9889/2
.talk 18262
..turnin 9889
..accept 9890
step
goto 19.8,60.9
.talk 18273
..turnin 9890
..accept 9891
step
goto Nagrand,55.5,37.6
.talk 18106
..turnin 9891
..accept 9906
step
goto 55.8,38
.talk 18407
..turnin 10479
..turnin 9939
step
goto 55.5,37.6
.talk 18300
..accept 9910
step
goto 54.7,39.7
.talk 18066
..turnin 9863
.talk 18067
..turnin 9866
.talk 18068
..turnin 9867
step
goto 61.8,24.4
.talk 18099
..turnin 9819
..accept 9821 |tip He may not be in this spot, he wanders around the Throne of Elements area.
step
goto 60.5,22.4
.talk 18073
..turnin 9800
..accept 9804
..turnin 9815
.talk 18074
..turnin 9862
step
goto 59.7,27.3
.kill 8 Lake Spirit##17153+ |q 9804/1
step
goto 60.5,22.4
.talk 18073
..turnin 9804
..accept 9805
step
goto 52,20.2
.from Enraged Crusher##18062+ |tip You can find them all along this cliffside.
.get 10 Enraged Crusher Core |q 9821/1
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9821
..accept 9849
step
goto 71.6,40.5
.talk 18218
..turnin 9858
.talk 18180
..turnin 9850
.talk 18200
..turnin 9855
step
goto 70.8,51.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Western Hut |q 9805/2
step
goto 72.4,50.3
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Large Hut |q 9805/1
step
goto 72.8,54.7
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Eastern Hut |q 9805/4
step
goto 71.2,53.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Southern Hut |q 9805/3
step
goto 60.5,22.4
.talk 18073
..turnin 9805
..accept 9810
step
goto 72.1,69.9
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
.' Place the First Battle Standard |q 9910/1
step
goto 74.7,69.8
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip Up the hill on the middle ledge, overlooking the camp.
.' Place the Second Battle Standard |q 9910/2
step
goto 75.8,68.4
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip All the way up the hill.
.' Place the Third Battle Standard |q 9910/3
step
goto 72.9,69.8
.kill 8 Boulderfist Mystic##17135+ |q 9906/1
.kill 8 Boulderfist Crusher##17134+ |q 9906/2
step
goto 55.5,37.6
.talk 18106
..turnin 9906
..accept 9907
step
goto 55.5,37.6
.talk 18300
..turnin 9910
..accept 9916
step
goto 40.8,31.5
.kill 10 Boulderfist Warrior##17136+ |q 9907/1
.kill 10 Boulderfist Mage##17137+ |q 9907/2
.click the Bleeding Hollow Supply Crates
.get 10 Bleeding Hollow Supply Crate |q 9916/1 |tip They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
step
goto 33.8,48.9
.kill 8 Lake Surger##17155+ |q 9810/2
step
goto 33.1,50.8
.kill Watoosun's Polluted Essence##18145 |q 9810/1 |tip He's underwater.
step
goto 27.9,77.6
.' Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
.' Kill the Minions of Gurok that spawn from their corpses
.kill 30 Minion of Gurok##18181+ |q 9849/1
step
goto 55.5,37.6
.talk 18300
..turnin 9916
step
goto 55.5,37.6
.talk 18106
..turnin 9907
..accept 10107
step
goto 73.8,68.1 |n
.' The path up to Lantresor of the Blade starts here |goto 73.8,68.1,0.5 |noway |c |q 10107
step
goto 73.8,62.6
.talk 18261
.' Listen to his story
.' Hear the story of the Blademaster |q 10107/1
..turnin 10107
..accept 9928
..accept 9927
step
goto 71.1,82.4
.kill Giselda the Crone##18391 |q 9935/1 |tip Inside the big circle building, in the middle.
step
goto 71.4,79.4
.click the Kil'sorrow Armaments |tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
.' Kill 10 Kil'sorrow Agents |q 9935/2
.' Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 55.8,38
.talk 18407
..turnin 9935
step
goto 61.8,24.4
.talk 18099
..turnin 9849
step
goto 60.5,22.4
.talk 18073
..turnin 9810
step
goto 46.5,24.3
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.' Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658 |tip It looks like a big burning bonfire.
.' Defend the 2 ogres that spawn until they finish placing corpses around
.' Plant the Kil'sorrow Bodies |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9934
step
goto 55.5,37.6
.talk 18063
..turnin 9934
step
goto Nagrand,55.8,38.0
.talk 18407
..accept 9937
step
goto 55.2,36.1
.talk 18301
..accept 9983
step
.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
.' Click here to proceed |confirm always
step
map Nagrand
path follow loose;loop;ants curved
path	46.7,63.7	40.8,63.5	37.4,62.1
path	34.0,62.7	31.7,65.4	30.5,71.3
path	32.0,75.9	35.5,78.5	39.8,78.7
path	42.4,75.5	46.0,70.2
.' Follow the path around this are to look for _Durn the Hungerer_
.kill Durn the Hungerer |q 9937/1
step
goto 27.3,43.1
.talk 18417
..turnin 9983
..accept 9991 |tip You will fly around on a drake to view The Twilight Ridge.
..turnin 9991
..accept 9999
step
goto 24.5,37.9
.kill 2 Felguard Legionnaire |q 9999/1
.kill 3 Mo'arg Engineer |q 9999/2
.kill 8 Gan'arg Tinkerer |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto Nagrand,17.5,50.3
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
.' You can also find the Mater Planner around [23.3,35.4]
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto 32.3,36.2
.talk 18414
..accept 9946
step
goto Nagrand,25.8,13.8
.' Follow the path up and around
.from Cho'war the Pillager##18423
.get Head of Cho'war |q 9946/1
step
goto 32.3,36.2
.talk 18414
..turnin 9946
step
goto Nagrand,55.8,38.0
.talk 18407
..turnin 9937
step
goto Shattrath City,77.3,34.9
.talk 18584
.' Tell him "Altruis sent me. He said that you could help me." |tip He will immediately start attacking you!
.' Persuad Sal'salabim |q 10004/1
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.5
.talk 18585
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.9,91.1
.talk 18586
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.2,58.1
.talk 18588
.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
.' Collect Floon's Debt |q 10009/3
step
goto 77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto Nagrand,25.0,36.1
.from "Demos\,\ Overseer of Hate##18535"
.collect Fel Cannon Activator##25770 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from "Xirkos\,\ Overseer of Fear##18536"
.collect Fel Cannon Activator##25771 |n
.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
.' Destoy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
.' Once you have completed the above quests, you will have to grind your way to exalted.
.' Click to proceed. |confirm always
step
label	"bead_grind"
goto Nagrand,48.9,22.7
.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
..collect Obsidian Warbeads##25433 |n
.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
.' Collect beads in sets of 10.
.' Click here when you're ready to turn in. |confirm always
step
label	"turn_in"
goto Nagrand,55.8,37.9
.talk 18407
..accept 10478 |n
.' Click here to go back to farming. |next "bead_grind" |confirm |only if rep("The Mag'har")<=Revered
.' Earn Exalted status with The Mag'har |condition rep("The Mag'har")==Exalted |next "exalted"
step
label exalted
.' Congratulations, you are now Exalted with The Mag'har! |condition rep("The Mag'har")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
step
.' You will need to farm Cenarion Circle and Cenarion Expedition reputation.
.' Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to honoroed.
.' You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
.' You can also grind reputation from Heroic Coilfang Instances up to exalted if you would rather do that.
|confirm always
step
goto Hellfire Peninsula,47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.collect Eroded Leather Case##23338 |n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 15.7,52
.talk 16991
..turnin 9373
..accept 9372
step
goto 24.9,54.3
.from Hulking Helboar##16880+
.get 6 Helboar Blood Sample |q 9372/1
step
goto 15.7,52
.talk 16991
..turnin 9372
..accept 10255
step
goto 15.7,52
.talk 16888
..accept 10159
step
goto 25,54
.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
.from Dreadtusk##16992
.' Administer the Antidote |q 10255/1
step
goto 15.7,52
.talk 16991
..turnin 10255
step
goto 10.1,53.2
.kill 8 Thornfang Ravager##19349+ |q 10159/1
.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
step
goto Hellfire Peninsula,15.7,52
.talk 16888
..turnin 10159
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus##19188+ |q 10132/1
.collect Crimson Crystal Shard##29476 |n
.' Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
..accept 10134
step
goto 15.6,52.0
.talk 19293
..turnin 10132
..turnin 10134
..accept 10349
step
goto 16.0,51.6
.talk 19294
..turnin 10349
..accept 10351
step
goto 13.6,39.1
.' Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478 |tip It's a bright green symbol on the ground.
.from Goliathon##19305
.' Revitalize Fallen Sky Ridge |q 10351/1
step
goto 16.0,51.6
.talk 19294
..turnin 10351
step
goto Zangarmarsh,80.4,64.2
.talk 17909
..accept 9802
.talk 17956
..accept 9747
step
goto 79.1,65.3
.talk 17858
..accept 9728
step
goto 78.5,63.1
.talk 17834
..accept 9895
step
goto 78.4,62
.talk 17841
..turnin 9912
..accept 9716
step
goto 80.1,73.3
'Kill all mobs in this area
.get 10 Unidentified Plant Parts |q 9802/1
step
goto 81,72.2
.kill Boglash##18281 |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
step
goto 80.4,64.2
.talk 17909
..turnin 9802
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 85.3,90.9
.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
step
goto 83.1,85.2
.kill 6 Umbrafen Oracle##18077+ |q 9747/2
.kill 8 Umbrafen Seer##18079+ |q 9747/3
.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
step
goto 83.4,85.5
.talk 17969
..accept 9752
.' Escort Kayra Longmane to safety |q 9752/1
step
goto 80.4,64.2
.talk 17956
..turnin 9747
..accept 9788
.talk 17909
..accept 10096
step
goto 80.4,64.7
.talk 18070
..accept 9894
step
goto 78.4,62
.talk 17841
..turnin 9752
step
goto 74.7,91.6|n
.' The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6,0.3 |noway |c |q 9788
step
'Go southwest inside the cave to 70.5,97.9 |goto 70.5,97.9
.click Ikeyen's Belongings##318
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to 72.5,94.0 |goto 72.5,94.0
.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 75.7,90.2
.kill 10 Marsh Lurker##18136+ |q 10096/2
.kill 10 Marsh Dredger##18137+ |q 10096/1
step
goto 70.9,82.1
.' Stand here to Investigate Umbrafen Lake |q 9716/1
.from Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
.get 10 Unidentified Plant Parts|q 9802/1
.get 30 Naga Claws|q 9728/1
.' You can find more Naga at:
.' [73.4,82.3]
.' [72.2,75.8]
step
goto 80.4,64.7
.talk 18070
..turnin 9894
step
goto 80.4,64.2
.talk 17956
..turnin 9788
.talk 17909
..turnin 10096
.' Turn in any stacks of 10 Unidentified Plant Parts you have
.' If you found an Uncatalogued Species, turn that in also
step
goto 79.1,65.3
.talk 17858
..turnin 9728
step
goto 78.5,63.1
.talk 17834
..accept 9957
step
goto 78.4,62
.talk 17841
..turnin 9716
..accept 9718
step
'Use your Stormcrow Amulet |use Stormcrow Amulet##25465
.' Watch yourself fly as a crow.
.' Explore the Lakes of Zangarmarsh |q 9718/1
step
goto 78.4,62
.talk 17841
..turnin 9718
..accept 9720
step
goto 80.4,64.7
.talk 18070
..accept 9785
step
goto 78.1,63.8
.talk 17901
.' Get the Mark of War |q 9785/2
step
goto 81.1,63.9
.talk 17900
.' Get the Mark of Lore |q 9785/1
step
goto 80.4,64.7
.talk 18070
..turnin 9785
step
goto 70.6,80.3
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/1 |tip The pump controls look like a little box with some levers on it
step
goto 63.1,64.1
.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
.' Disable the Lagoon Pump Controls |q 9720/4 |tip The pump controls look like a little box with some levers on it
step
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
.' Disable the Serpent Lake Controls |q 9720/3
.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
.' Get a Drain Schematics
.' Click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 50.4,40.8
.' Swim straight down into the big bubbling pipe opening below until you discover the drain
.' Locate the drain in Serpent Lake |q 9731/1
step
goto 25.4,42.9
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/2 |tip The pump controls look like a little box with some levers on it
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto 78.5,63.1
.talk 17834
..accept 9957
step
goto Hellfire Peninsula,16,52.2
.talk 16885
..turnin 9724
..accept 9732
step
goto Zangarmarsh,78.4,62
.talk 17841
.turnin 9732
..accept 29566
..accept 29616
step
goto The Slave Pens 18.9,11.3
.talk 54667
..turnin 29566
step
goto The Slave Pens 18.9,11.3
.talk 54667
..accept 29563
..accept 29565
step
goto 17.9,12.1
.talk 54668
..accept 29564
step
goto 25.0,51.2 |n
.' Follow the path and go straight through this main room |goto 25.0,51.2,1 |noway |c |q 29565
step
goto 40.2,35.5 |n
.' Follow this hallway |goto 40.2,35.5,0.5 |noway |c |q 29565
step
goto 48.8,24.3
.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
.kill Mennu the Betrayer##17941 |q 29564/1
step
goto 48.9,83.4
.talk 17890
.' Discover Weeder Greenthumb |q 29563/2
step
goto 57.3,45.4
.from Rokmar the Crackler##17991+
.get The Invader's Claw |q 29565/1
step
goto 74.9,51.4 |n
.' Follow this path up |goto 74.9,51.4,1 |noway |c |q 29565
step
goto 95.7,66.2
.talk 17893
.' Discover Naturalist Bite |q 29563/2
step
goto 95.7,66.2
.' Be ready to fight a couple mobs
.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
.talk 17893
.' Tell him
.' <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite |q 29565
step
goto The Slave Pens 86.2,67.9
.from Quagmirran##17942+
.get The Slave Master's Eye |q 29565/2
step
goto The Slave Pens 17.9,12.2
.talk 54668
..turnin 29564
step
goto 18.8,11.3
.talk 54667
..turnin 29563
step
goto The Underbog 29.5,64.7
.talk 54678
..accept 29568
step
goto 30.9,65.3
.talk 54675
..accept 29570
step
goto 31.5,65.5
.talk 54674
..accept 29567
..accept 29691
step
'As you go through the dungeon, look for Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.collect 5 Sanguine Hibiscus##24246 |n
|confirm
step
goto 42.5,62.0 |n
.' Keep following this straight path |goto 42.5,62.0,0.5 |noway |c
step
goto 57.4,82.9 |n
.' Follow this path up and around |goto 57.4,82.9,0.5 |noway |c
step
goto 70.0,90.0
.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
.' Keep moving him so that doesn't happen.
.kill Hungarfen##17770 |q 29568/1
step
goto 77.2,43.8
.' Follow the path around until you get here
.from Ghaz'an##18105
|confirm
step
goto 78.9,24.5 |n
.' Jump down in the water here  |goto 78.9,24.5,0.5 |noway |c
step
goto 79.6,15.2 |n
.' Swim across the water and jump down here |goto 79.6,15.2,0.5 |noway |c
step
goto 67.4,21.3
.talk 17885
.' Discover Earthbinder Rayge |q 29570/1
step
goto 67.0,14.0 |n
.' Follow this path down and to the right |goto 67.0,14.0,0.5 |noway |c
step
goto 41.5,25.4
.from Swamplord Musel'ek##17826, Claw##17827
.' Talk to Windcaller Claw
.' Discover Windcaller Claw |q 29570/2
step
goto The Underbog 25.9,45.5
.from The Black Stalker##17882
.get Black Stalker's Brain |q 29567/1
step
'Make sure you have picked up 5 Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.get 5 Sanguine Hibiscus##24246 |q 29691/1
step
goto The Underbog 29.5,64.5
.talk 54678
..turnin 29568
step
goto 30.8,65.3
.talk 54675
..turnin 29570
step
goto 31.6,65.5
.talk 54674
..turnin 29567
..turnin 29691
step
goto The Steamvault 17.9,27.3
.talk 54848
..turnin 29616
..accept 29613
step
goto 17.5,25.9
.talk 54849
..accept 29614
step
goto 18.9,27.8
.talk 54851
..accept 29615
step
goto 33.7,22.7
.kill 3 Bog Overlord##21694+|q 29614/1
step
goto The Steamvault 54.3,12.4
.kill Hydromancer Thespia##17797 |q 29615/1
step
goto 54.2,10.6
.click Main Chambers Access Panel##7147
.' You hear a faint echo...
|confirm always
step
goto 42.1,32.9 |n
.' Go through the opening on your left. |goto 42.1,32.9,0.5 |noway |c
step
goto 49.3,42.8 |n
.' Go up the ramp |goto 49.3,42.8,0.5 |noway |c
step
goto 55.8,47.3 |n
.' Go up to the bridge on the right side |goto 55.8,47.3,0.25 |noway |c
step
goto 39.7,69.0 |n
.' Cross the bridge and go through the hallway |goto 39.7,69.0,0.5 |noway |c
step
goto The Steamvault 33.6,81.2
.from Mekgineer Steamrigger##17796
.get Irradiated Gear |q 29614/3
.kill 6 Coilfang Leper##21338+ |q 29614/2
step
goto 31.8,84.0
.click Main Chambers Access Panel##7147
.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm always
step
goto 54.0,51.4 |n
.' Follow the tunnel back to the bridge |goto 54.0,51.4,0.5 |noway |c
step
goto 69.8,43.4 |n
.' Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4,0.5 |noway |c
step
goto 78.7,43.3 |n
.kill Warlord Kalithresh##17798 |q 29613/1
step
goto 49.1,42.6 |n
.' Follow the path down to the ramp |goto 49.1,42.6,0.5 |noway |c
step
goto 42.5,33.0 |n
.' Enter this doorway |goto 42.5,33.0,0.5 |noway |c
step
goto 18.8,27.6
.talk 54851
..turnin 29615
step
goto 18.0,27.2
.talk 54848
..turnin 29613
step
goto 17.6,25.9
.talk 54849
..turnin 29614
step
goto Zangarmarsh 79.1,64.8
.click Wanted Poster##15
..accept 9730
..accept 9817
step
goto Zangarmarsh 65.1,68.7
.kill Rajah Haghazed##18046 |q 9730/1
step
goto Zangarmarsh 65.1,40.9
.kill Rajis Fyashe##18044 |q 9817/1
step
goto 79.1,65.2
.talk 17858
..turnin 9730
..turnin 9817
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 9957
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424
..accept 9951
step
goto 45.1,21.8
.click Strange Object##7214
.' Examine the Strange Object |q 9971/1 |tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
goto 43.4,22.1
.kill Naphthal'ar##18438 |q 9951/1 |tip At the top of the big tower.
step
goto 45,22.5
.talk 18424
..turnin 9951
step
goto 44.3,26.3
.talk 18446
..turnin 9971
step
goto 44.1,23.8
.from Vicious Teromoth##18437+
.get 4 Vicious Teromoth Sample |q 9968/2
step
goto 45.8,29.8
.from Teromoth##18468+
.get 4 Teromoth Sample |q 9968/1
step
goto 44.3,26.3
.talk 18446
..turnin 9968
..accept 9978
step
goto 47.1,27
.talk 18482
.' Fight Empoor until he's almost dead
..turnin 9978
..accept 9979
step
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
step
goto Terokkar Forest 30.9,42.0
.from Skithian Windripper##18453+
.from Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
step
goto Shattrath City 72.3,30.9
.talk 18484
..turnin 10112
..accept 9990
step
goto Terokkar Forest 54.0,30.0
.click Sealed Box##6881
.get Sealed Box |q 9990/1
step
goto 44.4,26.3
.talk 18446
..turnin 9990
..accept 9995
step
goto 50.0,45.9
.talk 18447
..turnin 9995
..accept 10448
step
goto 63.3,42.0
.talk 21007
..turnin 10448
..accept 9997
step
goto 70.5,37.4
.kill 10 Firewing Defender##5355+ |q 9997/1
.kill 10 Firewing Bloodwarder##1410+ |q 9997/2
.kill 10 Firewing Warlock##16769+ |q 9997/3
step
goto 63.3,42.4
.talk 21007
..turnin 9997
..accept 10447
step
goto 73.4,36.3 |n
.' Enter this building |goto 73.4,36.3,0.5 |noway |c
step
goto 73.3,34.6
.click Orb of Translocation##7161
.' Run up the ramp to [73.9,35.8]
.from Sharth Voldoun##18554+
.get The Final Code |q 10447/1
step
goto 74.2,36.5 |n
.click Orb of Translocation##7161
.' Teleport to the bottom of the tower |goto 73.3,36.3,0.5 |noway |c
step
goto 71.3,37.4
.click Mana Bomb##7213
.' Activate Mana Bomb |q 10447/1
step
goto 50.0,45.9
.talk 18447
..turnin 10447
..accept 10006
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 10006
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
goto 35.2,48.8
.from Infested Root-walker##22095+
.' Kill the Wood Mites that come out of their corpses
.kill 25 Wood Mite |q 10896/1
.' You can find more Infested Root-walkers at [39.1,47.0]
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
goto Blade's Edge Mountains 62.2,39.1
.talk 21782
..accept 10567
step
goto 62.0,39.5
.talk 22007
..accept 10682
step
goto 62.5,38.2
.talk 22133
..accept 10753
step
goto 61.3,38.4
.talk 22053
..accept 10771
..accept 10770
step
goto 58.8,39.1
.talk 21981 |tip He wanders around the Wyrmcult camps.
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
step
goto 61.8,39.6
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer##21810+ |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net |q 10717/1
.collect Meeting Note##31120 |n
.' Click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
step
goto 63.9,31.5
.from Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
.collect 6 Ruuan'ok Claw##30704 |q 10567
step
goto 64.5,33.1
.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
.from Harbinger of the Raven##21767 |tip On the little island in the pond.
.get Harbinger's Pendant##30706 |q 10567/1
step
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
step
goto 62,39.5
.talk 21983
..turnin 10717
step
goto 62.0,39.6
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
goto 46.7,32.9
.kill Draaca Longtail##22396 |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
goto 42.2,25.1
.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
|tip Must be within melee range to receive the buff
.' Anytime the buff wears off, kill Grishna mobs again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, next to a pond with basilisks in it.
.' Receive the Third Prophecy |q 10607/3
|model The Third Prophecy##7249
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the left ramp, then left across the hanging bridge.
.' Receive the First Prophecy |q 10607/1
|model The First Prophecy##7249
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
.' Receive the Second Prophecy |q 10607/2
|model The Second Prophecy##7249
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, in front of a hut.
.' Receive the Fourth Prophecy |q 10607/4
|model The Fourth Prophecy##7249
step
goto 32.3,34.9
.' Go inside the cave
.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121 |q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 62.0,39.5
.talk 22007
..turnin 10722
..accept 10748
step
'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 33.9,35.4
.kill Maxnar the Ashmaw##21389 |q 10748/1 |tip Follow the cave path until it dead ends into him.
step
'Leave the cave. |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 62,39.5
.talk 22007
..turnin 10748
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 68.9,35.6
.kill 4 Felsworn Scalewing##21123+ |q 10753/1
.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
.kill 2 Fel Corrupter##21300+ |q 10753/3
.get Damaged Mask|n
.' Click the Damaged Mask |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds|q 10771/2
step
goto 71.6,18.5
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/3
step
goto 70.7,20.2
.kill 8 Scorch Imp##21021+ |q 10770/1
step
goto 62.7,40.4
.talk 22020
..turnin 10810
..accept 10812
step
goto 62.2,40.1
.talk 22127
..turnin 10812
..accept 10819
step
goto 62.6,38.2
.talk 22133
..turnin 10753
step
goto 61.2,38.4
.talk 22053
..turnin 10770
..turnin 10771
step
'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
.' It has a 60 minute timer on it
.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
.' Click here to continue. |confirm always
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.' Click the Legion Communicator |tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant##19961+ |q 10820/1
.kill 4 Doomforge Engineer##19960+ |q 10820/2
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.' Click the Legion Communicator
..turnin 10820 |tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.3,41.7
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 73.8,41.0
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.4,40.6
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.0,39.9
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.3,42.5
.kill Doomcryer##19963 |q 10821/1
step
goto 62.4,38.4
.talk 22127
..turnin 10821
..accept 10910
step
goto 63.2,65.5
.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10910
..accept 10904
step
goto 63.8,66.5
.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
.get 5 Fel Cannonball |q 10904/1
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10904
..accept 10911
step
goto 64.8,68.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the South Warp-Gate |q 10911/1
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master##19747 |q 10912/1
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
goto Netherstorm,42.3,32.6
.talk 20871
..accept 10426
step
goto 41.2,32.2
.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
.from Mutated Farahlon Lasher##20774+
.' Test Energy Modulator 10 times |q 10426/1
step
goto 42.3,32.6
.talk 20871
..turnin 10426
..accept 10427
step
goto 40.4,35.5
.from Talbuk Doe##20610+, Talbuk Sire##20777
.' Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
.' Tag 12 Talbuk |q 10427/1
step
goto 42.3,32.6
.talk 20871
..turnin 10427
..accept 10429
step
goto 44.3,28.5
.from Markaru##20775+
..get Hulking Hydra Heart |q 10429/1
step
goto 42.3,32.6
.talk 20871
..turnin 10429
step
goto Borean Tundra,57,44.3
.talk 25809
..accept 11864 |instant
..accept 11866
..accept 11876
step
goto 57.3,44.1
.talk 25810
..accept 11869
step
goto 57,44
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
.' Free 8 Mammoth Calves |q 11876/1 |modelnpc 24613
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1 |modelnpc 25835
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
.' After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.' Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
|modelnpc Mammoth Calf##24613, Khu'nok the Behemoth##25862
step
goto 59.5,30.4
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull|n |modelnpc 25743
.' Click it to ride it|invehicle|c
step
goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.' Click Kaw's War Halberd on the ground
.get Kaw's War Halberd|q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill 1 Karen "I Don't Caribou" the Culler##25803 |q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thugs##25843 |n
.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill 1 Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 43.5,14
.talk 25197
..accept 11571
step
'Go underwater to 42.5,15.9 |goto 42.5,15.9
.from Scalder##25226
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch |q 11571/1
step
goto 42.5,16.4
.click Winterfin Clam##261
.collect 5 Winterfin Clam##34597
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
step
goto 43,13.8
.talk 25206
..turnin 11559
step
goto 41.5,13.4
.click Winterfin Clam##261 |tip They are on the ground underwater.
.get 5 Winterfin Clam|q 11559/1
step
goto 43,13.8
.talk 25206
..turnin 11559
step
goto 42.8,13.7
.talk 25199
..accept 11561
step
goto 43.5,14
.talk 25197
..accept 11560
step
goto 40.6,17.5
.kill 15 Winterfin murlocs|q 11561/1
.click the yellow cage##1787+
.' Rescue 20 Winterfin Tadpoles |q 11560/1
|modelnpc Winterfin Oracle##25216, Winterfin Shorestriker##25215
step
goto 42.8,13.7
.talk 25199
..turnin 11561
step
goto 43.5,14
.talk 25197
..turnin 11560
..accept 11562
step
goto 42,12.8
.talk 25205
..turnin 11562
..accept 11563
step
goto 42,13.2
.talk 25211
..accept 11564
step
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head|q 11563/1
step
goto 40.3,12.4
.kill Glimmer Bay Orcas##25204+ |n
.get 7 Succulent Orca Blubber|q 11564/1
step
goto 42,12.8
.talk 25205
..turnin 11563
..accept 11565
step
goto 42,13.2
.talk 25211
..turnin 11564
step
goto 43.5,14
.talk 25197
..turnin 11565
..accept 11566
step
'Go southwest to Winterfin Village|n
.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
step
'Go inside the cave to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to [38.4,22.7]|goto 38.4,22.7
.from Keymaster Urmgrgl##25210
.get Urmgrgl's Key|q 11569/1
step
'Follow the path up and to the back of the cave to [37.6,27.4]|goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
'Go back up the path to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..turnin 11569
step
goto 37.8,23
.talk 25208
..accept 11570
.' Escort Lurgglbr to safety |q 11570/1
step
goto 43.5,14
.talk 25197
..turnin 11566
..turnin 11570
step
.' If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
.' The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
.' Click here to do the repeatable quest |confirm
step
label ears
goto Borean Tundra 60.9,63.4
.from Northsea Mercenary##25839+, Northsea Thug##25843+
.collect Nesingwary Lackey Ear##35188
.' Collect Lackey Ears in stacks of 15.
.' When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
step
label turnin
goto 57.1,44.3
.talk 25809
..accept 11867 |n
..' Click here to go back to farming ears. |next "ears" |confirm
..' Keep repeating this quest until you are Exalted with the Cenarion Expedition |condition rep('Cenarion Expedition')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Cenarion Expedition!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Sha'tari\\Skyguard Faction",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com+
achieveid 894
step
label "route"
'Routing to Skyguard Pre-Quests |next "pre" |only if completedq(11073)
'Routing to Skyguard Dailies |next "menu" |only if not completedq(11073)
step
label "pre"
goto Shattrath City,64.3,42.3
.talk 23449
..accept 11096
step
goto Terokkar Forest,21.8,16.1
.from 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1
.' You can find more around here [24.4,8.9]
step
goto Shattrath City,64.3,42.3
.talk 23449
..turnin 11096
..accept 11098
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto 63.5,65.8
.talk 23415
..accept 11093
step
goto 64.0,66.9
.talk 23042
..accept 11004
step
goto 61.4,81.8
.' Use your Nether Ray Cage |use Nether Ray Cage##32834 |tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
.from Blackwind Warp Chaser##23219+
.' You can find more Warp Chasers here [64.5,84.4]
.get 10 Nether Ray Meal |q 11093/1
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.get 6 Shadow Dust |q 11004/1
.' You can find more here [69.5,85.5]
.' Here [73.2,87.9]
.' Here [75.2,81.3]
.' And here [69.2,74.1]
step
goto Terokkar Forest,64.0,66.9
.talk 23042
..turnin 11004
step
goto 63.5,65.8
.talk 23415
..turnin 11093
step
goto 64.1,66.9
.talk 23038
..accept 11005
step
goto 69.7,74.7
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto 70.1,74.5
.kill Talonpriest Zellek##23068 |q 11005/3
step
goto 69.3,78.1
.kill Talonpriest Ishaal##23066+ |q 11005/1
.collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
..accept 11021
step
goto 69.8,81.8
.kill Talonpriest Skizzik##23067+ |q 11005/2
step
goto 64.1,66.9
.talk 23038
..turnin 11005
..turnin 11021
..accept 11024
step
goto Shattrath City 52.5,21.0
.talk 22292
..turnin 11024
..accept 11028
step
goto Terokkar Forest,64.1,66.9
.talk 18940
..turnin 11028
step
goto 64.2,66.9
.talk 23306
..accept 11056
step
goto 74.8,80.1
.click Hazzik's Package##6396
.get Hazzik's Package |q 11056/1
step
goto 64.3,66.9
.talk 23306
..turnin 11056
..accept 11029
step
goto 66.2,77.5
.' Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
.' Wear the Shabby Arakkoa Disguise |havebuff Interface\Icons\INV_Misc_Birdbeck_01
step
goto 67.0,79.7
.talk 23363
.buy Adversarial Bloodlines##32742 |q 11029
step
goto 64.3,66.9
.talk 23306
..turnin 11029
..accept 11885
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388 |q 11885 |future
.' You can find more here [69.5,85.5]
.' Here [73.2,87.9]
.' Here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant
..collect 2 Elixir of Shadows##32446+ |q 11885 |future
step
' This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue.
|confirm always
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' Here [73.2,87.9]
.' Here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.kill Darkscreecher Akkarai##23161 |q 11885/1
.collect Akkarai's Talons##32715
.kill Karrog##23165 |q 11885/2
.collect Karrog's Spine##32717
.kill Gezzarak the Huntress##23163 |q 11885/3
.collect Gezzarak's Claws##32716
.kill Vakkiz the Windrager##23204 |q 11885/4
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto 64.2,66.9
.talk 23306
..turnin 11885
..accept 11074 |instant
step
goto 64.1,66.9
.talk 23038
..accept 11073
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
goto 64.1,66.9
.talk 23038
..turnin 11073
step
label	"menu"
'You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
.' Click here to do the Dailys and then grind |confirm always |next "dailies" |or
.' or
.' Click here to grind for reputation |confirm always |next "grind" |or
step
label	"dailies"
goto Terokkar Forest,64.5,66.7
.talk 23048
..accept 11008
step
goto 63.1,80.0
.' Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
.' Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
.Destroy 20 Monstrous Kaliri Eggs |q 11008/1
.' You can find more eggs here:  goto [61.3,79.9]
.' Here [67.5,79.3]
.' Here [68.0,85.6]
.' and here [70.3,84.5]
'|model 378
step
goto 64.5,66.7
.talk 23048
..turnin 11008
step
goto 61.0,75.6
.talk 23383
..accept 11085
.' He can also be found here: [68.4,74.0]
.' and here: [75.0,86.5]
step
.' Escort the Skyguard Prisoner to the bottom of the bridge |tip Help him kill any mobs on the way down.
.' Rescue the Skyguard Prisoner. |q 11085/1
'|modelnpc 23383
step
goto 64.5,66.7
.talk 23048
..turnin 11085
step
label	"grind"
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388
.' You can find more here [69.5,85.5]
.' Here [73.2,87.9]
.' Here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant |n
..collect 2 Elixir of Shadows##32446
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' Here [73.2,87.9]
.' Here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.from Darkscreecher Akkarai##23161
.collect Akkarai's Talons##32715
.from Karrog##23165
.collect Karrog's Spine##32717
.from Gezzarak the Huntress##23163
.collect Gezzarak's Claws##32716
.from Vakkiz the Windrager##23204
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto Terokkar Forest,64.3,66.9
.talk 23306
..accept 11074 |instant |n
.collect Time-Lost Offering##32720
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Keepers of Time Faction",[[
description This guide will help you earn exalted
description reputation with the Keepers of Time.
step
.' This faction largely relies on running certain instances repeatedly in order to gain reputation.
.' There are a few Daily Quests to look out for in Shattrath City.  However, they won't be available to you every day.
..|confirm
step
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11382 |or
.accept 11378 |or
..' Neither of the quests may be available. If that is the case, click here to proceed. |confirm
step
goto 75.5,37.3
.talk 24370
.accept 11383
..' This quest may not be available for the day.  If it isn't, click here to proceed. |confirm
step
goto Tanaris,65.3,49.7
.talk 20142
..accept 10279
step
goto Tanaris/18 41.5,38.5
.talk 20130
.turnin 10279
..accept 10277
.' For this quest you can either follow the Custodian around or do something else while waiting.  This is a long process.
step
goto 41.5,38.5
.talk 20130
.turnin 10277
..accept 10282
step
goto Old Hillsbrad Foothills,29.0,48.3
.talk 18723
.turnin 10282
..accept 29598
.' Tell him you need a pack of incendiary bombs.
.collect 1 Pack of Incendiary Bombs##25853 |q 29598
step
goto 29.2,47.9
.talk 18725
..' Tell him you're ready to go to Durnholde Keep. |goto Old Hillsbrad Foothills,69.3,71.6 |c
step
.' Go into Durnholde and cross the bridge. |goto 72.2,63.4 |c
step
.' Go to this ledge and jump down. |goto Old Hillsbrad Foothills,77.2,61.6 |c
step
goto 77.6,65.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto Old Hillsbrad Foothills,76.0,68.1
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 74.6,68.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 69.0,62.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 68.6,58.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
.' Internment Lodges Set Ablaze. |q 29598/1
step
goto 75.6,64.7
.kill Lieutenant Drake##17848 |n
..' After you fight him, go up the stairs.
.' Click here to continue. |confirm
step
.' Go up the hill to the entrance of the barracks. |goto 73.2,61.4 |noway|c
step
goto Old Hillsbrad Foothills,74.6,58.4
.' Go down the steps here.
.' Click here once you're in the basement. |confirm
step
goto Old Hillsbrad Foothills,74.5,57.7
.talk 17876
.turnin 29598
..accept 29599
step
.' Tell him you're ready to get out of there.
..' Follow and Protect Thrall.
.kill Captain Skarloc##17862+ |n
.' After you kill Captain Skarloc, tell Thrall that Taretha cannot see him.
.' Click here to proceed. |confirm
step
.' Continue following and protecting Thrall until he stops again.
.' Tell him that you're ready.
.' Click here to continue. |confirm
step
.' Follow and protect Thrall once more.
.' Once you're upstairs with Taretha, ask her about the Strange Wizard.
.' Click here to continue. |confirm
step
.' Follow Thrall outside and protect him.
.kill Epoch Hunter##18096+ |n
..' Thrall's Destiny Fulfilled. |q 29599/1
step
goto Old Hillsbrad Foothills,50.2,30.9
.talk 18723
.turnin 29599
step
goto Tanaris,58.1,54.1
.talk 20130
..accept 10296
step
goto The Black Morass,49.3,6.5
.talk 20201
.turnin 10296
..accept 10297
step
goto The Black Morass,49.2,71.1
.' Moving to this spot will activate the event.
.' You will need to move to the portals that appear nearby, and kill everything that comes out of it.
.' If Medivh is under attack you must kill whatever is attacking him.  If his shield drops to 0% you will fail.
.' Open the Dark Portal. |q 10297/1
'|talk Medivh##15608
step
goto 49.3,6.5
.talk 20201
.turnin 10297
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11382 |or
.turnin 11378 |or
step
goto 75.5,37.3
.talk 24370
.turnin 11383
step
.' At this point you will need to grind The Black Morass and Old Hillsbrad Foothills to gain reputation.
.' If you're revered with the Keepers of time, you'll be able to talk to Zephyr in Shattrath who will teleport you to Tanaris.
.'Earn Exalted reputation with the Keepers of Time |condition rep('Keepers of Time')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Keepers of Time!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Consortium",[[
description This guide will help you earn exalted
description reputation with The Consortium Faction.
achieveid 902
step
.' From neutral, you have a few options as to how to earn your reputation.
.' The first way is running the Mana Tombs, although it will stop giving you reputation on Normal Mode as soon as you hit Honored.
.' The second way is by doing repeatable quests in Nagrand until you hit friendly.
..' Click here to continue. |confirm
step
goto Nagrand,52.0,34.8
.talk 18335
.accept 9913
step
goto 50.8,40.1
.from Wild Elekk##18334+
.collect 3 Pair of Ivory Tusks##25463+ |future |q 9914
..They are scattered all over Nagrand.  Don't confuse them with Bull Elekks.
' More can be found at the locations below:
.' [55.2,44.9]
.' [61.4,41.5]
.' [67.2,39.9]
.' [69.9,46.0]
step
goto Nagrand,31.8,56.8
.talk 18333
.accept 9914
step
goto 31.4,57.8
.talk 18265
.turnin 9913
..accept 9882
step
goto Nagrand,30.8,58.1
.talk 18276
.accept 9900
..accept 9925
step
.' Once you have accepted A Head Full of Ivory and Stealing from Thieves, you will want to complete both, but only turn one in.
.' Click here to confirm. |confirm
step
goto Nagrand,34.0,63.4
.from Vir'aani Raider##17149+
.get 10 Oshu'gun Crystal Fragment |q 9882/1
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
step
goto Nagrand,36.2,65.5
.kill Voidspawn##17981+ |q 9925/1
.' More can be found around [37.9,66.1]
step
goto 42.6,73.6
.kill Gava'xi##18298 |q 9900/1
.' He patrols around [42.1,71.2], so you might find him there.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9882
step
goto 30.8,58.1
.talk 18276
.turnin 9900
.turnin 9925
.' Click here to farm Crystals. |next crystal |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "crystal"
goto Nagrand,34.0,63.4
.from Vir'aani Raider##17149+
.get 10 Oshu'gun Crystal Fragment |q 9882/1
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9883 |instant |n
.' Click here to go back to farming. |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "friend"
goto 31.8,56.8
.talk 18333
.turnin 9914
step
goto Nagrand,31.4,57.8
.talk 18265
..accept 9886 |instant
..accept 9893
step
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.get 10 Obsidian Warbeads |q 9893/1
.' You can collect more than 10.
.' Be sure to collected multiples of 10.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9893
step
label "bead_farm"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect 10 Obsidian Warbeads##25433
.' You can collect more than 10.
.' To get from Friendly to Honored, you will need 240 Obsidian Warbeads.
.' Be sure to collected multiples of 10.
|only if rep("The Consortium")<=Friendly
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to continue farming Warbeads. |next bead_farm |confirm
|only if rep("The Consortium")<Friendly
step
label "nsquest"
goto Netherstorm 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
..accept 10311
step
goto 46.4,56.4
.talk 20810
..accept 10417
..accept 10348
step
goto 48.2,55.0
.click Diagnostic Equipment##7192
.get Diagnostic Results |q 10417/1
step
goto 57.6,63.9
.click Box Surveying Equipment##6881
.get 10 Box of Surveying Equipment |q 10267/1
step
goto 48.2,53.9
.click Ivory Bell##7176
.get 15 Ivory Bell |q 10348/1
step
goto 46.4,56.4
.talk 20810
..turnin 10348
..turnin 10417
..accept 10418
step
goto 46.8,53.9
.kill 8 Barbscale Crocolisk##20773+ |q 10418/1
step
goto 46.4,56.4
.talk 20810
..turnin 10418
..accept 10423
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
goto 48.1,63.5
.talk 20281
..turnin 10311
..accept 10310
step
.' Escort Drijya while he sabotages the warp-gate.
.' Burning Legion warp-gate sabotaged |q 10310/1
step
goto 46.7,56.9
.talk 20066
..turnin 10310
step
goto 43.5,35.1
.talk 20811
..turnin 10423
..accept 10424
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 47.6,26.8
.' Use Diagnostic Device next to the generator |use Diagnostic Device##29803
.' Get the Diagnostic Results |q 10424/1
step
goto 43.5,35.2
.talk 20811
..turnin 10424
..accept 10430
step
goto 44.7,14.6
.talk 20913
..turnin 10430
..accept 10436
step
goto 45.6,11.2
..kill 12 Scythetooth Raptor##20634+ |q 10436/1
step
goto 44.7,14.6
.talk 20913
..turnin 10436
..accept 10440
step
goto 43.5,35.2
.talk 20811
..turnin 10440
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 58.3,31.7
.talk 20071
..accept 10270
step
goto 59.2,32.1
.talk 20450
|tip He walks along this path. Some searching may be required.
..accept 10422
step
goto Netherstorm,59.2,32.6
.talk 20449
..accept 10411
step
goto 59.5,32.4
.talk 20448
..accept 10339
step
goto 60.1,31.7
.talk 20907
..accept 10437
step
goto 57.1,36.5
..kill Captain Zovax##20727 |q 10339/4 |tip He walks around this area.
..kill 5 Ethereum Assassin##20452+ |q 10339/1
..kill 5 Ethereum Shocktrooper##20453+ |q 10339/2
..kill 2 Ethereum Researcher##20456+ |q 10339/3
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10339
..accept 10384
step
goto 55.8,39.9
.click Ethereum Data Cell##1247
..get Ethereum Data Cell |q 10384/1
step
goto 54.5,41.1
.from Warden Icoshock##20770+
..collect The Warden's Key##29742 |q 10422
step
goto 55.2,42.8
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
.from .from Void Waste##20778+
.kill 30 Void Waste Globule##20805+ |q 10411/2
step
goto 53.3,41.5
.' Click Captain Tyralius's Prison |tip It looks like a glowing pink orb
.' Free Captain Tyralius |q 10422/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10384
..accept 10385
step
goto 56.5,38.6
.from Ethereum Shocktrooper##20453+, Ethereum Assassin##20452+
..collect Ethereum Essence##29482 |n
.' Use Ethereum Essence in your bags to see Ethereum Relays |use Ethereum Essence##29482
.from Ethereum Relay##20619+
.get 15 Ethereum Relay Data |q 10385/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10385
..accept 10405
step
goto 55.8,40.5
.from Ethereum Assassin##20452+, Ethereum Archon##20458+
..get Prepared Ethereum Wrapping |q 10405/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10405
..accept 10406
step
goto 56.8,38.6
.' Escort the Ethereum Demolishinist while he sabotages the Ethereum Conduit |tip If you have trouble with this, clear the path first before accepting the escort quest.
.' Sabotage Ethereum Conduit |q 10406/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10406
step
goto 57.1,37.6
.from Ethereum Gladiator##20854 |tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
.talk 20763
..accept 10425
step
'Escort the Captured Protectorate Vanguard to Protectorate Watch Post
.' Escort Captured Protectorate Vanguard |q 10425/1
step
goto 59.5,32.4
.talk 20448
..turnin 10425
step
goto 59.3,32.0
.talk 20450
..turnin 10422
step
goto 62.5,34.7
.from Voidshrieker##18870+, Unstable Voidwraith##18869+
..get 8 Fragment of Dimensius |q 10437/1
step
goto 59.5,39.9
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Seeping Sludge Globule##20806+ |q 10411/1
step
goto 59.4,45.0
.talk 20551
..accept 10345
step
goto 61.0,45.6 |n
'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c |q 10345
step
.' Go inside the cave to 59.8,42.6 |goto 59.8,42.6
.' Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473 |modelnpc Withered Corpse##20561
.' Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
goto 60.9,41.5
.talk 20552
..accept 10353
step
goto 61.0,41.5
.click Teleporter Power Pack##7089
..get Teleporter Power Pack |q 10270/1
step
goto 60.1,40.1
..kill Arconus the Insatiable##20554 |q 10353/1
step
goto 61.1,45.4 |n
'Leave the Access Shaft Zeon |goto 61.1,45.4,0.5 |noway |c |q 10345
step
goto 59.4,45.0
.talk 20551
..turnin 10345
step
goto 59.2,32.6
.talk 20449
..turnin 10411
step
goto 59.5,32.4
.talk 20448
..turnin 10353
step
goto 60.1,31.7
.talk 20907
..turnin 10437
..accept 10438
step
goto 60.2,31.7
.talk 20903
.' Tell the dragon you are ready to fly.
.' Use the Phase Disruptor in your bags while flying around the Void Conduit |use Phase Disruptor##29778
.' Destroy the Void Conduit |q 10438/1
step
goto 60.1,31.7
.talk 20907
.turnin 10438
..accept 10439
step
goto 60.6,32.1
.talk 20985
.' Speak to Captain Saeed |q 10439/2
.' Tell him, "Let's go!"
step
.' Follow Captain Saeed and his men to 60.8,39.3 | goto 60.8,39.3
.talk 20985
.' Tell him, "I am ready"
..kill Dimensius the All-Devouring##19554 |q 10439/1
step
goto 60.1,31.7
.talk 20907
..turnin 10439
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..accept 10408
step
goto 53.7,42.4
.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
..kill Nexus-King Salhadaar##20454+ |q 10408/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10408
step
goto 44.1,36.1
.talk 20067
..turnin 10290
step
goto 71.1,39.0
.' Click the Ethereum Transponder Zeta
.' Attempt to contact Wind Trader Marid.
.talk 20518
..turnin 10270
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 44.5,21.6
.from Farahlon Breaker##18886+ |tip If you're careful you can avoid having to fight the Farahkib Shardlings
..get 4 Raw Farahlite |q 10290/1
step
goto 44.0,36.0
.talk 20067
..accept 10290
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
..turnin 10276
step
goto 44.7,34.9
.talk 20470
..accept 10335
step
goto 44.7,34.9
.talk 20471
..accept 10336
..accept 10855
step
goto 39.1,28.9
.from Gan'arg Mekgineer##16949+
..collect 5 Condensed Nether Gas##31653 |q 10855
step
goto 38.0,25.5
.talk 22293
..turnin 10850 |n
.' Destroy Inactive Fel Reaver |q 10855/1
step
goto 51.7,20.4
..kill 10 Hound of Culuthas##20141+ |q 10336/1
..kill 5 Eye of Culuthas##20394+ |q 10336/2
step
goto 44.7,34.9
.talk 20471
..turnin 10336
..turnin 10855
..accept 10856
step
goto 41.9,23.6
..kill 12 Wrathbringer##18858+ |q 10856/1
step
goto 44.7,34.9
.talk 20471
..turnin 10856
..accept 10857
step
goto 39.2,20.0
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [39.1,20.5]
.' Destroy the Western Teleporter |q 10857/1
step
goto 41.2,19.4
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [41.2,19.4]
.' Destroy the Central Teleporter |q 10857/2
step
goto 42.2,20.9
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [42.2,20.9]
.' Destroy the Eastern Teleporter |q 10857/3
step
goto 44.7,34.9
.talk 20471
..turnin 10857
step
goto 51.6,20.5
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker One |q 10335/1
step
goto 54.5,22.8
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Two |q 10335/2
step
goto 55.8,20.0
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Three |q 10335/3
step
goto 44.7,34.9
.talk 20470
..turnin 10335
step
goto 59.5,32.4
.talk 20448
..accept 10970
step
goto 56.6,37.7
.from Ethereum Assassin##20452+, Captain Zovax##20727+, Ethereum Researcher##20456+
.get Salvaged Ethereum Prison Key |q 10970/1
step
goto 59.5,32.4
.talk 20448
..turnin 10970
step
goto 59.5,32.4
.talk 20448
..turnin 10970
..accept 10971
step
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10971/1
step
goto 59.5,32.4
.talk 20448
..turnin 10971
step
.' After these quests are done, you will need to grind reputation to Exalted.
.' You can either do Heroic Mana Tombs and kill everything in the instance.
.' You can do the Obsidian Warbeads in Nagrand. |next "bead" |confirm
.' You can farm Ethereal in Netherstorm. |next "heap" |confirm
.' Or you turn in Ethereum Prisoner I.D. Tag's |next "keys" |confirm |tip We do not recommend this last option due to a very low drop rate for Ethereum Prison Keys.
step
label "keys"
goto 59.5,32.4
.talk 20448
..accept 10972
step
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10972/1
step
goto 59.5,32.4
.talk 20448
..turnin 10972
step
label "heap"
goto Netherstorm,30.8,75.0
.from Zaxxis Raider##18875+, Zaxxis Stalker##19642+
.collect Zaxxis Insignia##29209+ |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto 32.4,64.2
.talk 19880
.turnin 10308 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "bead"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect Obsidian Warbeads##25433 |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "exalted"
.' Congratulations, you are now Exalted with The Consortium.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Shattered Sun Offensive\\Dailies", [[
author support@zygorguides.com
description This section is required to acces the
description Shattered Sun Offensive daily quests.
achieveid 897
daily
step
#include "H_SSO_PreQuest_with_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Neutral) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through getting Neutral reputation with Netherwing faction.
achieveid 898
startlevel 80
step
goto Shadowmoon Valley,62.9,59.5
.talk 22113
..accept 10804
step
goto 60.5,57.7
.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
.collect Rocknail Flayer Giblets##31373 |n
.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 60.5,57.7
.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
.' Feed 8 Netherwing Drakes |q 10804/1
step
goto 62.9,59.5
.talk 22113
..turnin 10804
..accept 10811
step
goto 68.2,60.4
.talk 21657
..turnin 10811
..accept 10814
step
goto 68.2,60.4
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
.kill 15 Dragonmaw Orc |q 10836/1
step
goto 68.2,60.4
.talk 21657
..turnin 10836
..accept 10837
step
goto 64.1,80.7
.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
.get 12 Nethervine Crystal |q 10837/1
step
goto 68.2,60.4
.talk 21657
..turnin 10837
..accept 10854
step
goto 67.4,59.3
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
..' Free 5 Enslaved Netherwing Drakes |q 10854/1
step
goto 68.2,60.4
.talk 21657
..turnin 10854
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
goto 62.9,59.5
.talk 22113
..turnin 10870
..accept 11012 |instant
..accept 11013
step
goto 66.2,85.7
.talk 23139
..turnin 11013
..accept 11014
step
goto 66.1,86.4
.talk 23140
..turnin 11014
step
goto 66.0,86.5
.talk 23141
..accept 11019 |instant
..accept 11049
step
goto 68.5,61.2
.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
.get 1 Netherwing Egg |q 11049/1
step
goto 66.0,86.5
.talk 23141
..turnin 11049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Neutral)", [[
author support@zygorguides.com
description This guide section will walk you through getting Friendly reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.3,90.2 |n
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
'Repeat this process daily until you are Friendly with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Friendly) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Friendly reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11053
step
goto 66.2,85.7
.talk 23139
..turnin 11053
step
goto 66.1,86.4
.talk 23140
..accept 11075
step
goto 66.8,86.1
.talk 23291
..accept 11054
step
goto 65.4,90.2
.talk 23149
..turnin 11075
step
'Go inside the mine to 71.6,87.6
.talk 23166
..accept 11083
step
goto 73.7,88.1
.kill 1 Crazed Murkblood Foreman##23305 |q 11083/1
.kill 5 Crazed Murkblood Miner##23324+ |q 11083/2
step
goto 71.6,87.6
.talk 23166
..turnin 11083
step
goto 64.8,85.6
.from Black Blood of Draenor##23286+
.collect Sludge-covered Object##32724+ |n
.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
.collect Murkblood Escape Plans##32726 |n
.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
..accept 11081
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11081
..accept 11082
step
'Go inside the mine and follow the path to 73.0,82.2
.talk 23309
..' Tell him you are here for him
.' Gather Murkblood Information |q 11082/1
.get Hand of the Overseer |q 11082/2
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around [60.4,45.2]
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Friendly)", [[
author support@zygorguides.com
description This guide section will walk you through getting Honored reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
'Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Honored) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Honored reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11084
step
goto 66.2,85.7
.talk 23139
..turnin 11084
step
goto 65.9,87.2
.talk 22433
..accept 11063 |instant
step
goto 65.2,85.7
.talk 23340
..accept 11064
.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
.' Defeat Murg "Oldie" Muckjaw |q 11064/1
step
goto 65.9,87.2
.talk 22433
..turnin 11064
step
goto 65.2,85.5
.talk 23342
..accept 11067
.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
.' Defeat Trope the Filth-Belcher |q 11067/1
step
goto 65.9,87.2
.talk 22433
..turnin 11067
step
goto 65.2,85.2
.talk 23344
..accept 11068
.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
.' Defeat Corlok the Vet |q 11068/1
step
goto 65.9,87.2
.talk 22433
..turnin 11068
step
goto 65.2,85.0
.talk 13437
..accept 11069
.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
.' Defeat Wing Commander Ichman |q 11069/1
step
goto 65.9,87.2
.talk 22433
..turnin 11069
step
goto 65.2,84.9
.talk 13181
..accept 11070
.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
.' Defeat Wing Commander Mulverick |q 11070/1
step
goto 65.9,87.2
.talk 22433
..turnin 11070
step
goto 65.5,85.3
.talk 23348
..accept 11071
.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
.' Defeat Captain Skyshatter |q 11071/1
step
goto 65.9,87.2
.talk 22433
..turnin 11071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Honored)", [[
author support@zygorguides.com
description This guide section will walk you through getting Revered reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350.|or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
step
'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Revered) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Revered reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11092
step
goto 66.2,85.7
.talk 23139
..turnin 11092
..accept 11094 |only if rep ('The Scryers') >= Friendly
..accept 11099 |only if rep ('The Aldor') >= Friendly
step
goto 74.5,86.3
.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
.collect Partially Digested Hand##32621 |n
.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
..accept 11041
step
goto 70.2,84.3
.kill Barash the Den Mother##23269 |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer##23264 |q 11041/1
step
goto 66.2,85.7
.talk 23139
..turnin 11041
step
goto 56.3,59.6
.talk 21955
..turnin 11094
..accept 11095
only if rep ('The Scryers') >= Friendly
step
goto 56.5,58.7
.talk 23434
..turnin 11095
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 11099
..accept 11100
only if rep ('The Aldor') >= Friendly
step
goto 62.4,29.3
.talk 23452
..turnin 11100
only if rep ('The Aldor') >= Friendly
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Revered)", [[
author support@zygorguides.com
description This guide section will walk you through getting Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020
..accept 11035
step
goto 66.1,86.4
.talk 23140
..accept 11015
..accept 11016 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055
step
goto 66.2,85.7
.talk 23139
..accept 11086
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 56.5,58.7
.talk 23434
..accept 11097
.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
.' Protect Commander Hobb, he must survive
.' Defeat the Dragonmaw Forces |q 11097/1
only if rep ('The Scryers') >= Friendly
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 62.4,29.3
.talk 23452
..accept 11101
.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
.' Protect Commander Arcus, he must survive
.' Defeat the Dragonmaw Forces |q 11101/1
only if rep ('The Aldor') >= Friendly
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with an Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
..turnin 11097 |only if rep ('The Scryers') >= Friendly
..turnin 11101 |only if rep ('The Aldor') >= Friendly
step
'Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
author support@zygorguides.com
description This guide section will walk you through the final steps of getting your Netherdrake Mount,
description once you've earned Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
step
goto Shattrath City,66.6,16.4
.talk 23433
..turnin 11108
step
goto 66.8,17.6
.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
..accept 11113 |instant |or
..accept 11114 |instant |or
..accept 11112 |instant |or
..accept 11111 |instant |or
..accept 11110 |instant |or
..accept 11109 |instant |or
step
'Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Netherwing Egg Hunting - Optimized Path", [[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
goto Shadowmoon Valley,69.4,63.6 |n
.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
step
goto 70.1,62.0 |n
.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.7 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 70.9,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 71.3,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.8 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
goto 70.0,60.3 |n
.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 69.7,58.5 |n
.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
goto 68.1,59.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.3,59.8 |n
.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
step
goto 68.5,61.2 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
step
goto 67.2,61.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
step
goto 67.2,62.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.9,62.5 |n
.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
step
goto 76.0,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
step
goto 75.2,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
step
goto 73.7,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
step
goto 73.0,84.0 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
goto 71.0,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 68.2,81.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 66.2,83.8 |n
.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.7,84.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.4,76.5 |n
.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.2,75.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.2,74.2 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
step
goto 61.7,73.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
step
goto 63.0,71.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 61.3,70.7 |n
.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.6,73.4 |n
.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.3,74.1 |n
.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.0,76.7 |n
.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.6,78.3 |n
.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 61.2,77.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 62.2,77.8 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.0,83.7 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.5,84.8 |n
.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 66.0,86.5
.talk 23141
.' Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506
step
goto 64.0,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
goto 62.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 60.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.1,89.5 |n
.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 64.9,90.8 |n
.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
step
'Go inside the mine to [64.8,87.2] |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
goto 68.3,84.0 |n
.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
step
goto 68.8,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
goto 72.3,87.3 |n
.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
goto 69.9,85.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.0,89.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 68.5,81.6 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 64.8,83.0 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 65.2,84.2 |n
.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
step
goto 65.3,90.2 |n
.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
goto 65.5,94.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 68.0,94.9 |n
.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 69.6,91.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 70.9,89.2 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 71.4,86.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
goto 72.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 73.4,90.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 75.8,91.6 |n
.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
step
goto 77.6,92.6 |n
.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.4,95.7 |n
.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.3,85.9 |n
.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 76.5,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
goto 78.9,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
goto 78.1,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
goto 78.8,79.6 |n
.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
'This is the end of the path.
.' Click here to go back to the beginning of the path. |confirm |next "start"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Ogri'la", [[
description This will walk you through the Pre-Quests for Ogri'la.
achieveid 896
step
label "route"
'Routing to proper section |next "daily" |only if completedq(11091)
'Routing to proper section |next |only if default
step
goto Shattrath City,56.5,49.1
.talk 22497
.accept 10984
step
goto 64.9,68.1
.talk 22940
.turnin 10984
..accept 10983
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10983
..accept 10995
..accept 10996
..accept 10997
step
goto Blade's Edge Mountains,60.9,47.6
.kill Grulloc##20216 |n
.click Grulloc's Dragon Skull##7354
.collect 1 Grulloc's Dragon Skull |q 10995/1
step
goto 58.5,62.2
.kill Maggoc##20600 |n
.click Maggoc's Treasure Chest##41
.collect 1 Maggoc's Treasure Chest |q 10996/1
step
goto Terokkar Forest,20.3,17.5
.from Slaag##22199+
.click Slaag's Standard##7215
.collect 1 Slaag's Standard##32382 |q 10997/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10995
.turnin 10996
.turnin 10997
..accept 10998
step
goto 77.3,31.8
' Stand in the fire until Vim'gol the Vile spawns
.from Vim'gol the Vile##22911 |n
.click Vim'gol's Vile Grimoire##255
.get 1 Vim'gol's Vile Grimoire##32358 |q 10998/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10998
..accept 11000
step
goto 60.0,24.1
.' Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
.' Kill all adds that spawn, defending the soul grinder.
.' Defeat Skulloc Soul Grinder
.click Skulloc's Soul##7244
.' Capture Skulloc's Soul |q 11000/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 11000
..accept 11009
step
goto Blade's Edge Mountains,28.8,57.3
.talk 23233
.turnin 11009
..accept 11025
step
goto Blade's Edge Mountains,28.8,62.4
.click Apexis Shard Formation##7210
..get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.4
.talk 23233
.turnin 11025
..accept 11058
step
goto 28.4,57.6
.talk 23316
..accept 11030
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11058
step
goto 27.7,68.1
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11058/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11080
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11030
step
goto 32.8,40.5
.' Click a Fel Crystalforge |tip It looks like a metal machine with green bubbling floating out of it quickly.
..' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
..accept 11061
step
goto 28.8,57.4
.talk 23233
..accept 11062
step
goto 27.4,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.4,52.7
.talk 23334
..accept 11119
step
goto 27.9,52.2
.talk 23473
..turnin 11119
step
goto 28.0,51.5
.talk 23335
..accept 11065
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11065/1
step
goto 28.8,57.4
.talk 23233
..accept 11059
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11059
step
goto 31.8,63.8
.' Click the Apexis Monument |tip It's a huge floating crystal that changes colors.
..' Insert 35 Apexis Shards, and begin!
.' Click any of the 4 big colored buttons on the ground |tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
.from Apexis Guardian##22275
.get Apexis Guardian's Head |q 11059/1
step
goto 28.8,57.4
.talk 23233
..turnin 11059
step
goto 28.0,51.5
.talk 23335
..turnin 11065
step
goto 27.4,52.7
.talk 23334
..accept 11078
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11078
step
goto 27.2,64.8
.' Click Rivendark's Egg |tip It looks like a big brown spiked egg sitting in a nest on the ground.
..' Place 35 Apexis Shards near the dragon egg to crack it open
.from Rivendark##23061
.get Dragon Teeth |q 11078/1
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11061
step
goto 27.4,52.7
.talk 23334
..turnin 11078
step
goto 54.4,10.8
.' Click the Bash'ir Crystalforge |tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
..' Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
.get Unstable Flask of the Sorcerer |q 11061/1
step
goto 28.4,57.6
.talk 23316
..turnin 11061
step
goto 28.5,58.1
.talk 23300
..accept 11079
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11079
step
goto 33.9,44.2
.' Click the Fel Crystal Prism |tip It's a big green crystal floating in green smoke above 4 metal vents.
..' Place 35 Apexis Shards into the prism
.' There are 4 different demons that can spawn:
.from Mo'arg Incinerator##23354
.from Braxxus##23353
.from Galvanoth##22281
.from Zarcsin##23355
.get Fel Whip |q 11079/1
step
goto 28.5,58.1
.talk 23300
..turnin 11079
step
goto 28.8,57.4
.talk 23233
..accept 11091
step
goto 28.1,58.7
.talk 23428
..turnin 11091
step
label daily
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.accept 11080
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.accept 11026
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.accept 11051
|only if completedq(11026)
step
goto 28.0,51.5
.talk 23335
.accept 11066
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.accept 11023
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 29.1,79.3
.' Use your Banishing Crystal |use Banishing Crystal##32696
.' Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
.' 15 Demons Banished |q 11026/1
|modelnpc 19973
|modelnpc 22204
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto 29.1,79.3
.' Use your Banishing Crystal |use Banishing Crystal##32696
.' Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
.' 15 Demons Banished |q 11051/1
|modelnpc 19973
|modelnpc 22204
|only if completedq(11026)
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11066/1
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11023/1
step
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.turnin 11080
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.turnin 11026
|only if rep("Ogri'la")>=Honored and not completedq(11026)
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.turnin 11051
|only if completedq(11026)
step
goto 28.0,51.5
.talk 23335
.turnin 11066
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.turnin 11023
step
'You have completed the dailies for today.
.' Click here to be taken to the beginning of the guide. |confirm
|next "daily" |only if rep("Ogri'la")<=Exalted
|next "exalted" |only if rep("Ogri'la")==Exalted
step
label exalted
'Congratulation, you are now Exalted with Ogri'la.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Thrallmar", [[
description This guide will walk you through earning exalted with Thrallmar.
step
'Grinding mobs in Hellfire Ramparts and Blood Furnace until 5,999 / 6,000 Honored would be best.  You won't be able to grind these two instance once you've passed the Honored threshold unless you do heroic, which you will only be able to do once per day.
.' Once you've reached Honored, you will be able to grind Shattered Halls for reputation.
.' You can also grind Heroic mode Hellfire Ramparts, Blood Furnace and Shattered Halls until exalted.
.' Reputation gained from doing Hellfire Peninsula quests well net you around 10,000 Reputation.
..' Click here to continue to the quest portion of the guide. |confirm
step
goto Blasted Lands,54.45,50.52
.talk 19254
..accept 9407
step
goto Hellfire Peninsula,87.4,49.8
.talk 19253
..turnin 9407
..accept 10120
step
goto 87.3,48.1
.talk 18930
..turnin 10120
..accept 10289
step
goto 55.9,36.8
.talk 19255
..turnin 10289
..accept 10291
step
goto 55,36
.talk 3230
..turnin 10291
..accept 10121
step
goto 55.1,36.4
.talk 21256
..accept 10450
step
goto 55.2,38.8
.talk 21283
..accept 10086
step
goto 56.6,37.6
.talk 16602
.home Thrallmar
step
goto 58,41.3
.talk 19256
..turnin 10121
..accept 10123
step
goto 60.8,35.9
.kill 1 Dreadcaller##19434 |q 10123/1
.kill 4 Flamewaker Imp##19136+ |q 10123/2
.kill 6 Infernal Warbringer##19261+ |q 10123/3
step
goto 58,41.3
.talk 19256
..turnin 10123
..accept 10124
step
goto 65.9,43.6
.talk 19273
..turnin 10124
..accept 10208
step
goto 70.8,45.4
.from Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
.collect 4 Demonic Rune Stone##28513 |q 10208 |n
.' Stand inside the portal
.click the portal
.' Disrupt Port Xilus |q 10208/1
step
goto 74,38.7
.from Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
.collect 4 Demonic Rune Stone##28513 |q 10208 |n
.' Stand inside the portal
.click the portal
.' Disrupt Port Kruul |q 10208/2
step
goto 65.9,43.6
.talk 19273
..turnin 10208
..accept 10129
step
goto 66.1,43.7
.talk 19401
.' Take the flight
.click the bomb in your bags, bomb Gateway Shaadraz |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/2
.click the bomb in your bags, bomb Gateway Murketh |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/1 |tip They look like big machines with giant green crystals floating above them.
step
goto 65.9,43.6
.talk 19273
..turnin 10129
..accept 10162
..accept 10388
step
goto 66.1,43.7
.talk 19401
.' Fly to the Abyssal Shelf
.' Use the bomb in your bags to bomb the mobs |use Area 52 Special##28132
.' Destroy 5 Fel Cannons |q 10162/3
.kill 5 Mo'arg Overseer##19397+ |q 10162/2
.kill 20 Gan'arg Peon##19398+ |q 10162/1 |tip If you don't complete this in the first run, you can fly again until it is done.
step
goto 65.9,43.6
.talk 19273
..turnin 10162
step
goto 55.2,39.1
.talk 16577
..accept 9498 |only !BloodElf
..accept 9499 |only BloodElf
step
goto 55,36
.talk 3230
..turnin 10388
..accept 10390
..accept 9400
step
goto 64.4,31.9
.kill 10 Gan'arg Servant##16947+ |q 10390/1
.from Razorsaw##20798
.get Head of Forgefiend Razorsaw |q 10390/2
.collect the Burning Legion Missive##29590 |n
.click the Burning Legion Missive |use Burning Legion Missive##29590
..accept 10393
step
goto 55,36
.talk 3230
..turnin 10390
..accept 10391
step
goto 55.1,36
.talk 21175
..turnin 10393
step
goto 57.5,31.2
.kill 3 Fel Cannon MKI##22461+ |q 10391/1
step
goto 55,36
.talk 3230
..turnin 10391
..accept 10392
step
goto 52.8,26.4
.kill Warbringer Arix'Amal##19298 |q 10392/1
.get Burning Legion Gate Key |q 10392/3
step
goto 53.1,27.6
.' Go inside the portal
.click the floating thing inside the portal
.' Close the Burning Legion Gate |q 10392/2 |tip You might have to stand right underneath it and zoom in your view to be able to click the floating glyph inside the portal.
step
goto 55,36
.talk 3230
..turnin 10392
step
goto 55.1,36
.talk 21175
..accept 10389
step
goto 56.6,47.1
.click Salvageable Metal##6999
..get 8 Salvaged Metal |q 10086/1
.click Salvageable Wood##6481
..get 8 Salvaged Wood |q 10086/2
.from Bonechewer Evoker##19701+, Bonechewer Mutant##16876+, Bonechewer Scavenger##18952+, Bonechewer Raider##16925+
..get 12 Bonechewer Blood |q 10450/1
step
goto 55.2,38.8
.talk 21283
..turnin 10086
..accept 10087
step
goto 55.1,36.4
.talk 21256
..turnin 10450
..accept 10449
step
goto 66.2,42
.talk 21257
..turnin 10449
..accept 10242
step
goto 61.7,81.2
.talk 19558
.fpath Spinebreaker Post
step
goto 61.9,81.5
.talk 19683
..accept 10278
step
goto 61.8,81.7
.talk 19682
..accept 10220
step
goto 61.1,81.8
.talk 21279
..turnin 10242
..accept 10538
step
goto 60.9,81.7
.talk 16858
..accept 9345
step
goto 61.2,80.6
.click Wanted Poster##4371
..accept 10809
step
goto 59.5,66.3
.click the Hellfire Spineleaves##6807
.get 12 Hellfire Spineleaf |q 9345/1
step
goto 58,79
.kill 12 Unyielding Footman##16904+ |q 10220/1
.kill 8 Unyielding Knight##16906+ |q 10220/2
.kill 6 Unyielding Sorcerer##16905+ |q 10220/3
.collect A Mysterious Tome##28552 |n
.click the Mysterious Tome |use A Mysterious Tome##28552
..accept 10229
step
goto 60.9,81.7
.talk 16858
..turnin 9345
..accept 10213
step
goto 61.8,81.7
.talk 19736
..turnin 10229
..accept 10230
.talk 19682
..turnin 10220
step
goto 54.7,83.7
.from Lieutenant Commander Thalvos##16978 |tip Walking around on a black platform thing. He's a blue ghost dwarf.
.get Unyielding Battle Horn |q 10230/1
step
goto 61.8,81.7
.talk 19736
..turnin 10230
..accept 10250
step
goto 63.5,77.6
.click the Unyielding Battle Horn in your bags next to the white flag |use Unyielding Battle Horn##28651
.kill Urtrak##19862 |q 10250/1
step
goto 61.8,81.7
.talk 19736
..turnin 10250
..accept 10258
step
goto 56.9,77.4
.talk 19937
..turnin 10258
step
goto 64.6,72.7
.from Bleeding Hollow Tormentor##19424+, Bleeding Hollow Necrolyte##19422+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Peon##16907+, Bleeding Hollow Dark Shaman##16873+
.collect 12 Bleeding Hollow Blood##30425 |q 10538
step
goto 65.2,71.2
.click the big red glowing cauldron to get Boiled Blood |tip It's a big red glowing cauldron.
.' Each time you click the cauldron, scarabs will run out.
.' Run away and stand away from the cauldron until the scarabs disappear.
.get 12 Boiled Blood |q 10538/1
step
goto 68.4,73.6
.from Worg Master Kruush##19442 |tip He's standing in the stables.
.get Worg Master's Head |q 10809/1
step
goto 61.2,81.3
.talk 22107
..turnin 10809
..accept 10792
step
goto 61.1,81.8
.talk 21279
..turnin 10538
..accept 10835
step
goto 61.7,81.9
.talk 22231
..accept 10813
step
goto 66.4,74
.' Use Zezzak's Shard on an Eye of Grillok |use Zezzak's Shard##31463 |tip They look like floating green eyes around this area. It has to channel for 3 seconds and turn your character green.
.' Absorb an Eye of Grillok |havebuff Interface\Icons\Spell_Nature_ElementalShields |q 10813
step
goto 61.7,81.9
.' Stand next to the cauldron
.' Return the Eye of Grillok |q 10813/1
step
goto 61.7,81.9
.talk 22231
..turnin 10813
..accept 10834
step
ding 61
step
goto 66.6,71.4
.' Go inside the cave
.from Grillok "Darkeye"##19457
.get Grillok's Eyepatch |q 10834/1
step
goto 68.7,69.8
.from Bleeding Hollow Peon##16907+
.collect 4 Bleeding Hollow Torch##31347 |q 10792 |n
.click the torches in your bags next to the forge |use Bleeding Hollow Torch##31347
.collect 4 Burning Bleeding Hollow Torch##31346 |q 10792
step
goto 69.5,70.2
.' Stand near the Eastern Hovel
.click a Burning Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Eastern Hovel |q 10792/2
step
goto 68.6,72.9
.' Stand near the Stable
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Stable |q 10792/4
step
goto 67.6,75.5
.' Stand near the Western Hovel
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Western Hovel |q 10792/3
step
goto 68.8,76.4
.' Stand near the Barracks
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346
.' Burn the Barracks |q 10792/1
step
goto 61.2,81.3
.talk 22107
..turnin 10792
step
goto 61.7,81.9
.talk 22231
..turnin 10834
step
goto 49.2,74.8
.talk 19367
..turnin 10213
..accept 10161
.talk 19344
..accept 9349
step
goto 58.1,71.3
.click Zeppelin Debris on the ground around this area |tip They look like pieces of metal and wood around this whole area.
.get 30 Zeppelin Debris |q 10161/1
step
goto 49.2,74.8
.talk 19367
..turnin 10161
..accept 9351
step
goto 49.5,81.8
.from Uncontrolled Voidwalker##16975+, Rogue Voidwalker##16974+
.get 10 Condensed Voidwalker Essence |q 9351/1
step
goto 46.8,83.1
.' Use your Unstable Warp Rift Generator under the big black ball of lightning |use Unstable Warp Rift Generator##29027
.click the Unstable Warp Rift Generator and place the green circle under the big black ball of lightning.
.from Unstable Voidwalker##20145+
.get 3 Warp Nether |q 10278/1
step
goto 41.2,84.4
.click Ravager Egg##1867
.from Razorfang Ravagers##16933+
.get 12 Ravager Egg |q 9349/1
step
goto 49.2,74.8
.talk 19367
..turnin 9351
.talk 19344
..turnin 9349
..accept 9361
step
goto 50.2,74.8
.from Hulking Helboar##16880+, Starving Helboar##16879+, Deranged Helboar##16863+
.collect Tainted Helboar Meat##23270 |q 9361 |n
.' Use your Purification Mixture on the Tainted Helboar Meat |use Purification Mixture##23268
.get 8 Purified Helboar Meat |q 9361/1 |tip The meat won't become purified every time, it can become toxic as well.
step
goto 47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.collect Eroded Leather Case##23338 |n
.click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 49.2,74.8
.talk 19344
..turnin 9361
..accept 9356
step
goto 62.6,67.3
.from Bonestripper Buzzard##16972+
.get 12 Plump Buzzard Wing |q 9356/1
step
goto 49.2,74.8
.talk 19344
..turnin 9356
step
goto 61.9,81.5
.talk 19683
..turnin 10278
..accept 10294
step
goto 71.3,67.4 |n
.' The path over to 'Void Ridge' starts here |goto Hellfire Peninsula,71.3,67.4,0.5 |noway |c |q 10294
step
goto 75.4,66.3
.from Collapsing Voidwalker##17014+, Vacillating Voidcaller##19527+
.get 40 Void Ridge Soul Shard |q 10294/1
step
goto 61.9,81.5
.talk 19683
..turnin 10294
..accept 10295
step
goto 81.1,78.9
.' Stand next to the 2 big pink crystals
.click the Warp Rift Generator in  your bags |use Warp Rift Generator##29226
.from Void Baron Galaxis##16939
.get Galaxis Soul Shard |q 10295/1
step
goto 52.3,36.5
.talk 16588
..turnin 10835
..accept 10864
step
goto 51.4,30.6
.talk 16915
..accept 10236
step
goto 48.9,35.4
.click the Shredder Parts boxes |tip They look like wooden crates around this area.
.get 6 Shredder Spare Parts |q 10236/1
step
goto 45.9,39.8
.from Shattered Hand Berserker##16878+, Shattered Hand Guard##19414+
.' Reap 20 Shattered Hand Souls |q 10864/1
step
goto 51.4,30.6
.talk 16915
..turnin 10236
..accept 10238
step
goto 52.3,36.5
.talk 16588
..turnin 10864
..accept 10838
step
goto 45.1,41.0
.click Manni's Cage |tip It looks like a wooden cage with a goblin inside.
.' Save Manni |q 10238/1
step
goto 46.5,45.2
.click Moh's Cage |tip It looks like a wooden cage with a goblin inside.
.' Save Moh |q 10238/2
step
goto 47.5,46.6
.click Jakk's Cage |tip It looks like a wooden cage with a goblin inside.
.' Save Jakk |q 10238/3
step
goto 45.5,47.2
.' Use your Demoniac Scryer in your bags at this spot |use Demoniac Scryer##31606
.' Defend the Demoniac Scryer until a bunch of purple things start swirling around it.
.talk 22258
.get Demoniac Scryer Reading |q 10838/1
step
goto 52.3,36.5
.talk 16588
..turnin 10838
..accept 10875
step
goto 55,36
.talk 3230
..turnin 10875
step
goto 51.4,30.6
.talk 16915
..turnin 10238
..accept 10629
step
goto 51.4,30.6
.' Use the Felhound Whistle while standing next to Forman Razelcraz |use Felhound Whistle##30803 |tip Standing near the entrance to the mine, next to a bunch of fel guard hounds.
|confirm |q 10629
step
goto 49.9,29.3
.from Deranged Helboar##16863+
.' The Fel Guard Hound will eat the corpses and poop
.click the Felhound Poo
.get Shredder Keys |q 10629/1
step
goto 51.4,30.6
.talk 16915
..turnin 10629
..accept 10630
step
goto 51.6,31.7 |n
.' Enter the mine |goto Hellfire Peninsula,51.6,31.7,0.5 |noway |c |q 10630
step
'Follow this mine shaft |goto 54.4,31.4
.kill Urga'zz##18976 |q 10630/1 |tip All the way in the back of the mine.
step
'Leave the mine |goto Hellfire Peninsula,51.6,31.7,0.5 |noway |c |q 10630
step
goto 51.4,30.6
.talk 16915
..turnin 10630
step
goto 61.1,52.3
.click the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
.' Burn the Eastern Cannon |q 10087/1
step
goto 55,54
.click the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
.' Burn the Western Cannon |q 10087/2
step
goto 61.9,81.5
.talk 19683
..turnin 10295
step
goto 55.2,38.8
.talk 21283
..turnin 10087
step
goto 39.4,36.1
.kill 10 Terrorfiend##16951+ |q 10389/1
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
step
goto 33.6,43.5
.click the Fel Orc Corpse |tip It's a corpse laying halfway up the hill.
..turnin 9400
..accept 9401
step
goto 55.1,36
.talk 21175
..turnin 10389
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot|goto 32,27.8,0.5|c |q 9410
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
goto 55,36
.talk 3230
..turnin 9406
step
goto Hellfire Peninsula,55.0,36.0
.talk 3230
..accept 10136
..accept 10876
step
goto 43.9,31.6
.kill Arazzius the Cruel##19191 |q 10136/1
step
goto 47.3,49.6
.from Force-Commander Gorax##19264 |tip He walks back and forth in this small area.
.' Use your Challenge from the Horde on Force-Commander Gorax's corpse |use Challenge from the Horde##31702
.from Hand of Kargath##22374
.get The Head of the Hand of Kargath |q 10876/1
step
goto 55.0,36.0
.talk 3230
..turnin 10136
..turnin 10876
step
goto Hellfire Ramparts 48.4,68.1
.talk 54606
..accept 29527
..accept 29530
..accept 29593
step
'As you go through the instance do the following:
.click Hellfire Supplies##7001
.' You will need to collect 3 supplies
|confirm |q 29593
step
goto Hellfire Ramparts 74.8,33.2
.from Watchkeeper Gargolmar##17306+
.get Gargolmar's Hand |q 29527/1
step
goto Hellfire Ramparts 38.8,19.3
.from Omor the Unscarred##17308+
.get Omor's Hoof |q 29530/1
step
goto Hellfire Ramparts 38.8,82.0
.from Nazan##17307+
.get Nazan's Head |q 29527/2
step
'Make sure you have collected 3 Hellfire Supplies before you turn in your quests.
.click Hellfire Supplies##7001
|tip They are all over this instance.
.get 3 Hellfire Supplies |q 29593/1
step
goto Hellfire Ramparts 48.4,68.1
.talk 54606
..turnin 29527
..accept 29530
..turnin 29593
step
goto The Blood Furnace 51.5,90.1
.talk 54636
..accept 29535
..accept 29536
..accept 29537
step
'As you go through this instance,
.from Laughing Skull Enforcer##17370+, Laughing Skull Rogue##17491+, Shadowmoon Summoner##17395+, Laughing Skull Legionnaire##17626+
..collect 10 Fel Orc Blood Vial##23894 |n
|confirm |q 29535
step
goto The Blood Furnace 37.1,40.8
.from The Maker##17381+
.get Fel Infusion Rod |q 29535/2
step
goto The Blood Furnace 65.2,41.1
.' Fully Investigate the Blood Furnace |q 29536/1
step
goto The Blood Furnace 58.3,41.2
.kill Keli'dan the Breaker##17377 |q 29537/1
step
'Run through this tunnel to turn in your quests |goto The Blood Furnace 62.3,51.4 |c |q 29537
step
goto The Blood Furnace 51.5,90.0
.talk 54636
..turnin 29535
..turnin 29537
..turnin 29536
step
goto Shadowmoon Valley,23.5,34.9
.kill Overseer Ripsaw##21499|n
..get Illidari-Bane Shard##30579|n
..accept 10623
step
goto Shadowmoon Valley,29.8,31.3
.talk 19333
..turnin 10623
..accept 10627
step
goto 22.7,35.3
.from Makazradon##21501
.get Makazradon's Glaive##30786 |q 10627/1
step
goto 23.2,38.4
.from Morgroron##21500
.get Morgroron's Glaive##30785 |q 10627/2
step
goto Shadowmoon Valley,29.8,31.3
.talk 19333
..turnin 10627
..accept 10663
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10663
..accept 10664
step
goto Shattrath City 64.7,70.7
.talk 19678
.buy 1 Demon Warding Totem##30823 |q 10664/3
step
goto Netherstorm 45.0,36.5
.talk 20981
.buy 1 Adamantite Frame |q 10664/1
step
Make sure you have everything on this list.
.collect 1 Adamantite Frame##23784 |q 10664/1
.collect 4 Heavy Knothide Leather##23793 |q 10664/2
.collect 1 Demon Warding Totem##30823 |q 10664/3
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10664
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..accept 10665
..accept 10666
step
goto Shadow Labyrinth 53.4,56.0
.from Grandmaster Vorpil##18732+
.get Lexicon Demonica |q 10666/1
step
goto The Mechanar 53.7,43.2
.click Overcharged Manacell##7257
.get Overcharged Manacell |q 10665/1
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10665
..turnin 10666
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..accept 10670 |tip you'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to recive this quest
step
goto The Shattered Halls 58.6,88.5
.talk 54932
..accept 29651
step
goto The Shattered Halls 58.6,88.5
.talk 54931
..accept 29650
..accept 29655
..accept 29653
step
goto The Shattered Halls 34.8,77.1
.kill 4 Shattered Hand Legionnaire##16700+ |q 29651/1
step
goto The Shattered Halls 34.6,61.8
.from Grand Warlock Nethekurse##16807+
.collect Grand Warlock's Amulet##23735 |q 29650
step
.' Use the Grand Warlock's Amulet next to this brazier |use Grand Warlock's Amulet##23735
.get Fel Ember |q 29650/1
step
goto The Shattered Halls 36.8,14.2
.kill 2 Shattered Hand Centurion##17465+ |q 29651/2
step
goto The Shattered Halls 51.1,13.9
.kill 2 Shattered Hand Champion##17671+ |q 29651/3
step
goto The Shattered Halls 53.9,33.8
.from Warbringer O'mrogg##16809+
.get Tear of the Earthmother |q 10670/1
.get O'mrogg's Warcloth |q 29655/1
step
goto The Shattered Halls 67.2,54.1
.from Warchief Kargath Bladefist##16808+
.get Warchief Kargath's Fist |q 29653/1
step
goto The Shattered Halls 67.2,51.8
.talk 55136
..turnin 29651
..turnin 29650
..turnin 29655
..turnin 29653
step
goto Terokkar Forest,77.6,38.7
.talk 21465
.turnin 10670
step
'At this point you will need to grind in order to reach exalted.
.' If you are below Honored (5,999) you can grind Normal Hellfire Ramparts, Blood Furnace and Shattered Halls.
.' After Honored, Normal Ramparts and Blood Furnace no long give reputation.  You will have to do Shattered Halls, or heroic Ramparts, Blood Furnace and Shattered Halls.
|confirm
step
goto Hellfire Peninsula,56.0,39.2
.talk 18267
..accept 13409 |only !DeathKnight
..accept 13411 |only DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13409/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13409/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13409/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13411/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13411/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13411/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto Hellfire Peninsula,56.0,39.2
.talk 18267
.turnin 13411 |only DeathKnight
.turnin 13409 |only !DeathKnight
step
'After the quest is completed you will unlock a daily version of the quest.
.' Click here to move onto it. |confirm
step
label fort
goto Hellfire Peninsula,56.0,39.2
.talk 18267
..accept 10110
step
goto 40.1,48.5
.' Capture The Overlook. |q 10110/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 35.7,51.5
.' Capture The Stadium. |q 10110/1
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 40.2,56.7
.' Capture Broken Hill. |q 10110/3
.' You will need to enable PVP in order to capture the objective.
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto Hellfire Peninsula,56.0,39.2
.talk 18267
..turnin 10110
|next "fort" |only if rep('Thrallmar')<=Revered
|next "grats" |only if rep('Thrallmar')==Exalted
step
label grats
'Congratulations, you are now exalted with Thrallmar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Lower City", [[
description This guide will walk you through how to earn
description Exalted with the Lower City.
step
goto Shattrath City,52.6,21
.talk 22292
..accept 10847
step
goto Terokkar Forest,38.6,8.5
.from Shimmerscale Eels##18750
.get 8 Pristine Shimmerscale Eel |q 10037/1
step
goto 49.9,16.5 |n
.' The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c |q 10847
step
goto 50.1,19.4
.click Eye of Veil Reskk##621
.get Eye of Veil Reskk|q 10847/1
step
goto 57.9,23.2
.click Eye of Veil Shienor##621 |tip Climb the path inside the other tree, run across the bridge
.get Eye of Veil Shienor|q 10847/2
step
goto Shattrath City,52.6,21
.talk 22292
..turnin 10847
..accept 10849
step
goto Terokkar Forest,37.4,51.5
.talk 22272
..turnin 10849
..accept 10839
step
goto 37.7,51.3
.talk 22365
..accept 10852
step
goto 37.4,51.2
.talk 22370
..accept 10878
step
goto 39.6,58.6
.kill 8 Cabal Skirmisher##21661+ |q 10878/1
.kill 4 Cabal Spell-weaver##21902+ |q 10878/2
.kill 2 Cabal Initiate##21907+ |q 10878/3
.get 10 Mark of Kil'jaeden |q 10325/1 |only if rep ('The Aldor') >= Neutral
.' Get the Cabal Orders from orcs in this area
.' Click the Cabal Orders |use Cabal Orders##31707
..accept 10880
step
goto 37.4,51.2
.talk 22370
..turnin 10880
..accept 10881
..turnin 10878
step
goto 37.4,51.2
.talk 22370
..turnin 10878
step
goto 29.7,51.7
.click Cabal Chest##10
.get Gavel of K'alen |q 10881/2
step
goto 32.1,51.2
.click Cabal Chest##10
.get Drape of Arunen|q 10881/1
step
goto 31.2,46.7
.click Cabal Chest##10
.get Scroll of Atalor|q 10881/3
step
'Go outside to 37.4,51.2 |goto 37.4,51.2
.talk 22370
..turnin 10881
step
goto 32.3,41.7
.from Skithian Windripper##18453+,Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
.get Veil Skith Prison Keys|n
.click Veil Skith Cage##1787
.' Rescue 12 Children |q 10852/1
step
goto 30.8,42.1
.' Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
.' Purify the Darkstone of Terokk |q 10839/1
|model Darkstone of Terokk##2710
step
goto 37.4,51.5
.talk 22272
..turnin 10839
..accept 10848
step
goto 37.7,51.3
.talk 22365
..turnin 10852
step
goto 30.2,51.1
.kill 4 Deathtalon Spirit##21198+ |q 10848/1
.kill 4 Screeching Spirit##21200+ |q 10848/2
.kill 2 Spirit Raven##21324+ |q 10848/3
step
goto 37.4,51.5
.talk 22272
..turnin 10848
..accept 10861
step
goto 24.2,70.5
.click Cursed Egg##477
.' Redeem 3 Hatchlings |q 10861/1
.kill 3 Malevolent Hatchling##22337+ |q 10861/2
step
goto 31,76.1
.talk 22446
..accept 10913
.talk 22458
..accept 10922
.' Escort the Archaeologists |q 10922/1
step
goto 31,76.1
.talk 22481
..turnin 10922
step
goto 35,76.5
.' Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769
.' Burn 8 Slain Sha'tar Vindicator corpses |q 10913/1
.' Burn 8 Slain Auchenai Warrior corpses |q 10913/2
|modelnpc Slain Auchenai Warrior##21846
|modelnpc Slain Sha'tar Vindicator##21859
step
goto 31,76.1
.talk 22446
..turnin 10913
..accept 10914
step
goto 36.7,74.4
.kill 12 Auchenai Initiate##21284+ |q 10914/1
.kill 5 Auchenai Doomsayer##21285+ |q 10914/2
step
goto 31,76.1
.talk 22446
..turnin 10914
..accept 10915
step
goto 35.9,65.7
.click Auchenai Coffin##7251
.kill Reanimated Exarch##22452 |q 10915/1
step
goto 31,76.1
.talk 22446
..turnin 10915
step
goto 37.4,51.5
.talk 22272
..turnin 10861
..accept 10874
step
goto 37.5,50.8
.talk 22278
..accept 10840
..accept 10842
step
goto 47.0,55.2 |n
.' Enter the tomb |goto 47.0,55.2,0.5 |noway |c |q 10842
step
goto 47.6,54.8
.kill 10 Ethereal Nethermancer##21370+ |q 10840/1
.kill 10 Ethereal Plunderer##21368+ |q 10840/2
.from Vengeful Draenei##21636+
.' Slay 5 Vengeful Draenei |q 10842/1
step
goto 47.0,55.2 |n
.' Leave the tomb |goto 47.0,55.2,0.5 |noway |c |q 10842
step
goto 54.9,66.1 |n
.' The path up to Veil Shalas starts here |goto Terokkar Forest,54.9,66.0,0.5 |noway |c |q 10874
step
goto 57.3,65 |n
.' The path up to the Sapphire Signal Fire starts here |goto 57.3,65.0,0.3 |noway |c |q 10874
step
goto 55.2,67.1
.click Sapphire Signal Fire##7289 |tip Across the hanging bridge and down the spiraling stairs.
.' Extinguish the Sapphire Signal Fire |q 10874/1
step
goto 57,71.8 |n
.' The path up to the Emerald Signal Fire starts here |goto 57.0,71.8,0.3 |noway |c |q 10874
step
goto 55.5,69.7
.click Emerald Signal Fire##7200 |tip Over the hanging bridge.
.' Extinguish the Emerald Signal Fire|q 10874/2
step
goto 56,72.7 |n
.' The path up to the Bloodstone and Violet Signal Fires starts here |goto 56.0,72.7,0.3 |noway |c |tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little. |q 10874
step
goto 56.1,72.4
.click Bloodstone Signal Fire##7290 |tip Up the path inside the tree, on your left as you reach the top.
.' Extinguish the Bloodstone Signal Fire |q 10874/4
step
goto 56.7,69.2
.click Violet Signal Fire##5151 |tip Across the hanging bridge from the Bloodstone Signal Fire.
.' Extinguish the Violet Signal Fire|q 10874/3
step
goto 37.4,51.5
.talk 22272
..turnin 10874
..accept 10889
step
goto 37.5,50.8
.talk 22278
..turnin 10840
..turnin 10842
step
goto Shattrath City 52.6,21
.talk 22292
..turnin 10889
.talk 22373
.' You're about to fight 3 waves of birds and a bird boss. Make sure you're ready.
..accept 10879
step
goto 52.6,21
.' Fight off the Minions of Terokk and eventually the Avatar of Terokk
.' Thwart the Attack |q 10879/1
|modelnpc Avatar of Terokk##22375
|modelnpc Minion of Terokk##22376
step
goto 52.6,21
.talk 22292
..turnin 10879
step
goto Shattrath City,48.2,18.7
.talk 22429
..accept 10917
step
goto 58.0,15.2
.talk 19045
..accept 10180 |or
..accept 10097 |or
step
goto Terokkar Forest,50.2,17.4
.from Shienor Talonite##18449+, Shienor Sorcerer##18450+
.get 30 Arakkoa Feather |q 10917/1
step
goto 37.0,49.5
.talk 18675
..accept 10030
step
goto 32.4,56.5
.click Restless Bones |tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
.get 10 Restless Bones |q 10030/1
step
goto 31.2,52.7 |n
.' Enter the crypt |goto 31.2,52.7,0.5 |noway |c |q 10030
step
goto 30.6,49.1
.talk 22377
..accept 10887
step
goto 33.8,51.6 |n
.' Protect Akuno and escort him to this spot |goto 33.8,51.6,0.5 |noway |c |q 10887
.' Help Akuno find his way to the Refugee Caravan |q 10887/1
step
goto 38.1,51.8
.talk 22370
..turnin 10887
step
goto 35.1,66.3
.talk 19417
..turnin 10030
..accept 10031
step
goto 31.7,64.9
.kill 10 Lost Spirit##18460+ |q 10031/1
step
goto 31.0,76.2
.talk 22481
..accept 10929
step
goto 40.1,77.5
.kill 10 Broken Skeleton##16805+ |q 10031/2
.' You can find more around [48.2,71.9]
step
goto 37.6,77.3
.' Use your Fumper while standing on the ground |use Fumper##31810 |tip You can just keep using it in the same spot, it doesn't matter.
.from Mature Bone Sifter##22482+
.get 8 Mature Bone Sifter Carcass |q 10929/1
step
goto 31.0,76.2
.talk 22481
..turnin 10929
..accept 10930
step
goto 48.0,75.1
.from Decrepit Clefthoof##22105+
.' Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825 |tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
.from Hai'shulud##22038
.get Enormous Bone Worm Organs |q 10930/1
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 42.1,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 42.1,65.6,0.5 |noway |c |q 10898
step
goto 44.1,65.0
.talk 18933
..turnin 10180
step
goto 31.0,76.2
.talk 22481
..turnin 10930
step
goto 37.0,49.5
.talk 18675
..turnin 10031
step
goto 52.6,21.0
.talk 22292
..turnin 10898
step
goto 50.3,18.3
.talk 22429
..turnin 10917
step
'At this point you will need to Farm instances for reuptation.
.' You can farm Auchenai Crypts until 5,999/6,000 Friendly.  After you reach Honored though, you will only be able to do Heroic mode for reputation.
.' You can also grind Shadow Labyrinth and Sethekk Halls up until exalted without Heroic mode active.  You can gain addition reputation by doing it on Heroic however.
.' Click here to move onto Daily Heroic quests that may be available for reputation turn ins. |confirm
step
label h_daily
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11373 |or
.accept 11372 |or
.accept 11374 |or
.accept 11375 |or
.' These quests may no longer be available.
.' Click here if they are not offered |confirm |next "entrance"
step
'Kill your way to the end of the instance.
.from Nexus-Prince Shaffar##18344
.get Shaffar's Wondrous Amulet##33835 |q 11373/1
only if havequest(11373)
step
goto Terokkar Forest,43.2,65.6 |n
.' Go straight in, through the swirling portal at [44.9,65.6]
.' Enter Sethekk Halls. |goto Sethekk Halls|noway|c
only if havequest(11372)
step
'Kill your way to the end of the instance.
.from Talon King Ikiss##18473
.get The Headfeathers of Ikiss##33834 |q 11372/1
only if havequest(11372)
step
goto Terokkar Forest,36.0,65.6 |n
.' Go straight in, through the swirling portal at [34.3,65.6]
.' Enter the Auchenai Crypts. |goto Auchenai Crypts |noway|c
only if havequest(11374)
step
'Kill your way to the end of the instance.
.from Exarch Maladaar##18373
.get The Exarch's Soul Gem##33836 |q 11374/1
only if havequest(11374)
step
goto Terokkar Forest,39.6,71.0 |n
.' Go straight into the building and go into the swirling portal to the Shadow Labyrinth at [39.6,73.5]
.' Enter the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
only if havequest(11375)
step
'Kill your way to the end of the instance.
.from Murmur##18708
.get Murmur's Whisper##33840 |q 11375/1
only if havequest(11375)
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11373 |or
.turnin 11372 |or
.turnin 11374 |or
.turnin 11375 |or
|next "h_daily" |only if rep('Lower City')<=Revered
|next "exalted" |only if rep('Lower City')==Exalted
step
label	entrance
.' The entrance for _Shadow Labyrinth_ is here [Terokkar Forest 39.6,71.1]
.' The entrance for _Auchenai Crypts_ is here [Terokkar Forest 35.9,65.6]
.' The entrance for _Sethekk halls_ is here [Terokkar Forest 43.4,65.6]
.' Earn Exalted with Lower city |condition rep('Lower City')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Lower City!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Sha'tar",[[
description This guide will walk you through
description gaining exalted with The Sha'tar.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210
step
goto Nagrand,55.2,36.1
.talk 18301
.accept 9983
step
goto Nagrand,31.3,44.1
.talk 18210 |tip You will have to kill the two npc's guarding him.
.accept 9868
step
'Escort the Mag'har Captive |q 9868/1
step
goto 27.3,43.1
.talk 18417
.turnin 9983
..accept 9991 |tip Makes sure you're not mounted, or you will have to abandon and re-accept the quest.
step
.' Forge Camps Surveyed. |q 9991/1
step
goto 27.3,43.1
.talk 18417
..turnin 9991
..accept 9999
step
goto 25.2,38.3
.kill 2 Felguard Legionnaire##17152+ |q 9999/1
.kill 3 Mo'arg Engineer##16945+ |q 9999/2
.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto 23.6,34.6
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto Nagrand,55.5,37.6
.talk 18063
.turnin 9868
step
goto 55.5,37.6
.talk 18106
..accept 9888
step
goto Terokkar Forest,19.8,60.9
.talk 18273
..turnin 9888
..accept 9889
step
goto 20,63.1
.kill 10 Boulderfist Invader##18260+ |q 9889/1
step
goto 20,63.1
.' Fight Unkor the Ruthless until he submits |q 9889/2
.talk 18262
..turnin 9889
..accept 9890
step
goto 19.8,60.9
.talk 18273
..turnin 9890
..accept 9891
step
goto Nagrand,55.5,37.6
.talk 18106
..turnin 9891
..accept 9906
step
goto 72.9,69.8
.kill 8 Boulderfist Mystic##17135+ |q 9906/1
.kill 8 Boulderfist Crusher##17134+ |q 9906/2
step
goto 55.5,37.6
.talk 18106
..turnin 9906
..accept 9907
step
goto 40.8,31.5
.kill 10 Boulderfist Warrior##17136+ |q 9907/1
.kill 10 Boulderfist Mage##17137+ |q 9907/2
step
goto 55.5,37.6
.talk 18106
..turnin 9907
..accept 10107
step
goto 73.8,62.6
.talk 18261
.' Listen to his story
.' Hear the story of the Blademaster |q 10107/1
.turnin 10107
..accept 9928
..accept 9927
step
goto 71.4,79.4
.click the Kil'sorrow Armaments##6959 |tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
.' Kill 10 Kil'sorrow Agents |q 9935/2
.' Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 46.5,24.3
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.' Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658 |tip It looks like a big burning bonfire.
.' Defend the 2 ogres that spawn until they finish placing corpses around
.' Plant the Kil'sorrow Bodies |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9934
step
goto 55.5,37.6
.talk 18063
..turnin 9934
step
goto Shattrath City,77.3,34.9
'Talk to Sal'salabim
..' Tell him Altruis sent you
.from Sal'salabim##18584
.' Persuade Sal'salabim |q 10004/1
step
goto 77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.4
'Talk to Raliq the Drunk
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Raliq the Drunk##18585
.get Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.8,91.2
'Talk to Coosh'coosh
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Coosh'coosh##18586
.get Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.6,58.1
'Talk to Floon
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Floon##18588
.get Floon's Debt |q 10009/3
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto 25.0,36.1
.from Demos\,\ Overseer of Hate##18535
.collect Fel Cannon Activator##25770 |q 10011
step
goto 25.1,36.0
.' Use your Fel Cannon Activator on the Fel Cannon: Hate |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from Xirkos\,\ Overseer of Fear##18536
.collect Fel Cannon Activator##25771 |q 10011
step
goto 19.4,50.8
.' Use your Fel Cannon Activator on the Fel Cannon: Fear |use Fel Cannon Activator##25771
.' Destroy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
goto 55.4,37.6
.talk 18063
..accept 10044
step
goto 56.7,34.3
.talk 18141
..' Tell her Garrosh told you she wanted to speak to you
.' Listen to Greatmother Geyah |q 10044/1
step
goto 56.7,34.3
.talk 18141
..turnin 10044
..accept 10045
step
goto 58.7,53.8
.click a Telaari Frond |tip They look like bushy grass plasnts on the ground in this canyon.
.get Telaari Frond |q 10045/3
step
goto Terokkar Forest,32.7,38.5
.click Olemba Roots |tip They look like tangled thick tree roots on the ground at the base of trees around this area.
.get Olemba Root |q 10045/1
step
goto Blade's Edge Mountains,39.6,72.4
.click a Dragonspine |tip They look like red leafy plansts on the ground around this area.  They are usually next to the big spike rock formations.
.get Dragonspine |q 10045/4
step
goto Zangarmarsh,20.0,8.6
.click a Marshberry |tip They look like big red balls on the ground around this area.
.get Marshberry |q 10045/2
step
goto Nagrand,56.7,34.3
.talk 18141
..turnin 10045
..accept 10081
step
goto 26.1,60.6
.talk 18687
..turnin 10081
..accept 10082
step
goto 26.4,60.3
.kill 8 Agitated Orc Spirit##18043+ |q 10082/1
step
goto 26.1,60.6
.talk 18687
..turnin 10082
..accept 10085
step
goto 31.6,43.7
.' Go to this spot
.' Visit Sunspring Post |q 10085/1
step
goto 46.7,23.6
.' Go to this spot
.' Visit the Laughing Skull Clan Ruins |q 10085/2
step
goto 54.6,36.1
.' Go to this spot
.' Visit Garadar |q 10085/3
step
goto Terokkar Forest,20.0,63.0
.' Go to this spot
.' Visit the Bleeding Hollow Clan Ruins |q 10085/4
step
goto Nagrand,26.1,60.6
.talk 18687
..turnin 10085
..accept 10101
step
goto 35.8,67.6 |n
.' Enter Oshu'gun |goto 35.8,67.6,0.5 |noway |c |q 10102
step
goto 35.5,77.8
.' Follow the path inside Oshu'gun
.talk 17545
..turnin 10101
..accept 10102
step
goto 35.8,67.6 |n
.' Leave Oshu'gun |goto 35.8,67.6,0.5 |noway |c |q 10102
step
goto Shattrath City,54.1,44.7
.talk 18481
..turnin 10102
..accept 10167
step
goto Auchenai Crypts 73.8,48.9
'Follow the path in the Auchenai Crypts dungeon to the very end
.kill Exarch Maladaar##18373 |q 10167/1
.talk 19412 |tip It's a big white floating alien being that appears after you kill Exarch Maladaar.
..turnin 10167
..accept 10168
.click a Soul Mirror |tip They look like big pink floating crystals near the walls inside the Auchenai Crypts dungeon.
.get Soul Mirror |q 10168/2
step
goto Nagrand,35.9,66.3
.' Use your Soul Mirror on Ancient Orc Ancestors |use Soul Mirror##28283 |tip They are ghosts that walk from all around this area to the entrance of this cave.  You can find them quickly by searching all around this area.
.kill 15 Darkened Spirit##19480+ |q 10168/1
step
goto 26.1,60.6
.talk 18687
..turnin 10168
step
goto Terokkar Forest 35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10227
..accept 10228
step
goto Shattrath City,53.7,32.6
.talk 19715
|tip He walks around Shattrath in a big circle.
..turnin 10228
..accept 10231
step
goto 43.6,29.7
.talk 19720
.' Tell him Ezekiel said that you might have a certain book...
.' Beat down "Dirty" Larry for information |q 10231/1
..turnin 10231
..accept 10251
step
goto Nagrand,51.8,56.8
.talk 19844
..turnin 10251
..accept 10252
step
goto 30.1,64.2
.from Aged Clefthoof##17133+
.get Aged Clefthoof Blubber##28668 |q 10252/3
.' They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
goto 25.2,49.1
.from Mountain Gronn##19201+
..get Mountain Gronn Eyeball |q 10252/1
.' More can be found around [26.9,30.2], up and down the ramp
step
goto 30.9,32.9
.from Greater Windroc##17129+
..get Flawless Greater Windroc Beak |q 10252/2
step
goto 51.8,56.9
.talk 19844
..turnin 10252
..accept 10253
step
goto Terokkar Forest,39.6,71.3
.from Levixus##19847
.get 1 The Book of the Dead##28677 |q 10253/1
step
goto 35.1,66.2
.talk 19417
.turnin 10253
step
goto 31.1,76.5
.talk 22456
..accept 10877
step
goto 31.4,75.7
.talk 22364
..accept 10873
step
goto 43.9,76.4
.' Collect Restless Bones from the ground as you travel
.' Click the Massive Treasure Chest
..get the Dread Relic |q 10877/1
step
goto 49.7,76.2
.talk 22462
..accept 10920
step
goto 52.6,78.5
.kill 20 Dreadfang Widow##18467+ |q 10920/1
step
goto 49.7,76.2
.talk 22462
..turnin 10920
..accept 10921
step
goto 49.7,76.2
.talk 22462
..turnin 10921
..accept 10926
step
goto 31.1,76.5
.talk 22456
..turnin 10877
..accept 10923
step
goto 50.0,67.8
.from Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
.collect 20 Doom Skull##31812 |q 10923
step
goto 48.7,67.2
.' Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811 |tip It looks like a purple glowing symbol on the ground.
.kill Teribus the Cursed##22441+ |q 10923/1
step
goto 31.1,76.5
.talk 22456
..turnin 10923
step
goto Shadowmoon Valley 36.4,56.9
.talk 21937
..accept 10680
step
goto 42.2,45.1
.talk 21024
..turnin 10680
..accept 10458
step
goto 46.5,46.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Earth Spirit##21050+
.' Capture 8 Earthen Souls |q 10458/1
.from Enraged Fire Spirit##21061+
.' Capture 8 Fiery Souls |q 10458/2
step
.goto 42.2,45.1
.talk 21024
..turnin 10458
..accept 10480
step
goto 45.8,27.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Water Spirit##21059+ |tip You can find them in the pools of water.
.' Capture 5 Watery Souls |q 10480/1
step
goto 42.2,45.1
.talk 21024
..turnin 10480
..accept 10481
step
goto 59.9,69.1
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs near the totems you plant.
.from Enraged Air Spirit##21060+
.' Capture 10 Air Souls |q 10481/1
step
goto 42.2,45.1
.talk 21024
..turnin 10481
..accept 10513
step
goto 53.9,23.5
.talk 21183
..turnin 10513
..accept 10514
step
goto 53.5,17.3
.' Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462 |tip They look like carrots sticking out of the ground around this area.
.' A boar will run over and eat the tuber
.' Click the Shadowmoon Tuber's that spawn
.get 10 Shadowmoon Tuber |q 10514/1
step
goto 53.9,23.5
.talk 21183
..turnin 10514
..accept 10515
step
goto 56.1,15.8
.click Ravenous Flayer Egg##477  |tip They look like brown spiked eggs on the ground around this area.
.' Destroy 10 Ravenous Flayer Eggs |q 10515/1
step
goto 53.9,23.5
.talk 21183
..turnin 10515
..accept 10519
step
goto 53.9,23.5
.talk 21183
..' Tell him you are ready to listen to his story
.' Listen to the Cipher of Damnation - History and Truth |q 10519/1
step
goto 53.9,23.5
.talk 21183
..turnin 10519
..accept 10521
..accept 10527
..accept 10546
step
goto 44.5,23.6
.talk 21291
..turnin 10521
..accept 10522
step
goto 52.6,27.4
.from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
.collect Coilskar Chest Key##30426 |n
.' Click Coilskar Chests |tip They look like big gray stone containers around this area.
.get First Fragment of the Cipher of Damnation |q 10522/1
step
goto 44.5,23.6
.talk 21291
..turnin 10522
..accept 10523
step
goto 53.9,23.5
.talk 21183
..turnin 10523
step
goto 29.6,50.4
.talk 21292
..turnin 10527
..accept 10528
step
goto 28.0,47.5
.from Painmistress Gabrissa##21309+
.get Crystalline Key |q 10528/1
step
goto 29.6,50.4
.talk 21292
..turnin 10528
step
goto 29.5,50.5
.talk 21318
..accept 10537
step
goto 29.6,50.3
.from Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+
.get Lohn'goron, Bow of the Torn-Heart |q 10537/1
step
goto 29.5,50.5
.talk 21318
..turnin 10537
..accept 10540
step
goto 30.7,58.3
.' Walk with the Spirit Hunter to this spot
.from Veneratus the Many##20427
.get Second Fragment of the Cipher of Damnation |q 10540/1
step
goto 29.5,50.5
.talk 21318
..turnin 10540
..accept 10541
step
goto Shadowmoon Valley,53.9,23.5
.talk 21183
..turnin 10541
step
goto 47.6,57.2
.talk 21293
..turnin 10546
..accept 10547
step
goto 44.8,58.2
.click Rotten Arakkoa Egg##7138 |tip They look like small pink-ish eggs with green steam rising off of them on the ground around this area.
.get Rotten Arakkoa Egg |q 10547/1
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
step
goto Shadowmoon Valley,47.6,57.2
.talk 21293
..turnin 10550
..accept 10570
step
goto 49.0,57.5
.' Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
.from Envoy Icarius##21409
.get Stormrage Missive |q 10570/1
step
goto 47.6,57.2
.talk 21293
..turnin 10570
..accept 10576
step
goto 49.3,60.5
.from Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
.get 6 Eclipsion Armor |q 10576/1
step
goto 47.6,57.2
.talk 21293
..turnin 10576
..accept 10577
step
goto 45.3,68.2
.' Use your Blood Elf Disguise |use Blood Elf Disguise##30639
.' Talk to Grand Commander Ruusk at [46.5,71.9]
.' Deliver Illidan's Message |q 10577/1
step
goto 47.6,57.2
.talk 21293
..turnin 10577
..accept 10578
step
goto 61.4,57.0
.from Ruul the Darkener##21315
.get Third Fragment of the Cipher of Damnation |q 10578/1
step
goto 47.5,57.2
.talk 21293
..turnin 10578
..accept 10579
step
goto 53.9,23.5
.talk 21183
..turnin 10579
..accept 10588
step
goto 43.1,44.9
.' Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
.' Go to [42.8,44.7]
.talk 21183 |tip It may take a minute or so for him to show up.
..' Tell him you are ready.
.' Follow Oronok Torn-heart
.kill Cyrukh the Firelord##21181 |q 10588/1
step
goto 42.2,45.1
.talk 21024
..turnin 10588
step
goto Shattrath City,54.8,44.3
.talk 18166
..accept 10883
step
goto 54.0,44.8
.talk 18481
.turnin 10883
..accept 10884
..accept 10885
..accept 10886
..' These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz.
step
'Before you enter The Shattered Halls, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Shattered Halls 34.2,55.3
.from Grand Warlock Nethekurse##16807
.' After you Kill Grand Warlock Nethekurse run through this doorway to gain _Korgath's Executioner Buff_ |havebuff Interface\Icons\Ability_Warrior_Cleave
|only if not completedq(10884)
step
goto The Shattered Halls 67.2,65.8
'Kill your way to the end of the instance.
.' After the first boss you will have 55 minutes to clear your way to the last boss.
.from Shattered Hand Executioner##17301
.get Unused Axe of the Executioner##31716 |q 10884/1
step
'Before you enter The Steavmvault, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Steamvault 80.6,43.6
.' In order to reach the final boss you will need to kill the other bosses.
.from Warlord Kalithresh##17798
.get Kalithresh's Trident##31721 |q 10885/1
step
'Before you enter Shadow Labyrinth, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way to Murmur at the end of the instance.
goto Shadow Labyrinth 81.2,39.2
.from Murmur##18708
.get Murmur's Essence##31722 |q 10885/2
step
'Before you enter The Arcatraz, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
goto The Arcatraz/3 62.8,30.6
'Fight your way to the end of the instance.
.from Harbinger Skyriss##20912
.' Defeat Harbinger Skyriss and make sure Millhouse lives.
.' Rescue Millhouse Manastorm. |q 10886/1
'|talk Millhouse Manastorm##20977
step
goto Shattrath City 54.0,44.8
.talk 18481
..turnin 10884
..turnin 10885
..turnin 10886
step
goto Netherstorm 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 57.6,63.9
.click Box Surveying Equipment##6881
.get 10 Box of Surveying Equipment |q 10267/1
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
.turnin 10276
..accept 10280
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10280
..accept 10704
step
'Before you enter The Mechanar, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way through the instance.
goto The Mechanar 28.52,60.6
.from Pathaleon the Calculator##19220
.get Bottom Shard of the Arcatraz Key##31086 |q 10704/2
step
'Before you enter The Botanica, set your Dungeon Difficulty to _Heroic 5 Man_. |only if not heroic_dung() |confirm
'Kill your way through the instance.
goto The Botanica 34.0,37.8
.from Warpsplinter##17977
.get Top Shard of the Arcatraz Key##31085 |q 10704/1
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10704
step
goto Shadowmoon Valley 56.3,59.6
.talk 21955
..accept 10683
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
only if rep ('The Aldor') >= Friendly
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
only if rep ('The Scryers') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
only if rep ('The Aldor') >= Friendly
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
only if rep ('The Scryers') >= Neutral
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
only if rep ('The Aldor') >= Friendly
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
only if rep ('The Scryers') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
only if rep ('The Aldor') >= Friendly
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
only if rep ('The Scryers') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
only if rep ('The Aldor') >= Friendly
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
only if rep ('The Scryers') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
only if rep ('The Aldor') >= Friendly
step
goto 57.3,49.6
.talk 21826
..turnin 10686
..accept 10622
only if rep ('The Scryers') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10575
..accept 10622
only if rep ('The Aldor') >= Friendly
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.5,49.8,0.5 |noway |c |q 10622
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c |q 10622
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c |q 10628
step
goto 58.1,48.2
.talk 21700
.turnin 10628
..accept 10705
step
goto The Arcatraz/3 31.7,24.9
.clicknpc Udalo##21962 |tip It is in the room before Harbinger Skyriss, the final boss of the instance.
.turnin 10705
..accept 10706
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10706
..accept 10707
step
goto Shadowmoon Valley,71.3,35.6
.from Shadowmoon Soulstealer##22061+ |tip There will be 3 of them.
.' Once you kill him, it will trigger an event. Kill ther Shadowmoon Retainers that spawn.
|tip You can also attack Deathwail flying above you.
.from Shadowlord Deathwail##22006+
.get Heart of Fury##31307 |q 10707/1
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10707
..accept 11052
step
goto 53.3,59.0
.from Val'zareq the Conqueror##21979 |tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
.collect The Journal of Val'zareq##31345 |n
.' Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
..accept 10793
step
goto 51.4,72.8
.click Crystal Prison##6905
.turnin 10793
..accept 10781
step
'Fight off the waves of enemies that come.
.' Crimson Sigil Forces Annihilated. |q 11052/1
step
goto Shattrath City,54,44.8
.talk 18481
.turnin 10781
..turnin 11052
step
'At this point, you will need to grind for reputation. You can farm reputation in the instances below:
.' The Mechanar
.' The Botanica
.' and The Arcatraz.
..' Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day.
.' Reach Exalted with The Sha'tar |condition rep("The Sha'tar")==Exalted
step
label exalted
'Congratulations, you're now exalted with The Sha'tar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Aldor",[[
description This guide will walk you through becoming
description Exalted with The Aldor faction.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10551 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10554
step
goto 41.7,38.6 |n
.' Ride the elevator up to the Aldor Rise |goto Shattrath City,41.7,38.6,0.5 |noway |c |q 11038
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
goto 30.7,34.6
.talk 18537
.accept 10325
..accept 10653
step
goto 24,29.7
.talk 18538
..turnin 10554
..accept 10021
..accept 10420
step
goto 64.5,15.1
.talk 18597
.accept 10020
step
goto Terokkar Forest,39.0,59.7
.from Cabal Spell-weaver##21902+,Cabal Initiate##21907+,Cabal Skirmisher##21661+
..collect 10 Mark of Kil'jaeden##29425
step
goto Terokkar Forest,49.2,20.3
.click the Eastern Altar
.' Purify the Eastern Altar |q 10021/2
step
goto 50.7,16.6
.click the Northern Altar
.' Purify the Northern Altar |q 10021/1
step
goto 48.1,14.5
.click the Western Altar
.' Purify the Western Altar |q 10021/3
step
goto Terokkar Forest,61.3,25.3
from Stonegazer##18648+
.get Stonegazer's Blood |q 10020/1
step
goto Shattrath City 30.7,34.6
.talk 18537
.turnin 10325
step
goto 64.5,15.1
.talk 18597
.turnin 10020
step
goto Shattrath City,24,29.7
.talk 18538
..turnin 10021
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
goto Netherstorm 32.1,64.2
.talk 19466
.turnin 11038
..accept 10241
step
goto 26.3,66.7
.kill 8 Sunfury Magister##18855+ |q 10241/1
.kill 8 Sunfury Bloodwarder##18853+ |q 10241/2
step
goto 32.1,64.2
.talk 19466
..turnin 10241
..accept 10313
step
goto 32.1,64.2
.talk 19467
..accept 10243
step
goto 25.7,60.6
.' Stand next to the Northern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Northern Pipeline |q 10313/1
step
goto 20.9,66.9
.' Stand next to the Western Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Western Pipeline |q 10313/4
step
goto 20.7,70.7
.' Stand next to the Southern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Southern Pipeline |q 10313/3
step
goto 23.2,68.2
.click the B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
..turnin 10243
..accept 10245
step
goto 29,72.7
.' Stand next to the Eastern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Eastern Pipeline |q 10313/2
step
goto 32.1,64.2
.talk 19466
..turnin 10313
step
goto 32.1,64.2
.talk 19467
..turnin 10245
..accept 10299
step
'Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10299/2
step
goto 23.2,68.1
.' Kill all Warp-Engineers in the nearest area to make your life easier.
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10299/1
step
goto 32.1,64.2
.talk 19467
..turnin 10299
..accept 10321
step
goto 32.1,64.2
.talk 19466
..accept 10246
step
goto 45.9,79.4
.kill 8 Sunfury Arcanist##20134+ |q 10246/2
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.kill 5 Sunfury Researcher##20136+ |q 10246/1
.' Kill Overseer Seylanna
.collect Coruu Access Crystal##29396 |q 10321
.click the Coruu Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
.' Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10321/1
step
goto 32.1,64.2
.talk 19467
..turnin 10321
..accept 10322
step
goto 32.1,64.2
.talk 19466
..turnin 10246
..accept 10328
step
goto 57.9,63.4
.from Sunfury Conjurer##20139+
.get 1 Sunfury Arcane Briefing|q 10328/2
.from Sunfury Bowman##20207+, Sunfury Centurion##20140+
.get 1 Sunfury Military Briefing|q 10328/1
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10322/2
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10322/1
step
goto 32.1,64.2
.talk 19466
..turnin 10328
..accept 10431
step
goto 32.1,64.2
.talk 19467
.turnin 10322
..accept 10323
step
goto 34.8,38.3
.talk 20780
..turnin 10431
..accept 10380
step
goto 30.8,40.8
.kill 3 Daughter of Destiny##18860+ |q 10380/2
step
goto 26.4,42.3
.kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1
.kill 6 Mo'arg Warp-Master##20326+ |q 10380/3
step
goto 26.7,36.8 |tip It's inside Manaforge Ara.
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10323/2
step
goto 26.0,38.8
.click the Ara Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10323/1
step
goto 34.8,38.3
.talk 20780
..turnin 10380
..accept 10381
step
goto 32.1,64.2
.talk 19466
..turnin 10381
step
goto 32.0,64.2
.talk 19467
.turnin 10323
..accept 10407
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10407/1
step
goto 38.0,27.4
.from Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
.collect 10 Mark of Sargeras##30809+ |q 10653/1
..collect 1 Fel Armament |q 10420/1
'More can be found at :
.' [40.4,22.9]
.' [42.4,21.5]
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10407/2
step
goto 32.0,64.2
.talk 19467
.turnin 10407
..accept 10410
step
goto Shattrath City,30.8,34.6
.from Adyen the Lightwarden##18537+
..turnin 10653
step
goto 24,29.7
.talk 18538
.turnin 10410
.turnin 10420
..accept 10409
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
.collect 1 Voren'thal's Presence##30259 |q 10409
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Defeat Socrethar.
.' Deathblow to the Legion. |q 10409/1
|modelnpc Socrethar##20132
step
goto Shattrath City 24,29.7
.talk 18538
.turnin 10409
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.accept 10587
step
goto 61.2,29.1
.talk 21822
..accept 10619
step
goto 62.6,28.4
.talk 21402
..accept 10568
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10619/1
.kill 4 Ashtongue Warrior##21454+ |q 10619/2
.kill 6 Ashtongue Shaman##21453+ |q 10619/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
step
goto 61.2,29.1
.talk 21822
..turnin 10619
..accept 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
step
goto 61.2,29.2
.talk 21860
.turnin 10587
..accept 10637
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10816/1
.kill 8 Shadowmoon Chosen##22084+ |q 10816/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10637/1
step
goto 61.2,29.2
.talk 21860
.turnin 10637
..accept 10640
step
goto 61.2,29.1
.talk 21822
..turnin 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
step
goto 57.3,49.6
.talk 21826
..turnin 10575
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
.turnin 10646
..accept 10649
step
goto Terokkar Forest,39.6,71.0 |n
'Click the doors to the Shadow Labyrinth.
.' Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
'Kill through the instance until you reach Blackheart the Inciter.
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10650
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
..accept 10651
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10651/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10651/4
step
goto 72.2,53.7
.kill Varedis##21178 |q 10651/1
.' When he begins to cast _Metamorphosis_, you will need to use your _Book of Fel Names_ to weaken him. |use Book of Fel Names##30854
step
goto 72.4,48.4
.kill Theras##21168 |q 10651/3
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
step
'At this point, you will need to grind repeatable quests.
.'You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras.
..' Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks.
'Click here to proceed. |confirm
step
label farming
goto Shadowmoon Valley 22.5,34.6
.from Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
.collect Mark of Sargeras###30809 |tip You will need to collect these in multiples of 10.
.collect Fel Armament##29740
'When you're ready to turn in, click here. |confirm
step
label marks
goto Shattrath City,30.8,34.6
.talk 18537
.accept 10654 |n
.' Click here to go back to farming. |next "farming" |confirm
.' Click here to turn in Fel Armaments |next "fel" |confirm
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted"
step
label fel
goto 24.0,29.7
.talk 18538
.accept 10421 |n
.' Click here to go back to farming. |next "farming"
.' Click here to turn in Marks of Sargeras |next "marks"
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with The Aldor.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Scryers",[[
description This guide will walk you through becoming
description Exalted with The Scryers faction.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210 |tip She is the big glowing floating being in the middle of the room.
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10552 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10553
step
goto 50.0,62.9 |n
.' Ride the elevator up to the Scryer Rise |goto Shattrath City,50.0,62.9,0.3 |noway |c |q 10553
step
goto 45.2,81.5
.talk 18531
.accept 10412
.accept 10656
step
goto 42.8,91.7
.talk 18530
.turnin 10553
..accept 10416
step
goto Shattrath City,44.6,76.4
.talk 23272
..accept 11039
step
goto Netherstorm,32,64
.talk 19468
.turnin 11039
..accept 10189
step
goto 27.8,65
.from Captain Arathyn##19635 |tip He walks around this area on a big purple bird.
.get B'naar Personnel Roster |q 10189/1
step
goto 32,64
.talk 19468
..turnin 10189
..accept 10193
.talk 19469
..accept 10204
only if rep ('The Scryers') >= Friendly
step
goto 26.3,66.7
.from Sunfury Magister##18855+
.collect Bloodgem Shard |n
.' Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
.' Siphon the Bloodgem Crystal |q 10204/1
.kill 8 Sunfury Geologist##19779+ |q 10193/3
step
goto 26.9,70.5
.kill 2 Sunfury Warp-Master##18857+ |q 10193/1
.kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2
..get 10 Sunfury Signet##30810 |q 10656/1
step
goto 32,64
.talk 19468
..turnin 10193
..accept 10329
.talk 19469
..turnin 10204
step
goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10329/2
step
goto 23.2,68.1
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10329/1
step
goto 32,64
.talk 19468
..turnin 10329
..accept 10194
step
goto 33.8,64.2
.talk 20162
..turnin 10194
..accept 10652
..' Tell her you're as ready as you'll ever be.
..'You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
step
goto 48.2,86.6
.talk 19840
..turnin 10652
..accept 10197
step
goto 47.7,84.9
.from Sunfury Arcanists##20134+
.get Sunfury Arcanist Robes |q 10197/3
step
goto 49,81.5
.from Sunfury Researcher##20136+
.get Sunfury Researcher Gloves |q 10197/1
step
'Go outside to 50.8,83.2 |goto 50.8,83.2
.from Sunfury Guardsmen##18850
.get Sunfury Guardsman Medallion |q 10197/2
step
goto 48.2,86.6
.talk 19840
..turnin 10197
..accept 10198
step
'Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise |use Sunfury Disguise##28607 |q 10198
step
'Go inside Manaforge Coruu to 48.2,84.1 |goto 48.2,84.1
.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
.' Listen to them talk
.' Gather the Information |q 10198/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10198
..accept 10330
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.' Kill Overseer Seylanna
.get Coruu Access Crystal |q 10330/2
.click the Coruu Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10330/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10330
..accept 10200
step
goto 32,64
.talk 19468
..turnin 10200
step
goto 32.0,64.0
.talk 19469
.accept 10341
.talk 19468
..accept 10338
only if rep ('The Scryers') >= Neutral
step
goto 57.9,63.4
.kill 8 Sunfury Conjurer##20139+ |q 10341/1
.kill 6 Sunfury Bowman##20207+ |q 10341/2
.kill 4 Sunfury Centurion##20140+ |q 10341/3
only if rep ('The Scryers') >= Friendly
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10338/2
only if rep ('The Scryers') >= Friendly
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10338/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10338
.talk 19469
..turnin 10341
..accept 10202
only if rep ('The Scryers') >= Friendly
step
goto 26.2,41.6
.talk 20920
..turnin 10202
..accept 10432
only if rep ('The Scryers') >= Friendly
step
.' Go inside Manaforge Ara to 27.1,39.2 |goto 27.1,39.2
.from Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+ |tip You can also find more outside of Manaforge Ara.
..get 8 Orders From Kael'thas |q 10432/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10432
..accept 10508
only if rep ('The Scryers') >= Friendly
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10508/1
only if rep ('The Scryers') >= Friendly
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10508/2
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
.turnin 10508
..accept 10509
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10509
..accept 10507
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10507
.collect 1 Voren'thal's Presence##30259 |q 10507
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Socrethar slain |q 10507/1
|modelnpc Socrethar##20132
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10507
step
goto Shadowmoon Valley,55.7,58.2
.talk 21954
..accept 10687
step
goto 56.3,58.8
.talk 22211
..accept 10824
step
goto 56.3,59.6
.talk 21955
..accept 10683
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.accept 10807
step
goto 51.7,65.6
.from Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
.get 10 Sunfury Signet |q 10824/1
step
goto 56.3,58.8
.talk 22211
..turnin 10824
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
.get 1 Arcane Tome##29739 |q 10416/1
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10807/1
.kill 4 Ashtongue Warrior##21454+ |q 10807/2
.kill 6 Ashtongue Shaman##21453+ |q 10807/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.turnin 10807
..accept 10817
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10817/1
.kill 8 Shadowmoon Chosen##22084+ |q 10817/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c |q 10686
step
goto 57.3,49.6
.talk 21826
..turnin 10686
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
goto Nagrand,27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
.turnin 10646
..accept 10649
step
goto Shadow Labyrinth 26.6,68.6
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10691
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10691
..accept 10692
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10692/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10692/4
step
goto 72.2,53.7
.'When Varedis gets low on health, use the _Book of Fel Names_ to defeat him. |tip He will become immune to normal attacks.
. ' Use Book of Fel Names |use Book of Fel Names##30854
.kill Varedis##21178 |q 10692/1
step
goto 72.4,48.4
.kill Theras##21168 |q 10692/3
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10692
step
goto Shattrath City,45.2,81.5
.talk 18531
.turnin 10412
.turnin 10656
.' After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm.
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10416
'When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
|next "exalted" |only if rep('The Scryers')==Exalted
step
label farming
goto Netherstorm,27.8,72.6
.from Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
.collect 1 Arcane Tome##29739 |n |tip You can turn in one of these at a time.
.collect 10 Sunfury Signet##30810 |n |tip You will need to collect multiples of 10.
'  You can find more around [25.7,67.2]
.' Click here when you're ready to turn in. |confirm
step
label signets
goto Shattrath City,45.2,81.5
.talk 18531
.accept 10658 |n
.' Click here to turn in Arcane Tomes |next "tomes" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label tomes
goto Shattrath City,42.8,91.7
.talk 18530
.accept 10419 |n
.' Click here to turn in Sunfury Signets |next "signets" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Scryers!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\Ashtongue Deathsworn",[[
achieveid 958
step
'This reputation can be earned by running The Black Temple raid.
'A full clear will grant roughly 8200 reputation.
|confirm
step
label start
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
goto Black Temple/2 21.9,59.5
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with Ashtongue Deathsworn |condition rep('Ashtongue Deathsworn')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Ashtongue Deathsworn!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Violet Eye",[[
achieveid 960
step
'This reputation can be earned by running the Karazhan raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Deadwind Pass,47.0,74.8 |n
.' Enter _Karazhan_ here |goto Karazhan |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with The Violet Eye |condition rep('The Violet Eye')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Violet Eye!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Outland\\The Scale of the Sands",[[
achieveid 959
step
'This reputation can be earned by running the Caverns of Time: Hyjal Summit raid.
'A full clear will grant roughly 7800 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Hyjal Summit 10.5,65.1
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Earn Exalted status with The Scale of the Sands |condition rep('The Scale of the Sands')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Scale of the Sands!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually the Crusader Title.
daily
step
#include "Argent Tourney_Aspirant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section and gain the Crusader Title.
daily
step
#include "Argent Tourney_Valiant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Argent Crusade Reputation",[[
author support@zygorguides.com
description This guide will help reach Exalted with the Argent Crusade.
achieveid 947
#include "H_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Kalu'ak",[[
description This step will lead you up to the Daily Quest portion
description of the Kalu'ak.
achieveid 949
#include "Kaluak_Rep"
step
label exalted
'Congratulations, you are Exalted with the Kalu'ak!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\The Wyrmrest Accord",[[
description This guide will walk you through earning exalted with
description They Wyrmrest Accord faction.
achieveid 1007
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto Borean Tundra,24.3,34.1
.kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |tip You can find them all around Coldarra.
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.collect 1 Scintillating Fragment|n
.'Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
..accept 11941
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
..turnin 11941
..accept 11943
step
goto 24.1,29.6
.from Coldarra Wyrmkin##25728+
.collect 5 Frozen Axe |q 11936
step
goto 24.1,29.6
.from Warbringer Goredrak##25712
.get Energy Core|q 11943/1
step
goto 27.3,20.5
.from General Cerulean##25716
.get Prison Casing|q 11943/2
step
goto 27.8,24.2
.click Blue Dragon Egg##7247+
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
..turnin 11943
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |tip They are flying above you in the sky. |modelnpc Nexus Drake Hatchling##26127
.' Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11919
step
goto 33.3,34.5
.' Capture the Nexus Drake |q 11919/1
.talk 26117
..turnin 11919
..accept 11931
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26237
..accept 11946
..turnin 11946
..accept 11951
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.get 3 Shimmering Rune|q 11931/1
step
goto 32.7,27.8
.from Inquisitor Caleras##25720
.get Azure Codex|q 11931/2
step
goto 28.8,30.0
.click Crystallized Mana##5013
.get 10 Crystallized Mana Shard|q 11951/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26237
..turnin 11951
..accept 11957
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.'Tell her you are ready to face Saragosa|goto 21.2,22.5,0.5|noway|c |q 11957
step
'She teleports you to a platform
.click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
.from Saragosa##26231
.get Saragosa's Corpse|q 11957/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
..turnin 11957
..accept 11967
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.' Tell her to return you to Transitus Shield|goto 33.3,34.4,0.5|noway|c |q 11967
step
goto 33.3,34.5
.talk 26117
..turnin 11931
..turnin 11967
..accept 11969
step
goto 25.4,21.7
.' Use Raelorasz' Spark next to the Signal Fire|use Raelorasz' Spark##44950|model Signal Fire##1967
.' Watch the cutscene
.' Lure Malygos |q 11969/1
step
goto 33.3,34.5
.talk 26117
..turnin 11969
step
goto The Nexus,36.2,81.4
.talk 55531
.accept 11973
step
.kill Keristrasza##26206 |q 11973/1 |tip She's at the center of the Nexus.  You won't be able to activated her until you kill the other bosses of The Nexus.
step
goto 36.2,81.4
.talk 55531
.turnin 11973
step
goto The Oculus 62.8,44.1
.accept 13124
step
goto The Oculus,38.4,51.0
'Fight the mobs up until this point, and click the Nexus Portal.
.' Click here to continue. |confirm |q 13124
step
.kill Drakos the Interrogator##27654 |n
.talk 27658 |tip You will only be able to talk to him after Drakos is dead.
..turnin 13124
..accept 13126
step
'Take to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence. |tip You will only be able to get one type of Dragon Essence.
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
..' Click here to proceed. |confirm |q 13126
step
' You will need to kill 10 Constructs to proceed.
.' You can find them on the platforms above you.
.' You also need to kill constructs at the center ring.
..' Once you've killed all constructs, click here to continue. |confirm |q 13127
step
.kill Varos Cloudstrider##27447 |q 13126/2
' Once you kill him Belgaristrasz appears.
.talk 28012
.turnin 13126
.accept 13127
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
.' Fly up another level to the ring above. Click here to proceed. |confirm |q 13127
step
'Kill Mage-Lord Urom on all 3 platforms.
.' Once you kill the Fake Mage-Lord Urom, fly to the center.
.kill Mage-Lord Urom##27655 |q 13127/1
step
.talk 28012
.turnin 13127
..accept 13128
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
.' Fly up to the top of the construct. Once there, click here to continue. |confirm |q 13128
step
'Once at the top, use your dragons abilities to kill Ley-Guardian Eregos.
.kill Ley-Guardian Eregos##27656 |q 13128/1
step
goto Borean Tundra,33.3,34.5
.talk 26117
.turnin 13128
step
goto Borean Tundra,33.5,34.4
.talk 26110
.accept 13412
step
goto 29.5,24.8 |tip You will have to fly up pretty high to the floating platforms.
.talk 32548
.turnin 13412
..accept 13413
step
.' Tell Corastrasza you have the courage to face Malygos drakes
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elite##32534 |q 13413/1
step
goto 29.5,24.8|n
.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c |q 13413
step
goto 29.5,24.8
.talk 32548
..turnin 13413
step
'Once you do this, you will be able to do the Daily version of Aces High.
|confirm |q 11999
step
goto Dragonblight,38.1,46.2
.talk 26471
.accept 11999
step
'Go outside the cave and southwest to 22.3,54.1|goto 22.3,54.1
.'Loot the Dead Mage Hunters around the area.
.collect Mage Hunter Personal Effects##35792 |q 11999
.' Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
.get Moonrest Gardens Plans|q 11999/1
step
goto 38.1,46.2
.talk 26471
..turnin 11999
step
'Go inside the building to 19.4,58.1|goto 19.4,58.1
.from Goramosh##26349
.collect Goramosh's Strange Device##36746 |q 12059
.click Goramosh's Strange Device|use Goramosh's Strange Device##36746
..accept 12059
step
goto 38.1,46.2
.talk 26471
.turnin 12059
..accept 12061
step
goto 22.2,54.8
.' Use your Surge Needle Teleporter anywhere inside Moonrest Gardens|use Surge Needle Teleporter##36747
.' Move toward the center of the platform you get teleported onto
.' Observe the Object on the Surge Needle |q 12061/1
step
'Use your Surge Needle Teleporter to go back down to the ground|goto 22.6,57.0,0.3|use Surge Needle Teleporter##36747|noway|c |q 12061
step
goto 38.1,46.2
.talk 26471
..turnin 12061
..accept 12066
step
goto 26.4,65
.from Captain Emmy Malin##26762
.collect Ley Line Focus Control Ring##36751 |q 12066
.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |q 12066/1
step
goto 38.1,46.2
.talk 26471
..turnin 12066
..accept 12084
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
.' Retrieve Ley Line Focus information |q 12084/1
step
goto 38.1,46.2
.talk 26471
..turnin 12084
..accept 12106
step
goto 40.3,66.9
.clicknpc Mage-Commander Evenstar##26873
|tip It's a body floating underwater.
..turnin 12106
..accept 12110
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
.' Retrieve Ley Line Focus information |q 12110/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2
step
goto 38.1,46.2
.talk 26471
..turnin 12110
..accept 12122
step
goto 57.9,54.2
.talk 26443
..turnin 12122
..accept 12767
step
goto 58,55.4
.talk 27804
..turnin 12767
..accept 12461
step
goto 43,50.9
.talk 27763
..turnin 12461
..accept 12448
step
goto 52.7,46.2
.' Help kill the following:
.kill Frigid Ghoul Attacker##27685 |q 12416/1
.kill 8 Frigid Geist Attacker##27686 |q 12416/2
.kill 1 Frigid Abomination Attacker##27531 |q 12416/3
.' You can find more of these at [50.9,52.4]
step
'Go up the hill to 43,50.9|goto 43,50.9
.talk 27763
..turnin 12448
..accept 12449
step
goto 46.7,52.8
.click Ruby Acorn##5746
.collect Ruby Acorns##37727 |q 12449
.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |q 12449/1
step
goto 43,50.9
.talk 27763
..turnin 12449
..accept 12450
step
goto 48.2,47.8
.kill 6 Frigid Necromancer##27539+ |q 12450/1
step
goto 47.7,49.1
.' Go inside the tree trunk
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |q 12450/2
step
'Go out of the valley to 43.0,50.9|goto 43.0,50.9
.talk 27763
..turnin 12450
..accept 12769
step
goto 57.9,54.2
.talk 26443
..turnin 12769
..accept 12124
step
goto 57.9,54.2
.talk 26443
.' Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c |q 12124
step
goto 59.8,54.7
.talk 26917
..turnin 12124
..accept 12435
step
goto 59.2,54.3
.talk 27575
..turnin 12435
..accept 12372
step
goto 58.3,55.2
.talk 27629
.' Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon##27608+ |q 12372/1
.kill 5 Azure Drake##27682+ |q 12372/2
step
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
goto 42.6,40.8
.from Icefist##27004
.collect Emblazoned Battle Horn##36856 |q 12147
.' Click the Emblazoned Battle Horn in your bags |use Emblazoned Battle Horn##36856
..accept 12147
step
goto 60,55.2
.talk 26983
.turnin 12147
..accept 12148
step
goto 50.0,60.0
.from Bonesunder##27006
.get Emblazoned Battle Horn##26854 |q 12147/1
step
goto 60,55.2
.talk 26983
.turnin 12148
..accept 12149
step
goto 66.3,70.5
'He patrols around this area.  Search along the canyon until you find him.
.kill Bloodfeast##27008 |q 12149/2
step
goto 68.4,50.5
.kill Iceshatter##27007 |q 12149/1
step
goto 68.0,37.7
.kill Drakegore##27009 |q 12149/3
step
goto 60,55.2
.talk 26983
.turnin 12149
..accept 12150
step
goto 72.8,49.9
' Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord.
.' Name of the Magnataur Warlord revealed. |q 12150/1
step
goto 60,55.2
.talk 26983
.turnin 12150
..accept 12151
step
goto Dragonblight,57.1,76.2
'Use the Emblazoned Battle Horn at this location. |use Emblazoned Battle Horn##36864
.from Grom'thar the Thunderbringer##27002
..get Grom'thar's Head##36853 |q 12151/1
step
goto 60,55.2
.talk 26983
.turnin 12151
step
goto 60,54.5
.talk 27856
..accept 12470
step
goto 60.1,54.2
.talk 27765
..accept 12447
step
goto 71.7,38.9
.' Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
.' Fight the mobs that spawn
.' Protect the Hourglass of Eternity |q 12470/1
step
'Go inside the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12447
..accept 12262
..accept 12261
step
'Go outside the cave to 37.9,32.0|goto 37.9,32.0
.kill 6 Burning Depths Necrolyte##27356+ |q 12262/1
.kill 10 Smoldering Skeleton##27360+ |q 12262/2
step
goto 42.1,32
.' Use your Destructive Wards in this spot|use Destructive Wards##37445
.' Defend the Destructive Ward from the mobs that spawn
.' Fully Charge the Destructive Ward |q 12261/1
step
'Go west into the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12262
..turnin 12261
..accept 12263
step
'Follow the path in the cave while disguised as a cultist |goto 31.8,30.5
.' Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
'Follow the path back down |goto 35.2,30.0
.talk 26593
..turnin 12263
..accept 12264
..accept 12265
step
'Follow the path in the cave to 34.2,26.8|goto 34.2,26.8
.kill 3 Burning Depths Necromancer##27358+ |q 12264/1
.kill 6 Smoldering Construct##27362+ |q 12264/2
.kill 6 Smoldering Geist##27363+ |q 12264/3
.click Necromantic Runes on the ground|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
.' Destroy 8 Necromantic Runes |q 12265/1
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12264
..turnin 12265
..accept 12267
step
'Follow the path in the cave to 31.6,31.2|goto 31.6,31.2
.' Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539|tip Stand on the edge of the rock, next to the lava.
.kill Rothin the Decaying##27355 |q 12267/2
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12267
..accept 12266
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c |q 12266
step
goto 60.1,54.2
.talk 27765
..turnin 12266
step
goto 60,54.5
.talk 27856
.turnin 12470
step
goto 59.6,54.4
.talk 27785
..accept 12458
step
goto 63.3,71
.from Emerald Lasher##27254+
.get 3 Lasher Seed|q 12458/1
step
goto 63.7,71.9
.talk 27255
..accept 12454
step
goto 63.8,72.4
.kill 5 Emerald Skytalon##27244+ |q 12454/1 |tip They fly around over your head around the lake.
step
goto 63.7,71.9
.talk 27255
.turnin 12454
..accept 12456
step
goto Dragonblight,64.6,77.2
'Use Skytalon Molts at this spot. |use Skytalon Molts##37881
.from Alystros the Verdant Keeper##27249
..get The Plume of Alystros##37880 |q 12456/1
step
goto 63.7,71.9
.talk 27255
.turnin 12456
step
goto 59.6,54.4
.talk 27785
..turnin 12458
..accept 12459
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c |q 12459
step
goto 55.2,45.7
.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887|tip They fly around in the sky.
.kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1
step
goto 86.2,47
.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887|tip He's an abomination standing in a small room inside this abandoned fort.
.kill Weakened Turgid the Vile##27809 |q 12459/2
step
goto 89.5,19.1
.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887|tip He's standing on an undead looking platform.
.kill Weakened Overseer Deathgaze##27807 |q 12459/3
step
goto 59.6,54.4
.talk 27785
..turnin 12459
step
goto 47.7,49.1
.from Dahlia Suntouch##27680
.get Ruby Brooch|n
.click the Ruby Brooch in your bags|use Ruby Brooch##37833
..accept 12419
.click Ruby Lilac##7791
.get Ruby Lilac |q 12102/1
step
goto 59.8,54.7
.talk 27990
..turnin 12419
step
'At this point, you will need to buy the tabard from the vendor in Dragonblight.
..' Click here to proceed. |confirm
step
goto Dragonblight,59.9,53.0
.talk 32533
|tip She is at the top of the Temple.
.buy Tabard of the Wyrmrest Accord##43156
step
'Once you've bought the Tabard, you will have to run level 80 instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
' Become Exalted with The Wyrmrest Accord |condition rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label exalted
'Congratulation, you are now exalted with The Wyrmrest Accord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\The Oracles",[[
achieveid 951
step
#include "H_Oracles"
step
label daily
' During this next part you will fight a boss.
.' If you kill Zepik the Gorloc Hunter during the fight, you will be able to pick up the Oracle quest, and vice versa.
.' NOTE** This will decrease your Reputation with the _Frenzyheart Tribe_ to _Hated_
.from Zepik the Gorloc Hunter##28668
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28667
...accept 12689
...accept 12695
.' If you cannot accept this last quest click here to continue |confirm
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
goto 54.6,56.4
.talk 28027
..accept 12704
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |or
..accept 12737 |or
..accept 12736 |or
..accept 12726 |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |or
..accept 12762 |or
..accept 12705 |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide.  Keep in mind that they will not be reset by clicking here. |confirm |next "daily"
|next "exalted" |only if rep('The Orcales')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Oracles!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\The Frenzyheart Tribe",[[
achieveid 950
step
'Proceeding to Prequests |next |condition rep('Frenzyheart Tribe')<=Friendly |only if rep('Frenzyheart Tribe')<=Friendly
'Proceeding to Dailies |next "daily" |condition rep('Frenzyheart Tribe')>=Friendly |only if rep('Frenzyheart Tribe')>=Friendly
step
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c |q 12534
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
label daily
' During this next part you will fight a boss.
.' If you kill Jaloot during the fight, you will be able to pick up the Frenzyheart Tribe quest, and vice versa.
.' NOTE** This will decrease your Reputation with _The Oracles_ to _Hated_
.from Jaloot##28667
|confirm always
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless##28659 |q 12581/1
.click Artruis' Phylactery##4712
|tip This will spawn after the fight
..turnin 12581
..talk 28668
...accept 12582
...accept 12692
.' If you this quest is not available, clicke here to continue |confirm
step
goto 55.4,69.6
.talk 28138
.turnin 12692
step
goto 55.5,69.7
.talk 28138
..accept 12702
.' Tell him you need to find Goregek
.collect Goregek's Shackles##38619 |q 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12758 |or
..accept 12734 |or
..accept 12741 |or
..accept 12732 |or
step
goto 55.5,68.7
.talk 29146
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12703 |or
..accept 12760 |or
..accept 12759 |or
step
'They are all around the village
.' Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12702/1
step
goto 33.1,47.3
.from Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
.collect Venture Co. Explosives##39651 |q 12758
step
goto 26.0,35.4
.from Stormwatcher##28877+
.' Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
.' Click the Stormwatcher's Head that spawns
.get Stormwatcher's Head |q 12758/1
step
goto 59.7,70.9
.from Hardknuckle Charger##28096+
.' Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Hardknuckle Charger |q 12734/2
step
goto 59.3,75.7
.from Sapphire Hive Wasp##28086+
.' Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Sapphire Hive Wasp |q 12734/1
step
goto 43.1,40.4
.from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
.' Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
.' Blood your Blade on 3 Mistwhisper Members |q 12734/3
step
goto 26.5,35.1
.from Aqueous Spirit##28862+
.collect 3 Essence of the Monsoon##39616 |q 12741
.from Storm Revenant##28858+
.collect 3 Essence of the Storm##39643 |q 12741
step
goto 22.4,33.8
.' Stand right up next to the tall stone altar |tip You may even need to rub against, or stand next to it so that you are touching it.
.' Feel the True Power of the Tempest |q 12741/1
step
goto 59.7,23.9
.from Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
.collect Matriarch's Heartblood##39573 |q 12732
step
goto 33.8,52.1
.' Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
.collect Suntouched Water##39576 |n
.' Click the Suntouched Water in your bags |use Suntouched Water##39576
.get Suntouched Heartblood |q 12732/1
step
goto 31.6,69.5
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.collect Oracle Blood##39265 |q 12703
step
goto 23.3,83.0
.' Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 |tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
.' Take Control of Kartak |invehicle |c |q 12703
step
goto 30.7,78.0
.' Use Kartak's abilities to kill Oracle mobs around this area
.kill 50 Sparktouched Gorloc |q 12703/1
step
goto 30.1,70.7
.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.' Kill 30 Sparktouched Gorlocs |q 12760/1
step
goto 24.0,83.1
.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
.collect Spike Bomb##39697 |q 12759
.collect Ensnaring Trap##39695 |q 12759
.collect Volatile Trap##39696 |q 12759
step
goto 28.4,76.1
.' Use your Spike Bomb |use Spike Bomb##39697
.' Use your Ensnaring Trap |use Ensnaring Trap##39695
.' Use your Volatile Trap |use Volatile Trap##39696
.' Use your traps near Oracles mobs around this area
.' Kill 50 Sparktouched Gorlocs |q 12759/1
step
goto 23.4,83.3
.talk 28106
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12703
..turnin 12760
..turnin 12759
step
goto 55.5,69.7
.talk 28138
..turnin 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12758
..turnin 12734
..turnin 12741
..turnin 12732
step
'You will now have to run daily quests in order to gain reputation.
.' Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Kirin Tor",[[
achieveid 1008
step
goto Borean Tundra 45.3,33.3
.talk 25262
..accept 11587
step
goto 45,33.4
.talk 25291
..accept 11576
step
goto 40.5,39.2
.kill Beryl Mage Hunter##25585+ |n
.collect Beryl Prison Key##34688 |n
.click Arcane Prison##7631
.' Free an Arcane Prisoner |q 11587/1
step
goto 41.2,41.8|n
.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8,0.5 |noway |c |q 11576
step
goto 34.3,42
.' Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
.' Take the Cleftcliff Anomaly Reading |q 11576/1
step
goto 45,33.4
.talk 25291
..turnin 11576
..accept 11582
step
goto 45.3,33.3
.talk 25262
..turnin 11587
..accept 11590
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c |q 11582
step
goto 44,28.6
.' Go down the path and underwater
.' Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
.' Take the Sundered Chasm Reading |q 11582/1
step
goto 45,33.4
.talk 25291
..turnin 11582
..accept 12728
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Winterfin Cavern starts here |goto 46.8,29.3,0.5 |noway |c |q 12728
step
goto 40.1,19.7
.' Stand in the mouth of the cave, past the torches
.' Use your Arcanometer |use Arcanometer##34669
.' Take the Winterfin Cavern Reading |q 12728/1
step
goto 45,33.4
.talk 25291
..turnin 12728
step
goto 43.5,37.4
.' Fight a Beryl Sorcerer |modelnpc Beryl Sorcerer##25316+
.' Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
.' Capture a Beryl Sorcerer |q 11590/1
step
goto 45.3,33.3
.talk 25262
..turnin 11590
..accept 11646
step
'Go inside the tall tower to 46.3,32.8 |goto 46.3,32.8
.talk 25480
..turnin 11646
..accept 11648
step
'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
.' Interrogate the Prisoner |q 11648/1
|modelnpc Beryl Sorcerer##25316
step
goto 46.3,32.8
.talk 25480
..turnin 11648
..accept 11663
step
'Go outside the tower to 45.3,33.3 |goto 45.3,33.3
.talk 25262
..turnin 11663
..accept 11671
step
goto 42.1,39.5
.' Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897 |tip If it won't let you, wait until Inquisitor Salrand appears again.
.kill Inquisitor Salrand##25584+ |n
.click Salrand's Lockbox##10
.get Salrand's Broken Key |q 11671/1
step
goto 45.3,33.3
.talk 25262
..turnin 11671
..accept 11679
step
goto 45.3,34.5
.talk 24795
..turnin 11679
..accept 11680
step
goto 46.4,37.3
.talk 25356
..turnin 11680
..accept 11681
step
'Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6,0.3 |noway
step
goto 46.4,32.4
.talk 25785
..turnin 11681
..accept 11682
step
'Go outside the tower to 45.3,34.5 |goto 45.3,34.5
.talk 24795
..turnin 11682
..accept 11733
step
goto 32.9,34.4
.talk 25314
..turnin 11733
step
goto Dalaran 25.3,47.7
.talk 32287
.buy 1 Tabard of the Kirin Tor##43157
step
.' Equip Tabard of the Kirin Tor |equipped Tabard of the Kirin Tor##43157 |use Tabard of the Kirin Tor##43157
'Once you've bought the Tabard, you will have to run _level 80_ instances from _Wrath of the Lich King_ in order to gain rep.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic Dungeons to qualify
'Earn Exalted status with the Kirin Tor |condition rep('Kirin Tor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Kirin Tor!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Knights of the Ebon Blade",[[
achieveid 1009
step
'On the Orgrim's Hammer airship:
.talk 29795
..accept 12892
step
goto Icecrown 44.3,21.5
.' Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265 |tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular |q 12892/1
step
goto 44.1,24.7
.talk 29804
..turnin 12892
..accept 12891
step
goto 43.7,24.8
.from Shadow Cultist##29717+
.get 1 Cultist Rod|q 12891/1
.from Morbid Carcass##29719+
.get 1 Abomination Hook|q 12891/2
.from Vault Geist##29720+
.get 1 Geist Rope|q 12891/3
.from Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence|q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840
.' Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
.' Turn The Leaper |q 12893/3
step
goto 44.4,27.0
.from Vile##29769
.' Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
.' Turn Vile |q 12893/1
step
goto 41.8,24.5
.from Lady Nightswood##29770
.' Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
.' Turn Lady Nightswood |q 12893/2
step
goto 44.1,24.7
.talk 29804
..turnin 12893
..accept 12897
step
'The entrance to the Shadow Vault starts here |goto 43.7,23.6,0.3 |c |q 12897
step
goto 44.9,19.9
.click General's Weapon Rack##7950 |tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
.' General Lightsbane spawns
.kill General Lightsbane##29851 |q 12897/1
step
'On the Orgrim's Hammer airship:
.talk 29795
.talk 29799
..turnin 12897
..accept 12899
step
goto 42.8,24.9
.talk 29343
..turnin 12899
..accept 12938
..accept 13106
step
goto 44.0,22.2
.talk 30308
..home The Shadow Vault
step
goto 44.7,20.3
.talk 30002
..turnin 12938
..accept 12939
step
goto 43.6,24.7
.talk 30074
..accept 12955
step
goto 37.9,25.1
.' Watch out for the Mjordin Combatants. They will attack you!
.talk 30081
..' Challenge him to a duel
.' Defeat Efrem the Faithful |q 12955/2
step
goto 36.1,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle |q 12955/4
step
goto 37.5,24.6
.' Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
..' Challenge and defeat 6 Mjordin Combatants |q 12939/1
step
goto 37.1,22.5
.talk 30086
..' Tell her you heard vrykul women cannot fight at all
.' Defeat Sigrid Iceborn |q 12955/1
step
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun |q 12955/3
step
goto 44.7,20.3
.talk 30002
..turnin 12939
..accept 12943
step
goto 43.6,24.7
.talk 30074
..turnin 12955
..accept 12999
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c |q 12943
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
..kill Thane Ulfrang the Mighty##29919 |q 12943/1
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c |q 12949
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains |q 12949/1
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c |future |q 12951
step
goto 41.0,23.9
.talk 30056
..turnin 12949
..accept 12951
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c |q 12951
step
goto 42.8,24.9
.talk 29343
..turnin 12951
..accept 13085
step
goto 43.1,21.1
.talk 30218
..turnin 13085
step
goto 44.7,20.3
.talk 30002
..turnin 12943
step
goto 43.4,20.6
.talk 32538
.buy 1 Tabard of the Ebon Blade##43155
step
'Equip your Tabard of the Ebon Blade |equipped Tabard of the Ebon Blade##43155 |use Tabard of the Ebon Blade##43155
.' Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
|tip You can also run Heroic dungeons to gain repuation.
'Earn Exalted status with the Knights of the Ebon Blade |condition rep('Knights of the Ebon Blade')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Knights of the Ebon Blade!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\The Horde Expedition",[[
achieveid 1011
step
' The best way to earn reputation with the Horde Expedition will be to run The Oculus, Halls of LIghtning, Utgarde Pinnacle or Heroic Wrath of the Lich King instances.
.' Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need.
..' Keep in mind, if you're already Exalted with the Horde Expedition, you will gain reputation with one of the factions underneath it (if you aren't exalted already).
|confirm
step
'Earning reputation with _The Hand of Vengeance_, _The Sunreavers_, _The Taunka_ or _Warsong Offensive_, a percent will go towards the Horde Expedition.
|tip You can also run Heroic dungeons to gain reputation.
|confirm
step
.' Exalted with The Hand of Vengeance |condition rep("The Hand of Vengeance")==Exalted
.' Exalted with The Sunreavers |condition rep('The Sunreavers')==Exalted
.' Exalted with The Taunka |condition rep('The Taunka')==Exalted
.' Exalted with Warsong Offensive |condition rep('Warsong Offensive')==Exalted
step
.' Congratulation, You are now Exalted with the Horde Expedition!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Northrend\\Ashen Verdict",[[
achieveid 4598
step
'This reputation can be earned by running the Icecrown Citadel raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Icecrown Citadel 39.0,7.3
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Ashen Verdict |condition rep('Ashen Verdict')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Ashen Verdict!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Hellscream's Reach",[[
description This Guide will walk you through becoming
description Exalted with Hellscream's Reach.
achieveid 5376
daily
step
label "daily_reset"
'You will have to do these dailies in order to gain reputation with Hellscream's Reach.
.' You can also do the World PVP Event in Tol Barad to gain reputation.
..' When you're ready, click here. |confirm
step
'You will only be able to accept a total of 6 quests in the following guide steps.
|confirm
step
goto Tol Barad Peninsula,55.2,81.3
.talk 48360
..accept 28684
..accept 28680
..accept 28678
..accept 28679
..accept 28681
..accept 28683
step
goto 53.5,80.6
.talk 48358
..accept 28682
..accept 28685
..accept 28686
..accept 28687
..accept 28721
step
goto 54.9,79.3
.talk 48363
..accept 28693
..accept 28691
..accept 28692
..accept 28690
..accept 28689
step
goto 55.8,78.5
.talk 48361
..accept 28696
..accept 28698
..accept 28697
..accept 28700
..accept 28695
..accept 28694
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 28697/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 28698/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28687/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28686/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+  |q 28683/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 28684/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 28678/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28681/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 28680/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+  |q 28679/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28682/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell him you're here to help him escape
.' Escort the Farson Prisoner |q 28721/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28685/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 28695/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28696/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 28694/1
step
goto 40.2,57.9
.kill 5 Restless Soldier##46825 |q 28693/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 28692/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 28691/1 |tip He's a big skeleton that walks around this area, so you may need to search for him.
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 28690/1
.click Forgotten Soldier's Tombstone##2452.
.' Release 6 Tortured Souls |q 28689/1
step
goto 55.2,81.3
.talk 48360
..turnin 28684
..turnin 28680
..turnin 28678
..turnin 28679
..turnin 28681
..turnin 28683
step
goto 53.5,80.6
.talk 48358
..turnin 28682
..turnin 28685
..turnin 28686
..turnin 28687
..turnin 28721
step
goto 54.9,79.3
.talk 48363
..turnin 28693
..turnin 28691
..turnin 28692
..turnin 28690
..turnin 28689
step
goto 55.8,78.5
.talk 48361
..turnin 28696
..turnin 28698
..turnin 28697
..turnin 28700
..turnin 28695
..turnin 28694
step
goto Tol Barad Peninsula,66.9,79.8 |n
.' Cross the bridge to Tol Barad. |goto Tol Barad |noway|c
step
'These daily quests will only be available if the Horde faction currently controls Tol Barad.
'You will only be able to accept a total of 6 quests in the following guide steps.
|confirm
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657
..accept 28658
..accept 28659
step
goto 51.4,49.6
|modelnpc Drillmaster Razgoth##48070
..Click here if Drillmaster Razgoth is present. |confirm |next razgoth_is_here
|modelnpc Private Garnoth##48071
..Click here if Private Garnoth is present. |confirm |next garnoth_is_here
|modelnpc Staff Sergeant Lazgar##48062
..Click here if Staff Sergeant Lazgar is present. |confirm |next lazgar_is_here
'Only one of these NPCs will be available.
step
label razgoth_is_here
goto 51.5,49.7
.talk 48070
..accept 28663
..accept 28664
..accept 28665
|next exit
step
label garnoth_is_here
goto 51.5,49.7
.talk 48071
..accept 28660
..accept 28662
..accept 28661
|next exit
step
label lazgar_is_here
goto 51.5,49.7
.talk 48062
..accept 28670
..accept 28668
..accept 28669
|next exit
step
label "exit"
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28664/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28663/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28665/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28658/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28669/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28668/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28670/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28661/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28660/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28662/1
step
goto 35.8,67.8
.' Kill 12 Alliance Infantry |q 28659/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28657/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto 50.9,49.7
.talk 48069
..turnin 28657
..turnin 28658
..turnin 28659
step
goto 51.5,49.7
.talk 48070
..turnin 28663
..turnin 28664
..turnin 28665
step
goto 51.5,49.7
.talk 48071
..turnin 28660
..turnin 28662
..turnin 28661
step
goto 51.5,49.7
.talk 48062
..turnin 28670
..turnin 28668
..turnin 28669
step
'Click here to reset your dailies.  Keep in mind if you've done them and they haven't reset yet, you won't be able to do them a second time. |next "daily_reset" |confirm
'Earn Exalted reputation with Hellscream's Reach. |next "exalted" |condition rep("Hellscream's Reach")==Exalted
step
label exalted
'Congratulations, you are now Exalted with Hellscream's Reach!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Guardians of Hyjal",[[
description This guide will walk you through becoming exalted
description with the Guardians of Hyjal faction.
achieveid 4882
step
goto Orgrimmar 49.7,76.5
.click Warchief's Command Board##10014
..accept 27721
step
goto 39.9,50.9
.talk 15188
.' Ask him to please send you to Moonglade
.' You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c |q 27721
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27721
..accept 25316
step
goto Mount Hyjal,63.1,24.1
.talk 40843
.home Nordrassil
step
goto 62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.7
.talk 39925
..accept 25460
step
goto 64.1,22.5
.talk 40278
..accept 25370
step
goto 67.1,22.6
.kill 8 Scalding Rock Elemental##40229 |q 25460/1
.click Juniper Berry##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |modelnpc Faerie Dragon##39921
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926 |q 25370/1
step
goto 64.1,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.7
.talk 39925
..turnin 25460
step
goto 55.7,15.9
.' Stand in this spot
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.1,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 54173
..turnin 25317
..accept 25319
step
goto 47.6,35.5
.talk 39869
..accept 25472
step
goto 48.4,29.3
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
.' You can find more fragments at [44.7,33.3]
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.5,33.4
.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107 |modelnpc Blazebound Elemental##38896
.kill 30 Unbound Flame Spirit##33838+ |q 25323/1
step
goto 47.7,35.5
.talk 54173
..turnin 25323
..accept 25464
step
goto 44.0,26.9
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
' |modelnpc 40147
step
goto 47.7,35.5
.talk 54173
..turnin 25464
step
goto 47.6,35.5
.talk 39869
..accept 25430
step
goto 48.4,18.9
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.5,21.5
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,18.9
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.5,17.3 |n
.' Enter the cave |goto 52.5,17.3,0.5 |noway |c |travelfor 1
step
goto 56.8,18.8
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.5,17.3 |n
.' Leave the cave |goto 52.5,17.3,0.5 |noway |c |tip Follow the path up. |q 25325
step
goto 52.2,17.4
.talk 38917
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.7,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 38.1,23.0
.kill 6 Twilight Hunter##39437+ |q 25255/1
.kill 4 Twilight Proveditor##39436+ |q 25233/1
.click Twilight Supplies##9379+ |tip The slaves will drop them after you kill the Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.7,19.7
.talk 39427
..turnin 25233
..turnin 25234
step
goto 35.7,19.4
.talk 39429
..turnin 25255
..accept 25269
step
goto 30.1,31.7
.talk 39432
..turnin 25269
..accept 25270
step
goto 29.0,31.4
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25270/1
step
goto 30.1,31.7
.talk 39432
..turnin 25270
..accept 25272
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth##39446 |q 25272/1
step
goto 32.5,37.4
.talk 39622
..turnin 25272
step
goto 29.6,29.3
.talk 39622
..accept 25279
step
goto 28.4,29.9
.talk 39432
..turnin 25279
..accept 25277
step
goto 28.3,30.0
.talk 39435
..accept 25300
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.6,30.2
.talk 39435
..accept 25300
step
goto 28.9,32.2
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 27.6,34.2
.click Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569 |tip Inside the brazier
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.4
.click Twilight Cauldron##9387
..turnin 25297
..accept 25298
step
goto 27.0,36.0 |n
.' Enter the cave |goto 27.0,36.0,0.5 |noway |c |future |q 25332
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.7
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.7,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.7
.click Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
.' While inside the cave do the following:
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.kill 8 Minion of Gar'gol |q 25278/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave |goto 27.1,36.0,0.5 |noway |c |q 25332
.' Escort Kristoff Out |q 25332/1
step
goto 27.1,62.6
.talk 5769
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
goto 33.0,64.6
.click Flameward##7340
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.click Codex of Shadows##470
..accept 25763
step
goto 30.9,76.7
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##454+
.get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.1,76.7
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
.kill 3 Twilight Juggernaut##41031+ |q 25761/1
.click Shadow Cloak Generator##9532+
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.from Sethria##41255
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 37.4,52.3
.' Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340 |tip He will become friendly.
.get Nemesis Shell Fragment |q 25507/1
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,47.9
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.3,48.0
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 39.2,58.1 |n
.' Go inside the blue portal |goto 38.8,58.0,0.3 |noway |c |q 25810
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.2
.click Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |future |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |equipped Twilight Firelance##52716 |q 25523
.clicknpc Aviana's Guardian##40723
.' Ride the Guardian|invehicle |future |q 25523
step
goto 36.4,53.2
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Visit the Guardian Flag |q 25523/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.kill 10 Twilight Knight Rider##39835+ |q 25525/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 36.8,54.0
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.kill 10 Twilight Lancer##40660+ |q 25544/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 33.3,56.9
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs all around [35.8,53.6]
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
.' Click the red arrow on your hotbar to get off the hippogryph |outvehicle |c |q 25832
step
'Don't forget to equip your real weapon again
|confirm |q 25832
step
goto 39.1,57.6 |n
.' Go inside the blue glowing orb |goto 38.8,58.6,0.3 |noway |c |q 25832
step
goto 44.3,48.0
.talk 41308
..turnin 25832
step
goto 27.1,62.6
.talk 5769
..turnin 25507
..accept 25510
step
goto 27.1,63.0
.talk 40331
..turnin 25502
step
goto 24.7,55.7
.talk 41504
..turnin 25510
..accept 25514
..accept 25519
step
goto 24.0,55.9
.click Rod of Subjugation##9469
.' Disable the First Rod of Subjugation |q 25514/1
step
goto 25.2,54.9
.click Rod of Subjugation##9469
.' Disable the Second Rod of Subjugation |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.8,57.1
.from Deep Corruptor##40561+
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 5769
..turnin 25520
step
goto 27.0,62.6
.talk 46998
..accept 25830
step
goto 27.4,55.5
.talk 41381
..turnin 25830
..accept 25842
step
goto 26.6,53.2
.kill 5 Fiery Tormentor##41396+ |q 25842/1
step
goto 27.4,55.5
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 5769
..turnin 25372
..accept 25843
step
goto 41.6,60.7
.talk 41504
..turnin 25843
..accept 25904
step
goto 42.2,60.6
.talk 41507
..accept 25881
..accept 25899
step
goto 53.9,54.5
.from Twilight Field Captain##41502
.get Glyph of Opening |q 25904/1
step
goto 49.4,53.1
.kill 10 Twilight Scorchlord##41500+ |q 25899/1
.talk 41499 |tip They look like dead night elves laying on the ground all around this area.
..' Tell them to get on their feet
.' Rescue 8 Lost Wardens |q 25881/1
step
goto 41.9,60.8
.talk 41504
..turnin 25904
..accept 25906
step
goto 57.1,55.9
.talk 41492
..turnin 25881
..accept 25886
..turnin 25899
step
goto 56.9,56.0
.talk 41497
..accept 25901
step
goto 56.5,57.9
.click Warden's Arrow##8094+
.get 15 Warden's Arrow |q 25901/1
step
goto 60.9,58.8
.kill 4 Twilight Field Captain##41502+ |q 25886/1
step
goto 56.9,56.0
.talk 41497
..turnin 25901
step
goto 57.1,56.0
.talk 41492
..turnin 25886
step
goto 64.8,54.3 |n
.' Go inside the blue portal |goto 64.5,53.5,0.5 |noway |c |future |q 25928
step
goto 64.3,53.6
.talk 41498
..turnin 25906
..accept 25910
..accept 25915
step
goto 65.8,57.1
.' Follow the path down
.' Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you |tip They are big floating red crystals around this area.
.' Examine the Nemesis Crystal |q 25915/1
step
goto 64.3,58.0
.kill 4 Shadowflame Master##41563+ |q 25910/1
.kill 10 Molten Tormentor##41565+ |q 25910/2
step
goto 64.3,53.6
.talk 41498
..turnin 25910
..turnin 25915
..accept 25923
step
goto 62.7,62.2
.' Follow the path down
.' Fight Nemesis |tip He's a huge turtle standing on a big island in the lava.
.' Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
.kill Nemesis##40340 |q 25923/1
step
goto 64.3,53.6
.talk 41498
..turnin 25923
..accept 25928
step
goto 64.8,53.6 |n
.' Go inside the blue portal |goto 64.9,54.5,0.3 |noway |c |q 25928
step
goto 41.8,60.7
.talk 41504
..turnin 25928
..accept 25653
step
goto 62.1,24.9
.talk 40928
..turnin 25653
..accept 25597
step
goto 71.9,58.1
.talk 41024
..turnin 25597
..accept 25274
step
goto 73.6,60.4
.talk 39619
.' Lure the Twilight Recruit away from the group to 72.4,58.8
.' Use your Blackjack on the Twilight Recruit |use Blackjack##52683
.from Twilight Recruit##39619
.get Twilight Recruitment Papers |q 25274/1
step
goto 71.9,58.1
.talk 41024
..turnin 25274
..accept 25276
step
goto 76.9,62.0
.talk 39442
..turnin 25276
..accept 25223
..accept 25224
step
goto 77.0,62.2
.talk 39451
..accept 25330
step
goto 79.8,62.9
.kill 8 Fiery Instructor##40564+ |q 25223/1
.click Flame Blossom##2312+
.get 5 Flame Blossom |q 25224/1
.' Use your Frostgale Crystal on an Immolated Supplicant |use Frostgale Crystal##52819 |tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common.
.' Save an Immolated Supplicant |q 25330/1
step
goto 77.0,62.2
.talk 39451
..turnin 25330
step
goto 76.9,62.0
.talk 39442
..turnin 25223
..turnin 25224
..accept 25291
step
goto 89.6,59.1
.talk 39413
..turnin 25291
..accept 25509
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25296
step
goto 90.2,56.4
.talk 39406
..accept 25294
step
goto 89.5,55.5
.click Crate of Scrolls##8704
.get Twilight Communique |q 25296/1
step
goto 92.0,51.5
.click Hyjal Battleplans##222
.get Hyjal Battleplans |q 25296/2
step
goto 88.3,51.9
.from Spinescale Basilisk##39658+
.collect 5 Charred Basilisk Meat##52708 |q 25294
.click Darkwhisper Lodestone##2571+
.' Break 5 Darkwhisper Lodestones |q 25509/1
step
'Use your Fiery Leash |use Fiery Leash##52717
.' You will summon the Spawn of Smolderos
.' Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
.' Feed the Spawn of Smolderos 5 Times |q 25294/1
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25296
..accept 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25509
..accept 25499
step
goto 88.7,57.4
.' Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
.' Run away from the Blazing Trainer for 1 minute
.' Complete your Physical Training |q 25499/1
step
goto 89.6,59.1
.talk 39413
..turnin 25499
..accept 25299
step
'Use your Orb of Ascension |use Orb of Ascension##52828
.' Use the abilities on your hotbar to answer Yes or No to the questions |tip You will see the questions display in your chat window.
.' You must answer 10 questions correctly
.' Complete your Mental Training |q 25299/1
step
goto 89.6,59.1
.talk 39413
..turnin 25299
..accept 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25294
..accept 25494
step
goto 92.1,48.4
.kill 5 Failed Supplicant##39752+ |q 25309/1
step
goto 84.7,46.8
.from Spinescale Matriarch##40403
.get Spiked Basilisk Hide |q 25494/1
step
goto 77.6,48.1
.' Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
.' Put on your Ogre Disguise |havebuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 76.6,49.1
.talk 40489
..' Tell him one of the boys is causing some trouble outside
.kill High Cultist Azennios##40491 |q 25308/1
step
'Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 88.2,58.5
.click Outhouse Hideout##3332
..turnin 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25494
..accept 25496
step
goto 77.8,51.4
.talk 40409
..' Tell him Instructor Devoran sends a contender against his raptor
.' Wait until your Spawn of Smolderos kills his raptor, Butcher
.from Gromm'ko##40409
.' Complete the Grudge Match |q 25496/1
step
goto 90.2,56.4
.talk 39406
..turnin 25496
step
goto 89.6,59.1
.talk 39413
..accept 25310
..accept 25311
step
goto 64.7,64.7
.' Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
.' Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
.kill Garnoth, Fist of the Legion##39726 |q 25310/1
step
goto 66.1,65.9
.kill 10 Horrorguard##48725+ |q 25311/1
step
goto 89.6,59.1
.talk 39413
..turnin 25310
..turnin 25311
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25314
step
goto 79.0,56.1
.kill Okrog##40922 |q 25314/1 |tip You will find him walking along this road, so you may need to search for him.
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25314
..accept 25601
step
goto 89.6,59.1
.talk 39413
..turnin 25601
..accept 25315
step
goto 95.2,51.3
.click Initiation Podium##9481
.' Use the abilities on your hotbar to respond to what the crowd says |tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
.' Please the crowd 10 times
.' Give your Graduation Speech |q 25315/1
step
'Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
goto 95.3,51.3
.talk 41025
..turnin 25315
..accept 25531
step
goto 72.2,74.7
.talk 41025
..turnin 25531
..accept 25608
step
goto 72.6,75.1 |n
.clicknpc Emerald Drake##40934 |invehicle |q 25608
step
goto 78.7,64.0
.' Use your Aerial Swipe ability on Twilight Stormwakers |tip They fly in the air around this area.
.kill 5 Twilight Stormwaker##40573+ |q 25608/1
.' Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
.' Kill 40 Twilight's Hammer Units |q 25608/2
step
goto 72.1,73.7 |n
.' Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle |q 25608
step
goto 72.2,74.7
.talk 41025
..turnin 25608
step
goto 72.1,74.0
.talk 40772
..accept 25548
step
goto 71.9,74.1
.talk 40773
..accept 25554
step
goto 71.6,75.3
.talk 43549
.fpath Gates of Sothann
step
goto 59.7,80.8
.click Burning Litanies##7693
.get The Burning Litanies |q 25554/2
step
goto 58.1,78.9
.click Tome of Flame##6894
.get Tome of Flame |q 25554/3
step
goto 56.8,83.8
.click Ascendant's Codex##6893
.get Ascendant's Codex |q 25554/1
step
goto 59.1,83.9
.click Pure Twilight Egg##9455
..accept 25644
step
goto 59.0,80.2
.kill 4 Flame of Ascendant##40709+ |q 25548/1
.kill 5 Twilight Subjugator##40463+ |q 25548/2
step
goto 71.9,74.1
.talk 40773
..turnin 25554
..accept 25555
step
goto 72.1,74.0
.talk 40772
..turnin 25548
..accept 25549
step
goto 72.2,73.9
.talk 40816
..turnin 25644
..accept 25552
step
goto 59.3,78.0
.from Young Twilight Drake##40687
.get Young Twilight Drake Skull |q 25552/1
step
goto 57.4,68.0
.' Use your Horn of Cenarius |use Horn of Cenarius##55153
.kill Azralon the Gatekeeper##40814 |q 25555/1
step
goto 60.4,72.5
.kill 4 Twilight Augur##40713+ |q 25549/1
.kill 4 Twilight Retainer##40767+ |q 25549/2
.kill 1 Emissary of Flame##40755 |q 25549/3
.' You can find more the Emissary of Flame patrolling between the above coordinate and [55.0,67.1]
step
goto 71.9,74.1
.talk 40773
..turnin 25555
step
goto 72.1,74.0
.talk 40772
..turnin 25549
..accept 25550
step
goto 72.2,74.0
.talk 40816
..turnin 25552
..accept 25553
step
goto 54.8,85.8
.' Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
.kill Desperiona##40974 |q 25553/1
step
goto 43.4,83.6
.' Use your Drums of the Turtle God |use Drums of the Turtle God##55179
.kill King Moltron##40998 |q 25550/1
step
goto 72.1,74.0
.talk 40772
..turnin 25550
step
goto 72.3,74.0
.talk 40816
..turnin 25553
step
goto 71.9,74.1
.talk 40773
..accept 25551
step
goto 55.6,66.2 |n
.' Enter the blue swirling portal |goto 44.5,79.4,0.5 |noway |c |q 25551
step
goto 44.7,79.2
.talk 40803
..' Tell him you are ready to begin to battle against Rangaros |tip You will only be able to talk to him if the battle hasn't started yet.
.' Run down the path and fight Ragnaros
.' You will assist 3 NPC's when killing Ragnaros |tip Do not attack and fight Ragnaros directly, just let the NPC's fight him.  Instead, kill the fire elementals that periodically attack the NPC's you're assisting.  Make sure to kill all the fire elementals and the NPC's will take care of everything else and kill Ragnaros for you.
.kill Ragnaros##41634 |q 25551/1
step
goto 49.0,77.1 |n
.click Portal to Hyjal##10015
.' Teleport to the Gates of Sothann |goto 72.2,74.8,0.5 |noway |c |q 25551
step
goto 72.1,74.0
.talk 40772
..turnin 25551
step
goto 72.1,74.0
.talk 40772
..accept 27399
step
goto Orgrimmar,50.5,38.4
.talk 45244
..turnin 27399
step
goto Mount Hyjal,62.8,23.8
.talk 50314
.buy 1 Tabard of the Guardians of Hyjal##65906
step
'Use the Guardians of Hyjal tabard and run through instances with it. |equipped Tabard of the Guardians of Hyjal##65906 |use Tabard of the Guardians of Hyjal##65906
.' Earn Exalted reputation with the Guardians of Hyjal |condition rep('Guardians of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations you are Exalted with the Guardians of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Dragonmaw Clan",[[
achieveid 4886
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 28717
step
goto 48.1,70.5
.talk 39605
..turnin 28717
..accept 26293
step
goto 47.9,71.0
.talk 42637
..accept 26311
step
goto 71.0,50.8
.talk 42638
..' Ask him to give you a map
.from Twilight Nightblade##42707+
.talk 42638
..' Tell him yes, a map of the coastal approaches
.get Twilight Highlands Coastal Chart |q 26311/1
step
goto 48.0,71.0
.talk 42637
..turnin 26311
step
goto 75.2,0.4
.talk 42672
..turnin 26293
..accept 26294
step
goto 73.9,8.1
.' Click the Hellscream Demolisher |tip It looks like a big wooden catapult vehicle on the side of the road.
.' Discover a Faulty Demolisher |q 26294/1
.' Click the Chief Engineer |tip He's goblin that talks to you and is standing next to the Hellscream Demolisher.
.' Discipline the Chief Engineer |q 26294/2
step
goto 48.1,70.5
.talk 39605
..turnin 26294
..accept 26324
step
goto Azshara,59.9,50.4
.talk 42641
..turnin 26324
..accept 26374
..accept 26335
step
goto 60.2,50.4
.talk 42640
..accept 26358
step
goto 57.4,50.6
.clicknpc AWOL Grunt##42646+
.' Discipline 12 AWOL Grunts |q 26374/1
step
goto 54.5,51.2
.talk 42643
..turnin 26358
..accept 26361
step
goto 53.5,47.4
.click Foebreaker Blueprints##9677
..turnin 26335
..accept 26337
step
goto 55.5,50.3
.clicknpc Smoot##42644 |tip You may need to search a little for him, or just stand in this spot and wait for him to run by.
.click Induction Samophlange##2911 |tip It's a metal spinning object that spawns on the ground when you click Smoot.
.get Induction Samophlange |q 26361/1
step
goto 56.5,52.5
.talk 42777
..' Tell him nobody shorts Garrosh Hellscream
.' Fight the Bilgewater Foreman
.' Intimidate a Bilgewater Foreman |q 26337/1
step
goto 54.5,51.2
.talk 42643
..turnin 26361
..accept 26372
step
goto 60.2,50.4
.talk 42641
..turnin 26374
..turnin 26337
step
goto 60.2,50.4
.talk 42640
..turnin 26372
..accept 28849
step
goto 50.7,73.9
.talk 50367
..turnin 28849
..accept 26388
step
goto 50.8,73.8
.' Ride the zeppelin to Twilight Highlands
.' Accompany the Air Fleet |q 26388/1
step
goto Twilight Highlands,82.4,50.3
.clicknpc Emergency Rampless Debarkation Device##47217
.' Parachute down to a ship below |goto 82.5,50.1,0.1 |noway |c |q 26388
step
goto 82.5,49.8
.talk 42978
..turnin 26388
..accept 26539
step
goto 82.6,49.9
.talk 43193
..accept 26538
step
goto 78.8,51.7
.talk 43187
..turnin 26539
..accept 26549
step
goto 76.5,49.5
.talk 43191
..' Ask him if he has medical supplies you can take back with you
.' Persuade the Medicine Man |q 26538/1
step
goto 76.5,49.5
.talk 43191
..turnin 26538
..accept 26540
step
goto 75.4,55.5
.' Watch the dialogue
.' Conclude the Negotiations |q 26549/1
step
goto 73.8,53.9
.talk 43190
..turnin 26549
..accept 26608
step
goto 82.5,49.8
.talk 42978
..turnin 26608
step
goto 82.6,49.9
.talk 43193
..turnin 26540
..accept 26619
step
goto 76.6,49.5
.talk 43581
..turnin 26619
..accept 26621
step
goto 76.7,51.5
.kill 10 Dragonmaw Enforcer##43390 |q 26621/2
.kill 4 Dragonmaw Warlock##43394 |q 26621/3
.talk 43577
.talk 43578
..' Tell them to either be a warrior or a shaman |tip Choose the type of helper you think you'll need.  If you want extra dps, tell them to be warriors.  If you want healing, tell them to be shamans.  You have to do this with 3 of them, so you can mix it up, depending on what you need.
.' Arm 3 Dragonmaw Civilians |q 26621/1
step
goto 76.6,49.5
.talk 43581
..turnin 26621
..accept 26622
step
goto 75.5,55.6
.kill Warchief Mor'ghor##43189 |q 26622/1 |tip You can still talk to Dragonmaw Workers and Merchants and ask them to fight with you as either warriors or shamans.
step
goto 74.8,53.1
.talk 43943
..turnin 26622
..accept 26786
step
goto 74.3,53.3
.talk 44042
..accept 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26786
..accept 26784
step
goto 68.4,48.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 26784/1
.click Verrall River Muck##10352+
.get 10 Verrall River Muck |q 26788/1
step
goto 74.3,53.3
.talk 44042
..turnin 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26784
..accept 26798
step
goto Orgrimmar,48.1,70.5
.talk 39605
..turnin 26798
..accept 26830
step
goto 43.6,63.6
.talk 44160
..' Ask him if a secret cult has infiltrated the Orgrimmar skyway
.' Reveal Sauranok's Guilt |q 26830/1
.kill Sauranok the Mystic##44120 |q 26830/2
step
goto 48.1,70.5
.talk 39605
..turnin 26830
..accept 26840
step
goto Twilight Highlands,73.8,52.8
.talk 47174
.fpath Dragonmaw Port
step
goto Twilight Highlands 75.3,54.9
.talk 44169
..turnin 26840
..accept 27583
..accept 27607
step
goto 75.9,52.7
.talk 49498
.home Dragonmaw Post
step
goto 78.2,62.5
.talk 46089
..turnin 27607
..accept 27610
..accept 27611
step
goto 77.5,65.2
.' Go to this spot
.' Scout the Beach Head Control Point |q 27610/1
step
goto 77.0,63.4
.kill 12 Highbank Marine##45174 |q 27611/1
step
goto 78.2,62.5
.talk 46089
..turnin 27610
..turnin 27611
step
goto 78.5,62.6
.talk 46090
..accept 27622
step
goto 68.3,61.7
.clicknpc Salvageable Shredder##46100
.' Locate the Salvageable Shredder |q 27622/1
.' Kill the enemies that attack the Salvageable Shredder
.' Defend the Salvageable Shredder |q 27622/2
step
goto 78.5,62.6
.talk 46090
..turnin 27622
..accept 28583
step
goto 70.2,43.3
.talk 45982
..turnin 27583
..accept 27584
step
goto 70.3,43.4
.talk 45983
..accept 27586
step
goto 71.1,42.4
.from Blackscale Mistress##45985+, Blackscale Raider##45984+
.' Slay 15 Blackscale Naga |q 27584/1
.click Unexploded Mortar Shell##9943
.get 8 Unexploded Mortar Shell |q 27586/1
step
goto 70.2,43.3
.talk 45982
..turnin 27584
step
goto 70.3,43.4
.talk 45983
..turnin 27586
..accept 27606
step
goto 71.4,41.7
.' Use your Heth'Jatari Conch in the middle of the Heth'Jatari Banners |use Heth'Jatari Conch##61928 |tip They look like purple flags on golden rods on the beach.
.kill Fathom-Lord Heth'Jatar##46009 |q 27606/1 |tip Red arrows will appear on the ground near you while you fight him. Lure Fathom-Lord Heth'Jatar next to those arrows.  He will get bombarded with mortars and it will be much easier to kil him.
step
goto 70.3,43.4
.talk 45983
..turnin 27606
step
goto 70.2,43.3
.talk 45982
..accept 27690
step
goto 54.8,44.2
.talk 46313
..turnin 27690
..accept 27751
..accept 27929
step
goto 55.1,43.6
.talk 46318
..accept 27747
step
goto 53.8,43.3
.talk 46319
..accept 27750
step
goto 53.3,42.9
.talk 49762
.home Bloodgulch
step
goto 54.1,42.2
.talk 47156
.fpath Bloodgulch
step
goto 52.3,40.6
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider##47186 |q 27929/1
step
goto 49.1,37.3
.click Thundermar Ale Keg##4631+
.' Smash 10 Wildhammer Kegs |q 27747/1
.click Wildhammer Food Stores##229  |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 15 Wildhammer Food Stores |q 27750/1
.' You can find more around [46.2,37.4]
step
goto 51.1,38.8
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 27751/1
step
goto 53.8,43.3
.talk 46319
..turnin 27750
step
goto 55.1,43.6
.talk 46318
..turnin 27747
step
goto 54.8,44.2
.talk 46313
..turnin 27751
..turnin 27929
..accept 28041
step
goto 55.1,43.6
.talk 46318
..accept 28038
step
goto 58.0,44.2
.from Untamed Gryphon##46158
.get Fresh Gryphon Carcass |q 28041/1
.' Click the Quest Complete box that pops up
..turnin 28041
..accept 28043
step
goto 50.7,58.4
.talk 46936
..turnin 28038
step
goto 47.1,63.8
.' Use your Gryphon Carcass Bait on a Highland Black Drake |use Gryphon Carcass Bait##62917 |tip They are orange dragons around this area.
.from Baited Black Drake##47422
.' Click the Baited Black Drake to ride it |tip Eventually, the Baited Black Drake will surrender once you've weakened it enough.
.' Ride the Baited Black Drake back to Bloodgulch
.' Capture the Baited Black Drake |q 28043/1
step
goto 54.4,43.9
.talk 47417
..turnin 28043
..accept 28123
step
goto 53.3,42.7
.talk 46323
..accept 27947
step
goto 53.2,42.7
.talk 46324
..accept 27945
step
goto 49.1,28.2
.click The Demon Chain##10146
.get The Demon Chain |q 28123/1
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 27947
..accept 27951
step
goto 58.0,32.6
.kill 10 Shaman of the Black##46322 |q 27951/1
.from Obsidian Stoneslave##47226+
.get Black Diamond Heart |q 27945/1
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 27951
..accept 27954
step
goto 77.6,16.6
.talk 48993
..turnin 28583
..accept 28588
step
goto 77.7,16.6
.talk 49439
..accept 28584
step
goto 77.7,16.7
.talk 49441
..accept 28586
step
goto 77.5,16.3
.' Follow the path up the ramps
.' Use your Blast Tape next to Faulty Valves |use Blast Tape##65146 |tip They look like red wheel handles spraying out black liquid on the metal platforms.
.' Seal 10 Faulty Valves |q 28584/1
.kill 10 Wildhammer Raider##49632 |q 28588/1
step
goto 81.1,15.5
.' Use your Emergency Pool Pony on Krazzworks Laborers |use Emergency Pool Pony##65162 |tip They are goblins in the water all around the area surrounding thie big island.
.' Rescue 10 Krazzworks Laborers |q 28586/1
|modelnpc Krazzworks Laborer##49548+
step
goto 77.7,16.7
.talk 49439
..turnin 28584
step
goto 77.7,16.7
.talk 49441
..turnin 28586
step
goto 77.6,16.6
.talk 48993
..turnin 28588
..accept 28589
step
goto 75.5,17.9
.clicknpc Krazz Cannon##49680
.' Use your Fire Stuff ability to shoot at Wildhammer Stormtalon flying in the sky around this area
.kill 15 Wildhammer Stormtalon##49683 |q 28589/2
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28589
step
goto 75.3,17.8
.talk 47061
.fpath The Krazzworks
step
goto 77.6,16.6
.talk 48993
..turnin 28589
..accept 28590
step
'On the ship you are standing on:
.talk 49378
..turnin 28590
..accept 28591
step
'Click a Skyshredder Turret |tip They look like bouncing metal cannons with seats on the right side of the airship.
.' Use the abilities on your hotbar to shoot at the Alliance enemies and cannons
.kill 80 Highbank Marksman##49366+ |q 28591/1
.kill 12 Highbank Cannoneer##49344+ |q 28591/2
.kill 4 Highbank Cannon##49060+ |q 28591/3
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28591
step
'On the ship you are standing on:
.talk 49378
..turnin 28591
..accept 28593
..accept 28594
step
'On the ship you are standing on:
.talk 49379
..accept 28592
step
goto 81.5,78.8
.' Go to this spot
.' Use Ticker's Explosives on the boat |use Ticker's Explosives##64669
.' Place the Highbank Boat Bomb |q 28592/1
step
goto 79.8,77.4
.' Go to this spot
.' Use Ticker's Explosives in the doorway |use Ticker's Explosives##64669
.' Place the Highbank Keep Bomb |q 28592/2
step
goto 80.0,72.5
.' Go to this spot
.' Use Ticker's Explosives inside at the bottom of the tower |use Ticker's Explosives##64669
.' Place the Highbank Tower Bomb |q 28592/3
step
goto 79.5,78.2 |n
.' Go down the stairs |goto 79.5,78.2,0.5 |noway |c |q 28592
step
goto 79.5,77.6
.click Induction Samophlange##2911
.get Induction Samophlange |q 28593/1
step
goto 80.8,75.6
.from Highbank Marksman##49024+, Highbank Guardsman##49023+, Highbank Prison Guard##49029+
.kill 10 Highbank Defenders |q 28594/1
step
goto 82.1,80.0
.talk 49000
..turnin 28593
..turnin 28594
step
goto 81.8,80.4
.talk 49002
..turnin 28592
step
goto 82.1,80.0
.talk 49000
..accept 28595
step
goto 82.1,81.3
.clicknpc Krazzworks Gyrocopter##50267
.' Ride back to The Krazzworks |goto 75.5,17.8,0.5 |noway |c |q 28595
step
goto 77.6,16.6
.talk 48993
..turnin 28595
step
goto 53.3,42.7
.talk 46323
..turnin 27954
..accept 27955
step
goto 53.3,42.8
.click Eye of Twilight##7011
.' Watch the cut scene
.' Peer into the Eye |q 27955/1
step
goto 53.3,42.7
.talk 46323
..turnin 27955
step
goto 53.2,42.7
.talk 46324
..turnin 27945
..accept 27375
step
goto 54.4,43.9
.talk 47417
..turnin 28123
..accept 28133
step
goto 36.4,38.1
.talk 47671
..' Tell her you are ready to fight Torth!
.kill Torth##48256 |q 28133/1
step
goto 36.4,38.1
.talk 47671
..turnin 28133
step
goto 36.4,38.0
.talk 47751
..accept 28149
step
goto 36.7,38.0
.talk 47723
..accept 28147
step
goto 36.9,38.0
.talk 47133
.fpath The Gullet
step
goto 39.4,47.3
.click Windspeaker Pylon##10037
.get Windspeaker Charm |q 28149/1
step
goto 40.2,45.1
.from Twilight Windwarper##47724+
.get 8 Twilight Garment Scrap |q 28147/1
.from Storm Vortex##47728+
.get 5 Breath of the Vortex |q 28149/2
step
goto 36.7,37.9
.talk 47723
..turnin 28147
..accept 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28149
..accept 28166
step
goto 40.6,32.9
.click The Light of Souls##7956
.get The Light of Souls |q 28166/1
step
goto 39.0,32.3
.from Glopgut Hurler##47768+, Glopgut Pounder##47765+
.' Slay 10 Glopgut Ogres |q 28151/1
step
goto 36.7,38.0
.talk 47723
..turnin 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28166
..accept 28170
step
goto 36.0,37.9 |n
.' Enter the cave |goto 36.0,37.9,0.5 |noway |c |q 28170
step
goto 35.0,36.6
.talk 47826
..' Tell him you are ready
.' Enter the Spirit Realm |havebuff Interface\Icons\Achievement_Halloween_Ghost_01 |q 28170
step
goto 35.1,35.9 |n
.' Follow this path |goto 35.1,35.9,0.5 |noway |c |q 28170
step
goto 34.3,35.6
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the First Shrine |q 28170/1
step
goto 34.8,36.2 |n
.' Follow this path up |goto 34.8,36.2,0.5 |noway |c |q 28170
step
goto 33.4,37.2
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Second Shrine |q 28170/2
step
goto 34.8,37.4 |n
.' Follow this path |goto 34.8,37.4,0.5 |noway |c |q 28170
step
goto 34.2,37.8
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Third Shrine |q 28170/3
step
goto 36.0,37.9 |n
.' Leave the cave |goto 36.0,37.9,0.5 |noway |c |q 28170
step
goto 36.4,38.0
.talk 47751
..turnin 28170
step
goto 44.0,10.6
.talk 45332
..turnin 27375
..accept 27299
step
goto 41.8,11.4
.kill 3 Tentacle of Iso'rath##45394 |q 27299/1
step
goto 44.0,10.6
.talk 45332
..turnin 27299
..accept 27300
step
goto 44.0,11.3
.talk 45391
..accept 27301
step
goto 44.4,11.6
.talk 45432
..accept 27302
step
goto 44.2,18.1
.talk 45362
..turnin 27301
..accept 27303
step
goto 42.3,17.2
.from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
.kill 12 Drakgor cultists |q 27300/1
.from Bound Fleshburner##45358+
.get 5 Fleshburner Heart |q 27303/1
.click Barrel of Pyreburn Oil##457+
.get 10 Pyreburn Oil |q 27302/1
step
goto 44.4,11.6
.talk 45432
..turnin 27302
step
goto 43.8,11.3
.talk 45386
..turnin 27303
step
goto 44.0,10.6
.talk 45332
..turnin 27300
..accept 27376
step
goto 44.5,10.6
.clicknpc Earthen Ring Gryphon##47973
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Fight the oozes that attack
.' Try to fight as long as you can
.' Survive Iso'rath's defenses |q 27377/1
.' Click the Quest Complete box that pops up
..turnin 27377
..accept 27378
step
'Deathwing will attack you and Thrall
.' Aid Thrall in battling Deathwing |q 27378/1
.' Click the Quest Complete box that pops up
..turnin 27378
..accept 27379
step
goto 49.6,15.8
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Brain of Iso'rath##47960
.' Kill Iso'rath |q 27380/1
step
goto 44.0,10.6
.talk 45332
..turnin 27380
step
goto 44.1,10.5
.talk 48264
..accept 27486
step
goto 27.6,21.4
.' You will get captured by a red dragon
.' Meet with Lirastrasza |q 27486/1
step
goto 29.3,25.9
.talk 45528
..turnin 27486
..accept 27504
step
goto 29.9,31.3
.talk 45522
..turnin 27504
..accept 27505
step
goto 29.8,31.4
.talk 45562
..accept 27506
step
goto 29.7,33.1
.' Protect the Vermillion Menders while they heal Celastrasza to hull health
.' Defend 5 Vermillion Menders |q 27505/1
.from Twilight Wyrmkiller##45748+
.' Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
.' Reclaim 6 Dragonkin corpses |q 27506/1
step
goto 29.9,31.3
.talk 45522
..turnin 27505
step
goto 29.8,31.4
.talk 45562
..turnin 27506
step
goto 29.9,31.3
.talk 45522
..accept 27564
step
goto 29.3,25.9
.talk 45528
..turnin 27564
..accept 27507
..accept 27509
step
goto 29.3,26.0
.talk 45518
..accept 27508
step
goto 28.6,24.9
.talk 47121
.fpath Vermillion Redoubt
step
goto 18.4,16.7 |n
.' Enter the cave |goto 18.4,16.7,0.5 |noway |c |q 27508
step
goto 18.0,16.9
.' Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
.' Destroy the Twilight Portal |q 27509/1
step
goto 20.9,15.7
.from Twilight Abductor##45642+, Twilight Flamequencher##45618+
.kill 12 Twilight invaders |q 27507/1
.clicknpc Vermillion Egg##45682
.get 6 Vermillion Egg |q 27508/1
step
goto 29.3,26.0
.talk 45528
..turnin 27507
..turnin 27509
step
goto 29.3,26.0
.talk 45518
..turnin 27508
step
goto 29.3,26.0
.talk 45528
..accept 27576
step
goto 27.3,36.8
.talk 47492
..turnin 27576
..accept 28091
..accept 28090
step
goto 25.6,37.9
.from Twilight Spearwarder##47490+
.get Twilight Caravan Cargo Key |q 28090/1
.click Twilight Caravan Chest##10106+
.get Twilight's Hammer Gatestone |q 28090/2
.kill 8 Twilight Spearwarder |q 28091/1
step
goto 27.3,36.8
.talk 47492
..turnin 28091
..turnin 28090
..accept 28097
step
goto 29.6,41.0
.talk 47493
..turnin 28097
..accept 28092
step
'Next to you:
.talk 47374
..accept 28094
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28092/1
step
'Next to you:
.talk 47374
..turnin 28092
..accept 28093
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28094/1
step
'Next to you:
.talk 47374
..turnin 28094
step
goto 22.8,56.1
.' Go to this spot
.' Secure the Entrance to Grim Batol |q 28093/1
step
goto 22.1,56.6
.talk 47605
..turnin 28093
step
goto 21.8,57.0
.talk 47603
..accept 28712
step
goto 14.9,16.3
.talk 49417
..turnin 28712
step
goto 14.1,15.4
.talk 49810
..accept 28758
step
goto 14.1,15.1
.clicknpc Vermillion Vanguard##49910
.' Use the abilities on your hotbar on Twilight Shadowdrakes
.kill 8 Twilight Shadowdrake##49873 |q 28758/1
step
goto 22.1,56.6
.talk 47605
..turnin 28758
..accept 28171
step
goto 59.1,69.8
.talk 47902
..turnin 28171
..accept 28191
..accept 28173
step
goto 59.0,69.8
.talk 47904
..accept 28175
step
goto 63.9,78.0
.' Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
.' Plant Alexstrasza's Tear |q 28175/1
step
goto 62.7,76.2
.from Obsidian Viletongue##47796+, Obsidian Charscale##47797+
.kill 10 Obsidian Dragonkin |q 28191/1
.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
.kill 8 Obsidian Pyrewing##46141 |q 28173/1
step
goto 59.1,69.8
.talk 47902
..turnin 28191
..turnin 28173
step
goto 59.0,69.8
.talk 47904
..turnin 28175
step
goto 59.1,69.8
.talk 47902
..accept 28176
step
goto 59.3,82.5
.' Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
.' Hatch the Obsidian Whelps |q 28176/1
step
goto 55.4,83.5 |n
.' Enter the cave |goto 55.4,83.5,0.5 |noway |c |q 28176
step
goto 49.8,85.8
.' Go to this spot
.' Infiltrate the Obsidian Lair |q 28176/2
step
goto 44.9,91.0
.talk 47905
..turnin 28176
..accept 28247
.from Obsidia##47929
.' Defeat Obsidia |q 28247/1
step
goto 55.4,83.5 |n
.' Leave the cave |goto 55.4,83.5,0.5 |noway |c |q 28247
step
goto 59.1,69.8
.talk 47902
..turnin 28247
..accept 28249
step
goto 45.3,75.4
.talk 45658
..turnin 28249
..accept 27493
step
goto 45.3,75.3
.talk 45665
..accept 27497
..accept 27491
step
goto 45.8,76.2
.talk 47116
.fpath Crushblow
step
goto 45.1,76.7
.talk 49747
.home Crushblow
step
goto 45.8,76.0
.talk 45947
..' Tell him you're here to lead your wind rider squad and drop off the Kor'kron Assassins
.' Get your Wind Rider Squad |q 27491/1
step
goto 39.2,64.5
.' Go to this spot and land on the flashing red X on the ground
.' Drop off the Kor'kron |q 27491/2
step
goto 38.8,64.3
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northern Building |q 27497/1
step
goto 40.0,64.4
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northeastern Building |q 27497/2
step
goto 40.4,69.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southwestern Building |q 27497/3
step
goto 41.4,71.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southern Building |q 27497/4
step
goto 41.1,69.8
.from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
.kill 10 Bloodeye Clan ogres & ettins |q 27493/1
step
goto 45.3,75.3
.talk 45665
..turnin 27497
..turnin 27491
step
goto 45.3,75.4
.talk 45658
..turnin 27493
..accept 27495
step
goto 38.1,66.2
.click Hidden Explosives##9393
.' Detonate the Hidden Explosives |q 27495/1
.' Click the Quest Complete box that pops up
..turnin 27495
..accept 27499
step
goto 40.5,62.3
.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
.' Signal the Attack |q 27499/1
.' Click the Quest Complete box that pops up
..turnin 27499
..accept 27501
step
goto 39.8,71.3 |n
.' Enter the cave |goto 39.8,71.3,0.5 |noway |c |q 27501
step
goto 37.6,71.3
.from Za'brox##46017
.get Za's Head |q 27501/1
.get Brox's Head |q 27501/4
step
goto 38.7,70.2
.from Beeble'phod##46018
.get Phod's Head |q 27501/2
.get Beeble's Head |q 27501/3
step
goto 45.3,75.3
.talk 45665
..turnin 27501
..accept 27503
step
goto 38.9,64.0
.talk 46117
..' Tell him you're ready
.' Speak to the Squad commander |q 27503/1
step
'Follow the Kor'kron Squad Commander and the Kor'kron Assassins up the path
.' Escort the Kor'kron |q 27503/2
.' Click the Quest Complete box that pops up
..turnin 27503
..accept 27638
step
goto 36.4,65.9
.talk 45675
..turnin 27638
..accept 27653
..accept 27655
..accept 27658
step
goto 37.5,88.7
.talk 46242
..turnin 27658
..accept 27659
..accept 27660
step
goto 37.6,88.7
.talk 46243
..accept 27662
step
goto 44.1,81.4
.click the Air Portal Controller##9849 |tip It is high in the sky.
.kill Debilitated Aetharon##46270 |q 27659/2
step
goto 38.0,80.2
.click Earth Portal Controller##9849
.kill Debilitated Apexar##46273 |q 27659/1
step
goto 33.2,62.4
.click Water Portal Controller##9849
.kill Debilitated Edemantus##46272 |q 27659/3
step
goto 27.6,63.9
.talk 46413
..turnin 27660
..accept 27661
step
goto 35.2,67.4
.from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
.kill 10 Twilight Citadel cultists |q 27654/1
.from Dark Assassin##46202+
.get 5 Dark Assassin's Pendant |q 27652/1
.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
.' Free 10 Enslaved Elementals |q 27662/1
step
goto 40.8,79.0
.kill Lord Cannon##46785 |q 27661/1
step
goto 37.6,88.7
.talk 46243
..turnin 27662
step
goto 37.5,88.7
.talk 46242
..turnin 27659
step
goto 36.4,65.9
.talk 45675
..turnin 27653
..turnin 27655
..accept 27689
..accept 27696
step
goto 27.6,63.9
.talk 46413
..turnin 27661
..accept 27798
step
goto 35.1,61.1
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an anchor, drowned underwater.
.' Extract Artifact Information |q 27798/1
|modelnpc Corpse of Forgemaster Finlay##46819+
step
goto 36.4,65.9
.talk 45675
..turnin 27798
step
goto 36.1,70.7
.kill Master Klem##46342 |q 27689/2 |tip Garona Halforcen will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27696/1
step
goto 42.3,83.5
.kill Mia the Rose##46343 |q 27689/3 |tip She's in a small room at the top of this big building.  Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson##46341 |q 27689/1 |tip Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 36.4,65.9
.talk 45675
..turnin 27689
..turnin 27696
..accept 27701
step
goto 32.4,68.7
.' Use The Elementium Axe |use The Elementium Axe##62248
.' Free Lirastrasza |q 27701/1
' |modelnpc 46456
step
goto 36.4,65.9
.talk 45675
..turnin 27701
..accept 27703
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They are all over this area so you may need to search.
.' Deliver 5 Coup de Graces |q 27703/1
step
goto 36.4,65.9
.talk 45675
..turnin 27703
..accept 27712
step
goto 37.5,88.7
.talk 46243
..turnin 27712
..accept 28885
step
goto 37.5,88.7
.talk 46243
..' Tell him you're ready for that wild ride
.' Ride the Mine Cart to the End of the Line |q 28885/2
step
'Next to you:
.talk 46513
..turnin 28885
..accept 27742
..accept 27743
step
goto 37.4,93.2
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Earth##465
..accept 27744
step
goto 35.2,90.4
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Water##465
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Air##465
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Fire##465
.' Destroy the Rune of Fire |q 27744/4
step
goto 34.5,86.3
.from Twilight Miner##46610+, Depths Overseer##46579+
.kill 12 Elementium Depths cultists |q 27743/1
.click Elementium Shard##10035+
.get 6 Elementium Shard |q 27742/1
step
'Next to you:
.talk 46513
..turnin 27742
..turnin 27743
..turnin 27744
..accept 27745
step
goto 36.4,83.8
.from Magmatooth##46611
.get Fire Portal Controller |q 27745/2
step
goto 36.4,83.8
.' Use your Fire Portal Controller |use Fire Portal Controller##62394
.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
step
goto 37.5,88.7
.talk 46243
..turnin 27745
..accept 27783
step
goto 36.4,65.9
.talk 45675
..turnin 27783
..accept 27786
step
goto 45.4,88.0
.clicknpc The Hammer of Twilight##46717
..turnin 27786
..accept 27788
.' Watch the cut scene
.' Survive Skullcrusher's Backhand |q 27788/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain##46732 |q 27788/2 |tip Follow the instructions that pop up on your screen.
step
goto 45.3,75.4
.talk 45658
..turnin 27788
step
'From this point on you will need to complete dailies and dungeons to gain reputation.
'Click here to start running dungeons. |next "dungeon" |confirm
'Click here to start doing dailies. |next "dailies" |confirm
step
label dailies
goto Twilight Highlands,55.1,43.6
.talk 46318
..accept 28872
..accept 28874
step
goto 53.8,43.3
.talk 46319
..accept 28873
step
goto 53.9,42.1
.talk 49387
..accept 28875
step
goto 54.0,41.9
.talk 50622
..accept 28871
step
goto 46.0,33.0
.kill High Shaman MacKilligan##46885 |q 28875/1 |tip He runs into town to this spot.  He is elite and the quest is a group quest, so you may need help killing him.
step
goto 49.1,37.3
.click Thundermar Ale Keg##4631+
.' Smash 10 Wildhammer Kegs |q 28872/1
.click Wildhammer Food Stores##229  |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28873/1
.' You can find more around [46.2,37.4]
step
goto 51.2,40.4
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider##47186 |q 28874/1
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 28871/1
step
goto 55.1,43.6
.talk 46318
..turnin 28872
..turnin 28874
step
goto 53.8,43.3
.talk 46319
..turnin 28873
step
goto 53.9,42.1
.talk 49387
..turnin 28875
step
goto 54.0,41.9
.talk 50622
..turnin 28871
step
'Click here to return to the start of the dailies. |next "dailies" |confirm
'Click here to start running dungeons |next "dungeon" |confirm
step
label dungeon
goto Twilight Highlands 53.9,42.1
.talk 49387
.buy 1 Tabard of the Dragonmaw Clan##65909
step
'Equip your Dragonmaw Clan tabard and run Cataclysm dungeons with it. |equipped Tabard of the Dragonmaw Clan##65909 |use Tabard of the Dragonmaw Clan##65909
.' Earn Exalted reputation with the Dragonmaw Clan|condition rep('Dragonmaw Clan')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Dragonmaw Clan!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Ramkahen",[[
achieveid 4884
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 28557
step
goto 49.1,70.5
.talk 47571
..turnin 28293
|only if havequest(28293)
step
goto Tanaris,30.5,65.5
.talk 44833
..turnin 28557
..accept 27003
step
goto 30.5,65.7
.clicknpc Lady Humps##46517
.' Watch the cutscene
.' Escort the Caravan |q 27003/1
step
goto Uldum,59.7,71.8
.talk 46873
..turnin 27003
step
goto 59.6,72.0
.talk 46872
..accept 27922
step
goto 61.7,71.1
.click Neferset Frond##10097
.' Watch the cutscene
.' Uncover the Neferset Secret |q 27922/1
step
goto 59.6,72.0
.talk 46872
..turnin 27922
..accept 27923
..accept 28105
step
goto 59.7,72.0
.talk 46875
..accept 27924
step
goto 60.0,74.0
.from Kavem the Callous##47567
.get Neferset Key |q 28105/1
step
goto 60.8,73.9
.from Neferset Denizen##48267+, Neferset Sentinel##47306+
.click Neferset Armor##10100
.get 6 Neferset Armor |q 27924/1
.' Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027 |tip They look like bundles of yellow straw sitting on the ground around this area.
.' Burn 5 Bales of Hay |q 27923/1
' |model Bale of Hay##8701
step
goto 59.7,72.0
.talk 46875
..turnin 27924
step
goto 59.6,72.0
.talk 46872
..turnin 27923
..turnin 28105
..accept 28112
step
goto 54.9,32.7
.talk 47684
..turnin 28112
..accept 28134
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 53.0,27.7
.talk 47715
..' Tell him you might be able to help
.' Speak with Sun Priest Asaris |q 28134/2
step
goto 53.0,27.7
.talk 47715
..accept 28141
..accept 28145
step
goto 46.3,21.0
.from Wastewander Outrider##45905+
.get 4 Relic of the Sun King |q 28141/1
.from Venomblood Scorpid##45859+
.' Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
.' Drain 8 Venomblood Scorpids |q 28145/1
.' You can find more Venomblood Scorpid and Wastewander Outriders around [49.9,24.0]
step
goto 53.0,27.7
.talk 47715
..turnin 28141
..turnin 28145
..accept 28502
step
goto 45.7,16.2
.kill Warlord Ihsenn##47755 |q 28502/1
step
goto 53.0,27.7
.talk 47715
..turnin 28502
step
goto 49.7,39.2
.talk 47930
..' Tell him the king wishes to be informed about recent Neferset activity
.' Speak with Asaq |q 28134/3
step
goto 49.7,39.1
.talk 47318
..accept 27993
step
goto 60.3,38.3
.talk 46603
..' Tell him King Phaoris sent you to ask him about Neferset activity
.' Speak with Nomarch Teneth |q 28134/1
step
goto 60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.from Pygmy Scout##48041+, Pygmy Oaf##48040+, Pygmy Thief##48043+
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto 64.4,22.3
.' Go to this spot
.' Investigate Khartut's Tomb |q 27993/1
step
goto 64.4,22.3
.talk 44860
..turnin 27993
..accept 27141
step
goto 64.3,22.2
.click Powder Keg##472
.' Watch the cutscene
.' Assist Harrison at Khartut's Tomb |q 27141/1
step
goto 64.6,28.6
.talk 45180
..turnin 27141
step
goto 64.6,28.7
.talk 45186
..accept 27179
step
goto 64.8,29.6
.click the Elaborate Disc##8342
..accept 27176
step
goto 66.1,29.0
.from Mangy Hyena##45202
.' You will accept a quest
..accept 27187
step
goto 68.2,31.5
.from Skarf##45204
.from Sultan Oogah##45205
.collect Sultan's Staff##60865 |q 27176
step
'Use your Elaborate Disc |use Elaborate Disc##60859
.get Shaft of the Stars |q 27176/1
step
goto 66.1,29.0
.from Sand Pygmy##45190+
.click Ornate Tablet Fragment##6420+
.get 10 Ornate Tablet Fragment |q 27179/1
.from Mangy Hyena##45202+
.' Eradicate 12 Mangy Hyenas |q 27187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27187
step
goto 64.6,28.6
.talk 45180
..turnin 27179
..turnin 27176
..accept 27196
step
goto 64.6,28.6
.talk 45180
..' Tell him you're ready!
.' Follow Harrison Jones |tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
.' Accompany Harrison Jones to the Chamber of the Stars |q 27196/1
step
goto 64.5,28.0
.talk 45296
..turnin 27196
..accept 27511
step
goto 65.7,25.8
.' Go to this spot
.' Examine the Northern Hieroglyphs |q 27511/2
step
goto 64.4,29.9
.' Go to this spot
.' Examine the Ancient Mechanism |q 27511/1
step
goto 63.4,32.5
.talk 45874
..accept 27541
step
goto 63.4,32.5
.talk 45874
..' Take the scout's spectacles.
.get Broken Spectacles |q 27541/1
step
goto 63.4,33.9
.' Go to this spot
.' Examine the Southern Hieroglyphs |q 27511/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27511
step
goto 64.5,28.0
.talk 45296
..turnin 27541
..accept 27549
..accept 28602
step
goto 63.3,28.0
.click Suspended Starlight##9933
.get 7 Suspended Starlight |q 27549/1
.' Walk near the skeletons laying on the ground around this area
.from Tormented Tomb-Robber##45765+
.get 6 Piece of Rope |q 28602/1
step
goto 64.5,28.0
.talk 45296
..turnin 27549
step
goto 64.5,28.0
.talk 45296
..turnin 28602
..accept 27431
step
goto 64.5,28.0
.talk 45296
..' Ask him what you can do to help
.' Watch the cutscene
.' Stay Out of Harrison's Way |q 27431/1
step
goto 64.5,28.0
.talk 45296
..turnin 27431
..accept 27624
step
goto 64.0,26.4
.click Watcher Head##10079
.get Orb of the Morning Star |q 27624/1
step
goto 66.8,28.1
.click Watcher Head##10079
.get Orb of the Evening Star |q 27624/2
step
goto 65.3,32.6
.click Watcher Head##10079
.get Orb of the Shooting Star |q 27624/4
step
goto 62.5,32.0
.click Watcher Head##10079
.get Orb of the North Star |q 27624/3
step
goto 64.5,28.0
.talk 45296
..turnin 27624
..accept 27669
step
goto 64.5,28.7
.' Use your Orbs of the Stars |use Orbs of the Stars##62054
.' Watch the cutscene
.' Reactivate the Obelisk of the Stars |q 27669/1
step
goto 63.9,33.9
.talk 48034
..turnin 27669
step
goto 54.9,32.7
.talk 47684
..turnin 28134
..accept 28135
step
goto 54.3,35.3
.talk 47005
..accept 27899
step
goto 45.2,38.0
.talk 45799
..turnin 28135
..accept 27520
step
goto 45.3,37.8
.talk 45772
..accept 27519
..accept 27595
step
goto 40.0,40.5
.talk 46003
..turnin 27595
..accept 27602
step
goto 39.6,45.4
.click Sand-Covered Hieroglyphs##5992
..turnin 27602
..accept 27623
step
goto 39.6,40.9
.clicknpc Colossus of the Sun##46041
.from Colossus of the Sun
.get Stone of the Sun |q 27623/2
step
goto 41.2,37.6
.clicknpc Colossus of the Moon##46042
.from Colossus of the Moon
.get Stone of the Moon |q 27623/1
step
goto 40.7,40.2
.kill 6 Scion of Al'Akir##45755+ |q 27520/1
.clicknpc Orsis Survivor##45715+
.' Rescue 8 Orsis Survivors |q 27519/1
step
goto 39.6,45.4
.click Sand-Covered Hieroglyphs##5992
..turnin 27623
..accept 27706
step
goto 39.6,45.4
.click Sacred Receptacle##6502
.get The Scepter of Orsis |q 27706/1
step
goto 44.0,57.1
.talk 46978
..turnin 27899
..accept 27900
..accept 27901
step
goto 44.3,58.2
.from Schnottz Air Officer##46993
.collect Efficient Excavations##62768 |n
.' Click the Efficient Excavations in your bags |use Efficient Excavations##62768
..accept 28132
step
goto 46.7,58.4
.from Schnottz Air Trooper##46979+
.' Slay 10 Schnottz Air Troopers |q 27900/1
.from Schnottz Air Officer##46993+
.collect Uldum Chest Key Code##62608 |n
.click Obelisk of the Sun Coffer##8685+
.collect 6 Titan Device Component##62610 |q 27901
step
'Use your Titan Device Components |use Titan Device Component##62610
.get Titan Activation Device |q 27901/1
step
goto 44.0,57.1
.talk 46978
..turnin 27900
..turnin 27901
..accept 27903
step
goto 45.2,58.8 |n
.' Follow the path down |goto 45.2,58.8,0.5 |noway |c |q 27903
step
goto 47.1,58.8
.' Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611
.from Titanic Guardian##47032 |tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
.get Lens of the Sun |q 27903/1
step
goto 45.6,57.8
.' Fly up onto the middle platform inside this cave
.' Click the Titan Mechanism
..turnin 27903
step
goto 44.0,57.1
.talk 46978
..accept 27905
.' Use the abilities on your hotbar to shoot down the airplanes that chase you
.' Escape the Obelisk of the Sun |q 27905/1
step
goto 54.6,41.8
.talk 48082
..turnin 27905
step
goto 45.2,38.0
.talk 45799
..turnin 27520
step
goto 45.3,37.8
.talk 45772
..turnin 27519
..turnin 27706
step
goto 45.2,38.0
.talk 45799
..accept 27628
step
goto 54.9,32.7
.talk 47684
..turnin 27628
step
goto 55.0,34.0
.talk 47959
..accept 27630
..accept 27629
..accept 27631
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c |q 27631
step
goto 54.2,41.9
.talk 46135
..turnin 27630
..accept 27836
..accept 27837
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c |q 27837
step
goto 52.9,40.8
.kill 8 Stillwater Slitherer##46868+ |q 27837/1
.click Slitherer Egg##7803+
.' Destroy 6 Slitherer Eggs |q 27836/1
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c |q 27837
step
goto 54.2,41.9
.talk 46135
..turnin 27836
..turnin 27837
..accept 28611
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c |q 28611
step
goto 51.8,40.1 |n
.' Enter the underwater cave |goto 51.8,40.1,0.5 |noway |c |q 28611
step
goto 49.9,40.1
.from Dark Ritualist Zakahn##49148
.' Stop the Neferset Ritual |q 28611/1
step
goto 51.8,40.1 |n
.' Leave the underwater cave |goto 51.8,40.1,0.5 |noway |c |q 28611
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c |q 28611
step
goto 54.2,41.9
.talk 46135
..turnin 28611
..accept 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c |q 27838
step
goto 58.9,46.1
.talk 46134
..turnin 27631
..accept 28198
..accept 28201
step
goto 59.0,46.1
.talk 48012
..accept 28200
step
goto 59.6,47.3
.talk 46883
..turnin 28198
..accept 28210
step
goto 56.3,53.5
.talk 46136
..turnin 27629
..accept 27632
step
goto 55.6,53.7
.talk 46333
.' Recruit 8 Ramkahen Laborers |q 28201/1
step
goto 56.7,48.5
.from Riverbed Crocolisk##45321+ |tip They are all along and in this big river.
.get 20 Hardened Crocolisk Hide |q 28200/1
step
goto 59.0,46.1
.talk 48012
..turnin 28200
step
goto 58.9,46.1
.talk 46134
..turnin 28201
..accept 27839
step
goto 60.4,57.5
.' Use your Horn of Ramkahen |use Horn of Ramkahen##62534
.' When the cat men run in to attack the smugglers, go to [60.5,58.7]
.click Ancient Tol'vir Weapon##10071+
.get Ancient Tol'vir Armaments |q 27839/1
step
goto 58.1,60.8
.from Neferset Guard##46340+
.get Vir'Naal Delta Map |q 27632/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27632
..accept 27707
step
goto 55.5,59.5
.from Bloodsnarl Hyena##45353+
.' Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1
.' You can find more Bloodsnarl Hyenas around [52.6,56.2]
step
'Next to you:
.talk 48022
..turnin 28210
..accept 28276
step
goto 56.9,62.4
.talk 48237
..turnin 28276
..accept 28277
step
goto 56.9,62.4
.talk 48237
..' Tell him let's see what he and his lions can do
.' Use the abilities on your hotbar to use the lions to kill the hyenas
.kill 30 Bloodsnarl Scavenger##48199+ |q 28277/1
step
goto 56.9,62.4
.talk 48237
..turnin 28277
..accept 28291
step
goto 71.3,73.7
.talk 46425
..' Tell him you're looking for Tahet
.' Fight the enemies that attack
.' Discover Tahet's Whereabouts |q 27707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27707
..accept 27738
step
goto 58.3,82.9
.talk 46496
.from Gorebite##46278
.from Caimas the Pit Master##46276 |tip Make him chase you.  Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area.  Baby Crocs will damage him and slow his run speed down.  Eventually, he will die.
.' Free Tahet |q 27738/1
|model Croc Eggs##412
step
goto 58.9,14.2
.kill Scalemother Hevna##46871 |q 27838/1
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c |q 27838
step
goto 54.2,41.9
.talk 46135
..turnin 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c |q 27838
step
goto 58.9,46.1
.talk 46134
..turnin 28291
..turnin 27839
step
goto 56.3,53.5
.talk 46136
..turnin 27738
..accept 28533
step
goto 54.9,32.7
.talk 47684
..turnin 28533
.' Watch the cutscene
..accept 28561
step
goto 67.2,42.9
.talk 48761
..turnin 28561
..accept 28498
step
goto 67.3,42.8
.talk 48501
..accept 28499
step
goto 71.7,46.1
.from Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
.kill 10 Neferset intruder |q 28499/1
.click Atulhet's Record Fragment##6420+
.get 8 Atulhet's Record Fragment |q 28498/1
.' You can find more Atulhet Fragments and Neferset mobs around [75.2,45.7]
step
goto 67.3,42.8
.talk 48501
..turnin 28499
step
goto 67.2,42.9
.talk 48761
..turnin 28498
..accept 28500
step
goto 78.2,45.7
.from Raider Lord Havat##49214
.get The Cypher of Keset |q 28500/1
step
goto 67.2,42.9
.talk 48761
..turnin 28500
..accept 28501
step
goto 66.7,41.8
.talk 49228
.' Use the abilities on your hotbar to command the troops
.' Complete the Defense of Nahom |q 28501/1
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
step
goto 67.2,42.9
.talk 48761
..turnin 28501
..accept 28623
step
goto 67.3,42.8
.talk 48501
..accept 27755
step
goto 69.8,58.9
.kill Mekgineer Mixeltweed##46592 |q 27755/2
.kill 6 Crazed Digger##46590+ |q 27755/1
.collect 1 A.I.D.A. Communicator##62483 |n
.' Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
..accept 27760
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
..turnin 27760
..accept 27761
..accept 27777
step
goto 73.3,72.8
.' Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
.from Twizzleflux the Insane##46587
.get Core Access Codes |q 27777/1
step
goto 78.8,62.1
.' Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click First Bomb Cluster##9277
.' Disarm the First Bomb Cluster |q 27761/1
step
goto 79.0,64.3
.' Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Second Bomb Cluster##9277
.' Disarm the Second Bomb Cluster |q 27761/2
step
goto 79.0,64.9
.' Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Third Bomb Cluster##9277
.' Disarm the Third Bomb Cluster |q 27761/3
step
goto 79.0,63.6
.' Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
.clicknpc Unstable Bomb Bot##46888+
.' Deactivate 4 Unstable Bomb Bots |q 27761/4
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
..turnin 27761
..turnin 27777
..accept 27778
step
goto 77.0,62.9
.click Maintenance Tools##317
.collect Maintenance Axe##62621 |q 27778
step
goto 77.0,63.0
.clicknpc Wibson Mainframe##46715
.' Hack the Wibson Mainframe |q 27778/1
step
goto 77.3,63.3
.talk 46750
..turnin 27778
..accept 27779
step
goto 81.9,58.8
.' Roll down the hill as the Fusion Core
.' Run over gnomes all around this area
.' Obliterate 1000 Crazed Gnomes |q 27779/1
step
goto 77.6,62.4
.' Roll back up the hill
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 27779
step
goto 77.3,63.3
.talk 46750
..turnin 27779
step
goto 52.0,65.5
.talk 48564
..turnin 28623
..accept 28480
..accept 28483
step
goto 52.9,65.5
.talk 49345
..accept 28486
step
goto 54.1,71.2
.talk 49244
.' Protect the rangers as they run up the path
.' Secure Higher Ground |q 28486/1
step
goto 47.5,77.3
.kill High Priest Sekhemet##47730 |q 28480/2
step
goto 50.6,87.0
.kill Scorpion-Lord Namkhare##47742 |q 28480/1
step
goto 48.7,84.9
.from Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
.get 10 Neferset Insignia |q 28483/1
step
goto 52.9,65.5
.talk 49345
..turnin 28486
step
goto 52.0,65.5
.talk 48564
..turnin 28480
..turnin 28483
..accept 28520
step
goto 52.0,82.3
.kill Dark Pharaoh Tekahn##47753 |q 28520/1
step
goto 24.4,64.5
.talk 47670
..turnin 28132
..accept 27926
step
goto 22.5,63.2
.talk 47176
..' Ask him what he thinks of our host
.' Mingle with Ambassador Laurent |q 27926/1
step
goto 22.5,63.2
.talk 47185
..' Ask him what he knows of our generous host
.' Mingle with a Refined Gentleman |q 27926/2
step
goto 22.3,63.2
.talk 47187
..' Ask him how to find the Commander
.' Mingle with a Budding Artist |q 27926/3
step
goto 22.2,63.2
.talk 47189
..' Ask her how she has been enjoying her time here
.' Mingle with an Aspiring Starlet |q 27926/4
step
goto 22.0,64.5
.talk 49528
.home Schnottz's Landing
step
goto 24.4,64.5
.talk 47670
..turnin 27926
..accept 27928
step
goto 24.4,64.1
.talk 47159
..accept 27939
step
goto 40.6,68.9
.from Diseased Vulture##47202
.' You will accept a quest
..accept 27940
step
goto 40.6,68.9
.from Diseased Vulture##47202+
.' Slay 8 Diseased Vultures |q 27940/1
.from Shaggy Desert Coyote##47190+
.get 5 Desert Coyote Pelt |q 27928/1
.clicknpc Desert Fox##47201 |tip It runs around a lot, so you will probably have to search for it to find it.
.get The Desert Fox |q 27939/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27940
step
goto 24.4,64.5
.talk 47670
..turnin 27928
..accept 27941
step
goto 24.4,64.2
.talk 47159
..turnin 27939
..accept 27942
..accept 27943
step
goto 31.2,63.6
.from Furious Specter##47220+
.' Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
.get 5 Furious Spectral Essence |q 27943/1
.clicknpc Dead Trooper##47219+
.get 10 Trooper Uniform |q 27941/1
.click Well-preserved Idol##10092+
.get 8 Well-preserved Idol |q 27942/1
step
goto 24.4,64.5
.talk 47670
..turnin 27941
step
goto 24.4,64.1
.talk 47159
..turnin 27942
..turnin 27943
..accept 27950
step
goto 24.4,64.1
.talk 47159
..' Tell him the perimeter is secure
.' Witness Gobbles' Transformation Ritual |q 27950/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27950
step
goto 24.4,64.1
.talk 47159
..accept 27969
step
'Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
.' Wear the Uniform |havebuff INTERFACE\ICONS\inv_chest_leather_08 |q 27969
step
goto 23.2,60.1
.talk 47292
..' Tell them they're behind schedule
.' Motivate 6 Slacking Laborers |q 27969/1 |tip You won't motivate all of the Slacking Laborers you talk to.
.' You can find more Slacking Laborers around [20.5,60.5]
step
goto 24.5,64.2
.talk 47159
..turnin 27969
step
goto 24.4,64.5
.talk 47670
..accept 28002
step
goto 22.5,64.0
.talk 47707
..' Ask him if he saw anything
.' Counsel the Budding Artist |q 28002/4
step
goto 22.4,63.8
.talk 47516
..' Ask him who could have done such a thing
.' Question the Prolific Writer |q 28002/1
step
goto 22.2,63.9
.talk 47519
..' Ask her if she is all right
..' Soothe the Privileged Socialite |q 28002/2
step
goto 22.3,64.1
.talk 47520
..' Ask him if he wants to know what happened to the man
.' Chasten the Pretentious Businessman |q 28002/3
step
goto 24.4,64.5
.talk 47670
..turnin 28002
step
goto 24.4,64.1
.talk 47159
..accept 27990
step
goto 21.3,64.6
.clicknpc Schnottz's Siege Tank##47732
.' Ride in Schnottz's Siege Tank
.' Use the Fire Cannon ability on your hotbar on Decrepit Watchers
.' Obliterate 7 Decrepit Watchers |q 27990/1
' |modelnpc 47385
step
goto 24.4,64.1
.' Go to this spot
.' Return to Schnottz |q 27990/2
step
goto 24.4,64.1
.talk 47940
..turnin 27990
..accept 28187
step
goto 24.4,64.1
.talk 47940
..' Tell him let's move
.' Follow Commander Schnottz
.' Accompany Schnottz to Safety |q 28187/1
step
goto 22.5,63.2
.talk 47972
..turnin 28187
..accept 28193
step
goto 21.9,64.1
.' Go to this spot
.' Visit Schnottz's Guests |q 28193/1
step
goto 21.9,64.0
.talk 47967
..accept 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28193
..accept 28195
step
goto 22.3,67.6
.kill Captain Margun##47981 |q 28195/1
step
goto 24.9,69.0
.kill Captain Cork##47980 |q 28195/2
step
goto 26.1,68.6
.kill Captain Kronkh##47978 |q 28195/3
step
goto 24.9,68.4
.from Schnottz Sea Trooper##47982+ |tip Kill them on all 3 of the pirate ships around this area.
.get 6 Fresh Sailor Uniform |q 28194/1
step
goto 21.9,64.0
.talk 47967
..turnin 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28195
..accept 28267
step
goto 22.5,63.2
.talk 47972
..' Tell him you suppose you're ready...
.' Watch the cutscene
.' Go 'Out Back' With Schnottz |q 28267/1
step
goto 23.6,60.3
.talk 48162
..turnin 28267
..accept 28269
step
goto Uldum 54.9,32.7
.talk 47684
..turnin 28520
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 67.3,42.8
.talk 48501
..turnin 27755
step
goto Uldum 27.0,7.5
.talk 48186
..turnin 28269
..accept 28273
step
goto 26.6,7.2
.talk 49406
.home Oasis of Vir'sar
step
goto 26.6,8.0
.talk 48203
..turnin 28273
..accept 28274
step
'Watch the cutscene
.' Accompany Sullah |q 28274/1
' |modelnpc 48621
step
goto 29.6,21.9
.talk 48431
..turnin 28274
..accept 28350
..accept 28352
..accept 28351
step
goto 29.9,38.2
.from Wild Camel##51193+
.' Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241 |tip You will see a message flash on your screen telling you to capture the camel.
.' Capture 3 Wild Camels |q 28352/1
step
goto 29.9,38.2
.from Wild Camel##51193+
.get 5 Meat Scrap |q 28350/1
.from Cavorting Pygmy##51217+
.' Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232 |tip You will see a message flash on your screen telling you to cage the pygmy.
.' Capture 5 Sand Pygmies |q 28351/1
step
goto 29.6,21.8
.talk 48431
..turnin 28350
..turnin 28352
..turnin 28351
..accept 28353
step
goto 27.0,7.5
.talk 48186
..turnin 28353
..accept 28271
..accept 28272
step
goto 38.2,21.6
.from Schnottz Overseer##48205+, Schnottz Excavator##48204+
.' Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
.click Pillaged Loot Sack##10201+
.get 7 Ancient Copper Scroll |q 28272/1
step
goto 27.0,7.6
.talk 48186
..turnin 28271
..turnin 28272
..accept 28363
step
goto 29.6,21.8
.talk 48431
..turnin 28363
..accept 28367
step
goto 38.4,22.6
.' Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699 |tip If you have a pet with you dismiss it, it does not stealth with you and will attract mobs
.click Schnottz Powder Keg##33+
.' Sabotage 7 Powder Kegs |q 28367/1
step
goto 27.0,7.5
.talk 48186
..turnin 28367
..accept 28402
step
goto 36.7,20.8 |n
.' Enter the building |goto 36.7,20.8,0.5 |noway |c |q 28402
step
goto 33.5,17.8 |n
.' Fly down this hole |goto 33.5,17.8,0.5 |noway |c |q 28402
step
goto 35.0,19.2
.from Schnottz Elite Trooper##48668+
.' Slay 10 Schnottz Elite Troopers |q 28402/1
step
goto 36.1,20.3
.talk 48528
..turnin 28402
..accept 28403
step
goto 36.1,20.3
.talk 48528
..' Tell him you are ready when he is
.' Follow Harrison Jones
.' Upload the Titan Data |q 28403/1
step
goto 39.0,23.2
.talk 48558
..turnin 28403
..accept 28404
step
goto 39.6,23.6
.from Lunar Crystal##48529+
.' Defeat the Titanic Guardian |q 28404/1
step
goto 39.0,23.2
.talk 48558
..turnin 28404
step
goto 42.2,25.9
.talk 48621
..accept 28482
step
goto 41.4,5.6
.talk 48698
..turnin 28482
..accept 28497
step
goto 41.4,5.6
.clicknpc Confiscated Artillery##48699
.' Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
.' Slay 100 Schnottz Infantrymen |q 28497/1
step
goto 41.4,5.6
.talk 48698
..turnin 28497
..accept 28613
step
goto 36.1,15.8
.talk 47158
..turnin 28613
..accept 27748
.' Follow Harrison Jones and fight the Obsidian Colossus |tip Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
.from Obsidian Colossus##46646
.' Defeat the Obsidian Colossus |q 27748/1
step
goto 33.4,19.7
.talk 49151
..turnin 27748
..accept 28612
.' Watch the cutscene
.' Discover the Coffer of Promise |q 28612/1
step
goto 32.6,30.9
.talk 49204
..turnin 28612
..accept 28621
step
goto 32.6,30.7
.talk 49203
..turnin 28621
..accept 28622
step
goto 32.0,29.9
.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
.' Place the North Signal Flare |q 28622/1
step
goto 31.4,30.8
.clicknpc Signal Flare Position##49216|use Harrison's Signal Flares##64668
.' Place the West Signal Flaare |q 28622/2
step
goto 32.0,31.6
.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
.' Place the South Signal Flare |q 28622/3
step
goto 44.9,67.3
.talk 49248
..turnin 28622
..accept 28633
step
goto 45.0,67.3
.click Coffer of Promise##9968
.get Titan Discs |q 28633/1
step
goto 44.9,67.3
.talk 49351
..turnin 28633
step
'From this point you will need to run dailies and dungeons to build up reputation with Ramkahen.
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label daily
goto Uldum,60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto Uldum,41.4,5.5
.talk 49523
..accept 28736
step
goto 41.4,5.5
.' Click the Confiscated Artillery |tip It looks like a war catapult car machine.
.' Use the Designate Target ability on your hotbar on the Infantrymen
.' Slay 100 Infantrymen |q 28736/1
step
goto 41.4,5.5
.talk 49523
..turnin 28736
step
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label dungeon
goto Uldum 54.0,33.2
.talk 48617
.buy 1 Tabard of Ramkahen##65904
step
'Equip your Ramkahen tabard and run Cataclysm dungeons with it. |equipped Tabard of Ramkahen##65904 |use Tabard of Ramkahen##65904
.' Earn Exalted reputation with Ramkahen|condition rep('Ramkahen')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with Ramkahen!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\The Earthen Ring",[[
description This guide will walk you through becoming exalted
description with the Earthen Ring faction.
achieveid 4881
step
'To gain reputation with The Earthen Ring you will either need to quest or run dungeons wearing The Earthen Ring Tabard.
.' Click here to start questing. |confirm
.' Click here to run dungeons. |next "dungeon" |confirm
step
goto Orgrimmar,49.6,76.5
.click Warchief's Command Board##10014
..accept 27718
step
goto Durotar,55.9,12.3
.talk 41621
..turnin 27718
..accept 25924
step
goto 57.8,10.4 |n
.' Ride the mercenary ship to Vashj'ir |q 25924/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
step
goto Kelp'thar Forest,38.7,31.7
.talk 41618
..turnin 25924
..accept 25929
step
goto 42.1,31.3
.click Saltwater Star##9991+
.get 3 Saltwater Starfish |q 25929/1
.click Conch Shell##9440
.get Conch Shell |q 25929/2
step
goto 38.7,31.7
.talk 41618
..turnin 25929
..accept 25936
step
goto 42.4,31.4
.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##56227 |tip They are swimming above the ground, holding their throats.
.' Rescue 6 Drowning Warriors |q 25936/1
step
goto 38.7,31.7
.talk 41618
..turnin 25936
..accept 25941
step
goto 39.0,32.1
.talk 41711
..turnin 25941
..accept 25942
..accept 25943
step
goto 38.7,31.7
.talk 41618
.home The Immortal Coil
step
goto 40.9,30.7
.from Zin'jatar Raider##41781+
.' Slay 8 Zin'jatar Raiders |q 25942/1
.from Splitclaw Skitterer##40685+
.get 10 Succulent Crab Meat |q 25943/1
step
goto 39.0,32.1
.talk 41711
..turnin 25942
..turnin 25943
..accept 25944
step
goto 38.9,26.9
.click Alliance S.E.A.L. Equipment##9504
..accept 25946
step
goto 36.7,28.9
.from Gilblin Plunderer##41746+
.click Orgrimmar Axe##9562+ |tip They can be a little hard to see from far away, so keep an eye out for them.
.get 5 Orgrimmar Axe |q 25944/1
.click Orgrimmar Helm##9560+
.get 5 Orgrimmar Helm |q 25944/2
.click Orgrimmar Breastplate##8419+
.get 5 Orgrimmar Breastplate |q 25944/3
.' You can find more Axes, Helms and Breastplates around [36.2,21.0]
step
goto 39.0,32.1
.talk 41711
..turnin 25944
..turnin 25946
..accept 25947
step
goto 49.6,22.3
.click Stormwind Locker##9280+ |tip Swim inside the sunken ship, there are a lot of Stormwind Lockers in there.
.get 5 Stormwind SEAL Equipment |q 25947/1
step
goto 39.0,32.1
.talk 41711
..turnin 25947
..accept 25948
step
goto 38.9,31.6
.talk 41750
..turnin 25948
..accept 25949
step
goto 39.9,30.8
.' Fight the naga until you get kidnapped
.' Follow Erunak Stonespeaker after he saves you
.' Complete the Defense of The Immortal Coil |q 25949/1
step
goto 46.3,46.9
.talk 40105
..turnin 25949
step
goto 46.0,46.9
.talk 41248
..accept 25477
step
goto 52.8,48.8
.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462
.' Start swimming on the turtle and a shark will come and eat the turtle
.' Mount the Sea Turtle |q 25477/1
step
goto 46.0,46.9
.talk 41248
..turnin 25477
..accept 25371
step
goto 45.4,46.6
.click Braided Rope##7548
.' Tie off the Seahorse Lure |q 25371/1
step
goto 45.0,46.9 |n
.clicknpc Abyssal Seahorse##39996
.' Use the abilities on your hotbar when you are told to |tip You will have to use the corresponding arrow abilities to the arrows that display in the middle of your screen.
.' Subdue an Abyssal Seahorse |q 25371/2
step
goto 46.0,46.9
.talk 41248
..turnin 25371
step
goto 46.6,46.7
.talk 41847
..accept 27685
step
goto 53.4,43.0
.talk 39667
..turnin 27685
..accept 25587
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |q 25587
step
goto 56.8,29.8
.' Go to this spot
.' Scout Smuggler's Hole |q 25587/1
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c |q 25587
step
goto 54.0,34.6
.' Go to this spot
.' Signal Adarrah |q 25587/2
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |q 25587
step
goto 56.1,31.1
.talk 40852
.fpath Smuggler's Scar
step
goto 57.1,28.8
.talk 39883
..turnin 25587
..accept 25598
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c |q 25598
step
goto 48.3,39.6
.talk 39669
..' Tell him to make for that cave to the west
.' Rescue Mack and Samir |q 25598/1
step
goto 49.7,40.9
.click Sunken Crate##336
..accept 25388
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |q 25388
step
goto 57.1,28.8
.talk 39883
..turnin 25598
..turnin 25388
..accept 25390
..accept 25389
step
goto 57.3,28.9
.talk 39884
..accept 25602
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c |q 25602
step
goto 51.7,42.3
.from Clacksnap Pincer##39918+
.get 4 Clacksnap Tail |q 25389/1
.collect Tattered Treasure Map##53053 |n
.' Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
..accept 25377
.click Adarrah's Jewelry Box##1+
.get 6 Adarrah's Keepsake |q 25390/1
step
goto 55.5,38.8
.click Keg of Gunpowder##472
.get Keg of Gunpowder |q 25602/1
step
goto 57.2,37.8
.from Akasha##39964
.get Horde Chest Key |q 25377/1
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |q 25377
step
goto 57.1,28.8
.talk 39883
..turnin 25390
..turnin 25389
step
goto 57.3,28.9
.talk 39884
..turnin 25602
step
goto 57.1,28.8
.talk 39883
..accept 25459
step
goto 57.3,29.3
.talk 40983
..accept 25358
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c |q 25358
step
goto 55.3,38.9
.talk 46338
..accept 25651
step
goto 57.8,35.2
.click Sunken Horde Chest##9281
..turnin 25377
step
goto 56.8,36.3
.from Brinescale Serpent##39948+
.' Slay 4 Brinescale Serpent |q 25459/1
.click Sunken Cargo##7539+
.get 5 Sunken Cargo |q 25358/1
step
goto 52.1,51.5
.from Gilblin Hoarder##41016+
.click Pilfered Cannonballs##4177+
.collect 50 Pilfered Cannonball##55185 |n
.' Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
.get Barrel of Gunpowder |q 25651/1
step
goto 55.3,38.9
.talk 46338
..turnin 25651
..accept 25657
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |q 25657
step
goto 57.3,29.3
.talk 40983
..turnin 25358
step
goto 57.1,28.8
.talk 39883
..turnin 25459
step
goto 56.4,30.1
.click Broken Bottle##238
..accept 25638
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c |q 25638
step
goto 46.3,46.9
.talk 40105
..turnin 25638
..accept 25794
step
'Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
step
goto 46.3,46.9
.talk 40105
..turnin 25794
..accept 26000
step
goto 58.3,48.8
.' Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190 |tip It looks like a round-ish metal gun on the deck of the ship.
.' Feed the Explosive Grub to Gnaws |q 25657/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25657
..accept 27699
step
goto 58.4,50.1
.click Gnaws' Tooth##9517+
.get 5 Gnaws' Tooth |q 27699/1
step
goto 55.3,38.9
.talk 46338
..turnin 27699
..accept 25670
step
goto 58.3,48.8
.' Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220 |tip It looks like a round-ish metal gun on the deck of the ship.
.' While in Gnaws' mouth, spam the ability on your hotbar |tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
.' Slay Gnaws |q 25670/1
step
goto 61.5,63.4 |n
.' Enter the cave |goto 61.5,63.4,0.5 |noway |c |q 25670
step
goto 64.0,59.8
.talk 41863
..turnin 26000
step
goto 63.9,59.9
.talk 41341
..accept 26007
step
goto 64.0,59.8
.talk 41885
..' Ask him to tell you his name
.' Debrief Gurrok |q 26007/1
step
goto 63.9,59.9
.talk 41341
..turnin 26007
..accept 25887
step
goto 58.4,48.7
.talk 46458
..turnin 25670
..accept 25732
step
goto 53.6,58.0
.from King Gurboggle##41018
.get The Pewter Pounder |q 25732/1
step
goto 58.4,48.7
.talk 46458
..turnin 25732
..accept 25743
step
'Use The Pewter Pounder |use The Pewter Pounder##55806
.' Destroy The Pewter Prophet |q 25743/1
step
goto 58.4,48.6
.talk 46463
..turnin 25743
step
goto 58.7,72.4
.' Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
.' Take control of a Famished Great Shark |invehicle |q 25887
step
goto 57.5,72.4
.' Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians |tip They are nagas all around this area.
.' Eat 10 Zin'jatar Guardians Alive |q 25887/1
.' Use the Return to Safety ability on your hotbar
.' Go back to the Deepmist Grotto |outvehicle |q 25887
step
goto 61.1,63.9 |n
.' Enter the cave |goto 61.1,63.9,0.5 |noway |c |q 25887
step
goto 63.9,59.9
.talk 41341
..turnin 25887
step
goto 63.9,59.9
.talk 41341
.home Deepmist Grotto
step
goto 64.0,59.8
.talk 41885
..accept 26040
step
goto 63.9,59.4
.talk 41347
..accept 26008
step
goto 64.2,59.9
.talk 41344
..accept 25884
step
goto 61.1,63.9 |n
.' Leave the cave |goto 61.1,63.9,0.5 |noway |c |q 25884
step
goto 60.3,69.9
.click Naga Tridents##9552
..accept 25883
step
goto 57.7,75.4
.' Swim around on all 3 layers of the naga Holding Pens
.from Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
.' Slay 12 Zin'jatar Naga |q 25884/1
.get 7 Wiggleweed Sprout |q 26040/1
.' Use your Breathstone on Imprisoned Warriors |use Breathstone##56169 |tip They looks like dead orcs in big balls of light all around on the naga Holding Pens.
.' Free 10 Imprisoned Warriors |q 26008/1
.click Naga Tridents##9552+
.' Destroy 6 Naga Weapons |q 25883/1
step
'Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25884
..accept 27708
step
'Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25883
step
goto 60.1,81.2
.from Warden Azjakir##41530
.' Slay the Zin'jatar Warden |q 27708/1
step
goto 63.9,59.9
.talk 41341
..turnin 27708
..accept 25471
step
goto 64.0,59.8
.talk 41885
..turnin 26040
step
goto 63.9,59.4
.talk 41347
..turnin 26008
step
goto 48.3,72.5 |n
.' Enter the cave |goto 48.3,72.5,0.5 |noway |c |q 25471
step
goto Shimmering Expanse,56.0,13.7
.talk 39226
..turnin 25471
..accept 25334
step
goto 56.0,13.7
.talk 39226
..' Tell him you are ready to join him in the vision
.' Share in Farseer Gadra's Spirit Vision |q 25334/1
step
'Next to you:
.talk 40398
..turnin 25334
step
goto 56.0,13.7
.talk 39226
..accept 25164
step
goto 55.9,13.4
.from Zin'jatar Fathom-Stalker##40162+
.' Fend Off the Naga Attack |q 25164/1 |tip You have to kill 50 nagas.
.from Fathom-Lord Zin'jatar##40161
.' Defeat Fathom-Lord Zin'jatar |q 25164/2
step
goto 56.0,13.7
.talk 39226
..turnin 25164
step
goto 55.5,12.5
.talk 39877
..accept 25221
step
goto 52.0,18.0
.' Follow the path outside the cave
.' Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
.kill 20 Fleeing Zin'jatar Fathom-Stalker##40174+ |q 25221/1
step
goto 53.3,33.1
.talk 39877
..turnin 25221
..accept 25222
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c |q 25222
step
goto 49.5,41.2
.talk 40851
.fpath Silver Tide Hollow
step
goto 49.4,42.6
.talk 39876
..turnin 25222
..accept 25215
..accept 25216
step
goto 49.2,42.6
.talk 39875
..accept 25219
step
goto 49.1,42.0
.talk 39878
..accept 25220
step
goto 49.1,42.0
.talk 39878
.home Silver Tide Hollow
step
goto 50.3,41.1
.clicknpc Dead Zin'jatar Raider##39911+
.' Bring them to [50.8,45.9] |tip You have to drag them one at a time.
.' Dispose of 3 Dead Zin'jatar Raiders |q 25215/1
step
goto 59.6,40.1
.kill 12 Spiketooth Eel##40200+ |q 25220/1
.clicknpc Coilshell Sifter##39422+
.get 10 Coilshell Sifter |q 25219/1
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c |q 25219
step
goto 49.5,42.4
.talk 39876
..turnin 25215
step
goto 49.2,42.6
.talk 39875
..turnin 25219
step
goto 49.1,42.0
.talk 39878
..turnin 25220
step
goto 41.3,34.2
.talk 39882
..turnin 25216
..accept 25218
step
goto 41.3,34.1
.talk 40227
..accept 25360
step
goto 40.5,35.5
.' Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608 |tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
.' Fill Sambino's Air Balloon |q 25218/1
.kill 10 Green Sand Crab##39418+ |q 25360/1
.get Sambino's Air Valve |q 25218/2
step
goto 41.3,34.2
.talk 39882
..turnin 25218
..accept 25217
step
goto 41.2,34.2
.talk 40227
..turnin 25360
step
goto 42.7,34.0
.' Use one of Sambino's Modified Totems while standing on an orange spot on the ground: |tip You will only get one of the four totems to use, it's random.
.' Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
.' Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
.' Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
.' Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
.' Defend Sambino's Modified Totem
.' Take a Drill Sample |q 25217/1
step
goto 41.3,34.2
.talk 39882
..turnin 25217
..accept 25456
step
goto 50.1,39.0 |n
.' Enter Silver Tide Hollow |goto 50.1,39.0,0.5 |noway |c |q 25456
step
goto 49.6,42.1
.talk 39876
..turnin 25456
..accept 25359
step
goto 64.1,42.3
.talk 40221
..turnin 25359
..accept 25439
..accept 25441
step
goto 65.8,43.1
.' Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
.' Trap 30 Swarming Serpents |q 25441/1
.kill 10 Zin'jatar Ravager##40275+ |q 25439/1
step
goto 64.1,42.3
.talk 40221
..turnin 25439
..accept 25440
..turnin 25441
step
goto 67.3,49.7
.kill Fathom-Lord Zin'jatar##40510 |q 25440/1
.collect Luminescent Pearl##54614 |n
.' Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
..accept 25442
step
goto 64.1,42.3
.talk 40221
..turnin 25440
step
goto 49.2,42.6
.talk 39875
..turnin 25442
..accept 25890
step
goto 50.4,41.1 |n
.' Leave the cave |goto 50.4,41.1,0.5 |noway |c |q 25890
step
goto 51.8,48.6 |n
.' Enter Nespirah |goto 51.8,48.6,0.5 |noway |c |q 25890
step
'Run up the spiral ramp and follow Earthmender Duarn around after he spawns:
.' Find a way to communicate with Nespirah |q 25890/1
step
goto 51.6,52.2
.talk 41531
..turnin 25890
..accept 25900
step
goto 51.6,52.2
.talk 41531
..' Tell him whenever he's ready
.' Speak with Earthmender Duarn |q 25900/1
step
goto 51.6,52.2
.talk 41531
..turnin 25900
..accept 25907
..accept 25908
step
goto 55.0,53.3
.kill 7 Idra'kess Sentinel##41466+ |q 25908/1
.kill 7 Idra'kess Enchantress##41467+ |q 25908/2
.' Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178 |tip They are in the trenches with the huge pearls.
.' Rescue 7 Pearl Miners |q 25907/1
step
goto 51.6,52.2
.talk 41531
..turnin 25907
..turnin 25908
..accept 25989
step
goto 53.6,59.9
.' Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184 |tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
.clicknpc Deepseeker Crab##41520
.get Deepseeker Crab |q 25989/1
step
goto 51.6,52.2
.talk 41531
..turnin 25989
..accept 25990
step
goto 51.6,52.2
.talk 41531
..' Tell him let's speak with Nespirah
.' Speak with Earthmender Duarn |q 25990/1
step
goto 51.6,52.2
.talk 41531
..turnin 25990
..accept 25991
step
goto 60.2,63.7
.talk 41810
..turnin 25991
..accept 25993
step
goto 60.2,63.7
.talk 41811
..accept 25992
step
goto 60.1,63.4
.talk 41813
..accept 25994
step
goto 61.3,60.7
.from Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
.get 5 Mysterious Pearl |q 25994/1
.click Idra'kess Weapon Rack##9557+
.get 4 Purloined Polearm |q 25992/1
.' Attack Nespirah Abscesses |tip They look like red lumps sitting on the ground around this area.
.' Attack 7 Nespirah Abscesses |q 25993/1
step
goto 60.1,63.4
.talk 41813
..turnin 25994
step
goto 60.2,63.7
.talk 41810
..turnin 25993
step
goto 60.2,63.7
.talk 41811
..turnin 25992
step
goto 60.2,63.7
.talk 41810
..accept 25995
step
goto 62.9,57.2 |n
.' Follow the path up |goto 62.9,57.2,0.5 |noway |c |q 25995
step
goto 57.4,56.4
.kill Overseer Idra'kess##41731 |q 25995/1 |tip Kill the Idra'kess Mistresses when instructed to.
step
goto 60.3,52.8 |n
.' Follow the path down |goto 60.3,52.8,0.5 |noway |c |q 25995
step
goto 51.6,52.2
.talk 41531
..turnin 25995
..accept 25996
.' Listen as Duarn speaks to Nespirah |q 25996/1
step
goto 50.3,55.4
.' Follow Erunak Stonespeaker when he runs away
.clicknpc Swiftfin Seahorse##41776
.' Escape on Erunak's Seahorse |q 25996/2
step
goto 50.8,63.4
.talk 40871
.fpath Legion's Rest
step
goto 51.2,63.0
.talk 40917
..turnin 25996
..accept 25592
step
goto 51.2,63.0
.talk 40916
..accept 25593
step
goto 51.6,62.8
.talk 40919
..accept 25595
step
goto 51.7,62.5
.talk 40918
..accept 25594
step
goto 51.6,62.6
.talk 42908
.home Legion's Rest
step
goto 49.5,64.8 |n
.' Leave the cave |goto 49.5,64.8,0.5 |noway |c |q 25594
step
goto 49.4,62.2
.from Snapjaw Grouper##40912+
.get 8 Snapjaw Grouper Meat |q 25595/1
.clicknpc Spiralung##39745+
.collect Spiralung##55141 |q 25593 |n
.' Use your Spiralungs on Nespirah Survivors |use Spiralung##55141 |tip They look like Horde mobs swimming in place around the rock air bubble cracks around this area.
.' Rescue 8 Shell Survivors |q 25593/1
.click Fiasco's Stray Part##6314+
.get 12 Fiasco's Stray Parts |q 25594/1
step
goto 59.6,69.0
.kill 10 Redgill Scavenger##40911+ |q 25592/1 |tip They swim above the plants pretty high from the ground.
step
goto 49.5,64.8 |n
.' Swim down under the big stone slab
.' Enter the cave |goto 49.5,64.8,0.5 |noway |c |q 25592
step
goto 51.7,62.5
.talk 40918
..turnin 25594
step
goto 51.2,63.0
.talk 40916
..turnin 25593
step
goto 51.2,63.0
.talk 40917
..turnin 25592
step
goto 51.6,62.8
.talk 40919
..turnin 25595
step
goto 51.3,62.4
.talk 40920
..accept 25954
step
goto 51.2,63.0
.talk 40916
..accept 25955
..accept 25952
step
goto 51.2,63.0
.talk 40917
..accept 25953
step
goto 40.5,74.8
.' Go to this spot in the ruins
.' Scout the Structures South of Quel'Dormir Gardens |q 25955/3
step
goto 40.5,75.5
.click Broken Prong##9512
..accept 25956
step
goto 39.7,67.7
.click Ranger Valarian##3412
.' Read the Ranger Valarian Statue |q 25954/3
step
goto 38.5,66.0
.click High Priestess Siralen##3412
.' Read the High Priestess Siralen Statue |q 25954/4
step
goto 35.8,63.0
.' Go to this spot in the ruins
.' Scout the Tunnel West of Quel'Dormir Gardens |q 25955/2
step
goto 38.6,59.0
.click Queen Azshara##3412
.' Read the Queen Azshara Statue |q 25954/2
step
goto 39.7,59.0
.click Lestharia Vashj##3412
.' Read the Lestharia Vashj Statue |q 25954/1
step
goto 39.2,57.7
.' Go to this spot in the ruins
.' Scout the Northern Quel'Dormir Gardens |q 25955/1
step
goto 40.7,62.0
.from Azsh'ir Monitor##40877+ |tip They look like small green eyeballs floating above small stands on the ground around this area.
.' Destroy 8 Azsh'ir Monitor |q 25953/1
.kill 10 Azsh'ir Patroller##39638+ |q 25952/1
.collect Ancient Elven Etching##62282 |n
.' Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62282
..accept 27717
step
goto 51.3,62.4
.talk 40920
..turnin 25954
..turnin 27717
step
goto 51.2,63.0
.talk 40916
..turnin 25955
..turnin 25952
..turnin 25956
step
goto 51.2,63.0
.talk 40917
..turnin 25953
step
goto 51.6,62.8
.talk 40919
..accept 25957
step
goto 40.5,75.6
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground in the ruins.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 25957
step
goto 40.6,75.3
.talk 40978
..accept 25619
step
goto 39.7,69.5
.' Use the abilities on your hotbar
.from Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
.' Slay 10 Kvaldir defenders |q 25619/1
step
goto 40.6,75.3
.talk 40978
..turnin 25619
..accept 25620
step
goto 39.4,59.0
.talk 40640
..turnin 25620
..accept 25637
step
goto 39.0,58.6
.talk 41050
..accept 25658
step
goto 35.6,60.4
.' Go to the top level of the ruins
.' Use the abilities on your hotbar
.from Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
.' Kill 16 Kvaldir invaders on the terrace |q 25637/1
.click Nar'shola Ward##6913+
.' Activate 6 Nar'shola Wards |q 25658/1
step
goto 37.2,77.5
.talk 41050
..turnin 25658
step
goto 36.4,78.7
.talk 41049
..turnin 25637
..accept 25659
step
goto 28.6,78.6
.' Use the abilities on your hotbar
.kill Varkul the Unrelenting##41115 |q 25659/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25659
step
goto 40.6,75.1
.talk 40919
..turnin 25957
..accept 25958
step
goto 40.6,75.0
.clicknpc Tamed Seahorse##50592
.' You will ride to the Ruins of Vashj'ir |goto 39.6,54.7,0.5 |noway |c |q 25958
step
goto 39.8,54.0
.talk 40916
..turnin 25958
..accept 25959
step
goto 39.5,54.0
.talk 40917
..accept 25960
step
goto 39.5,54.7
.talk 40918
..accept 25962
step
goto 40.4,55.8
.' Use your Box of Crossbow Bolts on Horde Lookouts |use Box of Crossbow Bolts##56247 |tip They look like Horde mobs either standing or on sea horses around this area with crossbows.
.' Restock 8 Horde Lookouts |q 25960/1
step
goto 37.5,78.4
.from Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
.' Slay 10 Southern Naga Forces |q 25959/1
.click Bloated Kelp Bulb##9535+
.get 8 Bloated Kelp Bulb |q 25962/1
step
goto 39.5,54.7
.talk 40918
..turnin 25962
step
goto 39.5,54.0
.talk 40917
..turnin 25960
step
goto 39.8,54.0
.talk 40916
..turnin 25959
..accept 25963
step
goto 39.5,54.7
.talk 40918
..' Tell him you're ready to begin the assault on the terrace
.' Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
.kill 100 Azsh'ir Soldier##41249+ |q 25963/2
.kill 20 Azsh'ir Wave Screamer##41250+ |q 25963/3
.kill 12 Azsh'ir Archaean##42549+ |q 25963/4
step
goto 39.1,78.7
.talk 40916
..turnin 25963
..accept 25965
step
goto 39.1,78.5
.talk 40917
..accept 25964
step
goto 34.0,67.8
.' Go to this spot at the entrance of the tunnel
.' Scout the Tunnel to the North |q 25965/1
step
goto 31.0,72.2
.' Go to this spot at the entrance of the tunnel
.' Scout the Northwestern Terrace |q 25965/2
step
goto 36.0,75.0
.talk 41784 |tip They look like Horde mobs spread out on the ground around this whole area.
..' Tell them they should get moving.
.' Rescue 6 Injured Assault Volunteers |q 25964/1
step
goto 39.1,78.7
.talk 40916
..turnin 25965
step
goto 39.1,78.5
.talk 40917
..turnin 25964
step
goto 39.1,78.6
.talk 40919
..accept 25966
step
goto 28.9,78.6
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground on the stone terrace.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 25966
step
goto 29.0,78.5
.talk 42076
..accept 25858
step
goto 34.4,78.7
.talk 42072
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Fathom-Lord Zin'jatar |q 25858/1
step
goto 36.8,79.8
.talk 41455
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Overseer Idra'kess |q 25858/3
step
goto 39.2,78.0
.talk 42071
..' Tell you are to hunt the Crucible of Nazsharin
.' Speak to Lady Sira'kess |q 25858/2
step
goto 46.2,79.6
.talk 42074
..turnin 25858
..accept 25859
step
goto 46.3,78.6
.talk 41476
..accept 25862
step
goto 57.2,89.9
.click Crucible of Nazsharin##9565
..turnin 25862
..accept 25863
step
goto 57.2,85.2
.talk 41457
..accept 25861
step
goto 58.7,86.4
.' Aggro a Kvaldir High-Shaman, but don't kill him |tip They stand inside the buildings around this area.
.' Lure the Kvaldir High-Shaman back to Executioner Verathress at [57.2,85.2]
.' Bring Kvaldir High-Shaman to the executioner |q 25861/1
step
goto 57.2,85.2
.talk 41457
..turnin 25861
step
goto 57.2,87.5
.' Use the abilities on your hotbar
.kill 20 Vrykul Ledge Kvaldir |q 25859/1
step
goto 46.4,79.0
.talk 42076
..turnin 25863
step
goto 46.4,79.3
.talk 42074
..turnin 25859
step
goto 46.4,79.0
.talk 42076
..accept 26191 |instant
.' Witness the Continuing Story of the Battlemaiden |q 25966/1
step
goto 29.6,78.9
.talk 40919
..turnin 25966
..accept 25967
step
goto 29.5,79.0
.clicknpc Tamed Seahorse##48866
.' You will ride to Legion's Rest |goto 50.6,63.4,0.5 |noway |c |q 25967
step
goto 51.2,63.0
.talk 40917
..turnin 25967
..accept 25968
step
goto 50.4,79.0
.talk 41770
..turnin 25968
..accept 25970
..accept 25971
step
goto 50.4,79.0
.talk 40921
..accept 25969
step
goto 48.4,84.0
.click Horde Survival Kit##7539
.get Horde Survival Kit |q 25970/1
step
goto 48.4,83.8
.kill 10 Muckskin Scrounger##41566+ |q 25969/1
step
goto 51.3,84.3
.from Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+
.click Coil of Kvaldir Rope##7548+
.get 8 Coil of Kvaldir Rope |q 25971/1
step
goto 50.4,79.0
.talk 41770
..turnin 25970
..turnin 25971
..turnin 25969
..accept 25972
step
goto 50.4,79.1
.' Swim up to the rescue balloon on the surface
.click Survival Kit Remnants##7539
.collect Rescue Flare##56188 |n
.' Use your Rescue Flare in your bags |use Rescue Flare##56188
.' Fire a rescue flare towards the Horde ships |q 25972/2
step
goto 50.4,79.1
.talk 40921
..turnin 25972
..accept 25973
step
goto 51.2,63.0
.talk 40917
..turnin 25973
step
goto 51.6,62.8
.talk 40919
..accept 26135
step
goto 33.2,77.8
.' Go to the very top of the naga terrace and into the dome temple
.' Infiltrate the Quel'Dormir Temple |q 26135/1
step
goto 33.1,77.8
.' Swim up a bit inside the temple
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It looks like a bright flashing light inside the temple.
.' Become the Naz'jar Battlemaiden |havebuff Interface\Icons\Achievement_Boss_LadyVashj |q 26135
step
goto 33.1,77.9
.talk 41456
..accept 25896
step
goto 33.1,75.9
.talk 42077
..accept 25629
step
goto 33.1,61.0
.talk 41980
..' Tell him the mistress awaits
.' Gather Fathom-Caller Azrajar |q 25896/2
step
goto 33.1,73.0
.talk 41985 |tip They look like pink and yellow nagas with pink shields around them all around this area.
..' Tell them they are needed for the ritual
.' Gather 6 Sira'kess Tide Priestesses |q 25896/1
.' Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
.' Relieve 8 Naz'jar Honor Guards |q 25629/1
step
goto 33.1,75.9
.talk 42077
..turnin 25629
step
goto 33.1,77.9
.talk 41456
..turnin 25896
..accept 25860
step
goto 33.1,76.9
.' Use the abilities on your hotbar
.from Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+ |q 25860/1
step
goto 33.1,77.9
.talk 41456
..turnin 25860
..accept 25951
step
goto 37.9,78.5
.' Use the abilities on your hotbar
.from Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
.' Hold the eastern end of Quel'Dormir Terrace |q 25951/1
step
goto 41.9,78.6
.' Use the abilities on your hotbar
.from Hagrim Hopebreaker##42063 |tip He spawns when the naga allies arrive
.' Push the Kvaldir back across the bridge |q 25951/2
step
goto 42.5,78.6
.talk 42077
..turnin 25951
.' Witness the Concluding Story of the Battlemaiden |q 26135/2
step
goto 51.6,62.8
.talk 40919
..turnin 26135
..accept 26006
step
goto 49.6,65.1
.' Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
.clicknpc Rope Ladder##41020
.' Jump up onto the boat |goto 64.7,68.7,0.5 |noway |c |q 26006
step
goto 49.5,65.6
.talk 43225
.fpath Stygian Bounty
step
goto Vashj'ir,64.5,68.8
.talk 42410
..turnin 26006
..accept 26221
step
goto 64.4,68.7
.talk 45460
..accept 27442
step
goto 64.6,68.7
.' Board the Verne once it arrives |q 26221/1 |tip It's a boat, so you may have a to wait a few minutes for it.
step
'Ride the boat
.' Secure Tenebrous Cavern |q 26221/2
step
goto Abyssal Depths,53.9,59.6
.talk 40873
.fpath Tenebrous Cavern
step
goto Abyssal Depths 51.4,61.5
.talk 41663
..turnin 26221
step
goto 51.5,60.8
.talk 41669
..accept 26122
step
goto 51.2,60.5
.talk 43141
.home Tenebrous Cavern
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 26122
step
goto 55.8,46.6
.from Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+ |tip They Scourgut Remoras swim in place beneath the big purple ledge plants that grow out of the sides of the tall rock formations around this area.
.' Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
.get 4 Terrapin Oil |q 26122/1
.get 4 Remora Oil |q 26122/2
.get 4 Hammerhead Oil |q 26122/3
step
goto 56.7,58.1 |n
.' Enter the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 26122
step
goto 51.5,60.8
.talk 41669
..turnin 26122
..accept 26126
step
goto 51.5,60.5
.click Fuel Sampling Station##3491
..' Click "Let's get started!"
.' Choose the Hammerhead Oil Sample 3 Times
.' Choose the Remora Oil Sample 2 Times
.' Mix the samples together!
.collect Promising Fuel Sample##56833 |q 26126
step
goto 51.5,60.8
.talk 41669
..' Tell him you made a Promising Fuel Sample
.' Create the perfect bio-fuel |q 26126/1
step
goto 51.5,60.8
.talk 41669
..turnin 26126
step
goto 51.4,61.5
.talk 41663
..accept 26086
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 26086
step
goto 42.9,51.0
.talk 41908
..turnin 26086
..accept 26087
step
goto 45.1,56.1
.from Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
.get 6 Glow-Juice |q 26087/1
step
goto 42.9,51.0
.talk 41908
..turnin 26087
..accept 26088
..accept 26089
step
'Use your Fish Hat |use Fish Hat##56813
.' Get the Lure buff |havebuff Interface\Icons\Ability_Vehicle_ElectroCharge |q 26088
step
goto 46.4,54.9
.kill 4 Coldlight Hunter##41925+ |q 26089/1
.kill 4 Coldlight Oracle##41926+ |q 26089/2
.collect Enormous Eel Egg##56812 |n
.' Click your Enormous Eel Egg in your bags |use Enormous Eel Egg##56812
..accept 26090
.' Get near Coldlight Nibblers |tip They look like small fish that hang out in the tips of the huge tube plants around this area.
.get 30 Underlight Nibbler |q 26088/1
step
goto 42.9,51.0
.talk 41908
..turnin 26088
..turnin 26089
..turnin 26090
..accept 26091
..accept 26092
step
goto 44.4,53.7
.' Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56815 |tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
.from Weakened Great-Eel##41927
.' Avenge Orako's Wolf |q 26091/2
step
goto 42.9,51.0
.talk 41908
..turnin 26091
step
goto 51.4,61.5
.talk 41663
..turnin 26092
step
goto 51.5,60.9
.talk 41670
..accept 25974
..accept 25980
step
goto 51.5,60.8
.talk 41669
..accept 25982
step
goto 51.5,60.7
.talk 41668
..accept 25976
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 25976
step
goto 52.5,21.3
.from Fathom-Caller Azrajar##41590
.' Use your Horde Standard on Fathom-Caller Azrajar's corpse |use Horde Standard##56255
.' Plant a banner in Fathom-Caller Azrajar's corpse |q 25980/1
step
goto 43.7,16.7
.click Deepfin Plunder##259+
.get 6 Deepfin Plunder |q 25976/1
step
goto 50.2,18.2
.from Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+ |q 25974/1
.from Merciless One##41601+
.get 6 Merciless Head |q 25982/1
.' You can find more Merciless Heads around [43.4,19.0]
step
goto 56.7,58.1 |n
.' Enter the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 25982
step
goto Kelp'thar Forest,49.3,87.9
.talk 43216
.fpath Sandy Beach
step
goto Shimmering Expanse,61.0,28.4
.talk 43220
.fpath Sandy Beach
step
goto 51.5,60.8
.talk 41668
..turnin 25976
step
goto 51.5,60.8
.talk 41669
..turnin 25982
..accept 25988
.' Watch the cutscene
.' Wear the Mindless One |q 25988/1
step
goto 51.5,60.8
.talk 41669
..turnin 25988
..accept 25984
step
goto 51.5,60.9
.talk 41670
..turnin 25974
..turnin 25980
step
goto 56.7,58.1 |n
.' Leave the Tenebrous Cavern |goto 56.7,58.1,0.5 |noway |c |q 25984
step
goto 42.6,37.8
.talk 41636
..turnin 25984
..accept 26071
..accept 26057
step
goto 42.7,37.9
.talk 41600
..accept 26072
step
goto 42.7,37.9
.talk 41639
..accept 26096
step
goto 46.4,35.0
.' Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
.from Faceless Defiler##41644+ |tip Kill them next to Erunak's Confinement Totem you put down.
.' Confine 5 Faceless Defiler Energies |q 26072/1
.from Crushing Eel##41646+, Trench Stalker##41645+, Deep Remora##41647+ |q 26071/1
.click Scalding Shroom##10057+
.get 5 Scalding Shroom |q 26096/1
step
goto 42.7,37.8
.talk 41636
..turnin 26071
step
goto 42.7,37.9
.talk 41600
..turnin 26072
step
goto 42.7,37.9
.talk 41639
..turnin 26096
step
goto 42.7,37.9
.talk 41600
..accept 26111
step
goto 47.0,28.0
.click Stonespeaker's Luring Totem##9575
.from Ick'thys the Unfathomable##41648
.get The Brain of the Unfathomable |q 26111/1
step
goto 52.6,27.8
.talk 41640
..turnin 26057
..accept 26065
step
goto 54.8,28.2
.' Use Valoren's Shrinkage Totem next to Tentacle Horrors |use Valoren's Shrinkage Totem##57409
.from Shrunken Tentacle Horror##41641+
.' Kill all the Tentacle Horrors attacking Wil'hai
.' Free Wil'hai |q 26065/1
step
goto 52.6,27.8
.talk 41640
..turnin 26065
step
goto 42.7,37.9
.talk 41600
..turnin 26111
..accept 26130
step
goto 42.7,37.8
.talk 41636
..accept 26133
step
goto 36.3,47.0
.' Swim down into the cave
.kill Ur'Goz##41654 |q 26130/1
step
goto 34.6,54.6
.kill Sku'Bu##41655 |q 26130/2
step
goto 29.6,53.0
.kill Neph'Lahim##41656 |q 26130/3
step
goto 31.9,51.3
.kill 8 Nether Fiend##41650+ |q 26133/1
step
goto 42.7,37.8
.talk 41636
..turnin 26133
step
goto 42.7,37.9
.talk 41600
..turnin 26130
..accept 26140
step
goto 36.6,42.1 |n
.' Enter L'ghorek |goto 36.6,42.1,0.5 |noway |c |q 26140
step
goto 38.5,45.3
.talk 42197
..turnin 26140
..accept 26141
..accept 26142
step
goto 27.0,54.0
.from Twilight Champion##41652+, Twilight Candidate##41657+
.collect Twilight Cage Key##57118 |n
.' Click the Twilight Cage Key in your bags |use Twilight Cage Key##57118
..accept 26149
step
goto 27.5,55.7
.click Ancient Conduit##9639+
.' Destroy 5 Ancient Conduits |q 26142/1
.from Twilight Candidate##41657+
.get 7 Runestone of Binding |q 26141/1
.click Cage##1787+
.' Rescue 5 Horde Prisoners |q 26149/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26149
step
goto 38.5,45.3
.talk 42197
..turnin 26141
..turnin 26142
..accept 26154
step
goto 34.9,54.0
.' Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172 |tip You can run through the groups of mobs, they won't attack you, even though they are red.
.' Possess a Bound Torrent |q 26154/1
step
goto 36.3,52.8
.' Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
.kill 50 Twilight Devotee##42281+ |q 26154/2
.kill 10 Faceless Overseer##42285+ |q 26154/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26154
..accept 26143
step
goto 33.1,55.8
.' Use the abilities on your hotbar on Hallazeal the Ascended
.kill Hallazeal the Ascended##41659 |q 26143/1
step
goto 38.5,45.3
.talk 42197
..turnin 26143
..accept 26182
step
goto 51.6,60.9
.talk 41600
..turnin 26182
..accept 26194
step
goto 51.6,60.9
.talk 41600
..' Tell him you are prepared
.' Ride the boat until it stops
.' Fight in the Battle for Abyssal Breach |q 26194/1
step
goto 69.8,34.4
.talk 44540
..turnin 26194
step
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27722
step
goto 50.5,38.4
.talk 45244
..turnin 27442 |tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
..turnin 27722
..accept 27203
step
goto 50.1,37.8
.click Portal to the Maelstrom##5231
.' Teleport to The Maelstrom |goto The Maelstrom |noway |c |q 27203
step
goto The Maelstrom,33.4,50.2
.talk 45042
..turnin 27203
..accept 27123
step
goto 32.5,52.0
.clicknpc Wyvern##45005
.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c |q 27123
step
goto Deepholm,49.6,53.0
.talk 43065
..turnin 27123
..accept 26245
step
goto 49.7,52.9
.talk 43397
..accept 27136
..accept 26244
step
goto 49.5,53.3
.talk 42573
..accept 26409
step
goto 49.2,51.9
.talk 45300
.home Temple of Earth
step
goto 46.5,57.3
.talk 42574
..turnin 26409
..accept 26410
..accept 27135
step
goto 45.5,57.9
.from Rockslice Flayer##42606+
.get 5 Quartzite Resin |q 26410/1
step
goto 46.5,57.3
.talk 42574
..turnin 26410
step
goto 51.1,61.6
.' Use your Depleted Totem |use Depleted Totem##60835
.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
.' Energize the Totem 8 Times |q 27136/1
step
goto 52.0,58.9
.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
.from Magmatooth##45099
.get The Burning Heart |q 27135/1
step
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 46.5,57.3
.talk 42574
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |tip He's laying on the ground next to Initiate Goldmine.
.' Apply the Explosive Bonding Compound |q 26411/1
step
goto 46.5,57.3
.talk 42574
..turnin 26411
..accept 26413
step
goto 49.5,53.3
.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
step
goto 49.5,53.3
.talk 42573
..turnin 26413
..accept 26484
step
goto 56.1,74.2
.clicknpc Slain Cannoneer##43032
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.clicknpc Captain Skullshatter##43048
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.click Captain's Log##6891
..accept 26246
step
goto 56.7,76.4
.clicknpc Unexploded Artillery Shell##43044 |tip You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental##43026+ |q 26244/1
step
goto 49.6,52.9
.talk 43065
..turnin 26245
..turnin 26246
step
goto 49.7,52.9
.talk 43397
..turnin 26244
step
goto 49.6,53.0
.talk 43065
..accept 26247
step
goto 62.4,52.6
.talk 42684
..turnin 26247
..accept 26248
..accept 26249
step
'All around on this air ship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
.' Receive 6 Slain Crew Member Information |q 26248/1
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.click Bottle of Whiskey##9712 |tip Located on the life boat.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.click Spool of Rope##7538
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26427
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26248
..accept 26251
..accept 26250
step
'Go onto the main deck of the ship and go down the stairs to the deck below:
.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
.talk 42801
.' Subdue Mor'norokk the Hateful |q 26250/1
step
'All around on this lower deck of the air ship:
.kill 6 Twilight Saboteur##42885+ |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.clicknpc Stormbeak##42716
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
goto 49.6,53.0
.talk 43065
..turnin 26255
..accept 26258
step
goto 49.7,52.9
.talk 43397
..accept 26259
step
goto 59.4,58.2
.' Go to this spot
.' Reach Deathwing's Fall |q 26258/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26258
..accept 26256
step
goto 61.5,60.6
.from Twilight Bloodshaper##43218+
.get Twilight Orders |q 26256/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26256
..accept 26261
step
goto 62.8,59.5
.click Slavemaster's Coffer##41
.collect Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.click Ball and Chains##181+ |tip They are attached to the feet of the Enslaved Miners around this area.
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.click Forgemaster's Log##6891
..turnin 26260
..accept 27007
step
goto 70.6,61.2
.' Go to this spot
.' Reach Upper Silvermarsh |q 27007/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27007
..accept 27010
step
goto 71.8,64.3
.click Trogg Crate##9855
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect Maziel's Research##60816 |n
.' Click Maziel's Research in your bags |use Maziel's Research##60816
..accept 27100
step
goto 74.9,64.8
.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
.' Watch the dialogue
.' Uncover the World Pillar Fragment Clue |q 27010/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27010
..accept 27061
step
goto 72.5,65.2
.from Mercurial Ooze##43158+
.get 4 Twilight Research Notes |q 27100/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27100
..accept 27101
step
goto 67.2,70.2
.click Maziel's Journal##2530
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c |q 27061
step
goto 72.8,62.0
.kill Maziel##44967 |q 27102/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27102
step
goto 69.5,68.0 |n
.' Leave the cave |goto 69.5,68.0,0.5 |noway |c |q 27061
step
goto 64.5,82.1
.talk 44010
..turnin 27061
..accept 26766
..accept 26768
step
goto 68.2,77.9
.from Scalesworn Cultist##44221+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26768
step
goto 59.9,83.6
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch##44148 |q 26771/1
step
goto 64.5,82.1
.talk 44010
..turnin 26771
..accept 26857
step
goto 64.6,82.2
.talk 44222
..accept 26861
step
goto 68.7,75.0
.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
.' Disrupt the Twilight Gate |q 26861/1
step
goto 71.2,75.1
.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
.' Disrupt the Elemental Gate |q 26861/2
step
goto 69.9,76.7
.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
.' Defeat 8 Abyssion's Underlings |q 26857/1
step
goto 64.6,82.2
.talk 44222
..turnin 26861
step
goto 64.5,82.2
.talk 44010
..turnin 26857
..accept 26876
step
goto 69.9,76.9
.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
.from Abyssion##44289
.click The First Fragment of the World Pillar##9779
.get The Upper World Pillar Fragment |q 26876/1
step
goto 49.6,53.0
.talk 43065
..turnin 26876
step
goto 49.7,52.9
.talk 43397
..turnin 26259
step
goto 27.9,68.7
.talk 43071
..turnin 26484
..accept 27931
step
goto 30.6,77.7
.talk 47195
..turnin 27931
..accept 27932
..accept 27933
step
goto 32.2,79.1
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490 |tip They look like glowing giants that walk around this area.
.kill 5 Sundered Emerald Colossus##44229+ |q 27932/1
.from Jade Rager##44220+
.get 6 Elemental Ore |q 27933/1
step
goto 30.6,77.7
.talk 47195
..turnin 27932
..turnin 27933
..accept 27934
step
goto 30.6,77.7
.talk 47195
..' Tell him you are ready for the ritual
.' Complete the One With the Ground Ritual |q 27934/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27934
..accept 27935
step
goto 46.9,89.1
.kill Avalanchion##44372 |q 27935/1
step
goto 43.4,82.0 |n
.' Leave the cave |goto 43.4,82.0,0.5 |noway |c |q 27935
step
goto 27.9,68.7
.talk 43071
..turnin 27935
..accept 26499
step
goto 28.2,69.6
.talk 43160
..accept 26500
step
goto 29.7,68.8
kill 12 Stone Trogg Ambusher |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
.' Grant the Stonefather's Boon 12 times |q 26499/1
step
goto 28.2,69.6
.talk 43160
..turnin 26500
..accept 26502
step
goto 27.9,68.7
.talk 43071
..turnin 26499
..accept 26501
step
goto 27.3,67.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Armory |q 26501/1
.click Thunder Stone##9722+
.get 12 Thunder Stone |q 26502/1
step
goto 24.5,62.4
.talk 43168
..turnin 26501
..accept 26537
step
goto 24.8,62.2
.talk 43169
..turnin 26502
..accept 26564
step
goto 24.6,62.2
.talk 43319
..accept 26591
step
goto 23.9,60.3
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |tip They look like dwarves laying on the ground around this area.
.' Patch up 10 Injured Earthen |q 26591/1
.click Catapult Part##9860+
.get 6 Catapult Part |q 26564/1
.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+ |q 26537/1
step
goto 24.5,62.4
.talk 43168
..turnin 26537
step
goto 24.6,62.2
.talk 43319
..turnin 26591
step
goto 24.8,62.2
.talk 43169
..turnin 26564
step
goto 24.5,62.4
.talk 43168
..accept 26625
step
goto 22.6,56.9
.from Troggzor the Earthinator##43456
.get The Earthinator's Cudgel |q 26625/1
step
goto 24.5,62.4
.talk 43168
..turnin 26625
step
goto 24.8,62.2
.talk 43169
..accept 27126
step
goto 20.7,61.6
.talk 45043
..turnin 27126
..accept 26632
step
goto 20.7,61.6
.talk 45043
..' Tell him you're ready to escort the catapult
.' Safely Escort the Earthen Catapult |q 26632/1
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.clicknpc Earthen Catapult##43952
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombard 30 Reinforcements |q 26755/1
step
goto 22.7,52.0
.talk 43897
..turnin 26755
..accept 26762
step
goto 22.8,52.1
.talk 43898
..accept 26770
step
goto 22.6,47.6
.clicknpc Deactivated War Construct##43984
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic##43995+ |q 26770/1
step
goto 22.8,52.1
.talk 43898
..turnin 26770
step
goto 22.7,52.0
.talk 43897
..turnin 26762
..accept 26834
step
goto 27.6,44.8
.talk 44143
..turnin 26834
..accept 26791
..accept 26792
step
goto 27.6,44.7
.clicknpc War Guardian##44126
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstrosity##44035+ |q 26792/2
.clicknpc Giant Mushroom##44049+
.' Destroy 5 Giant Mushrooms |q 26791/2
step
goto 27.6,44.8
.talk 44143
..turnin 26791
..turnin 26792
..accept 26835
step
goto 22.7,52.0
.talk 43897
..turnin 26835
..accept 26836
step
goto 24.5,31.1
.from Bouldergut##44151
.' Rescue Stonefather Oremantle |q 26836/1
step
goto 22.7,52.0
.talk 43897
..turnin 26836
..accept 27937
step
goto 28.0,68.6
.talk 44204
..turnin 27937
..accept 27938
step
goto 28.0,68.7
.click The Stonefather's Safe##7608
.get The Middle Fragment of the World Pillar |q 27938/1
step
goto 49.5,53.3
.talk 42573
..turnin 27938
step
goto 49.6,53.0
.talk 43065
..accept 26326
step
goto 46.1,45.6
.talk 42730
..turnin 26326
..accept 26312
..accept 26314
step
goto 46.2,45.7
.talk 42731
..accept 26313
step
goto 44.3,43.7
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
step
goto 46.2,45.7
.talk 42731
..turnin 26313
step
goto 46.1,45.6
.talk 42730
..turnin 26312
..turnin 26314
step
goto 46.2,45.7
.talk 42731
..accept 26315
step
goto 49.2,40.1
.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
.' Seek Peace with Boden the Imposing |q 26315/1
step
goto 46.2,45.7
.talk 42731
..turnin 26315
..accept 26328
step
goto 56.5,42.7
.talk 42467
..turnin 26328
..accept 26376
..accept 26377
step
goto 56.5,41.0
.talk 42899
..accept 26375
step
goto 60.2,39.4
.kill Dragul Giantbutcher##42921 |q 26376/1
step
goto 59.5,41.5
.click Jade Crystal Cluster##9694+
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
step
'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
.collect Jade Crystal Composite##58783 |q 26377
step
goto 59.6,41.4
.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
.' Lure an Agitated Tunneler |q 26377/1
step
goto 59.3,40.6
.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+ |q 26376/2
step
goto 56.5,41.0
.talk 42899
..turnin 26375
step
goto 56.5,42.7
.talk 42467
..turnin 26376
..turnin 26377
..accept 26426
step
goto 51.7,31.6
.' Get next to Felsen the Enduring |tip He's a big white rock giant.
.' Find Felsen the Enduring |q 26426/1
step
goto 58.4,25.7
.' Fly to the mouth of this cave
.' Find the entrance to the Crumbling Depths |q 26426/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26426
..accept 26869
step
goto 58.7,25.9 |n
.' Enter the cave |goto 58.7,25.9,0.5 |noway |c |q 26869
step
goto 64.5,21.7 |n
.' Follow the path |goto 64.5,21.7,0.5 |noway |c |q 26869
step
goto 65.3,18.4 |n
.' Follow the path |goto 65.3,18.4,0.5 |noway |c |q 26869
step
goto 66.4,20.6
.click Gigantic Painite Cluster##9815
..turnin 26869
..accept 26871
step
goto 64.3,23.5 |n
.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c |q 26871
step
goto 58.3,25.5 |n
.' Leave the cave |goto 58.3,25.5,0.5 |noway |c |q 26871
step
goto 56.5,42.7
.talk 42467
..turnin 26871
..accept 26436
step
goto 34.3,34.3
.talk 42469
..turnin 26436
..accept 26438
..accept 26437
step
goto 34.6,34.2
.talk 43344
..accept 26439
step
goto 30.5,46.8
.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+ |q 26438/1
.click Chalky Crystal Formation##9715+
.get 8 Chalky Crystal Formation |q 26437/1
.clicknpc Dormant Stonebound Elemental##43115+
.' Reform 6 Stonebound Elementals |q 26439/1
step
goto 34.3,34.3
.talk 42469
..turnin 26438
..turnin 26437
step
goto 34.5,34.4
.talk 43344
..turnin 26439
step
goto 34.3,34.3
.talk 42469
..accept 28869
step
'Next to you:
.talk 43116
..turnin 28869
..accept 26440
step
goto 30.1,47.7
.' Get next to the huge green crystals
.' Bring Pebble to the crystal formation |q 26440/1
step
'Next to you:
.talk 43116
..turnin 26440
..accept 26441
step
goto 34.3,34.3
.talk 42469
..turnin 26441
..accept 26507
..accept 26575
step
goto 47.6,26.8
.kill Gorgonite##43339 |q 26575/1
step
goto 47.5,26.8
.clicknpc Petrified Stone Bat##43182+
.get 12 Petrified Stone Bat |q 26507/1
step
'Next to you:
.talk 43116
..turnin 26507
step
goto 34.3,34.3
.talk 42469
..turnin 26575
..accept 26576
..accept 26577
step
goto 39.9,19.4
.talk 42466
..turnin 26576
..accept 26656
step
goto 39.9,19.4
.talk 42466
..' Tell him you are ready to escort a group of elementals across the open.
.' Speak to Terrath the Steady |q 26656/1
step
goto 51.1,14.7
.' Go to this spot
.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Be careful not to fly to quickly or you the rock elementals will disappear when you get too far away from them.
step
goto 39.9,19.4
.talk 42466
..turnin 26656
..accept 26657
..accept 26658
step
goto 35.4,22.5
.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
.get Stonework Mallet |q 26658/1
step
goto 39.9,19.4
.talk 42466
..turnin 26658
step
goto 36.5,18.8
.kill 6 Stone Drake##42522+ |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
step
goto 33.1,24.1
.talk 42466
..turnin 26659
step
goto 72.2,54.0
.talk 42472
..turnin 26577
..accept 26578
..accept 26579
..accept 26580
step
goto 71.8,47.6
.talk 43395
..turnin 26580
..accept 26581
step
goto 73.6,40.8
.kill 8 Fungal Behemoth##42475+ |q 26579/1
.from Doomshroom##43388+ |tip They look like orange mushrooms around this area.
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
step
goto 71.8,47.6
.talk 43395
..turnin 26581
..accept 26582
step
goto 72.2,54.0
.talk 42472
..turnin 26578
..turnin 26579
..turnin 26582
..accept 26584
..accept 26585
step
goto 68.5,26.4
.talk 43442
..accept 26583
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c |q 26583
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c |q 26583
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c |q 26583
step
goto 68.5,26.3
.talk 43442
..turnin 26583
step
goto 69.4,24.8
.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
.click Verlok Miracle-Grow##6895+
.get 8 Verlok Miracle-Grow |q 26585/1
step
goto 72.2,54.0
.talk 42472
..turnin 26584
..turnin 26585
..accept 26750
step
goto 56.3,12.2
.talk 42465
..turnin 26750
..accept 26752
step
'Watch the dialogue
.' Attend the Stonemother's Audience |q 26752/1
step
goto 56.1,13.5
.talk 43809
..turnin 26752
..accept 26827
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
|confirm |q 26827
step
goto 51.5,51.8
.talk 44633
..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
|confirm |q 26827
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed. |tip You will probably need to wait for him to respawn.
.' Rally 5 Earthen Ring |q 26827/1
step
goto 51.3,50.1
.talk 44823
..accept 27005
step
goto 51.3,50.0
.talk 44818
..accept 27008
step
goto 49.6,53.0
.talk 43065
..turnin 26827
..accept 26828
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27008/1
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27005/1
step
goto 51.3,50.1
.talk 44823
..turnin 27005
step
goto 51.3,50.0
.talk 44818
..turnin 27008
..accept 27043
step
goto 51.3,50.1
.talk 44823
..accept 27041
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27043/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27043/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27043/3
step
goto 40.2,67.5
.click One-Time Decryption Engine##9842+
.' Decrypt 6 Plans |q 27041/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27041
..accept 27059
step
goto 39.1,73.9
.click Waygate Controller##9849
.' Destroy the Waygate |q 27059/1
step
goto 39.9,62.2
.kill Haethen Kaul##44835 |q 27043/4 |tip He's up on a huge floating rock.
step
goto 51.3,50.0
.talk 44823
..turnin 27059
..accept 28293
step
goto 51.3,50.0
.talk 44818
..turnin 27043
step
goto 63.3,25.0
.talk 44025
..turnin 26828
..accept 26829
..accept 26832
step
goto 62.6,26.9
.talk 44080
..accept 26831
step
goto 62.4,31.8
.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
.' Defeat High Priestess Lorthuna |q 26832/2
step
goto 58.9,32.9
.from Boldrich Stonerender##42923
.' Defeat Boldrich Stonerender |q 26832/1
step
goto 63.1,38.1
.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
.' Defeat Zoltrik Drakebane |q 26831/1
step
goto 64.1,36.9
.talk 42614
..turnin 26831
step
goto 60.3,33.2
.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+ |q 26829/1
step
goto 63.3,25.0
.talk 44025
..turnin 26829
..turnin 26832
..accept 26833
step
goto 49.6,53.0
.talk 43818
..turnin 26833
..accept 26875
step
goto 50.7,49.6
.from Twilight Heretic##44681+ |q 26875/1
.kill Desecrated Earthrager##44683+ |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
step
goto 49.6,52.9
.kill High Priestess Lorthuna##43837 |q 26971/1
step
goto 49.6,52.9
.talk 43835
..turnin 26971
step
label dungeon
goto Shimmering Expanse 49.1,42.2
.talk 50324
.buy Tabard of the Earthen Ring##65905
step
'Equip The Earthen Ring tabard and run Cataclysm dungeons with it. |equipped Tabard of the Earthen Ring##65905 |use Tabard of the Earthen Ring##65905
.' Earn Exalted reputation with The Earthen Ring|condition rep('The Earthen Ring')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Earthen Ring!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Therazane",[[
achieveid 4883
step
goto Orgrimmar,49.7,76.5
.click Warchief's Command Board##10014
..accept 27722
step
goto 50.5,38.4
.talk 45244
..turnin 27442 |tip You will only be able to turn in this quest if you completed the Vashj'ir guide section.  It will be marked completed if you have already completed the similar Mount Hyjal breadcrumb quest.
..turnin 27722
..accept 27203
step
goto 50.1,37.8
.click Portal to the Maelstrom##5231
.' Teleport to The Maelstrom |goto The Maelstrom |noway |c |q 27203
step
goto The Maelstrom,33.4,50.2
.talk 45042
..turnin 27203
..accept 27123
step
goto 32.5,52.0
.clicknpc Wyvern##45005
.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c |q 27123
step
goto Deepholm,49.6,53.0
.talk 43065
..turnin 27123
..accept 26245
step
goto 49.7,52.9
.talk 43397
..accept 27136
..accept 26244
step
goto 49.5,53.3
.talk 42573
..accept 26409
step
goto 49.2,51.9
.talk 45300
.home Temple of Earth
step
goto 46.5,57.3
.talk 42574
..turnin 26409
..accept 26410
..accept 27135
step
goto 45.5,57.9
.from Rockslice Flayer##42606+, Rockslice Ripper##42607+
.get 5 Quartzite Resin |q 26410/1
.' You can find more Rockslice Flayers around [42.5,55.6]
step
goto 51.1,61.6
.' Use your Depleted Totem |use Depleted Totem##60835
.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
.' Energize the Totem 8 Times |q 27136/1
step
goto 52.0,58.9
.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
.from Magmatooth##45099
.get The Burning Heart |q 27135/1
step
goto 46.5,57.3
.talk 42574
..turnin 26410
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |modelnpc Flint Oremantle##43036+
.' Apply the Explosive Bonding Compound |q 26411/1
step
goto 46.5,57.3
.talk 42574
..turnin 26411
..accept 26413
step
goto 49.5,53.3
.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
step
goto 49.5,53.3
.talk 42573
..turnin 26413
..accept 26484
step
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 56.1,74.2
.clicknpc Slain Cannoneer##43032
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.clicknpc Captain Skullshatter##43048
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.click Captain's Log##6891
..accept 26246
step
goto 56.7,76.4
.clicknpc Unexploded Artillery Shell##43044
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental##43026+ |q 26244/1
step
goto 49.6,52.9
.talk 43065
..turnin 26245
..turnin 26246
step
goto 49.7,52.9
.talk 43397
..turnin 26244
step
goto 49.6,53.0
.talk 43065
..accept 26247
step
goto 62.4,52.6
.talk 42684
..turnin 26247
..accept 26248
..accept 26249
step
'All around on this air ship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
.' Receive 6 Slain Crew Member Information |q 26248/1
|modelnpc Slain Crew Member##42681+
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.click Bottle of Whiskey##9712 |tip Located on the life boat.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.click Spool of Rope##7538
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26427
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26248
..accept 26251
..accept 26250
step
'Go onto the main deck of the ship and go down the stairs to the deck below:
.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
.talk 42801
.' Subdue Mor'norokk the Hateful |q 26250/1
step
'All around on this lower deck of the air ship:
.kill 6 Twilight Saboteur##42885 |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.clicknpc Stormbeak##42887
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
goto 49.6,53.0
.talk 43065
..turnin 26255
..accept 26258
step
goto 49.7,52.9
.talk 43397
..accept 26259
step
goto 59.4,58.2
.' Go to this spot
.' Reach Deathwing's Fall |q 26258/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26258
..accept 26256
step
goto 61.5,60.6
.from Twilight Bloodshaper##43218+
.get Twilight Orders |q 26256/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26256
..accept 26261
step
goto 62.8,59.5
.click Slavemaster's Coffer##41
.collect 1 Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.click Ball and Chain##181+
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.click Forgemaster's Log##6891
..turnin 26260
..accept 27007
step
goto 70.6,61.2
.' Go to this spot
.' Reach Upper Silvermarsh |q 27007/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27007
..accept 27010
step
goto 71.8,64.3
.click Trogg Crate##9855
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect 1 Maziel's Research##60816 |n
.' Click Maziel's Research in your bags |use Maziel's Research##60816
..accept 27100
step
goto 74.9,64.8
.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
.' Watch the dialogue
.' Uncover the World Pillar Fragment Clue |q 27010/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27010
..accept 27061
step
goto 72.5,65.2
.from Mercurial Ooze##43158+
.get 4 Twilight Research Notes |q 27100/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27100
..accept 27101
step
goto 67.2,70.2
.click Maziel's Journal##2530
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c |q 27102
step
goto 72.8,62.0
.kill Maziel##44967 |q 27102/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27102
step
goto 69.5,68.0 |n
.' Leave the cave |goto 69.5,68.0,0.5 |noway |c |q 27061
step
goto 64.5,82.1
.talk 44010
..turnin 27061
..accept 26766
..accept 26768
step
goto 58.0,84.8
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1
.from Twilight Dragonstalker##43992+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..turnin 26768
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch##44148 |q 26771/1
step
goto 64.5,82.1
.talk 44010
..turnin 26771
..accept 26857
step
goto 64.6,82.2
.talk 44222
..accept 26861
step
goto 68.7,75.0
.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
.' Disrupt the Twilight Gate |q 26861/1
step
goto 71.2,75.1
.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
.' Disrupt the Elemental Gate |q 26861/2
step
goto 69.9,76.7
.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
.' Defeat 8 Abyssion's Underlings |q 26857/1
step
goto 64.6,82.2
.talk 44222
..turnin 26861
step
goto 64.5,82.2
.talk 44010
..turnin 26857
..accept 26876
step
goto 69.9,76.9
.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
.from Abyssion##44289
.click The First Fragment of the World Pillar##9779
.get The Upper World Pillar Fragment |q 26876/1
step
goto 49.6,53.0
.talk 43065
..turnin 26876
step
goto 49.7,52.9
.talk 43397
..turnin 26259
step
goto 27.9,68.7
.talk 43071
..turnin 26484
..accept 27931
step
goto 30.6,77.7
.talk 47195
..turnin 27931
..accept 27932
..accept 27933
step
goto 32.2,79.1
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
.kill 5 Sundered Emerald Colossus##44229 |q 27932/1
.from Jade Rager##44220+
.get 6 Elemental Ore |q 27933/1
step
goto 30.6,77.7
.talk 47195
..turnin 27932
..turnin 27933
..accept 27934
step
goto 30.6,77.7
.talk 47195
..' Tell him you are ready for the ritual
.' Complete the One With the Ground Ritual |q 27934/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27934
..accept 27935
step
goto 46.9,89.1
.kill Avalanchion##44372 |q 27935/1
step
goto 43.4,82.0 |n
.' Leave the cave |goto 43.4,82.0,0.5 |noway |c |q 27935
step
goto 27.9,68.7
.talk 43071
..turnin 27935
..accept 26499
step
goto 28.2,69.6
.talk 43160
..accept 26500
step
goto 29.7,68.8
.kill 12 Stone Trogg Ambusher##43134+ |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |modelnpc Stonehearth Defender##43138+
.' Grant the Stonefather's Boon 12 times |q 26499/1
step
goto 28.2,69.6
.talk 43160
..turnin 26500
..accept 26502
step
goto 27.9,68.7
.talk 43071
..turnin 26499
..accept 26501
step
goto 27.3,67.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Armory |q 26501/1
.click Thunder Stone##9722+
.get 12 Thunder Stone |q 26502/1
step
goto 24.5,62.4
.talk 43168
..turnin 26501
..accept 26537
step
goto 24.8,62.2
.talk 43169
..turnin 26502
..accept 26564
step
goto 24.6,62.2
.talk 43319
..accept 26591
step
goto 23.9,60.3
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |modelnpc Injured Earthen##43233
.' Patch up 10 Injured Earthen |q 26591/1
.' Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
.get 6 Catapult Part |q 26564/1
.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
.kill 12 Fractured Battlefront stone troggs |q 26537/1
.' You can also look around 23.1,53.9 for more
step
goto 24.5,62.4
.talk 43168
..turnin 26537
step
goto 24.6,62.2
.talk 43319
..turnin 26591
step
goto 24.8,62.2
.talk 43169
..turnin 26564
step
goto 24.5,62.4
.talk 43168
..accept 26625
step
goto 22.6,56.9
.from Troggzor the Earthinator##43456
.get The Earthinator's Cudgel |q 26625/1
step
goto 24.5,62.4
.talk 43168
..turnin 26625
step
goto 24.8,62.2
.talk 43169
..accept 27126
step
goto 20.7,61.6
.talk 45043
..turnin 27126
..accept 26632
step
goto 20.7,61.6
.talk 45043
..' Tell him you're ready to escort the catapult |tip You need to be near the catapult or it will stop
.' Safely Escort the Earthen Catapult |q 26632/1
|modelnpc Earthen Catapult##43509+
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.clicknpc Earthen Catapult##43509
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombard 30 Reinforcements |q 26755/1
step
goto 22.7,52.0
.talk 43897
..turnin 26755
..accept 26762
step
goto 22.8,52.1
.talk 43898
..accept 26770
step
goto 22.6,47.6
.clicknpc Deactivated War Construct##43984
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic |q 26770/1
.'|tip Activate the golems before attacking mystics.
step
goto 22.8,52.1
.talk 43898
..turnin 26770
step
goto 22.7,52.0
.talk 43897
..turnin 26762
..accept 26834
step
goto 27.6,44.8
.talk 44143
..turnin 26834
..accept 26791
..accept 26792
step
goto 27.6,44.7
.clicknpc War Guardian##44126
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstrosity##44035+ |q 26792/2
.clicknpc Giant Mushroom##44049+
.' Destroy 5 Giant Mushrooms |q 26791/2
step
goto 27.6,44.8
.talk 44143
..turnin 26791
..turnin 26792
..accept 26835
step
goto 22.7,52.0
.talk 43897
..turnin 26835
..accept 26836
step
goto 24.5,31.1
.from Bouldergut##44151
.' Rescue Stonefather Oremantle |q 26836/1
step
goto 22.7,52.0
.talk 43897
..turnin 26836
..accept 27937
step
goto 28.0,68.6
.talk 44204
..turnin 27937
..accept 27938
step
goto 28.0,68.7
.click The Stonefather's Safe##7608
.get The Middle Fragment of the World Pillar |q 27938/1
step
goto 49.5,53.3
.talk 42573
..turnin 27938
step
goto 49.6,53.0
.talk 43065
..accept 26326
step
goto 46.1,45.6
.talk 42730
..turnin 26326
..accept 26312
..accept 26314
step
goto 46.2,45.7
.talk 42731
..accept 26313
step
goto 44.3,43.7
.from Irestone Rumbler##42780+
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
|modelnpc Servant of Therazane##42781+
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
|modelnpc Servant of Therazane##42781+
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
|modelnpc Servant of Therazane##42781+
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
|modelnpc Servant of Therazane##42781+
step
goto 46.2,45.7
.talk 42731
..turnin 26313
step
goto 46.1,45.6
.talk 42730
..turnin 26312
..turnin 26314
step
goto 46.2,45.7
.talk 42731
..accept 26315
step
goto 49.2,40.1
.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
.' Seek Peace with Boden the Imposing |q 26315/1
|modelnpc Boden the Imposing##42471+
step
goto 46.2,45.7
.talk 42731
..turnin 26315
..accept 26328
step
goto 56.5,42.7
.talk 42467
..turnin 26328
..accept 26376
..accept 26377
step
goto 56.5,41.0
.talk 42899
..accept 26375
step
goto 60.2,39.4
.kill Dragul Giantbutcher##42921 |q 26376/1
step
goto 59.5,41.5
.click Jade Crystal Cluster##9694+
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
|modelnpc Quartz Rockling##42900+
step
'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
.collect Jade Crystal Composite##58783 |q 26377
step
goto 59.6,41.4
.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
.' Lure an Agitated Tunneler |q 26377/1
step
goto 59.3,40.6
.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
.kill 12 Lorthuna's Gate Cultists |q 26376/2
step
goto 56.5,41.0
.talk 42899
..turnin 26375
step
goto 56.5,42.7
.talk 42467
..turnin 26376
..turnin 26377
..accept 26426
step
goto 51.7,31.6
.' Get next to Felsen the Enduring
.' Find Felsen the Enduring |q 26426/1
' |modelnpc 43805
step
goto 58.4,25.7
.' Fly to the mouth of this cave
.' Find the entrance to the Crumbling Depths |q 26426/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26426
..accept 26869
step
goto 64.5,21.7 |n
.' Follow the path |goto 64.5,21.7,0.5 |noway |c |q 26869
step
goto 65.3,18.4 |n
.' Follow the path |goto 65.3,18.4,0.5 |noway |c |q 26869
step
goto 66.4,20.6
.click Gigantic Painite Cluster##9815
..turnin 26869
..accept 26871
step
goto 64.3,23.5
.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c |q 26871
step
goto 58.3,25.5 |n
.' Leave the cave |goto 58.3,25.5,0.5 |noway |c |q 26871
step
goto 56.5,42.7
.talk 42467
..turnin 26871
..accept 26436
step
goto 34.3,34.3
.talk 42469
..turnin 26436
..accept 26438
..accept 26437
step
goto 34.1,35.2
.talk 43344
..accept 26439
step
goto 30.5,46.8
.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
.kill 12 Jaspertip flayers |q 26438/1
.click Chalky Crystal Formation##9715+
.get 8 Chalky Crystal Formation |q 26437/1
.clicknpc Dormant Stonebound Elemental##43115
.' Reform 6 Stonebound Elementals |q 26439/1
step
goto 34.3,34.3
.talk 42469
..turnin 26438
..turnin 26437
step
goto 34.1,35.2
.talk 43344
..turnin 26439
step
'Next to you:
.talk 43116
..accept 26440
step
goto 30.1,47.7
.' Get next to the huge green crystals
.' Bring Pebble to the crystal formation |q 26440/1
step
'Next to you:
.talk 43116
..turnin 26440
..accept 26441
step
goto 34.3,34.3
.talk 42469
..turnin 26441
..accept 26507
..accept 26575
step
goto 47.6,26.8
.kill Gorgonite##43339 |q 26575/1
step
goto 47.5,26.8
.clicknpc Petrified Stone Bat##43182+
.get 12 Petrified Stone Bat |q 26507/1
step
'Next to you:
.talk 43116
..turnin 26507
step
goto 34.3,34.3
.talk 42469
..turnin 26575
..accept 26576
..accept 26577
step
goto 39.9,19.4
.talk 42466
..turnin 26576
..accept 26656
step
goto 39.9,19.4
.talk 42466
..' Tell him you are ready to escort a group of elementals across the open.
.' Speak to Terrath the Steady |q 26656/1
step
goto 51.1,14.7
.' Go to this spot
.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
' |modelnpc 43591
step
goto 39.9,19.4
.talk 42466
..turnin 26656
..accept 26657
..accept 26658
step
goto 35.4,22.5
.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
.get Stonework Mallet |q 26658/1
step
goto 36.5,18.8
.kill 6 Stone Drake##42522 |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..turnin 26658
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
|model Pale Resonating Crystal##6415
step
goto 33.1,24.1
.talk 42466
..turnin 26659
.' If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
step
goto 72.2,54.0
.talk 42472
..turnin 26577
..accept 26578
..accept 26579
..accept 26580
step
goto 71.8,47.6
.talk 43395
..turnin 26580
..accept 26581
step
goto 73.6,40.8
.kill 8 Fungal Behemoth##42475+ |q 26579/1
.from Doomshroom##43388+
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
.' You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
step
goto 71.8,47.6
.talk 43395
..turnin 26581
..accept 26582
step
goto 72.2,54.0
.talk 42472
..turnin 26578
..turnin 26579
..turnin 26582
..accept 26584
..accept 26585
step
goto 68.5,26.4
.talk 43442
..accept 26583
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c |q 26583
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is |q 26583/1
.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c |q 26583
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c |q 26583
step
goto 68.5,26.3
.talk 43442
..turnin 26583
step
goto 69.4,24.8
.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
.click Verlok Miracle-Grow##6895
.get 8 Verlok Miracle-Grow |q 26585/1
step
goto 72.2,54.0
.talk 42472
..turnin 26584
..turnin 26585
..accept 26750
step
goto 56.3,12.2
.talk 42465
..turnin 26750
..accept 26752
step
'Watch the dialogue
.' Attend the Stonemother's Audience |q 26752/1
step
goto 56.1,13.5
.talk 43809
..turnin 26752
..accept 26827
step
goto Deepholm 51.2,50.0
.talk 44823
..accept 27005
step
goto 51.2,50.0
.talk 44818
..accept 27008
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27008/1
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27005/1
step
goto 51.2,50.0
.talk 44823
..turnin 27005
step
goto 51.2,50.0
.talk 44818
..turnin 27008
..accept 27043
step
goto 51.2,50.0
.talk 44823
..accept 27041
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27043/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27043/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27043/3
step
goto 40.2,67.5
.click One-Time Decryption Engine##9842+
.' Decrypt 6 Plans |q 27041/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27041
..accept 27059
step
goto 39.1,73.9
.click the Waygate Controller##9849
.' Destroy the Waygate |q 27059/1
step
goto 39.9,62.2
.kill Haethen Kaul##44835 |q 27042/4 |tip He's up on a huge floating rock.
step
goto 51.2,50.0
.talk 44823
..turnin 27059
..accept 28293
step
goto 51.2,50.0
.talk 44818
..turnin 27043
step
goto 48.0,53.7
.' Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
.' [48.5,50.1]
.' [47.4,50.9]
.' [48.1,49.9]
..' Tell them you are joining an assault on Lorthuna's Gate and they are needed.
.' Rally 5 Earthen Ring |q 26827/1
' |modelnpc Windspeaker Lorvarius##43836+
' |modelnpc Yuldris Smolderfury##45034+
' |modelnpc Earthcaller Yevaa##44646+
' |modelnpc Tawn Winterbluff##44634+
' |modelnpc Tharm Wildfire##44631+
step
goto 49.6,53.0
.talk 43065
..turnin 26827
..accept 26828
step
goto 63.3,25.0
.talk 44025
..turnin 26828
..accept 26829
..accept 26832
step
goto 62.6,26.9
.talk 44080
..accept 26831
step
goto 62.4,31.8
.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
.' Defeat High Priestess Lorthuna |q 26832/2
step
goto 58.9,32.9
.from Boldrich Stonerender##42923
.' Defeat Boldrich Stonerender |q 26832/1
step
goto 63.1,38.1
.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
.' Defeat Zoltrik Drakebane |q 26831/1
step
goto 64.1,36.9
.talk 42614
..turnin 26831
step
goto 60.3,33.2
.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
.kill 15 Twilight Precipice Cultists |q 26829/1
step
goto 63.3,25.0
.talk 44025
..turnin 26829
..turnin 26832
..accept 26833
step
goto 49.6,53.0
.talk 43818
..turnin 26833
..accept 26875
step
goto 50.7,49.6
.kill 12 Twilight Invaders |q 26875/1
.kill Desecrated Earthrager##44683 |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
' |modelnpc 44681
step
goto 49.6,52.9
.kill High Priestess Lorthuna##43837 |q 26971/1
step
goto 49.6,52.9
.talk 43835
..turnin 26971
step
goto 49.8,53.4
.talk 43792
..accept 26709
step
goto 56.4,12.1
.talk 42465
..turnin 26709
step
'At this point you can do the daily quests at Therazane to gain reputation.
.' Click here to begin daily quests. |confirm
step
label daily
step
goto Deepholm,56.1,14.4
.talk 43805
..accept 27046
..accept 27047
..accept 28488 |tip This quest can be offered at random and may not be offered everyday.
step
goto 56.6,14.1
.talk 43806
..accept 28391 |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
only if rep ('Therazane') >= Revered
step
goto 57.3,12.5
.talk 43804
..accept 27049
..accept 27050
step
goto 55.4,14.2
.talk 44945
..accept 26710 |tip This quest can be offered at random and may not be offered everyday.
step
goto 59.6,14.0
.talk 44973
..accept 27051
..accept 28390 |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 28391/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 28391/2
only if rep ('Therazane') >= Revered
step
goto 56.6,14.1
.talk 43806
..turnin 28391
only if rep ('Therazane') >= Revered
step
goto 58.3,25.6 |n
.' Enter the cave |goto 58.3,25.6,0.5 |noway |c |future |q 27048
step
goto 61.3,26.2
.talk 44968
..accept 27048 |tip This quest can be offered at random and may not be offered everyday.
step
goto 66.1,28.1
.' Follow the path inside the cave
.' Click the Ruby Gemstone Cluster |tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
.from Enormous Gyreworm##48533
.get Ruby Crystal Cluster |q 28488/1
step
goto 63.6,23.0
.' Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514 |tip They look like huge white rocks around this area.
.get 3 Deep Alabaster Crystal |q 27048/1
step
goto 62.6,23.9 |n
.' Follow this path |goto 62.6,23.9,0.5 |noway |c |q 27048
step
goto 61.8,19.7
.' Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514 |tip They look like huge blue rocks around this area.
.get 3 Deep Celestite Crystal |q 27048/2
step
goto 62.0,18.0 |n
.' Follow this path |goto 62.0,18.0,0.5 |noway |c |q 27048
step
goto 64.4,18.6
.' Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514 |tip They look like huge purple rocks around this area.
.get 3 Deep Amethyst Crystal |q 27048/3
step
goto 65.3,18.4 |n
.' Follow this path |goto 65.3,18.4,0.5 |noway |c |q 27048
step
goto 66.4,20.2
.' Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514 |tip They look like huge red rocks around this area.
.get 3 Deep Garnet Crystal |q 27048/4
step
goto 63.6,23.9
.' All around inside this cave:
.from Gorged Gyreworm##42766+, Gyreworm##44257+
.kill 10 Gyreworm |q 27046/1
.' Click Painite Shards |tip They look like small green glowing crystals sitting on the ground all around inside this cave.
.get 10 Painite Mote |q 27047/1
step
goto 63.1,20.8
.talk 49956
.' Tell him to follow you
|confirm |q 26710
step
goto 64.2,17.6 |n
.' Follow this path |goto 64.2,17.6,0.5 |noway |c |q 27048
step
goto 61.3,26.2
.talk 44968
..turnin 27048
step
goto 58.3,25.6 |n
.' Leave the cave |goto 58.3,25.6,0.5 |noway |c |q 26710
step
goto 58.3,25.6
.' Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
.' Bring Pebble to safety |q 26710/1
step
goto 74.0,41.2
.kill 8 Fungal Behemoth |q 27049/1
.from Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
.get Bag of Verlok Miracle-Grow |q 27051/1
.' Click Sprouting Crimson Mushrooms |tip They look like tiny mushrooms on the ground around this area.  Try to only click the solid blue, solid red or white-brown ones.  The blue ones with red spots will explode and hurt you.
.' Destroy 10 Freshly Sprouted Mushrooms |q 27050/1
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c |q 28390
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop |q 28390/1 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c |q 28390
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c |q 28390
step
goto 59.6,14.0
.talk 44973
..turnin 27051
..turnin 28390 |only if rep ('Therazane') >= Revered
step
goto Deepholm,56.1,14.4
.talk 43805
..turnin 27046
..turnin 27047
..turnin 28488
step
goto 55.4,14.2
.talk 44945
..turnin 26710
step
goto 57.3,12.5
.talk 43804
..turnin 27049
..turnin 27050
step
'Once you've completed the daily quests, you will have to wait a day in order to do them again.
.' To go to the first step of the dailies, click here. |confirm |next "daily" |only if rep('Therazane')<=Revered
.' Earn Exalted reputation with Therazane |condition rep('Therazane')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with Therazane!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Cataclysm\\Avengers of Hyjal",[[
author support@zygorguides.com
achieveid 5827
step
'This reputation can be gained by running the Firelands raid.
'A full run will grant roughly 2400 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
goto Mount Hyjal 47.2,78.1
'Enter the Firelands here |goto Mount Hyjal 47.2,78.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Avengers of Hyjal |condition rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Avengers of Hyjal!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Player Vs. Player\\Warsong Outriders",[[
step
'In order to gain reputation with the Warsong Outriders you and your team must capture flags in Warsong Gulch.
'To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_.
'Earn Exalted status with the Warsong Outriders |condition rep('Warsong Outriders')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Warsong Outriders!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Player Vs. Player\\The Defilers",[[
step
'In order to gain reputation with The Defilers you must participate in Arathi Basin, but first you should make sure you have a quest in your log before you start.
|confirm
step
goto Arathi Highlands 68.4,30.6
.talk 15021
..accept 8120
step
'To join Arathi Basin hit the _[H]_ key, click _Arathi Basin_, and click _Join Battle_.
|confirm
step
'While in Arathi Basin:
'Click the Banners at each location. |model 6271
'Assault the Mine |q 8105/1
'Assault the Lumber Mill |q 8105/2
'Assault the Blacksmith |q 8105/3
'Assault the Farm |q 8105/4
'Upon completing this quest and reach Friendly reputation with The Defilers you should be able to accept another quest from Deathmaster Dwire.
step
goto Arathi Highlands 40.0,46.7
.talk 15021
..turnin 8105
step
goto Arathi Highlands 68.4,30.6
.talk 15021
..accept 8121
step
'Enter Arathi Basin and hold four bases at the same time. |q 8121/1
step
goto Arathi Highlands 68.4,30.6
.talk 15021
..turnin 8121
step
'Farm Arathi Basin until you are Exalted with The Defilers.
'Earn Exalted status with The Defilers |condition rep('The Defilers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Defilers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Player Vs. Player\\Frostwolf Clan",[[
step
'In order to gain reputation with the Frostwolf Clan you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
goto Hillsbrad Foothills 58.7,34.
.talk 13817
..accept 7142
step
goto 57.8,33.3
.talk 13840
..accept 7161
step
'Enter the cave |goto 58.7,33.4 <5 |c |q 7161
step
goto 59.7,31.2
.talk 13776
..accept 7101
..accept 7082
..accept 7124
step
'To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_.
|confirm
step
goto Alterac Valley 49.6,82.6
.talk 13176
..accept 7224
step
'Enter the cave |goto 52.9,89.5 <5 |c |q 7161
step
goto 50.6,93.3
'Follow the path around and click the Frostwolf Banner
.click Frostwolf Banner##5571
.get Frostwolf Banner##17850 |q 7161/1
step
'Exit the cave |goto 52.9,89.5 <5 |c |q 7161
step
label checklist
'While in Alterac Valley: |tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
.'Click Alliance Flag
'Assault any Graveyard |q 7082/1
'Capture any Mine |q 7124/1
.'Click Horde Flag
'Assault any Tower |q 7101/1
'Loot Alliance players when they die.
.get 20 Armor Scraps##17422 |q 7224/1
.kill Vanndar Stormpike##11948 |q 7142/1
|model Alliance Flag##5651
step
'Before you leave Alterac Valley:
goto Alterac Valley 49.6,82.6
.talk 13176
..turnin 7224
step
'To return to the Alterac Valley checklist click here. |next "checklist" |confirm
'To continue forward click here. |confirm
step
goto Hillsbrad Foothills 58.7,34.
.talk 13817
..turnin 7142
step
goto 57.8,33.3
.talk 13840
..turnin 7161
step
'Enter the cave |goto 58.7,33.4 <5 |c |q 7124
step
goto 59.7,31.2
.talk 13776
..turnin 7101
..turnin 7082
..turnin 7124
step
'Continue joining Alterac Valley until you reach Friendly with the Frostwolf Clan. |condition rep('Frostwolf Clan')>=Friendly |next "friendly"
step
label friendly
goto Hillsbrad Foothills 57.8,33.3
.talk 13840
..accept 7163
step
'Continue joining Alterac Valley until you reach Honored with the Frostwolf Clan. |condition rep('Frostwolf Clan')>=Honored |next "honored"
step
label honored
goto Hillsbrad Foothills 57.8,33.3
.talk 13840
..accept 7164
step
'Continue joining Alterac Valley until you reach Revered with the Frostwolf Clan. |condition rep('Frostwolf Clan')==Revered |next "revered"
step
label revered
goto Hillsbrad Foothills 57.8,33.3
.talk 13840
..accept 7165
step
'Continue joining Alterac Valley until you reach Exalted with the Frostwolf Clan. |condition rep('Frostwolf Clan')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Frostwolf Clan!'
]])
