local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\The Jade Forest (85-86)",[[
author support@zygorguides.com
image JadeForest
next Zygor's Horde Leveling Guides\\Pandaria 85-90\\Valley of the Four Winds (86-87)
startlevel 85
dynamic on
step
goto Orgrimmar 49.8,75.3
..accept 29612
.' Report to Grommash Hold |q 29612/1
step
goto Orgrimmar 48.6,70.6
.talk 54870
..turnin 29612
..accept 31853
step
goto Kalimdor 61.2,44.6
' Look for a ship in the air. You have to use a flying mount to get to General Nazgrim.
.talk 55054
..turnin 31853
..accept 29690
step
.talk 55054
.' Tell him you're ready to go!
.' Discover Pandaria |q 29690/1
step
goto The Jade Forest 30.8,10.2
.talk 55135
..turnin 29690
..accept 31765
step
.' Follow the steps down here. |goto 31.4,11.3 <5 |c
step
.clicknpc Gunship Turret##67032 |tip It's on the lower level of the ship.
|invehicle
step
.' Use your abilities on your action bar.
.kill 80 Thunder Hold Troops |q 31765/1
.kill 9 Thunder Hold Cannons |q 31765/2
|modelnpc 66203
|modelnpc 66348
|modelnpc 66506
|modelnpc 66291
step
goto 31.0,11.0
.talk 67250
..turnin 31765
..accept 31766
step
goto 31.5,11.1
.click Rappelling Rope##7548
.' Rappel into Honeydew Glade |q 31766/1
step
goto 31.6,11.3
.talk 55135
..turnin 31766
..accept 31767
..accept 31768
step
goto 32.8,6.6
.kill 15 Thunder Hold Troops |q 31767/1
.' Find Thunder Hold Munitions and use Nazgrim's Flare Gun to destroy them. |use Nazgrim's Flare Gun##89605
.' Thunder Hold Munitions destroyed |q 31768/1
'|modeldisplay 44984
|modelnpc 66348
|modelnpc 66506
|modelnpc 66291
step
.' Go up the steps to Thunder Hold. |goto 33.3,10.6 |c
step
goto 34.8,10.6
.talk 66646
..turnin 31768
..turnin 31767
..accept 31769
step
goto 34.0,10.0
.' Use Nazgrim's Flare Gun on the barricade. |use Nazgrim's Flare Gun##89769
.' Destroy the first Barricade |q 31769/1
step
goto 34.7,9.9
.' Use Nazgrim's Flare Gun on the barricade. |use Nazgrim's Flare Gun##89769
.' Destroy the second Barricade |q 31769/2
step
goto 34.9,10.6
.' Use Nazgrim's Flare Gun on the barricade. |use Nazgrim's Flare Gun##89769
.' Destroy the third Barricade |q 31769/3
step
goto 33.8,10.6
.' Find Captain Doren |q 31769/4
|modelnpc 66283
step
goto 33.7,10.6
.talk 66656
..turnin 31769
step
.' Wait for the scene to end.
goto 33.7,10.6
.talk 66656
..accept 31770
..accept 29694
step
goto 33.7,10.6
.talk 66657
..accept 31771
step
goto 30.6,7.1
.talk 66660
..accept 31772
step
goto 30.5,7.5
.talk 66659
..accept 31773
step
goto 33.6,7.4
.kill 20 Sha Haunt##66425 |q 31771/1
.kill 7 Sha Harbinger##66424 |q 31771/2
step
goto 30.5,7.2
.talk 55146
.' Tell him to quit messing around.
.' Rivett Clutchpop Rescued |q 29694/2
step
goto 29.4,8.5
.talk 55170
.' Tell her to get on her feet!
.' Shokia Rescued |q 29694/4
step
goto 29.2,9.0
.kill 10 Sha-Infested Prowler##66668 |q 31773/1
.click Barrel of Honeybrew |q 31772/1
.' You can find more around [31.0,11.4]
step
goto 30.6,11.7
.talk 55162
.' Tell him you need to regroup.
.' Sergeant Gorrok Rescued |q 29694/3
step
goto 32.1,13.4
.talk 55141
.' Tell her to snap out of it.
.' Shademaster Kiryn Rescued |q 29694/1
step
goto 29.4,13.6
.talk 66660
..turnin 31772
step
goto 29.1,13.7
.talk 55162
..turnin 29694
step
goto 29.2,13.8
.talk 66220
..turnin 31770
step
goto 29.1,13.8
.talk 66657
..turnin 31771
..turnin 31773
step
goto 29.1,13.7
.talk 55162
..accept 31774
step
goto The Jade Forest/0 28.5,13.3
.talk 66236
.home Honeydew Village
step
goto The Jade Forest/0 28.1,15.6
.talk 66227
.fpath Honeydew Village
step
goto 31.1,17.5
.talk 55403
..turnin 31774
..accept 29765
step
goto 30.9,17.5
.click Ancient Statue
..accept 29743
step
goto 30.1,21.3
.click Ancient Statue Arm
.' Choose the create a sketch option.
.' Statue Arm Sketched |q 29743/2
step
goto 30.0,22.3
.click Ancient Statue Head
.' Choose the create a sketch option.
.' Statue Head Sketched |q 29743/4
step
goto 28.5,22.1
.click Ancient Statue Shoulder
.' Choose the create a sketch option.
.' Statue Shoulder Sketched |q 29743/3
step
goto 29.4,18.9
.click Ancient Statue Torso
.' Choose the create a sketch option.
.' Statue Torso Sketched |q 29743/1
step
.' Click the Auto complete quest box that appears below your minimap:
..turnin 29743
step
goto 28.6,18.1
.from Hozen Groundpounder##55470+
.get Zin'Jun's Rifle##74160 |q 29765/1
.get Zin'Jun's Left Eye##74161 |q 29765/2
.get Zin'Jun's Right Eye##74162 |q 29765/3
.get Snuff's Corpse##74163 |q 29765/4
step
'Standing Next to you
.talk 55403
.' If he is not with you anymore, you can find him here: [31.1,17.5]
..turnin 29765
..accept 29804
step
.' Enter the cave here. |goto 31.5,21.7 <5 |c
step
goto 32.0,22.3
..kill Konk##55509 |q 29804/1
step
goto 31.7,21.9
.talk 66656
..turnin 29804
..accept 31775
..accept 31776
step
goto The Jade Forest 31.4,21.8
.talk 65998
..accept 31778
step
goto 31.1,21.6
.talk 55521
..accept 31777
step
goto 30.3,24.2
..kill Master Engineer Cogswing and Gyro-Mechanic Lavenderp |q 31776/1
|modelnpc 65882
|modelnpc 65883
step
goto 29.7,23.7
.kill Morgus Grimhatchet##65880 |q 31776/2
.' He walks around the area.
step
goto 27.8,23.1
.kill Corporal Jackson Silver##65881 |q 31776/3
step
goto 28.3,24.6
.talk 67090
.' Tell them that they can leave.
.' Free 12 Pandaren |q 31778/1
.click Requisitioned Firework Launcher
.' Target Strongarm Gyrocopters in the air and use your Requisitioned Firework Launcher on them. |use Requisitioned Firework Launcher##89163
..kill 12 Strongarm Gyrocopter##65843 |q 31777/1
..kill 15 Strongarm Troop |q 31775/1
|modelnpc 65842
|modelnpc 65841
|modelnpc 65905
step
goto 31.1,21.6
.talk 55521
..turnin 31777
step
goto 31.4,21.8
.talk 65998
..turnin 31778
step
goto 31.6,21.9
.talk 66656
..turnin 31775
..turnin 31776
..accept 31779
step
.' Cross the bridge here. |goto 27.3,25.1 |c
step
goto 25.8,23.9
..kill Captain Doren##66052 |q 31779/1
step
goto 27.6,24.3
.' Click the Alliance Flagpole here.
..turnin 31779
..accept 31999
step
goto 28.4,24.9
.talk 55172
..turnin 31999
step
goto 28.2,24.8
.talk 55180
..accept 29815
step
goto 28.1,24.7
.talk 55521
..accept 29821
step
goto 22.9,30.6
.click Empty Package
..turnin 29821
..accept 31112
step
goto 25.9,26.1
.clicknpc Lurching Blossom##55610
..get 8 Viscous Chlorophyll |q 29815/1
.from Water Sprite##62930
..get 5 Emergency Supplies |q 31112/1
step
goto 28.1,24.7
.talk 55521
..turnin 31112
step
goto 28.2,24.8
.talk 55180
..turnin 29815
..accept 29827
step
goto 28.1,24.8
.clicknpc Recovered Gyrocopter##55674
|invehicle
step
.' Use your abilities on the bar to kill Hozen.
.kill 25 Hozen Gutripper##55707 |q 29827/1
.kill 25 Hozen Nibstabber##55701 |q 29827/2
step
goto 28.2,24.8
.talk 55180
..turnin 29827
step
goto 28.4,24.9
.talk 55172
..accept 29822
step
goto 31.9,27.9
.' Shrine of the Sun Visited |q 29822/1
step
goto 27.8,30.3
..kill Dook Ookem##55622 |q 29822/3
step
goto 26.2,32.4
.' Shrine of the Moon Visited |q 29822/2
step
.' Enter the cave. |goto 27.3,32.0 |c
step
goto 27.6,32.7
.talk 55768
..turnin 29822
..accept 31121
step
goto 27.7,32.5
.click Cho's Teapot
.' Listen to Lorewalker Cho |q 31121/1
step
goto 27.6,32.7
.talk 55768
..turnin 31121
..accept 31132
step
goto 30.8,34.1
.talk 63217
..turnin 31132
..accept 31134
step
goto 30.9,33.7
.click Stone Monolith
.' First Stone Monolith Translated |q 31134/1
step
goto 30.6,33.8
.click Stone Monolith
.from Bloodthirsty Saurok##63279
.' Second Stone Monolith Translated |q 31134/2
step
goto 30.6,34.1
.click Stone Monolith
.' Third Stone Monolith Translated |q 31134/3
step
goto 30.8,34.0
.talk 63217
..turnin 31134
..accept 31152
step
.' Follow Lorewalker Cho.
.' Escort Lorewalker Cho to the Circle of stone |q 31152/1
|modelnpc Lorewalker Cho##63290
step
goto 28.8,32.6
.talk 63307
..turnin 31152
..accept 31167
step
goto 28.8,32.5
.click Incense Bundle
.' Light the incense |q 31167/1
step
goto 28.8,32.6
.talk 63307
..turnin 31167
..accept 29879
step
goto The Jade Forest 24.3,35.1
.kill 5 Engorged Crocolisk##56183 |q 29879/1
.clicknpc Speckled Trout##56180
.get 5 Speckled Trout |q 29879/2
step
goto The Jade Forest 26.3,37.3
.talk 56313
..turnin 29879
..accept 29935
step
goto The Jade Forest 25.9,38.0
.talk 56351
..accept 29933
step
goto The Jade Forest 26.0,38.8
.talk 56327
..accept 29924
step
goto The Jade Forest 28.2,39.0
.talk 63748
..accept 31241
step
goto The Jade Forest 33.3,41.9
.kill Kher Shan##56329 |q 29924/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 29924
step
goto The Jade Forest 31.1,41.7
.from Battleworn Paratrooper##63782+
.get 6 Alliance Service Medallion##85784+ |q 31241/1
step
goto The Jade Forest 30.8,41.3
.from Jack Arrow##63809 |tip Attack him from the back and he won't hurt you
.collect Captain Jack's Head##85783 |n
.' Click Captain Jack's Head in your bags |use Captain Jack's Head##85783
..accept 31261
step
goto The Jade Forest 29.6,44.0
.from Tigerfly##56283+
.get 30 Bug Leg##76173+ |q 29933/1
step
goto The Jade Forest 28.0,47.2
.talk 56336
..turnin 29935
..accept 29936
..turnin 29933
..turnin 31261
..turnin 31241
step
goto The Jade Forest 28.0,47.4
.talk 62975
.home Grookin Hill
step
goto The Jade Forest 28.0,46.8
.clicknpc Signal Flare##56413
.' Signal Survivors |q 29936/1
step
goto The Jade Forest 28.3,47.8
.talk 56339
..turnin 29936
..accept 29941
step
goto The Jade Forest 27.8,47.9
.talk 60952
.fpath Grookin Hill
step
goto The Jade Forest 28.3,46.9
.talk 56340
.' Tell her Nazgrim has assigned her to scout |q 29941/1
step
goto The Jade Forest 28.0,47.2
.talk 56336
.' Tell him that we will be exploring his lands and ask for his help |q 29941/4
step
goto The Jade Forest 27.1,49.0
.talk 56478
.' Tell her Nazgrim has assigned her to the scouting party |q 29941/3
step
goto The Jade Forest 27.7,50.4
.talk 56477
.' Tell him Nazgrim has assigned him to help scout |q 29941/2
step
goto The Jade Forest 28.3,47.8
.talk 56339
..turnin 29941
step
goto The Jade Forest 28.3,47.8
.talk 56406
..accept 29937
step
goto The Jade Forest 28.0,47.2
.talk 56336
..accept 31239
step
goto The Jade Forest 28.8,46.0
.kill 7 Riverstride Jinyu##56289+ |q 31239/1
step
goto The Jade Forest 28.0,47.2
.talk 56336
..turnin 31239
step
goto The Jade Forest 29.8,51.1
.from Hungry Bloodtalon##56396+
.get 6 Fistful of Bird Guts##76225 |q 29937/1
step
goto The Jade Forest 27.2,50.6
.talk 56406
..turnin 29937
..accept 29939
step
goto The Jade Forest 27.0,50.8
.talk 56358
..accept 29942
step
goto 26.7,55.4
.from Muck Snapper##56447+
.get 4 Snapper Steak##76420+ |q 29942/1
.' Stand on the Deck and throw Gut Bombs in the water |use Gut Bomb##76262
.click Dead Deepriver Slicky
.get 5 Exploded Slicky##76260 |q 29939/1
step
goto The Jade Forest 27.0,50.8
.talk 56358
..turnin 29942
step
goto The Jade Forest 27.2,50.8
.talk 56406
..turnin 29939
..accept 29971
step
goto The Jade Forest 28.6,47.4
.talk 55647
..turnin 29971
step
goto 28.6,47.4
.talk 55648
..accept 29730
step
goto 38.3,45.4
.' Click the warning sign
.' Inspect the warning sign |q 29730/1
step
goto 38.9,46.0
.clicknpc Lifelike Jade Statue##55378
.' Inspect a Lifelike Jade Statue |q 29730/2
step
goto 39.2,46.2
.talk 55381
.' Ask her some questions
.' Speak with Widow Greenpaw |q 29730/3
step
goto 28.6,47.4
.talk 55648
..turnin 29730
step
goto 28.6,47.5
.talk 55646
..accept 29731
step
goto 45.2,63.7 |n
.' Follow the path up |goto 45.2,63.7 <5 |c
|tip If you encounter enemies use the Smoke Bomb ability on your hotbar
step
goto 48.6,60.2
.' Search the Serpent's Spine for signs of life |q 29731/1
|tip If you encounter enemies use the Smoke Bomb ability on your hotbar
step
goto 28.6,47.5
.talk 55646
..turnin 29731
step
goto The Jade Forest 28.6,47.4
.talk 55648
..accept 29823
step
goto The Jade Forest 49.8,70.5
.talk 55688
.' Tell her that you'll protect her to the death!
.' Use the abilities on your hotbar to defeat the Ambushing Jinyu and finally the Alliance Scout |q 29823/1
step
goto The Jade Forest 28.6,47.4
.talk 55648
..turnin 29823
step
goto The Jade Forest 28.6,47.4
.talk 55647
..accept 29824
step
goto The Jade Forest 62.6,82.0
.click Sniper Rifle
.' Right click on the Jinyu Guards to kill them. |tip If you have very low view distance in your settings you won't be able to see them.
.' Escort Shademaster Kiryn through the camp |q 29824/1
step
goto The Jade Forest 28.6,47.4
.talk 55647
..turnin 29824
step
goto The Jade Forest 28.7,47.5
.talk 56339
..accept 29943
step
goto The Jade Forest 30.8,52.3
.talk 56406
..accept 29968
step
goto The Jade Forest 31.6,52.5
.kill 8 Alliance Infiltrator##56303+ |q 29943/1
.click Green Branch
.get 7 Green Branch##76333 |q 29968/1
step
'Standing next to you
.talk 56490
..turnin 29943
..accept 29966
step
.' Follow the path up |goto The Jade Forest 30.4,52.9 <5 |c
step
goto The Jade Forest 29.4,54.3
.' Use Nazgrim's Grog in your bags |use Nazgrim's Grog##76336 |q 29966/1
step
goto The Jade Forest 27.2,50.8
.talk 56406
..turnin 29968
..accept 29967
step
goto The Jade Forest 29.0,49.1
.talk 56525
.' Tell him that you're ready |invehicle
step
.' Use the abilities on your hotbar to fight off the Jinyu Tacticians |tip If they get too close and knock you out, talk to Rivett again.
.' Kill 10 Jinyu Attackers |q 29967/1
step
goto The Jade Forest 29.0,49.1
.talk 56525
..turnin 29967
step
goto The Jade Forest 28.7,47.5
.talk 56339
..turnin 29966
..accept 30015
step
goto The Jade Forest 27.8,47.9 |n
.talk 60952
.' Tell him to send you to Dawn's Blossom |goto The Jade Forest 47.0,46.2 <5 |c
step
goto The Jade Forest 47.1,46.2
.talk 59186
.fpath Dawn's Blossom
step
goto The Jade Forest 46.8,46.1
.talk 63577
.turnin 30015
step
goto The Jade Forest 47.1,46.1
.talk 56348
..accept 31230
step
goto The Jade Forest 47.0,46.0
.talk 59173 |q 31230/3
step
goto The Jade Forest 48.5,44.5
.talk 59160 |q 31230/1
step
goto The Jade Forest 45.7,43.7
.talk 55809 |q 31230/2
step
goto The Jade Forest 45.7,43.7
.talk 55809
.home The Dunken Hozen
step
goto The Jade Forest 47.2,46.2
.talk 56348
..turnin 31230
step
goto The Jade Forest 46.6,46.2
.talk 55234
..accept 29716
step
goto The Jade Forest 46.4,45.8
.talk 56062
..accept 29865
step
goto The Jade Forest 46.6,45.3
.talk 59178
..accept 29866
step
goto The Jade Forest 42.9,49.8
.kill 8 Silkwood Stalker##56070 |q 29865/1
.click Silk Patch
.get 7 Pristine Silk Strand##75023 |q 29866/1
step
goto The Jade Forest 40.2,48.4
.' Next to you
.talk 55274
..accept 29717
step
goto The Jade Forest 37.0,44.8
.talk 55267
.' Tell them that it is safe now |q 29716/1
.kill 8 Jade Guardian##55236 |q 29717/1
step
.' Next to you
.talk 55274
..turnin 29716
..accept 29723
..turnin 29717
step
goto The Jade Forest 39.4,46.2
.talk 55368
.' Ash her where Shin is.
.' Defeat the Jade Witch |q 29723/1
step
goto The Jade Forest 46.6,45.3
.talk 59178
..turnin 29866
step
goto The Jade Forest 46.5,45.8
.talk 56062
..turnin 29865
step
goto The Jade Forest 46.9,46.0
.talk 55413 |tip She runs around this area so you may need ot search.
..turnin 29723
step
goto The Jade Forest 47.0,46.0
.talk 59173
..accept 29993
step
goto The Jade Forest 47.2,46.2
.talk 56348
..accept 29925
step
goto The Jade Forest 54.9,45.1
.talk 56065
..turnin 29993
..accept 29995
step
goto The Jade Forest 54.9,45.3
.talk 56064
..accept 29881
step
goto The Jade Forest 55.3,45.2
.talk 56063
..accept 29882
step
goto 56.9,44.12
.talk 59732
.fpath The Arboretum
step
goto The Jade Forest 53.4,45.6
.from Orchard Wasp##56201+
.get 6 Wasp Stinger##75221+ |q 29882/1
.click Freshly Fallen Petals
.get 8 Freshly Fallen Petal##75219+ |q 29881/1
step
goto The Jade Forest 54.9,45.3
.talk 56064
..turnin 29881
step
goto The Jade Forest 55.4,45.3
.talk 56063
..turnin 29882
step
goto The Jade Forest 52.6,38.1
.talk 56708
..turnin 29995
..accept 29920
step
goto The Jade Forest 54.1,38.5
'Only one of these mobs will be available at a time.
.talk 56209
.' Challenge the Pandriarch |q 29920/2
step
goto 53.6,36.7
.talk 56210
.' Challenge the Pandriarch |q 29920/3
step
goto 52.5,35.5
.talk 56206
.' Challenge the Pandriarch |q 29920/1
step
goto The Jade Forest 52.6,38.1
.talk 55788
..turnin 29920
step
goto The Jade Forest 50.9,27.1
.talk 56345
.turnin 29925
step
goto The Jade Forest 50.9,27.0
.talk 56346
.accept 29928
step
goto The Jade Forest 50.8,26.9
.talk 59735
.fpath Emperor's Omen
step
goto The Jade Forest 48.1,31.7
.from Puckish Sprite##56349+
.click Chunk of Jade
.get 15 Chunk of Jade##76209+ |q 29928/1
step
goto The Jade Forest 50.9,27.0
.talk 56346
..turnin 29928
..accept 29926
..accept 29927
step
goto The Jade Forest 48.7,24.9
.clicknpc Outcast Sprite##55438
..accept 29745
step
.' Go to this spot |goto The Jade Forest 48.4,20.6
.' Find the source of Simulacra discovered |q 29745/2
step
goto The Jade Forest 49.4,20.3
.kill 10 Spiritbound Simulacrum##55288+ |q 29745/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 29745
..accept 29747
step
goto The Jade Forest 48.6,20.5
.clicknpc Shattered Simulacrum##55472
..accept 29748
step
goto The Jade Forest 48.1,18.1
.kill 8 Shan'ze Spiritbinder##55279 |q 29747/1
.' Click Vacant Simulacrums
.' Destroy 6 Vacant Simulacrum |q 29748/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 29748
..turnin 29747
..accept 29749
step
goto The Jade Forest 44.2,15.0
.click Staff of Pei-Zhi
.get Staff of Pei-Zhi##74258 |q 29749/1
.' Kill Conjured Ancestor until the "Empowering the Staff" bar fills.  |q 29749/2
step
goto The Jade Forest 44.2,15.0
.talk 55614 |tip If he does not appear for you, you may have to log out and log back in to get him to show up.
..turnin 29749
..accept 29750
..accept 29751
..accept 29752
step
goto 42.2,17.1
.click Pungent Ritual Candle##209701
.get Pungent Ritual Candle##74761+ |q 29751/3
.' While doing this:
.from Shan'ze Spiritclaw##55291+
.get 8 Spirit Bottle##74763+ |q 29750/1 |n
.' Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
step
goto 42.7,15.8
.click Jade Cong##209699
.get Jade Cong##74762 |q 29751/1
.' While doing this:
.from Shan'ze Spiritclaw##55291+
.get 8 Spirit Bottle##74763+ |q 29750/1 |n
.' Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
step
goto The Jade Forest 41.6,14.4
.click Chipped Ritual Bowl##209700
.get Chipped Ritual Bowl##74760 |q 29751/2
.' While doing this:
.from Shan'ze Spiritclaw##55291+
.get 8 Spirit Bottle##74763+ |q 29750/1 |n
.' Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
step
goto The Jade Forest 41.0,14.7
.from Shan'ze Spiritclaw##55291+
.get 8 Spirit Bottle##74763+ |q 29750/1
.' Use the Staff of Pei-Zhi on Wayward Ancestors |use Staff of Pei-Zhi##74771
.' 10 Wayward Ancestors Recovered |q 29752/1
step
goto The Jade Forest 44.3,15.0
.talk 55614
..turnin 29750
..accept 29753
..turnin 29751
..turnin 29752
..accept 29756
step
goto The Jade Forest 39.4,11.2
.' Use the Spirit Bottles in your bag to summon Raging Beast Spirits |use Spirit Bottles##74808
.from Raging Beast Spirit##55790
.' Return 8 Beast Spirits to Nature |q 29753/1
.click Tidemist Cap
.get 10 Tidemist Cap##75214+ |q 29756/1
step
goto The Jade Forest 44.2,15.0
.talk 55614
..turnin 29753
..turnin 29756
..accept 29754
step
goto The Jade Forest 43.7,12.9
.' Protect Pei-Zhi during his ritual |q 29754/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 29754
..accept 29755
step
goto 42.6,11.2
.from Stonebound Colossus##56595
.kill Shan Jitong##56596 |q 29755/1
step
goto The Jade Forest 43.6,12.8
.talk 59492
..turnin 29755
step
'Follow the path here |goto 38.0,18.2 |c
step
'Follow the path here |goto 38.2,24.1 |c
step
.' Follow this path into the Tian Monastery. |goto 41.5,25.0 |c
step
goto 43.6,24.5
.talk 59736
.fpath Tian Monastery
step
goto 45.0,24.9
.talk 54913
..accept 29618
step
goto 45.2,25.1
.talk 54914
..turnin 29618
step
goto 45.0,24.9
.talk 54913
..accept 29619
step
goto 45.7,27.1
.click Ripe Orange
.get 8 Ripe Orange##72589+ |q 29619/1
step
goto 45.0,24.9
.talk 54913
..turnin 29619
..accept 29620
step
goto 42.7,23.2
.talk 54914
.' Tell him you don't need any introductions |q 29620/1
..turnin 29620
step
goto 43.1,23.7
.talk 54926
..accept 29622
..accept 29626
step
goto 43.2,24.8
.talk 54922
..accept 29632
step
goto 43.3,25.2
.talk 54944
.' Tell them let's fight!
.' Defeat 8 Tian Pupils |q 29632/1
step
goto 43.2,24.8
.talk 54922
..turnin 29632
..accept 29633
..accept 29634
step
goto 44.6,24.0
.talk 54925
.' Challenge Husshun to a fight
.' Defeat Husshan |q 29634/1
step
goto 43.1,26.0
.talk 54924
.' Ask him if he wants to fight
.' Defeat Zhi-Zhi |q 29633/1
step
goto 43.2,24.8
.talk 54922
..turnin 29633
..turnin 29634
..accept 29635
step
goto 43.1,23.6
.talk 54926
.' Challenge him
.' Defeat Xiao |q 29635/1
step
goto 43.2,24.8
.talk 54922
..turnin 29635
..accept 29636
step
goto 41.6,23.7
.talk 54915
..turnin 29626
..accept 29627
step
goto 41.4,24.2
.talk 54981
.buy Black Walnut Extract##72954 |q 29627/2
step
goto 41.8,24.6
.talk 54982
.buy 3 Triple-Bittered Ale##72979 |q 29627/3
step
goto 41.5,25.3
.click Rattan Switch
.get 6 Rattan Switch##72926+ |q 29627/1
step
goto 41.6,23.7
.talk 54915
..turnin 29627
..accept 29628
..accept 29629
..accept 29630
step
goto 41.6,28.3
.talk 54917
..turnin 29622
..accept 29623
step
goto 41.3,27.5
.' Use the abilities on your hotbar to mimic the Tian Instructor and practice strikes.
.' Practice 12 strikes |q 29623/1
step
goto 41.6,28.3
.talk 54917
..turnin 29623
..accept 29624
step
goto 41.1,28.0
.kill 2 Training Bag##55183+ |q 29624/1 |tip This may take some time to do. Each bag has a lot of health and only one is vulnerable at a time. Listen for the Instructors directions and hit the bag he calls for.
step
goto 41.6,28.3
.talk 54917
..turnin 29624
step
goto 39.0,24.0
.talk 54918
..turnin 29636
..accept 29637
step
goto 39.0,23.2
.' Use the Monastery Fireworks |use Monastery Fireworks##73369
.' Defeat the Rumpus Brutes and Rumpus Combatants as they spawn
.' Survive for 2 minutes |q 29637/1
step
goto 38.0,23.8
.talk 55094
..accept 29631
step
goto 39.0,24.0
.talk 54918
..turnin 29637
step
goto 37.8,17.6
'You will need to defend this cauldron from Greenwood Tricksters until you get back to the Tian Monastery |tip Do not mount while it follows you, it is too slow
.click Boiling Cauldron
.' Obtain the Boiling Cauldron |q 29628/1
step
goto 38.2,17.9
.kill 10 Greenwood Trickster##54987+ |q 29630/1 |tip As long as you have the cauldron behind you they will attack it.
step
goto 35.0,21.5
.from Waxwood Matriarch##55238+, Waxwood Hunter##54988+
.' Kill 6 Waxwood Hunters |q 29631/1
.click Blushleaf Cluster |tip This channel determines how many extracts you obtain per channel so try not to get interrupted or move
.get 80 Blushleaf Extract##73193 |q 29629/1
step
goto 38.0,23.8
.talk 55094
..turnin 29631
step
goto 41.6,23.7
.talk 54915
..turnin 29628
..turnin 29629
..turnin 29630
..accept 29646
step
goto 42.7,23.2
.talk 54914
..turnin 29646
step
goto The Jade Forest/6 62.2,38.0
.talk 56347
..turnin 29927
..accept 29929
step
goto
.clicknpc Greenstone Miner##56464
.' Free 8 Gemstone Miners |q 29929/1
.kill 6 Greenstone Gorger##56404 |q 29926/2
.kill 12 Greenstone Nibbler##56401 |q 29926/1
step
goto The Jade Forest 46.3,29.4
.talk 56467
..turnin 29929
..accept 29930
step
goto The Jade Forest 46.3,29.5
.clicknpc Jade Cart##56527
.' Defened the Jade Cart from Brittle Greenstone Gorgers until you reach your location |goto The Jade Forest 51.2,26.7 <5 |c
step
goto The Jade Forest 50.9,27.0
.talk 56346
..turnin 29926
..turnin 29930
..accept 29931
step
goto The Jade Forest 48.3,61.4
.talk 59391
..turnin 29931
..accept 30495
step
goto The Jade Forest 46.4,61.8
.talk 59395
.' Tell him you've got a new shipment for him |q 30495/1
step
goto The Jade Forest 46.9,60.4
.talk 59401
.' Tell him you've got his jade |q 30495/2
step
goto The Jade Forest 48.2,60.0
.talk 59392
.' Tell him you have a jade delivery for him |q 30495/3
step
goto The Jade Forest 48.2,60.0
.talk 59392
.' Tell him you need a ride to the top of the statue |goto The Jade Forest 47.5,60.6 <5 |c
step
goto The Jade Forest 47.6,60.7
.talk 59397
.' Ask her if somebody said they needed jade |q 30495/4
step
goto The Jade Forest 47.4,60.5
.talk 59400
.' Tell her you need a ride to the bottom of the statue |goto The Jade Forest 48.2,60.0 <5 |c
step
goto The Jade Forest 48.3,61.4
.talk 59391
..turnin 30495
..accept 29932
step
goto The Jade Forest 48.2,60.0
.talk 59392
.' Tell him to take you to Temple of the Jade Serpent |goto The Jade Forest 55.7,57.1 <5 |c
step
goto The Jade Forest 55.8,57.1
.talk 57242
.' Tell her you have a message for the Jade Serpent |q 29932/1
step
goto The Jade Forest 58.1,58.7
.talk 56782
..turnin 29932
..accept 29997
..accept 29998
step
goto The Jade Forest 58.1,59.0
.talk 56784
..accept 29999
..accept 30005
step
.' While helping around the city make sure to activate 8 Firework Launchers.
|confirm
step
goto The Jade Forest 56.5,58.4
.clicknpc Playful Emerald Serpent##56859
.' Playful Emerald Serpent found |q 29999/3
step
goto The Jade Forest 56.3,60.4
.talk 56786
.turnin 29998
.accept 30001
.accept 30002
step
goto 56.0,60.3
.click Infested Book
.kill 12 Bookworm##57237 |q 30002/1 |tip Right click on the Bookworms until they die.
.kill 8 Dappled Moth##57232 |q 30001/1
step
goto The Jade Forest 56.3,60.4
.talk 56786
..turnin 30001
..turnin 30002
..accept 30004
step
goto 56.0,60.3
.clicknpc Playful Gold Serpent##56850
.' Playful Gold Serpent found |q 29999/4
step
goto The Jade Forest 58.2,61.4
.clicknpc Playful Crimson Serpent##56852
.' Playful Crimson Serpent found |q 29999/2
step
goto The Jade Forest 58.1,58.7
.talk 56782
..turnin 30004
step
goto The Jade Forest 59.2,56.8
.clicknpc Playful Azure Serpent##56853
.' Playful Azure Serpent found |q 29999/1
step
goto The Jade Forest 57.1,55.8
.from Water Fiend##56820
.get Scryer's Staff##76725 |q 29997/1
step
goto The Jade Forest 57.6,56.0
.talk 56787
..turnin 29997
..accept 30011
step
goto The Jade Forest 57.5,61.4
.click Firework Launcher
.' Fireworks launched |q 30005/1
step
goto The Jade Forest 58.1,58.7
.talk 56782
.turnin 30011
step
goto The Jade Forest 58.1,59.1
.talk 56784
..turnin 29999
..turnin 30005
..accept 30000
step
.' Listen to the Jade Dragon's Tale |goto The Jade Forest 55.3,57.1 <5 |c
step
goto The Jade Forest 55.9,57.1
.talk 57242
..turnin 30000
..accept 30499
step
goto The Jade Forest 28.0,47.2
.talk 57108
..turnin 30499
..accept 30466
..accept 30484
step
goto 28.1,47.4
.click Bucket of Slickies |q 30466/2
step
goto The Jade Forest 28.4,47.8
.talk 59305
.' Tell him Nazgrim needs an update |q 30484/2
step
goto The Jade Forest 29.2,50.9
.talk 56841
.' Tell her Nazgrim wants an update on her progress |q 30484/1
step
goto The Jade Forest 28.5,51.9
.talk 56838
.' Tell her Nazgrim needs her training report |q 30484/3
step
goto The Jade Forest 27.0,54.9
.talk 56840
.' Tell him Nazgrim wants to know the status of the supplies |q 30484/4
step
goto The Jade Forest 28.1,48.0
.' Use your Bucket of Slicky Water on Lazy Hozens |use Bucket of Slicky Water##79884 |tip They are all over Grookin Hill
.' Motivate 10 Hozen |q 30466/1
'|modelnpc Lazy Hozen##59740+
step
goto The Jade Forest 28.0,47.2
.talk 57108
..turnin 30466
..turnin 30484
step
goto The Jade Forest 28.2,46.7
.talk 59377
..accept 30485
step
goto The Jade Forest 28.2,46.7 |n
.talk 64207
.' Tell him you are ready to leave |goto The Jade Forest 44.6,67.2 <5 |c
step
goto 43.1,68.5
.talk 64310
.fpath Serpent's Overlook
step
goto The Jade Forest 44.5,66.9
.' Use Ka Pao's Meditation Candle |use Ka Pao's Meditation Candle##80071
.' Use the abilities on your hotbar to keep your "Meditate" bar as close to 50 as you can.
.' Reveal the Mystery of the Frescos |q 30485/1
step
goto The Jade Forest 44.8,67.1
.talk 59411
..turnin 30485
..accept 31303
step
goto 44.8,67.0
.talk 64244
.' Tell him let's do this! |invehicle
step
.' While riding Mishi, use your ability to target and close Sha Fissures.
.' They are white circles with pillars of smoke coming out of them.
.' 12 Sha Fissures Sealed |q 31303/1
step
goto The Jade Forest 49.3,61.5
.talk 59418
..turnin 31303
..accept 30504
..accept 30500
..accept 30502
step
goto 48.1,61.7
|use Cho's Fireworks##86467
.' General Nazgrim Rescued |q 30504/1
'|modelnpc General Nazgrim##64360
step
goto 47.2,62.5
|use Cho's Fireworks##86467
.' Shademaster Kiryn Rescued |q 30504/2
'|modelnpc Shademaster Kiryn##64362
step
goto 46.9,60.7
|use Cho's Fireworks##86467
.' Shokia Rescued |q 30504/3
'|modelnpc Shokia##64363
step
goto 48.0,59.1
|use Cho's Fireworks##86467
.' Rivett Clutchpop Rescued |q 30504/4
'|modelnpc Rivett Clutchpop##64364
step
goto 48.4,60.2
..kill 10 Sha Echo |q 30500/1
.click Celestial Jade##210921
.' Use your Celestial Jade on Sha Remnants. |use Celestial Jade##80074
..kill 6 Sha Remnant |q 30502/1
step
goto The Jade Forest 49.3,61.5
.talk 59418
..turnin 30502
..turnin 30500
..turnin 30504
step
goto The Jade Forest 49.3,61.4
.talk 59899
..accept 30648
step
goto 49.3,61.4
.talk 59899
.' Tell her that you're ready to leave.
.' Travel to the Valley of the Four Winds |q 30648/1
step
.' Click the Quest complete box located at the top right of your screen.
..turnin 30648
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\Valley of the Four Winds (86-87)",[[
author support@zygorguides.com
image ValleyOfTheFourWinds
next Zygor's Horde Leveling Guides\\Pandaria 85-90\\Krasarang Wilds (87)
startlevel 86.2
dynamic on
step
goto Valley of the Four Winds 85.9,22.1
.talk 56133
..accept 29907
step
.' Follow Chen and Li Li |q 29907/1
step
goto Valley of the Four Winds 83.7,21.1
.talk 56204
..turnin 29907
..accept 29908
step
goto Valley of the Four Winds 84.5,21.0
.talk 60230
.fpath Pang's Stead
step
goto Valley of the Four Winds 82.7,21.3
.talk 56440
..accept 29877
step
goto Valley of the Four Winds 79.3,23.5
.from Virmen Rancher##56185+, Virmen Scout##56184+, Virmen Troublemaker##55873+, Virmen Pesterer##65504+
.' Kill 8 Large Virmen |q 29908/1
.' Kill 18 Vermin Pesterers |q 29908/2
.clicknpc Barrow Bush##56278
.clicknpc Rake Tree##56279
.clicknpc Hoe Tree##56280
.' Find 7 buried farm equipment |q 29877/1
step
goto Valley of the Four Winds 82.7,21.3
.talk 56440
..turnin 29877
step
goto Valley of the Four Winds 83.7,21.0
.talk 56204
..turnin 29908
..accept 29909
step
goto Valley of the Four Winds 84.1,21.1
.talk 56110
..accept 30086
..turnin 30086
..accept 29873
..accept 29871
..accept 29875
..accept 29872
step
goto Valley of the Four Winds 81.4,24.9
.talk 56207
..turnin 29909
..accept 29940
step
goto Valley of the Four Winds 82.0,25.8
.talk 56465
..accept 29910
step
.clicknpc Plump Marmot##56203
.' Move 6 Plump Marmots |q 29910/1
.click Marmot Hole
.' Fill 6 Marmot Holes |q 29910/2
step
goto Valley of the Four Winds 81.9,26.0
.talk 56465
..turnin 29910
step
goto Valley of the Four Winds 86.6,28.1 |n
.' Enter the tunnel. |goto Valley of the Four Winds 86.6,28.1 <5 |c
step
goto Valley of the Four Winds 85.1,27.0
.click Stolen Turnip##209891+
.get 5 Stolen Turnip |q 29940/1
step
goto Valley of the Four Winds 86.6,28.1 |n
.' Exit the warren. |goto Valley of the Four Winds 86.6,28.1 <5 |c
step
goto Valley of the Four Winds 84.8,34.5
.click Stolen Watermelon##209892+
.get 5 Stolen Watermelon |q 29940/2
step
goto Valley of the Four Winds 81.4,25.0
.talk 56207
..turnin 29940
..accept 29911
step
goto Valley of the Four Winds 83.7,21.0
.talk 56204
..turnin 29911
..accept 29912
step
goto Valley of the Four Winds 84.2,22.0
.click Ang's Giant Pink Turnip
.collect 1 Ang's Giant Pink Turnip##75259 |c
.click Ang's Summer Watermelon
.collect 1 Ang's Summer Watermelon##75258 |c
.click Pang's Extra-Spicy Tofu
.collect 1 Pang's Extra-Spicy Tofu##75256 |c
step
goto Valley of the Four Winds 82.9,21.3
.talk 56192
.' Hit the turnip with average power
.' Launch a pink turnip |q 29912/1
.' Hit the watermelon very softly
.' Launch a watermelon |q 29912/2
.' Hit the tofu as hard as possible
.' Launch the Extra-Spicy Tofu |q 29912/3
step
goto Valley of the Four Winds 75.2,24.1
.talk 56205
..turnin 29912
..accept 29913
..accept 29914
step
goto Valley of the Four Winds 70.8,24.2
.talk 62658
.fpath Grassy Cline
step
goto Valley of the Four Winds 70.2,23.9
.clicknpc Jian##56253 |q 29914/1
step
goto Valley of the Four Winds 70.1,28.7
.clicknpc Smelly##56255 |q 29914/3
step
goto Valley of the Four Winds 66.9,29.3
.clicknpc Ling##56254 |q 29914/2
step
goto Valley of the Four Winds 67.5,29.9
.from Wyrmhorn Turtle##56256
.get 80 Turtlemeat Scrap##75276 |q 29913/2
step
goto Valley of the Four Winds 72.3,31.6
.from Mushan Beast##56239
.get 4 Mushan Shoulder Steak##75275 |q 29913/1
step
goto Valley of the Four Winds 75.2,24.1
.talk 56205
..turnin 29913
..turnin 29914
..accept 29915
step
goto Valley of the Four Winds 78.1,32.9
.talk 56208
..turnin 29915
..accept 29916
..accept 29917
step
goto Valley of the Four Winds 81.3,40.2
.kill Lupello##56357 |q 29917/1
step
goto Valley of the Four Winds 83.4,31.4
.kill 6 Thieving Wolf##56106 |q 29916/2
.kill 5 Thieving Plainshawk##56034 |q 29916/1
step
goto Valley of the Four Winds 78.1,32.9
.talk 56208
..turnin 29916
..turnin 29917
step
goto Valley of the Four Winds 78.2,32.8
.talk 56312
..accept 29918
step
goto Valley of the Four Winds 78.8,31.4
.' Use your Rancher's Lariat on a Great White Plainshawk |use Rancher's Lariat##75208
.kill Great White Plainshawk##56171 |q 29918/1 |tip When it grasps you in its claws use the Escape Claws ability that appear to break free.
step
goto Valley of the Four Winds 74.7,34.6
.talk 56312
..turnin 29918
step
goto Valley of the Four Winds 75.3,35.5
.talk 56133
..accept 29919
step
goto Valley of the Four Winds 75.3,35.5
.talk 56133
.' Tell him you're ready.
.' Escort Chen and Li Li |q 29919/1 |tip Make sure you stay close to them even though you don't have to protect them. The quest will bug and you will fail otherwise.
step
goto Valley of the Four Winds 68.7,43.1
.talk 56474
..turnin 29919
step
goto Valley of the Four Winds 68.9,43.1
.talk 56133
..accept 29944
step
goto Valley of the Four Winds 68.9,43.3
.talk 56138
..accept 29945
step
goto Valley of the Four Winds 67.0,38.7
.kill Jinanya the Clawblade##56513 |q 29944/2
step
goto Valley of the Four Winds 69.2,37.0
.kill Aiyu the Skillet##56520 |q 29944/1
step
goto Valley of the Four Winds 64.6,40.7
.kill Frenzyhop##56514 |q 29944/3
step
goto Valley of the Four Winds 66.5,41.7
.from Longfang Howler##56524+, Mushan Nomad##56523+, Tawnyhide Stag##56532+, Tawnyhide Doe##56531+
.get 40 Vial of Animal Blood##76335+ |q 29945/2
.click Meadow Marigold
.get 10 Meadow Marigold##76334 |q 29945/1
.' You can find more animals and marigolds around: [69.7,46.8]
step
goto Valley of the Four Winds 68.9,43.3
.talk 56138
..turnin 29945
..accept 29947
step
goto Valley of the Four Winds 68.9,43.2
.talk 56133
..turnin 29944
..accept 29946
step
goto Valley of the Four Winds 68.7,43.1
.talk 56474
..accept 29948
step
goto Valley of the Four Winds 69.1,40.0 |n
.' Enter the tunnel |goto Valley of the Four Winds 69.1,40.0 <5 |c
step
'While in the warren:
.click Stolen Sack of Hops##11499
.get 6 Stolen Sack of Hops##76337 |q 29948/1
.' Throw your Orange-Painted Turnips at Virmen Hoarders |use Orange-Painted Turnip##76370
.' Trick 12 Virmen with Orange-Painted Turnips |q 29947/1
|confirm
step
goto Valley of the Four Winds 67.9,37.4
.kill Chufa##56537 |q 29946/1 |tip Don't worry that it is elite, Chen comes to help you.
step
.' While in the warren:
.click Stolen Sack of Hops
.get 6 Stolen Sack of Hops##76337 |q 29948/1
.' Throw your Orange-Painted Turnips at Virmen Hoarders |use Orange-Painted Turnip##76370
.' Trick 12 Virmen with Orange-Painted Turnips |q 29947/1
step
goto Valley of the Four Winds 69.1,40.0 |n
.' Exit the warren |goto Valley of the Four Winds 69.1,40.0 <5 |c
step
goto Valley of the Four Winds 68.7,43.1
.talk 56474
..turnin 29948
step
goto Valley of the Four Winds 68.9,43.3
.talk 56138
..turnin 29947
step
goto Valley of the Four Winds 68.9,43.1
.talk 56133
..turnin 29946
..accept 29949
step
goto Valley of the Four Winds 68.8,43.4
.talk 56138
..turnin 29949
..accept 29950
step
goto Valley of the Four Winds 74.8,42.5
.' If Li Li isn't with you then use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
.' Bring Li Li to Huangtze Falls |q 29950/3
|modelnpc Li Li##56138
step
goto Valley of the Four Winds 61.9,34.8
.' If Li Li isn't with you then use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
.' Bring Li Li to New Cifera |q 29950/2
|modelnpc Li Li##56138
step
goto Valley of the Four Winds 61.1,34.3
.talk 56113
..turnin 29871
..accept 29577
step
goto Valley of the Four Winds 61.0,32.9
.talk 58736
..accept 30267
step
goto Valley of the Four Winds 60.6,33.7
.talk 56773
..accept 29757
step
goto 57.4,26.5
.from Manglemaw##58754 |tip After Manglemaw dies, his mother comes out.
.from Manglemaw's Mother##58755
.collect 1 Enormous Crocolisk Tail##79238 |n
.' Click the Enormous Crocolisk Tail in your bags |use Enormous Crocolisk Tail##79238
..accept 30275
step
goto 57.0,34.7
.from Glade Hunter##57299, Glade Sprinter##58741
.get 5 Spindly Bloodfeather##79198 |q 30267/2
.clicknpc Glade Glimmer##57301
.get 18 Glade Glimmer##79197 |q 30267/1
step
goto 60.6,33.7
.talk 56773
..turnin 30275
step
goto Valley of the Four Winds 61.0,32.9
.talk 58736
..turnin 30267
step
goto Valley of the Four Winds 63.1,29.7 |n
.' Follow this path up |goto Valley of the Four Winds 63.1,29.7 <5 |c
step
goto Valley of the Four Winds 59.8,27.9
.talk 56802
..accept 29600
step
goto Valley of the Four Winds 59.3,27.6
.talk 56113
.' Tell him to speak with the water. |q 29577/1
step
goto Valley of the Four Winds 59.8,27.9
.talk 56802
..turnin 29577
..accept 29581
step
goto 65.3,25.82
.from Krosh##56833
.collect Krosh's Back##83767 |n
.' Click Krosh's Back in your bags |use Krosh's Back##83767
..accept 29758
.click Dreamleaf Bush
.get Sprig of Dreamleaf####76973 |q 29581/1
step
goto 63.9,26.5
.kill 16 Razorback Snapper##56832 |q 29600/1
.click Gurgling Toadspawn
.' Scoop 8 Toad Eggs |q 29757/1
step
goto Valley of the Four Winds 59.8,27.9
.talk 56802
..turnin 29600
step
goto Valley of the Four Winds 60.6,33.7
.talk 56773
..turnin 29581
..turnin 29757
..turnin 29758
step
goto Valley of the Four Winds 55.1,50.6
.talk 59582
.home The Lazy Turnip
step
goto 56.4,50.3
.talk 60231
.fpath Halfhill
step
goto 55.1,47.4
.talk 64315
..accept 32045
step
goto 55.6,52.1
.talk 59585
..accept 32035
step
goto 62.4,58.9
.' If Li Li isn't with you than use her Wishing-Stone in your bags |use Li Li's Wishing-Stone##76350
.' Bring Li Li to the Silkmasters |q 29950/1
|modelnpc Li Li##56138
step
goto Valley of the Four Winds 62.7,59.7
.talk 57405
..turnin 32035
..accept 30072
step
goto Valley of the Four Winds 63.5,58.5
.talk 57424
..accept 30059
step
goto Valley of the Four Winds 62.5,55.2
.click Mulberry Barrel
.get Mulberry Leaves##77455 |q 30072/1
step
goto Valley of the Four Winds 62.3,56.7
.clicknpc Hungry Silkworm##57403 |tip Under the building
.' Feed 5 Hungry Silkworms |q 30072/2
step
goto Valley of the Four Winds 62.4,62.5
.click Silk Cocoon Bucket
.get Raw Silk##77456 |q 30072/3
step
goto Valley of the Four Winds 62.7,59.7
.talk 57405
..turnin 30072
step
goto Valley of the Four Winds 64.7,55.5
.kill 6 Mutated Silkmoth##57422+ |q 30059/1
.kill 8 Tiny Mutated Silkmoth##65984+ |q 30059/2
step
goto Valley of the Four Winds 63.5,58.5
.talk 57424
..turnin 30059
step
goto Valley of the Four Winds 63.6,58.5
.talk 57407
..accept 30058
step
goto Valley of the Four Winds 64.3,58.3
.click Mothallus Bait
.kill Mothallus##57421 |q 30058/1
step
goto Valley of the Four Winds 63.6,58.5
.talk 57407
..turnin 30058
step
goto Valley of the Four Winds 68.8,43.4
.talk 56138
..turnin 29950
step
goto Valley of the Four Winds 68.7,43.1
.talk 56474
..accept 29951
step
goto Valley of the Four Winds 68.8,43.4
.talk 56133
..accept 29952
step
goto Valley of the Four Winds 68.8,43.4 |n
.talk 56133
.' Ask Chen what happened and listen to his story |goto 32.2,71.5 <5 |c
step
goto 34.5,70.4
.' Use the abilities on your hotbar to defeat the various monsters as you follow Uncle Gao.
.' Listen to Chen's story |q 29952/1
|modelnpc Uncle Gao##56680
|modelnpc Unruly Alemental##56684
|modelnpc Wuk-Wuk##56691
step
goto Valley of the Four Winds 68.8,43.4
.talk 56133
..turnin 29952
step
goto Valley of the Four Winds 73.1,55.5
.click Muddy Water
.' Plan out your path before you start gathering mud. You will slowly lose mud as you move around.
.' Fill up your vial 100% with mud |q 29951/1
step
goto Valley of the Four Winds 68.7,43.1
.talk 56474
..turnin 29951
step
goto Valley of the Four Winds 68.9,43.4
.talk 56133
..accept 30046
step
goto Valley of the Four Winds 55.9,49.4
.talk 56133
..turnin 30046
..accept 30053
..accept 30048
..accept 30049
step
goto Valley of the Four Winds 54.3,38.7
.talk 56474
..turnin 30049
..accept 30051
step
goto Valley of the Four Winds 54.3,38.7
.talk 56474
.' Tell him you're ready to go
|confirm
step
goto 55.2,35.4
.kill Kracor##67128 |q 32045/1
step
goto Valley of the Four Winds 53.3,31.2
.' While Mudmug is following you:
.' Run through Swirling Pools located around this area
.' Gather 30 Gladewater |q 30051/1
step
.' Next to you
.talk 58785
..turnin 30051
..accept 30172
step
goto 54.1,25.6
.kill Thundergill##67125 |q 32045/2
step
goto 51.3,26.9
.kill Succula##67099 |q 32045/3
step
goto Valley of the Four Winds 48.3,33.5
.talk 62377
..accept 30050
step
goto Valley of the Four Winds 48.3,33.5
.talk 62377
.' Tell her you are ready to go
.' Follow the instructions that appear and water her vegetables using the new button that appears on your screen
.' Water 60 vegetables |q 30050/1
step
goto Valley of the Four Winds 48.3,33.5
.talk 62377
..turnin 30050
.' Tell her you're helping a friend brew some beer |q 30053/1
step
goto Valley of the Four Winds 44.2,34.2
.talk 57401
..accept 30054
step
goto Valley of the Four Winds 44.3,34.2
.talk 62385
..accept 30056
.' Ask if he has any hops he can spare |q 30053/3
step
goto 43.6,35.0 |n
.' Enter the tunnel |goto 43.6,35.0 |c
step
goto 41.3,38.1
.talk 57408
..turnin 30056
..accept 30057
step
'Exit the warren |goto 43.6,35.0 |c
step
goto 43.4,39.1
.from Springtail Gnasher##57413, Springtail Leaper##57415
.get 100 Virmen Tooth##77379 |q 30054/1
step
goto Valley of the Four Winds 44.2,34.3
.talk 57401
..turnin 30054
step
goto Valley of the Four Winds 44.3,34.2
.talk 62385
..turnin 30057
step
goto Valley of the Four Winds 38.6,51.7
.talk 57385
..accept 30052
step
goto 38.6,51.7
.talk 57385
.' Ask him "What weeds?"
.clicknpc Ugly Weed##57306
.clicknpc Nasty Weed##57308
.click Weed-B-Gone Gas Bomb |tip Use the new button available to you to clear a lot of weeds at once
.' Pull 100 Weeds |q 30052/1
step
goto Valley of the Four Winds 38.6,51.7
.talk 57385
..turnin 30052
.' Ask him if you can buy some hops |q 30053/2
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 30053
..accept 30055
step
goto 55.9,49.5
.talk 56133
.' If Mudmug is no longer following you, you can find him at [54.3,38.7]
..turnin 30172
..turnin 30055
step
goto 55.1,47.4
.talk 64315
..turnin 32045
step
goto Valley of the Four Winds 52.7,62.8
.talk 56138
..turnin 30048
..accept 30031
step
goto Valley of the Four Winds 52.8,63.0
.talk 57211
..accept 30029
step
goto Valley of the Four Winds 52.6,63.0
.talk 57209
..accept 30030
step
goto Valley of the Four Winds 51.3,60.5
.click Aged Grain
.' Taste Aged Grain |q 30031/1
step
goto Valley of the Four Winds 50.7,61.9
.click Malted Grain
.' Taste Malted Grain |q 30031/3
step
goto Valley of the Four Winds 53.7,63.3
.click Light Grain
.' Taste Light Grain |q 30031/2
step
goto Valley of the Four Winds 53.6,64.6
.click Fresh Grain
.' Taste Fresh Grain |q 30031/4
step
goto Valley of the Four Winds 52.4,62.2
.kill 8 Tricky Maizer##57223 |q 30029/1
step
goto Valley of the Four Winds 51.5,64.5
.kill Cornan##57213 |q 30030/1
step
goto Valley of the Four Winds 52.7,62.8
.talk 56138
..turnin 30031
step
goto Valley of the Four Winds 52.6,63.0
.talk 57209
..turnin 30030
step
goto Valley of the Four Winds 52.7,63.0
.talk 57211
..turnin 30029
..accept 30032
..accept 30028
step
goto Valley of the Four Winds 54.7,67.7
.click Stolen Malt Sack
.get 8 Sack of Grain##77033 |q 30028/1
step
goto 51.3,77.4
.click Rappeling Rope
.' Use the Cliff Harness. |q 30032/1
step
goto 53.6,76.4 |n
.' Enter the cave |goto Valley of the Four Winds 53.6,76.4 <5 |c
step
goto 53.6,76.4
.click Malted Cave Barley##77034
.get Malted Cave Barley |q 30032/2
step
.' Exit the Cave |goto 53.6,76.4 <5 |c
step
goto 51.3,78.4 |n
.click Climbing Rope
.' Ride to the top of the Cliff |goto 51.2,77.6 <5 |c
step
goto 52.7,62.8
.talk 56138
..turnin 30032
..accept 30047
step
goto Valley of the Four Winds 52.7,63.0
.talk 57211
..turnin 30028
step
goto Valley of the Four Winds 55.9,49.5
.talk 56133
..turnin 30047
..accept 30073
step
.' Wait for the dialogue to end.
.' Help Chen brew his beer |q 30073/1
step
goto Valley of the Four Winds 55.9,49.4
.talk 56133
..turnin 30073
..accept 30074
step
goto Valley of the Four Winds 32.2,68.5
.talk 56133
..turnin 30074
step
goto Valley of the Four Winds 32.3,68.3
.talk 56474
..accept 30076
step
goto Valley of the Four Winds 32.3,68.5
.talk 56138
..accept 30077
step
goto Valley of the Four Winds 32.1,68.3
.talk 56133
..accept 30075
step
goto Valley of the Four Winds 35.3,66.5
.' While completing this step be careful not to aggro Ook-Ook.
.clicknpc Barreled Pandaren##57662
.' Free 7 Barreled Pandaren |q 30077/1
.from Mischievous Virmen##57671, Ale-Addled Hozen##57672
.' Kill 10 Ale-Addled Hozen or Mischievous Virmen |q 30075/1
.from Curious Water Sprite##57673
.get 3 Spritewater Essence##77471 |q 30076/1
step
goto Valley of the Four Winds 36.1,69.0
.talk 56138
..turnin 30077
step
goto Valley of the Four Winds 36.0,69.0
.talk 56133
..turnin 30075
step
goto Valley of the Four Winds 36.0,69.1
.talk 56474
..turnin 30076
step
goto Valley of the Four Winds 36.0,69.0
.talk 56133
..accept 30078
step
goto Valley of the Four Winds 36.0,69.0 |n
.talk 56133
.' "Crack your knuckles and nod your head." |goto Valley of the Four Winds 38.2,67.7 <5 |c
step
'The objectives of this quest can be done in any order depending on where the phase happens to take you.
.' Click here if you start near Mudmug. |next |confirm
.' Click here if you start near Li Li. |next "lili" |confirm
.' Click here if you start near Chen. |next "chen" |confirm
step
label mudmug
goto 34.9,70.3 |n
.talk 58027
.' Tell him to calm down.
.kill Eddy##58014 |q 30078/1 |tip When Eddy activates his Watery Shield run over bubbles on the ground until it is weakened, then click the bubble.
.' Click here to move on to Jooga. |next "lili" |confirm
.' Clean out the brewery. |goto Valley of the Four Winds 36.1,68.9 <5 |noway |c |next "done"
step
label lili
goto 33.0,71.1 |n
.talk 58028
.' Tell her you'll help.
.kill Jooga##58015 |q 30078/2 |tip You can keep Jooga pinned down by clicking the Empty Kegs around the room. Dodge the bananas that he throws at you.
.' Click here to move on to the Fizzy Yellow Alemental. |next "chen" |confirm
.' Clean out the brewery. |goto Valley of the Four Winds 36.1,68.9 <5 |noway |c |next "done"
step
label chen
goto 38.2,68.2
.talk 58029
.' Tell him let's do this.
.' Kill the Fizzy Yellow Spirits around the room in order to summon the Alemental. |modelnpc Fizzy Yellow Spirit##58253
.kill Fizzy Yellow Alemental##58017 |q 30078/3
|modelnpc Fizzy Yellow Spirit##58253+
.' Click here to move on to Eddy. |next "mudmug" |confirm
.' Clean out the brewery. |goto Valley of the Four Winds 36.1,68.9 <5 |noway |c |next "done"
step
label done
goto 36.0,69.1
.talk 56133
..turnin 30078
step
goto Valley of the Four Winds 36.2,68.3
.talk 61026
..accept 30117
step
goto Valley of the Four Winds 20.2,58.5
.talk 58843
.fpath Stoneplow
step
goto Valley of the Four Winds 19.9,56.9
.talk 56111
..turnin 29872
..accept 29981
step
goto Valley of the Four Winds 19.5,56.8
.talk 56720
..turnin 30117
..accept 29982
step
goto Valley of the Four Winds 19.7,55.9
.talk 62878
.home Stone Mug Tavern
step
goto Valley of the Four Winds 15.8,56.3
.talk 57123
.' Tell him Commander Loon Mai has issued evacuation orders
.' Evacuate the Greentil Family |q 29982/3
step
goto Valley of the Four Winds 15.5,54.9
.talk 57127
.' Tell her Commander Loon Mai has issued evacuation orders
.' Evacuate the Marlfur Family |q 29982/4
step
goto Valley of the Four Winds 12.8,55.7
.talk 57121
.' Tell him Commander Loon Mai has issued evacuation orders
.' Evacuate the Spadepaw Family |q 29982/2
step
goto Valley of the Four Winds 7.2,54.8
.talk 57120
.' Tell him Commander Loon Mai has issued evacuation orders
.' Kill the Ik'thallik Ambusher that spawns
.' Talk to Wei Blacksoil
.' Tell him let's go
.' Evacuate the Blacksoil Family |q 29982/1
step
goto 13.1,52.9
.from Ik'thik Swiftclaw##57195+, Ik'thik Wingblade##57196+
.' Kill 14 Ik'thik mantid |q 29981/1
step
goto Valley of the Four Winds 19.5,56.8
.talk 56720
..turnin 29982
..turnin 29981
..accept 29983
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29983
..accept 29984
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
.' Tell him you are ready for the trial of bamboo |invehicle
step
.' Follow the instructions and use the abilities on your hotbar to pass the trial.
.' Strike 3 stacks of Bamboo Reeds |q 29984/1 |tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29984
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..accept 29985
..accept 29986
step
goto Valley of the Four Winds 18.1,31.0
.talk 56111
..accept 29992
step
goto Valley of the Four Winds 16.0,32.1
.click Northern Fog Ward
.' Light the Nortern Fog Ward |q 29986/1
step
goto Valley of the Four Winds 14.8,36.8
.click Western Fog Ward
.' Light the Western Fog Ward |q 29986/2
step
goto Valley of the Four Winds 18.1,41.5
.click Southern Fog Ward
.' Light the Southern Fog Ward |q 29986/3
step
goto Valley of the Four Winds 18.0,37.0
.kill 12 Mist Incarnation##56740+ |q 29985/1
.click Jademoon
.get 18 Jademoon Leaf##76499+ |q 29992/1
step
goto Valley of the Four Winds 18.1,31.0
.talk 56111
..turnin 29992
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29985
..turnin 29986
..accept 29987
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
.' Tell him your fists are ready |invehicle
step
.' Follow the instructions and use the abilities on your hotbar to pass the trial.
.' Strike 4 stacks of Wooden Boards |q 29987/1 |tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29987
..accept 29988
step
goto Valley of the Four Winds 27.0,39.0
.click Hornbill Strider Egg
.get Hornbill Strider Egg##76516 |q 29988/3
step
goto Valley of the Four Winds 25.3,42.1
.click Whitefisher Crane Egg
.get 4 Whitefisher Crane Egg##76503 |q 29988/2
.click Emperor Tern Egg
.get 10 Emperor Tern Egg##76501+ |q 29988/1
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29988
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..accept 29989
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
.' Tell him you are ready for the trial of stone |invehicle
step
.' Follow the instructions and use the abilities on your hotbar to pass the trial.
.' Strike 5 stacks of Stone Blocks |q 29989/1 |tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
step
goto Valley of the Four Winds 18.3,31.2
.talk 56714
..turnin 29989
step
goto Valley of the Four Winds 18.1,31.0
.talk 56111
..accept 29990
step
.' _DO NOT_ turn in the quest _Training and Discipline_! You will need it later to move on to the next zone.
|confirm always
step
goto 16.1,82.1
.talk 63822
..accept 30183
step
goto Valley of the Four Winds 16.1,82.6
.talk 58422
..accept 30181
step
goto 12.4,76.5
.kill 15 Gorge Stalker##58432 |q 30183/1
.kill 15 Dustback Mushan##58424+ |q 30181/1
.' You can find more Mushan and Stalkers at [12.5,69.2]
|modelnpc Young Dustback Mushan##58427
step
goto 16.1,82.1
.talk 63822
..turnin 30183
..accept 30182
step
goto Valley of the Four Winds 16.1,82.6
.talk 58422
..turnin 30181
step
goto Valley of the Four Winds 16.0,82.5
.talk 58421
..accept 30184
step
goto 15.9,82.3
.talk 58434
..accept 32038
step
goto Valley of the Four Winds 25.8,75.0
.from Darkhide##58435
.get Darkhide's Head###79058 |q 30184/1
step
goto 25.7,77.2
.kill 10 Wilderland Stag##58489+|q 32038/1
step
goto 27.6,71.4
.kill 15 Sly Fox##58548+ |q 30182/1
|modelnpc Sly Pup##58549
step
goto Valley of the Four Winds 16.1,82.6
.talk 58421
..turnin 30184
step
goto 15.9,82.3
.talk 58434
..turnin 32038
step
goto 16.0,82.5
.talk 63822
..turnin 30182
step
goto 16.1,82.6
.talk 58422
..accept 30185
step
goto 19.1,77.4
.from Bulgeback Tortoise##58431
.get 5 Intact Tortoise Shell##79059 |q 30185/1
.' They will hide in their shells if you use stealth
.' You can find more of them at [20.6,72.0]
step
goto Valley of the Four Winds 19.9,75.7
.talk 58422
..turnin 30185
..accept 30186
step
.' Swim underwater and enter the cave here |goto Valley of the Four Winds 21.3,74.4 <5 |c
step
goto Valley of the Four Winds 24.5,74.6
.talk 58461
.' Try shaking Hemet
.' When the beast comes take it to [23.8,74.8]
.from Torjar's Bane##58439
.' Rescue Hemet Nesingwary Jr. |q 30186/1
step
.' Exit the cave and swim up |goto Valley of the Four Winds 21.3,74.4 <5 |c
step
goto Valley of the Four Winds 16.0,82.5
.talk 58421
..turnin 30186
step
goto Valley of the Four Winds 19.5,56.9
.talk 56720
..turnin 29990
step
goto 20.2,58.5 |n
.talk 58843
.' Ask him to send you to Ken-Ken |goto Krasarang Wilds 76.7,8.4 <5 |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\Krasarang Wilds (87)",[[
author support@zygorguides.com
image KrasarangWilds
next Zygor's Horde Leveling Guides\\Pandaria 85-90\\Kun-Lai Summit (87-88)
startlevel 87.3
dynamic on
step
goto Krasarang Wilds 76.2,7.1
.talk 56115
..turnin 29873
..accept 30079
step
goto 76.7,8.4
.talk 60232
.fpath Zhu's Watch
step
goto 75.8,7.6
.talk 57744
..accept 30080
.' Speak with Mei |q 30079/4
step
goto 75.8,7.0
.talk 62879
.home Wilds' Edge Inn
step
goto 76.5,8.2
.talk 57457
.' Speak with a Despondent Warden of Zhu |q 30079/1
step
goto 75.5,9.3
.talk 57825
.' Speak with Yun |q 30079/3
step
goto 77.5,8.7
.talk 57830
.' Speak with Sunni |q 30079/2
step
goto 76.2,7.1
.talk 56115
..turnin 30079
step
goto 81.3,6.8
.talk 57310
.' Find Yi-Mo |q 30080/1
..turnin 30080
..accept 30082
step
.clicknpc Yi-Mo Longbrow##57310
.' Tell Yi-Mo that his aunt is worried about him.
.' Then tell him to move his ass.
.' You will then be able to kick him towards Zhu's Watch. |goto Krasarang Wilds 76.7,7.7
.from Thunderbird##58111+ |tip You won't be able to move him if you're in combat.
.' Bring Yi-Mo to Zhu's Watch |q 30082/1
step
goto 75.8,7.6
.talk 57744
..turnin 30082
..accept 30091
step
goto 76.2,7.1
.talk 56115
..accept 30081
step
goto Krasarang Wilds 75.3,11.8
.from 12 Weeping Horror##57649+ |q 30091/1
.get 4 Salty Core##78880 |q 30081/1
.click Slick Murdfish
.get 4 Slick Mudfish##78877 |q 30081/2
.click Rain-Slick Honeycomb |tip They are found on the sides of tree trunks around this area
.get 4 Chunk of Honeycomb##78881+ |q 30081/3
.' You can find more of all of these items at [72.5,9.8]
step
goto Krasarang Wilds 75.8,7.6
.talk 57744
..turnin 30091
..accept 30083
..accept 30084
step
goto Krasarang Wilds 76.2,7.1
.talk 56115
..turnin 30081
..accept 30088
step
.' Enter the Cliffs of Despair. |goto 70.5,9.5 <5 |c
step
goto Valley of the Four Winds 73.9,56.4
.' Follow the path around to the right
.click Jar of Pigment |tip Guards will attack you when you click the jar
.get Jar of Pigment##78942 |q 30088/2
step
goto Valley of the Four Winds 75.5,56.9
.from Wildscale Saurok##58215, Wildscale Herbalist##58216
.kill 10 Wildscale Saurok |q 30083/1
step
.' Exit the cave |goto Valley of the Four Winds 77.3,57.4 <5 |c
step
goto Krasarang Wilds 71.2,17.5
.' Use the Flame of Zhu's Watch to light the Memorial Flame of Rin |use Flame of Zhu's Bastion##78928 |q 30084/3
step
goto Krasarang Wilds 72.7,18.2
.' Use the Flame of Zhu's Watch to light the Memorial Flame of Zhu |use Flame of Zhu's Bastion##78928 |q 30084/1
step
goto Krasarang Wilds 75.1,17.2
.' Use the Flame of Zhu's Watch to light the Memorial Flame of Po |use Flame of Zhu's Bastion##78928 |q 30084/2
step
goto Krasarang Wilds 74.3,16.1
.from Krasari Stalker##58221
.get 18 Huge Panther Fang##78941+ |q 30088/1
step
goto Krasarang Wilds 76.2,7.0
.talk 56115
..turnin 30088
..accept 30089
step
goto 76.3,8.9
'|talk Despondent Warden of Zhu##57457
.' Use Ken-Ken's mask on Despondent Wardens of Zhu. |use Ken-Ken's Mask##79021
.from Manifestation of Despair##58312+
.' Cure 8 Despondent Wardens of Zhu |q 30089/1
step
goto Krasarang Wilds 76.2,7.0
.talk 56115
..turnin 30089
..accept 30090
step
goto Krasarang Wilds 76.5,8.8
.kill 8 Essence of Despair##58409 |q 30090/1
.' Use Ken-Ken's Mask on Yi-Mo |use Ken-Ken's Mask##79057
.' Defeat the Quintessence of Despair
.' Cure Yi-Mo |q 30090/2
|modelnpc Yi-Mo Longbrow##58410
step
goto Krasarang Wilds 76.2,7.1
.talk 56115
..turnin 30090
step
goto Krasarang Wilds 75.8,7.6
.talk 57744
..turnin 30083
..turnin 30084
..accept 30133
step
goto Krasarang Wilds 68.8,22.3
.talk 58160
..accept 30179
step
goto Krasarang Wilds 67.3,22.6
.from Krasari Mogu##58377
.get 5 Mogu Poisoned Blade##79252 |q 30179/1
step
goto Krasarang Wilds 67.6,25.7
.talk 58779
..accept 30352
..accept 30353
step
goto Krasarang Wilds 62.5,25.4
.talk 59151
.' Take the supplies |q 30133/1
step
goto 66.7,27.1
.kill 12 Carp Hunter##58116+ |q 30352/1
.from Krasari Huntress##59116+
.get 12 Vial of Tiger Blood##+|q 30353/1
.' You can find more around [62.0,32.5].
step
goto Krasarang Wilds 67.6,25.7
.talk 58779
..turnin 30352
..accept 31262
..turnin 30353
..accept 31260
step
goto Krasarang Wilds 61.8,32.3
.from Chasheen##63767
.get Ancient Tiger's Blood##85774 |q 31260/1
step
goto Krasarang Wilds 62.5,20.5
.from Needlebeak##63796
.get The Needlebeak##85854 |q 31262/1
step
goto Krasarang Wilds 67.6,25.7
.talk 58779
..turnin 31262
..turnin 31260
step
goto Krasarang Wilds 60.1,25.0
.talk 56112
..turnin 29875
step
goto Krasarang Wilds 59.9,24.7
.talk 58113
..turnin 30179
step
goto Krasarang Wilds 59.9,24.8
.talk 58114
..accept 30124
step
goto Krasarang Wilds 60.1,25.0
.talk 56112
..accept 30123
step
goto 59.2,24.6
.talk 59046
.fpath Thunder Cleft
step
goto 60.9,24.9
.talk 58184
.home Thunder Cleft
step
goto Krasarang Wilds 62.4,21.7
.from Jungle Skitterer##58067
.get 5 Intact Skitterer Gland##78911 |q 30123/1
step
goto Krasarang Wilds 61.9,30.6
.kill Darnassian Outrider##58857 |q 30124/1
step
goto Krasarang Wilds 60.1,25.0
.talk 56112
..turnin 30123
step
goto Krasarang Wilds 59.9,24.8
.talk 58114
..turnin 30124
..accept 30127
step
goto Krasarang Wilds 59.9,24.7
.talk 58113
..accept 30130
step
goto Krasarang Wilds 60.1,25.0
.talk 56112
..accept 30129
step
.' Follow the path up. |goto 57.2,37.4 <5 |c
step
goto Krasarang Wilds 55.5,34.5
.from Dojani Dominator##58165 |tip Circle around to the top of the hill
.get Dojani Orders##78917 |q 30129/1
step
.' Next to you
.talk 58206
..turnin 30129
..accept 30128
step
goto 54.8,34.1 |n
.' Follow the path here |goto 54.8,34.1 |noway |c
step
.' Cross the bridge |goto Krasarang Wilds 54.6,33.0 <5 |c
step
goto Krasarang Wilds 52.0,32.7
.talk 55597
.' Attempt to free Na Lek from his prison
.from Sleeping Guardian##58419w
.click Water of Youth
.get The Water of Youth##78934 |q 30128/1
step
goto 55.4,39.0
.kill 4 Dojani Enforcer##65626 |q 30127/3
.kill 6 Dojani Reclaimer##58117 |q 30127/1
.kill 8 Dojani Surveyor##58068 |q 30127/2
.click Imperial Lotus
.get 20 Imperial Lotus Leaves |q 30130/1
step
goto 59.9,24.8
.talk 58114
..turnin 30127
step
goto 59.9,24.7
.talk 58113
..turnin 30128
..turnin 30130
..accept 30131
step
goto 59.9,24.7 |n
.talk 58113
.' Tell him to stand by his wife's side |q 30131/1
step
goto 60.4,25.6
.talk 58113
..turnin 30131
..accept 30132
step
goto 44.2,42.9
.talk 58547
..turnin 30133
..accept 30269
step
goto Krasarang Wilds 43.8,42.8
.clicknpc Sunwalker Scout##59136
.get Sunwalker Scout's Report##79745 |q 30132/1
step
goto Krasarang Wilds 44.2,42.9
.talk 58547
.' Tell him you're ready
.from Riverblade Bloodletter##58981+
.' When Koro falls click him to help him up.
.' Accompany Koro to Crane Wing Refuge |q 30269/1
.from Riverblade Bloodletter##58981+
step
goto Krasarang Wilds 40.6,33.7
.talk 59138
..turnin 30269
..accept 30270
..accept 30694
step
goto Krasarang Wilds 40.5,34.7
.talk 58609
..accept 30268
step
goto Krasarang Wilds 45.2,36.5
.kill 8 Riverblade Pathstalker##58858+ |q 30270/1
.click Riverblade Spike Trap
.' Poke 10 traps |q 30694/1
step
goto Krasarang Wilds 39.8,37.0
.from Murkscale Striker##58631+
.get 6 Murkscale Head##79199+ |q 30268/1
step
goto Krasarang Wilds 40.5,34.7
.talk 58609
..turnin 30268
step
goto Krasarang Wilds 40.6,33.7
.talk 59138
..turnin 30270
..turnin 30694
..accept 30695
..accept 30272
step
goto 40.6,33.7
.talk 59189
..accept 30271
step
goto 40.5,34.0
.talk 63778
..accept 31255
step
goto 37.9,54.3
.from Maw of Despair##59315
.' Cleanse the West Pagoda |q 30695/1
step
goto 43.1,54.2
.from Maw of Despair##59237
.' Cleanse the East Pagoda |q 30695/2
step
goto 40.5,47.1
.kill 18 Haunt of Despair##59236+ |q 30272/1
.' Kill Haunts of Despair in front of Hopeless Monks and Hopeless Acolytes
.' Inspire 10 Hopeless Crane Wing Defenders |q 30271/1
step
.' Next to you
.talk 59608
..turnin 30695
..turnin 30272
..turnin 30271
..accept 30273
step
.' Enter the building |goto Krasarang Wilds 40.4,52.1 <5 |c
step
.' Go downstairs |goto Krasarang Wilds 40.4,55.8 <5 |c
step
goto 40.4,54.5
.talk 59653
.' Reach out and touch Chi-Ji
.kill Sha of Despair##59651 |q 30273/1 |tip Make sure to aoe down the adds he spawns. They heal you when they die, if you're close enough to them.
step
.' Leave the building |goto Krasarang Wilds 40.4,55.8 <5 |c
step
goto Krasarang Wilds 40.1,49.0
.talk 59719
..turnin 30273
step
goto Krasarang Wilds 29.0,50.3
.talk 59047
.fpath Dawnchaser Retreat
step
goto Krasarang Wilds 28.7,50.9
.talk 58114
..turnin 30132
..accept 30163
..accept 30229
step
goto Krasarang Wilds 28.8,50.6
.talk 56112
..accept 30230
step
#include "Marista_Hub"
step
goto 19.8,55.9
.click The Commander's Cache |tip Upstairs in the inn.
..turnin 30628
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\Kun-Lai Summit (87-88)",[[
author support@zygorguides.com
image KunLai
next Zygor's Horde Leveling Guides\\Pandaria 85-90\\Townlong Steppes (88-89)
startlevel 87.8
dynamic on
step
goto Valley of the Four Winds 70.1,23.5
.talk 62738
.' Speak with the Highroad Grummle |q 31255/1
|only if havequest(31255)
step
goto The Veiled Stair 56.7,75.7
.talk 61759
.fpath Tavern in the Mists
step
goto The Veiled Stair 53.5,65.7
.talk 63484
..accept 31286
..accept 31287
step
'Enter the cave |goto 55.2,55.3 <5 |c
step
goto 51.1,43.4
.kill Leechfingers##63494 |q 31287/1
'Go left and up around
step
'Before you leave this cave make sure you get 7 Black Market Merchandise
.click Smuggled Brewfather Statue
.click Cursed Hozen Totem
.click Smuggled Cannon
.click Priceless Mogu Artifact
.click Evil Monkey Idol
.get 7 Black Market Merchandise##85891+ |q 31286/1
step
'Exit the cave |goto 55.2,55.3 <5 |c
step
goto 53.5,65.7
.talk 63484
..turnin 31286
..turnin 31287
step
goto 51.9,43.8
.talk 63367
..accept 31285
step
goto 52.1,43.3
.clicknpc The Spring Drifter##63517
.' Survive a ride on the Spring Drifter |q 31285/1
step
goto Kun-Lai Summit 72.7,93.0
.talk 63367
..turnin 31285
step
goto 72.5,94.2
.talk 61474
.fpath Binan Village
step
goto 72.3,91.9
.talk 59073
..turnin 31255 |only if havequest(31255)
..accept 30457
step
goto 72.7,92.3
.talk 62871
.home Binan Brew & Stew
step
goto 71.6,92.9
.talk 59077
..accept 30460
step
goto 70.7,90.4
.talk 59076
..accept 30459
step
goto 69.2,88.9
.from Bataari Yaungol##59147+, Bataari Flamecaller##59021+
.' Kill 10 Bataari Tribe Members |q 30457/1
.kill Bataari Fire-Warrior##59083 |q 30457/2
.click Arrow of Commander Hsieh
.get 12 Arrow of Commander Hsieh##79806 |q 30459/1
.' Use Dit Da Jow on Injured Binan Warriors |use Dit Da Jow##79819
.' Heal 8 Injured Binan Warrior |q 30460/1
step
goto 70.7,90.4
.talk 59076
..turnin 30459
step
goto 72.3,91.9
.talk 59073
..turnin 30457
step
goto 71.6,92.9
.talk 59077
..turnin 30460
..accept 30511
step
goto 71.6,93.1
.talk 59442
..turnin 30511
..accept 30513
step
goto 74.8,88.8
.talk 59263
..accept 30469
..accept 30467
step
goto 74.8,88.7
.talk 59273
..accept 30468
step
goto 75.1,88.0
.talk 60973
..accept 30496
..accept 30967
step
goto Kun-Lai Summit 74.7,76.9
.talk 59272
..turnin 30467
..accept 30834
step
goto 74.4,78.3
.from Orachi##59180
.get 1 Stolen Inkgill Ritual Staff##81385 |q 30496/1
.from Enraged Priest##59166+, Enraged Inkgill Blacksmith##61130+, Enraged Enforcer##60995+, Enraged Tideweaver##59181+, Enraged Spearman##59165+, Enraged Cavalier##61537+
.' Kill 15 Enraged Jinyu |q 30468/1
.talk 61566
.' Tell them there is still hope
.' 6 Inkgill Dissenters Escaped |q 30967/1
.click Untainted Supplies
.get 8 Stolen Supplies##79880 |q 30469/1
step
goto 75.2,88.3
.talk 60973
..turnin 30496
..turnin 30967
step
goto 74.8,88.8
' Reunite Wu-Peng and Merchant Shi by standing here |q 30834/1
step
goto 74.8,88.8
.talk 59263
..turnin 30834
..turnin 30469
step
goto 74.8,88.7
.talk 59273
..turnin 30468
step
goto 75.2,88.3
.talk 60973
..accept 30480
step
goto 75.2,88.3
.talk 60973
.' Tell him to Begin the Ritual |q 30480/1
.' Follow Waterspeaker Gorai
.' Lay Dead Inkgill to Rest |q 30480/2
.from Explosive Hatred##61530
.' Ritual Complete |q 30480/3
step
goto 74.9,88.6
.talk 60973
..turnin 30480
..accept 30828
step
goto 72.0,85.6
.click Pool of Corruption
.from Boiling Rage##59170+
.' Cleanse 6 Pools of Corruption |q 30828/1
step
'Next to you
.talk 61065
..turnin 30828
..accept 30855
step
goto 71.3,82.5
.kill Shai Hu##61069 |q 30855/1 |tip In order to kill Shai Hu you must bring Explosive Hatred from around the area into the bubble he has around him, kill them and when they die, they will explode and take some of his health.
step
goto 74.9,88.6
.talk 60973
..turnin 30855
step
goto 63.7,86.7
.talk 63751
..accept 31393
.' Tell him you're from the Horde. |q 30513/1
step
goto 61.2,82.2
.talk 63535
.' Tell him you're from the Horde. |q 30513/2
step
goto 61.2,82.2
.talk 63535
..turnin 30513
..accept 30515
step
goto 58.3,84.1
.click Yaungol Banner
.kill Ur-Bataar##59483 |q 30515/1
step
goto 61.6,80.2
.talk 63535
..turnin 30515
step
goto 62.3,79.6
.talk 63535
..accept 30620
step
goto 62.5,79.4
.talk 63751
..accept 30570
step
goto 62.8,79.9
.talk 59448
..accept 31251
step
goto 63.0,80.2
.talk 59442
..accept 31256
step
goto 62.7,80.7
.talk 59449
..accept 30594
step
goto 62.7,80.5
.talk 62883
.home Eastwind Rest
step
goto 62.4,80.7
.talk 61745
.fpath Eastwind Rest
step
goto 62.4,80.7
.talk 61745
.fpath Eastwind Rest
step
goto 65.7,81.0
.clicknpc Wild Plains Yak##59610 |tip Get 3 of these before going back to town
.from Highlands Mushan##59670+, Highlands Calf##59671+, Summit Bonestripper##59672+
.get 160 Kun Lai-Meaty Bits##80245 |q 31251/1
step
goto 62.8,79.9
.' Round up 3 Yaks |q 31256/1 |tip This won't complete unless you have 3 stacks
step
goto 62.8,79.9
.talk 59448
..turnin 31251
step
goto 63.0,80.2
.talk 59442
..turnin 31256
step
goto 60.2,85.8
.talk 59573
..turnin 30570
..accept 30571
step
goto 60.2,85.9
.talk 59636
..accept 30581
step
goto 58.6,89.5
.from Ordo Overseer##59580
.' Free 12 Farmstead Slaves |q 30571/1
.from Wascally Wirmen##59655
.click Root Vegetable
.get 12 Root Vegetable##80227 |q 30581/1
step
goto 60.0,88.4
.click Cast Iron Pot
.get Cast Iron Pot##80230 |q 30581/2
step
goto 60.2,85.9
.talk 59636
..turnin 30581
step
goto 60.2,85.8
.talk 59573
..turnin 30571
..accept 31253
step
goto 62.5,79.4
.talk 63751
..turnin 31253
step
goto 59.6,78.2
.talk 59821
..accept 30595
step
goto 58.1,70.9
.kill Mogujia Soul-Caller##59797 |q 30620/1
step
goto 58.8,74.3
.from Terracotta Guardian##59773+, Terracotta Warrior##59758+
.' Kill 14 Terracotta Guardians or Warriors |q 30594/1
.click Mogu Relic
.get 12 Mogu Relic##80294+ |q 30595/1
step
goto 59.6,78.3
.talk 59821
..turnin 30595
step
goto 62.4,79.6
.talk 63535
..turnin 30620
..accept 30655
step
goto 62.8,79.9
.talk 59448
..accept 30656
step
goto 62.7,80.7
.talk 59449
..turnin 30594
step
goto 63.0,80.2
.talk 59442
..accept 30657
step
goto 51.2,79.3
.clicknpc Explosives Barrel##60095
.collect 1 Explosives Barrel##80528
step
goto 51.0,79.5
'Use your Explosives Barrel |use Explosives Barrel##80528
.' Eastern Oil Rig Destroyed |q 30656/1
step
goto 51.2,79.3
.clicknpc Explosives Barrel##60095
.collect 1 Explosives Barrel##80528
step
goto 50.6,78.5
.kill Musaan the Blazecaster##59969 |q 30657/1
step
goto 49.3,78.4
.kill Harala the Firespeaker##60030 |q 30657/3
step
goto 49.1,80.2
.kill Pao-kun the Pyromancer##60031 |q 30657/4 |tip Rescue prisoners along the way
step
goto 49.7,81.3
'Use your Explosives Barrel |use Explosives Barrel##80528
.' Southern Oil Rig Destroyed |q 30656/2
step
goto 47.6,80.1
.clicknpc Explosives Barrel##60095
.collect 1 Explosives Barrel##80528
step
goto 47.7,79.9
.kill Akonu the Embercaller##60032 |q 30657/2
stepw
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 30657
..accept 30661
step
goto 47.8,81.5
'Use your Explosives Barrel |use Explosives Barrel##80528
.' Western Oil Rig Destroyed |q 30656/3
step
goto 48.4,76.7
'Go around the mountain to the right. He's in a cave at ground level.
.kill Ordo Warbringer##60127 |q 30661/1 |tip When he becomes invulnerable, kill the adds he spawns to break his shield.
step
goto 49.8,78.6
.clicknpc Pandaren Prisoner##60038
.' Rescue 8 Pandaren Prisoners |q 30655/1
step
goto 62.8,79.9
.talk 59448
..turnin 30656
step
goto 62.5,80.4
.talk 59442
..turnin 306d55
..turnin 30661
..accept 31453
step
goto 62.3,79.6
.talk 63535
..accept 31695
step
goto 62.5,79.4
.talk 63751
.accept 31457
step
goto 62.7,80.7
.talk 59449
..accept 31459
step
goto 71.4,69.8
.talk 59353
..turnin 31457
..accept 30488
..accept 30489
step
goto Kun-Lai Summit/9 64.3,60.4
'Go left and up around
'Kill the Needle Sprites attacking Muskpaw Jr.
.talk 61693
..turnin 30488
..accept 30491
step
goto Kun-Lai Summit/9 64.3,60.4
.clicknpc Tuffi##61874
.' Ride Tuffi |invehicle
step
goto Kun-Lai Summit 70.0,72.8
'Click the Quest Discovered box that displays on the right side of the screen under your minimap
..accept 30587
step
goto 69.7,73.0
.from 9 Burilgi Despoiler##59335 |q 30587/1
.collect 1 Muskpaw's Keepsake##80241
.' Click the Muskpaw's Keepsake in your bags |use Muskpaw's Keepsake##80241
..accept 30582
step
goto 71.3,72.9
.clicknpc Escaped Yak##59319 |invehicle
.' While on the Yak, run to this spot [71.3,69.2]
.' Wash 6 Escaped Yaks |q 30491/1
step
goto 71.4,69.3
.talk 59354
..turnin 30491
step
goto 71.8,73.2
.from Needle Sprite##55593+
.get 100 Pungent Sprite Needles |q 30489/1
step
goto 71.6,70.0
.talk 59353
..turnin 30489
..turnin 30582
..accept 30804
..turnin 30587
step
goto 71.4,69.3
.talk 59354
..accept 30492
step
goto 67.8,74.1
.kill The Fearmaster##59656 |q 30804/1
step
goto 71.0,69.1
.talk 59353
..turnin 30804
step
goto 64.8,61.6
'Bring the Yak Herd to Lucky Eightcoins |q 30492/1
step
goto 64.7,61.8
.talk 59371
..turnin 30492
..accept 30808
step
goto 65.5,60.8
.talk 59402
..accept 30614
step
goto 64.9,60.5
.talk 59597
..accept 30616
step
goto 63.4,68.5
.click Yaungol Oil Derrick
.get Filled Oil Vial##80311 |q 30614/1
step
goto 62.2,68.8
.from Ruqin Elder##59826+, Ruqin Infantry##59790+, Ruqin Outrider##59538+
.' Kill 8 Ruqin Yaungols |q 30616/1
.click Stolen Bag of Luckydos
.get 8 Stolen Luckydos##81293 |q 30808/1
step
goto 64.7,61.8
.talk 59371
..turnin 30808
step
goto 65.5,60.8
.talk 59402
..turnin 30614
step
goto 64.9,60.5
.talk 59597
..turnin 30616
..accept 30617
step
goto 62.9,63.0
'All along this road
.click Lucky Burlap Incense
.' Light 8 Lucky Burlap Incense |q 30617/1
step
goto 58.1,61.5
.talk 59701
..turnin 30617
step
goto 57.7,59.7
.talk 61504
.fpath One Keg
step
goto 57.3,61.7
.talk 61847
..turnin 31459
..accept 30999
step
goto 57.2,61.2
.talk 59696
..turnin 30999
..accept 30601
step
goto 57.7,61.8
.talk 59695
..accept 30618
step
goto 57.3,60.2
.talk 59716
..accept 30621
step
goto 57.4,60.0
.talk 59688
.home The Lucky Traveller
step
'Follow this path |goto 58.5,57.7 <5 |c
step
goto Kun-Lai Summit/8 48.8,57.8
'While you are in this cave do the following:
.from Mischievous Snow Sprite##59693
.get Lucky Virmen's Foot##80316 |q 30621/1
.get Lucky Four Winds Clover##90318 |q 30621/3
.get Lucky "Gold" Coin##80319 |q 30621/4
.get Lucky Yak Shoe##80317 |q 30621/2
.' Use the Fire Lotus Incense on Hiding Guides.
.' Inspire 3 Hiding Guides |q 30601/1
.click Stolen Supplies
.get 12 Stolen Supplies##80315 |q 30618/1
step
goto Kun-Lai Summit 57.3,60.2
.talk 59716
..turnin 30621
step
goto 57.2,61.2
.talk 59696
..turnin 30601
step
goto 57.7,61.7
.talk 59695
..turnin 30618
step
goto 57.2,61.2
.talk 59696
..accept 30487
step
goto 57.3,61.6
.clicknpc Ji-Lu's Cart##60094 |q 30487/1
step
'Use the abilities on your hotbar to fight off Silverback Attackers and the Rampaging Yeti
.' Survive the mountain pass |q 30487/2
|modelnpc Silverback Attacker##60138
|modelnpc Rampaging Yeti##59694
step
goto 48.1,49.0
.talk 60175
..turnin 30487
..accept 30683
step
goto 50.0,49.3
.click Abandoned Wreckage
.' Search the Abandoned Wreckage for Supplies |q 30683/1
.kill General Sho Lien##60769 |q 30683/2
step
goto 48.1,49.0
.talk 60175
..turnin 30683
.' You will only be able to accept one of these quests
..accept 30684 |or
..accept 31306 |or
step
'Follow the path up |goto 46.9,47.8 <5 |c
step
goto 44.8,49.3
.click Shrine of the Seeker's Body |q 30684/1 |tip Make sure you avoid the falling snow.
|only if havequest(30684)
step
goto 42.7,50.0
.click Shrine of the Seeker's Breath |q 30684/2 |tip Make sure you avoid the freezing winds; they look like tornados.
|only if havequest(30684)
step
goto 43.2,52.0
.click Shrine of the Seeker's Heart |q 30684/3
|only if havequest(30684)
step
goto 44.8,49.3
.click Shrine of the Seeker's Body |q 31306/1 |tip Make sure you avoid the falling snow.
|only if havequest(31306)
step
goto 42.7,50.0
.click Shrine of the Seeker's Breath |q 31306/2 |tip Make sure you avoid the freezing winds; they look like tornados.
|only if havequest(31306)
step
goto 43.2,52.0
.click Shrine of the Seeker's Heart |q 31306/3
|only if havequest(31306)
step
goto 43.8,51.1
.talk 60795
..turnin 30684 |or
..turnin 31306 |or
..accept 30829
step
goto 43.8,51.1
.talk 60795
.' Tell Cho to go ahead with the binding.
.' Defend Loremaster Cho while he does the binding.
.from Reclaimer Zuan##61305
..' Tongue of Ba-Shon Bound |q 30829/1
step
goto 43.8,51.1
.talk 60795
..turnin 30829
..accept 30795
step
goto 43.7,51.3 |n
.talk 60796
.' Tell Mishi you are ready to leave. |goto 57.8,48.8 <10 |noway |c
step
'Use The Tongue of Ba-Shon |q 30795/1 |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30795
..accept 30796
step
goto 57.1,47.9
.click Curious Text
..accept 30797
step
goto 57.1,47.9
.click Curious Text
.get Torn Page##81892 |q 30797/1
step
goto 56.7,47.9
.kill 5 Tormented Spirits##60825 |q 30796/1
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30797
..accept 30799
..turnin 30796
step
'Enter the Tomb of Shadows |goto 55.9,46.1 <5 |c
step
goto 57.2,43.5
.click Shen Dynasty Tablet
.get Shen Dynasty Rubbing##82393 |q 30799/1
step
goto 57.1,45.0
.click Qiang Dynasty Rubbing
.get Qiang Dynasty Rubbing##82394 |q 30799/3
step
goto 56.3,43.4
.click Wai Dynasty Tablet
.get Wai Dynasty Rubbing##82395 |q 30799/2
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30799
..accept 30798
step
'Exit the Tomb of Shadows |goto 55.9,46.1 <5 |c
step
'Follow the path up |goto 55.2,47.6 <5 |c
step
'Enter the Tomb of Secrets |goto 53.3,49.3 <5 |c
step
goto 52.9,51.5
.from Nakk'rakas##60572 |tip When he casts his shield, kill the Imperial Guards until he is vulnerable again.
.' Interrupt the Spiritbinding Ritual |q 30798/1
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30798
..accept 30800
step
'Exit the Tomb of Secrets |goto 53.3,49.3 <5 |c
step
goto Kun-Lai Summit/17 58.9,72.6
'Follow the path down
.click King's Coffer
.get Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1
step
goto Kun-Lai Summit/17 34.1,62.4
.click Top Fragment of Lei Shen's Tablet
.' Repair the Tablet of Thunder |q 30800/2
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30800
..accept 30801
step
goto Kun-Lai Summit/17 34.1,62.4
.click Tablet of Thunder
.' Read the Tablet of Thunder |q 30801/1
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30801
..accept 30802
step
goto Kun-Lai Summit/17 52.1,70.0
.from Zandalari Warrior##61842
.get Blood-Revealed Map##81890 |q 30802/1
step
'Use The Tongue of Ba-Shon |use The Tongue of Ba-Sho##81712
.talk 61297
..turnin 30802
..accept 30935
step
goto Kun-Lai Summit 53.0,46.4
.talk 61382
.' Tell Mishi you are ready to leave. |q 30935/1
step
'Follow the path up. |goto 66.9,59.1 <5 |c
step
goto 66.3,50.7
.talk 61118
.fpath Temple of the White Tiger
step
goto 68.7,43.0
.talk 64542
..turnin 31393
..accept 31395
step
goto 68.9,42.8
'Talk to Xuen |q 31395/1 |modelnpc Xuen##64528
.from Spirit of Violence##64656
.' Pass the First Test |q 31395/2
.from Spirit of Anger##64684
.' Pass the Second Test |q 31395/3
.from Spirit of Hatred##64742 |tip The Whirlwind does a lot of damage.
.' Pass the Third Test |q 31395/4
step
goto 68.7,43.0
.talk 64542
..turnin 31395
..accept 31511
step
'Enter the cave here. |goto 63.9,49.8 <5 |c
|tip The cave is down the mountain below you. You can either go back down the path, or risk jumping off the side of the mountain to get to it.
step
goto 63.3,40.2
.talk 61380
.' Tell him you are ready to leave. |q 30935/2
step
goto 62.4,30.1
.talk 61511
.fpath Zouchin Village
step
goto 62.3,29.1
.talk 61371
..turnin 30935
..accept 30944
step
goto 62.5,28.8
.talk 60605
.home North Wind Tavern
step
goto 63.2,29.3
.talk 60436
..accept 30816
step
goto 63.3,28.6
.talk 61495
..accept 30943
step
goto 63.7,30.7
.talk 61503
..accept 30942
step
goto 63.4,30.7
.talk 61496
..accept 30945
step
goto 64.2,30.9
.talk 61417
.' Relieve 5 Exhausted Defenders |q 30944/1
.kill 4 Amani Skirmisher##66165 |q 30942/1
step
goto 71.0,27.2
.from Zandalari Skullbreaker##60580+
.get 8 Blood-Stained Blade##82299 |q 30945/1
.kill 4 Gurubashi Hexxer##64202+ |q 30942/2
.kill 3 Drakkari Frostweaver##66707+ |q 30942/3
.click Volatile Blooms
.get 50 Handful of Volatile Blooms##82298 |q 30943/1
step
'Next to you
.talk 61534
..turnin 30942
step
goto 63.4,30.7
.talk 61496
..turnin 30945
step
goto 63.2,28.6
.talk 61495
..turnin 30943
step
goto 62.3,29.1
.talk 61371
..turnin 30944
..accept 31011
step
goto 63.5,30.0
.kill 10 Amani Berserker##62299+ |q 31011/1
.kill 5 Amani Behemoth##63516+ |q 31011/2
.clicknpc Blasting Barrel##62591 |tip The barrels will roll and kill the Behemoths.
.' The Blasting Barrels and Behemoths can be found around [61.2,29.1]
.kill 3 Gurubashi Bloodrider##62362+ |q 31011/3
.' The Gurubashi Bloodriders can be found at [64.4,29.0]
step
goto 62.3,29.1
.talk 63750
..turnin 31011
..accept 30946
step
goto 62.4,28.9
.talk 62629 |tip He is upstairs
.' Ask him where the Thunder King's Remains have been taken.
.' Zandalari Prisoner Questioned |q 30946/1
step
goto 62.3,29.1
.talk 63750
..turnin 30946
..accept 31228
step
goto 60.6,21.3
.talk 60694
..turnin 30816
..accept 30794
step
goto 61.0,21.5
.click Sage Liao's Belongings
.collect 1 Pandaren Healing Draught##81177
step
goto 60.6,21.3
.' Use Pandaren Healing Draught on Sage Liao |use Pandaren Healing Draught##81177
.' Sage Liao Healed |q 30794/1
step
goto 60.6,21.3
.talk 60785
..turnin 30794
..accept 30805
..accept 30806
..accept 30807
step
goto 59.2,27.2
.click Waterfall-Polished Stone
.get 3 Waterfall-Polished Stone##81269+ |q 30807/1
step
goto 62.0,23.3
.kill Captain Ripflesh##60767 |q 30805/1
step
goto 63.2,21.5
.from Blackmane Brigand##60560+, Blackmane Pillager##60846+, Blackmane Tracker##60434+
.' Kill 6 Blackmane Merceraries |q 30805/2
.click South Sea Booty Barrel
.get 8 Stolen Pandaren Spices##81261 |q 30806/2
.from Azure Prickly Crawler##60437+
.get Opalescent Blue Crab Shell##80907 |q 30806/1
.' More crabs can be found around [60.5,22.5]
step
goto 60.6,21.3
.talk 60785
..turnin 30805
..turnin 30806
..turnin 30807
..accept 30819
step
goto 63.2,29.4
.talk 60436
..turnin 30819
..accept 30820
step
goto 66.9,33.3
.click Incense of Life
.' Light the Incense of Life |q 30820/1
step
goto 67.0,33.3
.talk 60757
..turnin 30820
step
goto 62.3,29.4
.talk 61382
.' Tell him you're ready to leave. |goto 76.5,19.4 |noway |c
step
goto 76.4,9.0
.kill Prophet Khar'zul##61541 |q 31228/2 |tip Stay on top of the Altar when he causes the floor to turn purple. Make sure to interrupt the Crow Storm AoE attack.
step
goto 75.4,11.8
.from Zandalari Headsplitter##64643+, Zandalari Witch Doctor##64631+, Zandalari Worshipper##64642+
.' Kill 12 Zandalari Forces |q 31228/3
step
goto 62.3,29.0
.talk 63784
..turnin 31228
step
goto 58.1,61.5
.talk 59701
..accept 30592
step
'Wait for the Caravan to arrive
|confirm
step
'Protect the caravan and escort them to this point |goto 53.0,66.6 <5 |n
.' Escort grummles to the Burlap Waystation |q 30592/1
|modelnpc Broketooth Spear-haver##59443
|modelnpc Broketooth Sneaker##60195
|modelnpc Broketooth Tosser##59416
step
goto 51.7,67.8
.talk 59703
..turnin 30592
..accept 30602
step
goto 49.1,70.5
'Talk to Brother Rabbitsfoot |q 30602/1 |modelnpc Brother Rabbitsfoot##59806
..accept 30603
step
goto 48.0,73.2
.from Mo Mo##59805
.get Rabbitsfoot's Luckydo##81137 |q 30603/1
step
goto Kun-Lai Summit 52.0,67.2
.talk 59452
..turnin 30602
..turnin 30603
..accept 30599
..accept 30600
..accept 30604
step
goto 56.8,71.1
.from Tak Tak##59958
.collect 1 Corpse of Tak Tak##80430
step
goto 56.8,71.1
.click Tak Tak's Altar
.' Destroy Tak Tak's Altar |q 30599/3
step
goto 52.3,71.3
.from Hateful Ko Ko##59430
.collect 1 Corpse of Ko Ko##80429
step
goto 52.3,71.5
.click Ko Ko's Altar
.' Destroy Ko Ko's Altar |q 30599/2
step
goto Kun-Lai Summit/12 49.2,39.0
.from Dak Dak##59424
.collect 1 Corpse Of Dak Dak##80428
step
goto 49.2,39.0
.click Dak Dak's Altar
.' Destroy Dak Dak's Altar |q 30599/1
step
goto Kun-Lai Summit 52.7,70.5
.clicknpc Dead Packer##59896
.get 8 Grummlepack##80307+ |q 30600/1
.kill 6 Broketooth Tosser##59416+ |q 30604/2
.kill 8 Broketooth Charger##59414+ |q 30604/1
step
goto Kun-Lai Summit 52.0,67.3
.talk 59452
..turnin 30599
..turnin 30600
..accept 30605
..turnin 30604
step
goto 50.5,64.2
.clicknpc Mok Mok##60008
.' Rescue the Brother Yakshoe |q 30605/1
step
goto 50.6,64.1
.talk 59894
..turnin 30605
..accept 30607
..accept 30608
..accept 30606
step
goto Kun-Lai Summit/10 36.7,14.4
.from Cho Cho the Wicked##60090
.get Yeti Shackle Key##80535 |q 30607/1
step
'Before you release Old Poot Poot do the following inside the cave:
.from Knucklethump Jibstabber##59412+, Knucklethump Smasher##59410+
.' Kill 8 Silverback Hozen |q 30606/1
.click Grummle Cage
.from Prisoner Bindings##60027
.' Rescue 5 Imprisoned Grummle |q 30608/1
step
goto 49.1,59.4
.click Ball and Chain
.' Release Old Poot Poot |q 30607/2 |modelnpc Old Poot Poot##59421
step
goto Kun-Lai Summit 52.0,67.2
.talk 59894
..turnin 30607
..turnin 30608
..accept 30610
step
goto Kun-Lai Summit 52.0,67.2
.talk 59452
..turnin 30606
..accept 30611
step
goto 46.3,63.9
.kill 4 Cagemaster##60169+ |q 30611/1 |tip They are located around the huge wooden dome.
.click Grummle Gear
step
goto 45.9,64.1
.talk 59894
..turnin 30610
step
goto 45.9,64.1
.talk 59452
..turnin 30611
..accept 30612
step
goto 46.0,63.1
.' Wait for Tassle to enrage Chomp Chomp |q 30612/1 |modelnpc Chomp Chomp##60217
.kill The Ook of Dook##60188 |q 30612/2 |tip When he throws bananas just dodge them until he runs back to you.
step
goto Kun-Lai Summit 52.0,67.3
.talk 59452
.turnin 30612
step
goto 51.7,67.8
.talk 59703
..accept 30692
step
'Wait for the Caravan to arrive
|confirm
step
'Protect the caravan and escort them to this point |goto 43.9,68.9 <5 |n
.' Escort grummles to the Kota Basecamp |q 30692/1
|modelnpc Knucklethump Snatcher##59682
step
goto 42.8,69.6
.talk 60416
.fpath Kota Basecamp
step
goto 42.7,69.8
.talk 60420
.home Kota Basecamp
step
goto 42.3,69.8
.talk 60596
..accept 30742
..accept 30743
step
goto 42.4,69.7
.talk 60503
..accept 30744
..accept 30745
step
goto 42.5,68.9
.talk 59755
..turnin 30692
step
goto 42.8,69.3
.talk 59452
..turnin 30612
step
'Follow the path marked by red flags up |goto 42.0,70.0 <5 |c
step
'Enter the cave |goto 37.5,77.9 <5 |c
step
goto 35.4,77.0
.kill 8 Kafa-Crazed Yeti##60564+ |q 30745/1
.click Kafa'Kota Berries
.get 100 Kafa'kota Berry##81054 |q 30744/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 30744
..accept 30746
step
'Exit the cave |goto 37.5,77.9 <5 |c
step
goto 38.5,77.9
.kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1
.click Kafa'goot "Deposit"
.' 15 Kafa'goot "Deposits" Marked |q 30743/1
.' You can find more "Deposits" and Goats around [39.8,77.1]
step
'Enter the cave |goto 37.2,75.9 |c
step
goto 36.9,76.2
.talk 60679
..turnin 30746
step
goto 42.5,69.4
.talk 60596
..turnin 30742
..turnin 30743
step
goto 42.5,69.4
.talk 60503
..turnin 30745
step
goto 42.5,69.4
.talk 60679
..accept 30747
step
goto 42.6,69.2
.talk 60587
.' Unscrew the flask and offer it to her |invehicle |c
step
goto 49.5,68.5
'Use the abilities on your hotbar to kill Hozen
.from Silverback Piker##60746+, Ookin Marauder##60753+, Broketooth Leaper##60742+, Ookin Shaman##60752+, Silverback Smasher##60749+, Broketooth Ravager##60743+
.' Kill 100 Burlap Trail Hozen |q 30747/1
step
goto 42.5,69.3
'Click the Leave Vehicle button |outvehicle |c
.talk 60679
..turnin 30747
step
goto 56.1,91.6
.talk 64853
.' Tell him there is only one way to find out. |q 31511/1
step
goto Kun-Lai Summit/0 55.5,92.4 |n
.' Enter the Vale of Eternal Blossoms through the gate here. |goto Kun-Lai Summit/0 55.5,92.4 |noway |c
step
goto Shrine of Two Moons/1 69.2,49.0
.talk 62996
..turnin 31511
step
goto Kun-Lai Summit 44.5,89.9
.' Click the double doors and go through.
.talk 60161
..turnin 31453
..accept 30670
..accept 30665
step
goto 43.9,89.6
.talk 61473 |tip Go up the stairs.
.fpath Shado-Pan Fallback
step
goto 42.9,88.3
.talk 60178
..accept 30682
.' Rescue Sya Zhong |q 30682/4
step
goto 41.0,87.0
.talk 60189
.' Tell him "Let's go".
.' Rescue Ya Firebough |q 30682/2
step
goto 42.8,85.7
.talk 60190
.' Ask her to "escort" you to safety.
.' Rescue Old Lady Fung |q 30682/3
step
goto 43.9,86.2
.talk 60187
.' Tell him "Let's get out of here".
.' Rescue Jin Warmkeg |q 30682/1
step
goto 43.9,87.2
.from Blind Rage##61224+
.get 5 Blind Rage Essence##81713 |q 30670/1
step
goto 44.5,88.6
.kill 15 Sha-Infested Yaungol##60164+ |q 30665/1
step
goto 44.5,89.9
.talk 60161
..turnin 30670
..accept 30690
..turnin 30665
..turnin 30682
step
goto 45.4,85.6
'Use your Blinding Rage Trap and lure Kobai into it |use Blinding Rage Trap##81741 |modelnpc Kobai##61303
'Click the Steal Mask button that appears on your screen |q 30690/1 |tip You must be targetting Kobai for this to work
.kill Malevolent Fury##61333 |q 30690/2
step
goto 44.5,89.9
.talk 60161
..turnin 30690
..accept 30699
step
goto 35.0,59.4
.talk 61816
..turnin 30699
..accept 30723
step
goto 35.1,59.7
.talk 61819
..accept 30715
step
goto 34.5,59.1
.talk 61512
.fpath Winter's Blossom
step
goto 30.3,60.1
.clicknpc Shado-Master Zhiyao##61808
.' Shado-Master Zhiyao Released From his Oath |q 30715/1
step
goto 30.1,62.5
.clicknpc Liu of the Thousand Blows##61806
.' Liu of the Thousand Blows Released From his Oath |q 30715/2
step
goto 30.0,64.4
.clicknpc Shiya Boldblade##61810
.' Shiya Boldblade Released From her Oath |q 30715/3
step
goto 30.9,62.0
.kill 12 Kun-Lai Corpsepicker##61843+ |q 30723/1 |tip If you can't find any on the ground look upward and pull them with a ranged ability.
step
goto 35.1,59.7
.talk 61819
..turnin 30715
step
goto 35.0,59.4
.talk 61816
..turnin 30723
..accept 30724
step
goto 34.5,59.1
.talk 61512
.' Tell him you need a kite up to the wall. |q 30724/1
step
goto 29.3,62.3
.talk 61454
..turnin 30724
..accept 30750
step
goto 29.2,62.3
.talk 61820
..accept 30751
step
goto 26.4,59.6
.from Osul Fire-Warrior##63576+, Osul Veteran Archer##61886+
.' Kill 12 Veteran Archers or Fire-Warriors |q 30750/1
.click Yaungol Oil Barrel
.get 6 Yaungol Oil Barrel##82799 |q 30751/1
step
goto 29.3,62.3
.talk 61454
..turnin 30750
step
goto 29.2,62.3
.talk 61820
..turnin 30751
step
goto 29.3,62.3
.talk 61454
..accept 30994
step
goto 29.3,62.3
.talk 61454
.' Tell her you're ready to get back to the front. |q 30994/1
step
goto 31.8,60.1
.talk 61820
..turnin 30994
..accept 30991
step
goto 32.1,60.6
.clicknpc Keg Bomb##60553
.' Use the abilities on your hotbar blow up as many Osul as you can in 1 try, you will need to repeat this.
.kill 50 Osul Invader##60455 |q 30991/1
.kill 4 Osul Treelauncher##60483 |q 30991/2
step
goto 31.8,60.1
.talk 61820
..turnin 30991
..accept 30992
step
goto 30.9,62.1
.from Gong Da##62165
.' Complete the Battle for The Ox Gate |q 30992/1
step
goto 31.3,61.5
.talk 61819
..turnin 30992
..accept 30993
step
goto 31.3,61.5
.talk 61819
.' Tell him you're ready to leave. |q 30993/1
step
goto 34.0,58.6
.talk 61819
.' Tell him "Alright, let's go up to the monastery". |q 30993/2
step
goto 35.3,49.5
.talk 61819
..turnin 30993
..accept 30752
step
goto 36.7,47.7
'Talk to Shado-Pan Sentinel
.' Tell him you are here with Ban Bearheart.
.from Shado-Pan Sentinel##62220
.' Gain access to the Monastery |q 30752/1
step
'Next to you
.talk 61819
..turnin 30752
step
'Pass through the Ox Gate and enter Townlong Steppes |goto 29.7,64.0 <5 |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\Townlong Steppes (88-89)",[[
author support@zygorguides.com
image TownlongSteppes
next Zygor's Horde Leveling Guides\\Pandaria 85-90\\Dread Wastes (89-90)
startlevel 88.4
dynamic on
step
goto Townlong Steppes 71.2,56.7
.talk 60688
..turnin 31695
..accept 30814
step
goto 71.1,57.3
.talk 62901
.fpath Longying Outpost
step
goto 71.1,57.9
.talk 62873
.home Longying Outpost
step
goto 70.9,52.4
.kill 8 Osul Charger##60713+ |q 30814/1
step
goto 71.2,56.7
.talk 60688
..turnin 30814
..accept 30769
..accept 30770
..accept 30771
step
goto 67.3,54.4
.kill 6 Osul Sharphorn##60647+ |q 30769/1
.clicknpc Long-Haired Yak##60669+
.clicknpc Steppebeast##60739+
.' Free 8 Yaks or Mushan |q 30770/1
.click Pitch Pot
.get 8 Dark Pitch##81174 |q 30771/1
step
goto 67.2,52.2
.talk 60684
..turnin 30769
step
goto 67.2,52.3
.talk 60687
..turnin 30770
..turnin 30771
..accept 30773
step
goto 67.2,52.2
.talk 60684
..accept 30772
..accept 30774
step
goto 67.0,51.4
.talk 60735
..accept 30775
step
goto 65.7,51.7
.kill Battat##60728 |q 30775/1 |tip When he casts Raging Flurry step behind him to avoid the damage.
step
goto 64.8,50.2
.kill Urang##60725 |q 30775/2
step
goto 67.0,48.2
.kill Ku-Tong##60726 |q 30775/3 |tip When he casts Stalwart Defender hit him in the back.
step
goto 66.9,44.1
'Use Ban's Explosives on Osul Ballistas |use Ban's Explosives##81193
.' Destroy 6 Osul Ballistas |q 30773/1
step
goto 67.3,49.6
.from 12 Osul Spearguard##60692+ |q 30772/1
.collect 4 Stone Key##81178+ |n
.click Drywood Cage
.' Rescue 4 Longying Rangers |q 30774/1
step
goto 66.6,49.1
.talk 60899
.' Examine the body
.' Free Lin Silentstrike |q 30774/2
step
goto 67.0,51.4
.talk 60735
..turnin 30775
step
goto 67.2,52.3
.talk 60687
..turnin 30773
..turnin 30772
..turnin 30774
step
goto 67.3,52.2
.talk 60684
..accept 30776
step
goto 66.7,51.0
.click Ceremonial Pile
.kill Jung Duk##60801 |q 30776/1
step
goto 71.0,56.6
.talk 60687
..turnin 30776
..accept 30777
step
goto 68.0,67.7
.talk 60857
..accept 30786
step
goto 68.4,71.4
.kill Dmong Naruuk##60683 |q 30786/1 |tip Go up the slope on the left.
step
goto 68.0,67.7
.talk 60857
..turnin 30786
..accept 30787
step
goto 66.6,68.0
'Kill the Osul Mist-Shamans near Mist-Shaman's Torches |modelnpc Osul Mist-Shaman##60697
.click Mist-Shaman's Torch
.get 6 Mist-Shaman's Torch##81176+ |q 30787/1
step
goto 68.0,67.7
.talk 60857
..turnin 30787
..accept 30788
..accept 30789
step
'Follow the path up |goto 68.4,67.8 <5 |c
step
goto 70.5,69.7
.click Peat Clump
.' Defend Golgoss from the oncoming attack.
.' Summon Golgoss |q 30788/1
step
goto 71.5,72.3
.click Peat Mound
.' Defend Arconiss from the oncoming attack.
.' Summon Arconiss |q 30789/1
step
goto 67.9,67.7
.talk 60857
..turnin 30788
..turnin 30789
..accept 30815
step
goto 67.9,67.7
.talk 60857
.' "Remove the spear from Orbiss' side." |q 30815/1
step
goto 67.9,67.7
.talk 60857
..turnin 30815
step
goto 67.9,67.7
.talk 60622
..accept 30790
..accept 30791
..accept 30792
step
'Follow the path up |goto 68.4,67.8 <5 |c
step
goto 74.5,70.4
.click Snarlvine
.get 10 Snarlvine |q 30790/1
.from Swamp Rodent##60733+
.get 4 Clotted Rodent's Blood##81260+ |q 30791/1
.' Walk through the puffs of steam all over this area
.' Collect 8 Gushing Mist |q 30792/1
step
goto 67.9,67.7
.talk 60622
..turnin 30790
..turnin 30792
..turnin 30791
..accept 30793
step
goto 76.5,72.5
.kill Jahesh of Osul##60802 |q 30793/1
step
goto 76.2,72.9
.talk 60622
..turnin 30793
step
goto 82.7,73.0
.talk 61261
..turnin 30777
..accept 30778
..accept 30779
step
goto 82.7,73.2
.talk 60903
..accept 30781
step
goto 82.6,73.0
.talk 60864
..accept 30780
step
'While you are doing the following steps make sure you complete the following:
.kill 8 Ashfang Hyena##60932+ |q 30779/1 |n
.click Palewind Totem
.get 9 Palewind Totem##81355 |q 30780/1 |n
.' Use your Shado-Pan Torch to burn Palewind Villagers |use Shado-Pan Torch##81356
.' Burn 20 Palewind Villagers |q 30778/1 |n
|confirm
step
goto 83.5,78.5
'Wait for Xiao Tu to investigate.
.' Examine the Southern Smoke Trail |q 30781/3
step
goto 84.9,71.4
'Wait for Xiao Tu to investigate.
.' Examine the Eastern Smoke Trail |q 30781/1
step
goto 84.0,70.9
'Wait for Xiao Tu to investigate.
.' Examine the Northwestern Smoke Trail |q 30781/4
step
goto 81.1,72.0
'Wait for Xiao Tu to investigate.
.' Examine the Western Smoke Trail |q 30781/2
step
goto 81.1,71.8
.kill 12 Ashfang Hyena##60932+ |q 30779/1
.click Palewind Totem
.get 9 Palewind Totem##81355 |q 30780/1
.' Use your Shado-Pan Torch to burn Palewind Villagers |use Shado-Pan Torch##81356
.' Burn 20 Palewind Villagers |q 30778/1
step
goto 82.6,73.0
.talk 60864
..turnin 30780
step
goto 82.7,73.0
.talk 61261
..turnin 30778
..turnin 30779
..turnin 30781
step
goto 82.6,73.0
.talk 60864
..accept 30827
step
goto 82.6,73.0
.talk 60864
.' Tell her you are ready to begin the ritual |q 30827/1
.clicknpc Totem of Tranquility##60990 |q 30827/3
.clicknpc Totem of Serenity##60991 |q 30827/4
.clicknpc Totem of Kindness##60933 |q 30827/2
.' Complete the Ritual |q 30827/5
step
goto 82.6,73.0
.talk 60864
..turnin 30827
..accept 30783
step
goto 82.7,73.0
.talk 61261
..accept 30782
step
'While doing the following quests do not allow your Hatred bar to reach 100. You can lower it by standing in Pools of Harmony.
|confirm
step
goto 82.0,71.0
.kill 10 Spiteful Spirit##63839+ |q 30782/1
.' Use your Totem of Harmony on Crazed Shado-Pan Rangers |use Totem of Harmony##88584
.from Seething Hatred##61054+
.' Purify 8 Crazed Shado-Pan Rangers |q 30783/1 |modelnpc Crazed Shado-Pan Ranger##61050
step
goto 82.7,73.0
.talk 61261
..turnin 30782
step
goto 82.6,73.0
.talk 60864
..turnin 30783
step
goto 82.7,73.0
.talk 61261
..accept 30784
step
goto 84.1,70.7
'Use the Totem of Harmony to buff yourself during the fight |use Totem of Harmony##81430
.kill Suna Silentstrike##61055 |q 30784/1
step
goto 82.7,73.0
.talk 61261
..turnin 30784
..accept 30785
step
'Follow the path up |goto 78.7,83.5 <5 |c
step
goto 76.4,82.5
.talk 61066
..turnin 30785
..accept 30884
step
goto 76.0,82.9
.talk 62875
.home Gao-Ran Battlefront
step
goto 75.9,83.1
.talk 61470
..accept 30891
step
goto 74.4,81.5
.talk 62903
.fpath Gao-Ran Battlefront
step
goto 76.9,78.8
.talk 61469
..turnin 30884
..accept 30887
step
goto 78.8,79.2
.click Violet Citron
.get 10 Violet Citron##82342 |q 30891/1
.kill 12 Krik'thik Deep-Scout##61374 |q 30887/1
step
goto 75.9,83.1
.talk 61470
..turnin 30891
step
goto 79.5,84.5
.talk 61468
..turnin 30887
..accept 30888
..accept 30890
step
goto 79.4,84.5
.talk 61467
..accept 30889
step
'As you run through this area:
.click 8 Shado-Pan Spike Traps |n
.from 10 Krik'thik Scentlayer##61373+ |n
|confirm
step
goto 79.0,90.1
.talk 61397
.' Tell him you have orders for him to return to the battlefront |q 30890/4
step
goto 82.5,89.6
.talk 61396
.' Tell her you have orders for her to return to the battlefront |q 30890/3
step
goto 81.3,86.2
.talk 61395
.' Tell her you have orders for her to return to the battlefront |q 30890/2
step
goto 82.2,84.1
.talk 61378
.' Tell him you have orders for him to return to the battlefront |q 30890/1
step
goto 80.7,86.5
.' Use the Shado-Pan Flare in your bags to reveal Scentlayers. |use Shado-Pan Flare##81925
.kill 10 Krik'thik Scentlayer##61373+ |q 30888/1
.click Shado-Pan Spike Trap
.' Rearm 8 Shado-Pan Spike Traps |q 30889/1
step
goto 79.4,84.5
.talk 61467
..turnin 30889
step
goto 79.5,84.5
.talk 61468
..turnin 30888
..turnin 30890
..accept 30960
step
goto 76.4,82.4
.talk 61066
..turnin 30960
..accept 30893
step
goto 75.9,83.1
.talk 61470
..accept 30892
..accept 30894
step
goto 74.0,87.5
.from Krik'thik Locust-Guard##61365+, Krik'thik Limbpincer##61181+
.' Kill 12 Kirk'thik attackers |q 30893/1
.click Krik'thik Limb
.get 22 Krik'thik Limb##82722+ |q 30894/1
.' Use your Citron-Infused Bandages on Injured Gao-Ran Blackguards |use Citron-Infused Bandages##82787
.' Heal 8 Injured Gao-Ran Blackguards |q 30892/1
'|talk Injured Gao-Ran Blackguard##61692
step
goto 75.9,83.1
.talk 61470
..turnin 30892
..turnin 30894
step
goto 76.4,82.4
.talk 61066
..turnin 30893
..accept 30895
step
'Follow this path |goto 73.2,86.9 <5 |c
step
goto 70.5,86.4
.talk 61881
..accept 30896
step
goto 70.4,86.7
.talk 61880
..accept 30897
step
goto 63.1,87.7
.from Needlebottom##61818
.get Initiate Chao's Sword##82783 |q 30897/1
step
goto 65.7,87.8
.from Agitated Nettleskin##61811+, Agitated Seedstealer##61302+
.' Kill 10 Agitated Root Sprites |q 30896/1
.click Dread Orb
.get 16 Volatile Dread Orb##82723+ |q 30895/1
step
goto 70.5,86.4
.talk 61881
..turnin 30896
step
goto 70.3,86.7
.talk 61880
..turnin 30897
step
goto 76.4,82.4
.talk 61066
..turnin 30895
..accept 30898
step
goto 74.7,84.6
.click Dragon Launcher |invehicle
.' Use the abilities on your hotbar to kill Krik'thik.
.from Krik'thik Drone##61960+, Krik'thik Acidslinger##62014+
.' Kill 50 Krik'thik Drones |q 30898/1
step
goto 74.2,85.0
.talk 62444
..turnin 30898
..accept 30900
step
goto 74.3,87.6
.kill Norvakess##62324 |q 30900/1
step
goto 76.4,82.4
.talk 61066
..turnin 30900
..accept 30901
step
'Follow Taran Zhu and Taoshi |goto 67.4,80.6 <10 |noway |c
step
goto 67.3,80.9
.talk 62436
..turnin 30901
..accept 30970
step
goto 67.4,80.7
.talk 62124
..accept 30971
step
'Enter the tunnel here. |goto 66.8,83.6 <5 |c
step
goto 67.9,82.5
.click Shado-Pan Fire Arrows
.get 120 Shado-Pan Fire Arrows |q 30971/1
.kill 9 Seething Fleshripper##61299+ |q 30970/1
.' You can find more Scorpions and Arrows outside around [64.4,82.6]
step
'Leave the tunnel here. |goto 66.8,83.6 <5 |c
step
goto 67.3,80.9
.talk 62436
..turnin 30970
step
goto 67.4,80.7
.talk 62124
..turnin 30971
..accept 30972
step
goto 61.6,79.3
.talk 61016
..turnin 30972
step
goto 61.7,79.3
.talk 62273
..accept 30973
step
goto 60.1,78.7
.kill 10 Kor'thik Timberhusk##61355+ |q 30973/1 |tip In order to remove the Timberhusk buff you must kick a Keg Bomb into the Kor'thik.
step
goto 61.7,79.3
.talk 62273
..turnin 30973
step
goto 61.6,79.3
.talk 61016
..accept 30975
step
goto Dread Wastes 44.9,9.7
.' As you fight, run through the bubbles to heal yourself and click the cask of Tatsy Brew to gain a large damage buff.
.kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |tip Do not use any Area of Effect abilities, these units do large amounts of damage and should be tanked by Lao-Chin.
.kill Hulking Kor'thik Fleshrender##62686 |q 30975/2
step
goto Townlong Steppes 61.1,83.1
.talk 62736
..turnin 30975
..accept 30976
step
'Follow Taran Zhu |goto 54.3,78.0 <5 |noway |c
step
goto 54.3,79.0
.talk 62898
.fpath Rensai's Watchpost
step
goto 54.0,78.1
.talk 62274
..turnin 30976
..accept 30899
step
goto 53.9,78.1
.talk 62278
..accept 30977
step
goto 51.3,83.0
.talk 62573
..accept 31032
step
goto 51.6,87.2
.talk 61020
..turnin 30899
..accept 30978
step
goto 51.7,87.3
.click Nurong's Cannon
.' Use the abilities on your new hotbar to do the following:
.from Kor'thik Swarmer##62300
.' Shoot down 50 Korthi'thik Swarmers |q 30978/1
.from Voress'thalik##62269
.' Shot down Voress'thalik |q 30978/2
step
'Click the Leave Vehicle button |outvehicle |c
step
goto 51.6,87.2
.talk 61020
..turnin 30978
..accept 30979
step
'Follow the path down |goto 53.0,83.6 <10 |c
step
goto 54.2,86.8
.kill Voress'thalik##62270 |q 30979/1
step
goto 54.0,87.0
.talk 62786
..turnin 30979
..accept 30980
step
'Follow the path up |goto 54.2,85.3 <5 |c
step
goto 51.8,85.2
.kill 12 Kor'thik Fleetwing##62128+ |q 30977/1
.' Use the Wu Kao Torch on Korth'thik Fleetwing corpses |use Wu Kao Torch##83768
.' Burn 10 Kor'thik Fleetwing corpses |q 31032/1
step
goto 51.3,83.0
.talk 62573
..turnin 31032
step
goto 54.0,78.1
.talk 62274
..turnin 30980
..accept 31065
step
goto 53.9,78.1
.talk 62278
..turnin 30977
step
goto 53.5,77.4
.click Wukao Spyglass
.' Look through Taoshi's Spyglass |q 31065/1
step
goto 54.0,78.1
.talk 62274
..turnin 31065
..accept 30981
..accept 31063
..accept 31064
step
goto 53.9,78.1
.talk 62278
..accept 31687
..accept 31688
step
goto 46.7,83.1
.kill Korvexxis##62579 |q 30981/1
step
goto 39.5,76.0
.kill Rothek##62581 |q 31064/1
step
goto 45.4,77.5
.kill Serevex##62580 |q 31063/1
step
goto 46.9,76.7
.from Sik'thik Drone##62576+, Sik'thik Venomspitter##62575+, Sik'thik Vess-Guard##61354+
.' Kill 12 Sik'thik mantid |q 31687/1
.click Sik'thik Cage
.' Search 8 Sik'thik Cages. |q 31688/1
.' Find Restless Leng |q 31688/2 |tip He will be in the final cage.
.' You can find more cages around [47.4,84.7] on top of the hill.
step
goto 47.5,78.9
.talk 62275
..turnin 30981
..turnin 31063
..turnin 31064
..accept 30968
step
'Follow Taran Zhu into Sik'vess Lair |goto 45.9,82.8 |subzone Sik'vess Lair
.kill Sha of Hatred##62541 |q 30968/1 |tip The Sha of Hatred periodically shoots off Sha Bursts that deal 80k-90k damage. Keep an eye on the ground and move out of the circles that appear. You may need to turn up your spell detail to see them. It also summons many different adds; make sure to kill them so you do not get overwhelmed.
step
goto 45.8,82.1
.talk 62802
..turnin 30968
..accept 31656
step
goto 53.9,78.1
.talk 62278
..turnin 31687
..turnin 31688
step
goto 50.1,72.0
.talk 62909
.fpath Shado-Pan Garrison
step
goto 48.9,70.8
.talk 62874
.home Shado-Pan Garrison
step
goto 49.1,71.2
.talk 61482
..accept 30921
..accept 30923
step
goto 49.2,71.3
.talk 61625
..accept 30922
..accept 30963
..accept 30964
step
goto 56.6,54.0
'Use your Gunpowder Casks to blow up the Kri'thik Supplies |use Gunpowder Casks##81891
.' Blow up the Kri'thik Supplies |q 30923/2 |tip Follow the path left and up.
step
goto 55.5,53.2
'Use your Gunpowder Casks to blow up the Kri'thik Weapons |use Gunpowder Casks##81891
.' Blow up the Kri'thik Weapons |q 30923/1
step
goto 56.4,53.3
.from Kri'thik Screamer##61377+, Kri'thik Boneslicer##61376+
.' Discover the First Clue |q 30921/1
.' Discover the Second Clue |q 30921/2
.' Discover the Third Clue |q 30921/3
.' Discover the Fourth Clue |q 30921/4
step
goto 51.2,60.9
.click Mao-Willow
.get 11 Mao-Willow##82389+ |q 30964/1
.from Rankbite Tortoise##61619+, Rankbite Ancient+w
.get 120 Rankbite Shell Fragment##82388+ |q 30963/1
.from Longshadow Mushan##61618+, Longshadow Bull+
.get 5 Foll Mushan Bladder |q 30922/1
.' You can find more Willows, Turtles, and Mushan around [61.3,54.9]
step
goto 49.1,71.2
.talk 61482
..turnin 30923
..turnin 30921
..accept 30924
step
goto 49.1,71.3
.talk 61625
..turnin 30922
..turnin 30963
..turnin 30964
step
'Cross the bridge |goto 48.4,68.9 <5 |c
step
goto 43.9,65.8
.talk 61539
..accept 30931
step
goto 38.7,65.4
.from Et'kil##61540 |tip He can be tough to kill, make sure you keep his adds crowd controlled or interrupted.
.get Father's Crossbow##82332 |q 30931/1
step
goto 43.9,65.8
.talk 61539
..turnin 30931
step
goto 39.4,62.0
.talk 61584
..accept 30932
step
goto 39.3,62.2
.talk 61581
..turnin 30924
..accept 30925
step
goto 39.2,62.0
.talk 61161
..accept 30929
step
goto 39.3,61.9
.clicknpc Ruthers##61163
.' Gently pet Ruthers |q 30929/1
.' Offer Ruthers an apple |q 30929/2
.' Lightly nudge Ruthers |q 30929/3
.' Attempt to mount Ruthers |q 30929/4
step
goto 39.2,62.0
.talk 61161
..turnin 30929
step
goto 39.3,61.2
.clicknpc Sentinel Yalo##61683 |tip He will be patrolling around this area.
.' Find Sentinel Yalo |q 30932/4
step
goto 37.5,61.4
.click Father's Shield
.' Find Father's Shield |q 30932/2
step
goto 37.4,60.9
.click Father's Bedroll
.' Find Father's Bedroll |q 30932/1
step
goto 37.7,64.0
.clicknpc Ha-Cha##61685
.' Find Ha-Cha |q 30932/3
step
goto 39.5,61.9
.talk 61539
..turnin 30932
step
goto 35.4,56.6
.talk 61161
..accept 30930
step
goto 34.5,50.2
'Use your Yak Lasso on Wild Townlong Yaks |use Yak Lasso##82468
.from Wild Townlong Yak##61635
.' Find a Suitable Yak |q 30930/1
step
goto 35.4,56.6
.talk 61161
..turnin 30930
step
goto 43.2,48.7
.from Sra'thik Guard##61518+, Sra'thik Supplier##61516+
.' Find Statuette Head |q 30925/1
.' Find Statuette Body |q 30925/2
.' Find Statuette Legs |q 30925/3
.' Find Statuette Tail |q 30925/4
step
goto 39.3,62.2
.talk 61581
..turnin 30925
step
goto 39.4,62.3
.talk 61580
..accept 30926
step
goto 39.2,62.1
.talk 61585
..accept 30928
step
goto 39.4,62.0
.talk 61584
..accept 30927
step
goto 32.8,61.1 |n
.' Find the catacombs |q 30926/1
step
goto Townlong Steppes/13 50.1,26.0
.from Dread Shadow##62307 |q 30926/3
.' Investigate the Niuzao Catacombs |q 30926/2
step
goto Townlong Steppes/13 55.9,20.1
.talk 61482
..turnin 30926
step
'Before exiting the catatcombs complete the following:
.kill 12 Dreadling##62306+ |q 30928/1
.clicknpc Fear-Stricken Sentinel##62276+
.' Give peace to 10 Fear-Stricken Sentinels |q 30927/1
step
goto Townlong Steppes 39.4,61.9
.talk 61584
..turnin 30927
step
goto 39.1,62.1
.talk 61585
..turnin 30928
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Pandaria 85-90\\Dread Wastes (89-90)",[[
author support@zygorguides.com
image DreadWastes
startlevel 89.3
endlevel 90
dynamic on
step
goto Vale of Eternal Blossoms 14.1,77.2
.talk 62112
..turnin 31656
..accept 31002
..accept 31001
step
goto 14.2,76.8 |n
.click Shado-Pan Rope
.' Ride the rope down the wall |invehicle
step
goto Dread Wastes 73.2,22.5
'Use the Shado-Pan Dragon Gun on Dreadspinner Eggs |use Shado-Pan Dragon Gun##82807
.' Destroy 20 Dreadspinner Eggs |q 31002/1
.kill 6 Dreadspinner Tender##61981+ |q 31002/2
step
goto 72.6,28.7
'Talk to Marksman Lann |q 31001/1 |modelnpc Marksman Lann##62166
..turnin 31001
..turnin 31002
..accept 31003
step
'Enter the hovel here. |goto 72.9,28.0 <5 |c
step
goto 73.1,27.7
.kill Adjunct Kree'zot##62301 |q 31003/1
step
goto 73.1,27.7
.talk 62203
..turnin 31003
..accept 31004
step
goto 70.2,25.7
.click Ancient Amber Chunk
.' Klaxxi Tuning Fork used on Amber |q 31004/1
step
goto 70.2,25.7
.talk 62202
..turnin 31004
..accept 31005
..accept 31676
step
goto 66.7,29.5
.kill 6 Vengeful Gurthani Spirit |q 31676/1
.from Sapfly##62386+
.get 100 Sapfly Bits##83075 |q 31005/1
step
goto 70.2,25.7
.talk 62202
..turnin 31005
..turnin 31676
..accept 31006
step
goto 70.2,25.7
.talk 62202
.' Tell him to take you to Klaxxi'vess
.' Travel to Klaxxi Hub |q 31006/1
step
goto 55.0,34.0
.talk 62538
..turnin 31006
..accept 31007
..accept 31660
step
goto 55.0,35.6
.talk 64599
..accept 31008
step
goto 54.8,34.1
.talk 64815
..accept 31009
step
goto 55.8,34.9
.talk 63501
.fpath Klaxxi'vess
step
goto 55.9,32.3
.talk 65220
.home Klaxxi'vess
step
goto 55.0,34.0
.talk 62538
.' Ask him to fly you to the Clutches of Shek'zeer. |goto 39.0,40.5 <5 |noway |c
step
goto 40.0,39.0
.' Use the Klaxxi Resonating Crystal on the Inactive Sonic Relay. |use Klaxxi Resonating Crystal##83276
.' Sonic Relay activated |q 31009/1
step
'Click the Complete Quest box that displays on the right side of the screen under your minimap
..turnin 31009
..accept 31010
step
goto 44.9,41.5
.clicknpc Malik the Unscathed##62690
.' Hold off the swarm while Malik awakens.
.' Paragon Wakened |q 31010/1
step
goto 44.6,41.4
.click Sha-Haunted Crystal
..accept 31661
step
goto 47.8,42.0
.from Shek'zeer Bladesworn##62563+
.get 6 Amber Blade##83135+ |q 31008/1
.' You can find more Bladesworn around [41.8,43.0]
step
goto 43.5,41.4
.kill 6 Shek'zeer Clutch-Keeper##64559+ |q 31007/1
.kill 30 Shek'zeer Swarmborn##62582+ |q 31660/1
step
goto 55.0,34.1
.talk 62774
..turnin 31010
step
goto 55.0,34.1
.talk 62538
..turnin 31007
..turnin 31660
step
goto 54.8,34.1
.talk 64815
..accept 31066
step
goto 55.0,35.5
.talk 64599
..turnin 31008
..turnin 31661
..accept 31108
step
goto 55.1,35.5
.talk 62774
..accept 31107
..accept 31689
step
goto 59.4,18.5
.kill Qi'tar the Deathcaller##62863 |q 31066/1
step
goto 58.5,16.9
.from Vor'thik Fear-Shaper##62814+
.get 4 Dread Amber Focus##86616 |q 31108/1
.kill 6 Vor'thik Dreadsworn##62813+ |q 31689/1
.click Vor'thik Eggs
.get 10 Vor'thik Eggs##86598 |q 31107/1
step
goto 54.8,34.1
.talk 64815
..turnin 31066
..accept 31087
step
goto Dread Wastes 55.1,35.5
.talk 62774
..turnin 31107
..turnin 31689
step
goto 55.0,35.6
.talk 64599
..turnin 31108
step
goto 55.0,35.9
.talk 62538
..accept 31019
step
goto 62.3,57.1
.from Mistblade Ripper##61970+ |n
.collect 1 Strange Relic##82870 |n
.' Click the Strange Relic in your bags |use Strange Relic##82870
..accept 31023
step
goto 67.2,59.3
.kill 7 Mistblade Ripper##61970+ |q 31019/1
.click Mantid Relic##6419
.get 8 Mantid Relic##82867 |q 31023/1
step
'Enter the tunnel here. |goto 66.8,63.8 <5 |c
step
goto 66.5,66.0
.kill Mistblade Scale-Lord##63179 |q 31019/2
step
goto 66.8,65.4
.talk 65354
..turnin 31019
step
'Next to you:
.talk 62232
..accept 31020
..accept 31021
step
'Leave the tunnel. |goto 66.8,63.8 <5 |c
step
'Go underwater to [65.5,59.1]
.click Amber Fragment
.collect 9 Living Amber##82864 |n
.kill 8 Coldbite Crocolisk##62023 |q 31020/1
.' Click the Living Amber in your bags |use Living Amber##82864
.' Feed Korven the Prime 9 Living Amber |q 31021/1
step
'Next to you:
.talk 62232
..turnin 31020
..turnin 31021
..accept 31022
step
goto 59.8,59.5
.click Sonar Tower
.' Sonar Tower Examined |q 31022/1
.from Ik'thik Towerguard##63294+
.' Korven the Prime Defended. |q 31022/2
step
'Next to you:
.talk 62232
..turnin 31022
..accept 31026
step
'Enter the tunnel here. |goto 58.7,59.5 <5 |c
step
goto 57.3,57.8
.kill Coldbite Matriarch##62008 |q 31026/1
step
'Next to you:
.talk 62232
..turnin 31026
step
'Leave the tunnel. |goto 58.7,59.5 <5 |c
step
goto 46.3,53.1
.' Locate Amberglow Hollow |q 31087/1
step
goto 48.2,49.7
.kill Adjunct Zet'uk##65478 |q 31087/2
.click Inactive Beacon
.' Use the Resonating Crystal on the Silent Beacon |q 31087/3
step
goto 48.1,49.6
.talk 65365
..turnin 31087
..accept 31088
..accept 31090
step
'Leave the building. |goto 46.3,53.1 <5 |c
step
goto 44.9,57.4
.kill 8 Ik'thik Harvester##63206+ |q 31088/1
.click Amber Collector
.get 7 Amber-Filled Jar##85159 |q 31090/1
.' You can find more Amber and Harvesters around [41.6,52.4]
step
'Enter the building here. |goto 46.3,53.1 <5 |c
step
goto 48.1,49.6
.talk 65365
..turnin 31088
..turnin 31090
step
goto 48.2,49.8
.click Active Beacon
..accept 31089
step
'Leave the building. |goto 46.3,53.1 <5 |c
step
goto 43.4,63.3
'Use the Klaxxi Tuning Fork in your bags on the Ocean Worn Rocks |use Klaxxi Tuning Fork##84119
.' Awaken Kaz'tik the Manipulator |q 31089/1
step
goto 43.4,63.3
.talk 62540
..turnin 31089
..accept 31091
step
goto 43.3,63.6
.talk 63876
.' Tell him you're ready to help him.
|confirm
step
goto 41.8,72.0
'Escort Kaz'tik to the Undisturbed Dirt |q 31091/1
'Find Kaz'tik's greatest weapon |q 31091/2
step
goto 41.8,72.0
.talk 64344
..turnin 31091
..accept 31359
..accept 31092
step
goto 41.7,63.6
.kill Oracle Hiss'ir##63998 |q 31359/1
.' He patrols around The Briny Muck.
step
goto 41.9,63.7
.click Glowing Amber
..accept 31398
step
goto 38.1,57.3
.from Brineshell Snapper##63981+, Trained Brineshell Snapper##65330+
.collect 6 Succulent Turtle Filet##86489+ |n
.from Muckscale Ripper##63993+, Muckscale Shaman##64008+, Muckscale Slayer##63999+, Muckscale Flesh-Hunter##63997+
.' Kill 10 Muckscale Tribe |q 31359/2
.' Click the Succulent Turtle Filets in your bags |use Succulent Turtle Filet##86489
.' Feed 6 Succulent Turtle Filets to Kovok |q 31092/1
.' You can find more Tribe Members and Turtles all over The Briny Muck.
step
goto Dread Wastes 54.4,35.6
.talk 63758
..turnin 31359
..turnin 31092
..turnin 31398
step
goto 55.0,35.5
.talk 64599
..turnin 31023
..accept 31727
step
goto 55.0,35.9
.talk 62538
..accept 31730
step
goto 51.2,11.4
.talk 62666
..turnin 31730
..accept 31067
step
'Enter the building here |goto 53.6,15.6 <5 |c
step
goto 53.1,12.4
.click Scroll of Auspice
..accept 31068
step
goto 52.7,10.1
.kill Azzix K'tai##62843 |q 31067/1
step
'Leave the building here |goto 53.6,15.6 <5 |c
step
goto 50.7,11.7
.talk 62667
..turnin 31068
step
goto 50.7,11.7
.' Watch the dialogue.
.talk 62667
..accept 31072
step
goto 51.2,11.4
.talk 62666
..turnin 31067
..accept 31069
step
goto 51.2,11.2
.talk 62668
..accept 31070
step
goto 51.1,11.1
.talk 62859
..accept 31071
step
goto 50.5,12.0
.talk 62779
..accept 31129
step
goto 50.7,11.7
.talk 62667
.' Ask her if she has seen any Stormstous in the Brewgarden. |q 31129/2
step
goto 51.2,11.4
.talk 62666
.' Ask him if he has seen anybody named Stormstout come through here. |q 31129/1
step
goto 50.9,11.4
.talk 62845
.' Ask him if his name is really Stormstout. |q 31129/3
step
goto 50.5,12.0
.talk 62779
..turnin 31129
step
goto 54.1,20.5
.talk 62779
..accept 31077
step
goto 54.5,20.3
.click Lost Keg
.get Lost Keg##83781 |q 31071/2
step
goto 56.0,19.4
.click Lost Picnic Supplies
.get Lost Picnic Supplies##83783 |q 31071/3
step
goto 51.8,19.0
.click Lost Mug
.get Lost Mugs##83782 |q 31071/1
step
goto 50.7,20.8
.from Ilikkax##62833
.get Blade of Ilikkax##84112 |q 31072/2
step
goto 53.1,20.4
.from Kz'Kzik##62832
.get Blade of Kz'Kzik##84111 |q 31072/1
step
goto 55.3,18.2
.from Dread Lurker##62751+
.' Harvest 100 Shade |q 31069/1
step
goto 51.1,15.9
.from Frightened Mushan##62760
.get 3 Large Mushan Tooth##84107 |q 31070/1
.' You can find more Mushan around [56.5,20.2]
step
goto 50.7,11.7
.talk 62667
.turnin 31072
.accept 31074
step
goto 51.2,11.4
.talk 62666
..turnin 31069
step
goto 51.2,11.2
.talk 62668
..turnin 31070
step
goto 51.1,11.1
.talk 62859
..turnin 31071
step
goto 51.2,11.4
.talk 62666
..accept 31073
step
goto 50.2,12.4
.talk 63218
..accept 31133
step
goto 50.2,10.2
'Meet up with Chen |q 31077/1
'Listen to Chen's Eulogy. |q 31077/2
step
goto 50.2,10.2
.talk 62779
..turnin 31077
..accept 31078
step
'Enter the building here |goto 44.8,15.8 <5 |c
step
goto 44.5,16.8
'Find the Mark of the Empress |q 31074/1
step
'Leave the building here |goto 44.8,15.8 <5 |c
step
'Enter the building here |goto 43.1,14.0 <5 |c
step
goto 43.1,14.9
'Find the Heartroot of Kypari Kor |q 31074/2
step
'Leave the building here |goto 43.1,14.0 <5 |c
step
'Enter the Morrowchamber here. |goto 47.0,16.8 <5 |c
step
goto 43.7,16.7
'Work your way around one side of the room. If you go down the ramps on either side you can go underneath the beam.
.clicknpc Han Stormstout##62776
.' Find Han Stormstout |q 31078/1
step
goto 44.4,16.8
.talk 62779
..turnin 31078
step
goto 43.6,8.2
.clicknpc Withered Husk##62876
.get 8 Fragrant Corewood##84118 |q 31073/1
step
goto 43.1,12.9
.from Kor'thik Chitinel##62756+, Kor'thik Havoc##62757+, Kor'thik Battlesinger##62758+
.' Kill 17 Kor'thik Mantid |q 31133/1
step
goto 50.2,12.4
.talk 63218
..turnin 31133
step
goto 50.7,11.7
.talk 62667
..turnin 31074
step
goto 51.2,11.4
.talk 62666
..turnin 31073
..accept 31075
step
goto 38.2,17.2
.talk 62666
..turnin 31075
step
goto 38.2,17.3
.talk 62772
..accept 31079
step
goto 38.2,17.1
.talk 62668
..accept 31080
step
goto 38.3,17.1
.talk 62667
..accept 31081
step
goto 38.6,17.3
.talk 62771
..accept 31082
step
goto 32.6,19.3
.kill Mygoness##62766 |q 31081/2
step
goto 32.1,17.4
.kill Ahgunoss##62765 |q 31081/1
step
goto 32.9,17.6
.kill 7 Shuffling Mistlurker##65404+ |q 31079/1
step
goto 36.0,23.0
.kill 2 Kyparite##63007 |q 31079/2
.clicknpc Rikkilea Flitterling##62764
.get 88 Flitterling Dust##84239 |q 31080/1
step
goto 36.8,20.4
'Use the Rikkitun Bell in your bags |use Rikkitun Bell##84267
.clicknpc Motherseed##62601
.' Bring the Motherseed to [36.9,17.4]
.' Bring 3 Motherseed back to the Motherseed Pit |q 31082/1
step
goto 38.1,17.3
.talk 62772
..turnin 31079
step
goto 38.2,17.1
.talk 62668
..turnin 31080
step
goto 38.3,17.1
.talk 62667
..turnin 31081
step
goto 38.6,17.3
.talk 62771
..turnin 31082
..accept 31084
step
goto 38.6,17.3
.talk 62771
.' Tell him the forked blade is ready.
.' Follow Chief Rikkitun to [39.7,23.2]
.' Allow Chief Rikkitun to enchant the forked blade. |q 31084/1
step
goto 38.6,17.3
.talk 62771
..turnin 31084
step
goto 38.3,17.1
.talk 62667
..accept 31085
step
goto 38.2,17.2
.talk 62666
..accept 31086
step
goto 30.2,30.6
.click Solidified Amber
.get Chunk of Solidified Amber##84779 |q 31086/1
step
goto 30.0,31.1
.click Enormous Landslide
.' Enter the building once the landslide is gone. |goto 30.5,32.0 <5 |noway |c
step
goto 32.4,33.7
'Use the Ruining Fork in your bags |use Ruining Fork##84771
.'Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1
step
.from Adjunct G'kkal##63103, Adjunct Okzyk##63102, Adjunct Pivvika##63104
.' Protect Iyyokuk the Lucid until he escapes |q 31085/2
step
'Leave the building. |goto 30.5,32.0 <5 |c
step
goto 50.3,12.1
.talk 62667
..turnin 31085
step
goto 50.3,12.1
.talk 62666
..turnin 31086
step
goto 56.1,70.2
.talk 63498
.fpath Soggy's Gamble
step
goto 54.7,72.2
.talk 63349
..turnin 31727
..accept 31265
step
'Use the Potion of Mazu's Breath in your bags |use Potion of Mazu's Breath##85869
.' Drink the Potion of Mazu's Breath |q 31265/1
step
goto 54.7,72.2
.talk 63349
..turnin 31265
..accept 31181
..accept 31182
step
goto 59.4,82.1
'Use the Bag of Clams in your bags on Coldwhisker Otters |use Bag of Clams##85231
'Feed Coldwhisker Otter |q 31182/1 |modelnpc Coldwhisker Otter##63376
.from Sea Monarch##63470+
.collect 20 Sea Monarch Chunks##85230 |n
.click Empty Crab Pot
.' Bait 10 Crab Pots |q 31181/1
step
goto 54.7,72.2
.talk 63349
..turnin 31181
..turnin 31182
..accept 31183
step
goto 55.7,72.5
.talk 63317
..turnin 31183
..accept 31185
..accept 31184
step
goto 54.7,72.2
.talk 63349
..accept 31187
..accept 31188
step
goto 50.9,78.1
'Use Dog's Whistle while swimming in the Shelf of Mazu. |use Dog's Whistle##85955
.' Next to you:
.talk 63955
..accept 31186
step
'Bring Dog to the Silt Vents |goto 46.2,74.2 <5 |q 31185/1
step
'Bring Dog to the Wreck of the Mist-Hopper |goto 44.9,78.0 <5 |q 31185/2
step
goto 44.8,78.7
.click Soggy's Footlocker
.get Sealed Charter Tube |q 31184/1
step
'Bring Dog to the Whale Corpse |goto 40.2,79.1 <5 |q 31185/3
step
goto 46.0,77.1
.from Rockshell Snapclaw##63369
.' Feed Dog |q 31186/1
.from Longfin Thresher##63944
.collect Thresher Jaw##85998 |n
.' Use the Thresher Jaw in your bags |use Thresher Jaw##85998
.get 200 Thresher Teeth##85999 |q 31188/1
.click Full Crab Pot
.' Send 8 Full Crab Pots to the Surface |q 31187/1
step
'Next to you:
.talk 63955
..turnin 31186
step
goto 54.7,72.2
.talk 63349
..turnin 31187
..turnin 31188
step
goto 55.7,72.5
.talk 63317
..turnin 31185
..turnin 31184
step
goto 54.7,72.2
.talk 63349
..accept 31189
step
goto 53.6,76.0
.talk 64259
.' Deck Boss said you needed some help. |q 31189/1
step
goto 53.7,76.0
'Click each rod and fight the Jiao Spawns.
.click Serpent Rod
.click Improvised Rod
.click Bamboo Rod
.click Classic Rod
.from Jiao Spawn##64273+
.' Assist Master Angler Ju Lien |q 31189/2
step
goto 54.7,72.2
.talk 63349
..turnin 31189
step
goto 54.8,72.1
.talk 63317
..accept 31190
step
Follow Captain "Soggy" Su-Dao to [56.2,76.3]
.clicknpc Mist-Hopper Jr.##64350
.' Hold down Right click to aim and use the Harpoon Cannon ability on your new hotbar to attack the red circles all around Jiao. |modelnpc Jiao##63330
.' 25 Bow Hits |q 31190/1
.' 25 Port Side Hits |q 31190/2
.' 25 Starboard Hits |q 31190/3
.' 25 Stern Hits |q 31190/4
step
'Hit the yellow Leave Vehicle button on your hotbar. |outvehicle
step
goto 56.6,75.9
.talk 63317
..turnin 31190
step
goto 56.6,75.8
.talk 63349
..accept 31354
step
goto 54.9,72.8
.talk 64259
..turnin 31354
..accept 32030
step
goto 54.7,34.7
.talk 65395
..turnin 32030
..accept 31782
step
'Witness the Klaxxi Ritual |q 31782/1
step
goto 55.1,34.3
.talk 62519
..turnin 31782
step
'From this point on you must meet the reputation requirements for The Klaxxi faction in order to accept quests.
|confirm
step
goto 55.0,35.9
.talk 62538
..accept 31175 |tip This quest is only available to those who are honored with The Klaxxi.
step
goto 54.8,34.1
.talk 64815
..accept 31605
step
'Swim underwater and enter this cave |goto 25.7,53.9 <5 |c
step
goto 25.7,50.4
.click Ancient Amber Chunk
.' Skeer the Bloodseeker Awakened |q 31175/1
step
goto 25.7,50.3
.talk 63071
..turnin 31175
..accept 31176
..accept 31177
..accept 31178
step
'Leave the cave |goto 25.7,53.9 <5 |c
step
goto 26.3,58.8
.from Dread Remora##63353
.get 100 Volatile Blood |q 31178/1
.from Briny Clacker##63348
.get 8 Clacker Tail |q 31177/1
.click Spiny Starfish
.get 12 Starfish Meat |q 31176/1
step
'Enter this cave |goto 25.7,53.9 <5 |c
step
goto 25.7,50.3
.talk 63071
..turnin 31176
..turnin 31177
..turnin 31178
..accept 31179
step
goto 25.7,50.3
'Fight off the waves of Muckscale.
.kill 12 Muckscale Flesheater##63465+ |q 31179/1
.kill Muckscale Serpentus##63466 |q 31179/2
step
'Leave the cave |goto 25.7,53.9 <5 |c
step
goto 31.8,88.9
.talk 65253
..turnin 31605
..accept 31606
step
'Kill the Zan'thik while Rik'kal recovers.
.from Zan'thik Impaler##65273+, Zan'thik Manipulator##65274+
.' Paragon Wakened |q 31606/1
step
goto 31.8,88.9
.talk 65253
..turnin 31606
step
goto 55.0,35.9
.talk 62538
..turnin 31179
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\The Jade Forest",[[
author support@zygorguides.com
image JadeForest
condition end achieved(6534)
step
'You must complete The Jade Forest Leveling Guide before completing this guide section.
.'Click here to continue. |confirm
step
goto The Jade Forest 43.5,75.9
.talk 54697
..accept 29578
..accept 29579
step
goto 43.3,75.7
.talk 54854
..accept 29585
..accept 29580
step
goto 44.5,72.9
.kill 8 Gormali Incinerator##54703+ |q 29578/2
.kill 8 Gormali Raider##54702+ |q 29578/1
.talk 54763
.' Tell them to get to Hanae's house
.' Rescue 5 Survivors |q 29579/1
.click Orchard Tool
.get 6 Orchard Tool##72133 |q 29580/1
.' Use the Nectarbreeze Cider in your bags on fires around town |use Nectarbreeze Cider##72578 |tip You must be facing the fire for this to work.
.' 12 Orchard Fires Put Out |q 29585/1
step
goto 43.5,75.9
.talk 54697
..turnin 29578
..turnin 29579
step
goto 43.3,75.7
.talk 54854
..turnin 29585
..turnin 29580
step
goto 43.2,75.9
.talk 55209
..accept 29586
step
goto 41.0,74.0
.' Discover Camp Mogu |q 29586/1
step
goto 41.0,74.0
.talk 55009
..turnin 29586
..accept 29587
..accept 29670
step
goto 37.8,76.2
.kill Subjugator Gormal##55016 |q 29670/1
step
goto 39.8,74.8
.clicknpc Captured Nectarbreeze Farmer##54990
.' Free 10 Farmers |q 29587/1
step
goto 41.0,74.0
.talk 55009
..turnin 29587
..turnin 29670
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\Valley of the Four Winds",[[
author support@zygorguides.com
image ValleyOfTheFourWinds
condition end achieved(6301)
leechsteps "Zygor's Horde Leveling Guides\\Pandaria 85-90\\Valley of the Four Winds (86-87)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\Krasarang Wilds",[[
author support@zygorguides.com
image KrasarangWilds
condition end achieved(6536)
leechsteps "Zygor's Horde Leveling Guides\\Pandaria 85-90\\Krasarang Wilds (87)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\Kun-Lai Summit",[[
author support@zygorguides.com
image KunLai
condition end achieved(6538)
leechsteps "Zygor's Horde Leveling Guides\\Pandaria 85-90\\Kun-Lai Summit (87-88)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\Townlong Steppes",[[
author support@zygorguides.com
image TownlongSteppes
condition end achieved(6539)
leechsteps "Zygor's Horde Leveling Guides\\Pandaria 85-90\\Townlong Steppes (88-89)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Pandaria 85-90\\Dread Wastes",[[
author support@zygorguides.com
image DreadWastes
condition end achieved(6540)
leechsteps "Zygor's Horde Leveling Guides\\Pandaria 85-90\\Dread Wastes (89-90)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Daily",[[
description This guide will walk you through the Monk daily for extra experience.
author support@zygorguides.com
image Serenity_Peak
monkquest 1
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level>=1
condition end completedq(31840)
dynamic on
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31856
step
goto 48.6,42.7
.talk 66260
..accept 31840 |daily |or
..accept 31841 |daily |or
..accept 31842 |daily |or
..accept 31843 |daily |or
..accept 31844 |daily |or
..accept 31845 |daily |or
..accept 31846 |daily |or
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31840/1
|only if havequest(31840)
step
goto 48.6,39.6
.talk 65960
..' Tell her you wish to challenge her
.' Follow her to the center of the area and fight her
.from Master Woo##65960
.' Complete Master Cheng's Training |q 31841/1
|only if havequest(31841)
step
goto 48.0,40.2
.talk 65899
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Kistane##65899
.' Complete Master Kistane's Training |q 31842/1
|only if havequest(31842)
step
goto 48.0,40.2
.talk 66073
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Yoon##66073
.' Complete Master Yoon's Training |q 31843/1
|only if havequest(31843)
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31844/1
|only if havequest(31844)
step
goto 47.1,40.1
.talk 66149
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Tsang##66149
.' Complete Master Tsang's Training |q 31845/1
|only if havequest(31845)
step
goto 47.1,40.1
.talk 65977
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Hsu##65977
.' Complete Master Hsu's Training |q 31846/1
|only if havequest(31846)
step
goto 48.6,42.7
.talk 66260
..turnin 31840 |or
..turnin 31841 |or
..turnin 31842 |or
..turnin 31843 |or
..turnin 31844 |or
..turnin 31845 |or
..turnin 31846 |or
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 20",[[
description This guide will walk you through the Monk daily for extra experience.
author support@zygorguides.com
image Serenity_Peak
monkquest 20
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31834) and level>=20
condition end completedq(31834)
dynamic on
step
'Upon reaching level 20 as a Monk, you will automatically accept a class quest:
..accept 31856
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31856
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31856
..accept 31834
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31834/1
step
goto 48.6,42.7
.talk 66260
..turnin 31834
..accept 31840
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31840/1
step
goto 48.6,42.7
.talk 66260
..turnin 31840
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 30",[[
description This guide will walk you through the Monk quest at level 30.
author support@zygorguides.com
image Serenity_Peak
monkquest 30
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31833) and level>=30
condition end completedq(31833)
dynamic on
step
'Upon reaching level 30 as a Monk, you will automatically accept a class quest:
..accept 31855
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31855
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31855
..accept 31833
step
goto 48.6,39.6
.talk 65960
..' Tell her you wish to challenge her
.' Follow her to the center of the area and fight her
.from Master Woo##65960
.' Complete Master Woo's Training |q 31833/1
step
goto 48.6,42.7
.talk 66260
..turnin 31833
..accept 31841
step
goto 48.6,39.6
.talk 65960
..' Tell her you wish to challenge her
.' Follow her to the center of the area and fight her
.from Master Woo##65960
.' Complete Master Cheng's Training |q 31841/1
step
goto 48.6,42.7
.talk 66260
..turnin 31841
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 40",[[
description This guide will walk you through the Monk quest at level 40.
author support@zygorguides.com
image Serenity_Peak
monkquest 40
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31835) and level>=40
condition end completedq(31835)
dynamic on
step
'Upon reaching level 40 as a Monk, you will automatically accept a class quest:
..accept 31857
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31857
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31857
..accept 31835
step
goto 48.0,40.2
.talk 65899
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Kistane##65899
.' Complete Master Kistane's Training |q 31835/1
step
goto 48.6,42.7
.talk 66260
..turnin 31835
..accept 31842
step
goto 48.0,40.2
.talk 65899
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Kistane##65899
.' Complete Master Kistane's Training |q 31842/1
step
goto 48.6,42.7
.talk 66260
..turnin 31842
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 50",[[
description This guide will walk you through the Monk quest at level 50.
author support@zygorguides.com
image Serenity_Peak
monkquest 50
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31836) and level>=50
condition end completedq(31836)
dynamic on
step
'Upon reaching level 50 as a Monk, you will automatically accept a class quest:
..accept 31858
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31858
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31858
..accept 31836
step
goto 48.0,40.2
.talk 66073
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Yoon##66073
.' Complete Master Yoon's Training |q 31836/1
step
goto 48.6,42.7
.talk 66260
..turnin 31836
..accept 31843
step
goto 48.0,40.2
.talk 66073
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Yoon##66073
.' Complete Master Yoon's Training |q 31843/1
step
goto 48.6,42.7
.talk 66260
..turnin 31843
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 60",[[
description This guide will walk you through the Monk quest at level 60.
author support@zygorguides.com
image Serenity_Peak
monkquest 60
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31837) and level>=60
condition end completedq(31837)
dynamic on
step
'Upon reaching level 60 as a Monk, you will automatically accept a class quest:
..accept 31859
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31859
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31859
..accept 31837
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31837/1
step
goto 48.6,42.7
.talk 66260
..turnin 31837
..accept 31844
step
goto 47.1,40.1
.talk 66138
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Cheng##66138
.' Complete Master Cheng's Training |q 31844/1
step
goto 48.6,42.7
.talk 66260
..turnin 31844
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 70",[[
description This guide will walk you through the Monk quest at level 70.
author support@zygorguides.com
image Serenity_Peak
monkquest 70
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31838) and level>=70
condition end completedq(31838)
dynamic on
step
'Upon reaching level 70 as a Monk, you will automatically accept a class quest:
..accept 31860
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31860
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31860
..accept 31838
step
goto 47.1,40.1
.talk 66149
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Tsang##66149
.' Complete Master Tsang's Training |q 31838/1
step
goto 48.6,42.7
.talk 66260
..turnin 31838
..accept 31845
step
goto 47.1,40.1
.talk 66149
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Tsang##66149
.' Complete Master Tsang's Training |q 31845/1
step
goto 48.6,42.7
.talk 66260
..turnin 31845
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 80",[[
description This guide will walk you through the Monk quest at level 80.
author support@zygorguides.com
image Serenity_Peak
monkquest 80
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31861) and level>=80
condition end completedq(31861)
dynamic on
step
'Upon reaching level 80 as a Monk, you will automatically accept a class quest:
..accept 31861
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31861
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31861
..accept 31839
step
goto 47.1,40.1
.talk 65977
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Hsu##65977
.' Complete Master Hsu's Training |q 31839/1
step
goto 48.6,42.7
.talk 66260
..turnin 31839
..accept 31846
step
goto 47.1,40.1
.talk 65977
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Hsu##65977
.' Complete Master Hsu's Training |q 31846/1
step
goto 48.6,42.7
.talk 66260
..turnin 31846
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Peak of Serenity\\Monk Quest 90",[[
description This guide will walk you through the Monk quest at level 90.
author support@zygorguides.com
image Serenity_Peak
monkquest 90
condition invalid not raceclass('Monk') !!Monk only.
condition suggested raceclass('Monk') and not completedq(31844) and level>=90
condition end completedq(31844)
dynamic on
step
'Upon reaching level 90 as a Monk, you will automatically accept a class quest:
..accept 31889
step
'Use your Zen Pilgrimage ability |cast Zen Pilgrimage##126892
.' Travel to the Peak of Serenity |goto Kun-Lai Summit 48.6,42.9 |noway |c |q 31889
step
goto Kun-Lai Summit 48.6,42.7
.talk 66260
..turnin 31889
..accept 31844
step
goto 47.1,40.1
.talk 66260
..' Tell him you wish to challenge him
.' Follow him to the center of the area and fight him
.from Master Hight##66260
.' Complete Master Hight's Training |q 31844/1
step
goto 48.6,42.7
.talk 66260
..turnin 31844
]])
