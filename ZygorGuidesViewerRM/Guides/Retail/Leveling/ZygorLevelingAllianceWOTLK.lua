local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
local ZGV = ZygorGuidesViewer
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12) & Death Knight (55-58)\\Death Knight Starter (55-58)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Death Knight",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return (raceclass('DeathKnight') and not completedq(13188)) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13188) end,
},[[
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin In Service Of The Lich King##12593 |goto 48.27,28.38
accept The Emblazoned Runeblade##12619 |goto 48.27,28.38
step
click Battle-worn Sword##190584+
|tip They look like swords leaning up against objects around this area.
|tip On the upper floor of the floating building.
collect Battle-worn Sword##38607 |goto 47.82,27.77 |q 12619
step
use the Battle-worn Sword##38607
|tip Next to a Runeforge.
|tip They look like large skulls with grey metal pipes connected to them, next to the wall around this area.
|tip On the upper floor of the floating building.
collect Runebladed Sword##38631 |q 12619/1 |goto 47.88,27.54
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin The Emblazoned Runeblade##12619 |goto 48.27,28.38
accept Runeforging: Preparation For Battle##12842 |goto 48.27,28.38
step
cast Runeforging##53428
|tip Next to a Runeforge.
|tip They look like large skulls with grey metal pipes connected to them, next to the wall around this area.
|tip On the upper floor of the floating building.
Engrave the Rune
|tip Choose the rune you prefer and click the "Engrave" button.
|tip Select the sword you received in the previous step.
Emblazon Your Weapon |q 12842/1 |goto 47.88,27.54
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin Runeforging: Preparation For Battle##12842 |goto 48.27,28.38
accept The Endless Hunger##12848 |goto 48.27,28.38
step
click Acherus Soul Prison##8115+
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
|tip On the upper floor of the floating building.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.87,29.67
step
talk Instructor Razuvious##28357
|tip He walks around this area, on the upper floor of the floating building.
turnin The Endless Hunger##12848 |goto 48.27,28.38
accept The Eye Of Acherus##12636 |goto 48.27,28.38
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff spell:51852 |goto 52.13,35.21 |q 12641
step
Watch the dialogue
|tip You will automatically fly away while controlling the Eye of Acherus.
Reach New Avalon |complete subzone("New Avalon") |q 12641
step
_Fly to the Northeast:_
Locate the Blacksmith Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the blacksmith building.
Analyze the New Avalon Forge |q 12641/1
step
_Fly to the South:_
Locate the Fort Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the fort building.
Analyze the Scarlet Hold |q 12641/3
step
_Fly to the West:_
Locate the Town Hall Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the town hall building.
Analyze the New Avalon Town Hall |q 12641/2
step
_Fly to the South:_
Locate the Church Building
|tip Stay floating high, so the soldiers on the ground will not attack you.
Use the _"Siphon of Acherus"_ ability |petaction 1
|tip Near the red arrow bouncing above the church building.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the _"Recall Eye of Acherus"_ ability |petaction 5
Recall the Eye of Acherus |nobuff spell:51852 |q 12641
step
talk The Lich King##25462
|tip On the upper floor of the floating building.
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Teleport to the Hall of Command |complete subzone("Hall of Command") |goto 50.49,33.37 |q 12657
|tip Walk onto the teleport pad.
|tip On the upper floor of the floating building.
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of the floating building.
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
|tip He walks around this area, on the bottom floor of the floating building.
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56 |instant
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area on a skeletal bird mount.
|tip On the bottom floor of the floating building.
turnin Report To Scourge Commander Thalanor##12850 |goto 51.10,34.63
accept The Scarlet Harvest##12670 |goto 51.10,34.63
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12670
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12670 |notravel
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.51,34.61
step
talk Olrun the Battlecaller##29047
|tip She flies close to the ground around this area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406+
|tip They look like NPCs wearing brown robes.
|tip You can find them all around the Death's Breach area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
|tip They will eventually surrender.
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 52.51,34.46
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto 52.96,37.27
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
stickystart "Saronite_Arrows"
step
click Havenshire Horse+
|tip They look like various color horses.
|tip You can find them all around the Havenshire Stables area.
|tip Be careful to avoid Stable Master Kitrik.
|tip He's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.93,42.21 |q 12680
step
Follow the path up to Death's Breach |goto 51.60,42.66 < 60 |only if walking and not subzone("Death's Breach")
Successfully Steal a Horse |q 12680/1 |goto 52.51,34.61
|tip Use the "Deliver Stolen Horse" ability next to Salanar the Horseman.
|tip He walks back and forth along this path.
stickystop "Slay_Scarlet_Crusaders"
stickystop "Citizens_Of_Havenshire"
stickystop "Saronite_Arrows"
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.51,34.61
accept Into the Realm of Shadows##12687 |goto 52.51,34.61
step
kill Dark Rider of Acherus##28768+
|tip They ride around on dark colored horses with horns and white glowing feet.
|tip You can find them all around the Havenshire area.
clicknpc Acherus Deathcharger##28302
|tip The horse next to you that the Dark Rider of Acherus was riding on.
Steal an Acherus Deathcharger |invehicle |goto 54.27,44.54 |q 12687
step
Watch the dialogue
|tip Use the "Horseman's Call" ability on your action bar.
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.51,34.61
step
_NOTE:_
You Can Now Mount Up
|tip You just earned your ground mount.
|tip When you need to travel now, you can use your mount to move faster.
|tip Press Shift+P to open your Mounts window and move your horse to your action bar.
Click Here to Continue |confirm |q 12678
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
stickystart "Saronite_Arrows"
step
click Abandoned Mail##190917
|tip It looks like a rolled up scroll on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
|tip They look like human soldiers with red and white armor, or civilians chopping wood.
|tip You can find them all around the northern part of the Havenshire area. |notinsticky
Slay #10# Scarlet Crusaders |q 12678/1 |goto 55.17,43.39
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 57.10,47.55
|tip They look like humans running south.
|tip You can find them all around the southern part of the Havenshire area. |notinsticky
step
label "Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like green glowing arrows stuck in the ground around this area.
|tip You can find them all around the northern and southern parts of the Havenshire area. |notinsticky
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 57.10,47.55
step
Follow the path up to Death's Breach |goto 51.60,42.66 < 60 |only if walking and not subzone("Death's Breach")
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 52.96,37.27
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.27,33.97
accept Gothik the Harvester##12697 |goto 52.27,33.97
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
use the Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They appear at the entrance of the mine, but you can find them throughout.
Gather _5_ Scarlet Ghouls
|tip The miners have a chance to become a friendly ghoul that will begin following you.
|tip Some of them may turn into ghosts and attack you.
Click Here Once You Have 5 Ghouls |confirm |c |goto 58.29,30.92 |q 12698
step
Leave the mine |goto 58.25,30.97 < 15 |walk |only if subzone("Havenshire Mine") and _G.IsIndoors()
Follow the path up to Death's Breach |goto 55.79,31.11 < 30 |only if not subzone("Death's Breach")
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
|tip Bring the ghouls to this location.
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.07,35.03
accept An Attack Of Opportunity##12700 |goto 54.07,35.03
step
talk Hargus the Gimp##28760
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hargus the Gimp##28760 |goto 52.90,35.21 |q 12700
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.27,33.97
accept Massacre At Light's Point##12701 |goto 52.27,33.97
step
click Inconspicuous Mine Car##190767
Hide in the Inconspicuous Mine Cart |invehicle |goto 58.52,33.00 |q 12701
step
Watch the dialogue
|tip A Scarlet Miner will bring you down to the beach in the cart.
Ride to the Scarlet Fleet Ship |outvehicle |goto 67.80,38.65 |q 12701 |notravel
step
click Scarlet Cannon##176216
|tip On the deck of the ship.
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to kill the soldiers on the beach nearby.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.73,39.01
step
Call for a Skeletal Gryphon |ontaxi |goto 67.73,39.01 |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|tip A skeletal gryphon will pick you up and fly you away.
step
Escape to Death's Breach |offtaxi |goto 52.57,34.45 |q 12701 |notravel
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.27,33.97
accept Victory At Death's Breach!##12706 |goto 52.27,33.97
step
clicknpc Scourge Gryphon##29501
Begin Flying to Acherus |ontaxi |goto 53.09,32.48 |q 12706
step
Fly Up to Archerus |offtaxi |goto 51.09,34.63 |q 12706 |notravel
step
talk Highlord Darion Mograine##28444
|tip On the upper floor of the floating building.
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12714
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12714 |notravel
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.46,36.56
accept The Crypt of Remembrance##12715 |goto 53.46,36.56
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.89,52.40
step
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Kill_Citizens_Of_New_Avalaon"
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12719
step
Enter the building |goto 53.20,71.01 < 10 |walk |only if not (subzone("New Avalon Town Hall") and _G.IsIndoors())
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
Leave the building |goto 53.20,71.01 < 10 |walk |only if subzone("New Avalon Town Hall") and _G.IsIndoors()
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12716
step
Enter the building |goto 61.46,60.73 < 15 |walk
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Enter the building |goto 57.68,64.37 < 10 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.86,61.84
step
use the Ornately Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |only if Frost
collect Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720 |only if Frost
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
|tip Equip both of Keleseth's Persuaders in your bag. |only if Frost
|tip Equip the Keleseth's Persuader in your bag. |only if Blood or Unholy
step
Leave the building |goto 57.68,64.37 < 10 |walk |only if subzone("New Avalon") and _G.IsIndoors()
Kill Scarlet enemies around this area
|tip They look like soldiers with red and white armor.
|tip You can find them all around the New Avalon area. |notinsticky
|tip Try not to kill them too fast.
|tip Stop attacking when they start talking.
|tip Eventually one of the enemies will give you information.
|tip You must have Keleseth's Persuader weapon(s) equipped to get the enemies to talk to you.
Reveal the "Crimson Dawn" |q 12720/1 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 12720
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
|tip They look like soldiers with red and white armor.
|tip You can find them all around the New Avalon area. |notinsticky
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
label "Collect_Crusader_Skulls"
Kill enemies around this area
|tip You can kill soldiers or civilians.
|tip You can find them all around the New Avalon area. |notinsticky
collect 10 Crusader Skull##39328 |q 12716/3 |goto 56.75,67.50
You can find more around [56.27,75.81]
step
label "Kill_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 56.75,67.50
|tip They look like human civilians in regular clothes.
|tip They are mostly inside the buildings.
|tip You can find them all around the New Avalon area. |notinsticky
You can find more around [56.27,75.81]
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.89,52.40
accept Noth's Special Brew##12717 |goto 55.89,52.40
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
click Plague Cauldron##190936
|tip Turn in the "More Skulls For Brew!" quest to get more potions of Noth's Special Brew.
|tip Keep doing this until you don't have enough skulls to get more potions.
Create More Noth's Special Brew |complete itemcount(39328) < 20 |goto 56.15,51.98
|only if itemcount(39328) >= 20
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crusader Skull##39328
step
Enter the crypt and run down the stairs |goto 54.11,58.14 < 10 |walk |only if not (subzone("Crypt of Remembrance") and _G.IsIndoors())
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs and leave the crypt |complete not (subzone("Crypt of Remembrance") and _G.IsIndoors()) |goto 54.34,58.13 |q 12716
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Enter the building |goto 61.10,68.06 < 15 |walk |only if not (subzone("Scarlet Hold") and _G.IsIndoors())
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
|tip Downstairs in the building.
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It appears on the ground where you killed High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table.
|tip Upstairs inside the building, in a large room.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto 62.99,68.31
step
Leave the building |goto 61.10,68.06 < 15 |walk |only if subzone("Scarlet Hold") and _G.IsIndoors()
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.97,81.95
accept A Special Surprise##12742 |goto 52.97,81.95 |only Human
accept A Special Surprise##12743 |goto 52.97,81.95 |only NightElf
accept A Special Surprise##12744 |goto 52.97,81.95 |only Dwarf
accept A Special Surprise##12745 |goto 52.97,81.95 |only Gnome
accept A Special Surprise##12746 |goto 52.97,81.95 |only Draenei
accept A Special Surprise##12739 |goto 52.97,81.95 |only Tauren
accept A Special Surprise##12747 |goto 52.97,81.95 |only BloodElf
accept A Special Surprise##12748 |goto 52.97,81.95 |only Orc
accept A Special Surprise##12749 |goto 52.97,81.95 |only Troll
accept A Special Surprise##12750 |goto 52.97,81.95 |only Scourge
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Valok the Righteous##29070 |q 12746/1 |goto 54.55,83.42
|only Draenei
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.25,83.91
|only NightElf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.93,83.81
|only Gnome
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.53,83.79
|only Human
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54.02,83.28
|only Dwarf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.51,83.87
|only Tauren
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.29
|only BloodElf
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|only Orc
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.77
|only Troll
step
Enter the building |goto 54.47,83.15 < 10 |walk
Watch the dialogue
|tip Inside the building.
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|only Scourge
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.97,81.95 |only Human
turnin A Special Surprise##12743 |goto 52.97,81.95 |only NightElf
turnin A Special Surprise##12744 |goto 52.97,81.95 |only Dwarf
turnin A Special Surprise##12745 |goto 52.97,81.95 |only Gnome
turnin A Special Surprise##12746 |goto 52.97,81.95 |only Draenei
turnin A Special Surprise##28649 |goto 52.97,81.95 |only Worgen
turnin A Special Surprise##12739 |goto 52.97,81.95 |only Tauren
turnin A Special Surprise##12747 |goto 52.97,81.95 |only BloodElf
turnin A Special Surprise##12748 |goto 52.97,81.95 |only Orc
turnin A Special Surprise##12749 |goto 52.97,81.95 |only Troll
turnin A Special Surprise##12750 |goto 52.97,81.95 |only Scourge
turnin A Special Surprise##28650 |goto 52.97,81.95 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.97,81.95
step
Enter the building |goto 56.14,79.97 < 10 |walk
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
use the Makeshift Cover##39645
Watch the dialogue
|tip A Scarlet Courier walks up to you on a horse.
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down to the beach |goto 60.63,80.73 < 70 |only if walking and not subzone("King's Harbor")
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up back to the orchard |goto 62.92,85.10 < 50 |only if walking
Enter the building |goto 56.14,79.97 < 10 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
Watch the dialogue
|tip Orbaz Bloodbane will create a portal.
|tip Upstairs inside the building.
click Portal to Acherus##8046
Return to Acherus |complete subzone("Acherus: The Ebon Hold") |goto 56.18,80.04 |q 12757
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of the floating building.
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488
|tip On the upper floor of the floating building.
Begin Flying to Death's Breach |ontaxi |goto 50.96,36.15 |q 12778
step
Fly Down to Death's Breach |offtaxi |goto 53.20,31.14 |q 12778 |notravel
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Frostbrood Vanquisher |invehicle |q 12779
stickystart "Kill_Scarlet_Soldiers_12779"
step
kill Scarlet Ballista##29104+
|tip They look like large brown wooden crossbow machines.
|tip They are up on the walls or on the ground all around the New Avalon area.
|tip Use the abilities on your action bar.
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 57.70,59.97
You can find more around [57.72,70.29]
step
label "Kill_Scarlet_Soldiers_12779"
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 57.72,70.29
|tip They look like humans wearing red and white armor.
|tip You can find them all around the New Avalon area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |complete subzone("Death's Breach") |goto 53.57,36.85 |q 12779
|tip Fly back to Death's Breach manually with the dragon.
|tip Don't click the red arrow to stop controlling the dragon until you get back to Death's Breach.
step
Release the Frostbrood Vanquisher |outvehicle |goto 53.57,36.85 |q 12779
|tip Click the red arrow on your action bar.
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
talk Hargus the Gimp##28760
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hargus the Gimp##28760 |goto 52.90,35.21 |q 12800
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crusader Skull##39328
step
Run through the tunnel |goto 49.08,28.31 < 20 |only if walking and not subzone("Browman Mill")
Follow the path down |goto 39.91,19.41 < 30 |only if walking and not subzone("Browman Mill")
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then another player already started the battle.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, then another player already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here Once the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
|tip Highlord Darion Mograine will start yelling when the battle is beginning.
step
Kill enemies around this area
|tip Follow your allies into battle and help them fight.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
cast Death Gate##50977
|tip Click the purple portal that appears nearby.
Return to Acherus |complete subzone("Acherus: The Ebon Hold") |q 13165
step
talk Highlord Darion Mograine##29173
|tip On the bottom floor of the floating building.
turnin Taking Back Acherus##13165 |goto Eastern Plaguelands 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto Eastern Plaguelands 83.44,49.46
stickystart "Slay_Scourge_13166"
step
Walk onto the teleport pad to go to the upper floor |goto 83.19,48.90 < 7 |walk
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
|tip He looks like a larger abomination that walks around this area.
|tip On the upper floor of the floating building.
step
label "Slay_Scourge_13166"
Kill enemies around this area
|tip On the upper floor of the floating building. |notinsticky
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
Walk onto the teleport pad to go to the bottom floor |goto 83.28,49.12 < 7 |walk
talk Highlord Darion Mograine##31084
|tip On the bottom floor of the floating building.
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46
step
clicknpc Portal to Stormwind##103186
|tip On the bottom floor of the floating building.
Teleport to Stormwind City |complete zone("Elwynn Forest") |goto 83.66,51.35 |q 13188
step
Enter Stormwind Keep |goto Stormwind City 80.60,37.89 < 15 |walk
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City 79.99,38.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Howling Fjord (69-71)",{
author="support@zygorguides.com",
condition_suggested=function() return level >= 69 and level <= 71 and not completedq(11239) end,
next="Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",
},[[
step
talk Macalroy##23547
|tip He walks around this area.
accept Hell Has Frozen Over...##11228 |goto Howling Fjord 61.05,62.60
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Hell Has Frozen Over...##11228 |goto 60.50,61.19
accept If Valgarde Falls...##11243 |goto 60.50,61.19
step
talk Torik##26901
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Torik##26901 |goto 60.10,61.30 |q 11243
step
Kill Dragonflayer enemies around this area
|tip They look like large humans and wolves.
|tip They continually attack near this location.
Slay #12# Dragonflayer Invaders |q 11243/1 |goto 58.93,59.60
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin If Valgarde Falls...##11243 |goto 60.50,61.19
accept Rescuing the Rescuers##11244 |goto 60.50,61.19
step
click Ceremonial Dragonflayer Harpoon##186565+
|tip They look like poles sticking out of the ground around this area.
Rescue #8# Valgarde Scouts |q 11244/1 |goto 58.40,56.21
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Rescuing the Rescuers##11244 |goto 60.50,61.19
accept Prisoners of Wyrmskull##11255 |goto 60.50,61.19
step
talk Beltrand McSorf##23548
|tip He walks around this area.
accept The Human League##11273 |goto 60.17,61.03
step
talk Thoralius the Wise##23975
|tip He walks around this area.
accept Into the World of Spirits##11333 |goto 59.80,61.48
step
Enter the building |goto 58.62,62.94 < 10 |walk
talk Innkeeper Hazel Lagras##23731
|tip Inside the building.
home Valgarde |goto 58.39,62.45
step
Leave the building |goto 58.62,62.94 < 10 |walk |only if subzone("Valgarde") and _G.IsIndoors()
talk Pricilla Winterwind##23736
fpath Valgarde Port |goto 59.79,63.24
step
talk Guard Captain Zorek##23728
accept The Path to Payback##11420 |goto 60.12,62.43
step
click Reagent Pouch##186662
|tip Underwater, on the deck of the ship.
collect Reagent Pouch##6652 |q 11333/1 |goto 62.06,57.62
step
talk Thoralius the Wise##23975
|tip He walks around this area.
turnin Into the World of Spirits##11333 |goto 59.80,61.48
accept The Echo of Ymiron##11343 |goto 59.80,61.48
stickystart "Rescue_Captured_Valgarde_Prisoners"
step
Enter the building |goto 58.91,54.41 < 10 |walk
talk Pulroy the Archaeologist##24122
|tip Inside the building.
turnin The Human League##11273 |goto 59.18,54.57
accept Zedd's Probably Dead##11274 |goto 59.18,54.57
step
use the Incense Burner##33637
|tip Use it in the doorway of the building.
Enter the Spirit World |havebuff Echo of Ymiron##135867 |goto 60.25,51.33 |q 11343
step
Watch the dialogue
|tip Inside the building.
Uncover the Secrets of the Wyrmskull |q 11343/1 |goto 60.16,50.87
step
label "Rescue_Captured_Valgarde_Prisoners"
Kill Dragonflayer enemies around this area
collect Dragonflayer Cage Key##33308+ |n
click Dragonflayer Cages
|tip They looke like metal cages on the ground and inside buildings around this area.
Rescue #3# Captured Valgarde Prisoners |q 11255/1 |goto 58.26,52.96
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Prisoners of Wyrmskull##11255 |goto 60.47,61.13
accept Dragonflayer Battle Plans##11290 |goto 60.47,61.13
step
talk Torik##26901
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Torik##26901 |goto 60.10,61.30 |q 11290
step
talk Thoralius the Wise##23975
turnin The Echo of Ymiron##11343 |goto 59.80,61.48
accept Anguish of Nifflevar##11344 |goto 59.80,61.48
step
talk Zedd##24145
turnin Zedd's Probably Dead##11274 |goto 56.63,52.38
accept And Then There Were Two...##11276 |goto 56.63,52.38
step
Enter the cave |goto 56.24,52.72 < 15 |walk
click Dragonflayer Battle Plans##186618
|tip Inside the cave.
collect Dragonflayer Battle Plans##33488 |q 11290/1 |goto 55.68,52.58
step
Jump up the rocks and jump across to the gap near the bridge |goto 56.14,52.50 < 7 |only if walking and not subzone("Utgarde Catacombs")
Enter the cave and follow the spiral path down |goto 56.60,48.95 < 15 |walk |only if not subzone("Utgarde Catacombs")
talk Glorenfeld##24150
|tip Inside the cave, on the top level.
turnin And Then There Were Two...##11276 |goto 56.94,53.75
accept The Depths of Depravity##11277 |goto 56.94,53.75
stickystart "Collect_Wyrmskull_Tablets"
step
Follow the path |goto 57.13,55.67 < 10 |walk
click Harpoon Operation Manual##186828
|tip Inside the cave, on the top level.
collect Harpoon Operation Manual##34031 |q 11420/1 |goto 59.26,55.38
step
talk Ares the Oathbound##24189
|tip Inside the cave, on the top level.
accept The Shining Light##11288 |goto 59.34,55.42
step
Run down the stairs to the bottom level of the cave |goto 56.97,56.32 < 15 |walk
click Sacred Artifact##186607
|tip Downstairs inside the cave, on the bottom level.
|tip You can run through the ghouls, they won't attack you, since you have the "Shining Light" buff.
|tip HURRY, this quest is timed!
collect Sacred Artifact##33485 |q 11288/1 |goto 56.65,53.43
step
Run up the stairs to the top level of the cave |goto 57.06,56.85 < 15 |walk
talk Ares the Oathbound##24189
|tip Inside the cave, on the top level.
|tip HURRY, this quest is timed!
turnin The Shining Light##11288 |goto 59.34,55.42
accept Guided by Honor##11289 |goto 59.34,55.42
step
label "Collect_Wyrmskull_Tablets"
click Wyrmskull Tablet##186595
|tip They look like broken stone tablets laying on the ground all around inside this cave.
|tip They are only on the top and middle levels of the cave.
collect 10 Wyrmskull Tablet##33355 |q 11277/1 |goto 57.32,56.36
step
Follow the path |goto 57.14,55.75 < 10 |walk
talk Glorenfeld##24150
|tip Inside the cave, on the top level.
turnin The Depths of Depravity##11277 |goto 56.94,53.75
accept The Ring of Judgement##11299 |goto 56.94,53.75
step
Run down the stairs to the middle level of the cave |goto 56.98,56.32 < 15 |walk
talk Daegarn##24151
|tip Inside the cave, on the middle level.
turnin The Ring of Judgement##11299 |goto 55.70,57.37
accept Stunning Defeat at the Ring##11300 |goto 55.70,57.37
step
Kill the enemies that attack in waves
|tip Inside the cave, on the middle level.
kill Oluf the Violent##23931
click Ancient Cipher##186640
|tip It looks like a green stone block that appears on the ground after you kill Oluf the Violent.
collect Ancient Cipher##33545 |q 11300/1 |goto 55.02,57.49
step
Run up the stairs to the top level of the cave |goto 56.41,56.55 < 15 |walk
talk Glorenfeld##24150
|tip Inside the cave, on the top level.
turnin Stunning Defeat at the Ring##11300 |goto 56.94,53.75
accept Return to Valgarde##11278 |goto 56.94,53.75
step
use the Hearthstone##6948
Hearth to Valgarde |goto 58.39,62.51 < 30 |noway |c |q 11278
|only if subzone("Utgarde Catacombs")
step
talk Lord Irulon Trueblade##24191
turnin Guided by Honor##11289 |goto 59.74,62.43
step
talk Guard Captain Zorek##23728
turnin The Path to Payback##11420 |goto 60.11,62.43
accept Locating the Mechanism##11426 |goto 60.11,62.43
step
talk Vice Admiral Keller##23546
|tip He walks around this area.
turnin Dragonflayer Battle Plans##11290 |goto 60.47,61.07
accept To Westguard Keep!##11291 |goto 60.47,61.07
step
talk Beltrand McSorf##23548
|tip He walks around this area.
turnin Return to Valgarde##11278 |goto 60.18,61.03
accept The Explorers' League Outpost##11448 |goto 60.18,61.03
step
talk Torik##26901
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Torik##26901 |goto 60.10,61.30 |q 11448
step
kill Dragonflayer Harpooner##24635+
collect Harpoon Control Mechanism##34032 |q 11426/1 |goto 60.16,53.40
step
talk Guard Captain Zorek##23728
turnin Locating the Mechanism##11426 |goto 60.12,62.42
accept Meet Lieutenant Icehammer...##11427 |goto 60.12,62.42
step
talk Guard Captain Zorek##23728
Tell him _"Take me to Lieutenant Icehammer, Zorek!"_
Begin Flying to Lieutenant Icehammer |ontaxi |goto 60.12,62.42 |q 11427
step
Fly to Lieutenant Icehammer |offtaxi |goto 64.88,46.29 |q 11427 |notravel
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Meet Lieutenant Icehammer...##11427 |goto 64.43,46.95
accept Drop It then Rock It!##11429 |goto 64.43,46.95
step
use the Alliance Banner##34051
Place the Alliance Banner |q 11429/1 |goto 64.89,40.10
step
Kill the enemies that attack in waves
Defend the Alliance Banner |q 11429/2 |goto 64.89,40.10
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Drop It then Rock It!##11429 |goto 64.43,46.95
accept Harpoon Master Yavus##11430 |goto 64.43,46.95
step
Enter the building |goto 66.48,55.61 < 20 |walk
kill Harpoon Master Yavus##24644 |q 11430/1 |goto 65.15,56.58
|tip Inside the building.
step
use the Incense Burner##33774
Enter the Spirit World |havebuff Echo of Ymiron##135867 |goto 68.81,54.85 |q 11344
step
Watch the dialogue
Uncover the Secrets of Nifflevar |q 11344/1 |goto 68.81,54.85
step
talk Stanwad##24717
turnin The Explorers' League Outpost##11448 |goto 74.95,65.41
accept Problems on the High Bluff##11474 |goto 74.95,65.41
step
talk Everett McGill##26934
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Everett McGill##26934 |goto 75.00,65.19 |q 11474
step
talk Walt##24807
turnin Problems on the High Bluff##11474 |goto 75.05,65.51
accept Tools to Get the Job Done##11475 |goto 75.05,65.51
step
talk Hidalgo the Master Falconer##24750
accept Trust is Earned##11460 |goto 75.27,64.97
step
click Loose Rock##250424+
|tip They look like flat grey stones on the ground around this area.
collect Fjord Grub##34102 |q 11460 |goto 75.81,64.56
step
clicknpc Rock Falcon##24752
|tip Inside the cage.
Choose _<Feed the grub to the rock falcon.>_
Feed the Fjord Rock Falcon |q 11460/1 |goto 75.27,64.91
step
talk Hidalgo the Master Falconer##24750
turnin Trust is Earned##11460 |goto 75.27,64.97
accept The Ransacked Caravan##11465 |goto 75.27,64.97
step
talk Donny##24811
|tip On the wooden platform.
accept Out of My Element?##11477 |goto 78.81,48.87
stickystart "Kill_Iron_Rune_Laborers"
stickystart "Kill_Iron_Rune_Sages"
stickystart "Kill_Iron_Rune_Destroyers"
step
click Building Tools##186950
|tip On the wooden platform.
collect Building Tools##34131 |q 11475/1 |goto 79.00,47.56
step
label "Kill_Iron_Rune_Laborers"
kill 5 Iron Rune Laborer##23711 |q 11477/2 |goto 79.20,47.79
step
label "Kill_Iron_Rune_Sages"
kill 2 Iron Rune Sage##23674 |q 11477/3 |goto 79.20,47.79
step
label "Kill_Iron_Rune_Destroyers"
Follow the path up |goto 79.52,48.66 < 30 |only if walking
kill 10 Iron Rune Destroyer##23676 |q 11477/1 |goto 77.19,48.44
|tip There are many of them along the top of the cliff here. |notinsticky
step
talk Donny##24811
turnin Out of My Element?##11477 |goto 78.81,48.87
step
talk Everett McGill##26934
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Everett McGill##26934 |goto 75.00,65.19 |q 11475
step
talk Walt##24807
turnin Tools to Get the Job Done##11475 |goto 75.05,65.51
accept We Can Rebuild It##11483 |goto 75.05,65.51
accept We Have the Technology##11484 |goto 75.05,65.51
stickystart "Collect_Fjord_Grubs"
step
Kill Shoveltusk enemies around this area
collect Pristine Shoveltusk Hide##34136 |q 11484/1 |goto 70.96,64.09
step
label "Collect_Fjord_Grubs"
click Loose Rock##250424+
|tip They look like flat grey stones on the ground around this area.
collect 5 Fjord Grub##34102 |q 11465 |goto 75.51,65.77
You can find more around:
[75.51,65.76]
[75.54,66.77]
[74.46,66.32]
[75.96,67.46]
step
use the Trained Rock Falcon##34111
|tip Use it on Fjord Turkeys around this area.
|tip You will be attacked each time you capture a turkey.
collect 5 Fjord Turkey##34112 |q 11465/1 |goto 68.84,68.76
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin Harpoon Master Yavus##11430 |goto 64.43,46.95
accept It Goes to 11...##11421 |goto 64.43,46.95
stickystart "Collect_Steel_Ribbing"
step
click Industrial Strength Rope##186955
|tip Outside the building.
collect Industrial Strength Rope##34134 |q 11483/2 |goto 64.74,40.97
step
label "Collect_Steel_Ribbing"
Kill Winterskorn enemies around this area
collect Steel Ribbing##34137 |q 11484/2 |goto 65.17,40.23
step
click Large Barrel##186954
|tip Outside the building.
collect Large Barrel##34133 |q 11483/1 |goto 67.58,52.25
step
use the Harpoon Control Mechanism##34032
|tip Use it next to the big metal harpoon gun.
Control the Harpoon |invehicle |goto 64.77,52.67 |q 11421
stickystart "Kill_Dragonflayer_Defenders"
step
Destroy the Dragonflayer Longhouse |q 11421/2 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building farthest to the right across the water.
step
Destroy the Dragonflayer Dockhouse |q 11421/3 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the middle building across the water.
step
Destroy the Dragonflayer Storage Facility |q 11421/4 |goto 64.8,52.7
|tip Use the Fiery Harpoon ability on your action bar.
|tip It's the building farthest to the left across the water.
step
label "Kill_Dragonflayer_Defenders"
kill 8 Dragonflayer Defender##24533 |q 11421/1 |goto 64.8,52.7
|tip Use the Fiery Lance ability on your action bar on Dragonflayer Defenders.
|tip They will attack you after you destroy each building.
step
Stop Controlling the Harpoon |outvehicle |q 11421
|tip Click the yellow arrow on your action bar.
step
talk Lieutenant Icehammer##24634
|tip Inside the building.
turnin It Goes to 11...##11421 |goto 64.43,46.95
accept Let's Go Surfing Now##11436 |goto 64.43,46.95
step
click Large Harpoon Lever##186894
Go Harpoon Surfing |q 11436/1 |goto 65.23,57.20
step
talk Guard Captain Zorek##23728
turnin Let's Go Surfing Now##11436 |goto 60.12,62.43
step
talk Thoralius the Wise##23975
turnin Anguish of Nifflevar##11344 |goto 59.80,61.49
step
talk Torik##26901
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Torik##26901 |goto 60.10,61.30 |q 11448
step
talk McGoyver##24040
|tip He walks around this area.
Tell him _"Walt sent me to pick up some dark iron ingots."_
collect Dark Iron Ingots##34135 |q 11483/3 |goto 60.78,61.53
step
talk McGoyver##24040
|tip He walks around this area.
Tell him _"Official Explorers' League business, McGoyver. Take me to the Explorers' League Outpost!"_
Begin Flying to the Explorers' League Outpost |ontaxi |goto 60.77,61.52 |q 11483
step
Fly to the Explorers' League Outpost |offtaxi |goto 74.68,65.31 |q 11483
step
talk Walt##24807
turnin We Can Rebuild It##11483 |goto 75.05,65.51
turnin We Have the Technology##11484 |goto 75.05,65.51
accept Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11485
step
Master the Rocket Jump |q 11485/1 |goto 75.15,65.43
|tip Use the Rocket Jump ability on your action bar.
step
Stop Wearing the Golem Suit |outvehicle |q 11485
|tip Click the yellow arrow on your action bar.
step
talk Hidalgo the Master Falconer##24750
turnin The Ransacked Caravan##11465 |goto 75.27,64.97
accept Falcon Versus Hawk##11468 |goto 75.27,64.97
step
talk Walt##24807
turnin Iron Rune Constructs and You: Rocket Jumping##11485 |goto 75.05,65.51
accept Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11489
step
Collect Test Data |q 11489/1 |goto 74.81,65.74
|tip Use the Collect Data ability on your action bar next to the blue crystal.
step
Stop Wearing the Golem Suit |outvehicle |q 11489
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: Collecting Data##11489 |goto 75.05,65.51
accept Iron Rune Constructs and You: The Bluff##11491 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11491
step
Watch the dialogue
|tip Walk to this location and stand on the rug on the ground.
Bluff Lebronski |q 11491/1 |goto 74.8,65.3
|tip Use the Bluff ability on your action bar on Lebronski when he starts talking.
step
Stop Wearing the Golem Suit |outvehicle |q 11491
|tip Click the yellow arrow on your action bar.
step
talk Walt##24807
turnin Iron Rune Constructs and You: The Bluff##11491 |goto 75.05,65.51
accept Lightning Infused Relics##11494 |goto 75.05,65.51
accept The Delicate Sound of Thunder##11495 |goto 75.05,65.51
step
click Work Bench##186958
Choose _<Get on the work bench and let Walt put you in the golem suit.>_
Wear the Golem Suit |invehicle |goto 75.11,65.51 |q 11494
stickystart "Collect_Iron_Rune_Data"
step
Follow the path down into Bael'gun's Excavation Site |goto 72.71,67.68 < 30 |walk
Rocket Jump on the Middle Rune |goto 72.12,70.39
|tip On the wooden platform.
|tip Use the Rocket Jump ability on your action bar on the middle rune on the ground.
Rocket Jump to the Lower Level |goto 74.33,70.82 < 15 |noway |c |q 11495
step
Enter the cave |goto 73.40,70.47 < 15 |walk
Watch the dialogue
|tip Inside the cave.
|tip This quest seems a little buggy.
|tip Run around this small area inside the cave, trying every spot, until the dialogue starts.
Investigate the Thundering Cave |q 11495/1 |goto 71.56,69.37
step
label "Collect_Iron_Rune_Data"
Follow the path up toward the cave exit |goto 71.25,69.83 < 10 |walk |only if subzone("Bael'gun's Excavation Site") and _G.IsIndoors()
Leave the cave |goto 71.45,72.38 < 15 |walk |only if subzone("Bael'gun's Excavation Site") and _G.IsIndoors()
Collect #15# Iron Rune Data |q 11494/1 |goto 73.46,73.05
|tip You can jump down to the ground in the golem suit without dying.
|tip Use the Collect Data ability on your action bar next to the blue crystals on the ground around this area.
|tip Use the Bluff ability on your action bar to get rid of any suspicious dwarves you encounter.
step
Rocket Jump on the Rune |goto 73.19,73.38
|tip On the wooden platform.
|tip Use the Rocket Jump ability on your action bar on the middle rune on the ground.
Return to the Top of the Excavation Site |goto 72.12,70.41 < 15 |noway |c |q 11494
step
Stop Wearing the Golem Suit |outvehicle |q 11494
|tip Get to a safe spot first.
|tip Click the yellow arrow on your action bar.
step
click Loose Rock##250424
|tip They look like grey stones on the ground around this area.
collect 10 Fjord Grub##34102 |q 11468 |goto 69.06,69.95
step
use the Trained Rock Falcon##34121
|tip Use it on Fjord Hawks around this area.
|tip Most of them are flying above you around this area.
collect 10 Fjord Hawk##34120 |q 11468/1 |goto 70.40,66.75
Hawks rest near the ground at these locations:
[73.89,56.55]
[70.89,63.23]
[74.21,59.52]
[68.04,63.88]
[68.59,68.71]
[69.30,72.19]
step
talk Hidalgo the Master Falconer##24750
turnin Falcon Versus Hawk##11468 |goto 75.27,64.97
accept There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
talk Everett McGill##26934
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Everett McGill##26934 |goto 75.00,65.19 |q 11470
step
talk Walt##24807
turnin Lightning Infused Relics##11494 |goto 75.05,65.51
turnin The Delicate Sound of Thunder##11495 |goto 75.05,65.51
accept News From the East##11501 |goto 75.05,65.51
step
use the Trained Rock Falcon##34124
Control a Trained Falcon Hawk |havebuff 132210 |goto 76.66,67.67 |q 11470
step
collect 8 Fjord Hawk Egg##34123 |q 11470/1 |goto 76.7,67.7
|tip Use the Scavenge ability on your action bar.
|tip Use it next to the big white eggs in bird nests on the side of the cliff in front of your character.
|tip If your falcon gets killed by eagles, use the Trained Rock Falcon item again next to the Vrykul Hawk Roost, to control another one.
step
Stop Controlling a Trained Falcon Hawk |nobuff 132210 |q 11470
|tip Right-click the "Hawk Hunting" buff near your minimap.
step
talk Hidalgo the Master Falconer##24750
turnin There Exists No Honor Among Birds##11470 |goto 75.27,64.97
step
talk Everett McGill##26934
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Everett McGill##26934 |goto 75.00,65.19 |q 11501
step
talk Walt##24807
Tell him _"I'm ready to go, Walt."_
Begin Flying to Westguard Keep |invehicle |goto 75.05,65.51 |q 11501
step
Fly to Westguard Keep |outvehicle |goto 30.84,42.82 |q 11501 |notravel
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Chef Kettleblack##23773
|tip Inside the building.
accept Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin To Westguard Keep!##11291 |goto 28.84,44.13
turnin News From the East##11501 |goto 28.84,44.13
accept The Clutches of Evil##11157 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Greer Orehammer##23859
fpath Westguard Keep |goto 31.26,43.98
step
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
talk Cannoneer Ely##23770
accept One Size Does Not Fit All##11190 |goto 33.98,43.80
stickystart "Collect_Shoveltusk_Meat"
step
click Westguard Cannonball##186427+
|tip They look like grey round rocks on the ground around this area.
collect 10 Westguard Cannonball##33123 |q 11190/1 |goto 36.09,42.94
You can find more around:
[35.61,43.79]
[36.69,45.48]
[36.12,44.57]
[34.95,41.41]
[35.55,40.59]
[36.70,40.61]
[37.89,43.93]
[38.32,44.68]
[35.10,47.96]
step
label "Collect_Shoveltusk_Meat"
Kill Shoveltusk enemies around this area
|tip They look like buffalo.
collect 6 Shoveltusk Meat##33120 |q 11155/1 |goto 35.82,42.81
stickystart "Destroy_Proto_Drake_Eggs"
stickystart "Kill_Proto_Whelps"
step
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
accept Root Causes##11182 |goto 41.18,49.34
stickystart "Kill_Dragonflayer_Handlers"
step
Enter the building |goto 41.35,52.85 < 10 |walk
kill Skeld Drakeson##23940 |q 11182/2 |goto 41.46,52.35
|tip Inside the building.
step
label "Kill_Dragonflayer_Handlers"
kill 5 Dragonflayer Handler##23871 |q 11182/1 |goto 41.44,53.87
step
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
turnin Root Causes##11182 |goto 41.18,49.34
step
label "Destroy_Proto_Drake_Eggs"
kill Proto-Drake Egg##23777+
|tip They look like large white eggs.
|tip You can find them all around the Ember Clutch area.
Destroy #15# Proto-Drake Eggs |q 11157/1 |goto 38.72,49.54
step
label "Kill_Proto_Whelps"
kill 15 Proto-Whelp##23688 |q 11157/2 |goto 38.72,49.54
step
talk Cannoneer Ely##23770
turnin One Size Does Not Fit All##11190 |goto 33.98,43.79
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Chef Kettleblack##23773
|tip Inside the building.
turnin Shoveltusk Soup Again?##11155 |goto 31.17,40.84
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11501
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin The Clutches of Evil##11157 |goto 28.84,44.13
accept Mage-Lieutenant Malister##11187 |goto 28.84,44.13
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Mage-Lieutenant Malister##11187 |goto 28.94,44.19
accept Two Wrongs...##11188 |goto 28.94,44.19
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
use Malister's Frost Wand##33119
|tip Use it on Proto-Drakes.
|tip They look like dragons flying in the sky around this area.
kill 3 Proto-Drake##23689 |q 11188/1 |goto 38.86,50.35
step
Enter Westguard Keep |goto 32.70,43.38 < 30 |only if walking and not subzone("Westguard Keep")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.00 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Two Wrongs...##11188 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
accept Report to Scout Knowles##11199 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.00 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Sapper Steelring##23976
accept Danger! Explosives!##11218 |goto 29.11,41.78
step
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11218
step
Leave the Westguard Keep |goto 32.66,43.36 < 30 |only if walking and subzone("Westguard Keep")
talk Lunk-tusk##25233
accept Orfus of Kamagua##11573 |goto 32.28,46.79
step
talk Orfus of Kamagua##23804
turnin Orfus of Kamagua##11573 |goto 40.29,60.25
accept The Dead Rise!##11504 |goto 40.29,60.25
step
talk Scout Knowles##23906
turnin Report to Scout Knowles##11199 |goto 44.47,57.59
accept Mission: Eternal Flame##11202 |goto 44.47,57.59
step
use the Ever-burning Torches##33164
Destroy the Southwest Plague Tank |q 11202/1 |goto 48.26,55.94
step
use the Ever-burning Torches##33164
Destroy the Northwest Plague Tank |q 11202/2 |goto 47.95,52.96
step
use the Ever-burning Torches##33164
|tip Up on the cliff.
|tip Follow the path on the outskirts of Halgrind.
Destroy the Northeast Plague Tank |q 11202/3 |goto 51.29,50.09
step
use the Ever-burning Torches##33164
|tip Up on the cliff.
|tip Follow the path on the outskirts of Halgrind.
Destroy the Southeast Plague Tank |q 11202/4 |goto 51.55,57.73
step
talk Scout Knowles##23906
turnin Mission: Eternal Flame##11202 |goto 44.47,57.59
accept Mission: Package Retrieval##11327 |goto 44.47,57.59
step
click Apothecary's Package##186679
collect Apothecary's Package##33620 |q 11327/1 |goto 50.75,53.89
step
Follow the path to leave Halgrind |goto 48.85,57.63 < 30 |only if walking and subzone("Halgrind")
talk Scout Knowles##23906
turnin Mission: Package Retrieval##11327 |goto 44.47,57.59
accept Mission: Forsaken Intel##11328 |goto 44.47,57.59
step
Avoid New Agamand |goto 50.27,69.64 < 150 |only if walking and not subzone("Shield Hill")
click Mound of Debris##187022
|tip It looks like a pile of dirt.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.68,77.52
step
click Unlocked Chest##187023
|tip It looks like a small brown metal and wooden chest.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.23,76.98
step
click Long Tail Feather##187026
|tip It looks like a blue feather.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.79,79.39
step
click Cannonball##187027
|tip It looks like a grey boulder.
collect Windan's Clue##34225 |q 11504/4 |goto 61.97,80.06
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto 40.29,60.25
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto 25.02,56.97
accept Grezzix Spindlesnap##11508 |goto 25.02,56.97
accept Feeding the Survivors##11456 |goto 25.02,56.97
step
talk Kip Trawlskip##28197
fpath Kamagua |goto 24.66,57.77
step
talk Deniigi##27151
|tip In the doorway of the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Deniigi##27151 |goto 25.65,57.44 |q 11456
step
kill Island Shoveltusk##24681+
|tip They look like buffalo.
|tip The grey wolves will kill nearby Shoveltusks, so kill those too, if you need to.
|tip You can find them all around the Isle of Spears area.
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto 30.53,60.03
You can find more around:
[29.21,58.55]
[27.24,63.61]
[28.62,64.69]
[32.64,66.28]
[36.38,53.29]
[29.16,66.53]
[30.95,62.43]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Feeding the Survivors##11456 |goto 25.02,56.97
accept Arming Kamagua##11457 |goto 25.02,56.97
step
talk Deniigi##27151
|tip In the doorway of the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Deniigi##27151 |goto 25.65,57.44 |q 11457
step
kill Frostwing Chimaera##24673+
|tip They look like blue and white two-headed dragons.
collect 3 Chimaera Horn##34101 |q 11457/1 |goto 28.12,54.71
You can find more around [27.52,67.05]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Arming Kamagua##11457 |goto 25.02,56.97
accept Avenge Iskaal##11458 |goto 25.02,56.97
step
talk Deniigi##27151
|tip In the doorway of the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Deniigi##27151 |goto 25.65,57.44 |q 11458
step
Enter the underground building |goto 25.34,59.35 < 10 |walk
talk Caregiver Iqniq##27148
|tip Inside the building.
home Kamagua |goto 25.39,59.85
step
talk Grezzix Spindlesnap##24643
|tip On the small boat.
turnin Grezzix Spindlesnap##11508 |goto 23.08,62.66
accept Street "Cred"##11509 |goto 23.08,62.66
step
talk Lou the Cabin Boy##24896
|tip On the small canoe.
Tell him _"I don't have time for chit-chat, Lou. Take me to Scalawag Point."_
Begin Traveling to Scalawag Point |invehicle |goto 23.10,62.58 |q 11509
step
Watch the dialogue
|tip You will eventually travel to this location.
Travel to Scalawag Point |outvehicle |goto 35.51,82.40 |q 11509 |notravel
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto 35.09,80.94
accept "Scoodles"##11510 |goto 35.09,80.94
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto 35.60,80.22
step
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.75,79.58
step
kill "Scoodles"##24899
|tip It looks like an orca that swims in the water around this area.
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.85,84.12
step
use the Fish Bladder##34076
|tip This will allow you to breathe underwater for 3 minutes.
Gain Water Breathing |havebuff spell:44235 |q 11434
step
Swim through the small window underwater |goto 38.15,84.45 < 7 |walk
click Eagle Figurine##186886
|tip It looks like a small grey and blue stone bird statue.
|tip Underwater, inside the ship.
collect Eagle Figurine##34070 |q 11434/2 |goto 37.77,84.62
step
click Amani Vase##186885
|tip It looks like a grey stone jar.
|tip Underwater, inside the broken boat.
collect Amani Vase##34069 |q 11434/1 |goto 37.15,85.49
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto 35.60,80.22
accept The Fragrance of Money##11455 |goto 35.60,80.22
step
talk Taruk##24541
accept Gambling Debt##11464 |goto 36.32,80.48
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin "Scoodles"##11510 |goto 35.09,80.94
accept The Staff of Storm's Fury##11511 |goto 35.09,80.94
accept The Frozen Heart of Isuldof##11512 |goto 35.09,80.94
accept The Lost Shield of the Aesirites##11519 |goto 35.09,80.94
accept The Ancient Armor of the Kvaldir##11567 |goto 35.09,80.94
step
talk "Silvermoon" Harry##24539
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor "Silvermoon" Harry##24539 |goto 35.09,80.94 |q 11511
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
Tell him _"Taruk sent me to collect what you owe."_
kill "Silvermoon" Harry##24539
|tip Don't kill him, just get him to low health.
|tip You will eventually be able to talk to him again.
talk "Silvermoon" Harry##24539
Tell him _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto 35.09,80.94
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto 36.32,80.48
accept Jack Likes His Drink##11466 |goto 36.32,80.48
step
Enter the building |goto 35.28,80.22 < 10 |walk
talk Olga, the Scalawag Wench##24639
|tip Inside the building.
Tell her _"I'd like to buy Jack a drink. Perhaps something... extra strong."_
Click Here After You Buy Jack Adams a Drink |confirm |goto 35.31,79.59 |q 11466
step
Watch the dialogue
|tip Jack Adams will pass out on the table.
|tip Inside the building.
talk Jack Adams##24788
Choose _<Discreetly search the pirate's pockets for Taruk's payment.>_
collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.49,79.38
step
Leave the building |goto 35.28,80.22 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto 36.32,80.48
accept Dead Man's Debt##11467 |goto 36.32,80.48
step
Follow the road to leave Scalawag Point |goto 36.51,77.46 < 40 |only if walking and subzone("Scalawag Point")
kill Rabid Brown Bear##24633+
|tip They look like brown bears.
|tip You can find them all around the Garvan's Reef area.
collect 4 Bear Musk##34084 |q 11455/1 |goto 34.09,77.91
step
kill Big Roy##24785
|tip He looks like a big seal that swims in the water around this area.
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.40,78.62
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto 35.60,80.22
accept A Traitor Among Us##11473 |goto 35.60,80.22
step
talk Zeh'gehn##24525
turnin A Traitor Among Us##11473 |goto 35.56,80.63
accept Zeh'gehn Sez##11459 |goto 35.56,80.63
step
talk Handsome Terry##24537
turnin Zeh'gehn Sez##11459 |goto 35.60,80.22
accept A Carver and a Croaker##11476 |goto 35.60,80.22
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
buy Shiny Knife##35813 |n
collect Shiny Knife##35813 |q 11476/2 |goto 35.1,80.9
step
talk "Silvermoon" Harry##24539
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor "Silvermoon" Harry##24539 |goto 35.09,80.94 |q 11476
step
clicknpc Scalawag Frog##26503
|tip They look like blue and green frogs that hop around on the ground around this area.
collect Scalawag Frog##35803 |q 11476/1 |goto 35.56,81.81
step
talk Zeh'gehn##24525
turnin A Carver and a Croaker##11476 |goto 35.56,80.63
step
Watch the dialogue
talk Zeh'gehn##24525
accept "Crowleg" Dan##11479 |goto 35.56,80.63
step
Board the ship |goto 35.85,82.26 < 10 |only if walking
talk "Crowleg" Dan##24713
Tell him _"Ummm... the frog says you're a traitor, "matey.""_
kill "Crowleg" Dan##24713 |q 11479/1 |goto 35.95,83.60
step
talk Handsome Terry##24537
turnin "Crowleg" Dan##11479 |goto 35.60,80.22
accept Meet Number Two##11480 |goto 35.60,80.22
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip She walks around this area.
|tip Upstairs inside the building.
turnin Meet Number Two##11480 |goto 35.44,79.42
accept The Jig is Up##11471 |goto 35.44,79.42
step
Leave the building |goto 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.75,79.58
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin The Lost Shield of the Aesirites##11519 |goto 37.85,74.79
accept Mutiny on the Mercy##11527 |goto 37.85,74.79
step
_Downstairs Inside the Ship:_
kill Mutinous Sea Dog##25026+
|tip Downstairs, on the bottom deck, inside the pirate ship that sails around this area.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1
step
_On the Ship Desk:_
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
turnin Mutiny on the Mercy##11527
accept Sorlof's Booty##11529
step
clicknpc The Big Gun##24992
|tip At the front of the ship, on the top deck of the pirate ship that sails around this area.
|tip Keep clicking it repeatedly until Sorlof is dead on the shore.
kill Sorlof##24914
|tip He looks like a large tree that walks along the shore around this area.
click Sorlof's Booty##187238
|tip It looks like a yellow pile of gold that appears on the ground after Sorlof dies.
|tip Jump off the ship to loot it.
collect Sorlof's Booty##34468 |q 11529/1
step
Enter the cave |goto 33.57,75.64 < 10 |walk
kill "Mad" Jonah Sterling##24742
|tip He looks like a human wearing a red coat.
|tip He walks around this small area inside the cave.
|tip He eventually runs away and gets eaten by a large white bear on the bottom level of the cave.
|tip He is a level 70 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
Click Here After Killing "Mad" Jonah Sterling |confirm |goto 33.78,78.02 |q 11471
step
kill Hozzer##24547
|tip He looks like a large white bear.
|tip Downstairs inside the cave.
|tip He is a level 71 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
collect Jonah Sterling's Spyglass##34128 |q 11471/1 |goto 33.39,78.30
step
Follow the path up |goto 32.99,78.18 < 10 |walk
click The Frozen Heart of Isuldof##187032
|tip Downstairs inside the cave.
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.34,78.68
step
Follow the path back up and leave the cave |goto 33.57,75.64 < 10 |walk |only if subzone("Garvan's Reef") and _G.IsIndoors()
Follow the path up |goto 28.85,60.99 < 30 |only if walking
Cross the hanging bridge |goto 29.83,60.87 < 10 |only if walking
click Dirt Mound##186944
Watch the dialogue
Kill the enemies that attack
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.69,60.21
step
kill 8 Crazed Northsea Slaver##24676 |q 11458/1 |goto 33.71,63.84
step
Board the ship while being careful to avoid Abdul the Insane |goto 34.94,63.68 < 10 |only if walking
Wait for Adbul the Insane to walk to the top deck of the ship, then enter the ship here |goto 35.39,64.68 < 7 |walk
click The Staff of Storm's Fury##187033
|tip Downstairs inside the ship, on the bottom level.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.26,64.84
step
use the Hearthstone##6948
Hearth to Kamagua |complete subzone("Kamagua") |q 11511
|only if subzone("Iskaal")
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Avenge Iskaal##11458 |goto 25.02,56.97
step
talk Deniigi##27151
|tip In the doorway of the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Deniigi##27151 |goto 25.65,57.44 |q 11511
step
talk Anuniaq##24810
accept Travel to Moa'ki Harbor##12117 |goto 24.59,58.86 |or
accept Travel to Moa'ki Harbor##12118 |goto 24.59,58.86 |or
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip Upstairs inside the building.
turnin The Jig is Up##11471 |goto 35.41,79.43
step
Leave the building |goto 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto 36.32,80.48
step
talk Alanya##27933
Tell her _"Harry said I could take his bomber to Bael'gun's. I'm ready to go!"_
Begin Flying to Bael'gun's |invehicle |goto 36.09,81.60 |q 11567
step
Fly to Bael'gun's |outvehicle |goto 80.87,75.10 |q 11567 |notravel
step
Enter the ship |goto 82.26,74.77 < 10 |walk
click The Ancient Armor of the Kvaldir##187381
|tip It looks like a floating metal chest armor.
|tip Downstairs inside the ship.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.78,73.91
step
clicknpc Harry's Bomber##28277
Choose _<Get in the bomber and return to Scalawag Point.>_
Begin Flying Back to Scalawag Point |invehicle |goto 80.89,75.10 |q 11567 |or
step
Return to Scalawag Point |outvehicle |goto 36.07,81.68 |q 11567 |notravel
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin Sorlof's Booty##11529 |goto 37.85,74.79
accept The Shield of the Aesirites##11530 |goto 37.85,74.79
step
Ride the lift up |goto 42.07,67.71 < 15 |only if walking and (subzone("Scalawag Point") or subzone("Garvan's Reef") or subzone("Sorlof's Strand"))
talk Orfus of Kamagua##23804
turnin The Shield of the Aesirites##11530 |goto 40.29,60.25
turnin The Staff of Storm's Fury##11511 |goto 40.29,60.25
turnin The Frozen Heart of Isuldof##11512 |goto 40.29,60.25
turnin The Ancient Armor of the Kvaldir##11567 |goto 40.29,60.25
accept A Return to Resting##11568 |goto 40.29,60.25
step
use the Bundle of Vrykul Artifacts##34624
Return the Shield of Aesirites |q 11568/1 |goto 57.64,77.41
step
use the Bundle of Vrykul Artifacts##34624
Return the Staff of Storm's Fury |q 11568/2 |goto 59.30,77.20
step
use the Bundle of Vrykul Artifacts##34624
Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.78,79.40
step
use the Bundle of Vrykul Artifacts##34624
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 61.89,80.14
step
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto 40.29,60.25
accept Return to Atuik##11572 |goto 40.29,60.25
step
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto 25.02,56.97
step
talk Tipvigut##27145
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tipvigut##27145 |goto 24.87,57.70 |q 11218
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Mission: Forsaken Intel##11328 |goto 30.77,41.61
accept Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11330
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Click the Gate to open it and run down the stairs |goto 29.39,44.03 < 10 |walk
use Peppy's Special Mix##33627
|tip Use it on the Dragonflayer Vrykul Prisoner.
|tip Downstairs inside the building.
Administer Peppy's Mix to the Vrykul Prisoner |q 11330/1 |goto 29.46,43.40
step
Run up the stairs and leave the building |goto 29.18,43.75 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Enter the building |goto 30.90,41.91 < 10 |walk
talk Peppy Wrongnozzle##24283
|tip Inside the building.
turnin Absholutely... Thish Will Work!##11330 |goto 30.77,41.61
accept You Tell Him ...Hic!##11331 |goto 30.77,41.61
step
talk Innkeeper Celeste Goodhutch##23937
|tip Inside the building.
home Westguard Inn |goto 30.86,41.45
step
Leave the building |goto 30.90,41.91 < 10 |walk |only if subzone("Westguard Inn")
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin You Tell Him ...Hic!##11331 |goto 28.84,44.13
accept Mission: Plague This!##11332 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Greer Orehammer##23859
Tell him _"Greer, I need a gryphon to ride and some bombs to drop on New Agamand!"_
Begin Flying on the Bombing Mission |ontaxi |goto 31.26,43.98 |q 11332
step
use Orehammer's Precision Bombs##33634
|tip Use them on Plague Tanks as you fly.
|tip They look like large green carts on the ground around New Agamand.
Hit #5# Plague Tanks |q 11332/1 |goto 52.43,68.08 |notravel
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin Mission: Plague This!##11332 |goto 28.84,44.13
accept Operation: Skornful Wrath##11248 |goto 28.84,44.13
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Quartermaster Brevin##24494
accept Everything Must Be Ready##11406 |goto 30.63,42.79
step
talk Explorer Abigail##23978
accept Send Them Packing##11224 |goto 31.62,41.50
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
talk Watcher Moonleaf##24273
|tip On the wooden platform.
accept The Cleansing##11322 |goto 30.06,28.59
step
talk Engineer Feknut##24227
|tip He walks around this area.
|tip On the wooden platform.
accept Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
talk Overseer Irena Stonemantle##23891
|tip On the wooden platform.
accept See to the Operations##11176 |goto 30.28,28.64
accept Where is Explorer Jaren?##11393 |goto 30.28,28.64
step
talk Steel Gate Chief Archaeologist##24399
turnin See to the Operations##11176 |goto 30.81,28.56
accept I've Got a Flying Machine!##11390 |goto 30.81,28.56
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11390
step
Deliver #3# Sacks of Relics |q 11390/1 |goto 30.86,26.43
|tip Use the Grappling Hook ability on your action bar near Sacks of Relics on the ground.
|tip They look like huge white bags with yellow stuff in them on the ground around this area.
Deliver the Sacks of Relics to [30.74,27.75]
|tip Bring them up onto the hanging wooden scale above the dig site.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11390
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin I've Got a Flying Machine!##11390 |goto 30.81,28.56
accept Steel Gate Patrol##11391 |goto 30.81,28.56
step
_NOTE:_
Check For Gjalerbron Gargoyles
|tip Make sure there are gargoyles flying above the Steel Gate dig site nearby.
|tip They only appear when an event happens.
|tip If they are not there, you can't complete the "Steel Gate Patrol" quest.
|tip You can either wait for them to appear, or abandon the quest and skip it.
Click Here to Continue |confirm |q 11391
step
clicknpc Steel Gate Flying Machine##24418
Borrow the Steel Gate Flying Machine |invehicle |goto 30.88,28.19 |q 11391
step
kill 8 Gjalerbron Gargoyle##24440 |q 11391/1 |goto 30.86,26.43
|tip Use the abilities on your action bar.
|tip If they're not appearing, try to fly down closer to the ground inside the quarry.
|tip They appear as red dots on your minimap.
step
Stop Flying in the Steel Gate Flying Machine |outvehicle |goto 30.89,28.46 |q 11391
|tip Click the yellow arrow on your action bar.
step
talk Steel Gate Chief Archaeologist##24399
turnin Steel Gate Patrol##11391 |goto 30.81,28.56
stickystart "Collect_Whisper_Gulch_Gems"
stickystart "Send_Abandoned_Pack_Mules_Packing"
step
Follow the path down into Whisper Gulch |goto 33.83,33.80 < 30 |only if walking and not subzone("Whisper Gulch")
use Steelring's Foolproof Dynamite##33190
|tip Use it on Whisper Gulch Ore.
|tip They look like large dark colored mining nodes on the ground around this area in the canyon.
click Whisper Gulch Ore Fragment##186468+
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 6 Whisper Gulch Ore Fragment##33188 |q 11218/1 |goto 33.87,37.98
step
label "Collect_Whisper_Gulch_Gems"
use Steelring's Foolproof Dynamite##33190
|tip Use it on Whisper Gulch Ore.
|tip They look like large dark colored mining nodes on the ground around this area in the canyon.
click Whisper Gulch Gem##186467
|tip They appear after you use Steelring's Foolproof Dynamite on a mining node.
collect 18 Whisper Gulch Gem##33187 |q 11218/2 |goto 33.87,37.98
step
label "Send_Abandoned_Pack_Mules_Packing"
Perform the "Raise" Emote |script DoEmote("RAISE")
|tip Perform it on Abandoned Pack Mules around this area in the canyon.
|tip They look like donkeys with a bunch of supplies tied to them around this area in the canyon.
Send #10# Abandoned Pack Mules Packing |q 11224/1 |goto 33.5,36.1
step
Jump down carefully to leave Whisper Gulch |goto 30.36,36.55 < 10 |only if walking and subzone("Whisper Gulch")
Follow the shore to leave Whisper Gulch |goto 28.39,38.00 < 40 |only if walking and subzone("Whisper Gulch")
talk Explorer Jaren##23833
turnin Where is Explorer Jaren?##11393 |goto 24.25,32.46
accept And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
stickystart "Kill_Chillmere_Coast_Scourge"
step
Kill enemies around this area
collect Scourge Device##33961 |n
use the Scourge Device##33961
accept It's a Scourge Device##11395 |goto 22.73,31.08
step
talk Explorer Jaren##23833
turnin It's a Scourge Device##11395 |goto 24.25,32.46
accept Bring Down Those Shields##11396 |goto 24.25,32.46
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 22.69,31.17 |count 1
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 21.91,28.78 |count 2
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11396/1 |goto 21.51,24.63 |count 3
step
talk Old Icefin##24544
accept Trident of the Son##11422 |goto 19.78,22.21
step
label "Kill_Chillmere_Coast_Scourge"
Kill enemies around this area
|tip You can find them all around the Chillmere Coast area.
Kill #15# Chillmere Coast Scourge |q 11394/1 |goto 21.50,25.10
step
kill Rotgill##24546
|tip He looks like a white murloc that walks along the coast around this area.
collect Rotgill's Trident##34035 |q 11422/1 |goto 22.89,33.81
step
talk Explorer Jaren##23833
turnin And You Thought Murlocs Smelled Bad!##11394 |goto 24.25,32.46
turnin Bring Down Those Shields##11396 |goto 24.25,32.46
step
talk Old Icefin##24544
turnin Trident of the Son##11422 |goto 19.78,22.21
step
use the Hearthstone##6948
Hearth to Westguard Keep |complete subzone("Westguard Inn") |q 11218
|only if subzone("Chillmere Coast")
step
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11218
step
talk Sapper Steelring##23976
turnin Danger! Explosives!##11218 |goto 29.11,41.78
accept Leader of the Deranged##11240 |goto 29.11,41.78
step
talk Explorer Abigail##23978
turnin Send Them Packing##11224 |goto 31.62,41.50
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
Follow the path down into Whisper Gulch |goto 33.83,33.80 < 30 |only if walking
Enter the mine in Whisper Gulch |goto 31.35,35.38 < 20 |walk
kill Squeeg Idolhunter##24048 |q 11240/1 |goto 31.89,33.49
|tip He walks around this area inside the mine.
step
Jump onto the Ore Node |goto 31.58,33.26
|tip Inside the mine.
|tip Stand on this exact spot, on top of the ore node.
|tip Logout to your character selection screen, and then login with your character again.
|tip Logging out on this ore node will teleport you out of Whisper Gulch when you login again.
Teleport Out of Whisper Gulch |goto 37.78,28.73 < 50 |noway |c |q 11240
|only if subzone("Whisper Gulch") and havequest(11240)
step
talk Christopher Sloan##24056
accept I'll Try Anything!##11329 |goto 60.27,18.69
step
click Water Plant##186661+
|tip They look like brown-ish green bushes on the ground underwater around this area.
kill Northern Barbfish##24285+
|tip Not all of them will contain Northern Barbfish.
collect 5 Northern Barbfish##33628 |q 11329/1 |goto 62.39,19.26
step
talk Christopher Sloan##24056
turnin I'll Try Anything!##11329 |goto 60.27,18.69
accept The One That Got Away##11410 |goto 60.27,18.69
step
talk Lieutenant Maeve##24282
accept The Enigmatic Frost Nymphs##11302 |goto 61.82,17.19
step
talk James Ormsby##24061
fpath Fort Wildervar |goto 60.06,16.11
step
talk Foreman Colbey##24176
accept The Yeti Next Door##11284 |goto 60.18,15.62
step
talk Eldrim Mounder##24052
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Eldrim Mounder##24052 |goto 61.01,17.08 |q 11284
step
talk Trapper Jethan##24131
accept Preying Upon the Weak##11292 |goto 62.66,16.80
step
talk Gil Grisert##24139
turnin Everything Must Be Ready##11406 |goto 62.59,16.81
accept Down to the Wire##11269 |goto 62.59,16.81
step
talk Prospector Belvar##24328
accept The Book of Runes##11346 |goto 62.27,17.22
step
use the Fresh Barbfish Bait##34013
|tip Use it next to the Sunken Boat underwater.
kill Frostfin##24500 |q 11410/1 |goto 63.92,19.57
stickystart "Collect_Book_Of_Runes_Chapter_2"
stickystart "Collect_Book_Of_Runes_Chapter_3"
stickystart "Collect_Spotted_Hippogryph_Down"
step
Kill Iron Rune enemies around this area
|tip They look like dwarves wearing dark colored armor.
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 1##33778 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_2"
Kill Iron Rune enemies around this area |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 2##33779 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
label "Collect_Book_Of_Runes_Chapter_3"
Kill Iron Rune enemies around this area |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 3##33780 |goto 65.04,28.94 |q 11346
You can find more around [67.78,28.95]
step
use the Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11346/1
step
talk Lurielle##24117
turnin The Enigmatic Frost Nymphs##11302 |goto 61.48,22.86
accept Spirits of the Ice##11313 |goto 61.48,22.86
stickystop "Collect_Spotted_Hippogryph_Down"
step
kill Ice Elemental##23919+
|tip They look like small grey rock elementals.
|tip You can find them all around the Frozen Glade area.
collect 15 Icy Core##33605 |q 11313/1 |goto 60.85,22.08
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.48,22.86
accept The Fallen Sisters##11314 |goto 61.48,22.86
accept Wild Vines##11315 |goto 61.48,22.86
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Collect_Trapped_Prey"
stickystart "Kill_Scarlet_Ivy"
step
kill Chill Nymph##23678+
|tip Don't kill them, just weaken them to about half health.
use Lurielle's Pendant##33606
|tip Use it on weakened Chill Nymphs.
|tip They look like female centaurs.
|tip You can find them all around the Vibrant Glade area.
Free #7# Chill Nymphs |q 11314/1 |goto 51.57,27.61
step
label "Kill_Scarlet_Ivy"
kill 8 Scarlet Ivy##23763 |q 11315/1 |goto 51.57,27.61
|tip They look like large walking flowers.
|tip You can find them all around the Vibrant Glade area. |notinsticky
step
talk Lurielle##24117
turnin The Fallen Sisters##11314 |goto 61.48,22.86
turnin Wild Vines##11315 |goto 61.48,22.86
accept Spawn of the Twisted Glade##11316 |goto 61.48,22.86
accept Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
stickystop "Collect_Spotted_Hippogryph_Down"
stickystop "Collect_Trapped_Prey"
step
talk Christopher Sloan##24056
turnin The One That Got Away##11410 |goto 60.27,18.69
step
talk Prospector Belvar##24328
turnin The Book of Runes##11346 |goto 62.28,17.21
accept Mastering the Runes##11349 |goto 62.28,17.21
step
Enter the building |goto 62.34,17.15 < 10 |walk
talk Helga Rumsbane##24053
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Helga Rumsbane##24053 |goto 62.49,17.23 |q 11349
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Collect_Trapped_Prey"
stickystart "Kill_Thornvine_Creepers"
step
kill Spore##23876+
|tip They look like orange spikey balls.
|tip You can find them all around the Twisted Glade area.
use the Enchanted Ice Core##33607
|tip Use it on their corpses.
Freeze #8# Spores |q 11319/1 |goto 54.05,17.75
step
label "Kill_Thornvine_Creepers"
kill 10 Thornvine Creeper##23874+ |q 11316/1 |goto 54.05,17.75
|tip They look like black and purple swmap elementals.
|tip You can find them all around the Twisted Glade area. |notinsticky
step
talk Lurielle##24117
turnin Spawn of the Twisted Glade##11316 |goto 61.48,22.86
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.48,22.86
accept Keeper Witherleaf##11428 |goto 61.48,22.86
step
click Iron Rune Carving Tools##186684
|tip It looks like a small metal chest.
|tip It can spawn in multiple locations.
collect Iron Rune Carving Tools##33794 |q 11349/1 |goto 67.54,23.33
It can also be located at: |notinsticky
[72.40,17.80]
[69.10,22.80]
[67.50,29.20]
[71.20,28.70]
[73.30,24.89]
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.79,17.46
|tip He looks like a green and brown centaur that walks around this area.
step
label "Collect_Spotted_Hippogryph_Down"
click Spotted Hippogryph Down##186591+
|tip They look like brown feathers on the ground around this area.
|tip You can find them all around this area. |notinsticky
collect 10 Spotted Hippogryph Down##33348 |q 11269/1 |goto 52.80,18.98
step
label "Collect_Trapped_Prey"
click Sprung Trap##186619+
|tip They look like small animals stuck in silver metal traps on the ground around this area.
kill Prowling Worg##24206+
|tip They sometimes appear after you click the Sprung Traps.
collect 8 Trapped Prey##33487 |q 11292/1 |goto 52.80,18.98
step
kill Frosthorn Ram##23740+
collect 4 Tough Ram Meat##33352 |goto 56.96,15.74 |q 11284
You can find more around: |notinsticky
[52.58,10.15]
[50.97,3.19]
step
use the Tough Ram Meat##33352
collect Giant Yeti Meal##33477 |q 11284
step
Follow the path to the top of the mountain |goto 54.30,8.23 < 30 |only if walking
click Frostblade Shrine##186649
|tip At the top of the mountain.
Watch the dialogue
kill Your Inner Turmoil##27959
Become Cleansed of Your Inner Turmoil |q 11322/1 |goto 61.12,2.02
step
Jump off the mountain, float down, and enter the mine |goto 59.73,13.72 < 10 |walk
use the Giant Yeti Meal##33477
|tip Use it near Shatterhorn inside the mine.
|tip You can use it from decently far away.
|tip He will wake up and attack you.
kill Shatterhorn##24178	|q 11284/1 |goto 60.50,11.85
step
Leave the mine |goto 59.69,13.82 < 10 |walk |only if subzone("Wildervar Mine")
talk Foreman Colbey##24176
turnin The Yeti Next Door##11284 |goto 60.18,15.61
step
talk Eldrim Mounder##24052
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Eldrim Mounder##24052 |goto 61.01,17.08 |q 11284
step
talk Prospector Belvar##24328
turnin Mastering the Runes##11349 |goto 62.28,17.21
accept The Rune of Command##11348 |goto 62.28,17.21
step
talk Gil Grisert##24139
turnin Down to the Wire##11269 |goto 62.60,16.82
accept We Call Him Steelfeather##11418 |goto 62.60,16.82
step
talk Trapper Jethan##24131
turnin Preying Upon the Weak##11292 |goto 62.66,16.80
step
use the Feathered Charm##34026
|tip Use it on Steelfeather.
|tip She looks like a hippogryph flies in the sky above Fort Wildevar around this area.
|tip You can easily find and select Steelfeather by typing "/tar Steelfeather" into your chat.
Watch the dialogue
Learn Steelfeather's Secret |q 11418/1 |goto 62.66,16.80
step
talk Gil Grisert##24139
turnin We Call Him Steelfeather##11418 |goto 62.60,16.82
step
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.48,22.86
step
use the Rune of Command##33796
|tip Use it on a neutral Stone Giant around this area.
|tip It will not work on a Runed Stone Giant.
Test the Rune of Command |q 11348/1 |goto 70.41,23.92
step
kill Binder Murdis##24334 |q 11348/2 |goto 71.85,24.56
|tip Your Captive Stone Giant minion from the previous step will help you fight.
step
talk Prospector Belvar##24328
turnin The Rune of Command##11348 |goto 62.28,17.21
step
Enter the building |goto 62.34,17.15 < 10 |walk
talk Helga Rumsbane##24053
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Helga Rumsbane##24053 |goto 62.49,17.23 |q 11349
step
Enter the building |goto 60.61,15.89 < 10 |walk
talk Christina Daniels##24057
|tip Inside the building.
home Fort Wildervar |goto 60.48,15.86
step
Enter the building |goto 30.90,41.91 < 10 |walk
talk Innkeeper Celeste Goodhutch##23937
|tip Inside the building.
home Westguard Inn |goto 30.86,41.45
step
talk Sapper Steelring##23976
turnin Leader of the Deranged##11240 |goto 29.11,41.78
step
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
talk Watcher Moonleaf##24273
|tip On the wooden platform.
turnin The Cleansing##11322 |goto 30.05,28.59
accept In Worg's Clothing##11325 |goto 30.05,28.59
step
use Feknut's Firecrackers##33129
|tip Use them on the ground near Darkclaw Bats.
|tip They look like bats that fly in the air around this area.
click Darkclaw Guano##186325+
|tip It appears on the ground after Feknut's Firecrackers.
collect 10 Darkclaw Guano##33084|q 11154/1 |goto 30.95,18.60
step
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff spell:43369 |goto 29.21,7.56 |q 11325
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin In Worg's Clothing##11325 |goto 29.69,5.67
accept Brother Betrayers##11414 |goto 29.69,5.67
step
kill Bjomolf##24516 |q 11414/1 |goto 27.47,21.50
|tip He looks like a larger brown wolf that walks around this area.
step
talk Engineer Feknut##24227
|tip He walks around this area.
|tip On the wooden platform.
turnin Scare the Guano Out of Them!##11154 |goto 30.16,28.77
step
kill Varg##24517 |q 11414/2 |goto 34.12,30.42
|tip He looks like a larger grey wolf that walks around this area.
step
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff spell:43369 |goto 29.21,7.56 |q 11414
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Brother Betrayers##11414 |goto 29.69,5.67
accept Eyes of the Eagle##11416 |goto 29.69,5.67
step
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He appears next to you.
turnin Operation: Skornful Wrath##11248 |goto 44.40,26.40
accept Towers of Certain Doom##11245 |goto 44.40,26.40
accept Gruesome, But Necessary##11246 |goto 44.40,26.40
accept Burn Skorn, Burn!##11247 |goto 44.40,26.40
stickystart "Dismember_Winterskorn_Vrykul"
stickystart "Accept_Stop_The_Ascension"
step
Enter the building |goto 43.73,28.31 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northwest Longhouse Ablaze |q 11247/1 |goto 43.66,28.57
step
use the Sergeant's Flare##33323
Target the Northwest Tower |q 11245/1 |goto 43.66,28.57
step
Enter the building |goto 46.18,28.36 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Northeast Longhouse Ablaze |q 11247/2 |goto 46.33,28.21
step
Enter the building |goto 45.74,30.38 < 10 |walk
use the Sergeant's Torch##33321
|tip Use it inside this building.
Set the Barracks Ablaze |q 11247/3 |goto 45.93,30.71
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Burn Skorn, Burn!##11247
step
Follow the path up |goto 44.90,32.14 < 30 |only if walking
use the Sergeant's Flare##33323
Target the East Tower |q 11245/2 |goto 46.44,33.21
step
use the Sergeant's Flare##33323
Target the Southeast Tower |q 11245/4 |goto 46.95,36.37
step
label "Accept_Stop_The_Ascension"
Kill Winterskorn enemies around this area
collect Vrykul Scroll of Ascension##33314 |n
use the Vrykul Scroll of Ascension##33314
accept Stop the Ascension!##11249 |goto 44.86,35.07
step
use the Vrykul Scroll of Ascension##33339
Watch the dialogue
|tip Halfdan the Ice-Hearted appears nearby.
kill Halfdan the Ice-Hearted##23671 |q 11249/1 |goto 44.86,35.07
step
label "Dismember_Winterskorn_Vrykul"
Kill Winterskorn enemies around this area
use The Sergeant's Machete##33310
|tip Use it on their corpses.
Dismember #20# Winterskorn Vrykul |q 11246/1 |goto 44.86,35.07
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Gruesome, But Necessary##11246
step
use the Sergeant's Flare##33323
Target the Southwest Tower |q 11245/3 |goto 43.30,35.93
step
_Next to you:_
use the Westguard Command Insignia##33311
talk Westguard Sergeant##24060
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Towers of Certain Doom##11245
accept All Hail the Conqueror of Skorn!##11250
step
Jump down carefully |goto 43.39,36.77 < 10 |only if walking and subzone("Skorn")
click Talonshrike's Egg##190283
|tip At the bottom of the waterfall.
kill Talonshrike##24518
|tip It flies down to you.
collect Eyes of the Eagle##34027 |q 11416/1 |goto 41.46,37.69
step
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11250
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin All Hail the Conqueror of Skorn!##11250 |goto 28.84,44.13
accept Dealing With Gjalerbron##11235 |goto 28.84,44.13
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Stop the Ascension!##11249 |goto 28.86,43.98
accept Of Keys and Cages##11231 |goto 28.86,43.98
stickystart "Kill_Gjalerbron_Warriors"
stickystart "Kill_Gjalerbron_Rune_Casters"
stickystart "Kill_Gjalerbron_Sleep_Watchers"
stickystart "Accept_Gjalerbron_Attack_Plans"
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
Cross the bridge |goto 32.16,38.78 < 20 |only if walking and (subzone("Westguard Keep") or subzone("Whisper Gulch"))
Kill Gjalerbron enemies around this area
|tip They look like large humans.
|tip You can find them all around the Gjalerbron area.
collect Gjalerbron Cage Key##33284+ |n
collect Large Gjalerbron Cage Key##33290 |n
|tip This key is rare to find.
|tip It can be used to open the Large Gjalerbron Cage at this location.
|tip The Large Gjalerbron Cage at this location contains multiple prisoners.
click Gjalerbron Cage+
|tip They look like wood and metal cages.
Free #10# Gjalerbron Prisoners |q 11231/1 |goto 35.80,11.46
step
label "Kill_Gjalerbron_Warriors"
kill 15 Gjalerbron Warrior##23991 |q 11235/1 |goto 35.37,11.30
|tip They look like large humans with an axe and a shield.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Rune_Casters"
kill 8 Gjalerbron Rune-Caster##23990 |q 11235/2 |goto 33.64,13.20
|tip They look like large humans wearing white robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Sleep_Watchers"
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11235/3 |goto 35.37,11.30
|tip They look like large humans wearing brown robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Accept_Gjalerbron_Attack_Plans"
Kill Gjalerbron enemies around this area
|tip They look like large humans. |notinsticky
|tip You can find them all around the Gjalerbron area. |notinsticky
collect Gjalerbron Attack Plans##33289 |n
use the Gjalerbron Attack Plans##33289
accept Gjalerbron Attack Plans##11237 |goto 33.69,13.12
step
Leave Gjalerbron and run around the mountain |goto 31.39,13.03 < 70 |only if walking and subzone("Gjalerbron")
use the Worg Disguise##33618
Wear the Worg Disguise |havebuff spell:43369 |goto 29.21,7.56 |q 11416
step
Enter the cave |goto 29.33,5.97 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Eyes of the Eagle##11416 |goto 29.69,5.67
accept Alpha Worg##11326 |goto 29.69,5.67
step
kill Garwal##24277 |q 11326/1 |goto 27.32,15.39
|tip He looks like a larger grey wolf that walks around this area.
step
talk Watcher Moonleaf##24273
turnin Alpha Worg##11326 |goto 30.05,28.59
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Gjalerbron Attack Plans##11237 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this area.
|tip Upstairs inside the building.
turnin Dealing With Gjalerbron##11235 |goto 28.84,44.12
accept Necro Overlord Mezhen##11236 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin Of Keys and Cages##11231 |goto 28.86,43.97
accept In Service to the Light##11239 |goto 28.86,43.97
step
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
accept Sleeping Giants##11432 |goto 28.94,44.19
step
Leave the building |goto 29.61,44.01 < 10 |walk |only if subzone("Westguard Keep") and _G.IsIndoors()
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11432
stickystart "Kill_Deathless_Watchers"
stickystart "Collect_Awakening_Rods"
stickystart "Kill_Putrid_Wights"
step
Run up the ramp |goto 34.77,14.09 < 30 |only if walking
Follow the path up |goto 38.33,10.88 < 15 |only if walking
kill Necro Overlord Mezhen##24018 |q 11236/1 |goto 38.79,13.08
collect Mezhen's Writings##34090 |goto 38.79,13.08 |q 11452 |future
step
use Mezhen's Writings##34090
accept The Slumbering King##11452
step
Enter the building |goto 39.77,7.61 < 15 |walk
kill Queen Angerboda##24023 |q 11452/1 |goto 40.89,6.48
|tip Inside the building.
|tip Follow the path around inside the building to get to her.
step
label "Kill_Deathless_Watchers"
Leave the building |goto 39.77,7.61 < 15 |walk |only if subzone("Winter's Terrace")
kill 10 Deathless Watcher##24013 |q 11239/1 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
step
label "Collect_Awakening_Rods"
kill Necrolord##24014+
collect 5 Awakening Rod##34083 |goto 38.50,12.53 |q 11432
You can find more around [33.25,9.33]
step
label "Kill_Putrid_Wights"
kill 2 Putrid Wight##23992 |q 11239/3 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
stickystart "Kill_Fearsome_Horrors"
step
Enter the building |goto 34.43,13.16 < 15 |walk
use the Awakening Rod##34083+
|tip Use them on Dormant Vrykul.
|tip They look like vrykul sleeping upright inside the walls like mummies around this area inside the building.
kill 5 Dormant Vrykul##24669 |q 11432/1 |goto 35.12,11.70
step
label "Kill_Fearsome_Horrors"
kill 4 Fearsome Horror##24073 |q 11239/2 |goto 35.35,12.19
|tip Inside the building.
|tip They can be spread out in all of the rooms in this underground building.
step
talk Finlay Fletcher##23862
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Finlay Fletcher##23862 |goto 30.69,41.84 |q 11432
step
Enter the courtyard of the building |goto 29.91,43.27 < 15 |only if walking
Enter the building |goto 29.61,44.01 < 10 |walk
talk Mage-Lieutenant Malister##23888
|tip Upstairs inside the building.
turnin Sleeping Giants##11432 |goto 28.94,44.19
step
talk Captain Adams##23749
|tip He walks around this small area upstairs inside the building.
turnin Necro Overlord Mezhen##11236 |goto 28.84,44.12
turnin The Slumbering King##11452 |goto 28.84,44.12
step
talk Father Levariol##24038
|tip Upstairs inside the building.
turnin In Service to the Light##11239 |goto 28.86,43.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",{
author="support@zygorguides.com",
condition_suggested=function() return level >= 70 and level <= 72 and not completedq(11239) end,
next="Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",
},[[
step
talk Tomas Riverwell##26879
fpath Valiance Keep |goto Borean Tundra 58.96,68.29
step
Enter the building |goto 58.53,68.34 < 10 |walk
talk James Deacon##25245
|tip Inside the building.
home Valiance Keep |goto 58.28,68.05
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Recruitment Officer Blythe##25307
accept Enlistment Day##11672 |goto 57.85,67.60
step
talk Broff Bombast##27011
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Broff Bombast##27011 |goto 57.83,66.04 |q 11672
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk General Arlos##25250
|tip Upstairs inside the building.
turnin Enlistment Day##11672 |goto 56.67,72.64
accept A Time for Heroes##11727 |goto 56.67,72.64
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Sergeant Hammerhill##25816
turnin A Time for Heroes##11727 |goto 56.36,69.58
accept The Siege##11797 |goto 56.36,69.58
step
talk Medic Hawthorn##25825
accept A Soldier in Need##11789 |goto 55.00,68.93
step
kill 6 Crypt Crawler##25227 |q 11797/1 |goto 53.20,70.58
step
talk Sergeant Hammerhill##25816
turnin The Siege##11797 |goto 56.36,69.58
accept Death From Above##11889 |goto 56.36,69.58
step
Enter the ship |goto 56.99,68.77 < 7 |walk
click First Aid Supplies##187980
|tip It's a small brown chest, downstairs in this ship, next to a candle shrine.
collect Hawthorn's Anti-Venom##35119 |q 11789/1 |goto 57.50,69.28
step
click Cultist Shrine##187851
|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
accept Cultists Among Us##11920 |goto 57.55,69.13
step
talk Captain "Lefty" Lugsail##25298
|tip On the top deck of the ship.
turnin Cultists Among Us##11920 |goto 57.83,69.20
step
talk Admiral Cantlebree##25299
accept Notify Arlos##11791 |goto 57.79,69.19
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk General Arlos##25250
|tip Upstairs inside the building.
turnin Notify Arlos##11791 |goto 56.67,72.64
step
talk Counselor Talbot##25301
|tip Upstairs inside the building.
accept A Diplomatic Mission##12141 |goto 56.71,72.62
step
talk Harbinger Vurenn##25285
|tip Upstairs inside the building.
accept Enemies of the Light##11792 |goto 56.60,72.47
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Medic Hawthorn##25825
turnin A Soldier in Need##11789 |goto 55.00,68.93
step
use the Reinforced Net##35278
|tip Use it on Scourged Flamespitters flying above you.
kill 6 Scourged Flamespitter##25582 |q 11889/1 |goto 54.77,70.41
step
talk Sergeant Hammerhill##25816
turnin Death From Above##11889 |goto 56.36,69.58
accept Plug the Sinkholes##11897 |goto 56.36,69.58
stickystart "Collect_Cultist_Communique"
step
use the Incendiary Explosives##35704
|tip Use it while standing on the edge of the sinkhole.
Set the Explosives at the Northern Sinkhole |q 11897/2 |goto 54.82,63.27
step
label "Collect_Cultist_Communique"
kill Cultist Necrolyte##25651+
collect Cultist Communique##35122 |q 11792/1 |goto 55.25,63.42
You can find more around: |notinsticky
[54.05,62.44]
[53.85,60.34]
step
use the Incendiary Explosives##35704
|tip Use it while standing on the edge of the sinkhole.
Set the Explosives at the Southern Sinkhole |q 11897/1 |goto 50.46,71.19
step
talk Karuk##25435
turnin A Diplomatic Mission##12141 |goto 47.13,75.48
accept Karuk's Oath##11613 |goto 47.13,75.48
stickystart "Kill_Skadir_Raiders"
stickystart "Kill_Skadir_Longboatsmen"
step
kill Riplash Myrmidon##24576
|tip Kill the cheering npc's nearby as well.
talk Captured Tuskarr Prisoner##25636
|tip If he's not here, wait for him to respawn, or skip the quest.
|tip The quest becomes available to accept a few minutes after he spawns.
accept Cruelty of the Kvaldir##12471 |goto 44.09,77.90
step
label "Kill_Skadir_Raiders"
kill 6 Skadir Raider##25522 |q 11613/1 |goto 46.70,78.05
|tip They look like large green humans holding spears.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
label "Kill_Skadir_Longboatsmen"
kill 5 Skadir Longboatsman##25521 |q 11613/2 |goto 46.70,78.05
|tip They look like large green humans holding wooden mallets.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
talk Karuk##25435
turnin Karuk's Oath##11613 |goto 47.13,75.48
accept Gamel the Cruel##11619 |goto 47.13,75.48
turnin Cruelty of the Kvaldir##12471 |goto 47.13,75.48
step
Enter the cave |goto 46.15,79.32 < 20 |walk
kill Gamel the Cruel##26449 |q 11619/1 |goto 46.42,78.23
|tip Inside the small cave.
step
Leave the cave |goto 46.15,79.32 < 20 |walk |only if subzone("Riplash Strand") and _G.IsIndoors()
talk Karuk##25435
turnin Gamel the Cruel##11619 |goto 47.13,75.48
accept A Father's Words##11620 |goto 47.13,75.48
step
talk Veehja##25450
turnin A Father's Words##11620 |goto 43.61,80.52
step
use the Hearthstone##6948
Hearth to Valiance Keep |goto 58.35,68.09 < 50 |noway |c |q 11897
|only if (subzone("Shrine of Scales") or subzone("Riplash Strand"))
step
talk Broff Bombast##27011
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Broff Bombast##27011 |goto 57.83,66.04 |q 11897
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Enter the building |goto 57.09,71.78 < 10 |walk
talk Harbinger Vurenn##25285
|tip Upstairs inside the building.
turnin Enemies of the Light##11792 |goto 56.61,72.46
accept Further Investigation##11793 |goto 56.61,72.46
step
Leave the building |goto 57.09,71.78 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Sergeant Hammerhill##25816
turnin Plug the Sinkholes##11897 |goto 56.36,69.58
accept Farshire##11928 |goto 56.36,69.58
step
talk Mark Hanes##26155
accept Word on the Street##11927 |goto 56.77,69.51
step
Enter the building |goto 58.53,68.34 < 10 |walk
talk Midge##25249
|tip Inside the building.
accept Nick of Time##11575 |goto 58.41,67.79
step
talk Leryssa##25251
|tip Upstairs on the balcony of the building.
turnin Word on the Street##11927 |goto 58.75,68.36
accept Thassarian, My Brother##11599 |goto 58.75,68.36
step
talk Vindicator Yaala##25826
|tip Upstairs inside the building.
turnin Further Investigation##11793 |goto 58.55,67.31
accept The Hunt is On##11794 |goto 58.55,67.31
step
use the Oculus of the Exorcist##35125
|tip Use it on "Salty" John Thorpe.
talk "Salty" John Thorpe##25248
|tip Inside the building.
Tell him _"I have reason to believe you're involved in cultist activity."_
Watch the dialogue
kill "Salty" John Thorpe##25248
Defeat the Cultist in the Kitchen |q 11794/3 |goto 58.58,67.14
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Airman Skyhopper##25737
accept Distress Call##11707 |goto 58.84,68.72
step
use the Oculus of the Exorcist##35125
|tip Use it on Tom Hegger.
talk Tom Hegger##25827
|tip He walks around this area.
Ask him _"What do you know about the Cult of the Damned?"_
Watch the dialogue
kill Tom Hegger##25827
Defeat the Cultist on the Docks |q 11794/1 |goto 59.21,68.39
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Run down the stairs |goto 56.85,72.16 < 10 |walk
use the Oculus of the Exorcist##35125
|tip Use it on Guard Mitchells.
talk Guard Mitchells##25828
|tip Downstairs inside the building.
Ask him _"How long have you worked for the Cult of the Damned?"_
Watch the dialogue
kill Guard Mitchells##25828
Defeat the Cultist in the Jail |q 11794/2 |goto 56.72,71.83
step
Leave the building |goto 56.96,70.88 < 15 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Enter the building |goto 58.53,68.34 < 10 |walk
talk Vindicator Yaala##25826
|tip Upstairs inside the building.
turnin The Hunt is On##11794 |goto 58.55,67.30
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Run down the stairs to leave Valiance Keep |goto 57.50,65.79 < 20 |only if walking and subzone("Valiance Keep")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Farshire##11928 |goto 58.21,62.82
accept Military? What Military?##11901 |goto 58.21,62.82
step
Enter the mine |goto 56.66,57.41 < 10 |walk
click Plagued Grain##188085
|tip Inside the mine.
turnin Military? What Military?##11901 |goto 56.81,55.56
accept Pernicious Evidence##11902 |goto 56.81,55.56
step
Leave the mine |goto 56.66,57.41 < 10 |walk |only if subzone("Farshire Mine")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Pernicious Evidence##11902 |goto 58.21,62.82
accept It's Time for Action##11903 |goto 58.21,62.82
step
talk Wendy Darren##26085
accept Take No Chances##11913 |goto 58.28,62.77
step
talk Jeremiah Hawning##26084
accept Reference Material##11908 |goto 58.19,62.98
stickystart "Burn_Farshire_Grain"
stickystart "Kill_Plagued_Scavengers"
step
click Fields, Factories and Workshops##188120
|tip It looks like a small red book inside the burning building.
collect Fields, Factories and Workshops##35481|q 11908/1 |goto 55.75,58.32
step
label "Burn_Farshire_Grain"
use Wendy's Torch##35491
|tip Use it next to Farshire Grain.
|tip They look like bags with patches on the ground around this area.
Burn #8# Farshire Grain |q 11913/1 |goto 55.79,60.83
step
label "Kill_Plagued_Scavengers"
kill 14 Plagued Scavenger##25650 |q 11903/1 |goto 55.79,60.83
step
talk Wendy Darren##26085
turnin Take No Chances##11913 |goto 58.28,62.77
step
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin It's Time for Action##11903 |goto 58.22,62.82
accept Fruits of Our Labor##11904 |goto 58.22,62.82
step
talk Jeremiah Hawning##26084
turnin Reference Material##11908 |goto 58.19,62.98
accept Repurposed Technology##12035 |goto 58.19,62.98
step
kill Harvest Collector##25623+
use Jeremiah's Tools##35943
|tip Use it on their corpses.
Rewire #5# Harvest Collectors |q 12035/1 |goto 58.25,60.95
You can find more around [56.47,62.19]
step
Enter the mine |goto 56.66,57.41 < 10 |walk
clicknpc William Allerton##25385
|tip Inside the mine.
turnin Thassarian, My Brother##11599 |goto 56.05,55.42
accept The Late William Allerton##11600 |goto 56.05,55.42
step
kill Captain Jacobs##26252
|tip He walks around this area inside the mine.
collect Cart Release Key##35705 |goto 57.95,53.67 |q 11904
step
click Cart Release##188104
|tip Inside the mine.
Release the Ore Cart |q 11904/1 |goto 57.19,54.64
step
Leave the mine |goto 56.66,57.41 < 10 |walk |only if subzone("Farshire Mine")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Fruits of Our Labor##11904 |goto 58.22,62.82
accept One Last Delivery##11962 |goto 58.22,62.82
step
talk Jeremiah Hawning##26084
turnin Repurposed Technology##12035 |goto 58.19,62.98
step
talk Hilda Stoneforge##25235
|tip She walks around this area.
turnin One Last Delivery##11962 |goto 57.32,66.64
accept Weapons for Farshire##11963 |goto 57.32,66.64
step
talk Broff Bombast##27011
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Broff Bombast##27011 |goto 57.83,66.04 |q 11600
step
Enter the building |goto 58.53,68.35 < 10 |walk
talk Leryssa##25251
|tip Outside on the balcony of the building.
turnin The Late William Allerton##11600 |goto 58.75,68.36
accept Lost and Found##11601 |goto 58.75,68.36
step
talk James Deacon##25245
|tip Inside the building.
turnin Lost and Found##11601 |goto 58.29,68.05
accept In Wine, Truth##11603 |goto 58.29,68.05
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
Run down the stairs to leave Valiance Keep |goto 57.50,65.79 < 20 |only if walking and subzone("Valiance Keep")
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Weapons for Farshire##11963 |goto 58.22,62.82
accept Call to Arms!##11965 |goto 58.22,62.82
step
Enter the building |goto 57.29,59.49 < 10 |walk
click Bell Rope##188163
|tip It looks like a huge long rope hanging in this stairwell inside the building.
Ring the Farshire Bell |q 11965/1 |goto 57.32,59.43
step
talk Gerald Green##26083
|tip He walks around this area.
|tip If he's not here, wait for him to respawn.
turnin Call to Arms!##11965 |goto 58.22,62.82
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto 57.05,44.32 |instant
step
talk Arch Druid Lathorius##25809
accept Ears of Our Enemies##11866 |goto 57.05,44.32
accept Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto 57.32,44.08
step
talk Zaza##25811
accept Unfit for Death##11865 |goto 56.80,44.03
step
use the Pile of Fake Furs##35127
|tip Use it next to Caribou Traps.
|tip They look like metal spiked traps on the ground around this area.
Trap #8# Nesingwary Trappers |q 11865/1 |goto 56.86,49.77
stickystart "Kill_Lootcrazed_Divers"
step
kill Loot Crazed Diver##25836+
|tip They look like human scuba divers.
|tip You can find them underwater all around the Lake Kum'uya area.
collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto 51.13,44.68
step
label "Kill_Lootcrazed_Divers"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto 51.13,44.68
|tip They look like human scuba divers. |notinsticky
|tip You can find them underwater all around the Lake Kum'uya area. |notinsticky
step
Follow the path up to Amber Ledge |goto 49.10,39.12 < 30 |only if walking and not subzone("Amber Ledge")
talk Surristrasz##24795
fpath Amber Ledge |goto 45.33,34.50
step
talk Librarian Donathan##25262
turnin Nick of Time##11575 |goto 45.26,33.35
accept Prison Break##11587 |goto 45.26,33.35
step
talk Librarian Garren##25291
accept Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
step
talk Librarian Hamilton##27141
|tip He walks around this area.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Librarian Hamilton##27141 |goto 45.27,33.94 |q 11576
step
talk Etaruk##25292
accept Reclaiming the Quarry##11612 |goto 54.29,36.10
step
click Elder Atkanok##187565
accept The Honored Ancestors##11605 |goto 54.60,36.00
step
use the D.E.H.T.A. Trap Smasher##35228
|tip Use it next to Trapped Mammoth Calves.
|tip They look like baby elephants stuck in metal traps on the ground around this area.
|tip Avoid killing any mammoths, since you'll get a debuff that will cause druid guards to attack you.
Free #8# Mammoth Calves |q 11876/1 |goto 54.72,28.92
You can find more around: |notinsticky
[55.79,32.94]
[56.38,39.08]
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto 56.80,44.04
accept The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto 57.05,44.32
turnin Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto 57.33,44.09
accept The Abandoned Reach##11870 |goto 57.33,44.09
step
kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.26,56.45
|tip She walks around this area.
|tip Two enemies will appear and help her fight after you attack her.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto 57.80,55.11
accept Not On Our Watch##11871 |goto 57.80,55.11
step
kill Northsea Thug##25843+
|tip They look like humans carrying tan bags over their shoulders.
click Shipment of Animal Parts##188018+
|tip They look like brown bags and crates on the ground.
|tip You can find them all around the Abandoned Reach area.
collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto 59.53,58.66
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto 57.80,55.11
accept The Nefarious Clam Master...##11872 |goto 57.80,55.11
step
kill Clam Master K##25800 |q 11872/1 |goto 61.72,66.42
|tip He walks east and west underwater around this area.
|tip Beware of Great Reef Sharks that will attack while you are fighting him.
|tip He respawns quickly.
step
click Wine Crate##188131
|tip Underwater.
collect Kul Tiras Wine##34714 |q 11603/1 |goto 61.90,65.68
step
Enter the building |goto 58.53,68.35 < 10 |walk
talk Old Man Colburn##25302
|tip Inside the building.
turnin In Wine, Truth##11603 |goto 58.53,68.09
accept A Deserter##11604 |goto 58.53,68.09
step
Leave the building |goto 58.53,68.34 < 10 |walk |only if subzone("Valiance Keep") and _G.IsIndoors()
talk Broff Bombast##27011
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Broff Bombast##27011 |goto 57.83,66.04 |q 11604
step
Enter the courtyard of the building |goto 56.96,70.88 < 15 |only if walking
Run down the stairs |goto 56.85,72.16 < 10 |walk
talk Private Brau##25395
|tip Downstairs inside the building..
turnin A Deserter##11604 |goto 56.68,71.45
accept Cowards and Fools##11932 |goto 56.68,71.45
step
kill Beryl Mage Hunter##25585+
collect Beryl Prison Key##34688 |goto 42.46,37.14 |q 11587
You can find more around [41.81,41.59]
step
click Arcane Prison##187561+
|tip They look like large boxes hovering above circular blue rune platforms around this area.
|tip If the Arcane Prison doesn't complete the quest goal, click others.
|tip It seems random as to which Arcane Prison contains the prisoners.
Rescue the Arcane Prisoners |q 11587/1 |goto 40.44,39.16
You can find more Arcane Prisons at: |notinsticky
[41.79,42.54]
[42.59,36.76]
step
use the Arcanometer##34669
|tip Next to the purple crack in the ground, next to the water.
Take the Cleftcliff Anomaly Reading |q 11576/1 |goto 34.36,42.06
step
Follow the path up |goto 39.96,42.04 < 30 |only if walking and subzone("The Westrift")
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Garren##25291
turnin Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
accept Monitoring the Rift: Sundered Chasm##11582 |goto 44.98,33.38
step
talk Librarian Donathan##25262
turnin Prison Break##11587 |goto 45.26,33.35
accept Abduction##11590 |goto 45.26,33.35
step
kill Beryl Sorcerer##25316+
|tip They look like humans in purple robes.
|tip Don't kill them, just weaken them.
|tip You can find them all around the Beryl Point area.
use the Arcane Binder##34691
|tip Use it on the Beryl Sorcerer when it is low health.
Capture a Beryl Sorcerer |q 11590/1 |goto 42.66,38.06
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin Abduction##11590 |goto 45.26,33.35
accept The Borean Inquisition##11646 |goto 45.26,33.35
step
Enter the building |goto 46.11,33.12 < 10 |walk
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Borean Inquisition##11646 |goto 46.33,32.85
accept The Art of Persuasion##11648 |goto 46.33,32.85
step
use the Neural Needler##34811
|tip Use it on the Imprisoned Beryl Sorcerer repeatedly.
|tip Upstairs inside the tower, on a middle floor.
Interrogate the Prisoner |q 11648/1 |goto 46.32,32.92
step
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Art of Persuasion##11648 |goto 46.33,32.85
accept Sharing Intelligence##11663 |goto 46.33,32.85
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Librarian Donathan##25262
turnin Sharing Intelligence##11663 |goto 45.26,33.35
accept A Race Against Time##11671|goto 45.26,33.35
step
talk Librarian Hamilton##27141
|tip He walks around this area.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Librarian Hamilton##27141 |goto 45.27,33.94 |q 11671
step
use the Beryl Shield Detonator##34897
|tip If it won't let you, wait until Inquisitor Salrand appears again.
kill Inquisitor Salrand##25584
click Salrand's Lockbox##187875
|tip It appears on the ground after you kill Inquisitor Salrand.
collect Salrand's Broken Key##34909 |q 11671/1 |goto 41.80,39.16
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin A Race Against Time##11671 |goto 45.26,33.35
accept Reforging the Key##11679 |goto 45.26,33.35
step
talk Surristrasz##24795
turnin Reforging the Key##11679 |goto 45.32,34.52
accept Taking Wing##11680 |goto 45.32,34.52
step
talk Warmage Anzim##25356
turnin Taking Wing##11680 |goto 46.38,37.31
accept Rescuing Evanor##11681 |goto 46.38,37.31
step
Watch the dialogue
|tip You will automatically be teleported back to Amber Ledge.
Return to Amber Ledge |goto 46.45,32.55 < 20 |noway |c |q 11681
step
talk Archmage Evanor##25785
|tip Inside the tower, on the top floor.
turnin Rescuing Evanor##11681 |goto 46.37,32.40
accept Dragonspeak##11682 |goto 46.37,32.40
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Surristrasz##24795
turnin Dragonspeak##11682 |goto 45.32,34.52
step
use the Arcanometer##34669
|tip Swim down to the pink chasm underwater.
Take the Sundered Chasm Reading |q 11582/1 |goto 43.98,28.49
stickystart "Kill_Beryl_Treasure_Hunters"
step
Follow the path back up to cliff |goto 45.44,31.11 < 15 |only if walking and subzone("The Westrift")
click "Elder Kesuk"##187662
Identify the Elder Kesuk |q 11605/1 |goto 50.87,32.39
step
click "Elder Takret"##187664
Identify the Elder Takret |q 11605/3 |goto 52.31,31.15
step
click "Elder Sagani"##187663
Identify the Elder Sagani |q 11605/2 |goto 52.82,34.03
step
label "Kill_Beryl_Treasure_Hunters"
kill 12 Beryl Treasure Hunter##25353 |q 11612/1 |goto 51.97,32.61
|tip They look like humans in purple robes.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
step
click Elder Atkanok##187565
turnin The Honored Ancestors##11605 |goto 54.62,35.74
accept The Lost Spirits##11607 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Reclaiming the Quarry##11612 |goto 54.29,36.10
accept Hampering Their Escape##11617 |goto 54.29,36.10
stickystart "Free_Kaskala_Craftsman_Spirits"
stickystart "Free_Kaskala_Shaman_Spirits"
step
kill Beryl Reclaimer##25449+
|tip They look like gnomes.
|tip You can find them all around the Coldrock Quarry area.
collect 3 Gnomish Grenade##34772 |q 11617 |goto 51.62,35.90
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the East Platform |q 11617/1 |goto 52.47,35.44
step
use the Gnomish Grenade##34772
|tip Use it while standing near the the floating platform.
Destroy the West Platform |q 11617/3 |goto 50.35,34.52
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the North Platform |q 11617/2 |goto 52.26,31.80
step
label "Free_Kaskala_Craftsman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Craftsmen.
|tip They look like walrus people spirits holding hammers.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Craftsman Spirits |q 11607/1 |goto 51.49,31.33
step
label "Free_Kaskala_Shaman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Shamans.
|tip They look like walrus people spirits holding staves.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Shaman Spirits |q 11607/2 |goto 51.49,31.33
step
click Elder Atkanok##187565
turnin The Lost Spirits##11607 |goto 54.62,35.74
accept Picking Up the Pieces##11609 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Hampering Their Escape##11617 |goto 54.29,36.10
accept A Visit to the Curator##11623 |goto 54.29,36.10
stickystart "Collect_Tuskarr_Ritual_Objects"
step
kill Curator Insivius##25448 |q 11623/1 |goto 50.09,32.56
|tip He walks around this area.
|tip Follow the path along the top of the cliff to get to him.
step
label "Collect_Tuskarr_Ritual_Objects"
click Tuskarr Ritual Object##187671+
|tip They look like stone fish and incense smoke bowls on the ground.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
collect 6 Tuskarr Ritual Object##34713 |q 11609/1 |goto 51.95,32.94
step
click Elder Atkanok##187565
turnin Picking Up the Pieces##11609 |goto 54.62,35.74
accept Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Etaruk##25292
turnin A Visit to the Curator##11623 |goto 54.29,36.10
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Sagani totem.
Complete Elder Sagani's Ceremony |q 11610/2 |goto 52.82,34.04
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Takret totem.
Complete Elder Takret's Ceremony |q 11610/3 |goto 52.31,31.15
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Kesuk totem.
Complete Elder Kesuk's Ceremony |q 11610/1 |goto 50.87,32.39
step
click Elder Atkanok##187565
turnin Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
accept Khu'nok Will Know##11878 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto 57.33,44.08
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.44,30.37
|tip Make sure the Orphaned Mammoth Calf continues following you.
|tip The calf that follows you is slow.
|tip Don't move too fast, or you'll lose it.
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto 59.44,30.37
accept Kaw the Mammoth Destroyer##11879 |goto 59.44,30.37
step
clicknpc Wooly Mammoth Bull##25743
|tip They look like larger brown hairy elephants.
|tip You can find them all around this area.
Ride a Wooly Mammoth Bull |invehicle |goto 55.88,31.39 |q 11879
step
Watch the dialogue
|tip Kaw the Mammoth Destroyer will jump on Moria, the mammoth.
kill Kaw the Mammoth Destroyer##25802
|tip Use the abilities on your action bar.
click Kaw's War Halberd##188066
|tip It looks like an axe that appears on the ground after you kill Kaw the Mammoth Destroyer.
|tip You will have to stop riding the mammoth to be able to loot it.
|tip Click the red arrow on your action bar to stop riding the mammoth.
collect Kaw's War Halberd##35234 |q 11879/1 |goto 53.99,24.29
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto 57.05,44.32
step
talk Ataika##26169
turnin Cowards and Fools##11932 |goto 63.80,46.12
accept The Son of Karkut##12086 |goto 63.80,46.12
accept Not Without a Fight!##11949 |goto 63.80,46.12
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto 63.95,45.72
|only if subzone("Kaskala")
stickystart "Kill_Kvaldir_Raiders"
step
click Kaskala Supplies+
|tip They look like brown wicker baskets on the ground around this area.
|tip They can also be inside the buildings.
collect 8 Kaskala Supplies##35711 |q 11945 |goto 65.51,47.45
|only if haveq(11945)
step
label "Kill_Kvaldir_Raiders"
kill 12 Kvaldir Raider##25760 |q 11949/1 |goto 67.27,53.03
|tip They look like large green humans.
|tip You can find them all around the Kaskala area. |notinsticky
You can find more around [67.51,47.93]
step
talk Ataika##26169
turnin Not Without a Fight!##11949 |goto 63.80,46.12
accept Muahit's Wisdom##11950 |goto 63.80,46.12
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.95,45.72
|only if haveq(11945) or completedq(11945)
step
talk Elder Muahit##26218
turnin Muahit's Wisdom##11950 |goto 67.20,54.85
accept Spirits Watch Over Us##11961 |goto 67.20,54.85
step
clicknpc Iruk##26219
|tip Underwater.
Choose _<Search corpse for Issliruk's Totem.>_
collect Issliruk's Totem##35701 |q 11961/1 |goto 67.64,50.41
step
talk Elder Muahit##26218
turnin Spirits Watch Over Us##11961 |goto 67.20,54.85
accept The Tides Turn##11968 |goto 67.20,54.85
step
kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.60,56.70
|tip He looks like a large green human without a weapon.
|tip He fights around this area.
step
talk Elder Muahit##26218
turnin The Tides Turn##11968 |goto 67.20,54.85
step
Enter the building |goto 78.00,52.04 < 10 |walk
talk Tonraq##27188
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tonraq##27188 |goto 77.91,52.20 |q 12086
step
talk Bilko Driftspark##28195
fpath Unu'pe |goto 78.53,51.53
step
talk Corporal Venn##26187
turnin The Son of Karkut##12086 |goto 82.01,46.42
accept Surrounded!##11944 |goto 82.01,46.42
step
talk Private Casey##26186
accept The Lost Courier##12157 |goto 82.16,46.40
step
kill 7 Ziggurat Defender##26202 |q 11944/1 |goto 82.66,43.11
step
talk Corporal Venn##26187
turnin Surrounded!##11944 |goto 82.01,46.42
accept Thassarian, the Death Knight##12088 |goto 82.01,46.42
step
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Thassarian, the Death Knight##12088 |goto 84.79,41.67
accept Finding the Phylactery##11956 |goto 84.79,41.67
step
click Frozen Phylactery##188141
|tip Underwater.
|tip You will be attacked.
kill Phylactery Guardian##26225+
collect Tanathal's Phylactery##35687 |q 11956/1 |goto 85.40,33.34
step
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Finding the Phylactery##11956 |goto 84.79,41.67
accept Buying Some Time##11938 |goto 84.79,41.67
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Kill En'kilah enemies around this area
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
Slay #20# En'kilah Casualties |q 11938/1 |goto 85.73,27.33
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Buying Some Time##11938 |goto 84.79,41.67
accept Words of Power##11942 |goto 84.79,41.67
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs and enter the building |goto 88.64,28.33 < 15 |walk
kill High Priest Talet-Kha##26073
|tip Inside the building.
|tip You must kill the 2 cocoons next to him before you can attack him.
collect High Priest Talet-Kha's Scroll##35354 |q 11942/3 |goto 89.43,28.89
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
kill High Priest Andorath##25392
|tip Upstairs inside the building.
collect High Priest Andorath's Scroll##35355 |q 11942/1 |goto 88.06,20.94
step
Enter the building |goto 84.24,21.82 < 15 |walk
kill High Priest Naferset##26076
|tip Inside the building.
|tip You must kill the 3 enemies channeling on him before you can attack him.
collect High Priest Naferset's Scroll##35353 |q 11942/2 |goto 83.88,20.46
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Run up the stairs and enter the building |goto 84.68,40.93 < 15 |walk
talk Thassarian##26170
|tip Inside the building.
turnin Words of Power##11942 |goto 84.79,41.67
step
talk Courier Lanson##27060
|tip Inside the tent.
turnin The Lost Courier##12157 |goto Dragonblight 28.83,56.17
step
talk Palena Silvercloud##26881
fpath Stars' Rest |goto 29.18,55.33
step
talk Sentinel Amberline##27055
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Sentinel Amberline##27055 |goto 29.03,55.09 |q 11733 |future
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto Borean Tundra 44.98,33.38
accept Monitoring the Rift: Winterfin Cavern##12728 |goto Borean Tundra 44.98,33.38
step
talk Surristrasz##24795
accept Traversing the Rift##11733 |goto 45.32,34.52
step
talk Surristrasz##24795
Ask him _"May I use a drake to fly elsewhere?"_
|tip Choose to fly to "Transitus Shield, Coldarra".
Begin Flying to Transitus Shield |ontaxi |goto 45.32,34.52 |q 11733
step
Fly to Transitus Shield |offtaxi |goto 33.12,34.41 |notravel |q 11733
step
talk Warmage Adami##27046
fpath Transitus Shield |goto 33.13,34.44
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Traversing the Rift##11733 |goto 32.95,34.40
accept Reading the Meters##11900 |goto 32.95,34.40
accept Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Raelorasz##26117
accept Basic Training##11918 |goto 33.31,34.53
step
talk Librarian Serrah##26110
accept Nuts for Berries##11912 |goto 33.49,34.38
stickystart "Kill_Coldarra_Spellweavers"
step
kill Coldarra Spellbinder##25719+
|tip They look like large humans wearing purple robs.
collect Scintillating Fragment##35648 |n
use the Scintillating Fragment##35648
accept Puzzling...##11941 |goto 32.92,28.99
step
talk Raelorasz##26117
turnin Puzzling...##11941 |goto 33.31,34.53
accept The Cell##11943 |goto 33.31,34.53
stickystart "Collect_Glacial_Splinters"
stickystart "Collect_Magic_Bound_Splinters"
stickystart "Collect_Frostberries"
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Southern Coldarra Reading |q 11900/2 |goto 28.27,35.02
step
kill Warbringer Goredrak##25712
|tip He looks like a large blue humanoid dragon in brown armor.
collect Energy Core##35669 |q 11943/1 |goto 24.13,29.59
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 21.62,26.80 |q 11912
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Western Coldarra Reading |q 11900/4 |goto 22.62,23.45
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 23.86,21.70 |q 11912
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 25.41,19.93 |q 11912
step
kill General Cerulean##25716
|tip He looks like a large blue and white dragon.
collect Prison Casing##35668 |q 11943/2 |goto 27.32,20.40
step
label "Collect_Frostberries"
click Frostberry Bush##188113+
|tip They look like medium sized snow covered bushes with dark leaves on the ground.
|tip You should be able to finish up with these here. |notinsticky
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Frostberry##35492 |q 11912/1 |goto 29.53,20.54
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Northern Coldarra Reading |q 11900/3 |goto 31.72,20.56
step
label "Collect_Glacial_Splinters"
kill Glacial Ancient##25709+
|tip They look like large white and brown walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Glacial Splinter##35483 |q 11910/1 |goto 34.13,25.70
step
label "Collect_Magic_Bound_Splinters"
kill Magic-Bound Ancient##25707+
|tip They look like large purple and white walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Magic-Bound Splinter##35484 |q 11910/2 |goto 34.13,25.70
step
label "Kill_Coldarra_Spellweavers"
kill 10 Coldarra Spellweaver##25722 |q 11918/1 |goto 31.45,29.44
|tip You can find them all around the Coldarra area. |notinsticky
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Archmage Berinand##25314
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Archmage Berinand##25314 |goto 32.97,34.38 |q 11918
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.31,34.53
accept Hatching a Plan##11936 |goto 33.31,34.53
step
talk Raelorasz##26117
turnin The Cell##11943 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Nuts for Berries##11912 |goto 33.49,34.38
accept Keep the Secret Safe##11914 |goto 33.49,34.38
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
accept Keristrasza##11946 |goto 33.20,34.19
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
turnin Keristrasza##11946
accept Bait and Switch##11951 |goto 33.20,34.19
stickystart "Collect_Crystallized_Mana_Shards"
step
kill Coldarra Wyrmkin##25728+
|tip They look like larger armored blue dragonkin.
|tip You can find them all around the Coldarra area. |notinsticky
|tip You need these axes to destroy dragon eggs in a few steps.
collect 5 Frozen Axe##35586 |goto 29.57,30.52 |q 11936
You can find more around: |notinsticky
[25.27,35.16]
[24.14,25.21]
step
label "Collect_Crystallized_Mana_Shards"
click Crystallized Mana##188140+
|tip They look like clusters of pink crystals on the ground.
|tip They are usually near the 3 purple cracks in the ground around the perimeter of the large trench surrounding the Nexus building.
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Crystallized Mana Shard##35685 |q 11951/1 |goto 24.64,24.34
You can find more around: |notinsticky
[29.93,22.39]
[29.12,31.77]
stickystart "Destroy_Dragon_Eggs"
stickystart "Collect_Nexus_Mana_Essences"
step
click Coldarra Geological Monitor##188100
|tip On the ground in the trench, outside of the Nexus building.
Take the Nexus Geological Reading |q 11900/1 |goto 28.32,28.48
step
label "Destroy_Dragon_Eggs"
click Blue Dragon Egg##188133+
|tip They look like large dark colored eggs with white crystals on them on the ground around this area.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
Destroy #5# Dragon Eggs |q 11936/1 |goto 28.08,29.18
step
label "Collect_Nexus_Mana_Essences"
kill Arcane Serpent##25721+
|tip They look like pink flying snakes in the air.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
collect 5 Nexus Mana Essence##35493 |q 11914/1 |goto 27.95,24.20
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
_Next to you:_
talk Keristrasza##26237
Tell her _"I am prepared to face Saragosa!"_
Teleport to Saragosa's Landing |complete subzone("Saragosa's Landing") |q 11957
step
use the Arcane Power Focus##35690
|tip In the middle of the floating platform.
Watch the dialogue
kill Saragosa##26232
|tip She will fly to the floating platform, and turn into her non-elite human form.
|tip You won't have to fight her elite dragon form.
collect Saragosa's Corpse##35709 |q 11957/1 |goto 21.59,22.55
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
_Next to you:_
talk Keristrasza##26237
Tell her _"Keristrasa, I am finished here. Please return me to the Transitus Shield."_
Return to Transitus Shield |complete subzone("Transitus Shield") |q 11967
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.31,34.53
turnin Mustering the Reds##11967 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Keep the Secret Safe##11914 |goto 33.49,34.38
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Reading the Meters##11900 |goto 32.95,34.40
step
talk Archmage Berinand##25314
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Archmage Berinand##25314 |goto 32.97,34.38 |q 11707
step
talk Kara Thricestar##26602
fpath Fizzcrank Airstrip |goto Borean Tundra 56.58,20.06
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Distress Call##11707 |goto 56.98,18.70
accept The Mechagnomes##11708 |goto 56.98,18.70
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
Tell him _"Tell me what's going on out here, Fizzcrank."_
Listen to Fizzcrank's Tale |q 11708/1 |goto 56.98,18.70
step
talk Jinky Wingnut##25747
turnin The Mechagnomes##11708 |goto 57.44,18.74
accept Re-Cursive##11712 |goto 57.44,18.74
step
talk Mordle Cogspinner##25702
accept What's the Matter with the Transmatter?##11710 |goto 57.51,18.61
accept King Mrgl-Mrgl##11704 |goto 57.51,18.61
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
accept Dirty, Stinkin' Snobolds!##11645 |goto 57.93,18.80
stickystart "Collect_Craftys_Stuff"
step
Enter the cave |goto 54.01,13.48 < 30 |walk
Jump down carefully into the water here |goto 54.80,12.34 < 10 |walk
talk Bonker Togglevolt##25589
|tip Downstairs inside the cave.
accept Get Me Outa Here!##11673 |goto 55.57,12.57
step
Watch the dialogue
|tip Follow Bonker Togglevolt and protect him as he walks.
|tip Let him get attacked first, otherwise he won't stop to help you fight.
|tip He eventually walks to this location outside of the cave.
Escort Bonker Togglevolt to Safety |q 11673/1 |goto 53.83,13.82
step
label "Collect_Craftys_Stuff"
click Crafty's Stuff##187689+
|tip They look like brown wooden crates on the ground around this area.
collect 10 Crafty's Stuff##34787 |q 11645/1 |goto 53.70,14.20
You can find more around: |notinsticky
[55.57,15.61]
[56.77,13.91]
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 11645
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Get Me Outa Here!##11673 |goto 56.98,18.71
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin Dirty, Stinkin' Snobolds!##11645 |goto 57.72,18.97
stickystart "Accept_The_Ultrasonic_Screwdriver"
stickystart "Collect_Fizzcrank_Spare_Parts"
step
kill Fizzcrank Mechagnome##25814+
use the Re-Cursive Transmatter Injection##34973
|tip Use it on their corpses.
Curse & Port #6# Fizzcrank Gnomes |q 11712/1 |goto 59.19,18.11
You can find more around: |notinsticky
[61.38,16.49]
[64.51,18.14]
[62.48,22.04]
[60.07,20.36]
step
label "Collect_Fizzcrank_Spare_Parts"
click Fizzcrank Spare Parts##187901+
|tip They look like various shaped grey metal objects on the ground around this area.
|tip You can find them all around in the Scalding Pools area.
collect 15 Fizzcrank Spare Parts##34972 |q 11710/1 |goto 61.78,21.75
step
label "Accept_The_Ultrasonic_Screwdriver"
Kill enemies around this area
collect The Ultrasonic Screwdriver##34984 |n
use The Ultrasonic Screwdriver##34984
accept The Ultrasonic Screwdriver##11729 |goto 61.78,21.75
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin The Ultrasonic Screwdriver##11729 |goto 57.63,18.99
accept Master and Servant##11730 |goto 57.63,18.99
step
talk Mordle Cogspinner##25702
turnin What's the Matter with the Transmatter?##11710 |goto 57.52,18.61
accept Check in With Bixie##11692 |goto 57.52,18.61
step
talk Jinky Wingnut##25747
turnin Re-Cursive##11712 |goto 57.44,18.74
accept Lefty Loosey, Righty Tighty##11788 |goto 57.44,18.74
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 11788
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk "Charlie" Northtop##26596
|tip Inside the building.
home Fizzcrank Airstrip |goto 57.12,18.72
stickystart "Reprogram_Robots"
step
click West Point Station Valve##188106
kill Twonky##25830 |q 11788/1 |goto 60.23,20.39
step
click North Point Station Valve##188107
kill ED-210##25831 |q 11788/2 |goto 65.41,17.51
step
click Mid Point Station Valve##188108
kill Max Blasto##25832 |q 11788/3 |goto 63.68,22.50
step
click South Point Station Valve##188109
kill The Grinder##25833 |q 11788/4 |goto 65.25,28.78
step
label "Reprogram_Robots"
Kill enemies around this area
|tip Only the robot type enemies will work with the quest item.
|tip You can find them all around in the Scalding Pools area.
use The Ultrasonic Screwdriver##35116
|tip Use it on their corpses.
Reprogram #15# Robots |q 11730/1 |goto 67.29,26.36
step
talk Bixie Wrenchshanker##25705
turnin Check in With Bixie##11692 |goto 73.42,18.79
accept Oh Great... Plagued Magnataur!##11693 |goto 73.42,18.79
step
kill 10 Plagued Magnataur##25615 |q 11693/1 |goto 75.96,21.60
|tip They look like large blue centaurs.
step
talk Bixie Wrenchshanker##25705
turnin Oh Great... Plagued Magnataur!##11693 |goto 73.42,18.79
accept There's Something Going On In Those Caves##11694 |goto 73.42,18.79
step
Enter the cave |goto 74.42,14.88 < 20 |walk
use Bixie's Inhibiting Powder##34915
|tip Inside the small cave.
Neutralize the Plague Cauldron |q 11694/1 |goto 74.75,14.15
step
talk Bixie Wrenchshanker##25705
turnin There's Something Going On In Those Caves##11694 |goto 73.42,18.79
accept Rats, Tinky Went into the Necropolis!##11697 |goto 73.42,18.79
accept Might As Well Wipe Out the Scourge##11698 |goto 73.42,18.79
stickystart "Destroy_Talramas_Scourge"
step
Enter the building |goto 68.62,15.26 < 40 |walk
talk Tinky Wickwhistle##25714
|tip Inside the building.
turnin Rats, Tinky Went into the Necropolis!##11697 |goto 69.90,14.74
accept I'm Stuck in this Damned Cage... But Not For Long!##11699 |goto 69.90,14.74
stickystart "Collect_Engine_Core_Crystal"
step
Follow the winding path up to the very top of the building |goto 69.51,15.82 < 10 |only if walking
kill Lich-Lord Chillwinter##25682
|tip He walks around this area.
|tip On top of the building.
collect Piloting Scourgestone##34959 |q 11699/3 |goto 70.13,13.40
step
kill Doctor Razorgrin##25678
|tip He walks around this area inside the building.
|tip Jump down to him from on top of the building.
collect Magical Gyroscope##34958 |q 11699/2 |goto 69.70,12.87
step
label "Collect_Engine_Core_Crystal"
kill Festering Ghoul##25660+
collect Engine-Core Crystal##34957 |q 11699/1 |goto 68.24,19.13
step
Enter the building |goto 68.62,15.26 < 40 |walk
talk Tinky Wickwhistle##25714
|tip Inside the building.
turnin I'm Stuck in this Damned Cage... But Not For Long!##11699 |goto 69.90,14.74
accept Let Bixie Know##11700 |goto 69.90,14.74
step
label "Destroy_Talramas_Scourge"
Kill enemies around this area
Destroy #20# Talramas Scourge |q 11698/1 |goto 68.24,19.13
step
talk Bixie Wrenchshanker##25705
turnin Let Bixie Know##11700 |goto 73.42,18.79
turnin Might As Well Wipe Out the Scourge##11698 |goto 73.42,18.79
accept Back to the Airstrip##11701 |goto 73.42,18.79
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Back to the Airstrip##11701 |goto 56.98,18.71
accept Finding Pilot Tailspin##11725 |goto 56.98,18.71
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 11788
step
talk Jinky Wingnut##25747
turnin Lefty Loosey, Righty Tighty##11788 |goto 57.44,18.74
accept The Gearmaster##11798 |goto 57.44,18.74
step
talk Crafty Wobblesprocket##25477
|tip She walks around this area.
turnin Master and Servant##11730 |goto 57.62,19.05
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Finding Pilot Tailspin##11725 |goto 61.68,35.78
accept A Little Bit of Spice##11726 |goto 61.68,35.78
step
Kill Gorloc enemies around this area
collect 4 Gorloc Spice Pouch##34983 |q 11726/1 |goto 64.90,40.82
You can find more around [67.86,41.03]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin A Little Bit of Spice##11726 |goto 61.68,35.78
accept Lupus Pupus##11728 |goto 61.68,35.78
step
use the Wolf Bait##35121
|tip Use it on Oil-stained Wolves.
|tip They look like black wolves around this area.
click Wolf Droppings##187981+
|tip They look like small piles of poop that appear on the ground after the wolves eat the bait.
collect 8 Microfilm##35123 |q 11728/1 |goto 61.77,35.87
You can find more around: |notinsticky
[63.34,37.16]
[60.71,33.87]
[59.98,39.85]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Lupus Pupus##11728 |goto 61.68,35.78
accept Emergency Protocol: Section 8.2, Paragraph C##11795 |goto 61.68,35.78
step
clicknpc Fizzcrank Recon Pilot##25841+
|tip They look like dead gnomes in black clothing laying on the ground.
|tip They are usually on the white parts of the ground next to water.
|tip You can find them all around the Scalding Pools area.
Choose _"Search for the pilot's insignia."_
collect 6 Fizzcrank Pilot's Insignia##35126 |q 11795/1 |goto 62.98,35.75
You can find more around: |notinsticky
[62.39,38.87]
[60.56,36.41]
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Emergency Protocol: Section 8.2, Paragraph C##11795 |goto 61.68,35.78
accept Emergency Protocol: Section 8.2, Paragraph D##11796 |goto 61.68,35.78
step
use the Emergency Torch##35224
Scuttle the Eastern Wreck |q 11796/1 |goto 63.32,37.02
step
use the Emergency Torch##35224
Scuttle a Southern Wreck |q 11796/2 |goto 61.08,40.08
step
use the Emergency Torch##35224
Scuttle a Northwestern Wreck |q 11796/3 |goto 60.86,33.61
step
talk Iggy "Tailspin" Cogtoggle##25807
turnin Emergency Protocol: Section 8.2, Paragraph D##11796 |goto 61.68,35.78
accept Give Fizzcrank the News##11873 |goto 61.68,35.78
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 11798
step
Enter the building |goto 57.06,19.02 < 10 |walk
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin Give Fizzcrank the News##11873 |goto 56.98,18.71
step
talk Abner Fizzletorque##25780
accept Scouting the Sinkholes##11713 |goto 57.06,20.11
step
Run up the ramp and follow the path to the top of the platform |goto 65.55,23.03 < 15 |only if walking
Enter the building at the top of the platform |goto 64.59,23.15 < 10 |walk
click The Gearmaster's Manual##190335
|tip Inside the building at the top of the platform.
|tip Gearmaster Mechazod will appear and attack you after you click the book.
Research the Gearmaster's Manual |q 11798/1 |goto 64.53,23.40
step
Watch the dialogue
|tip Inside the building at the top of the platform.
kill Gearmaster Mechazod##25834
collect Mechazod's Head##35486 |q 11798/2 |goto 64.53,23.40
step
use the Map of the Geyser Fields##34920
Mark the Location of the Northwest Sinkhole |q 11713/3 |goto 66.41,32.01
step
use the Map of the Geyser Fields##34920
Mark the Location of the Northeast Sinkhole |q 11713/2 |goto 69.50,32.79
step
use the Map of the Geyser Fields##34920
Mark the Location of the South Sinkhole |q 11713/1 |goto 70.21,36.41
step
talk Fizzcrank Fullthrottle##25590
|tip Upstairs inside the building.
turnin The Gearmaster##11798 |goto 56.98,18.71
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 11713
step
talk Abner Fizzletorque##25780
turnin Scouting the Sinkholes##11713 |goto 57.06,20.11
accept Fueling the Project##11715 |goto 57.06,20.11
step
use the Portable Oil Collector##34975
|tip Use it next to the black oil spots on the ground in the water around this area.
Collect #8# Barrels of Oil |q 11715/1 |goto 57.60,25.19
You can find more around: |notinsticky
[59.68,24.72]
[61.11,28.65]
step
talk Abner Fizzletorque##25780
turnin Fueling the Project##11715 |goto 57.06,20.11
accept A Bot in Mammoth's Clothing##11718 |goto 57.06,20.11
step
Kill Mammoth enemies around this area
collect 6 Thick Mammoth Hide##34977 |q 11718/1 |goto 53.68,21.21
You can find more around [54.84,28.78]
step
talk Abner Fizzletorque##25780
turnin A Bot in Mammoth's Clothing##11718 |goto 57.06,20.11
step
talk Willis Wobblewheel##26599
|tip He walks around this area.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Willis Wobblewheel##26599 |goto 57.04,19.82 |q 12728
step
talk King Mrgl-Mrgl##25197
turnin King Mrgl-Mrgl##11704 |goto 43.50,13.97
accept Learning to Communicate##11571 |goto 43.50,13.97
stickystart "Collect_Winterfin_Clams"
step
kill Scalder##25226
|tip He looks like a blue water elemental that swims along this purple trench underwater around this area.
use The King's Empty Conch##34598
|tip Use it on his corpse.
collect The King's Filled Conch##34623 |q 11571/1 |goto 42.78,17.07
step
label "Collect_Winterfin_Clams"
Kill Winterfin enemies around this area
|tip They look like murlocs.
click Winterfin Clam##187367+
|tip They look like small grey clams on the ground around this area.
collect 5 Winterfin Clam##34597 |goto 40.61,16.85 |q 11559 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip You will need them for a quest soon.
step
talk King Mrgl-Mrgl##25197
turnin Learning to Communicate##11571 |goto 43.50,13.97
accept Winterfin Commerce##11559 |goto 43.50,13.97
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto 43.04,13.81
step
talk Ahlurglgr##25206
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ahlurglgr##25206 |goto Borean Tundra/0 43.04,13.81 |q 11560 |future
step
talk King Mrgl-Mrgl##25197
accept Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
step
talk Brglmurgl##25199
accept Them!##11561 |goto 42.83,13.65
stickystart "Rescue_Winterfin_Tadpoles"
stickystart "Slay_Winterfin_Murlocs"
step
use the Arcanometer##34669
|tip At the entrance of the cave.
Take the Winterfin Cavern Reading |q 12728/1 |goto 39.88,19.76
step
label "Rescue_Winterfin_Tadpoles"
click Cage##238791+
|tip They look like yellow wooden cages on the ground around this area.
Rescue #20# Winterfin Tadpoles |q 11560/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
label "Slay_Winterfin_Murlocs"
Kill Winterfin enemies around this area
Slay #15# Winterfin Murlocs |q 11561/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
Leave the cave |goto 39.92,19.98 < 40 |walk |only if subzone("Winterfin Caverns")
talk Brglmurgl##25199
turnin Them!##11561 |goto 42.83,13.65
step
talk Ahlurglgr##25206
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ahlurglgr##25206 |goto Borean Tundra/0 43.04,13.81 |q 11560
step
talk King Mrgl-Mrgl##25197
turnin Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.50,13.97
step
talk Mrmrglmr##25205
turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42.00,12.77
accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
accept Succulent Orca Stew##11564 |goto 42.03,13.15
stickystart "Collect_Succulent_Orca_Blubber"
step
kill Glrggl##25203
|tip It looks like a larger orca that swims on the surface of the water around this area.
collect Glrggl's Head##34617 |q 11563/1 |goto 36.47,8.23
step
label "Collect_Succulent_Orca_Blubber"
kill Glimmer Bay Orca##25204+
|tip Underwater around this area.
collect 7 Succulent Orca Blubber##34618 |q 11564/1 |goto 39.94,12.37
You can find more around: |notinsticky
[40.74,7.39]
[42.70,15.83]
step
talk Mrmrglmr##25205
turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
accept The Spare Suit##11565 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
turnin Succulent Orca Stew##11564 |goto 42.03,13.15
step
talk Ahlurglgr##25206
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ahlurglgr##25206 |goto Borean Tundra/0 43.04,13.81 |q 11565
step
talk King Mrgl-Mrgl##25197
turnin The Spare Suit##11565 |goto 43.50,13.97
accept Surrender... Not!##11566 |goto 43.50,13.97
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff spell:45278 |goto 40.33,19.21 |q 11566
step
Enter the cave |goto 39.92,19.97 < 40 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
accept Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff spell:45278 |q 11566
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
Jump down and follow the path |goto 38.10,22.16 < 10 |walk
kill Keymaster Urmgrgl##25210
|tip He walks around this area.
|tip Inside the cave, on the bottom floor.
collect Urmgrgl's Key##34600 |q 11569/1 |goto 39.07,22.69
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff spell:45278 |q 11566
step
Follow the path |goto 37.50,21.87 < 10 |walk
kill Claximus##25209
|tip Inside the cave, on the top floor.
|tip To reach him, hug the right wall as you follow the path.
collect Claw of Claximus##34621 |q 11566/1 |goto 37.55,27.51
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff spell:45278 |q 11566
step
Hug the left wall as you walk and follow the path up |goto 37.49,21.57 < 10 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
turnin Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff spell:45278 |goto 37.75,23.02 |q 11570 |future
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
talk Lurgglbr##25208
|tip Inside the cave, on the top floor.
accept Escape from the Winterfin Caverns##11570 |goto 37.75,23.02
step
Escort Lurgglbr to Safety |q 11570/1 |goto 41.34,16.34
|tip Follow Lurgglbr and protect him as he walks.
|tip Let him get attacked first, otherwise he won't stop to help you fight.
|tip He eventually walks to this location outside the cave.
step
talk Ahlurglgr##25206
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ahlurglgr##25206 |goto 43.04,13.81 |q 11570
step
talk King Mrgl-Mrgl##25197
turnin Surrender... Not!##11566 |goto 43.50,13.97
turnin Escape from the Winterfin Caverns##11570 |goto 43.50,13.97
step
use the Hearthstone##6948
Hearth to Fizzcrank Airstrip |goto 57.09,18.74 < 30 |noway |c |q 11723 |future
|only if subzone("Winterfin Retreat")
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
step
talk Abner Fizzletorque##25780
accept Deploy the Shake-n-Quake!##11723 |goto 57.06,20.11
step
use the Shake-n-Quake 5000 Control Unit##34981
Watch the dialogue
|tip Lord Kryxix will appear nearby.
Deploy the Shake-n-Quake 5000 |q 11723/2 |goto 70.20,36.41
step
kill Lord Kryxix##25629 |q 11723/1 |goto 70.36,37.56
|tip He looks like a huge blue beetle that walks around this area.
step
talk Abner Fizzletorque##25780
turnin Deploy the Shake-n-Quake!##11723 |goto 57.06,20.11
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",{
author="support@zygorguides.com",
condition_suggested=function() return level >= 72 and level <= 74 and not completedq(11239) end,
next="Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",
},[[
step
talk Image of Archmage Modera##26673
accept Rifle the Bodies##12000 |goto Dragonblight 29.00,55.45
step
talk Warden Jodi Moonsong##26973
accept The Liquid Fire of Elune##12166 |goto 29.18,55.65
step
talk Doldaen##27051
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Doldaen##27051 |goto 29.28,56.18 |q 12166
step
talk Naohain##27052
home Stars' Rest |goto 28.89,56.09
step
talk Courier Lanson##27060
|tip Inside the tent.
accept Of Traitors and Treason##12171 |goto 28.83,56.18
step
talk Palena Silvercloud##26881
turnin Of Traitors and Treason##12171 |goto 29.18,55.32
stickystart "Cleanse_Rabid_Grizzly_Corpses"
step
kill Blighted Elk##26616+
|tip They look like deer bucks around this area.
use the Liquid Fire of Elune##36956
|tip Use it on their corpses.
Cleanse #6# Blighted Elk Corpses |q 12166/1 |goto 28.48,49.48
You can find more around: |notinsticky
[31.09,47.25]
[24.46,50.29]
step
label "Cleanse_Rabid_Grizzly_Corpses"
kill Rabid Grizzly##26643+
|tip They look like diseased bears around this area.
use the Liquid Fire of Elune##36956
|tip Use it on their corpses.
Cleanse #6# Rabid Grizzly Corpses |q 12166/2 |goto 28.48,49.48
You can find more around: |notinsticky
[31.09,47.25]
[24.46,50.29]
stickystart "Collect_Moonrest_Garden_Plans"
step
talk Ethenial Moonshadow##26501
accept Avenge this Atrocity!##12006 |goto 24.20,60.08
step
label "Collect_Moonrest_Garden_Plans"
clicknpc Dead Mage Hunter##26477+
|tip They look like dead bodies on the ground around this area.
collect Mage Hunter Personal Effects##35792+ |n
use the Mage Hunter Personal Effects##35792
|tip You may have to find and use multiple of these.
collect Moonrest Gardens Plans##35783 |q 12000/1 |goto 23.65,57.82
step
talk Image of Archmage Modera##26673
turnin Rifle the Bodies##12000 |goto 29.00,55.45
accept Prevent the Accord##12004 |goto 29.00,55.45
step
talk Warden Jodi Moonsong##26973
turnin The Liquid Fire of Elune##12166 |goto 29.18,55.65
accept Kill the Cultists##12167 |goto 29.18,55.65
stickystart "Collect_Functional_Cult_Suits"
step
Follow the path up to enter Icemist Village |goto 28.64,47.37 < 30 |only if walking and not subzone("Icemist Village")
Follow the path up and enter the building |goto 26.12,43.32 < 20 |only if walking
kill Anub'ar Cultist##26319+
collect The Favor of Zangus##36958 |n
use The Favor of Zangus##36958
accept The Favor of Zangus##12168 |goto 26.17,44.08
You can find more around: |notinsticky
[24.97,44.14]
[23.85,44.25]
[25.47,46.27]
step
label "Collect_Functional_Cult_Suits"
kill Anub'ar Cultist##26319+ |notinsticky
collect 5 Functional Cultist Suit##36957 |q 12167/1 |goto 26.17,44.08
You can find more around: |notinsticky
[24.97,44.14]
[23.85,44.25]
[25.47,46.27]
step
talk Warden Jodi Moonsong##26973
turnin Kill the Cultists##12167 |goto 29.18,55.65
turnin The Favor of Zangus##12168 |goto 29.18,55.65
accept The High Cultist##12169 |goto 29.18,55.65
step
talk Doldaen##27051
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Doldaen##27051 |goto 29.28,56.18 |q 12169
step
Enter the cave |goto 26.88,50.37 < 30 |walk |only if not subzone("The Pit of Narjun")
Follow the path down |goto 26.50,48.81 < 10 |walk
kill High Cultist Zangus##26655 |q 12169/1 |goto 28.84,49.74
|tip Inside the cave, on the bottom floor.
stickystart "Slay_Blue_Dragonflight_Forces_At_Moonrest_Gardens"
step
Follow the path up |goto 26.77,48.96 < 10 |walk |only if subzone("The Pit of Narjun")
Leave the cave |goto 26.88,50.37 < 30 |walk |only if subzone("The Pit of Narjun")
kill Wind Trader Mu'fah##26496
|tip Outside, in front of the building.
collect Wind Trader Mu'fah's Remains##35800 |q 12004/1 |goto 18.42,58.89
stickystart "Accept_A_Strange_Device"
step
Enter the building and follow the path up |goto 18.67,58.92 < 10 |only if walking
kill Goramosh##26349
|tip Upstairs inside the crumbled building.
collect The Scales of Goramosh##35801 |q 12004/2 |goto 19.52,58.12
collect Goramosh's Strange Device##36742 |goto 19.52,58.12 |q 12055 |future
step
label "Accept_A_Strange_Device"
use Goramosh's Strange Device##36742
accept A Strange Device##12055
step
use the Hearthstone##6948
Hearth to Star's Rest |goto 28.94,56.04 < 30 |noway |c |q 12004
|only if subzone("Moonrest Gardens")
stickystop "Slay_Blue_Dragonflight_Forces_At_Moonrest_Gardens"
step
talk Image of Archmage Modera##26673
turnin Prevent the Accord##12004 |goto 29.00,55.45
turnin A Strange Device##12055 |goto 29.00,55.45
accept Projections and Plans##12060 |goto 29.00,55.45
step
talk Warden Jodi Moonsong##26973
turnin The High Cultist##12169 |goto 29.18,55.65
step
use the Surge Needle Teleporter##36747
|tip You will be teleported up to a floating platform.
Teleport to the Surge Needle |complete subzone("Surge Needle") |goto 26.47,57.22 |q 12060
step
Watch the dialogue
|tip On the floating platform.
Observe the Object on the Surge Needle |q 12060/1 |goto 19.79,59.82
step
use the Surge Needle Teleporter##36747
|tip On the floating platform.
Return to the Ground |complete not subzone("Surge Needle") |q 12060
step
label "Slay_Blue_Dragonflight_Forces_At_Moonrest_Gardens"
Kill enemies around this area
|tip The Moonrest Highborne ghosts will not count for the quest goal.
Slay #15# Blue Dragonflight Forces at Moonrest Gardens |q 12006/1 |goto 20.13,55.23
You can find more around [21.36,60.53]
step
talk Ethenial Moonshadow##26501
turnin Avenge this Atrocity!##12006 |goto 24.20,60.08
accept End Arcanimus##12013 |goto 24.20,60.08
step
Follow the path down |goto 21.02,60.99 < 20 |only if walking
kill Arcanimus##26370 |q 12013/1 |goto 20.02,59.59
step
Follow the path up to leave the crater |goto 20.46,60.60 < 15 |only if walking
talk Ethenial Moonshadow##26501
turnin End Arcanimus##12013 |goto 24.20,60.08
step
talk Image of Archmage Modera##26673
turnin Projections and Plans##12060 |goto 29.00,55.45
accept The Focus on the Beach##12065 |goto 29.00,55.45
stickystart "Accept_A_Letter_For_Home"
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |goto 26.32,64.87 |q 12065
step
label "Accept_A_Letter_For_Home"
kill Captain Emmy Malin##26762 |notinsticky
collect Captain Malin's Letter##36756 |n
use Captain Malin's Letter##36756
accept A Letter for Home##12067 |goto 26.32,64.87
step
use the Ley Line Focus Control Ring##36751
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12065/1 |goto 26.53,65.07
step
Follow the path up to Leave the Glittering Strand |goto 25.56,62.37 < 20 |only if walking and subzone("Glittering Strand")
talk Image of Archmage Modera##26673
turnin The Focus on the Beach##12065 |goto 29.00,55.45
accept Atop the Woodlands##12083 |goto 29.00,55.45
step
talk Commander Saia Azuresteel##26459
turnin A Letter for Home##12067 |goto 29.04,55.42
step
talk Doldaen##27051
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Doldaen##27051 |goto 29.28,56.18 |q 12083
step
talk Sarendryana##26837
accept Strengthen the Ancients##12092 |goto 28.73,57.10
step
talk Woodlands Walker##26421+
|tip They look like smaller trees with no leaves on them that walk around this area.
|tip They have a chance to attack you instead of giving you the bark.
|tip You can find them all around the Lothalor Woodlands area.
collect Bark of the Walkers##36786+ |n
use the Bark of the Walkers##36786+
|tip Use them on Lothalor Ancients around this area.
|tip They look like larger dazed tree creatures.
Strengthen #3# Lothalor Ancients |q 12092/1 |goto 33.92,62.77
step
kill Lieutenant Ta'zinni##26815
|tip He looks like a troll that walks around this area with a guard.
|tip They walk in a clockwise circle around the large stone half circle with purple symbols on it.
collect Ley Line Focus Amulet##36779 |goto 32.61,71.39 |q 12083
step
use the Ley Line Focus Control Amulet##36779
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12083/1 |goto 32.33,71.33
step
talk Sarendryana##26837
turnin Strengthen the Ancients##12092 |goto 28.73,57.10
step
talk Image of Archmage Modera##26673
turnin Atop the Woodlands##12083 |goto 29.00,55.45
accept Search Indu'le Village##12098 |goto 29.00,55.45
step
talk Doldaen##27051
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Doldaen##27051 |goto 29.28,56.18 |q 12098
step
clicknpc Mage-Commander Evenstar##26873
|tip He looks like a dead blood elf wearing a robe.
|tip Underwater.
turnin Search Indu'le Village##12098 |goto 40.25,66.86
accept The End of the Line##12107 |goto 40.25,66.86
step
use the Ley Line Focus Control Talisman##36815
|tip Underwater.
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12107/1 |goto 39.79,66.98
step
talk Cid Flounderfix##28196
fpath Moa'ki |goto 48.51,74.39
step
talk Trapper Mau'i##26228
accept Planning for the Future##11960 |goto 48.26,74.35
|only if subzone("Moa'ki Harbor")
step
Enter the building |goto 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Travel to Moa'ki Harbor##12117 |goto 48.01,74.87 |only if haveq(12117) or completedq(12117)
turnin Travel to Moa'ki Harbor##12118 |goto 48.01,74.87 |only if haveq(12118) or completedq(12118)
accept Let Nothing Go To Waste##11958 |goto 48.01,74.87
stickystart "Collect_Stolen_Moaki_Goods"
step
Observe the Azure Dragonshrine |q 12107/2 |goto 53.11,66.52
step
clicknpc Snowfall Glade Pup##26200+
|tip They look like small wolverines.
|tip They are usually close to the buildings around this area.
collect 12 Snowfall Glade Pup##35692 |q 11960/1 |goto 45.93,68.66
You can find more around: |notinsticky
[43.82,68.46]
[42.78,71.67]
[43.37,71.68]
[44.47,71.46]
|only if haveq(11960)
step
label "Collect_Stolen_Moaki_Goods"
Kill Snowfall Glade enemies around this area
|tip They look like wolverines.
|tip You can find them all around the Snowfall Glade area.
collect 6 Stolen Moa'ki Goods##35686 |q 11958/1 |goto 43.86,70.43
You can find more around [49.12,69.76]
step
talk Trapper Mau'i##26228
turnin Planning for the Future##11960 |goto 48.26,74.35
|only if haveq(11960) or completedq(11960)
step
Enter the building |goto 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Let Nothing Go To Waste##11958 |goto 48.01,74.87
accept Slay Loguhn##11959 |goto 48.01,74.87
step
Follow the path up to leave Moa'ki Harbor |goto 48.85,69.18 < 40 |only if walking and subzone("Moa'ki Harbor")
kill Loguhn##26196
collect Blood of Loguhn##35688 |goto 46.31,59.15 |q 11959
step
use the Blood of Loguhn##35688
Smear Loguhn's Blood |q 11959/1
step
Enter the building |goto 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Slay Loguhn##11959 |goto 48.01,74.87
step
talk Kuk'uq##27185
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Kuk'uq##27185 |goto 49.37,75.43 |q 12028 |future
step
Enter the building |goto 49.02,75.77 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
accept Spiritual Insight##12028 |goto 49.14,75.66
step
use Toalu'u's Spiritual Incense##35907
Release Your Spirit |havebuff spell:47189 |goto 48.94,75.79 |q 12028
step
Watch the dialogue
Attain Spiritual Insight Concerning Indu'le Village |q 12028/1
step
Enter the building |goto 49.02,75.77 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
turnin Spiritual Insight##12028 |goto 49.14,75.66
accept Elder Mana'loa##12030 |goto 49.14,75.66
step
talk Tua'kea##26245
|tip He walks around this area.
accept Tua'kea's Crab Traps##12009 |goto 47.70,76.63
step
use Tua'kea's Breathing Bladder##37265
Gain Waterbreathing |havebuff spell:48359 |q 12009
stickystart "Collect_Tuakea_Crab_Traps"
step
click Wrecked Crab Trap##188364
|tip It looks like a broken small broken brown cage on the ground underwater.
accept Signs of Big Watery Trouble##12011 |goto 47.74,79.97
step
talk Tua'kea##26245
|tip He walks around this area.
turnin Signs of Big Watery Trouble##12011 |goto 47.70,76.63
accept The Bait##12016 |goto 47.70,76.63
step
kill Kili'ua##26521
|tip He looks like a huge crab.
|tip He walks around this area on this small island.
collect The Flesh of "Two Huge Pincers"##35831 |q 12016/1 |goto 43.28,81.84
step
talk Tua'kea##26245
|tip He walks around this area.
turnin The Bait##12016 |goto 47.70,76.63
accept Meat on the Hook##12017 |goto 47.70,76.63
step
use Tu'u'gwar's Bait##35838
|tip Use it next to Tua'kea's Fishing Hook underwater.
|tip It looks like a rope leading into the water, with a large hook on the end.
kill Tu'u'gwar |q 12017/1 |goto 46.72,78.19
|tip He swims to you.
step
label "Collect_Tuakea_Crab_Traps"
click Tua'kea Crab Trap##188359+
|tip They look like small brown cages on the ground underwater.
|tip You can find them all around the Moa'ki Harbor area.
collect 8 Tua'kea Crab Trap##35802 |q 12009/1 |goto 46.58,77.72
You can find more around: |notinsticky
[49.40,79.93]
[50.70,77.29]
step
talk Tua'kea##26245
|tip He walks around this area.
turnin Tua'kea's Crab Traps##12009 |goto 47.70,76.63
turnin Meat on the Hook##12017 |goto 47.70,76.63
step
Follow the path to leave Moa'ki Harbor |goto 48.86,69.27 < 40 |only if walking and subzone("Moa'ki Harbor")
click Elder Mana'loa##188419
turnin Elder Mana'loa##12030 |goto 36.74,65.17
accept Freedom for the Lingering##12031 |goto 36.74,65.17
step
Kill Indu'le enemies around this area
|tip They look like walrus people spirits.
|tip Deranged Indu'le Villagers will not count for the quest goal.
|tip You can find them all around the Indu'le Village area.
Put #15# Indu'le Spirits to Rest |q 12031/1 |goto 38.09,66.29
step
click Elder Mana'loa##188419
turnin Freedom for the Lingering##12031 |goto 36.74,65.17
accept Conversing With the Depths##12032 |goto 36.74,65.17
step
Follow the path down the cliff |goto 34.77,75.19 < 40 |only if walking and not subzone("The Briny Pinnacle")
Follow the path up |goto 34.37,80.11 < 30 |only if walking
click The Pearl of the Depths##188422
Watch the dialogue
|tip A huge sea monster, Oacha'noa, will appear in the water nearby.
|tip You will eventually receive a 30 second buff.
|tip Jump into the water toward Oacha'noa when you have the buff.
Obey Oacha'noa's Compulsion |q 12032/1 |goto 33.99,83.45
step
use the Hearthstone##6948
Hearth to Star's Rest |goto 28.94,56.04 < 30 |noway |c |q 12107
|only if subzone("The Briny Pinnacle")
step
talk Image of Archmage Modera##26673
turnin The End of the Line##12107 |goto 29.00,55.46
accept Gaining an Audience##12119 |goto 29.00,55.46
step
talk Doldaen##27051
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Doldaen##27051 |goto 29.28,56.18 |q 12119
step
talk Palena Silvercloud##26881
|tip You will begin flying to Wintergarde Keep when you accept the quest.
accept High Commander Halford Wyrmbane##12174 |goto 29.18,55.32
step
Fly to Wintergarde Keep |complete subzone("Wintergarde Keep") |goto 77.01,49.79 |q 12174 |notravel
step
talk Rodney Wells##26878
fpath Wintergarde Keep |goto 77.01,49.79
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin High Commander Halford Wyrmbane##12174 |goto 78.56,48.27
accept Naxxramas and the Fall of Wintergarde##12235 |goto 78.56,48.27
step
talk Gryphon Commander Urik##27317
turnin Naxxramas and the Fall of Wintergarde##12235 |goto 77.10,50.12
accept Flight of the Wintergarde Defender##12237 |goto 77.10,50.12
step
use the Wintergarde Gryphon Whistle##37287
clicknpc Wintergarde Gryphon##27661
|tip It flies down to you and lands.
Ride the Wintergarde Gryphon |invehicle |goto 77.30,49.99 |q 12237
step
Rescue #10# Helpless Villagers |q 12237/1 |goto 86.41,50.36
|tip Use the "Rescue Villager" ability on your action bar on Helpless Wintergarde Villagers.
|tip They look like humans running scared on the ground.
|tip They are spread out all around this area.
|tip You must be close to them to be able to pick them up.
Return the Helpless Villagers to [77.23,49.97]
|tip Use the "Drop Off Villager" ability on your action bar.
step
Return to Gryphon Commander Urik |goto 77.10,50.12 < 50 |c |q 12237
step
Stop Riding the Wintergarde Gryphon |outvehicle |goto 77.10,50.12 |q 12237
|tip Click the red arrow on your action bar.
step
talk Gryphon Commander Urik##27317
turnin Flight of the Wintergarde Defender##12237 |goto 77.10,50.12
accept Return to the High Commander##12251 |goto 77.10,50.12
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin Return to the High Commander##12251 |goto 78.56,48.27
accept Rescue from Town Square##12253 |goto 78.56,48.27
accept The Demo-gnome##12275 |goto 78.56,48.27
step
talk Commander Lynore Windstryke##27155
accept The Fate of the Dead##12258 |goto 78.64,48.18
step
Enter the building |goto 78.99,47.38 < 10 |walk
talk Zelig the Visionary##27314
|tip Inside the building.
accept Imprints on the Past##12282 |goto 79.15,47.17
step
talk Siege Engineer Quarterflash##27159
turnin The Demo-gnome##12275 |goto 77.85,50.29
accept The Search for Slinkin##12276 |goto 77.85,50.29
accept The Bleeding Ore##12272 |goto 77.85,50.29
step
talk Highlord Leoric Von Zeldig##27156
accept Not In Our Mine##12269 |goto 77.80,50.34
step
Enter the building |goto 77.28,51.19 < 10 |walk
talk Illusia Lune##27042
|tip She walks around this area inside the building.
home Wintergarde Keep |goto 77.48,51.43
stickystart "Rescue_Trapped_Wintergarde_Villagers"
stickystart "Kill_Vengeful_Geists"
step
Follow the path down |goto 78.80,48.48 < 40 |only if walking
Enter the building and immediately run up the stairs |goto 79.65,50.49 < 10 |walk
click Scrying Orb##189291
|tip Upstairs inside the building.
collect Scrying Orb##37538 |q 12282/1 |goto 78.85,50.89
step
label "Rescue_Trapped_Wintergarde_Villagers"
Rescue #6# Trapped Wintergarde Villagers |q 12253/1 |goto 80.03,50.01
|tip Kill the Vengeful Geists next to Trapped Wintergarde Villagers.
|tip The Trapped Wintergarde Villagers look like humans.
|tip They can be outside or inside the buildings around this area. |notinsticky
step
label "Kill_Vengeful_Geists"
kill 15 Vengeful Geist##27370 |q 12258/1 |goto 80.03,50.01
You can find more inside the buildings around this area. |notinsticky
stickystart "Collect_Strange_Ore"
stickystart "Collect_Wintergarde_Miners_Cards"
step
Leave Wintergarde Keep |goto 81.30,48.71 < 40 |only if walking and not subzone("Wintergarde Mine")
Enter the lower entrance of the mine |goto 80.14,45.33 < 10 |walk |only if not _G.IsIndoors()
clicknpc Slinkin the Demo-gnome##27412
|tip Inside the mine.
turnin The Search for Slinkin##12276 |goto 81.52,42.21
accept Leave Nothing to Chance##12277 |goto 81.52,42.21
step
Follow the path |goto 80.90,42.35 < 15 |walk
click Wintergarde Mine Bomb##189288
|tip Inside the mine.
collect Wintergarde Mine Bomb##37465 |goto 80.74,41.32 |q 12277
step
Follow the path |goto 80.94,43.02 < 10 |walk
use the Wintergarde Mine Bomb##37465
|tip Use it in the entrance to the mine at this location.
|tip Run out of the mine after using item.
|tip Don't stand too close to the bomb, it can damage you.
Destroy the Lower Wintergarde Mine Shaft |q 12277/2 |goto 80.14,45.35
step
Run up the hill and enter the upper entrance of the mine |goto 80.63,44.88 < 10 |walk
use the Wintergarde Mine Bomb##37465
|tip Use it in the entrance to the mine at this location.
|tip Run deeper into the mine after using item.
|tip There are still quests to complete inside the mine.
|tip Don't stand too close to the bomb, it can damage you.
Destroy the Upper Wintergarde Mine Shaft |q 12277/1 |goto 80.41,44.81
step
label "Collect_Strange_Ore"
click Strange Ore##188699+
|tip They look like dark colored mining nodes with light blue crystals.
|tip You can find them on the ground all throughout the mine. |notinsticky
collect 10 Strange Ore##37359 |q 12272/1 |goto 80.30,41.87
step
label "Collect_Wintergarde_Miners_Cards"
kill Risen Wintergarde Miner##27401+
|tip You can find them all throughout the mine. |notinsticky
collect 10 Wintergarde Miner's Card##37411 |q 12269/1 |goto 80.30,41.87
step
use the Hearthstone##6948
Hearth to Wintergarde Keep |goto 77.45,51.44 < 30 |noway |c |q 12277
|only if subzone("Wintergarde Mine")
step
talk Master Smith Devin Brevig##27045
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Master Smith Devin Brevig##27045 |goto 77.82,50.73 |q 12277
step
talk Highlord Leoric Von Zeldig##27156
turnin Not In Our Mine##12269 |goto 77.80,50.34
step
talk Siege Engineer Quarterflash##27159
turnin The Bleeding Ore##12272 |goto 77.84,50.30
turnin Leave Nothing to Chance##12277 |goto 77.84,50.30
accept Understanding the Scourge War Machine##12281 |goto 77.84,50.30
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin Rescue from Town Square##12253 |goto 78.56,48.27
accept Find Durkon!##12309 |goto 78.56,48.27
turnin Understanding the Scourge War Machine##12281 |goto 78.56,48.27
step
talk Commander Lynore Windstryke##27155
turnin The Fate of the Dead##12258 |goto 78.65,48.18
step
Enter the building |goto 78.99,47.38 < 10 |walk
talk Zelig the Visionary##27314
|tip Inside the building.
turnin Imprints on the Past##12282 |goto 79.15,47.17
accept Orik Trueheart and the Forgotten Shore##12287 |goto 79.15,47.17
step
talk Cavalier Durkon##27318
turnin Find Durkon!##12309 |goto 79.06,53.20
accept The Noble's Crypt##12311 |goto 79.06,53.20
step
Enter the crypt and run down the stairs |goto 78.87,52.91 < 10 |walk |only if not subzone("Wintergarde Crypt")
kill Necrolord Amarion##27508 |q 12311/1 |goto 78.60,52.38
|tip Inside the crypt, on the bottom floor.
step
click Flesh-bound Tome##189311
|tip Inside the crypt, on the bottom floor.
accept Secrets of the Scourge##12312 |goto 78.62,52.28
step
talk Cavalier Durkon##27318
|tip Run up the stairs and leave the crypt.		|only if subzone("Wintergarde Crypt")
turnin The Noble's Crypt##12311 |goto 79.06,53.20
turnin Secrets of the Scourge##12312 |goto 79.06,53.20
accept Mystery of the Tome##12319 |goto 79.06,53.20
step
Follow the road up |goto 79.42,49.28 < 40 |only if walking
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin Mystery of the Tome##12319 |goto 78.56,48.27
accept Understanding the Language of Death##12320 |goto 78.56,48.27
step
Follow the path up |goto 78.22,46.68 < 30 |only if walking
Enter the courtyard of the building |goto 77.06,46.53 < 15 |only if walking
Run down the stairs |goto 76.90,47.83 < 10 |walk
talk Inquisitor Hallard##27316
|tip He walks around this area.
|tip Downstairs inside the building.
turnin Understanding the Language of Death##12320 |goto 76.78,47.42
accept A Righteous Sermon##12321 |goto 76.78,47.42
step
Watch the dialogue
|tip Downstairs inside the building.
Hear the Righteous Sermon |q 12321/1 |goto 76.78,47.42
step
Run up the stairs and leave the building |goto 77.06,46.53 < 15 |only if walking and (subzone("Wintergarde Keep") and _G.IsIndoors())
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin A Righteous Sermon##12321 |goto 78.56,48.27
accept Into Hostile Territory##12325 |goto 78.64,48.09
step
clicknpc Wintergarde Gryphon##27661
Borrow the Wintergarde Gryphon |invehicle |goto 77.20,49.54 |q 12325
step
Fly to Duke August Foehammer |outvehicle |goto 89.60,46.86 |q 12325 |notravel
step
talk Duke August Foehammer##27157
turnin Into Hostile Territory##12325 |goto 89.68,46.37
accept Steamtank Surprise##12326 |goto 89.68,46.37
step
clicknpc Alliance Steam Tank ##27587
Take Control of an Alliance Steam Tank |invehicle |goto 89.76,46.88 |q 12326
step
Sabotage #6# Plague Wagons |q 12326/1 |goto 88.74,48.71
|tip Use the "Drop Off Gnome" ability on your action bar next to Plague Wagons.
|tip They look like metal carts with pots of orange liquid on the back of them on the ground around this area.
|tip Protect the gnomes while they sabotage the carts.
|tip Allow the gnomes to completely finish working on a Plague Wagon before using the "Drop Off Gnome" ability again.
You can find more around [87.40,51.67]
step
Drop Off the 7th Legion Elite |q 12326/2 |goto 85.70,49.88
|tip In front of the crypt entrance.
|tip Use the "Drop Off Soldier" ability on your action bar.
step
Enter the crypt and run down the stairs |goto 85.90,50.05 < 10 |walk |only if not (subzone("Wintergarde Mausoleum") and _G.IsIndoors())
talk Ambo Cash##1293
|tip Inside the crypt.
turnin Steamtank Surprise##12326 |goto 85.94,50.87
accept Scattered To The Wind##12455 |goto 85.94,50.87
step
talk Yord "Calamity" Icebeard##27319
|tip Inside the crypt.
accept Breaking Off A Piece##12462 |goto 85.86,51.02
step
Run up the stairs and leave the crypt |goto 85.90,50.05 < 10 |walk |only if subzone("Wintergarde Mausoleum")
click Wintergarde Munitions Crate##190032+
|tip They look like long brown wooden boxes on the ground around this area.
collect 8 Wintergarde Munitions##37879|q 12455/1 |goto 83.92,46.82
You can find more around: |notinsticky
[86.29,52.05]
[88.44,49.73]
step
Enter the crypt and run down the stairs |goto 85.90,50.05 < 10 |walk |only if not (subzone("Wintergarde Mausoleum") and _G.IsIndoors())
talk Ambo Cash##1293
|tip Inside the crypt.
turnin Scattered To The Wind##12455 |goto 85.94,50.87
accept The Chain Gun And You##12457 |goto 85.94,50.87
step
clicknpc 7th Legion Chain Gun##27714
|tip Inside the crypt.
Save #8# Injured 7th Legion Soldiers |q 12457/1 |goto 86.23,51.06
|tip Use the "Call Out Injured Soldier" ability on your action bar, to make the Injured Soldiers walk to you.
|tip Use the "7th Legion Chain Gun" ability to kill the enemies and protect the Injured Soldiers as they walk.
step
Stop Controlling the 7th Legion Chain Gun |outvehicle |q 12457
|tip Click the yellow arrow on your action bar.
step
talk Ambo Cash##1293
|tip Inside the crypt.
turnin The Chain Gun And You##12457 |goto 85.94,50.87
accept Plunderbeard Must Be Found!##12463 |goto 85.94,50.87
stickystart "Slay_Naxxramas_Scourge"
step
Run down the stairs and follow the path |goto 85.85,51.16 < 10 |walk
kill Necrolord X'avius##27826 |q 12462/2 |goto 84.35,51.00
|tip Inside the crypt.
step
kill Necrolord Horus##27805 |q 12462/1 |goto 86.68,52.89
|tip Inside the crypt.
step
label "Slay_Naxxramas_Scourge"
Kill enemies around this area
|tip Inside the crypt, in all of the 3 rooms.
Slay #15# Naxxramas Scourge |q 12462/3 |goto 85.42,52.49
step
Enter the secret passage at the back of the room |goto 84.40,54.64 < 10 |walk
clicknpc Plunderbeard##27828
|tip Inside the crypt.
turnin Plunderbeard Must Be Found!##12463 |goto 84.17,54.68
accept Plunderbeard's Journal##12465 |goto 84.17,54.68
stickystart "Collect_Page_5_Of_Plunderbeards_Journal"
stickystart "Collect_Page_6_Of_Plunderbeards_Journal"
stickystart "Collect_Page_7_Of_Plunderbeards_Journal"
step
Walk through the secret passage to the other side |goto 83.00,54.90 < 10 |walk
Kill enemies around this area
|tip Inside the crypt.
collect Page 4 of Plunderbeard's Journal##37910 |q 12465/1 |goto 82.69,54.11
You can find more around [81.10,53.48]
step
label "Collect_Page_5_Of_Plunderbeards_Journal"
Kill enemies around this area |notinsticky
|tip Inside the crypt. |notinsticky
collect Page 5 of Plunderbeard's Journal##37911 |q 12465/2 |goto 82.69,54.11
You can find more around [81.10,53.48]
step
label "Collect_Page_6_Of_Plunderbeards_Journal"
Kill enemies around this area |notinsticky
|tip Inside the crypt. |notinsticky
collect Page 6 of Plunderbeard's Journal##37912 |q 12465/3 |goto 82.69,54.11
You can find more around [81.10,53.48]
step
label "Collect_Page_7_Of_Plunderbeards_Journal"
Kill enemies around this area |notinsticky
|tip Inside the crypt. |notinsticky
collect Page 7 of Plunderbeard's Journal##37913 |q 12465/4 |goto 82.69,54.11
You can find more around [81.10,53.48]
step
Follow the path |goto 80.89,51.99 < 10 |walk
Follow the Path Up and Leave the Crypt |complete (subzone("Wintergarde Mausoleum") and not _G.IsIndoors()) |goto 82.16,50.40  |q 12465
step
Enter the crypt and run down the stairs |goto 85.90,50.05 < 10 |walk |only if not (subzone("Wintergarde Mausoleum") and _G.IsIndoors())
talk Ambo Cash##1293
|tip Inside the crypt.
turnin Plunderbeard's Journal##12465 |goto 85.94,50.87
accept Chasing Icestorm: The 7th Legion Front##12466 |goto 85.94,50.87
step
talk Yord "Calamity" Icebeard##27319
|tip Inside the crypt.
turnin Breaking Off A Piece##12462 |goto 85.86,51.03
step
Run up the stairs and leave the crypt |goto 85.90,50.05 < 10 |walk |only if subzone("Wintergarde Mausoleum")
talk Orik Trueheart##27347
turnin Orik Trueheart and the Forgotten Shore##12287 |goto 87.17,57.49
accept The Murkweed Elixir##12290 |goto 87.17,57.49
step
talk Tilda Darathan##27348
accept The Call Of The Crusade##12542 |goto 87.24,57.40
step
click Murkweed##189295+
|tip They look like small purple plants on the ground around this area.
collect 5 Murkweed##37569 |q 12290/1 |goto 89.71,65.89
You can find more around [90.01,71.04]
step
talk Orik Trueheart##27347
turnin The Murkweed Elixir##12290 |goto 87.17,57.49
accept The Forgotten Tale##12291 |goto 87.17,57.49
stickystart "Question_A_Forgotten_Rifleman"
stickystart "Question_A_Forgotten_Footman"
step
use the Murkweed Elixir##37570
Enter the Spirit Form |havebuff spell:48809 |goto 86.04,64.14 |q 12291
step
talk Forgotten Peasant##27226
|tip They look like human spirits working on the buildings around this area.
Tell him _"Sorry to have bothered you, friend. Carry on!"_
Question a Forgotten Peasant |q 12291/1 |goto 86.48,65.49
step
label "Question_A_Forgotten_Rifleman"
talk Forgotten Rifleman##27225
|tip They look like dwarf spirits with guns all around this area.
Tell him _"I'm sure Arthas will be back any day now, soldier. Keep your chin up!"_
Question a Forgotten Rifleman |q 12291/2 |goto 86.48,65.49
step
label "Question_A_Forgotten_Footman"
talk Forgotten Footman##27229
|tip They look like armored knight spirits all around this area.
Tell him _"I'm sure everything will work out, footman."_
Question a Forgotten Footman |q 12291/4 |goto 86.48,65.49
step
talk Forgotten Knight##27224
|tip He looks like an armored human spirit riding on a horse that walks around this area. |notinsticky
Tell him _"I must be going now, soldier. Stay vigilant!"_
Question a Forgotten Knight |q 12291/3 |goto 85.98,68.75
step
Follow the path up to leave the Forgotten Shore |goto 86.09,64.32 < 30 |only if walking and subzone("The Forgotten Shore")
talk Orik Trueheart##27347
turnin The Forgotten Tale##12291 |goto 87.17,57.49
accept The Truth Shall Set Us Free##12301 |goto 87.17,57.49
step
use Orik's Crystalline Orb##37577
|tip Use it near the blue glowing circle on the ground.
Watch the dialogue
Redeem the Forgotten |q 12301/1 |goto 86.80,66.18
step
Follow the path up to leave the Forgotten Shore |goto 86.09,64.32 < 30 |only if walking and subzone("The Forgotten Shore")
talk Orik Trueheart##27347
turnin The Truth Shall Set Us Free##12301 |goto 87.17,57.49
accept Parting Thoughts##12305 |goto 87.17,57.49
step
use the Hearthstone##6948
Hearth to Wintergarde Keep |goto 77.45,51.44 < 30 |noway |c |q 12305
|only if subzone("Dawn's Reach")
step
talk Master Smith Devin Brevig##27045
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Master Smith Devin Brevig##27045 |goto 77.82,50.73 |q 12305
step
Enter the building |goto 78.99,47.38 < 10 |walk
talk Zelig the Visionary##27314
|tip Inside the building.
turnin Parting Thoughts##12305 |goto 79.15,47.17
accept What Secrets Men Hide##12475 |goto 79.15,47.17
step
talk Commander Lynore Windstryke##27155
accept The Return of the Crusade?##12476 |goto 78.65,48.18
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
accept The Path of Redemption##12477 |goto 78.55,48.24
stickystart "Collect_The_Path_Of_Redemption"
stickystart "Slay_Scarlet_Onslaught"
step
Follow the path to leave Wintergarde Keep |goto 77.78,44.44 < 30 |only if walking and subzone("Wintergarde Keep")
Follow the path around the cliff and enter the building |goto 87.74,37.92 < 10 |walk
click Onslaught Map##190189
|tip Inside the building.
collect Onslaught Map##37930 |q 12475/1 |goto 87.58,38.12
step
label "Collect_The_Path_Of_Redemption"
Kill Onslaught enemies around this area
|tip Only enemies that look like humans will drop the quest item.
collect The Path of Redemption##37931 |q 12477/1 |goto 85.55,37.02
step
label "Slay_Scarlet_Onslaught"
Kill Onslaught enemies around this area
|tip Only enemies that look like humans will count for the quest goal. |notinsticky
Slay #20# Scarlet Onslaught |q 12476/1 |goto 85.55,37.02
step
talk Crusader Valus##28228
turnin The Call Of The Crusade##12542 |goto 83.98,26.10
accept The Cleansing Of Jintha'kalar##12545 |goto 83.98,26.10
step
Kill enemies around this area
Slay #15# Jintha'kalar Scourge |q 12545/1 |goto 88.02,20.10
You can find more around [88.89,26.76]
step
talk Crusader Valus##28228
turnin The Cleansing Of Jintha'kalar##12545 |goto 83.98,26.10
step
talk Spiked##28867
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Spiked##28867 |goto Zul'Drak 14.32,73.26 |q 12476
step
talk Baneflight##28615
fpath Ebon Watch |goto 14.00,73.59
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin The Path of Redemption##12477 |goto Dragonblight 78.55,48.24
step
talk Commander Lynore Windstryke##27155
turnin The Return of the Crusade?##12476 |goto 78.65,48.18
step
Enter the building |goto 78.98,47.40 < 10 |walk
talk Zelig the Visionary##27314
|tip Inside the building.
turnin What Secrets Men Hide##12475 |goto 79.15,47.17
accept Frostmourne Cavern##12478 |goto 79.15,47.17
step
talk Master Smith Devin Brevig##27045
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Master Smith Devin Brevig##27045 |goto 77.82,50.73 |q 12478
step
Follow the path, leave Wintergarde Keep, and follow the path west down the mountain until you reach the bottom |goto 75.67,51.75 < 30 |only if walking and subzone("Wintergarde Keep")
talk Nethestrasz##26851
fpath Wyrmrest Temple |goto 60.32,51.55
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12119 |goto 57.91,54.16
accept Speak with your Ambassador##12766 |goto 57.91,54.16
step
talk Tariolstrasz##26443
Tell him _"Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple."_
Begin Flying to the Top of the Temple |ontaxi |goto 57.91,54.16 |q 12458 |future
step
Fly to the Top of the Temple |offtaxi |goto 59.72,53.07 |q 12458 |future
step
talk Lord Itharius##27785
|tip At the top of the building.
accept Seeds of the Lashers##12458 |goto 59.60,54.47
step
talk Nalice##27765
|tip At the top of the building.
accept The Obsidian Dragonshrine##12447 |goto 60.07,54.20
step
talk Torastrasza##26949
Tell him _"Yes, please, I would like to return to the ground level of the temple."_
Begin Flying to the Ground Level of the Temple |ontaxi |goto 59.51,53.33 |q 12447
step
Fly to the Ground Level of the Temple |offtaxi |goto 58.01,55.18 |q 12447
step
talk Legion Commander Tyralion##27844
turnin Chasing Icestorm: The 7th Legion Front##12466 |goto 64.74,27.93
accept Chasing Icestorm: Thel'zan's Phylactery##12467 |goto 64.74,27.93
step
talk "Wyrmbait"##27843
Tell him _"Wyrmbait, eh?  Welp, go fetch us Icestorm!"_
Watch the dialogue
|tip Icestorm will fly to you and become chained by the harpoon guns nearby.
kill Icestorm##26287
|tip Let your allies fight him for a bit, to build aggro, before you attack him, so he won't attack you.
click Thel'zan's Phylactery##190127
|tip It appears on the ground after you kill Icestorm.
collect Thel'zan's Phylactery##37920 |q 12467/1 |goto 64.61,27.45
step
talk Duane##26978
|tip He walks around this area.
accept Pest Control##12142 |goto 64.42,26.94
stickystart "Slay_Snowplain_Snobolds"
step
Kill Magnataur enemies around this area
|tip They look like large blue centaurs.
Slay #3# Dragonblight Magnataur |q 12142/2 |goto 68.32,33.22
You can find more around: |notinsticky
[65.58,41.27]
[64.55,47.42]
step
label "Slay_Snowplain_Snobolds"
Kill Snowplain enemies around this area
|tip They look like kobolds.
Slay #10# Snowplain Snobolds |q 12142/1 |goto 70.24,32.69
You can find more around: |notinsticky
[64.97,42.89]
[65.12,49.85]
step
talk Duane##26978
|tip He walks around this area.
turnin Pest Control##12142 |goto 64.42,26.94
accept Canyon Chase##12143 |goto 64.42,26.94
step
kill Chilltusk##27005 |q 12143/1 |goto 72.34,28.73
|tip He looks like a Magnataur that walks around in this canyon.
collect Emblazoned Battle Horn##36855 |goto 72.34,28.73 |q 12146 |future
step
use the Emblazoned Battle Horn##36855
accept Disturbing Implications##12146
step
Follow the path up |goto 72.78,27.84 < 40 |only if walking and not subzone("Frostmourne Cavern")
Enter the cave |goto 74.23,23.63 < 30 |walk
use Zelig's Scrying Orb##37933
|tip Inside the cave.
Watch the dialogue
Reveal the Secrets of the Past |q 12478/1 |goto 75.07,20.22
step
use the Hearthstone##6948
Hearth to Wintergarde Keep |goto 77.45,51.44 < 30 |noway |c |q 12478
|only if subzone("Frostmourne Cavern")
step
talk Master Smith Devin Brevig##27045
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Master Smith Devin Brevig##27045 |goto 77.82,50.73 |q 12478
step
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin Chasing Icestorm: Thel'zan's Phylactery##12467 |goto 78.57,48.23
accept Finality##12472 |goto 78.57,48.23
step
Enter the building |goto 78.96,47.42 < 10 |walk
talk Zelig the Visionary##27314
|tip Inside the building.
turnin Frostmourne Cavern##12478 |goto 79.15,47.17
step
Follow the path down |goto 78.82,48.51 < 40 |only if walking and not subzone("Wintergarde Mausoleum")
Leave Wintergarde Keep |goto 81.30,48.70 < 40 |only if walking and not subzone("Wintergarde Mausoleum")
Enter the crypt |goto 81.86,50.73 < 10 |walk |only if not (subzone("Wintergarde Mausoleum") and _G.IsIndoors())
talk Legion Commander Yorik##27857
|tip Inside the crypt.
turnin Finality##12472 |goto 81.18,50.65
accept An End And A Beginning##12473 |goto 81.18,50.65
step
Watch the dialogue
|tip Inside the crypt.
Kill the enemies that attack
|tip Your allies will help you fight.
kill Thel'zan the Duskbringer##27383
|tip After you kill him, there is a little more dialogue to wait for before the quest completes.
Defeat Thel'zan the Duskbringer |q 12473/1 |goto 80.94,50.63
step
Follow the path up, leave the crypt, and run back up into Wintergarde Keep |goto 81.86,50.73 < 10 |walk |only if (subzone("Wintergarde Mausoleum") and _G.IsIndoors())
talk High Commander Halford Wyrmbane##27136
|tip He walks around this area.
turnin An End And A Beginning##12473 |goto 78.57,48.23
accept To Fordragon Hold!##12474 |goto 78.57,48.23
step
talk Lethecus##27940
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Lethecus##27940 |goto 59.32,53.62 |q 12474
step
talk Lauriel Trueblade##27803
|tip Inside the building.
turnin Speak with your Ambassador##12766 |goto 60.00,55.08
accept Report to the Ruby Dragonshrine##12460 |goto 60.00,55.08
step
talk Aurastrasza##26983
|tip Inside the building.
turnin Disturbing Implications##12146 |goto 60.02,55.20
step
talk Ceristrasz##27506
turnin Report to the Ruby Dragonshrine##12460 |goto 52.21,50.03
accept Heated Battle##12416 |goto 52.21,50.03
stickystart "Kill_Frigid_Geist_Attackers"
stickystart "Kill_Frigid_Ghoul_Attackers"
step
kill Frigid Abomination Attacker##27531 |q 12416/3 |goto 52.68,46.31
|tip They look like abominations.
You can find more around: |notinsticky
[50.92,52.52]
[49.35,51.10]
step
label "Kill_Frigid_Geist_Attackers"
kill 8 Frigid Geist Attacker##27686 |q 12416/2 |goto 52.68,46.31
|tip They looks like frail humans crouching on the ground.
You can find more around: |notinsticky
[50.92,52.52]
[49.35,51.10]
step
label "Kill_Frigid_Ghoul_Attackers"
kill 12 Frigid Ghoul Attacker##27685 |q 12416/1 |goto 52.68,46.31
|tip They look like zombies.
You can find more around: |notinsticky
[50.92,52.52]
[49.35,51.10]
step
talk Ceristrasz##27506
turnin Heated Battle##12416 |goto 52.21,50.03
accept Return to the Earth##12417 |goto 52.21,50.03
step
click Ruby Acorn##189992+
|tip They look like small red stones on the ground.
|tip You can find them all around the Ruby Dragonshrine area.
collect Ruby Acorn##37727+ |n
use the Ruby Acorn##37727+
|tip Use them on Ruby Keeper corpses.
|tip They look like large red dragons on fire on the ground.
Return #6# Ruby Keepers to the Earth |q 12417/1 |goto 48.25,47.14
step
talk Ceristrasz##27506
turnin Return to the Earth##12417 |goto 52.21,50.03
accept Through Fields of Flame##12418 |goto 52.21,50.03
stickystart "Kill_Frigid_Necromancers"
step
Enter the tree |goto 47.90,49.71 < 20 |walk
kill Dahlia Suntouch##27680
|tip Inside the tree.
Cleanse the Ruby Corruption |q 12418/2 |goto 47.64,48.97
collect Ruby Brooch##37833 |goto 47.64,48.97 |q 12419 |future
step
use the Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419
step
label "Kill_Frigid_Necromancers"
Leave the tree |goto 47.90,49.71 < 20 |walk |only if subzone("Ruby Dragonshrine") and _G.IsIndoors()
kill 6 Frigid Necromancer##27539 |q 12418/1 |goto 46.99,50.82
|tip They look like humans wearing robes.
|tip You can find them all around the outside of the tree.
step
talk Ceristrasz##27506
turnin Through Fields of Flame##12418 |goto 52.21,50.03
accept The Steward of Wyrmrest Temple##12768 |goto 52.21,50.03
step
Follow the path up |goto 45.57,33.86 < 40 |only if walking and not (subzone("Obsidian Dragonshrine") or subzone("Maw of Neltharion"))
Enter the Obsidian Dragonshrine |goto 42.09,31.94 < 70 |only if walking and not (subzone("Obsidian Dragonshrine") or subzone("Maw of Neltharion"))
Enter the cave |goto 37.11,31.77 < 20 |walk |only if not (subzone("Maw of Neltharion") and _G.IsIndoors())
talk Serinar##26593
|tip Inside the cave.
turnin The Obsidian Dragonshrine##12447 |goto 35.21,30.05
accept No One to Save You##12262 |goto 35.21,30.05
accept No Place to Run##12261 |goto 35.21,30.05
stickystart "Kill_Burning_Depths_Necrolytes"
stickystart "Kill_Smoldering_Skeletons"
step
Leave the cave |goto 37.11,31.77 < 20 |walk |only if subzone("Maw of Neltharion")
use the Destructive Wards##37445
Kill the enemies that attack in waves
Fully Charge the Destructive Ward |q 12261/1 |goto 41.38,31.86
step
label "Kill_Burning_Depths_Necrolytes"
kill 6 Burning Depths Necrolyte##27356 |q 12262/1 |goto 38.19,31.90
|tip They look like humans wearing robes and carrying staves.
|tip You can find them all around this area. |notinsticky
step
label "Kill_Smoldering_Skeletons"
kill 10 Smoldering Skeleton##27360 |q 12262/2 |goto 38.19,31.90
|tip They look like skeletons with red smoke rising out of the ground beneath them.
|tip You can find them all around this area. |notinsticky
step
Enter the cave |goto 37.11,31.77 < 20 |walk |only if not (subzone("Maw of Neltharion") and _G.IsIndoors())
talk Serinar##26593
|tip Inside the cave.
turnin No One to Save You##12262 |goto 35.21,30.05
turnin No Place to Run##12261 |goto 35.21,30.05
accept The Best of Intentions##12263 |goto 35.21,30.05
step
Watch the dialogue
|tip Inside the cave.
|tip You will gain the buff automatically after a few seconds.
Gain the Burning Depths Necrolyte Disguise |havebuff spell:48750 |goto 35.21,30.05 |q 12263
step
Follow the path up |goto 34.77,32.03 < 15 |walk
Carefully jump up the rocks to take a shortcut |goto 34.07,31.47 < 7 |walk
Uncover the Magmawyrm Resurrection Chamber |q 12263/1 |goto 31.92,31.35
|tip Don't kill anything, or you will lose the disguise and have to get a new one from Serinar.
|tip If you couldn't jump up the rocks to take the shortcut, continue follow the path up in the cave until you reach this location.
step
Run through passage and jump down here |goto 34.02,31.37 < 15 |walk
Follow the path |goto 34.79,32.02 < 15 |walk
talk Serinar##26593
|tip Inside the cave.
turnin The Best of Intentions##12263 |goto 35.21,30.05
accept Culling the Damned##12264 |goto 35.21,30.05
accept Defiling the Defilers##12265 |goto 35.21,30.05
stickystart "Kill_Burning_Depths_Necromancers"
stickystart "Kill_Smoldering_Constructs"
stickystart "Kill_Smoldering_Geists"
step
Follow the path up |goto 34.77,32.03 < 15 |walk
Carefully jump up the rocks to take a shortcut |goto 34.07,31.47 < 7 |walk
click Necromantic Rune##188695+
|tip They look like round purple symbols on the ground around this area inside the cave.
|tip If you couldn't jump up the rocks to take the shortcut, continue follow the path up in the cave until you reach this location.
Destroy #8# Necromantic Runes |q 12265/1 |goto 31.87,29.61
step
label "Kill_Burning_Depths_Necromancers"
kill 3 Burning Depths Necromancer##27358 |q 12264/1 |goto 31.87,29.61
|tip They look like humans wearing robes and carrying orange glowing staves.
|tip Inside the cave. |notinsticky
step
label "Kill_Smoldering_Constructs"
kill 6 Smoldering Construct##27362 |q 12264/2 |goto 31.87,29.61
|tip They look like hunched skeletons with red smoke rising out of the bodies.
|tip Inside the cave. |notinsticky
step
label "Kill_Smoldering_Geists"
kill 6 Smoldering Geist##27363 |q 12264/3 |goto 31.87,29.61
|tip They look like frail humans crouching on the ground.
|tip Inside the cave. |notinsticky
step
Run through passage and jump down here |goto 34.02,31.37 < 15 |walk
Follow the path |goto 34.79,32.02 < 15 |walk
talk Serinar##26593
|tip Inside the cave.
turnin Culling the Damned##12264 |goto 35.21,30.05
turnin Defiling the Defilers##12265 |goto 35.21,30.05
accept Neltharion's Flame##12267 |goto 35.21,30.05
step
Follow the path up |goto 34.77,32.03 < 15 |walk
Carefully jump up the rocks to take a shortcut |goto 34.07,31.47 < 7 |walk
use Neltharion's Flame##37539
|tip Use it on the edge of the rock, next to the lava inside the cave.
|tip If you couldn't jump up the rocks to take the shortcut, continue follow the path up in the cave until you reach this location.
Cleanse the Summoning Area |q 12267/1 |goto 31.41,31.01
step
Watch the dialogue
|tip Inside the cave.
kill Rothin the Decaying##27355 |q 12267/2 |goto 31.41,31.01
step
Run through passage and jump down here |goto 34.02,31.37 < 15 |walk
Follow the path |goto 34.79,32.02 < 15 |walk
talk Serinar##26593
|tip Inside the cave.
turnin Neltharion's Flame##12267 |goto 35.21,30.05
accept Tales of Destruction##12266 |goto 35.21,30.05
step
Leave the cave |goto 37.11,31.77 < 20 |walk |only if subzone("Maw of Neltharion")
Leave the Obsidian Dragonshrine |goto 42.09,31.94 < 70 |only if walking and (subzone("Obsidian Dragonshrine") or subzone("Maw of Neltharion"))
Follow the path up |goto 42.18,28.53 < 40 |only if not subzone("Fordragon Hold")
talk Derek Rammel##26877
fpath Fordragon Hold |goto 39.52,25.91
step
Follow the path up through the cliffs |goto 38.13,26.00 < 20 |only if walking
talk Highlord Bolvar Fordragon##27872
turnin To Fordragon Hold!##12474 |goto 37.81,23.41
accept Audience With The Dragon Queen##12495 |goto 37.81,23.41
step
talk Dalormi##27943
|tip Inside the building, on the ground floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dalormi##27943 |goto 59.39,54.95 |q 12495
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12768 |goto 57.91,54.17
accept Informing the Queen##12123 |goto 57.91,54.17
step
talk Tariolstrasz##26443
Tell him _"Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple."_
Begin Flying to the Top of the Temple |ontaxi |goto 57.91,54.16 |q 12123
step
Fly to the Top of the Temple |offtaxi |goto 59.72,53.07 |q 12123
step
talk Nalice##27765
|tip At the top of the tower.
turnin Tales of Destruction##12266 |goto 60.07,54.20
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin Audience With The Dragon Queen##12495 |goto 59.83,54.66
accept Galakrond and the Scourge##12497 |goto 59.83,54.66
turnin Informing the Queen##12123 |goto 59.83,54.66
accept Report to Lord Devrestrasz##12435 |goto 59.83,54.66
step
talk Krasus##27990
|tip At the top of the tower.
turnin The Fate of the Ruby Dragonshrine##12419 |goto 59.79,54.70
step
talk Torastrasza##26949
|tip At the top of the tower.
turnin Galakrond and the Scourge##12497 |goto 59.52,53.32
accept On Ruby Wings##12498 |goto 59.52,53.32
step
use the Ruby Beacon of the Dragon Queen##38302
clicknpc Wyrmrest Vanquisher##27996
|tip It flies to you.
Ride the Wyrmrest Vanquisher |invehicle |goto 59.73,53.12 |q 12498
step
_NOTE:_
Use the Wyrmrest Vanquisher Dragon to Travel
|tip You are about to use the dragon you're riding to fly to a quest area.
|tip When you get to the area, look for the questgiver NPC that walks around the area.
|tip You will be able to find her by looking for the yellow exclamation mark on your minimap.
|tip When you find her, fly to her and click the red arrow on your dragon's action bar to stop riding the dragon.
Click Here to Continue |confirm |q 12454 |future
step
talk Nishera the Garden Keeper##27255
|tip She looks like a night elf carrying a staff.
|tip She walks along the road around this area.
accept Cycle of Life##12454 |goto 64.90,73.64
stickystart "Kill_Emerald_Skytalons"
step
kill Emerald Lasher##27254+
|tip They look like plants with large petals.
|tip You can find them all around the Emerald Dragonshrine area.
collect 3 Lasher Seed##140458 |q 12458/1 |goto 63.44,71.90
step
label "Kill_Emerald_Skytalons"
kill 5 Emerald Skytalon##27244 |q 12454/1 |goto 63.94,73.22
|tip They look like owls flying in the air above the lake.
step
talk Nishera the Garden Keeper##27255
|tip She looks like a night elf carrying a staff.
|tip She walks along the road around this area.
turnin Cycle of Life##12454 |goto 64.90,73.64
step
use the Ruby Beacon of the Dragon Queen##38302
clicknpc Wyrmrest Vanquisher##27996
|tip It flies to you.
Ride the Wyrmrest Vanquisher |invehicle |goto 63.41,69.40 |q 12498
step
_NOTE:_
Use the Dragon to Travel While Questing
|tip You are about to use the dragon you're riding to do many quests.
|tip You will repeatedly be using the "Ruby Beacon of the Dragon Queen" quest item to call a dragon to ride.
|tip When you need to call a dragon, run to a place on the map where your minimap says "The Dragon Wastes".
|tip Being anywhere in the Dragon Wastes will allow you to use the item to summon another dragon to ride.
|tip You can also use it when you're at Wyrmrest Temple.
Click Here to Continue |confirm |q 12458
step
talk Lord Itharius##27785
|tip At the top of the tower.
turnin Seeds of the Lashers##12458 |goto 59.60,54.47
step
talk Demestrasz##27950
|tip Inside the building, on the ground floor.
home Wyrmrest Temple |goto 59.80,54.24
step
talk Duane##26978
|tip He walks around this area.
turnin Canyon Chase##12143 |goto 64.42,26.94
step
talk Nozzlerust Supply Runner##26896
accept Return to Sender##12469 |goto 48.46,24.13
step
talk Narf##26647
|tip He walks around this area.
accept Nozzlerust Defense##12043 |goto 54.47,23.60
step
talk Zivlix##26661
accept Shaved Ice##12045 |goto 54.70,23.25
step
talk Xink##26660
turnin Return to Sender##12469 |goto 55.02,23.43
accept Stocking Up##12044 |goto 55.02,23.43
step
kill Crystalline Ice Elemental##26316+
collect 4 Ice Shard Cluster##36728 |q 12045/1 |goto 57.74,16.46
You can find more around:
[53.30,19.09]
[49.86,18.52]
step
use the Ruby Beacon of the Dragon Queen##38302
clicknpc Wyrmrest Vanquisher##27996
|tip It flies to you.
Ride the Wyrmrest Vanquisher |invehicle |goto 54.03,22.06 |q 12498
step
kill 30 Wastes Scavenger##28005 |q 12498/1 |goto 55.91,35.07
|tip Use the abilities on your action bar to kill enemies on the ground.
|tip Use the "Devour Ghoul" ability on your action bar on enemies to gain health and mana for your dragon.
step
kill Thiassi the Lightning Bringer##28018
|tip He walks around this small area on top of the hill.
|tip Use the abilities on your action bar.
kill Grand Necrolord Antiok##28006
|tip He appears after you kill Thiassi the Lightning Bringer.
|tip He will knock you off your dragon.
click Scythe of Antiok##190354
|tip It appears on the ground after you kill Grand Necrolord Antiok.
collect Scythe of Antiok##38305 |q 12498/2 |goto 54.41,31.42
stickystart "Collect_Composite_Ore"
stickystart "Kill_Wastes_Diggers"
step
kill Wastes Taskmaster##26493 |q 12043/1 |goto 56.19,27.07
|tip They look like humans wearing robes.
You can find more around: |notinsticky
[59.02,31.14]
[51.80,31.23]
step
label "Collect_Composite_Ore"
click Composite Ore##188442+
|tip They look like carts with ore in them on the ground.
collect 8 Composite Ore##36727 |q 12044/1 |goto 56.19,27.07
You can find more around: |notinsticky
[59.02,31.14]
[51.80,31.23]
step
label "Kill_Wastes_Diggers"
kill 12 Wastes Digger##26492 |q 12043/2 |goto 56.19,27.07
|tip They look like zombies.
You can find more around: |notinsticky
[59.02,31.14]
[51.80,31.23]
step
talk Xink##26660
turnin Stocking Up##12044 |goto 55.03,23.42
step
talk Zivlix##26661
turnin Shaved Ice##12045 |goto 54.70,23.25
accept Soft Packaging##12046 |goto 54.70,23.25
step
talk Narf##26647
|tip He walks around this area.
turnin Nozzlerust Defense##12043 |goto 54.47,23.60
step
kill Jormungar Tunneler##26467+
|tip They look like large grubs around this area.
|tip Dragonbone Condors will also drop the quest item.
|tip They look like birds.
collect 12 Thin Animal Hide##36729 |q 12046/1 |goto 51.75,24.79
step
talk Zivlix##26661
turnin Soft Packaging##12046 |goto 54.70,23.25
accept Something That Doesn't Melt##12047 |goto 54.70,23.25
step
talk Xink##26660
accept Hard to Swallow##12049 |goto 55.02,23.43
stickystart "Collect_Splintered_Bone_Chunks"
step
kill Hulking Jormungar##26293+
|tip They look like centipedes standing upright.
|tip They are elite, but you don't kill them.
|tip Just fight one until it opens its mouth.
|tip You will get a message on your screen when it opens its mouth.
use the Potent Explosive Charges##36732
|tip Use them on the Hulking Jormungar after it opens its mouth.
click Jormungar Meat##188434+
|tip They appear on the ground after the Hulking Jormungar dies.
collect 6 Seared Jormungar Meat##36731 |q 12049/1 |goto 59.48,23.04
step
label "Collect_Splintered_Bone_Chunks"
click Splintered Bone Chunk##188441+
|tip They look like small white pointed bones near the huge bones on the ground around this area.
collect 12 Splintered Bone Chunk##36730 |q 12047/1 |goto 57.28,24.29
You can find more around: |notinsticky
[59.96,27.16]
[62.80,28.91]
step
talk Xink##26660
turnin Hard to Swallow##12049 |goto 55.02,23.43
step
talk Zivlix##26661
turnin Something That Doesn't Melt##12047 |goto 54.70,23.25
step
talk Narf##26647
|tip He walks around this area.
accept Harp on This!##12052 |goto 54.47,23.60
step
talk Xink##26660
accept Lumber Hack##12050 |goto 55.02,23.43
step
use Xink's Shredder Control Device##36734
|tip Fly to this location with the dragon and use the item here.
clicknpc Xink's Shredder##27061
|tip It walks up to you.
Control a Shredder |invehicle |goto 45.44,7.36 |q 12050
stickystart "Collect_Coldwind_Lumber"
stickystart "Slay_Harpies"
step
kill Mistress of the Coldwind##26890 |q 12052/1 |goto 44.99,9.26
|tip Use the abilities on your action bar.
|tip She flies in the air around this area.
step
label "Collect_Coldwind_Lumber"
collect 50 Coldwind Lumber##36733 |q 12050/1 |goto 45.76,11.52
|tip Use the "Gather Lumber" ability on your action bar next to Coldwind Trees.
|tip They look like trees with small pieces of paper with X's on them on the ground around this area.
You can find more around [50.18,18.62]
step
label "Slay_Harpies"
Kill Coldwind enemies around this area
|tip You can find more to the southeast.
Slay #15# Harpies |q 12052/2 |goto 50.18,18.62
You can find more around [45.76,11.52]
step
Stop Controlling the Shredder |outvehicle |q 12052
|tip Click the red arrow on your action bar.
step
talk Narf##26647
|tip He walks around this area.
turnin Harp on This!##12052 |goto 54.47,23.60
step
talk Xink##26660
turnin Lumber Hack##12050 |goto 55.03,23.42
step
talk Narf##26647
|tip He walks around this area.
accept Stiff Negotiations##12112 |goto 54.47,23.60
step
talk Zort##26659
|tip Inside the ice canyon.
turnin Stiff Negotiations##12112 |goto 59.40,18.18
accept Slim Pickings##12075 |goto 59.40,18.18
step
Follow the path up |goto 59.86,15.44 < 30 |only if walking and not subzone("Ice Heart Cavern")
Enter the cave |goto 57.47,12.28 < 30 |walk |only if not subzone("Ice Heart Cavern")
clicknpc Ravaged Crystalline Ice Giant##26809
|tip Inside the cave.
collect Sample of Rockflesh##36765 |q 12075/1 |goto 56.16,11.93
step
Leave the cave |goto 57.47,12.28 < 30 |walk |only if subzone("Ice Heart Cavern")
Cross the ice bridge |goto 60.19,16.45 < 20 |only if walking
talk Zort##26659
|tip Inside the ice canyon.
turnin Slim Pickings##12075 |goto 59.40,18.18
accept Messy Business##12076 |goto 59.40,18.18
step
talk Ko'char the Unbreakable##26473
|tip Inside the ice canyon.
accept Stomping Grounds##12079 |goto 58.99,17.81
stickystart "Kill_Ice_Heart_Jormungar_Feeders"
step
kill Ice Heart Jormungar Feeder##26358+
|tip Don't kill them, wait for them to cast a poison on you.
use Zort's Scraper##36775
|tip Use it when you are affected by the poison.
|tip After you collect the spit, you can kill them.
collect 2 Vial of Corrosive Spit##36768 |q 12076/1 |goto 60.67,18.58
You can find more around: |notinsticky
[60.06,15.81]
[56.74,19.64]
step
talk Zort##26659
|tip Inside the ice canyon.
|tip If you ended up on the bottom floor inside the ice canyon in the previous step, run up the white ice ramp near him, and cross the ice bridge.
turnin Messy Business##12076 |goto 59.40,18.18
accept Apply This Twice A Day##12077 |goto 59.40,18.18
stickystop "Kill_Ice_Heart_Jormungar_Feeders"
step
talk Ko'char the Unbreakable##26473
|tip Inside the ice canyon.
turnin Apply This Twice A Day##12077 |goto 58.99,17.81
step
talk Zort##26659
|tip Inside the ice canyon.
accept Worm Wrangler##12078 |goto 59.40,18.18
step
use Zort's Protective Elixir##36770
|tip This will give you a buff that protects you from the spit attacks the centipede enemies use.
Become Undigestible |havebuff spell:47430
|only if itemcount(36770) > 0
stickystart "Kill_Ice_Heart_Jormungar_Feeders"
step
Follow the path up |goto 59.86,15.44 < 30 |only if walking and not subzone("Ice Heart Cavern")
use the Sturdy Crates##36771
|tip Use them on Ice Heart Jormungar Spawns.
|tip They look like smaller blue centipedes.
|tip You can find them all throughout inside the cave.
click Captured Jormungar Spawn##190510+
|tip They appear on the ground after you use the Sturdy Crates on Ice Heart Jormungar Spawns.
collect 3 Captured Jormungar Spawn##36772 |q 12078/1 |goto 57.47,12.28
step
label "Kill_Ice_Heart_Jormungar_Feeders"
kill 8 Ice Heart Jormungar Feeder##26358 |q 12079/1 |goto 57.47,12.28
|tip You can find them all throughout inside the cave. |notinsticky
step
Leave the cave |goto 57.47,12.28 < 30 |walk |only if subzone("Ice Heart Cavern")
Cross the ice bridge |goto 60.19,16.45 < 20 |only if walking
talk Zort##26659
|tip Inside the ice canyon.
turnin Worm Wrangler##12078 |goto 59.40,18.18
step
talk Ko'char the Unbreakable##26473
|tip Inside the ice canyon.
turnin Stomping Grounds##12079 |goto 58.99,17.81
step
talk Dalormi##27943
|tip Inside the building, on the ground floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dalormi##27943 |goto 59.39,54.95 |q 12495
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin On Ruby Wings##12498 |goto 59.84,54.65
accept Return To Angrathar##12499 |goto 59.84,54.65
step
talk Torastrasza##26949
Tell him _"I would like to go to Lord Devrestrasz in the middle of the temple."_
Begin Flying to the Middle Level of the Temple |ontaxi |goto 59.51,53.33 |q 12435
step
Fly to the Middle Level of the Temple |offtaxi |goto 59.20,54.33 |q 12435
step
talk Lord Devrestrasz##27575
|tip Upstairs inside the tower, on the middle level.
turnin Report to Lord Devrestrasz##12435 |goto 59.24,54.32
accept Defending Wyrmrest Temple##12372 |goto 59.24,54.32 |only if subzone("Wyrmrest Temple")
step
talk Wyrmrest Defender##27629
|tip On the middle level of the tower.
Tell him _"We need to get into the fight. Are you ready?"_
Fly with the Wyrmrest Defender |invehicle |goto 58.35,55.22 |q 12372
|only if haveq(12372) or completedq(12372)
stickystart "Kill_Azure_Dragons"
stickystart "Kill_Azure_Drakes"
step
Destabilize the Azure Dragonshrine |q 12372/3 |goto 55.47,66.14
|tip Use the "Destabilize Azure Dragonshrine" ability on your action bar.
|only if haveq(12372) or completedq(12372)
step
label "Kill_Azure_Dragons"
kill 3 Azure Dragon##27608 |q 12372/1 |goto 56.96,65.31
|tip Use the abilities on your action bar. |notinsticky
|tip They look like larger blue dragons flying all around this area. |notinsticky
|only if haveq(12372) or completedq(12372)
You can find more all around Wyrmrest Temple around [58.78,58.38]
step
label "Kill_Azure_Drakes"
kill 5 Azure Drake##27682 |q 12372/2 |goto 56.96,65.31
|tip Use the abilities on your action bar. |notinsticky
|tip They look like smaller blue dragons flying all around this area |notinsticky
|only if haveq(12372) or completedq(12372)
You can find more all around Wyrmrest Temple around [58.78,58.38]
step
Enter the building |goto 49.06,75.73 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
turnin Conversing With the Depths##12032 |goto 49.14,75.65
step
talk Tariolstrasz##26443
Ask him _"Can you spare a drake to take me to Lord Devrestrasz in the middle of the temple?"_
Begin Flying to the Middle Level of the Temple |ontaxi |goto 57.91,54.16 |q 12372
|only if haveq(12372) or completedq(12372)
step
Fly to the Middle Level of the Temple |offtaxi |goto 59.20,54.33 |q 12372
|only if haveq(12372) or completedq(12372)
step
talk Lord Devrestrasz##27575
|tip Upstairs inside the tower, on the middle level.
turnin Defending Wyrmrest Temple##12372 |goto 59.24,54.32
|only if haveq(12372) or completedq(12372)
step
Follow the path up through the cliffs |goto 38.13,26.00 < 20 |only if walking
talk Highlord Bolvar Fordragon##27872
turnin Return To Angrathar##12499 |goto 37.81,23.41
step
talk Alexstrasza the Life-Binder##31333
accept Reborn From The Ashes##13347 |goto 38.42,19.25
step
click Fordragon's Shield
|tip It looks like a small metal shield on the ground.
collect Fordragon's Shield##44474 |q 13347/1 |goto 38,19.6
step
talk Image of Archmage Modera##26673
accept The Magical Kingdom of Dalaran##12794 |goto 29.00,55.45
step
talk Image of Archmage Modera##26673
Tell her _"I am ready to be teleported to Dalaran."_
Teleport to Dalaran |complete zone("Dalaran") |goto 29.00,55.45 |q 12794
step
talk Archmage Celindra##29156
|tip Inside the building.
turnin The Magical Kingdom of Dalaran##12794 |goto Dalaran/0 56.30,46.76
accept Learning to Leave and Return: the Magical Way##12790 |goto Dalaran/0 56.30,46.76
step
click Teleport to Violet Stand Crystal##191229
|tip Inside the building.
Use the Teleport to Violet Stand Crystal |q 12790/1 |goto 55.93,46.77
step
click Teleport to Dalaran Crystal##191230
Use the Teleport to Dalaran Crystal |q 12790/2 |goto Crystalsong Forest 15.75,42.46
step
talk Archmage Celindra##29156
|tip Inside the building.
turnin Learning to Leave and Return: the Magical Way##12790 |goto Dalaran/0 56.30,46.76
step
talk Aludane Whitecloud##28674
fpath Dalaran##310 |goto 72.18,45.79
step
Enter Stormwind Keep |goto Stormwind City 73.14,46.63 < 15 |walk |only if not subzone("Stormwind Keep")
talk King Varian Wrynn##29611
turnin Reborn From The Ashes##13347 |goto Stormwind City 79.99,38.47
step
talk Gryphon Commander Urik##27317
accept The Hills Have Us##12511 |goto Dragonblight 77.10,50.12
step
Watch the dialogue
Fly to Amberpine Lodge |complete subzone("Amberpine Lodge") |goto 31.33,59.14 |q 12511 |notravel
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",{
author="support@zygorguides.com",
condition_suggested=function() return level >= 74 and level <= 75 and not completedq(11239) end,
next="Leveling Guides\\Northrend (69-80)\\Zul'Drak (75-77)",
},[[
step
_NOTE:_
You Will Have Access to Stronger Ammo Soon
|tip You should be level 75 soon, or already are.
|tip When you reach level 75, you can use stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 75 ammo.
Click Here to Continue |confirm |q 12225 |future
|only if Hunter
step
talk Vana Grey##26880
fpath Amberpine Lodge |goto Grizzly Hills 31.31,59.11
step
Enter the building |goto 31.73,59.57 < 10 |walk
click Amberseed##188667
|tip Inside the building.
accept Mmm... Amberseeds!##12225 |goto 31.80,59.55
step
talk Master Woodsman Anderhol##27277
|tip Inside the building.
turnin Mmm... Amberseeds!##12225 |goto 32.10,59.96
accept Just Passing Through##12226 |goto 32.10,59.96
accept Replenishing the Storehouse##12212 |goto 32.10,59.96
accept Them or Us!##12215 |goto 32.10,59.96
step
talk Lieutenant Dumont##26875
|tip Inside the building.
turnin The Hills Have Us##12511 |goto 31.84,60.17 |only if haveq(12511) or completedq(12511)
accept Local Support##12292 |goto 31.84,60.17
step
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12292
step
click Blackroot##188670+
|tip They look like tall grass plants on the ground around this area.
collect 5 Blackroot Stalk##37246 |q 12226/1 |goto 29.49,52.64
You can find more around [29.18,57.09]
stickystart "Kill_Graymist_Hunters"
step
Run up the stairs and enter the building |goto 16.02,65.45 < 10 |walk
click Cedar Chest##189298
|tip Inside the building.
|tip Avoid Conquest Hold as you travel here.
collect Cedar Chest##37572 |q 12292/1 |goto 15.87,65.27
step
kill Tallhorn Stag##26363+
|tip They look like brown deer bucks.
collect 8 Succulent Venison##37185 |q 12212/1 |goto 27.18,55.30
You can find more around [24.67,58.08]
step
label "Kill_Graymist_Hunters"
kill 6 Graymist Hunter##26592 |q 12215/1 |goto 25.38,55.60
|tip They look like gray wolves.
You can find more around [24.15,49.33]
step
Follow the path up to return to Amberpine Lodge |goto 32.07,55.51 < 70 |only if walking and not subzone("Amberpine Lodge")
talk Brom Armstrong##27062
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brom Armstrong##27062 |goto 31.37,59.87 |q 12215
step
Enter the building |goto 31.73,59.57 < 10 |walk
talk Master Woodsman Anderhol##27277
|tip Inside the building.
turnin Just Passing Through##12226 |goto 32.10,59.96
accept Doing Your Duty##12227 |goto 32.10,59.96
turnin Replenishing the Storehouse##12212 |goto 32.10,59.96
accept Take Their Rear!##12216 |goto 32.10,59.96
turnin Them or Us!##12215 |goto 32.10,59.96
accept Eagle Eyes##12217 |goto 32.10,59.96
step
talk Lieutenant Dumont##26875
|tip Inside the building.
turnin Local Support##12292 |goto 31.83,60.17
accept Close the Deal##12293 |goto 31.83,60.17
accept Troll Season!##12210 |goto 31.84,60.17
step
click Amberpine Outhouse##188666
Choose _"Use the outhouse."_
Watch the dialogue
collect Partially Processed Amberseeds##37250 |q 12227/1 |goto 32.22,58.92
step
kill 5 Imperial Eagle##26369 |q 12217/1 |goto 34.45,58.30
|tip They look like bald eagles.
|tip They fly around and land on rocks and logs on the ground around this area.
You can find more around: |notinsticky
[35.28,60.25]
[36.93,60.46]
[38.37,53.05]
[32.15,47.65]
step
Rup up the stairs and enter the building |goto 34.77,55.42 < 10 |walk
talk Ivan##27469
|tip Inside the building.
turnin Close the Deal##12293 |goto 34.77,55.61
accept A Tentative Pact##12294 |goto 34.77,55.61
step
kill Grizzly Bear##27131+
|tip All along the river.
collect 8 Grizzly Flank##37200 |q 12216/1 |goto 29.57,51.92
You can find more around: |notinsticky
[30.72,46.48]
[29.36,56.13]
step
_NOTE:_
The Next Quest is a PVP Daily Quest
|tip Would you like to complete it?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Alliance)! |confirm |next "PVP_Blackriver_Skirmish"
No, Skip It |confirm |next "PVP_Blackriver_Skirmish_SKIP"
step
label "PVP_Blackriver_Skirmish"
talk Scout Captain Carter##27783
accept Blackriver Skirmish##12444 |goto Grizzly Hills 29.91,59.78
step
Kill enemies around this area
|tip You can kill NPCs or players.
Slay #10# Horde in Blackriver |q 12444/1 |goto 28.35,62.42
|only if haveq(12444) or completedq(12444)
step
Follow the path up |goto 29.74,61.05 < 10 |only if walking
talk Scout Captain Carter##27783
turnin Blackriver Skirmish##12444 |goto 29.91,59.78
step
label "PVP_Blackriver_Skirmish_SKIP"
talk Master Woodsman Anderhol##27277
|tip Inside the building.
|tip Run back to Amberpine Lodge.
turnin Doing Your Duty##12227 |goto Grizzly Hills 32.10,59.96
turnin Take Their Rear!##12216 |goto Grizzly Hills 32.10,59.96
turnin Eagle Eyes##12217 |goto Grizzly Hills 32.10,59.96
step
talk Lieutenant Dumont##26875
|tip Inside the building.
turnin A Tentative Pact##12294 |goto 31.83,60.17
accept An Exercise in Diplomacy##12295 |goto 31.83,60.17
step
talk Jennifer Bell##27066
|tip Inside the building.
home Amberpine Lodge |goto 31.97,60.28
step
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12295
step
talk Woodsman Drake##27391
|tip Outside the building.
accept Secrets of the Flamebinders##12222 |goto 32.42,59.94
accept Thinning the Ranks##12223 |goto 32.42,59.94
stickystart "Kill_Dragonflayer_Huscarls"
step
Follow the path up into Voldrune |goto 31.46,73.71 < 15 |only if walking and not subzone("Voldrune")
kill Dragonflayer Flamebinder##27259+
|tip These look like women.
|tip They can also be inside the buildings around this area.
collect 3 Flame-Imbued Talisman##37229 |q 12222/1 |goto 30.35,75.75
You can find more around [28.06,74.09]
step
label "Kill_Dragonflayer_Huscarls"
kill 12 Dragonflayer Huscarl##27260 |q 12223/1 |goto 30.35,75.75
|tip They can also be inside the buildings around this area. |notinsticky
You can find more around [28.06,74.09]
step
use the Hearthstone##6948
Hearth to Amberpine Lodge |complete subzone("Amberpine Lodge") |noway |c |q 12223
|only if subzone("Voldrune")
step
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12295
step
talk Woodsman Drake##27391
turnin Thinning the Ranks##12223 |goto 32.42,59.94
turnin Secrets of the Flamebinders##12222 |goto 32.42,59.94
accept The Thane of Voldrune##12255 |goto 32.42,59.94
step
_NOTE:_
The Next Few Quests are PVP Daily Quests
|tip Would you like to complete them?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Alliance)! |confirm |next "PVP_Venture_Bay"
No, Skip It |confirm |next "PVP_Venture_Bay_SKIP"
step
label "PVP_Venture_Bay"
talk Barblefink##27495
accept Seeking Solvent##12443 |goto Grizzly Hills 23.02,80.16
step
talk Lieutenant Stuart##27562
accept Keep Them at Bay!##12316 |goto 22.12,81.25
step
talk Sergeant Downey##27602
accept Smoke 'Em Out##12323 |goto 21.99,80.72
stickystart "Kill_Horde_In_Venture_Bay"
step
use the Smoke Bomb##37621
|tip Use it on Venture Co. Stragglers.
|tip They look like Horde enemies inside the buildings around this area.
|tip They are not in the ships. |notinsticky
Smoke Out #20# Venture Company Stragglers |q 12323/1 |goto 17.87,79.79
You can find more around: |notinsticky
[16.11,76.83]
[14.47,76.78]
step
label "Kill_Horde_In_Venture_Bay"
Kill Conquest Hold enemies around this area
|tip You can kill NPCs or players.
Kill #10# Horde in Venture Bay |q 12316/1 |goto 13.75,78.13
step
Enter the ship |goto 15.98,81.11 < 7 |walk
click Element 115
|tip It looks like a red canister inside the ship, on the main deck level.
|tip HURRY after picking this up, it only lasts for 4 minutes.
|tip In the next step, get back to the questgivers as fast as you can.
collect Element 115##37664 |q 12443/1 |goto 16.44,80.32
step
talk Sergeant Downey##27602
turnin Smoke 'Em Out##12323 |goto 21.99,80.72
step
talk Lieutenant Stuart##27562
turnin Keep Them at Bay!##12316 |goto 22.12,81.25
step
talk Barblefink##27495
turnin Seeking Solvent##12443 |goto 23.02,80.16
step
label "PVP_Venture_Bay_SKIP"
Follow the path up into Voldrune |goto Grizzly Hills 25.85,79.54 < 30 |only if walking and not subzone("Voldrune")
clicknpc Flamebringer##27292
Choose _"Unchain and control Flamebringer."_
Ride Flamebringer |invehicle |goto Grizzly Hills 26.57,77.80 |q 12255
step
kill Thane Torvald Eriksson##27377 |q 12255/1 |goto 27.06,72.86
|tip Use the abilities on your action bar.
|tip At the top of the tower.
step
talk Samir##26424
|tip Avoid Conquest Hold as you travel here.
turnin Troll Season!##12210 |goto 16.19,47.60
accept Filling the Cages##11984 |goto 16.19,47.60
step
talk Ameenah##26474
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ameenah##26474 |goto 15.96,47.79 |q 11984
step
talk Budd##26422
|tip Inside the building.
Tell him _"Come on, Budd. Time to play with the ice trolls!"_
Get Budd's Attention |havebuff spell:47014 |goto 16.37,48.26 |q 11984
step
use the Bounty Hunter's Cage##35736
|tip Use it on a troll that Budd stuns.
|tip To stun a troll, use Budd's "Tag Troll" ability on your pet bar near any Drakkari troll around this area.
|tip He will sneak up and stun a nearby troll.
Capture a Live Ice Troll |q 11984/1 |goto 13.79,58.47
step
Follow the path up to leave the Ruins of Drak'Zin |goto 14.21,57.36 < 40 |only if walking and subzone("Ruins of Drak'Zin")
talk Samir##26424
turnin Filling the Cages##11984 |goto 16.19,47.60
step
talk Drakuru##26423
accept Truce?##11989 |goto 16.42,47.81
step
click Dull Carving Knife##190208
|tip Stuck into the side of the tree stump.
collect Dull Carving Knife##38083 |goto 16.54,47.81 |q 11989
step
use the Dull Carving Knife##38083
Take the Blood Oath |havebuff Blood Oath##136168 |goto 16.43,47.81 |q 11989
step
talk Drakuru##26423
Choose _"Shake Drakuru's outstretched hand."_
Form a Blood Pact With Drakuru |q 11989/1 |goto 16.42,47.81
step
talk Drakuru##26423
turnin Truce?##11989 |goto 16.42,47.81
accept Vial of Visions##11990 |goto 16.42,47.81
step
talk Ameenah##26474
buy Imbued Vial##18256 |q 11990/1 |goto 15.96,47.79
step
click Hazewood Bush##188600+
|tip They look like small bushy plants with purple flowers on them on the ground around this area.
collect 3 Haze Leaf##37085 |q 11990/2 |goto 15.01,44.39
You can find more around: |notinsticky
[16.63,43.34]
[13.39,41.84]
step
click Waterweed##188351+
|tip They look like tall bushy green plants underwater around this area.
collect Waterweed Frond##35795 |q 11990/3 |goto 15.23,40.35
step
talk Drakuru##26423
turnin Vial of Visions##11990 |goto 16.42,47.81
accept Subject to Interpretation##11991 |goto 16.42,47.81
step
talk Prigmon##26519
accept Scourgekabob##12484 |goto 15.73,46.69
step
click Scourged Troll Mummy##190225
collect Scourged Troll Mummy##38149 |goto 15.70,46.86 |q 12484
step
use the Scourged Troll Mummy##38149
|tip Use it next to the burning pile of mummies.
Burn a Mummified Carcass |q 12484/1 |goto 16.78,48.22
step
talk Mack Fearsen##26604
turnin Scourgekabob##12484 |goto 16.67,48.29
step
Watch the dialogue
talk Mack Fearsen##26604
accept Seared Scourge##12029 |goto 16.67,48.29
step
talk Prigmon##26519
accept Shimmercap Stew##12483 |goto 15.73,46.69
stickystart "Collect_Ice_Serpent_Eyes"
step
click Shimmering Snowcaps##188345+
|tip They look like patches of blue glowing mushrooms on the ground around this area.
collect 5 Shimmering Snowcap##35782 |q 12483/2 |goto 11.42,54.39
You can find more around: |notinsticky
[11.05,57.10]
[11.09,59.55]
[10.66,62.76]
step
Kill Drakkari enemies around this area
|tip They look like trolls.
|tip You can find them all around in the Ruins of Drak'Zin. |notinsticky
collect 5 Frozen Mojo##35799 |goto 12.73,60.84 |q 11991
step
use Drakuru's Elixir##35797
|tip Use it next to the brazier at the top of the stairs.
talk Image of Drakuru##26500
turnin Subject to Interpretation##11991 |goto 13.27,60.86
accept Sacrifices Must be Made##12007 |goto 13.27,60.86
step
label "Collect_Ice_Serpent_Eyes"
kill Ice Serpent##26446+
|tip They look like thin blue dragons.
|tip You can find them all around in the Ruins of Drak'Zin. |notinsticky
collect 5 Ice Serpent Eye##35798 |q 12483/1 |goto 13.51,59.61
step
Follow the path up to leave the Ruins of Drak'Zin |goto 14.21,57.36 < 40 |only if walking and subzone("Ruins of Drak'Zin")
talk Ameenah##26474
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ameenah##26474 |goto 15.96,47.79 |q 12007
stickystart "Collect_Sweetroots"
step
Enter the building |goto 14.51,37.30 < 15 |walk
kill Warlord Zim'bo##26544
|tip Inside the building.
collect Zim'bo's Mojo##35836 |goto 14.51,38.01 |q 12007
step
Run up the stairs |goto 16.77,36.23 < 20 |only if walking
click Seer of Zeb'Halak##188458
|tip At the top of the temple.
Choose _"Remove the Eye of the Prophets from the idol's face."_
collect Eye of the Prophets##35806 |q 12007/1 |goto 17.93,36.48
step
use Drakuru's Elixir##35797
|tip Use it next to the brazier at the top of the temple.
talk Image of Drakuru##26543
turnin Sacrifices Must be Made##12007 |goto 17.46,36.37
accept Heart of the Ancients##12042 |goto 17.46,36.37
step
label "Collect_Sweetroots"
click Sweetroot##188601+
|tip They looke like green spikey plants on the ground around this area.
|tip You can find them all around the Zeb'Halak area.
collect 5 Sweetroot##37087 |q 12483/3 |goto 15.61,36.25
step
use Mack's Dark Grog##35908
|tip Throw it at the trolls running around on the ground nearby.
|tip Don't let the trolls get too close to you, they'll attack you.
Burn #20# Scourge Trolls |q 12029/1 |goto 16.20,29.32
step
talk Prigmon##26519
turnin Shimmercap Stew##12483 |goto 15.74,46.69
accept Say Hello to My Little Friend##12190 |goto 15.74,46.69
step
talk Ameenah##26474
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ameenah##26474 |goto 15.96,47.79 |q 12190
step
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.67,48.29
step
talk Envoy Ducal##26821
turnin An Exercise in Diplomacy##12295 |goto 26.41,35.70
step
talk Sergei##27486
accept Northern Hospitality##12299 |goto 26.48,35.77
step
talk Katja##27545
accept Wolfsbane Root##12307 |goto 25.61,33.30
stickystart "Collect_Wolfsbane_Root"
step
kill 8 Conquest Hold Marauder##27424 |q 12299/1 |goto 24.28,32.23
You can find more around [24.09,36.38]
step
talk Sergei##27486
turnin Northern Hospitality##12299 |goto 26.48,35.77
step
label "Collect_Wolfsbane_Root"
click Wolfsbane Root##189313+
|tip They look like thorny vine plants on the ground around this area.
collect 8 Wolfsbane Root##12307 |q 12307/1 |goto 26.30,38.48
You can find more around [29.26,36.23]
step
talk Katja##27545
turnin Wolfsbane Root##12307 |goto 25.61,33.30
step
talk Sergei##27486
accept Test of Mettle##12300 |goto 26.48,35.77
step
kill Sergeant Bonesnap##27493
Perform the Test of Mettle |q 12300/1 |goto 21.91,29.80
step
talk Captured Trapper##27497
turnin Test of Mettle##12300 |goto 21.93,29.93
accept Words of Warning##12302 |goto 21.93,29.93
step
Run up the stairs and enter the building |goto 26.50,31.99 < 10 |walk
talk Caged Prisoner##27499
|tip Inside the building.
turnin Words of Warning##12302 |goto 26.47,31.80
accept Escape from Silverbrook##12308 |goto 26.47,31.80
step
Watch the dialogue
|tip Follow the Freed Alliance Scout as he walks.
clicknpc Ducal's Horse##27409
Ride with Ducal |invehicle |goto 26.25,31.11 |q 12308
step
Watch the dialogue
|tip Use the abilities on your action bar to make the horse run faster and fight enemies as you ride with Ducal.
|tip You will ride back to Amberpine Lodge.
Escape from Silverbrook |q 12308/1 |goto 32.38,59.14 |notravel
step
talk Woodsman Drake##27391
turnin The Thane of Voldrune##12255 |goto 32.42,59.94
step
Enter the building |goto 32.25,60.25 < 10 |walk
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12308
step
talk Lieutenant Dumont##26875
|tip Inside the building.
turnin Escape from Silverbrook##12308 |goto 31.83,60.17
accept A Swift Response##12310 |goto 31.83,60.17
stickystart "Accept_Descent_Into_Darkness"
stickystart "Kill_Silverbrook_Hunters"
step
kill Vladek##27547 |q 12310/2 |goto 36.24,67.84
|tip Inside the building.
step
label "Accept_Descent_Into_Darkness"
kill Silverbrook Hunter##27546+
collect Mikhail's Journal##36940 |n
use Mikhail's Journal##36940
accept Descent into Darkness##12105 |goto 36.12,68.64
step
label "Kill_Silverbrook_Hunters"
kill 7 Silverbrook Hunter##27546 |q 12310/1 |goto 36.12,68.64
|tip They look like humans.
step
Enter the building |goto 32.25,60.25 < 10 |walk
talk Lieutenant Dumont##26875
|tip Inside the building.
turnin A Swift Response##12310 |goto 31.83,60.17
turnin Descent into Darkness##12105 |goto 31.83,60.17
accept Report to Gryan Stoutmantle... Again##12109 |goto 31.83,60.17
step
talk Hierophant Thayreen##27295
accept The Failed World Tree##12219 |goto 31.16,59.47
accept A Dark Influence##12220 |goto 31.16,59.47
step
talk Brom Armstrong##27062
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brom Armstrong##27062 |goto 31.37,59.87 |q 12220
stickystart "Collect_Slime_Samples"
step
Enter the cave |goto 28.61,45.06 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Tears |q 12220/3 |goto 30.44,43.80
step
Follow the path up and leave the cave |goto 28.61,45.06 < 15 |walk |only if subzone("Vordrassil's Tears") and _G.IsIndoors()
Enter the cave |goto 33.28,48.43 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Limb |q 12220/2 |goto 32.23,45.89
step
label "Collect_Slime_Samples"
Follow the path up and leave the cave |goto 33.28,48.43 < 15 |walk |only if subzone("Vordrassil's Limb") and _G.IsIndoors()
kill Entropic Ooze##26366+
collect 6 Slime Sample##37199 |q 12219/1 |goto 39.82,50.50
step
Follow the path up and leave the cave |goto 33.28,48.43 < 15 |walk |only if subzone("Vordrassil's Limb") and _G.IsIndoors()
Enter the cave |goto 40.73,51.99 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Heart |q 12220/1 |goto 41.15,54.64
step
Follow the path up and leave the cave |goto 40.73,51.99 < 15 |walk |only if subzone("Vordrassil's Heart") and _G.IsIndoors()
Enter the building |goto 32.25,60.25 < 10 |walk
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12220
step
talk Hierophant Thayreen##27295
turnin The Failed World Tree##12219 |goto 31.16,59.47
turnin A Dark Influence##12220 |goto 31.16,59.47
accept A Possible Link##12246 |goto 31.16,59.47
accept Children of Ursoc##12247 |goto 31.16,59.47
stickystart "Collect_Crazed_Furbolg_Blood"
step
Follow the path up |goto 46.84,56.54 < 40 |only if walking and not subzone("Rage Fang Shrine")
Enter the cave |goto 48.39,58.39 < 15 |walk
talk Orsonn##27274
|tip Inside the small cave.
Tell him _"You're free to go Orsonn, but first tell me what's wrong with the furbolg."_
Listen to Orsonn's Story |q 12247/1 |goto 48.07,58.86
step
Enter the cave |goto 66.75,61.72 < 15 |walk
talk Kodian##27275
|tip Inside the small cave.
Ask him _"Who was this stranger?"_
Listen to Kodian's Story |q 12247/2 |goto 66.89,62.40
step
label "Collect_Crazed_Furbolg_Blood"
Kill enemies around this area
|tip They look like furbolgs.
collect 8 Crazed Furbolg Blood##37251 |q 12246/1 |goto 65.98,58.61
You can find more around [65.77,54.58]
step
use the Hearthstone##6948
Hearth to Amberpine Lodge |complete subzone("Amberpine Lodge") |noway |c |q 12247
|only if subzone("Heart's Blood Shrine")
step
talk Benjamin Jacobs##27071
|tip He walks around this area inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Benjamin Jacobs##27071 |goto 32.01,60.42 |q 12247
step
talk Hierophant Thayreen##27295
turnin A Possible Link##12246 |goto 31.16,59.47
turnin Children of Ursoc##12247 |goto 31.16,59.47
accept Vordrassil's Sapling##12248 |goto 31.16,59.47
accept Vordrassil's Seeds##12250 |goto 31.16,59.47
stickystart "Collect_Vordrassils_Seeds"
step
Enter the huge tree |goto 50.45,45.99 < 30 |only if walking and not (subzone("Grizzlemaw") and _G.IsIndoors())
use the Verdant Torch##37306
|tip Inside the huge tree, on the bottom floor.
collect Vordrassil's Ashes##37303 |q 12248/1 |goto 50.73,42.66
step
label "Collect_Vordrassils_Seeds"
click Vordrassil's Seed##188691+
|tip They look like small brown pine cones on the ground.
|tip You can find them all around the Grizzlemaw area. |notinsticky
|tip They can be inside or outside the huge tree. |notinsticky
collect 8 Vordrassil's Seed##37302 |q 12250/1 |goto 50.73,42.70
step
_NOTE:_
The Next Few Quests are PVP Daily Quests
|tip Would you like to complete them?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Alliance)! |confirm |next "PVP_Blue_Sky_Logging_Grounds"
No, Skip It |confirm |next "PVP_Blue_Sky_Logging_Grounds_SKIP"
step
label "PVP_Blue_Sky_Logging_Grounds"
Leave the huge tree and follow the path up to leave the Grizzlemaw area |goto Grizzly Hills 54.05,36.41 < 40 |only if walking and subzone("Grizzlemaw")
talk Rheanna##27484
accept Life or Death##12296 |goto Grizzly Hills 40.47,42.65
step
talk Pipthwack##27416
accept Pieces Parts##12268 |goto 39.64,43.37
step
talk Synipus##27371
accept Shredder Repair##12244 |goto 39.54,43.57
step
talk Sergeant Hartsman##27468
accept Kick 'Em While They're Down##12289 |goto 39.37,43.87
stickystart "Heal_Wounded_Infantry"
stickystart "Collect_High_Tension_Springs"
stickystart "Collect_Notched_Sprockets"
stickystart "Collect_Grooved_Cogs"
stickystart "Eliminate_Horde_Units"
step
clicknpc Broken-down Shredder##27354+
|tip They look like humanoid metal shredding machines around this area.
|tip You will take control of the shredder machines.
|tip You need to return the machine to your allies.
|tip At the return location, use the "Shredder Delivery" ability on your action bar to return the shredders.
Deliver #3# Shredders |q 12244/1 |goto 34.12,40.46
Return the Shredders at [39.53,43.40]
step
label "Heal_Wounded_Infantry"
use the Renewing Bandage##37576
|tip Use it on Wounded Westfall Infantry.
|tip They look like Alliance soldiers kneeling on the ground around this area.
|tip You can find them all around the Blue Sky Logging Grounds area.
Heal #10# Westfall Infantry |q 12296/1 |goto 34.12,40.46
step
label "Collect_High_Tension_Springs"
click High Tension Spring+
|tip They look like metal springs on the ground around this area.
collect 2 High Tension Spring##37416 |q 12268/3 |goto 34.12,40.46
step
label "Collect_Notched_Sprockets"
click Notched Sprockets+
|tip They look like metal cog wheels laying flat on the ground around this area.
collect 3 Notched Sprocket##37413 |q 12268/2 |goto 34.12,40.46
step
label "Collect_Grooved_Cogs"
click Grooved Cog+
|tip They look like metal cog wheels sticking vertically out of the ground around this area.
collect 4 Grooved Cog##37412 |q 12268/1 |goto 34.12,40.46
step
label "Eliminate_Horde_Units"
Kill enemies around this area
|tip You can kill NPCs or players.
Eliminate #15# Horde Units |q 12289/1 |goto 34.12,40.46
You can find more around [33.45,36.07]
step
talk Sergeant Hartsman##27468
turnin Kick 'Em While They're Down##12289 |goto 39.37,43.87
step
talk Synipus##27371
turnin Shredder Repair##12244 |goto 39.54,43.57
step
talk Pipthwack##27416
turnin Pieces Parts##12268 |goto 39.64,43.37
step
talk Rheanna##27484
turnin Life or Death##12296 |goto 40.47,42.65
step
label "PVP_Blue_Sky_Logging_Grounds_SKIP"
Leave the huge tree and follow the path up to leave the Grizzlemaw area |goto Grizzly Hills 54.05,36.41 < 40 |only if walking and subzone("Grizzlemaw")
Run up the ramp |goto Grizzly Hills 38.12,31.91 < 15 |only if walking
Enter the building at the top of the paltform |goto Grizzly Hills 37.01,32.58 < 10 |walk
click Heart of the Ancients##188365
|tip Inside the building.
turnin Heart of the Ancients##12042 |goto Grizzly Hills 36.95,32.35
accept My Heart is in Your Hands##12802 |goto Grizzly Hills 36.95,32.35
step
Kill Drakkari enemies around this area
|tip They look like trolls.
|tip You can find them all around the Drak'atal Passage.
collect 5 Desperate Mojo##36743 |goto 45.13,28.63 |q 12802
step
use Drakuru's Elixir##35797
|tip Use it next to the brazier at this location.
talk Image of Drakuru##26701
turnin My Heart is in Your Hands##12802 |goto 45.03,28.41
accept Voices From the Dust##12068 |goto 45.03,28.41
step
talk Captain Gryan Stoutmantle##26212
turnin Report to Gryan Stoutmantle... Again##12109 |goto 59.42,26.00
accept Hollowstone Mine##12158 |goto 59.42,26.00
accept Softening the Blow##11998 |goto 59.42,26.00
step
talk Quartermaster McCarty##26375
home Westfall Brigade Encampment |goto 59.56,26.30
step
talk Samuel Clearbook##26876
fpath Westfall Brigade |goto 59.89,26.68
step
talk Veira Langdon##26388
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Veira Langdon##26388 |goto 59.00,28.12 |q 11998
step
Leave Westfall Brigade Encampment and follow the path up |goto 57.85,28.42 < 40 |only if walking and subzone("Westfall Brigade Encampment")
Enter the mine |goto 55.34,23.91 < 10 |walk
talk Petrov##26932
|tip Inside the mine.
turnin Hollowstone Mine##12158 |goto 55.13,23.38
accept Souls at Unrest##12159 |goto 55.13,23.38
step
kill Undead Miner##26891+
|tip Inside the mine.
use the Miner's Lantern##37932
|tip Use it on their corpses.
Put #8# Miners at Rest |q 12159/1 |goto 53.98,22.68
step
talk Petrov##26932
|tip Inside the mine.
turnin Souls at Unrest##12159 |goto 55.13,23.38
accept A Name from the Past##12160 |goto 55.13,23.38
step
Leave the mine |goto 55.34,23.91 < 10 |walk |only if subzone("Hollowstone Mine") and _G.IsIndoors()
talk Captain Gryan Stoutmantle##26212
turnin A Name from the Past##12160 |goto 59.42,26.00
step
talk Private Arun##27582
accept Ruuna the Blind##12161 |goto 59.17,26.18
step
talk Tiernan Anvilheart##26229
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tiernan Anvilheart##26229 |goto 59.79,27.83 |q 12161
step
talk Ruuna the Blind##27581
|tip Follow the road to reach her.
turnin Ruuna the Blind##12161 |goto 44.04,47.94
accept Ruuna's Request##12328 |goto 44.04,47.94
step
kill Fern Feeder Moth##27421+
|tip They look like yellow and blue flying insects.
collect 4 Gossamer Dust##37662 |q 12328/1 |goto 46.01,41.06
You can find more around: |notinsticky
[48.82,35.78]
[51.31,29.72]
[55.54,33.24]
step
talk Ruuna the Blind##27581
|tip Follow the road to reach her.
turnin Ruuna's Request##12328 |goto 44.04,47.94
accept Out of Body Experience##12327 |goto 44.04,47.94
step
use the Gossamer Potion##37661
Begin the Out of Body Experience |havebuff spell:49097 |goto 44.09,47.89 |q 12327
step
Watch the dialogue
Experience the Vision from the Past |q 12327/1
step
Return to Ruuna the Blind |nobuff spell:49097 |q 12327
|tip You will return when the "Out of Body Experience" buff expires.
|tip You can also right-click the buff near your minimap to remove the buff and return early.
step
talk Ruuna the Blind##27581
turnin Out of Body Experience##12327 |goto 44.04,47.94
accept Fate and Coincidence##12329 |goto 44.04,47.94
step
talk Sasha##26935
turnin Fate and Coincidence##12329 |goto 57.52,41.26
accept Sasha's Hunt##12134 |goto 57.52,41.26
accept Anatoly Will Talk##12330 |goto 57.52,41.26
step
Enter Solstice Village |goto 59.87,39.74 < 30 |only if walking and not subzone("Solstice Village")
kill 12 Solstice Hunter##26389 |q 12134/1 |goto 62.57,41.77
|tip They look like humans.
|tip You can find them all around Solstice Village. |notinsticky
step
use the Tranquilizer Dart##37665
|tip Use it on Tatjana.
|tip Make sure to target Tatjana, and not the horse.
clicknpc Tatjana's Horse##27626
Ride Tatjana's Horse |invehicle |goto 62.19,42.39
step
Watch the dialogue
|tip You will eventually run to this location.
Deliver Tatjana |q 12330/1 |goto 57.75,41.69 |notravel
step
talk Sasha##26935
turnin Sasha's Hunt##12134 |goto 57.52,41.26
turnin Anatoly Will Talk##12330 |goto 57.52,41.26
accept A Sister's Pledge##12411 |goto 57.52,41.26
step
Enter the cave |goto 65.58,43.27 < 15 |walk
talk Anya##27646
|tip Inside the small cave.
turnin A Sister's Pledge##12411 |goto 64.82,43.42
step
talk Hugh Glass##26484
accept A Bear of an Appetite##12279 |goto 69.10,40.10
step
talk Hugh Glass##26484
buy Howlin' Good Moonshine##35796 |q 11998/1 |goto 69.10,40.10
step
use the Hearthstone##6948
Hearth to Westfall Brigade Encampment |complete subzone("Westfall Brigade Encampment") |noway |c |q 11998
|only if subzone("Redwood Trading Post")
step
talk Brugar Stoneshear##26226
turnin Softening the Blow##11998 |goto 59.80,27.57
accept Brothers in Battle##12002 |goto 59.80,27.57
step
talk Tiernan Anvilheart##26229
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tiernan Anvilheart##26229 |goto 59.79,27.83 |q 12002
stickystart "Kill_Runic_Battle_Golems"
step
clicknpc Fallen Earthen Warrior##26335
accept Find Kurun!##11981 |goto 63.68,23.14
step
click Battered Journal##188261
|tip It looks like an open book on the ground.
accept The Damaged Journal##11986 |goto 64.29,19.77
step
click Missing Journal Page##188263+
|tip They look like yellow torn pieces of paper on the ground around this area.
|tip You can also find them inside the buildings.
collect 8 Missing Journal Page##35737 |goto 63.90,22.28 |q 11986
step
use the Incomplete Journal##35739
collect Brann Bronzebeard's Journal##35738 |q 11986/1
step
label "Kill_Runic_Battle_Golems"
kill 10 Runic Battle Golem##26284 |q 12002/1 |goto 63.90,22.28
step
talk Torthen Deepdig##26361
turnin The Damaged Journal##11986 |goto 59.76,27.44
accept The Runic Keystone##11988 |goto 59.76,27.44
step
talk Brugar Stoneshear##26226
turnin Brothers in Battle##12002 |goto 59.80,27.56
accept Uncovering the Tunnels##12003 |goto 59.80,27.56
step
talk Tiernan Anvilheart##26229
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tiernan Anvilheart##26229 |goto 59.79,27.83 |q 12003
stickystart "Collect_Runic_Keystone_Fragments"
step
Enter the building |goto 63.66,27.22 < 15 |walk
Investigate the South Building |q 12003/3 |goto 63.45,28.22
|tip Inside the building.
step
Leave the building |goto 63.66,27.22 < 15 |walk |only if subzone("Thor Modan") and _G.IsIndoors()
Enter the building |goto 66.03,23.72 < 15 |walk
Investigate the East Building |q 12003/2 |goto 66.58,24.34
|tip Inside the building.
step
Leave the building |goto 66.03,23.72 < 15 |walk |only if subzone("Thor Modan") and _G.IsIndoors()
Enter the building |goto 62.99,21.61 < 15 |walk
Investigate the North Building |q 12003/1 |goto 62.69,20.83
|tip Inside the building.
step
label "Collect_Runic_Keystone_Fragments"
Kill Rune enemies around this area
|tip Inside the building.
|tip They look like dwarves wearing dark metal armor.
|tip Only enemies that look like dwarves will drop the quest item.
|tip If you go into the canyon, try to stay close to the exit, if possible.
|tip You will be leaving the Thor Modan area in the next step.
collect 5 Runic Keystone Fragment##35747 |q 11988/1 |goto 62.99,21.61
You can find more: |notinsticky
Inside the building at [63.66,27.22]
Inside the building at [66.03,23.72]
Throughout the canyon that starts at [65.07,19.62]
step
talk Torthen Deepdig##26361
turnin The Runic Keystone##11988 |goto 59.76,27.44
accept The Runic Prophecies##11993 |goto 59.76,27.44
step
talk Brugar Stoneshear##26226
turnin Uncovering the Tunnels##12003 |goto 59.80,27.56
accept The Fate of Orlond##12010 |goto 59.80,27.56
step
talk Tiernan Anvilheart##26229
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tiernan Anvilheart##26229 |goto 59.79,27.83 |q 12010
step
Follow the path up the mountain |goto 60.67,20.27 < 50 |only if walking and not subzone("Boulder Hills")
Follow the path up |goto 64.53,15.15 < 30 |only if walking
talk Kurun##26260
|tip On top of the mountain.
turnin Find Kurun!##11981 |goto 65.77,17.76
accept Raining Down Destruction##11982 |goto 65.77,17.76
step
click Boulder##188260+
|tip They look like big grey rocks on the ground around this area.
|tip Not all of the grey rocks will be clickable.
collect 5 Boulder##35734 |q 11982 |goto 65.70,13.73
You can find more around: |notinsticky
[67.39,12.22]
[69.80,10.96]
[71.72,11.61]
step
use the Boulder##35734+
|tip Use them on Iron Rune-Shapers in the canyon below.
|tip They look like dwarves wearing dark metal armor.
|tip You can use the boulders on the same enemy repeatedly.
|tip Stay on the north side of the canyon when throwing the boulders.
|tip You will have to turn in the quest on the north side of the canyon.
Disrupt #5# Iron Dwarf Operations |q 11982/1 |goto 67.67,14.95
step
Follow the path up |goto 64.92,15.64 < 30 |only if walking
talk Kurun##26260
|tip On top of the mountain.
turnin Raining Down Destruction##11982 |goto 65.77,17.76
accept Rallying the Troops##12070 |goto 65.77,17.76
stickystart "Kill_Iron_Rune_Avengers"
step
use the Shard of the Earth##36764
|tip Use it on Grizzly Hills Giants  around this area.
|tip They must be fighting an enemy for the item to work.
Rally #5# Grizzly Hills Giants |q 12070/1 |goto 67.63,10.64
You can find more around [70.08,6.40]
step
label "Kill_Iron_Rune_Avengers"
kill 5 Iron Rune Avenger##26786 |q 12070/2 |goto 67.63,10.64
|tip They appear after you rally the Grizzly Hills Giants around this area.
You can find more around [70.08,6.40]
step
Follow the path up |goto 64.92,15.64 < 30 |only if walking
talk Kurun##26260
|tip On top of the mountain.
turnin Rallying the Troops##12070 |goto 65.77,17.76
accept Into the Breach##11985 |goto 65.77,17.76
step
Jump down carefully into the water below |goto 67.44,16.10 < 10 |only if walking and not (subzone("Thor Modan") and _G.IsIndoors())
clicknpc Surveyor Orlond##26514
|tip Inside the canyon.
turnin The Fate of Orlond##12010 |goto 67.50,15.28
accept Steady as a Rock?##12014 |goto 67.50,15.28
stickystart "Collect_Portable_Seismograph"
step
click Third Rune Plate##188289
|tip On the metal door inside the canyon.
Decipher the Third Prophecy |q 11993/3 |goto 68.52,16.21
step
click First Rune Plate##188264
|tip On the metal door inside the canyon.
Decipher the First Prophecy |q 11993/1 |goto 68.99,14.42
step
click Second Rune Plate##188288
|tip On the metal door inside the canyon.
Decipher the Second Prophecy |q 11993/2 |goto 70.18,14.68
step
label "Collect_Portable_Seismograph"
kill Subterranean Thresher##26522+
|tip They look like dinosaurs swimming in the water inside the canyon.
collect Portable Seismograph##35837 |q 12014/2 |goto 69.93,14.21
step
use the Portable Seismograph##35837
|tip Inside the canyon.
click Portable Seismograph##188367
|tip It appears on the ground.
collect Thor Modan Stability Profile##35819 |q 12014/1 |goto 70.60,13.41
step
kill Iron Thane Argrum##26348 |q 11985/1 |goto 70.21,12.93
|tip Inside the canyon.
step
use the Hearthstone##6948
Hearth to Westfall Brigade Encampment |complete subzone("Westfall Brigade Encampment") |noway |c |q 11985
|only if subzone("Thor Modan")
step
talk Torthen Deepdig##26361
turnin The Runic Prophecies##11993 |goto 59.76,27.44
step
talk Brugar Stoneshear##26226
turnin Steady as a Rock?##12014 |goto 59.80,27.56
accept Check Up on Raegar##12128 |goto 59.80,27.56
step
talk Tiernan Anvilheart##26229
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tiernan Anvilheart##26229 |goto 59.79,27.83 |q 12128
step
Follow the path up the mountain |goto 60.67,20.27 < 50 |only if walking and not subzone("Boulder Hills")
Follow the path up |goto 64.53,15.15 < 30 |only if walking
talk Kurun##26260
|tip On top of the mountain.
turnin Into the Breach##11985 |goto 65.77,17.76
accept Gavrock##12081 |goto 65.77,17.76
step
talk Harkor##26884
turnin Say Hello to My Little Friend##12190 |goto 73.76,34.02
accept Nice to Meat You##12113 |goto 73.76,34.02
accept Therapy##12114 |goto 73.76,34.02
step
talk Kraz##26886
accept It Takes Guts....##12116 |goto 73.91,34.12
stickystart "Collect_Northern_Salmon"
stickystart "Collect_Shovelhorn_Steaks"
step
talk Gavrock##26420
turnin Gavrock##12081 |goto 79.76,33.61
accept Runes of Compulsion##12093 |goto 79.76,33.61
step
label "Collect_Northern_Salmon"
use the Fishing Net##37542
|tip Use it near Schools of Northern Salmon around this area.
|tip They look like groups of small fish in the water around this area.
collect 6 Northern Salmon##37501 |q 12279/1 |goto 77.70,37.37
stickystart "Collect_Fibrous_Worg_Meat"
step
kill Overseer Brunon##26923 |q 12093/4 |goto 78.79,43.70
|tip Kill the 4 enemies channeling on the object to release Overseer Brunon.
step
kill Overseer Lochli##26922 |q 12093/3 |goto 75.02,37.16
|tip Kill the 4 enemies channeling on the object to release Overseer Lochli.
step
kill Overseer Korgan##26921 |q 12093/2 |goto 71.85,34.27
|tip Kill the 4 enemies channeling on the object to release Overseer Korgan.
step
kill Overseer Durval##26920 |q 12093/1 |goto 67.53,29.46
|tip Kill the 4 enemies channeling on the object to release Overseer Durval.
step
talk Gavrock##26420
turnin Runes of Compulsion##12093 |goto 79.76,33.61
accept Latent Power##12094 |goto 79.76,33.61
step
use the Shard of Gavrock##36787
Draw Power from the First Ancient Stone |q 12094/1 |goto 71.29,39.66
step
use the Shard of Gavrock##36787
Draw Power from the Third Ancient Stone |q 12094/3 |goto 74.11,44.15
step
use the Shard of Gavrock##36787
Draw Power from the Second Ancient Stone |q 12094/2 |goto 78.85,39.89
step
talk Gavrock##26420
turnin Latent Power##12094 |goto 79.76,33.61
accept Free at Last##12099 |goto 79.76,33.61
step
use Gavrock's Runebreaker##36796
|tip Use it on Runed Giants.
|tip They look like large walking trees around this area.
|tip You may have to use it on the same enemy multiple times.
Free #4# Runed Giants |q 12099/1 |goto 74.58,42.25
You can find more around [68.72,34.23]
step
talk Hugh Glass##26484
turnin A Bear of an Appetite##12279 |goto 69.10,40.10
step
talk Gavrock##26420
turnin Free at Last##12099 |goto 79.76,33.61
step
label "Collect_Shovelhorn_Steaks"
kill Longhoof Grazer##26418+
collect 10 Shovelhorn Steak##36875 |q 12113/2 |goto 75.19,39.54
You can find more around: |notinsticky
[72.18,35.36]
[68.33,30.37]
step
label "Collect_Fibrous_Worg_Meat"
kill Duskhowl Prowler##27408+
collect 10 Fibrous Worg Meat##36819 |q 12113/1 |goto 75.19,39.54
You can find more around: |notinsticky
[72.18,35.36]
[68.33,30.37]
step
Enter thhe crypt |goto 71.38,22.83 < 10 |walk |only if not (subzone("Drakil'jin Ruins") and _G.IsIndoors())
click Drakkari Canopic Jar##188499
|tip They look like grey vases on the ground around this area inside the crypt.
|tip Any nearby Drakkari enemy will become aggressive and attack you when you loot these.
collect 5 Drakkari Canopic Jar##36825 |q 12116/1 |goto 71.25,20.20
step
Follow the path |goto 70.13,20.02 < 10 |walk
click Drakkari Tablets##188461
|tip Inside the crypt.
collect Drakkari Tablets##36757 |q 12068/1 |goto 69.38,18.20
step
talk Harrison Jones##26814
|tip Inside the crypt.
accept Dun-da-Dun-tah!##12082 |goto 69.47,17.50
step
Watch the dialogue
|tip Follow Harrison Jones and protect him while he walks.
|tip He eventually walks to this location outside the building.
Allow Harrison to Escort You to Safety |q 12082/1 |goto 73.52,24.03 |notravel
stickystart "Kill_Drakkari_Protectors"
stickystart "Kill_Drakkari_Oracles"
step
Kill Drakkari enemies around this area
|tip They look like trolls.
|tip You can find them all around the Drakil'jin Ruins area.
collect 5 Sacred Mojo##36758 |q 12068 |goto 71.51,26.99
step
label "Kill_Drakkari_Protectors"
kill 10 Drakkari Protector##26797 |q 12114/1 |goto 71.51,26.99
|tip You can find them all around the Drakil'jin Ruins area. |notinsticky
step
label "Kill_Drakkari_Oracles"
kill 10 Drakkari Oracle##26795 |q 12114/2 |goto 71.51,26.99
|tip You can find them all around the Drakil'jin Ruins area. |notinsticky
step
use Drakuru's Elixir##35797
|tip Use it next to the brazier.
talk Image of Drakuru##26787
turnin Voices From the Dust##12068 |goto 71.72,26.14
step
talk Harkor##26884
turnin Dun-da-Dun-tah!##12082 |goto 73.76,34.02
turnin Nice to Meat You##12113 |goto 73.76,34.02
turnin Therapy##12114 |goto 73.76,34.02
step
talk Kraz##26886
turnin It Takes Guts....##12116 |goto 73.91,34.12
accept Drak'aguul's Mallet##12120 |goto 73.91,34.12
step
talk Datalore Smallsphere##29277
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Datalore Smallsphere##29277 |goto 74.02,34.09 |q 12120
step
kill Drak'aguul##26919
|tip He walks along the stairs around this area.
|tip He has 2 guards that walk with him.
collect Drakil'jin Mallet##36826 |q 12120/1 |goto 72.51,29.80
step
talk Kraz##26886
turnin Drak'aguul's Mallet##12120 |goto 73.91,34.12
accept See You on the Other Side##12121 |goto 73.91,34.12
step
use the Charged Drakil'jin Mallet##36834
Watch the dialogue
Receive Death by Warlord Jin'arrak |q 12121/1 |goto 71.53,24.66
step
Enter the Other Side |havebuff spell:61611 |goto 71.53,24.66 |q 12121
|tip You will receive the buff automatically.
step
Enter the crypt |goto 71.38,22.83 < 10 |walk |only if not (subzone("Drak'jin Ruins") and _G.IsIndoors())
Follow the path |goto 70.13,20.02 < 10 |walk
talk Gan'jo##26924
|tip Inside the crypt.
turnin See You on the Other Side##12121 |goto 69.41,19.48
accept Chill Out, Mon##12137 |goto 69.41,19.48
step
click Gan'jo's Chest##188518
|tip Inside the crypt.
collect Snow of Eternal Slumber##36859 |q 12137/1 |goto 69.36,19.57
step
talk Gan'jo##26924
|tip Inside the crypt.
Tell him _"I am ready to return to the realm of the living."_
Leave the Spirit Realm |nobuff spell:61611 |goto 69.41,19.48 |q 12137
step
Follow the path down |goto 69.83,19.62 < 7 |walk
Follow the path |goto 70.15,20.04 < 7 |walk
use the Snow of Eternal Slumber##36859
|tip Use it on Ancient Drakkari.
|tip They look like spirit trolls around this area inside the crypt.
|tip Follow them when they run to nearby mummies on the ground.
click Drakkari Spirit Particles##188525+
|tip They appear when the Ancient Drakkari enemies reach the mummies.
collect 5 Drakkari Spirit Particles##36868 |q 12137/2 |goto 70.61,19.84
step
Follow the path |goto 71.23,21.39 < 10 |walk |only if (subzone("Drak'jin Ruins") and _G.IsIndoors())
Leave the crypt |goto 71.38,22.83 < 10 |walk |only if (subzone("Drak'jin Ruins") and _G.IsIndoors())
talk Kraz##26886
turnin Chill Out, Mon##12137 |goto 73.91,34.12
accept Jin'arrak's End##12152 |goto 73.91,34.12
step
Enter the crypt |goto 71.38,22.83 < 10 |walk |only if not (subzone("Drak'jin Ruins") and _G.IsIndoors())
click Sacred Drakkari Offering##188530
|tip Inside the crypt.
collect Sacred Drakkari Offering##36870 |goto 71.25,19.66 |q 12152
step
use the Drakkari Spirit Dust##36873
collect Infused Drakkari Offering##37063 |q 12152
step
Follow the path |goto 71.23,21.39 < 10 |walk |only if (subzone("Drak'jin Ruins") and _G.IsIndoors())
Leave the crypt |goto 71.38,22.83 < 10 |walk |only if (subzone("Drak'jin Ruins") and _G.IsIndoors())
use the Infused Drakkari Offering##37063
Watch the dialogue
Destroy Warlord Jin'arrak |q 12152/1 |goto 71.53,24.65
step
talk Kraz##26886
turnin Jin'arrak's End##12152 |goto 73.91,34.12
step
talk Datalore Smallsphere##29277
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Datalore Smallsphere##29277 |goto 74.02,34.09 |q 12180 |future
step
Follow the path up |goto 75.51,47.97 < 40 |only if walking and not subzone("Prospector's Point")
talk Mountaineer Kilian##26885
accept The Captive Prospectors##12180 |goto 76.97,48.44
step
talk Raegar Breakbrow##26883
turnin Check Up on Raegar##12128 |goto 77.09,48.65
accept The Perfect Plan##12129 |goto 77.09,48.65
stickystart "Collect_Golem_Blueprint_Section_1"
stickystart "Collect_Golem_Blueprint_Section_2"
stickystart "Collect_Golem_Blueprint_Section_3"
step
Kill enemies around this area
|tip Any enemies will drop keys, except Iron Rune-Smiths.
collect Dun Argol Cage Key##37013 |goto 75.71,53.55 |q 12180
step
Enter the building |goto 76.16,54.26 < 10 |walk
click Dun Argol Cage
|tip Inside the building.
Watch the dialogue
Rescue Prospector Gann |q 12180/1 |goto 76.48,55.36
step
Kill enemies around this area
|tip Any enemies will drop keys, except Iron Rune-Smiths.
collect Dun Argol Cage Key##37013 |goto 76.22,57.58 |q 12180
step
click Dun Argol Cage
Watch the dialogue
Rescue Prospector Torgan |q 12180/2 |goto 76.30,58.54
step
Kill enemies around this area
|tip Any enemies will drop keys, except Iron Rune-Smiths.
collect Dun Argol Cage Key##37013 |goto 76.22,57.58 |q 12180
step
Follow the path up |goto 74.02,60.13 < 30 |only if walking
click Dun Argol Cage
Watch the dialogue
Rescue Prospector Varana |q 12180/3 |goto 76.01,61.03
step
label "Collect_Golem_Blueprint_Section_1"
kill Iron Rune-Smith##26408+ |notinsticky
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 1##36849 |goto 76.22,57.58 |q 12129
step
label "Collect_Golem_Blueprint_Section_2"
kill Iron Rune-Smith##26408+ |notinsticky
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 2##36850 |goto 76.22,57.58 |q 12129
step
label "Collect_Golem_Blueprint_Section_3"
kill Iron Rune-Smith##26408+ |notinsticky
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 3##36851 |goto 76.22,57.58 |q 12129
step
use the Golem Blueprint Section 1##36849
collect War Golem Blueprint##36848 |q 12129/1
step
talk Raegar Breakbrow##26883
turnin The Perfect Plan##12129 |goto 77.09,48.65
accept Why Fabricate When You Can Appropriate?##12130 |goto 77.09,48.65
step
talk Mountaineer Kilian##26885
turnin The Captive Prospectors##12180 |goto 76.97,48.44
accept Looking the Part##12183 |goto 76.97,48.44
stickystart "Collect_War_Golem_Parts"
step
Enter the building |goto 76.15,54.25 < 10 |walk
kill Iron Rune Overseer##27177+
collect Overseer's Uniform##37035 |q 12183/1 |goto 76.62,54.81
You can find more around: |notinsticky
[76.13,57.97]
[78.41,59.36]
step
label "Collect_War_Golem_Parts"
click War Golem Part##188503+
|tip They look like various shaped grey metal objects on the ground.
|tip They can also be inside the buildings. |notinsticky
|tip You can find them all around the Dun Argol area. |notinsticky
collect 8 War Golem Part##36852 |q 12130/1 |goto 76.22,57.58
step
talk Raegar Breakbrow##26883
turnin Why Fabricate When You Can Appropriate?##12130 |goto 77.09,48.65
accept We Have the Power##12131 |goto 77.09,48.65
step
talk Mountaineer Kilian##26885
turnin Looking the Part##12183 |goto 76.97,48.44
accept Cultivating an Image##12184 |goto 76.97,48.44
stickystart "Capture_Iron_Dwarf_Images"
step
Enter the building |goto 75.45,57.43 < 15 |walk
kill Rune-Smith Durar##26409
|tip Inside the building.
collect Durar's Power Cell##36857 |q 12131/1 |goto 74.89,56.92
step
Enter the building |goto 76.72,58.37 < 15 |walk
kill Rune-Smith Kathorn##26410
|tip Inside the building.
collect Kathorn's Power Cell##36858 |q 12131/2 |goto 76.82,59.35
step
label "Capture_Iron_Dwarf_Images"
Kill enemies around this area
|tip Only the enemies that look like dwarves will count for this quest goal.
|tip You can find them all around the Dun Argol area. |notinsticky
use Kilian's Camera##37045
|tip Use it on their corpses.
Capture #8# Iron Dwarf Images |q 12184/1 |goto 76.22,57.58
step
talk Raegar Breakbrow##26883
turnin We Have the Power##12131 |goto 77.09,48.65
accept ... Or Maybe We Don't##12138 |goto 77.09,48.65
step
talk Mountaineer Kilian##26885
turnin Cultivating an Image##12184 |goto 76.97,48.44
accept Put on Your Best Face for Loken##12185 |goto 76.97,48.44
step
use the Golem Control Unit##36936
|tip This will summon a Depleted War Golem to follow you around.
|tip If your golem disappears, use this item again to summon another one.
kill Lightning Sentry##26407+
|tip They look like air elementals.
|tip Kill them with the golem next to you.
|tip Make sure you're close to them when you kill them, or the golem won't collect the charge level.
Collect #10# Charge Levels |q 12138/1 |goto 77.82,53.24
You can find more around: |notinsticky
[75.62,51.49]
[73.54,54.76]
[72.64,59.96]
step
_NOTE:_
Get on Your Mount
|tip Make sure you are mounted and not in combat.
|tip You will use the Overseer Disguise Kit in the next guide step.
|tip If you are already mounted when you use the item, it will let you ride your mount while disguised, so you can run faster.
Click Here to Continue |confirm |q 12185
step
use the Overseer Disguise Kit##37071
Wear the Iron Rune Overseer's Disguise |havebuff spell:48064 |q 12185
step
Cross the bridge |goto 78.00,59.17 < 20 |only if walking
Enter the building |goto 80.90,59.92 < 10 |walk
click Loken's Pedestal##188596
|tip Inside the building.
Watch the dialogue
|tip If you don't want to watch the dialogue, you don't have to wait.
|tip You can leave the building and start running down the mountain to the questgivers.
|tip The quest goal will complete as you are running down the mountain.
Receive the Message from Loken |q 12185/1 |goto 81.54,60.30
step
Remove the Iron Rune Overseer Disguise |nobuff spell:48064 |q 12185
|tip Right-click the "Iron Rune Overseer Disguise" buff near your minimap.
|tip Make sure you're in a safe spot before removing the disguise.
step
talk Raegar Breakbrow##26883
turnin ... Or Maybe We Don't##12138 |goto 77.09,48.65
accept The Iron Thane and His Anvil##12153 |goto 77.09,48.65
accept Blackout##12154 |goto 77.09,48.65
step
talk Mountaineer Kilian##26885
turnin Put on Your Best Face for Loken##12185 |goto 76.97,48.44
step
Follow the path to the top of the mountain and enter the building |goto 75.90,62.18 < 15 |walk
use the Golem Control Unit##36865
|tip Downstairs inside the building.
Control a War Golem |invehicle |goto 76.79,63.01 |q 12153
step
kill Iron Thane Furyhammer##26405 |q 12153/1 |goto 76.37,63.72
|tip Downstairs inside the building.
|tip Use the abilities on your action bar.
|tip Use the "EMP" ability to stun The Anvil and remove Iron Thane Furyhammer's Shield.
|tip Use the "Charged Smash" ability Iron Thane Furyhammer.
step
Stop Controlling the War Golem |outvehicle |q 12153
|tip Click the yellow arrow on your action bar.
step
use Raegar's Explosives##36935
|tip Downstairs inside the building.
Destroy the Dun Argol Power Crystal |q 12154/1 |goto 76.47,63.24
step
Ride the elevator up and leave the building |goto 75.90,62.18 < 15 |walk |only if subzone("Dun Argol") and _G.IsIndoors()
talk Raegar Breakbrow##26883
turnin The Iron Thane and His Anvil##12153 |goto 77.09,48.65
turnin Blackout##12154 |goto 77.09,48.65
step
use the Hearthstone##6948
Hearth to Westfall Brigade Encampment |complete subzone("Westfall Brigade Encampment") |noway |c |q 12248
|only if subzone("Prospector's Point")
step
talk Hierophant Thayreen##27295
turnin Vordrassil's Sapling##12248 |goto 31.16,59.47
turnin Vordrassil's Seeds##12250 |goto 31.16,59.47
step
talk Brom Armstrong##27062
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brom Armstrong##27062 |goto 31.37,59.87 |q 12770 |future
step
talk Captain Gryan Stoutmantle##26212
accept Reallocating Resources##12770 |goto 59.42,26.00
step
talk Samuel Clearbook##26876
Tell him _"I wish to travel to Light's Breach."_
Begin Flying to Light's Breach |ontaxi |goto 59.89,26.69 |q 12770
step
Fly to Light's Breach |offtaxi |goto 32.18,74.47 |q 12770 |notravel
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Zul'Drak (75-77)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."ZulDrak",
condition_suggested=function() return level >= 75 and level <= 77 and not completedq(12948) end,
next="Leveling Guides\\Northrend (69-80)\\Sholazar Basin (77-78)",
},[[
step
talk Danica Saint##28618
fpath Light's Breach |goto Zul'Drak 32.18,74.39
step
_NOTE:_
Keep Any Drakkari Offerings You Find:
|tip As you kill enemies in Zul'Drak, you will collect Drakkari Offerings.
|tip Save any of these that you find, they will be used later to easily turn in quests.
Click Here to Continue |confirm |q 12615 |future
step
talk Sergeant Riannah##29137
turnin Reallocating Resources##12770 |goto 32.03,74.43
step
talk Elder Shaman Moky##29733
accept This Just In: Fire Still Hot!##12859 |goto 32.02,75.60
step
talk Crusader Lord Lantinga##29687
accept In Search Of Answers##12902 |goto 32.14,75.74
step
talk Chief Rageclaw##29690
accept Trolls Is Gone Crazy!##12861 |goto 32.18,75.64
step
talk Elizabeth Hollingsworth##28813
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Elizabeth Hollingsworth##28813 |goto 31.82,76.11 |q 12861
stickystart "Free_Captured_Rageclaws"
stickystart "Douse_Hut_Fires"
step
click Orders From Drakuru##191766
turnin In Search Of Answers##12902 |goto 34.91,83.89
accept Orders From Drakuru##12883 |goto 34.91,83.89
step
label "Free_Captured_Rageclaws"
Kill Drakuru enemies around this area
|tip They look like trolls.
collect Drakuru "Lock Opener"##41161+ |n
use the Drakuru "Lock Opener"##41161+
|tip Use them next to Captured Rageclaws.
|tip They look like wolverine humanoids stuck in metal traps on the ground around this area.
|tip You can find them all around the Rageclaw Den area.
Free #8# Captured Rageclaws |q 12861/1 |goto 34.04,82.74
step
label "Douse_Hut_Fires"
use the Rageclaw Fire Extinguisher##41131
|tip Use it next to fires around this area.
|tip You may have to use it multiple times to put the fires out.
|tip You can find them all around the Rageclaw Den area.
Douse #15# Hut Fires |q 12859/1 |goto 34.04,82.74
step
talk Elder Shaman Moky##29733
turnin This Just In: Fire Still Hot!##12859 |goto 32.02,75.60
step
talk Chief Rageclaw##29690
turnin Trolls Is Gone Crazy!##12861 |goto 32.18,75.64
step
talk Crusader Lord Lantinga##29687
turnin Orders From Drakuru##12883 |goto 32.14,75.74
accept The Ebon Watch##12884 |goto 32.14,75.74
accept Crusader Forward Camp##12894 |goto 32.14,75.74
step
talk Elizabeth Hollingsworth##28813
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Elizabeth Hollingsworth##28813 |goto 31.82,76.11 |q 12884
step
talk Crusader MacKellar##29689
turnin Crusader Forward Camp##12894 |goto 25.28,63.97
accept That's What Friends Are For...##12903 |goto 25.28,63.97
step
talk Engineer Reed##29688
accept Making Something Out Of Nothing##12901 |goto 25.23,63.88
step
Find Crusader Dargath |q 12903/1 |goto 25.06,51.61
stickystart "Collect_Scourge_Scrap_Metals"
step
talk Gymer##29647
accept A Great Storm Approaches##12912 |goto 19.75,56.44
step
Find Gerk |q 12903/2 |goto 17.62,57.58
step
talk Gerk##29455
accept Light Won't Grant Me Vengeance##12904 |goto 17.62,57.58
stickystart "Slay_Varguls"
step
Find Burr |q 12903/3 |goto 15.71,59.40
|tip Laying on a metal table.
step
label "Collect_Scourge_Scrap_Metals"
click Scourge Scrap Metal##191783+
|tip They look like pieces of metal with various shapes on the ground around this area.
|tip You can find them all around the Thrym's End area. |notinsticky
collect 10 Scourge Scrap Metal##41399 |q 12901/1 |goto 17.24,59.01
step
label "Slay_Varguls"
Kill Vargul enemies around this area |notinsticky
|tip Only the humanoid enemies will count for the quest goal. |notinsticky
|tip You can find them all around the Thrym's End area. |notinsticky
Slay #15# Varguls |q 12904/1 |goto 17.24,59.01
step
talk Gerk##29455
turnin Light Won't Grant Me Vengeance##12904 |goto 17.62,57.58
step
talk Engineer Reed##29688
turnin Making Something Out Of Nothing##12901 |goto 25.23,63.88
turnin A Great Storm Approaches##12912 |goto 25.23,63.88
accept Gymer's Salvation##12914 |goto 25.23,63.88
step
talk Crusader MacKellar##29689
turnin That's What Friends Are For...##12903 |goto 25.27,63.96
step
talk Engineer Reed##29688
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Engineer Reed##29688 |goto 25.23,63.88 |q 12914
stickystart "Collect_Banshee_Essences"
stickystart "Collect_Diatomaceous_Earth"
step
talk Stefan Vadu##28518
turnin The Ebon Watch##12884 |goto 14.06,73.80
accept Kickin' Nass and Takin' Manes##12630 |goto 14.06,73.80
stickystop "Collect_Banshee_Essences"
step
talk Baneflight##28615
fpath Ebon Watch |goto 14.00,73.59
stickystart "Accept_One_Of_Two_Quests"
step
kill Withered Troll##28519+
use Stefan's Steel Toed Boot##38659
|tip Use it next to their corpses.
Collect #10# Hair Samples |q 12630/1 |goto 13.03,69.38
You can find more around: |notinsticky
[15.20,69.00]
[17.98,69.23]
[20.99,68.48]
step
label "Accept_One_Of_Two_Quests"
kill Withered Troll##28519+
collect Writhing Choker##38673 |n				|only if completedq(12238)
use the Writhing Choker##38673					|only if completedq(12238)
accept Darkness Calling##12633 |goto 13.03,69.38		|only if completedq(12238)
collect Unliving Choker##38660 |n				|only if not completedq(12238)
use the Unliving Choker##38660					|only if not completedq(12238)
accept An Invitation, of Sorts...##12631 |goto 13.03,69.38	|only if not completedq(12238)
You can find more around: |notinsticky
[15.20,69.00]
[17.98,69.23]
[20.99,68.48]
step
label "Collect_Diatomaceous_Earth"
kill Icetouched Earthrager##29436+
|tip They look like blue and white elementals holding clubs.
|tip You can find them all surrounding Ebon Watch.
collect 6 Diatomaceous Earth##41503 |q 12914/2 |goto 15.06,73.12
step
talk Stefan Vadu##28518
turnin Kickin' Nass and Takin' Manes##12630 |goto 14.06,73.80
turnin Darkness Calling##12633 |goto 14.06,73.80		|only if haveq(12633) or completedq(12631)
turnin An Invitation, of Sorts...##12631 |goto 14.06,73.80	|only if haveq(12631) or completedq(12631)
step
talk Stefan Vadu##28518
accept Close Call##12638 |goto 14.06,73.80	|only if completedq(12633)
accept Near Miss##12637 |goto 14.06,73.80	|only if completedq(12631)
step
talk Bloodrose Datura##28532
accept Taking a Stand##12795 |goto 14.28,74.04
step
talk Bloodrose Datura##28532
Tell her _"Stefan told me you would demonstrate the purpose of this item."_
Expose the Choker's Purpose |q 12637/1 |goto 14.28,74.04	|only if haveq(12637) or completedq(12637)
Expose the Choker's Purpose |q 12638/1 |goto 14.28,74.04	|only if haveq(12638) or completedq(12638)
step
talk Stefan Vadu##28518
turnin Close Call##12638 |goto 14.06,73.80	|only if haveq(12638) or completedq(12638)
turnin Near Miss##12637 |goto 14.06,73.80	|only if haveq(12637) or completedq(12637)
step
talk Stefan Vadu##28518
accept Silver Lining##12643 |goto 14.06,73.80				|only if completedq(12638)
accept You Can Run, But You Can't Hide##12629 |goto 14.06,73.80		|only if completedq(12637)
stickystart "Collect_Gooey_Ghoul_Drool"
step
kill Putrid Abomination##28564+
|tip You can find them all around the Reliquary of Agony area.
collect 5 Putrid Abomination Guts##38686 |q 12643/1 |goto 20.24,73.71		|only if haveq(12643) or completedq(12643)
collect 5 Putrid Abomination Guts##38686 |q 12629/1 |goto 20.24,73.71		|only if haveq(12629) or completedq(12629)
step
label "Collect_Gooey_Ghoul_Drool"
clicknpc Gooey Ghoul Drool##29856+
|tip They look like small oozes on the ground around this area.
|tip You can find them all around the Reliquary of Agony area. |notinsticky
collect 5 Gooey Ghoul Drool##38687 |q 12643/2 |goto 20.24,73.71		|only if haveq(12643) or completedq(12643)
collect 5 Gooey Ghoul Drool##38687 |q 12629/2 |goto 20.24,73.71		|only if haveq(12629) or completedq(12629)
step
talk Stefan Vadu##28518
turnin Silver Lining##12643 |goto 14.06,73.80				|only if haveq(12643) or completedq(12643)
turnin You Can Run, But You Can't Hide##12629 |goto 14.06,73.80		|only if haveq(12629) or completedq(12629)
step
talk Stefan Vadu##28518
accept Dressing Down##12648 |goto 14.06,73.80		|only if completedq(12629)
accept Suit Up!##12649 |goto 14.06,73.80		|only if completedq(12643)
step
talk Scabbard##28871
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Scabbard##28871 |goto 14.30,74.20 |q 12652 |future
step
use the Ensorcelled Choker##38699
Wear the Scourge Disguise |havebuff spell:51966 |goto 20.26,74.00 |q 12649		|only if haveq(12649) or completedq(12649)
Wear the Scourge Disguise |havebuff spell:51966 |goto 20.26,74.00 |q 12648		|only if haveq(12648) or completedq(12648)
step
_NOTE:_
Keep Your Scourge Disguise Active
|tip While completing the next quests, make sure to always have your Scourge Disguise active, if you can.
|tip The disguise is volatile, so it will fail randomly sometimes.
|tip When you lose the disguise, use the Ensorcelled Choker item again to reactivate the disguise.
Click Here to Continue |confirm |q 12649		|only if haveq(12649) or completedq(12649)
Click Here to Continue |confirm |q 12648		|only if haveq(12648) or completedq(12648)
step
talk Gristlegut##28589
|tip You must have the Scourge Disguise active to be able to talk to him.
accept Feedin' Da Goolz##12652 |goto 19.87,75.44
step
talk Gristlegut##28589
|tip You must have the Scourge Disguise active to be able to talk to him.
buy Bitter Plasma##38698 |q 12649/1 |goto 19.87,75.44		|only if haveq(12649) or completedq(12649)
buy Bitter Plasma##38698 |q 12648/1 |goto 19.87,75.44		|only if haveq(12648) or completedq(12648)
step
use the Bowels and Brains Bowl##38701
|tip Use it near Decaying Ghouls.
|tip They look like zombies.
|tip You can find them all around the Reliquary of Agony area.
|tip Be careful, Blightguards (black ghosts) can see through your disguise.
Feed #10# Decaying Ghouls |q 12652/1 |goto 20.71,73.34
step
talk Gristlegut##28589
|tip You must have the Scourge Disguise active to be able to talk to him.
turnin Feedin' Da Goolz##12652 |goto 19.87,75.44
step
talk Stefan Vadu##28518
turnin Suit Up!##12649 |goto 14.06,73.80		|only if haveq(12649) or completedq(12649)
turnin Dressing Down##12648 |goto 14.06,73.80		|only if haveq(12648) or completedq(12648)
accept Infiltrating Voltarus##12661 |goto 14.06,73.80
step
label "Collect_Banshee_Essences"
kill Banshee Soulclaimer##29646+
|tip They look like white ghosts flying in the air around this area.
|tip You can find them all around the Dead Fields area.
collect 6 Banshee Essence##41504 |q 12914/1 |goto 24.98,58.82
step
talk Engineer Reed##29688
turnin Gymer's Salvation##12914 |goto 25.23,63.88
accept Our Only Hope##12916 |goto 25.23,63.88
step
talk Engineer Reed##29688
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Engineer Reed##29688 |goto 25.23,63.88 |q 12916
step
click Scourge Enclosure
Blow Up the Scourge Enclosure |q 12916/1 |goto 19.74,56.41
step
talk Gymer##29647
turnin Our Only Hope##12916 |goto 19.74,56.41
accept The Storm King's Vengeance##12919 |goto 19.74,56.41
step
talk Gymer##29647
Tell him _"I'm ready, Gymer. Let's go!"_
Ride on Gymer's Shoulder |invehicle |goto 19.74,56.41 |q 12919
stickystart "Slay_Scourge"
step
kill Algar the Chosen##29872 |q 12919/2 |goto 30.06,44.67
|tip He flies around this area, in a counter-clockwise pattern, on a large skeletal dragon.
|tip Use the abilties on your action bar.
|tip Pick up the blue electricity balls on the ground around this area to heal yourself.
step
kill Prince Navarius##29821 |q 12919/4 |goto 32.50,63.81
|tip Use the abilties on your action bar.
|tip Pick up the blue electricity balls on the ground around this area to heal yourself.
step
kill Thrym##29895 |q 12919/3 |goto 31.12,61.97
|tip He appears after you kill Prince Navarius.
|tip Use the abilties on your action bar.
|tip Pick up the blue electricity balls on the ground around this area to heal yourself.
step
label "Slay_Scourge"
Kill enemies around this area
|tip You can find them all around this area. |notinsticky
|tip Use the abilties on your action bar. |notinsticky
|tip Only Undead enemies will count for the quest goal.
|tip Pick up the blue electricity balls on the ground around this area to heal yourself. |notinsticky
Slay #100# Scourge |q 12919/1 |goto 22.72,58.42
step
Stop Riding on Gymer's Shoulder |outvehicle |goto 28.46,51.16 |q 12919
|tip Click the red arrow on your action bar.
step
use the Ensorcelled Choker##38699
Wear the Ghoul Disguise |havebuff spell:51966 |goto 28.46,51.16 |q 12661
step
_NOTE:_
Keep Your Ghoul Disguise Active
|tip While completing the next quests, make sure to always have your Ghoul Disguise active, if you can.
|tip The disguise is volatile, so it will fail randomly sometimes.
|tip When you lose the disguise, use the Ensorcelled Choker item again to reactivate the disguise.
Click Here to Continue |confirm |q 12661
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12661
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
accept Dark Horizon##12664 |goto 27.08,46.16	|only if not completedq(12238)
accept Reunited##12663 |goto 27.08,46.16	|only if completedq(12238)
step
talk Gorebag##28666
|tip He walks around this area.
|tip Inside the floating building.
Ask him _"Uhh, can you send me on the tour of Zul'Drak?"_
Begin the Tour of Zul'Drak |invehicle |goto 29.84,48.03 |q 12664	|only if haveq(12664) or completedq(12664)
Begin the Tour of Zul'Drak |invehicle |goto 29.84,48.03 |q 12663	|only if haveq(12663) or completedq(12663)
step
Watch the dialogue
Complete the Tour of Zul'Drak |q 12664/1 |goto 27.79,44.60 |notravel		|only if haveq(12664) or completedq(12664)
Complete the Tour of Zul'Drak |q 12663/1 |goto 27.79,44.60 |notravel		|only if haveq(12663) or completedq(12663)
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
turnin Dark Horizon##12664 |goto 27.08,46.16		|only if haveq(12664) or completedq(12664)
turnin Reunited##12663 |goto 27.08,46.16		|only if haveq(12663) or completedq(12663)
Complete Overlord Drakuru's Task |q 12661/1 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12661
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use Stefan's Horn##41390
talk Stefan Vadu##28518
|tip He flies down to you.
turnin Infiltrating Voltarus##12661 |goto 28.05,44.85
accept So Far, So Bad##12669 |goto 28.05,44.85
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12669
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
accept It Rolls Downhill##12673 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12673
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
stickystart "Dilute_Cauldrons"
step
use the Scepter of Suggestion##39157
|tip Use it on Blight Geists.
|tip They look like frail humanoids crouching on the ground.
|tip This will allow you to temporarily control a Blight Geist as a pet.
Use the Blight Geists to Harvest Blight Crystals
|tip The Crystallized Blight look like orange crystals.
|tip You can find them all around the Reliquary of Pain area.
|tip Use the "Harvest Blight Crystal" ability on your Blight Geists' pet action bar near Crystallized Blight, and then follow the Blight Geists back to the teleport pad to deliver the crystals.
Collect #7# Blight Crystals |q 12673/1 |goto 28.86,46.33
step
label "Dilute_Cauldrons"
use the Diluting Additive##39154
|tip Use it next to Blight Cauldrons.
|tip They look like large pots with orange liquid in them on the back of cart vehicles.
|tip You can find them all around the Reliquary of Pain area.
Dilute #5# Cauldrons |q 12669/2 |goto 28.86,46.33
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12673
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
turnin It Rolls Downhill##12673 |goto 27.08,46.16
Complete Drakuru's Task |q 12669/1 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12669
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use Stefan's Horn##41390
talk Stefan Vadu##28518
|tip He flies down to you.
turnin So Far, So Bad##12669 |goto 28.05,44.85
accept Hazardous Materials##12677 |goto 28.05,44.85
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12677
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
accept Zero Tolerance##12686 |goto 27.08,46.16
step
click Harvested Blight Crystal##190720+
|tip They look like wooden crates on the ground.
|tip You can find them all around the Voltarus area, in the outermost ring inside the floating building.
collect 5 Harvested Blight Crystal##39159 |q 12677/2 |goto 27.56,43.05
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12686
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use the Scepter of Empowerment##39206
|tip Use it on a Servant of Drakuru around this area.
|tip This will give a Hand of Drakuru minion to control.
Click Here Once You Have Your Hand of Drakuru Minion |confirm |goto 31.70,49.22 |q 12686
step
kill Darmuk##28793 |q 12686/1 |goto 30.50,51.62
|tip He walks around this area.
|tip Use the abilities on your minion's action bar to fight him.
|tip You can also attack him normally to help your minion kill him.
|tip Be careful to allow your minion to hold aggro though.
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12686
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
turnin Zero Tolerance##12686 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12677
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use Stefan's Horn##41390
talk Stefan Vadu##28518
|tip He flies down to you.
turnin Hazardous Materials##12677 |goto 28.05,44.85
accept Sabotage##12676 |goto 28.05,44.85
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12676
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
accept Fuel for the Fire##12690 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12690
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use the Explosive Charges##39165
|tip Use them next to Scourgewagons.
|tip They look like catapult carts on the ground.
|tip You can find them all around the Reliquary of Pain area.
Destroy #5# Scourgewagons |q 12676/1 |goto 28.86,46.33
step
use the Scepter of Command##39238
|tip Use it on Bloated Abominations around this area.
|tip You will gain control of an abomination.
|tip Send your Bloated Abomination northeast into the troll area.
|tip Try to gather up groups of Drakkari Skullcrusher trolls so that they are all near you.
|tip Use the "Burst at the Seams" ability on your pet action bar when the group of trolls are near you, to kill them.
|tip Keep repeating this process.
Slay #60# Drakkari Skullcrushers |q 12690/1 |goto 32.43,39.69
Lure #3# Drakkari Chieftains |q 12690/2 |goto 33.70,37.70
|tip They will appear as you kill trolls with your abominations.
|tip When they appear, kill them with the other trolls.
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12690
|tip Stand on the teleport pad.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
turnin Fuel for the Fire##12690 |goto 27.08,46.16
accept Disclosure##12710 |goto 27.08,46.16
Complete Drakuru's Task |q 12676/2 |goto 27.08,46.16
step
Teleport to Drakuru's Upper Chamber |complete dist("Zul'Drak 27.35,42.54") < 5  |goto 28.39,44.88 |q 12710
|tip Stand on the upper teleport pad.
|tip Inside the floating building.
step
click Musty Coffin##202410
|tip Upstairs inside the floating building.
Watch the dialogue
|tip Follow Malmortis as he walks.
Explore Drakuru's Upper Chamber |q 12710/1 |goto 27.27,42.38
step
Teleport to the Main Floor of Volatarus |complete dist("Zul'Drak 28.06,45.15") < 5 |goto 28.40,44.89 |q 12710
|tip Stand on the upper teleport pad.
|tip Inside the floating building.
step
talk Overlord Drakuru##28503
|tip Inside the floating building.
turnin Disclosure##12710 |goto 27.08,46.16
Learn Drakuru's Secret |q 12676/3 |goto 27.08,46.16
step
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.39,44.88 |q 12676
|tip Stand on the lower teleport pad.
|tip Inside the floating building.
step
use Stefan's Horn##41390
talk Stefan Vadu##28518
|tip He flies down to you.
turnin Sabotage##12676 |goto 28.05,44.85
accept Betrayal##12713 |goto 28.05,44.85
step
Teleport Up to Voltarus |complete subzone("Voltarus") |goto 28.37,44.87 |q 12690
|tip Stand on the teleport pad.
step
_NOTE:_
Prepare For a Difficult Fight
|tip You are about to fight Overlord Drakuru.
|tip You will talk to him and he will teleport you to the top of the floating building.
|tip A dialogue will begin and your Ghoul Disguise will fail intentionally as part of the quest.
Capture a Blightblood Troll Minion
|tip During the dialogue, 4 orange Blightblood Trolls will appear around the circle platform.
|tip Use the "Scepter of Domination" quest item on one of them to control it as a minion.
|tip It will help you fight Overlord Drakuru.
|tip If your minion dies during the fight, use the quest item again on another Blightblood Troll to get another minion to fight for you.
Avoid the Orange Areas on the Ground
|tip Overlord Drakuru will toss orange crystals at you, which will explode and create orange areas on the ground that will damage you badly.
|tip Try to avoid the orange areas on the ground, while trying to help your Blightblood Troll minion damage Overlord Drakuru, as much as you can.
|tip The orange areas on the ground will start to disappear after some time, so try to position yourself so that they don't infect too much of the ground.
|tip Repeat this process until you win the fight.
|tip If you have trouble, try to find someone to help you, or skip the quest.
Click Here to Continue |confirm |q 12713
step
talk Overlord Drakuru##28503 |goto 27.08,46.16
|tip Inside the floating building.
Tell him _"I am ready to accompany you, Drakuru."_
Teleport to the Top fo Voltarus with Drakuru |goto 28.34,45.28 < 5 |noway |c |q 12713
step
Watch the dialogue
use the Scepter of Domination##39664
|tip Use it on one of the Blightblood Trolls that appear.
kill Overlord Drakuru##28998
|tip Avoid the orange areas on the ground.
|tip If your minion dies, use the quest item another one.
|tip If you have trouble, try to find someone to help you, or skip the quest.
click Drakuru's Skull##191458
|tip After a dialogue, it appears on the ground nearby.
collect Drakuru's Skull##40425 |q 12713/1 |goto 28.39,44.87
step
click Drakuru's Last Wish##202357
|tip On top of the floating building.
Choose _"I'm ready."_
Teleport to the Ground |complete subzone("Reliquary of Pain") |goto 28.62,44.55 |q 12713
|only if subzone("Voltarus")
step
use Stefan's Horn##41390
talk Stefan Vadu##28518
|tip He flies down to you.
turnin Betrayal##12713 |goto 28.05,44.85
step
talk Crusader MacKellar##29689
turnin The Storm King's Vengeance##12919 |goto 25.28,63.96
step
talk Engineer Reed##29688
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Engineer Reed##29688 |goto 25.23,63.88 |q 12795
step
Run up the stairs |goto 32.12,66.62 < 50 |only if walking and not subzone("The Argent Stand")
talk Commander Falstaav##28059
turnin Taking a Stand##12795 |goto 39.42,66.96
accept Defend the Stand##12503 |goto 39.42,66.96
accept Parachutes for the Argent Crusade##12740 |goto 39.42,66.96
step
talk Marissa Everwatch##28791
|tip Inside the building.
home The Argent Stand |goto 40.83,66.26
step
talk Hexxer Ubungo##28062
accept The Blessing of Zim'Abwa##12565 |goto 40.52,65.61
step
talk Gurric##28623
fpath The Argent Stand |goto 41.55,64.43
stickystart "Collect_Drakkari_Offerings"
stickystart "Destroy_Scourge_At_The_Argent_Stand"
step
use the Crusader Parachute##39615
|tip Use it on Argent (friendly) NPC's around this area.
|tip It may not work on all of them.
Equip #10# Argent Forces with a Parachute |q 12740/1 |goto 37.43,67.01
step
label "Collect_Drakkari_Offerings"
Kill enemies around this area |notinsticky
collect 10 Drakkari Offerings##38551 |q 12565 |goto 37.43,67.01
step
label "Destroy_Scourge_At_The_Argent_Stand"
Kill enemies around this area
Destroy #10# Scourge at The Argent Stand |q 12503/1 |goto 37.43,67.01
step
click Zim'Abwa##190535
turnin The Blessing of Zim'Abwa##12565 |goto 36.70,72.57
step
talk Commander Falstaav##28059
turnin Defend the Stand##12503 |goto 39.42,66.96
turnin Parachutes for the Argent Crusade##12740 |goto 39.42,66.96
step
talk Commander Kunz##28039
|tip Inside the building.
accept New Orders for Sergeant Stackhammer##12505 |goto 40.27,66.62
accept Pa'Troll##12596 |goto 40.27,66.62
step
talk Hexxer Ubungo##28062
accept Trouble at the Altar of Sseratus##12506 |goto 40.52,65.61
step
talk Aidan Steeleye##28800
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Aidan Steeleye##28800 |goto 41.09,65.15 |q 12506
step
talk Captain Brandon##28042
accept Something for the Pain##12597 |goto 48.77,78.86
step
talk Captain Rupert##28044
|tip Inside the crumbled building.
accept Throwing Down##12598 |goto 58.07,72.43
step
talk Dr. Rogers##28125
|tip Inside the crumbled building.
accept Leave No One Behind##12512 |goto 58.68,72.49
step
Enter the building |goto 49.12,74.33 < 15 |walk
use the Crusader's Bandage##38330
|tip Use it on Crusader Josephine.
|tip Inside the building.
|tip In the next guide step, HURRY.  She will only stay alive for 3 minutes.
Heal Crusader Josephine |havebuff spell:50693 |goto 49.45,74.71 |q 12512
step
Enter the crumbled building |goto 57.94,72.61 < 15 |walk
Save Crusader Josephine |q 12512/3 |goto 58.15,72.30
|tip She will follow you, bring her safely to this location.
|tip Protect her and try to avoid allowing enemies to attack her as you walk.
|tip Don't mount because she won't be able to keep up.
|tip HURRY - She will only stay alive for 3 minutes.
|tip If you don't make it in time, go back to the previous guide step to try again.
step
Enter the building |goto 53.88,75.37 < 15 |walk
use the Crusader's Bandage##38330
|tip Use it on Crusader Lamoof.
|tip Inside the building.
|tip In the next guide step, HURRY.  He will only stay alive for 3 minutes.
Heal Crusader Lamoof |havebuff spell:50679 |goto 53.58,75.00 |q 12512
step
Enter the crumbled building |goto 57.94,72.61 < 15 |walk
Save Crusader Lamoof |q 12512/2 |goto 58.15,72.30
|tip He will follow you, bring him safely to this location.
|tip Protect him and try to avoid allowing enemies to attack him as you walk.
|tip Don't mount because he won't be able to keep up.
|tip HURRY - He will only stay alive for 3 minutes.
|tip If you don't make it in time, go back to the previous guide step to try again.
step
use the High Impact Grenade##38574
|tip Use it next to the Nerubian Tunnels.
|tip They look like dirt mounds on the ground around this area.
|tip Inside and outside the building.
Seal #5# Nerubian Tunnels |q 12598/1 |goto 55.18,69.48
step
Enter the building |goto 50.98,70.19 < 10 |walk
use the Crusader's Bandage##38330
|tip Use it on Crusader Jonathan.
|tip Inside the building.
|tip In the next guide step, HURRY.  He will only stay alive for 3 minutes.
Heal Crusader Jonathan |havebuff spell:50666 |goto 50.67,69.86 |q 12512
step
Enter the crumbled building |goto 57.94,72.61 < 15 |walk
Save Crusader Jonathan |q 12512/1 |goto 58.15,72.30
|tip He will follow you, bring him safely to this location.
|tip Protect him and try to avoid allowing enemies to attack him as you walk.
|tip Don't mount because he won't be able to keep up.
|tip HURRY - He will only stay alive for 3 minutes.
|tip If you don't make it in time, go back to the previous guide step to try again.
step
talk Captain Rupert##28044
|tip Inside the crumbled building.
turnin Throwing Down##12598 |goto 58.07,72.43
Complete Captain Rupert's Task |q 12596/2 |goto 58.07,72.43
accept Cocooned!##12606 |goto 58.07,72.43
step
talk Dr. Rogers##28125
|tip Inside the crumbled building.
turnin Leave No One Behind##12512 |goto 58.68,72.49
step
talk Specialist Cogwheel##28284
|tip Inside the crumbled building.
accept Skimmer Spinnerets##12553 |goto 58.26,72.05
step
talk Sergeant Moonshard##28283
|tip Inside the crumbled building.
accept Death to the Necromagi##12552 |goto 58.07,72.04
step
_NOTE:_
Start Looking for a Group
|tip After you complete a few more quests, you will be a good spot to complete the Amphitheater of Anguish group quests.
|tip If you can find a group, you can complete 6 group quests that give a lot of experience quickly.
|tip You can also get a nice weapon from completing the questline.
|tip If you can't find a group, you can skip the quests later.
Click Here to Continue |confirm |q 12948 |future
step
kill Nerubian Cocoon##28413+
|tip They look like squirming white cocoons on the ground around this area.
|tip They may not all contain Captive Footmen.
|tip Inside and outside the building.
Free #3# Captive Footmen |q 12606/1 |goto 55.18,69.48
You can find more around [52.70,66.82]
stickystart "Kill_Hathar_Necromagi"
step
kill Hath'ar Skimmer##28258+
|tip They look like smaller brown spiders around this area.
collect 5 Intact Skimmer Spinneret##38514 |q 12553/1 |goto 56.78,81.62
step
label "Kill_Hathar_Necromagi"
kill 8 Hath'ar Necromagus##28257 |q 12552/1 |goto 56.78,81.62
|tip They look like larger darker colored spiders around this area.
You can find more inside the building at [60.15,79.25]
step
Leave the building |goto 60.15,79.25 < 40 |walk |only if subzone("Kolramas") and _G.IsIndoors()
talk Captain Rupert##28044
|tip Inside the crumbled building.
turnin Cocooned!##12606 |goto 58.07,72.43
step
talk Sergeant Moonshard##28283
|tip Inside the crumbled building.
turnin Death to the Necromagi##12552 |goto 58.07,72.04
step
talk Specialist Cogwheel##28284
|tip Inside the crumbled building.
turnin Skimmer Spinnerets##12553 |goto 58.26,72.05
accept Crashed Sprayer##12583 |goto 58.26,72.05
step
talk Captain Rupert##28044
|tip Inside the crumbled building.
accept Pure Evil##12584 |goto 58.07,72.43
step
click Crashed Plague Sprayer##190537
collect Plague Sprayer Parts##38560 |q 12583/1 |goto 48.90,75.62
step
talk Specialist Cogwheel##28284
|tip Inside the crumbled building.
turnin Crashed Sprayer##12583 |goto 58.26,72.05
accept A Tangled Skein##12555 |goto 58.26,72.05
step
use the Tangled Skein Thrower##38515
|tip Use it on Plague Sprayers.
|tip They look like machines flying in the air around this area.
Web and Destroy #5# Plague Sprayers |q 12555/1 |goto 57.39,80.28
step
click Chunk of Saronite##190540+
|tip They look like small green rocks on the ground inside the building.
|tip They can be upstairs too.
collect 10 Chunk of Saronite##38562 |q 12584/1 |goto 60.15,79.25
step
Leave the building |goto 60.15,79.25 < 40 |walk |only if subzone("Kolramas") and _G.IsIndoors()
talk Specialist Cogwheel##28284
|tip Inside the crumbled building.
turnin A Tangled Skein##12555 |goto 58.26,72.05
step
Enter the building |goto 47.97,63.63 < 15 |walk
talk Captain Grondel##28043
|tip Inside the building.
accept Creature Comforts##12599 |goto 48.15,63.89
step
_NOTE:_
Did You Find a Group for the Amphitheater of Anguish?
|tip If you were able to find a group, it is now a good spot to complete the Amphitheater of Anguish group quests.
Yes (Do It)	|confirm	|q 12948	|future		|next "Amphitheater_Of_Anguish"
No (Skip)	|confirm	|q 12948	|future		|next "Amphitheater_Of_Anguish_SKIP"
stickystart "Collect_Dead_Thornwood"
step
label "Amphitheater_Of_Anguish"
Run up the ramp |goto Zul'Drak 45.62,58.37 < 30 |only if walking
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Amphitheater of Anguish: Yggdras!##12932 |goto Zul'Drak 48.43,56.36 |noautoaccept
step
Watch the dialogue
|tip An elite enemy appears in the arena.
|tip Attack him quickly to avoid him despawning.
kill Yggdras##30014
Defeat Yggdras |q 12932/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Amphitheater of Anguish: Yggdras!##12932 |goto 48.47,56.42
step
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Amphitheater of Anguish: Magnataur!##12933 |goto 48.43,56.36 |noautoaccept
step
Watch the dialogue
|tip An elite enemy appears and runs into the arena.
|tip Attack him quickly to avoid him despawning.
kill Stinkbeard##30017
Defeat Stinkbeard |q 12933/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto 48.47,56.42
step
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Amphitheater of Anguish: From Beyond!##12934 |goto 48.43,56.36 |noautoaccept
step
Watch the dialogue
|tip An elite enemy appears in the arena.
|tip It can be 1 of 4 different enemies, and it's random.
|tip Attack it quickly to avoid it despawning.
Kill the enemy that appears
Defeat an Elemental Lord |q 12934/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto 48.47,56.42
step
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto 48.43,56.36 |noautoaccept
step
Watch the dialogue
|tip An elite enemy appears and jumps into the arena.
|tip Attack him quickly to avoid him despawning.
kill Orinoko Tuskbreaker##30020
Defeat Orinoko Tuskbreaker |q 12935/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto 48.47,56.42
step
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto 48.43,56.36 |noautoaccept
step
Watch the dialogue
|tip An elite enemy appears and runs into the arena.
|tip Attack him quickly to avoid him despawning.
kill Korrak the Bloodrager##30023
Defeat Korrak the Bloodrager |q 12936/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto 48.47,56.42
step
talk Gurgthock##30007
|tip Up on the balcony, overlooking the arena.
accept The Champion of Anguish##12948 |goto 48.43,56.36	|noautoaccept
step
Watch the dialogue
|tip An elite enemy appears and jumps into the arena.
|tip Attack him quickly to avoid him despawning.
kill Enormos##30021
|tip Once you damage the mammoth enough, Vladof the Butcher will dismount.
|tip When this happens, someone in your group can click the mammoth to ride it and use it like a vehicle to fight Vladof the Butcher.
kill Vladof the Butcher##30022
Defeat Vladof the Butcher |q 12948/1 |goto 47.73,56.86
step
talk Wodin the Troll-Servant##30009
|tip Up on the balcony, overlooking the arena.
turnin The Champion of Anguish##12948 |goto 48.47,56.42
stickystart "Collect_Dead_Thornwood"
step
label "Amphitheater_Of_Anguish_SKIP"
Leave the Amphitheater of Anguish |goto Zul'Drak 45.94,58.15 < 50 |only if walking and subzone("Amphitheater of Anguish")
Enter the building |goto Zul'Drak 35.75,52.24 < 15 |walk
talk Captain Arnath##28045
|tip In the doorway of the building.
accept Siphoning the Spirits##12799 |goto Zul'Drak 35.62,52.23
stickystop "Collect_Dead_Thornwood"
step
talk Alchemist Finklestein##28205
|tip Inside the building.
accept Lab Work##12557 |goto 35.03,52.11
step
click Withered Batwing##190473
|tip It looks like small skeleton bones.
|tip On the bottom shelf on the bookcase.
|tip Inside the building.
Find the Withered Batwing |q 12557/2 |goto 34.96,51.57
step
click Amberseed##190459
|tip It looks like a brown spikey ball.
|tip On the bottom shelf (and the 3rd shelf down) on the bookcase.
|tip Inside the building.
Find the Amberseed |q 12557/3 |goto 34.94,51.57
step
click Muddy Mire Maggots##190478
|tip It looks like a bag of yellow grain.
|tip On the ground inside the building.
Find the Muddy Mire Maggot |q 12557/1 |goto 34.83,51.57
step
click Chilled Serpent Mucus##190462
|tip It looks like a small skinny green vial.
|tip On the 3rd shelf down on the bookcase.
|tip Inside the building.
Find the Chilled Serpent Mucus |q 12557/4 |goto 35.09,53.42
step
talk Alchemist Finklestein##28205
|tip Inside the building.
turnin Lab Work##12557 |goto 35.03,52.11
Complete Alchemist Finklestein's Task |q 12596/4 |goto 35.03,52.11
step
kill Lost Drakkari Spirit##29129+
|tip They look like blue troll ghosts.
|tip You can find them all around the Pools of Zha'jin area.
collect 5 Ancient Ectoplasm##38335 |q 12799/1 |goto 37.80,60.91
step
talk Captain Arnath##28045
|tip In the doorway of the building.
turnin Siphoning the Spirits##12799 |goto 35.62,52.23
accept Stocking the Shelves##12609 |goto 35.62,52.23
accept Clipping Their Wings##12610 |goto 35.62,52.23
stickystart "Collect_Unblemished_Bat_Wings"
step
kill Trapdoor Crawler##28221+
|tip They look like orange and black spiders around this area.
|tip They can be underground, get close to the jumping rocks on the ground to get them to come out of the ground.
collect 7 Fresh Spider Ichor##38610 |q 12609/1 |goto 35.74,48.66
You can find more around [37.75,55.10]
step
label "Collect_Unblemished_Bat_Wings"
kill Zul'Drak Bat##28233+
|tip They look like grey bats around this area.
collect 7 Unblemished Bat Wing##38620 |q 12610/1 |goto 35.74,48.66
You can find more around [37.75,55.10]
step
talk Captain Arnath##28045
|tip In the doorway of the building.
turnin Stocking the Shelves##12609 |goto 35.62,52.23
turnin Clipping Their Wings##12610 |goto 35.62,52.23
step
talk Sergeant Stackhammer##28056
turnin New Orders for Sergeant Stackhammer##12505 |goto 40.40,48.20
accept Argent Crusade, We Are Leaving!##12504 |goto 40.40,48.20
step
talk Corporal Maga##28099
accept Mopping Up##12508 |goto 40.37,48.20
stickystart "Tell_Argent_Soldiers_To_Report_Back_To_The_Sergeant"
stickystart "Accept_Strange_Mojo"
stickystart "Slay_Followers_Of_Sseratus"
step
Investigate the Main building at the Altar of Sseratus |q 12506/1 |goto 40.28,39.45
|tip Walk into the doorway of the building.
step
label "Tell_Argent_Soldiers_To_Report_Back_To_The_Sergeant"
talk Argent Soldier##28041+
|tip They look like friendly NPCs wearing Alliance armor.
|tip You can find them all around the Altar of Sseratus area. |notinsticky
Tell them _"Soldier, you have new orders. You're to pull back and report to the sergeant!"_
Tell #10# Argent Soldiers to Report Back to the Sergeant |q 12504/1 |goto 40.38,44.81
step
label "Accept_Strange_Mojo"
Kill enemies around this area
|tip They look like blue trolls.
|tip You can find them all around the Altar of Sseratus area. |notinsticky
collect Strange Mojo##38321 |n
use the Strange Mojo##38321
accept Strange Mojo##12507 |goto 40.38,44.81
step
label "Slay_Followers_Of_Sseratus"
Kill enemies around this area |notinsticky
|tip They look like blue trolls. |notinsticky
|tip You can find them all around the Altar of Sseratus area. |notinsticky
Slay #10# Followers of Sseratus |q 12508/1 |goto 40.38,44.81
step
talk Sergeant Stackhammer##28056
turnin Argent Crusade, We Are Leaving!##12504 |goto 40.40,48.20
step
talk Corporal Maga##28099
turnin Mopping Up##12508 |goto 40.37,48.20
step
use the Hearthstone##6948
Hearth to The Argent Stand |complete subzone("The Argent Stand") |noway |c |q 12506
|only if subzone("Altar of Sseratus")
step
talk Eitrigg##28244
|tip Inside the building.
turnin Pure Evil##12584 |goto 40.83,66.64
step
talk Hexxer Ubungo##28062
turnin Trouble at the Altar of Sseratus##12506 |goto 40.53,65.60
turnin Strange Mojo##12507 |goto 40.53,65.60
accept Precious Elemental Fluids##12510 |goto 40.53,65.60
step
talk Aidan Steeleye##28800
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Aidan Steeleye##28800 |goto 41.09,65.15 |q 12510
step
talk Sub-Lieutenant Jax##28309
accept The Drakkari Do Not Need Water Elementals!##12562 |goto 40.18,68.93
stickystart "Kill_Drakkari_Water_Binders"
step
kill Crazed Water Spirit##16570+
|tip They look like water elementals.
|tip You can find them all around the Drak'Sotra Fields area.
collect Water Elemental Link##38323+ |n
use the Water Elemental Link##38323+
|tip These will create Tethers to the Plane of Water.
|tip You need 3 links to create 1 tether.
use the Tether to the Plane of Water##38324+
|tip Water Elemental Links will not drop from enemies if you have a Tether to the Plane of Water in your bags.
kill Watery Lord##28118+
|tip They appear after you use Tethers to the Plane of Water.
collect 3 Precious Elemental Fluids##38325 |q 12510/1 |goto 42.18,77.54
step
click Mature Water-Poppy##190534+
|tip They look like larger and taller plants on the ground around this area.
|tip You can find them all around the Drak'Sotra Fields area. |notinsticky
collect 5 Mature Water-Poppy##38552 |q 12597/1 |goto 42.18,77.54
step
label "Kill_Drakkari_Water_Binders"
kill 10 Drakkari Water Binder##28303 |q 12562/1 |goto 42.18,77.54
|tip They look like trolls.
|tip You can find them all around the Drak'Sotra Fields area. |notinsticky
step
talk Captain Brandon##28042
turnin Something for the Pain##12597 |goto 48.77,78.86
Complete Captain Brandon's Task |q 12596/1 |goto 48.77,78.86
step
talk Sub-Lieutenant Jax##28309
turnin The Drakkari Do Not Need Water Elementals!##12562 |goto 40.18,68.93
step
talk Hexxer Ubungo##28062
turnin Precious Elemental Fluids##12510 |goto 40.53,65.60
accept Mushroom Mixer##12514 |goto 40.53,65.60
step
talk Aidan Steeleye##28800
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Aidan Steeleye##28800 |goto 41.09,65.15 |q 12514
step
talk Apprentice Pestlepot##28204
accept Gluttonous Lurkers##12527 |goto 41.33,65.13
stickystart "Collect_Muddlecap_Fungus"
stickystart "Collect_Dead_Thornwood"
step
clicknpc Zul'Drak Rat##28202+
|tip They look like small rats that run on the ground.
|tip You can find them all around the Drak'Agal area.
|tip To see the rats easier, enable the "Critters and Companions" option in the "Names" section of your Interface settings.
collect Zul'Drak Rat##38380+ |n
|tip Collect 5 rats before using any on a Lurking Basilisk.
|tip You have to use 5 of them on each Lurking Basilisk.
use the Zul'Drak Rat##38380+
|tip Use them on Lurking Basilisks.
|tip They look like large green lizard enemies.
clicknpc Gorged Lurking Basilisk##28203+
|tip They appear after you use 5 Zul'Drak Rats on a Lurking Basilisk.
collect 5 Basilisk Crystals##38382 |q 12527/1 |goto 43.53,59.14
step
label "Collect_Dead_Thornwood"
click Dead Thornwood##190543+
|tip They look like dark colored thorny roots on the ground.
|tip You can find them all around the Drak'Agal area. |notinsticky
collect 20 Dead Thornwood##38563 |q 12599/1 |goto 43.53,59.14
step
label "Collect_Muddlecap_Fungus"
click Muddlecap Fungus##190399+
|tip They look like groups of grey mushrooms on the ground.
|tip You can find them all around the Drak'Agal area. |notinsticky
collect 10 Muddlecap Fungus##38326 |q 12514/1 |goto 43.53,59.14
step
Enter the building |goto 47.96,63.61 < 15 |walk
talk Captain Grondel##28043
|tip Inside the building.
turnin Creature Comforts##12599 |goto 48.15,63.89
Complete Captain Grondel's Task |q 12596/3 |goto 48.15,63.89
step
Run up the stairs to leave the Drak'Agal area |goto 43.69,68.78 < 30 |only if walking and subzone("Drak'Agal")
talk Commander Kunz##28039
|tip Inside the building.
turnin Pa'Troll##12596 |goto 40.27,66.62
step
talk Hexxer Ubungo##28062
turnin Mushroom Mixer##12514 |goto 40.53,65.60
accept Too Much of a Good Thing##12516 |goto 40.53,65.60
step
talk Aidan Steeleye##28800
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Aidan Steeleye##28800 |goto 41.09,65.15 |q 12516
step
Enter the building |goto 35.78,52.23 < 15 |walk
talk Alchemist Finklestein##28205
|tip Inside the building.
turnin Gluttonous Lurkers##12527 |goto 35.02,52.11
step
use the Modified Mojo##38332
|tip Use it on the Prophet of Sseratus.
|tip He looks like a giant green snake.
|tip He will become weakened and non-elite.
kill Muddled Prophet of Sseratus##28151 |q 12516/1 |goto 40.44,42.55
step
talk Hexxer Ubungo##28062
turnin Too Much of a Good Thing##12516 |goto 40.53,65.60
accept To the Witch Doctor##12623 |goto 40.53,65.60
step
Kill enemies around this area
collect 10 Drakkari Offerings##38551 |goto 44.08,64.56 |q 12615 |future
step
talk Witch Doctor Khufu##28479
turnin To the Witch Doctor##12623 |goto 59.50,58.05
accept Breaking Through Jin'Alai##12627 |goto 59.50,58.05
accept The Blessing of Zim'Torga##12615 |goto 59.50,58.05
step
talk Maaka##28624
fpath Zim'Torga |goto 60.04,56.71
step
talk Scalper Ahunae##28484
accept The Leaders at Jin'Alai##12622 |goto 59.15,56.20
step
click Zim'Torga##190602
|tip It looks like a stone statue.
turnin The Blessing of Zim'Torga##12615 |goto 59.56,57.33
step
_NOTE:_
During the Next Steps
|tip Kill trolls as you move around and disturb the cauldrons in the Pools of Jin'Alai area.
|tip There are 3 wooden totems around the area, and each totem belongs to a certain named troll.
|tip Hover over the totems to see the name of the troll they belong to, and be mindful where the totems are located.
|tip As you kill enemies, you will randomly see one of the named trolls yell in your chat.
|tip When they yell, this means a larger named troll has spawned next to their totem.
|tip When you see these yells in your chat, go to the totem of the troll that yelled and kill them for the quest.
Click Here to Continue |confirm |q 12622
stickystart "Collect_Treasure_Of_Kutubesa"
stickystart "Collect_Treasure_Of_Gawanil"
stickystart "Collect_Treasure_Of_Chulo_The_Mad"
step
click Purple Cauldron##190619
Disturb the Purple Cauldron |q 12627/3 |goto 57.62,61.70
step
click Green Cauldron##190630
Disturb the Green Cauldron |q 12627/2 |goto 55.70,64.31
step
click Blue Cauldron##190618
Disturb the Blue Cauldron |q 12627/1 |goto 57.19,65.32
step
click Red Cauldron##190620
Disturb the Red Cauldron |q 12627/4 |goto 58.76,62.74
step
label "Collect_Treasure_Of_Kutubesa"
Kill Jin'Alai enemies around this area
|tip They look like trolls. |notinsticky
kill Kutube'sa##28494
|tip He looks like a larger troll that appears next to his wooden totem.
|tip You will see him yell in your chat when he appears.
click Treasure of Kutube'sa##190614
|tip It appears on the ground after you kill him.
collect Treasure of Kutube'sa##38637 |q 12622/1 |goto 57.34,63.49
step
label "Collect_Treasure_Of_Gawanil"
Kill Jin'Alai enemies around this area
|tip They look like trolls. |notinsticky
kill Gawanil##28495
|tip He looks like a larger troll that appears next to his wooden totem.
|tip You will see him yell in your chat when he appears.
click Treasure of Gawanil##190613
|tip It appears on the ground after you kill him.
collect Treasure of Gawanil##38639 |q 12622/2 |goto 58.09,62.10
step
label "Collect_Treasure_Of_Chulo_The_Mad"
Kill Jin'Alai enemies around this area
|tip They look like trolls. |notinsticky
kill Chulo the Mad##28496
|tip He looks like a larger troll that appears next to his wooden totem.
|tip You will see him yell in your chat when he appears.
click Treasure of Chulo the Mad##190612
|tip It appears on the ground after you kill him.
collect Treasure of Chulo the Mad##38638 |q 12622/3 |goto 56.43,64.90
step
talk Witch Doctor Khufu##28479
turnin Breaking Through Jin'Alai##12627 |goto 59.50,58.05
accept To Speak With Har'koa##12628 |goto 59.50,58.05
step
talk Chronicler To'kini##28527
accept Relics of the Snow Leopard Goddess##12635 |goto 59.98,57.93
step
talk Scalper Ahunae##28484
turnin The Leaders at Jin'Alai##12622 |goto 59.15,56.20
accept Sealing the Rifts##12640 |goto 59.15,56.20
step
talk Element-Tamer Dagoda##28480
accept The Frozen Earth##12639 |goto 59.39,56.41
step
talk Ba'kari##28855
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ba'kari##28855 |goto 59.53,57.04 |q 12628
stickystart "Collect_Harkoan_Relics"
step
talk Har'koa##28401
turnin To Speak With Har'koa##12628 |goto 63.71,70.39
accept But First My Offspring##12632 |goto 63.71,70.39
step
kill Cursed Offspring of Har'koa##28404+
|tip They look like dark colored leopards.
|tip You can find them all around the Altar of Har'koa area. |notinsticky
use the Whisker of Har'koa##38676
|tip Use it on their corpses.
Resurrect #7# Cursed Offsprings of Har'koa |q 12632/1 |goto 62.30,68.28
step
label "Collect_Harkoan_Relics"
click Har'koan Relic##190633+
|tip They look like grey stone tablets on the ground.
|tip They are usually leaning against an object or a wall.
|tip You can find them all around the Altar of Har'koa area. |notinsticky
collect 10 Har'koan Relic##38677 |q 12635/1 |goto 62.30,68.28
step
talk Har'koa##28401
turnin But First My Offspring##12632 |goto 63.71,70.39
accept Spirit of Rhunok##12642 |goto 63.71,70.39
step
talk Chronicler To'kini##28527
turnin Relics of the Snow Leopard Goddess##12635 |goto 59.97,57.93
accept Plundering Their Own##12650 |goto 59.97,57.93
accept Tails Up##13549 |goto 59.97,57.93
step
talk Witch Doctor Khufu##28479
accept The Blessing of Zim'Rhuk##12655 |goto 59.50,58.04
step
talk Pan'ya##29583
home Zim'Torga |goto 59.33,57.30
step
talk Ba'kari##28855
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ba'kari##28855 |goto 59.53,57.04 |q 12655
step
click Zim'Rhuk##190657
|tip Be careful to avoid the elite enemies as you travel here.
turnin The Blessing of Zim'Rhuk##12655 |goto 59.21,44.67
|only if itemcount(38551) >= 10
stickystart "Collect_Rhunokian_Artifacts"
stickystart "Seal_Elemental_Rifts"
stickystart "Collect_Essences_Of_The_Frozen_Earth"
stickystart "Collect_Drakkari_Offerings_12655"
step
talk Spirit of Rhunok##28561
turnin Spirit of Rhunok##12642 |goto 53.42,39.01
accept My Prophet, My Enemy##12646 |goto 53.42,39.01
step
kill Prophet of Rhunok##28442
|tip Underwater.
collect Arctic Bear God Mojo##38695 |q 12646/1 |goto 54.08,47.55
step
label "Seal_Elemental_Rifts"
kill Elemental Rift##28452+
|tip They look like large balls of electricity.
|tip You can find them all around the Drak'Mabwa area. |notinsticky
Seal #7# Elemental Rifts |q 12640/1 |goto 56.43,45.60
step
label "Collect_Essences_Of_The_Frozen_Earth"
kill Frozen Earth##28411+
|tip They look like grey rock elementals.
|tip You can find them all around the Drak'Mabwa area. |notinsticky
collect 7 Essence of the Frozen Earth##38681 |q 12639/1 |goto 56.43,45.60
step
label "Collect_Drakkari_Offerings_12655"
Kill enemies around this area
|tip You can find them all around the Drak'Mabwa area. |notinsticky
collect 10 Drakkari Offerings##38551 |goto 56.43,45.60 |q 12655
step
click Zim'Rhuk##190657
|tip Be careful to avoid the elite enemies as you travel here.
turnin The Blessing of Zim'Rhuk##12655 |goto 59.21,44.67
step
label "Collect_Rhunokian_Artifacts"
Kill enemies around this area
|tip They look like trolls.
collect 7 Rhunokian Artifact##38700 |q 12650/1 |goto 54.16,45.86
You can find more around [53.46,38.08]
step
talk Spirit of Rhunok##28561
turnin My Prophet, My Enemy##12646 |goto 53.42,39.01
accept An End to the Suffering##12647 |goto 53.42,39.01
step
kill Rhunok's Tormentor##28575
|tip In the doorway of the building.
collect Tormentor's Incense##38696 |goto 53.38,35.79 |q 12647
step
use the Tormentor's Incense##38696
|tip Use it next to Rhunok.
|tip He looks like a giant white bear laying on the ground inside the building.
kill Rhunok##28416 |q 12647/1 |goto 53.51,34.94
step
talk Spirit of Rhunok##28561
turnin An End to the Suffering##12647 |goto 53.42,39.01
accept Back to Har'koa##12653 |goto 53.42,39.01
step
use the Hearthstone##6948
Hearth to Zim'Torga |complete subzone("Zim'Torga") |noway |c |q 12653
|only if subzone("Altar of Rhunok")
step
talk Scalper Ahunae##28484
turnin Sealing the Rifts##12640 |goto 59.15,56.20
accept Scalps!##12659 |goto 59.15,56.20
step
talk Element-Tamer Dagoda##28480
turnin The Frozen Earth##12639 |goto 59.39,56.41
accept Bringing Down Heb'Jin##12662 |goto 59.39,56.41
step
talk Ba'kari##28855
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ba'kari##28855 |goto 59.53,57.04 |q 12662
step
talk Chronicler To'kini##28527
turnin Plundering Their Own##12650 |goto 59.97,57.92
step
talk Har'koa##28401
turnin Back to Har'koa##12653 |goto 63.71,70.39
accept I Sense a Disturbance##12665 |goto 63.71,70.39
step
talk Har'koa##28401
Tell her _"Great and powerful Har'koa, please call for one of your children that it might stealthily carry me into the Altar of Quetz'lun."_
Ride with a Child of Har'koa |invehicle |goto 63.71,70.39 |q 12665
step
Watch the dialogue
Reveal Quetz'lun's Fate |q 12665/1 |goto 75.78,58.34 |notravel
step
Watch the dialogue
Return to Har'koa |outvehicle |goto 63.66,70.28 |q 12665 |notravel
step
talk Har'koa##28401
turnin I Sense a Disturbance##12665 |goto 63.71,70.39
accept Preparations for the Underworld##12666 |goto 63.71,70.39
step
Kill enemies around this area.
|tip They look like trolls.
|tip You can find them all around the Altar of Har'koa area.
collect 8 Sacred Adornment##39150 |q 12666/1 |goto 62.30,68.28
step
talk Har'koa##28401
turnin Preparations for the Underworld##12666 |goto 63.71,70.39
accept Seek the Wind Serpent Goddess##12667 |goto 63.71,70.39
stickystart "Recover_Female_Icepaw_Bears"
step
use To'kini's Blowgun##44890
|tip Use it on Frost Leopards.
|tip They look like white leopards around this area.
|tip You can only use the blowgun while not in combat.
|tip They will become tranquilized and clickable.
clicknpc Frost Leopard##29327+
Choose _"Lift the frost leopard's tail to check if it's a male or a female."_
|tip If they are male, they will attack you.
Recover #3# Female Frost Leopards |q 13549/1 |goto 73.82,68.55
step
label "Recover_Female_Icepaw_Bears"
use To'kini's Blowgun##44890
|tip Use it on Icepaw Bears.
|tip They look like white bears around this area.
|tip You can only use the blowgun while not in combat.
|tip They will become tranquilized and clickable.
clicknpc Icepaw Bear##29319+
Choose _"Lift the icepaw bear's tail to check if it's a male or a female."_
|tip If they are male, they will attack you.
Recover #3# Female Icepaw Bears |q 13549/2 |goto 73.82,68.55
step
talk Quetz'lun's Spirit##28030
turnin Seek the Wind Serpent Goddess##12667 |goto 75.34,58.64
accept Setting the Stage##12672 |goto 75.34,58.64
step
click Underworld Power Fragment##190719+
|tip They look like large floating dark colored crystals.
|tip You can find them all around the Altar of Quetz'lun area.
|tip If you have trouble spotting them, you can remove the death screen effect to make it easier to see.
|tip Type "/console ffxDeath 0" into your chat.  After that, type "/re" into your chat to reload the game.
collect 10 Underworld Power Fragment##39156 |q 12672/1 |goto 74.04,58.65
step
talk Quetz'lun's Spirit##28030
turnin Setting the Stage##12672 |goto 75.34,58.64
accept Foundation for Revenge##12668 |goto 75.34,58.64
step
_NOTE:_
During the Next Step:
|tip Be careful to not kill any troll enemies with "High Priest" or "High Priestess" in their names.
|tip These are quest enemies that you will need to kill in the next quest.
|tip Avoid killing them, so you don't have to wait for them to respawn.
Click to Continue |confirm |q 12668
step
Kill enemies around this area
|tip They look like trolls.
|tip Kill them near Soul Fonts.
|tip They look like altars shaped like dragon heads.
|tip You can find them all around the Altar of Quetz'lun area.
|tip Make sure they have the "Soul Font Void" buff on them before you kill them.
Kill #12# Trolls Near a Soul Font |q 12668/1 |goto 74.04,58.65
step
talk Quetz'lun's Spirit##28030
turnin Foundation for Revenge##12668 |goto 75.34,58.64
accept Hell Hath a Fury##12674 |goto 75.34,58.64
step
use Quetz'lun's Hexxing Stick##39158
|tip Use it on on High Priestess Tua-Tua.
kill High Priestess Tua-Tua##28754
|tip Make sure she has the "Quetz'lun's Hex" buff before you kill her.
Hex High Priestess Tua-Tua at Death |q 12674/2 |goto 73.56,60.78
step
use Quetz'lun's Hexxing Stick##39158
|tip Use it on on High Priest Mu'funu.
kill High Priest Mu'funu##28752
|tip Make sure he has the "Quetz'lun's Hex" buff before you kill him.
Hex High Priest Mu'funu at Death |q 12674/1 |goto 74.53,57.39
step
use Quetz'lun's Hexxing Stick##39158
|tip Use it on on High Priest Hawinni.
|tip He looks like a big brute that walks along this path around this area.
kill High Priest Hawinni##28756
|tip Make sure he has the "Quetz'lun's Hex" buff before you kill him.
Hex High Priest Hawinni at Death |q 12674/3 |goto 76.36,54.91
step
talk Quetz'lun's Spirit##28030
turnin Hell Hath a Fury##12674 |goto 75.34,58.64
accept One Last Thing##12675 |goto 75.34,58.64
step
talk Har'koa##28401
turnin One Last Thing##12675 |goto 63.71,70.39
accept Blood of a Dead God##12684 |goto 63.71,70.39
stickystart "Scalp_HebDrakkar_Trolls"
step
click Heb'Jin's Drum##190695
Watch the dialogue
|tip Heb'Jin flies down to you on a bat.
use the Bat Net##39041
|tip Use it on Heb'Jin's Bat to pin it to the ground.
kill Heb'Jin##28636 |q 12662/1 |goto 64.20,52.58
step
label "Scalp_HebDrakkar_Trolls"
Kill Heb'Drakkar enemies around this area
|tip They look like trolls, some riding bats.
|tip You can find them all around the Heb'Drakkar area. |notinsticky
use Ahunae's Knife##38731
|tip Use it on their corpses.
Scalp #10# Heb'Drakkar Trolls |q 12659/1 |goto 64.09,54.17
step
kill Blood of Mam'toth##28779+
|tip They look like blue oozes.
|tip You can find them all around the Mam'toth Crater area.
collect 7 Blood of Mam'toth##39167 |q 12684/1 |goto 73.44,50.50
step
talk Har'koa##28401
turnin Blood of a Dead God##12684 |goto 63.71,70.39
accept You Reap What You Sow##12685 |goto 63.71,70.39
step
use Quetz'lun's Ritual##39187
|tip Use it next to Quetz'lun.
|tip Druids can not use this quest item if shapeshifted. |only if Druid
Watch the dialogue
|tip He will become weakened and non-elite.
kill Drained Prophet of Quetz'lun##28795 |q 12685/1 |goto 75.35,58.65
step
use the Hearthstone##6948
Hearth to Zim'Torga |complete subzone("Zim'Torga") |noway |c |q 12685
|only if subzone("Altar of Quetz'lun")
step
talk Witch Doctor Khufu##28479
turnin You Reap What You Sow##12685 |goto 59.50,58.04
step
talk Chronicler To'kini##28527
turnin Tails Up##13549 |goto 59.97,57.93
accept Hexed Caches##12709 |goto 59.97,57.93
step
talk Har'koa##28401
accept The Key of Warlord Zol'Maz##12712 |goto 60.25,57.73
step
talk Ba'kari##28855
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ba'kari##28855 |goto 59.53,57.04 |q 12662
step
talk Element-Tamer Dagoda##28480
turnin Bringing Down Heb'Jin##12662 |goto 59.40,56.41
accept Enchanted Tiki Warriors##12708 |goto 59.40,56.41
step
talk Scalper Ahunae##28484
turnin Scalps!##12659 |goto 59.15,56.20
accept Wooly Justice##12707 |goto 59.15,56.20
step
Run up the huge stairs |goto 63.47,47.37 < 70 |only if walking and not subzone("Altar of Mam'toth")
use the Medallion of Mam'toth##39268
|tip Use it on an Enraged Mammoth around this area.
clicknpc Enraged Mammoth##28851
Ride an Enraged Mammoth |invehicle |goto 72.09,41.50 |q 12707
step
kill Mam'toth Disciple##28861+
|tip Use the abilities on your action bar.
|tip If your mammoth dies, use the item again on another mammoth to get a new one to ride.
Trample #12# Mam'toth Disciples to Death |q 12707/1 |goto 72.09,41.50
step
Stop Riding the Enraged Mammoth |outvehicle |q 12707
|tip Make sure to get to a safe location first.
|tip Click the red arrow on your action bar.
stickystart "Collect_ZolMaz_Stronghold_Caches"
stickystart "Destroy_Enchanted_Tiki_Warriors"
step
Enter the building |goto 68.21,35.85 < 15 |walk
kill Drek'Maz##28918
|tip Inside the building.
collect Drek'Maz's Tiki##39315 |goto 68.20,35.37 |q 12712
step
Enter the building |goto 67.92,33.47 < 15 |walk
kill Yara##28917
|tip Inside the building.
collect Yara's Sword##39313 |goto 67.94,32.72 |q 12712
step
kill Tiri##28916
|tip Inside the building.
collect Tiri's Magical Incantation##39316 |goto 63.82,37.09 |q 12712
step
use Tiri's Magical Incantation##39316
collect Tiki Dervish Ceremony##39314 |q 12712
step
label "Collect_ZolMaz_Stronghold_Caches"
click Zol'Maz Stronghold Cache##190836+
|tip They look like yellow wooden boxes on the ground.
|tip You can find them all around the Zol'Maz Stronghold area. |notinsticky
use Tiki Hex Remover##39305
|tip You loot these from enemies around this area.
|tip Using these will remove Zol'Maz Stronghold Hexes you get from opening these caches.
collect 12 Zol'Maz Stronghold Cache##39301 |q 12709/1 |goto 66.07,35.48
step
label "Destroy_Enchanted_Tiki_Warriors"
kill Enchanted Tiki Warrior##28882+
|tip They look like floating wooden masks with spears.
|tip You can find them all around the Zol'Maz Stronghold area. |notinsticky
Destroy #12# Enchanted Tiki Warriors |q 12708/1 |goto 66.07,35.48
step
_NOTE:_
Prepare for a Difficult Fight
|tip You will have to use an item and then kill Warlord Zol'Maz.
|tip He can be difficult, so make sure you don't have any debuffs, and prepare for a difficult fight before using the item.
|tip If you kill him inside the building and the gate closes, there is a Lever next to the doorway to open the gate again, so you can leave the building.
|tip If he kills you, or if you run away and fail to kill him, you will have to create another Tiki Dervish Ceremony.
|tip You can do this by going back and killing the 3 enemies in the buildings around this area, and combing the 3 items you get again.
|tip If you have trouble, try to find someone to help you.
Click Here to Continue |confirm |q 12712
step
use the Tiki Dervish Ceremony##39314
|tip Near the doorway of the building.
Watch the dialogue
kill Warlord Zol'Maz##28902
collect Key of Warlord Zol'Maz##39318 |q 12712/1 |goto 66.16,33.47
step
talk Rafae##30569
fpath Gundrak |goto 70.46,23.27
step
talk Ha'wana##33025
accept Eggs for Dubra'Jin##13556 |goto 69.99,20.96
step
click Gundrak Raptor Egg##194126+
|tip They look like brown and white eggs with blue spots on them on the ground around this area.
|tip You can also kill any raptors you see while collecting eggs, but they have a very low drop rate on the quest item.
collect 12 Gundrak Raptor Egg##44921 |q 13556/1 |goto 71.87,20.04
You can find more around: |notinsticky
[74.02,21.31]
[73.27,18.47]
[75.18,17.06]
[76.85,17.79]
step
Follow the path up |goto 69.90,22.46 < 40 |only if walking and not subzone("Dubra'Jin")
talk Ha'wana##33025
turnin Eggs for Dubra'Jin##13556 |goto 69.99,20.96
step
talk Nofal##30572
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Nofal##30572 |goto 70.24,23.30 |q 12712
step
talk Element-Tamer Dagoda##28480
turnin Enchanted Tiki Warriors##12708 |goto 59.40,56.42
step
talk Scalper Ahunae##28484
turnin Wooly Justice##12707 |goto 59.15,56.20
step
talk Chronicler To'kini##28527
turnin Hexed Caches##12709 |goto 59.97,57.92
step
talk Har'koa##28401
turnin The Key of Warlord Zol'Maz##12712 |goto 60.26,57.74
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Sholazar Basin (77-78)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Sholazar",
condition_suggested=function() return level >= 77 and level <= 78 and not completedq(12579) end,
next="Leveling Guides\\Northrend (69-80)\\The Storm Peaks (78-79)",
},[[
step
talk Archmage Pentarus##28160
accept Where in the World is Hemet Nesingwary?##12521 |goto Dalaran 68.55,42.07
step
Enter the building |goto 50.35,37.61 < 10 |walk
talk Amisi Azuregaze##28687
|tip Inside the building.
home Dalaran |goto 50.25,39.52
step
talk Archmage Pentarus##28160
Tell him _"I'm ready to fly to Sholazar Basin."_
Begin Flying to Sholazar Basin |invehicle |goto 68.55,42.05 |q 12521
step
Fly to Sholazar Basin |outvehicle |goto Sholazar Basin 39.11,56.87 |q 12521 |notravel
step
talk Monte Muzzleshot##27987
|tip Hanging from the parachute stuck in the tree.
turnin Where in the World is Hemet Nesingwary?##12521 |goto 39.68,58.66
accept Welcome to Sholazar Basin##12489 |goto 39.68,58.66
step
talk Debaar##28032
accept Venture Co. Misadventure##12524 |goto 27.24,59.89
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12524
step
talk Chad##28497
accept It Could Be Anywhere!##12624 |goto 26.87,58.94
step
talk Hemet Nesingwary##27986
turnin Welcome to Sholazar Basin##12489 |goto 27.10,58.64
step
talk Weslex Quickwrench##28033
accept Need an Engine, Take an Engine##12522 |goto 25.35,58.47
stickystart "Collect_Golden_Engagement_Ring"
step
click Flying Machine Engine##190447
collect Flying Machine Engine##38334 |q 12522/1 |goto 38.67,56.73
stickystart "Kill_Venture_Company_Members"
step
talk Engineer Helice##28787
accept Engineering a Disaster##12688 |goto 35.55,47.42
step
Watch the dialogue
|tip Follow Engineer Helice and protect her as she walks.
|tip She eventually walks to this location.
Escort Engineer Helice Out of Swindlegrin's Dig |q 12688/1 |goto 37.39,50.54
step
label "Kill_Venture_Company_Members"
Kill Venture Co. enemies around this area
Kill #15# Venture Company Members |q 12524/1 |goto 35.10,47.89
step
talk Debaar##28032
turnin Venture Co. Misadventure##12524 |goto 27.24,59.89
accept Wipe That Grin Off His Face##12525 |goto 27.24,59.89
stickystop "Collect_Golden_Engagement_Ring"
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12525
step
talk Chad##28497
turnin It Could Be Anywhere!##12624 |goto 26.87,58.94
|only if readyq(12624) or completedq(12624)
step
talk Hemet Nesingwary##27986
turnin Engineering a Disaster##12688 |goto 27.10,58.64
step
talk Weslex Quickwrench##28033
turnin Need an Engine, Take an Engine##12522 |goto 25.35,58.47
accept Have a Part, Give a Part##12523 |goto 25.35,58.47
stickystart "Collect_Golden_Engagement_Ring"
stickystart "Collect_Venture_Co_Spare_Parts"
step
kill Meatpie##28188 |q 12525/2 |goto 35.97,50.34
|tip He looks like a blue ogre that walks up and down this wooden platform.
|tip He also walks around the area.
step
kill Foreman Swindlegrin##28186 |q 12525/1 |goto 35.67,50.16
|tip He walks around on top of this wooden platform.
step
label "Collect_Venture_Co_Spare_Parts"
click Venture Co. Spare Parts##190455+
|tip They look like various shaped metal objects on the ground around this area.
collect 7 Venture Co. Spare Parts##38349 |q 12523/1 |goto 35.10,47.89
step
talk Weslex Quickwrench##28033
turnin Have a Part, Give a Part##12523 |goto 25.35,58.47
stickystop "Collect_Golden_Engagement_Ring"
step
talk Professor Calvert##28266
accept Aerial Surveillance##12696 |goto 25.41,58.47
step
clicknpc The Spirit of Gnomeregan##28037
fpath Nesingwary Base Camp |goto 25.28,58.44
step
talk Chad##28497
turnin It Could Be Anywhere!##12624 |goto 26.87,58.94
|only if readyq(12624) or completedq(12624)
step
talk Debaar##28032
turnin Wipe That Grin Off His Face##12525 |goto 27.24,59.89
step
talk Drostan##28328
accept Kick, What Kick?##12589 |goto 27.08,59.90
step
use the RJR Rifle##38573
|tip Use it on Lucky Wilhelm nearby to the south.
|tip He looks like a gnome with an apple on his head.
|tip Use th RJR Rifle repeatedly until you hit the apple.
Shoot the Apple on Lucky Wilhelm's Head |q 12589/1 |goto 27.08,59.90
step
talk Drostan##28328
turnin Kick, What Kick?##12589 |goto 27.08,59.90
accept The Great Hunter's Challenge##12592 |goto 27.08,59.90
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12592
step
talk Buck Cantwell##28031
accept Dreadsaber Mastery: Becoming a Predator##12549 |goto 26.67,59.03
step
talk Hemet Nesingwary##27986
accept Rhino Mastery: The Test##12520 |goto 27.09,58.65
stickystart "Collect_Golden_Engagement_Ring"
stickystart "Kill_Game_Animals"
stickystart "Kill_Shardhorn_Rhinos"
step
kill 15 Dreadsaber##28001 |q 12549/1 |goto 25.38,51.33
|tip They look like yellow leopards.
You can find more around: |notinsticky
[30.28,40.80]
[23.23,66.55]
[27.94,70.14]
step
label "Kill_Shardhorn_Rhinos"
kill 15 Shardhorn Rhino##28009 |q 12520/1 |goto 27.47,55.20
|tip They look like large grey hairy rhinos.
You can find more around: |notinsticky
[29.98,43.53]
[39.85,47.85]
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Test##12520 |goto 27.09,58.64
accept Rhino Mastery: The Chase##12526 |goto 27.09,58.64
stickystop "Collect_Golden_Engagement_Ring"
stickystop "Kill_Game_Animals"
step
talk Chad##28497
turnin It Could Be Anywhere!##12624 |goto 26.87,58.94
|only if readyq(12624) or completedq(12624)
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Becoming a Predator##12549 |goto 26.67,59.03
accept Dreadsaber Mastery: Stalking the Prey##12550 |goto 26.67,59.03
step
talk Korg the Cleaver##28046
accept A Steak Fit for a Hunter##12804 |goto 26.70,59.56
step
talk Grimbooze Thunderbrew##29157
accept Some Make Lemonade, Some Make Liquor##12634 |goto 26.78,60.07
step
talk Debaar##28032
accept Crocolisk Mastery: The Trial##12551 |goto 27.24,59.89
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12551
step
talk Oracle Soo-rahm##28191
turnin Rhino Mastery: The Chase##12526 |goto 25.59,66.54
accept An Offering for Soo-rahm##12543 |goto 25.59,66.54
stickystart "Collect_Golden_Engagement_Ring"
stickystart "Kill_Game_Animals"
step
kill Longneck Grazer##28129+
collect 5 Longneck Grazer Steak##40394 |q 12804/1 |goto 22.59,66.38
You can find more around [29.63,67.97]
stickystart "Collect_Intact_Cobra_Fangs"
stickystart "Kill_Mangal_Crocolisks"
step
click Sturdy Vine##190622+
|tip They look like brown vines that hang from trees around this area.
|tip Either an Orange, Banana, or Papaya will fall to the ground.
click Various Fruits
talk Adventurous Dwarf##28604+
|tip There is a rare chance that a Dwarf will fall after you pull the vines.
|tip You can ask them for any kind of fruit you still need.
collect Orange##38656 |q 12634/1 |goto 37.80,58.63
collect 2 Banana Bunch##38653 |q 12634/2 |goto 37.80,58.63
collect Papaya##38655 |q 12634/3 |goto 37.80,58.63
|tip They look like crocodiles.
You can find more around: |notinsticky
[43.85,70.09]
[44.48,56.54]
step
label "Collect_Intact_Cobra_Fangs"
kill Emperor Cobra##28011+
|tip They look like snakes standing upright.
collect 5 Intact Cobra Fang##38505 |q 12543/1 |goto 43.38,55.50
You can find more around [42.49,68.14]
step
label "Kill_Mangal_Crocolisks"
kill 15 Mangal Crocolisk##28002 |q 12551/1 |goto 37.80,58.63
|tip They look like crocodiles.
You can find more around: |notinsticky
[43.85,70.09]
[44.48,56.54]
step
label "Collect_Golden_Engagement_Ring"
Kill enemies around this area
|tip Any enemy in Scholazar Basin can drop the quest item.
collect Golden Engagement Ring##38642 |q 12624/1 |goto 37.80,58.63
You can find more around: |notinsticky
[43.85,70.09]
[44.48,56.54]
step
label "Kill_Game_Animals"
Kill enemies around this area
|tip Any beast enemy in Scholazar Basin will count for the quest goal.
Kill #60# Game Animals |q 12592/1 |goto 37.80,58.63
You can find more around: |notinsticky
[43.85,70.09]
[44.48,56.54]
step
click Dreadsaber Track##190701+
|tip They look like brown mud cat paw prints on the ground around this area.
Identify #3# Shango Tracks |q 12550/1 |goto 39.93,44.47
You can find more around: |notinsticky
[36.44,42.34]
[32.31,39.71]
step
talk Chad##28497
turnin It Could Be Anywhere!##12624 |goto 26.87,58.94
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Stalking the Prey##12550 |goto 26.67,59.03
accept Dreadsaber Mastery: Ready to Pounce##12558 |goto 26.67,59.03
step
talk Korg the Cleaver##28046
turnin A Steak Fit for a Hunter##12804 |goto 26.70,59.56
step
talk Grimbooze Thunderbrew##29157
turnin Some Make Lemonade, Some Make Liquor##12634 |goto 26.78,60.07
accept Still At It##12644 |goto 26.78,60.07
step
talk "Tipsy" McManus##28566
Tell him _"I'm ready to start the distillation, uh, Tipsy."_
Click Here After Starting the Distillation |confirm |goto 26.67,59.99 |q 12644
step
Perform the Distillation
|tip Stand here, so you can reach all of the objects you need to click during the Distillation.
|tip "Tipsy" McManus will yell random directions at you in your chat.
|tip Click the items on the ground, or on the machine, that he tells you to during the process.
click Thunderbrew's Jungle Punch##190643
|tip It looks like a wooden barrel that appears on the ground nearby after you complete the distillation.
collect Thunderbrew's Jungle Punch##38688 |q 12644/1 |goto 26.71,59.83
step
talk Grimbooze Thunderbrew##29157
turnin Still At It##12644 |goto 26.78,60.07
accept The Taste Test##12645 |goto 26.78,60.07
step
talk Drostan##28328
turnin The Great Hunter's Challenge##12592 |goto 27.08,59.90
step
talk Debaar##28032
turnin Crocolisk Mastery: The Trial##12551 |goto 27.24,59.89
accept Crocolisk Mastery: The Plan##12560 |goto 27.24,59.89
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12560
step
use the Jungle Punch Sample##38697
|tip Use it on Hadrius Harlowe.
Watch the dialogue
Complete Hadrius' Taste Test |q 12645/2 |goto 27.36,59.40
step
use the Jungle Punch Sample##38697
|tip Use it on Hemet Nesingwary.
Watch the dialogue
Complete Hemet's Taste Test |q 12645/1 |goto 27.10,58.64
step
talk Oracle Soo-rahm##28191
turnin An Offering for Soo-rahm##12543 |goto 25.59,66.51
accept The Bones of Nozronn##12544 |goto 25.59,66.51
step
use Soo-rahm's Incense##38519
|tip After using the incense, skip to the next step.
|tip A long dialogue happens, but you don't need to wait for it to finish.
|tip The quest goal will complete as you travel.
Click Here After Using Soo-rahm's Incense |confirm |goto 26.10,71.56 |q 12544
step
Reveal the Location of Farunn |q 12544/1 |goto 27.10,58.65
|tip You may have to wait a few seconds for the quest goal to complete.
|tip You are waiting for the dialogue to finish that you started in the previous guide step.
|tip When it completes, you will already be next to the NPC to turn in the quest.
step
talk Hemet Nesingwary##27986
turnin The Bones of Nozronn##12544 |goto 27.10,58.65
accept Rhino Mastery: The Kill##12556 |goto 27.10,58.65
step
click Sandfern##190533+
|tip They look like leafy green plants on the ground around this area.
collect 5 Sandfern##38553 |q 12560/1 |goto 47.29,61.15
You can find more around: |notinsticky
[46.60,64.84]
[48.82,69.13]
[47.74,73.26]
step
talk Pilot Vic##28746
turnin Aerial Surveillance##12696 |goto 49.95,61.53
accept An Embarassing Incident##12699 |goto 49.95,61.53
accept Force of Nature##12803 |goto 49.95,61.53
|tip You need to have Cold Weather Flying trained for this quest to appear.
step
talk Marvin Wobblesprocket##28574
fpath River's Heart |goto 50.13,61.36
step
use the Jungle Punch Sample##38697
|tip Use it on Tamara Wobblesprocket.
Watch the dialogue
Complete Tamara's Taste Test |q 12645/3 |goto 50.48,62.13
step
talk Tamara Wobblesprocket##28568
accept The Part-time Hunter##12654 |goto 50.48,62.13
step
use Vic's Emergency Air Tank##40390
Gain Water Breathing |havebuff spell:44235 |q 12699
step
click Raised Mud##190779+
|tip They look like piles of brown dirt underwater around this area in the lake.
|tip An enemy has a chance to spawn after clicking them.
|tip You may have to click many of them until you find the quest item.
collect Vic's Keys##39264 |q 12699/1 |goto 48.31,63.37
step
talk Pilot Vic##28746
turnin An Embarassing Incident##12699 |goto 49.95,61.53
accept Reconnaissance Flight##12671 |goto 49.95,61.53
step
Begin Flying the Flying Machine |invehicle |goto 49.95,61.53 |q 12671
step
Watch the dialogue
|tip Use the "Air-to-Air Rockets" ability on your action bar to kill the bats that attack.
|tip You don't need to target the bats.
Scout the Scourge |goto 70.56,37.09 < 30 |c |q 12671 |notravel
step
Watch the dialogue
|tip Use the "Land Flying Machine" ability on your action bar at this location.
|tip Get close to the ground inside the ring of blue crystals.
Complete the Reconnaissance Flight |q 12671/1 |goto 50.05,61.36 |notravel
step
talk Pilot Vic##28746
turnin Reconnaissance Flight##12671 |goto 49.95,61.52
step
talk Grimbooze Thunderbrew##29157
turnin The Taste Test##12645 |goto 26.78,60.07
step
talk Debaar##28032
turnin Crocolisk Mastery: The Plan##12560 |goto 27.25,59.89
accept Crocolisk Mastery: The Ambush##12569 |goto 27.25,59.89
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12569
step
kill Shango##28297
|tip He looks like a yellow leopard that walks around this area.
collect Shango's Pelt##38523 |q 12558/1 |goto 34.13,32.92
step
kill Farunn##28288
|tip He looks like a large grey rhino that walks around this area.
collect Farunn's Horn##38522 |q 12556/1 |goto 46.08,42.14
step
use the Sandfern Disguise##38564
|tip Bushwhacker will walk up to you.
|tip He looks like a white crocodile.
kill Bushwhacker##28317
collect Bushwhacker's Jaw##38559 |q 12569/1 |goto 46.53,63.45
step
kill Pitch##28097
collect Pitch's Remains##38703 |q 12654/1 |goto 50.52,77.22
step
talk Tracker Gekgek##28095
accept Playing Along##12528 |goto 50.53,76.59
step
talk Tamara Wobblesprocket##28568
turnin The Part-time Hunter##12654 |goto 50.48,62.12
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Kill##12556 |goto 27.09,58.64
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Ready to Pounce##12558 |goto 26.67,59.03
step
talk Debaar##28032
turnin Crocolisk Mastery: The Ambush##12569 |goto 27.25,59.89
step
talk Mardan Thunderhoof##28040
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Mardan Thunderhoof##28040 |goto 27.32,59.75 |q 12595 |future
step
talk Hemet Nesingwary##27986
accept In Search of Bigger Game##12595 |goto 27.10,58.65
step
talk Dorian Drakestalker##28376
turnin In Search of Bigger Game##12595 |goto 42.34,28.70
accept Sharpening Your Talons##12603 |goto 42.34,28.70
accept Securing the Bait##12605 |goto 42.34,28.70
step
talk Colvin Norrington##28771
accept Burning to Help##12683 |goto 42.07,28.66
stickystart "Kill_Bittertide_Hydras"
step
kill Bittertide Hydra##28003+
|tip Underwater around this area.
|tip Don't kill them quickly, fight them until they spit Hydra Sputum on you.
|tip If you have a pet, you may want to dismiss them, or put them on passive.
|tip Otherwise, the hydras might spit on your pet, and you won't be able to collect the spit.
use the Sample Container##39164
|tip Use it when you have the Hydra Sputum debuff.
Collect #5# Sputum Samples |q 12683/1 |goto 42.17,42.05
step
label "Kill_Bittertide_Hydras"
kill 5 Bittertide Hydra##28003 |q 12683/2 |goto 40.95,40.76
|tip Underwater around this area. |notinsticky
stickystart "Kill_Primordial_Drakes"
step
kill Primordial Drake Egg##28408+
|tip They look like white eggs on the ground next to trees around this area.
clicknpc Primordial Hatchling##28389+
|tip They appear after you destroy the eggs.
collect 6 Primordial Hatchling##38600 |q 12605/1 |goto 46.62,26.61
step
label "Kill_Primordial_Drakes"
kill 6 Primordial Drake##28378 |q 12603/1 |goto 46.62,26.61
|tip They look like larger dragons that walk on the ground and fly in the air around this area.
step
talk Dorian Drakestalker##28376
turnin Sharpening Your Talons##12603 |goto 42.34,28.70
turnin Securing the Bait##12605 |goto 42.34,28.70
step
talk Colvin Norrington##28771
turnin Burning to Help##12683 |goto 42.07,28.66
accept Reagent Agent##12681 |goto 42.07,28.66
step
talk Zootfizzle##28374
accept A Mammoth Undertaking##12607 |goto 42.11,28.89
accept My Pet Roc##12658 |goto 42.11,28.89
step
use the Mammoth Harness##38627
|tip Use it on a Shattertusk Mammoth.
|tip They look like brown hairy elephants around this area.
|tip It won't work on Shattertusk Bulls.
Ride a Shattertusk Mammoth |invehicle |goto 37.70,28.51 |q 12607
step
Deliver the Shattertusk Mammoth |q 12607/1 |goto 42.17,29.07
|tip Use the "Hand Over Mammoth" ability on your action bar.
|tip You can use the ability immediately when you see your minimap zone change to say "Dorian's Outpost".
step
talk Zootfizzle##28374
turnin A Mammoth Undertaking##12607 |goto 42.11,28.90
step
talk Dorian Drakestalker##28376
accept Post-partum Aggression##12614 |goto 42.34,28.70
step
Follow the path up |goto 48.34,21.74 < 30 |walk
kill Broodmother Slivina##28467 |q 12614/1 |goto 47.38,21.14
|tip She looks like a brown dragon that walks around this area.
|tip Use the abilities on your action bar.
|tip Hemet Nesingway rides with you and places traps on the ground.
|tip Make Broodmother Slivina run over the traps to cause extra damage.
step
Stop Riding the Mammoth |outvehicle |q 12614
|tip Click the red arrow on your action bar.
stickystart "Collect_Twisted_Roc_Talons"
step
click Roc Egg##190660+
|tip They look like white eggs in nests on the ground.
|tip You can find them all around the Bonefields area.
collect 7 Roc Egg##38705 |q 12658/1 |goto 57.22,27.45
step
label "Collect_Twisted_Roc_Talons"
kill Goretalon Rocs##28004+
|tip They look like brown birds that perch on bones and fly in the air.
|tip You can find them all around the Bonefields area. |notinsticky
collect 5 Twisted Roc Talon##39161 |q 12681/1 |goto 57.22,27.45
step
talk Dorian Drakestalker##28376
turnin Post-partum Aggression##12614 |goto 42.34,28.70
step
talk Colvin Norrington##28771
turnin Reagent Agent##12681 |goto 42.07,28.67
step
talk Zootfizzle##28374
turnin My Pet Roc##12658 |goto 42.11,28.90
step
talk Avatar of Freya##27801
turnin Force of Nature##12803 |goto 64.55,48.61
accept An Issue of Trust##12561 |goto 64.55,48.61
stickystart "Kill_Bonescyth_Ravagers"
step
kill 6 Blighted Corpse##28101 |q 12561/1 |goto 64.69,42.19
|tip They look like muscular zombies.
|tip You can find them all around the Lost Lands area.
You can find more around [71.41,50.39]
step
label "Kill_Bonescyth_Ravagers"
kill 10 Bonescythe Ravager##28108 |q 12561/2 |goto 69.44,47.95
|tip They look like crouching skeletons.
|tip You can find them all around the Lost Lands area.
You can find more around [71.41,50.39]
step
talk Avatar of Freya##27801
turnin An Issue of Trust##12561 |goto 64.55,48.61
accept Returned Sevenfold##12611 |goto 64.55,48.61
step
use Freya's Ward##38657
|tip Use it on Thalgran Blightbringer when he begins casting Deathbolts to reflect them back at him.
|tip Deathbolts look like a purple shadow spell when he's casting it.
kill Thalgran Blightbringer##28443 |q 12611/1 |goto 66.70,44.12
step
talk Avatar of Freya##27801
turnin Returned Sevenfold##12611 |goto 64.55,48.61
accept The Fallen Pillar##12612 |goto 64.55,48.61
accept Salvaging Life's Strength##12805 |goto 64.55,48.61
step
clicknpc Cultist Corpse##28464
|tip On top of the mountain, next to huge red crystals.
turnin The Fallen Pillar##12612 |goto 65.08,60.31
accept Cultist Incursion##12608 |goto 65.08,60.31
step
kill Lifeblood Elemental##29124+
use the Lifeblood Gem##40397
|tip Use it on their corpses.
Recover #8# Lifeblood Energy |q 12805/1 |goto 69.67,59.39
You can find more around [73.00,57.77]
step
talk Avatar of Freya##27801
turnin Salvaging Life's Strength##12805 |goto 64.55,48.61
turnin Cultist Incursion##12608 |goto 64.55,48.61
accept Exterminate the Intruders##12617 |goto 64.55,48.61
accept Weapons of Destruction##12660 |goto 64.55,48.61
stickystart "Kill_Cultist_Infiltrators"
step
click Unstable Explosives##190641+
|tip They look like large metal spiked balls on the ground.
|tip You can find them all around the Death's Hand Encampment area.
Destroy #4# Unstable Explosives |q 12660/1 |goto 56.31,41.74
step
label "Kill_Cultist_Infiltrators"
kill 8 Cultist Infiltrator##28373 |q 12617/1 |goto 56.31,41.74
|tip You can find them all around the Death's Hand Encampment area. |notinsticky
step
talk Avatar of Freya##27801
turnin Exterminate the Intruders##12617 |goto 64.55,48.61
turnin Weapons of Destruction##12660 |goto 64.55,48.61
accept The Lifewarden's Wrath##12620 |goto 64.55,48.61
step
use Freya's Horn##38684
|tip At the top of the Glimmering Pillar.
Release The Lifewarden's Wrath |q 12620/1 |goto 49.80,37.01
step
talk Avatar of Freya##27801
turnin The Lifewarden's Wrath##12620 |goto 64.55,48.61
accept Freya's Pact##12621 |goto 64.55,48.61
step
talk Avatar of Freya##27801
Tell her _"I want to stop the Scourge as much as you do. How can I help?"_
Receive Freya's Pact |q 12621/1 |goto 64.55,48.61
step
talk Avatar of Freya##27801
turnin Freya's Pact##12621 |goto 64.55,48.61
accept Powering the Waygate - The Maker's Perch##12559 |goto 64.55,48.61
step
Enter the building |goto 28.45,39.18 < 20 |walk |only if not (subzone("The Makers' Perch") and _G.IsIndoors())
click Activation Switch Gamma##190508
|tip Inside the building.
Engage the Activation Switch Gamma |q 12559/1 |goto 26.2,35.5
step
Leave the building |goto 28.45,39.18 < 20 |walk |only if subzone("The Makers' Perch") and _G.IsIndoors()
talk Avatar of Freya##27801
turnin Powering the Waygate - The Maker's Perch##12559 |goto 64.55,48.61
accept Powering the Waygate - The Maker's Overlook##12613 |goto 64.55,48.61
stickystart "Collect_Huge_Stone_Key"
step
click Timeworn Coffer##190768
|tip On the balcony of the building high up on the side of the cliff.
accept A Timeworn Coffer##12691 |goto 80.38,55.82
step
Enter the building |goto 80.59,54.42 < 20 |walk
click Activation Switch Theta##190509
|tip Inside the building.
|tip Be careful to avoid the larger elite metal golem inside the building.
Engage the Activation Switch Theta |q 12613/1 |goto 89.07,52.90
step
label "Collect_Huge_Stone_Key"
kill Sholazar Guardian##28069+
|tip They look like metal golems.
|tip Inside and outside the building. |notinsticky
|tip Be careful to avoid the larger elite metal golem inside the building. |notinsticky
collect Huge Stone Key##39227 |q 12691/1 |goto 80.59,54.42
step
Leave the building |goto 80.59,54.42 < 20 |walk |only if subzone("Makers' Overlook") and _G.IsIndoors()
click Timeworn Coffer##190768
|tip Up on the balcony of the building.
turnin A Timeworn Coffer##12691 |goto 80.38,55.82
step
talk Avatar of Freya##27801
turnin Powering the Waygate - The Maker's Overlook##12613 |goto 64.55,48.61
accept The Etymidian##12548 |goto 64.55,48.61
step
Enter the Waygate to Teleport to Un'Goro Crater |complete zone("Un'Goro Crater") |goto 40.35,83.08 |q 12548
|tip It looks like a huge portal.
step
talk The Etymidian##28092
turnin The Etymidian##12548 |goto Un'Goro Crater 47.38,9.21
accept The Activation Rune##12547 |goto Un'Goro Crater 47.38,9.21
step
Enter the building |goto 48.20,5.47 < 15 |walk |only if not (subzone("The Shaper's Terrace") and _G.IsIndoors())
kill High Cultist Herenn##28601
|tip Inside the building.
collect Omega Rune##38708 |q 12547/1 |goto 48.17,2.50
step
Leave the building |goto 48.20,5.47 < 15 |walk |only if subzone("The Shaper's Terrace") and _G.IsIndoors()
talk The Etymidian##28092
turnin The Activation Rune##12547 |goto 47.38,9.21
accept Back Through the Waygate##12797 |goto 47.38,9.21
step
Enter the Waygate to Teleport to Sholazar Basin |complete zone("Sholazar Basin") |goto 50.48,7.80 |q 12797
|tip It looks like a huge portal.
step
talk High-Shaman Rakjak##28082
turnin Playing Along##12528 |goto Sholazar Basin 54.99,69.12
accept The Ape Hunter's Slave##12529 |goto Sholazar Basin 54.99,69.12
step
_Next to you:_
talk Goregek the Gorilla Hunter##28214
accept Tormenting the Softknuckles##12530
step
talk Grakjek##29014
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Grakjek##29014 |goto 55.92,70.34 |q 12530
stickystart "Kill_Hardknuckle_Chargers"
step
kill 8 Hardknuckle Forager##28098 |q 12529/1 |goto 57.06,74.55
|tip They look like white gorillas.
You can find more around: |notinsticky
[60.70,70.65]
[64.17,73.91]
[66.19,69.48]
[71.71,70.68]
step
use the Softknuckle Poker##38467
|tip Use it on Softknuckles.
|tip They look like small baby gorillas on the ground around this area.
|tip Eventually, the Hardknuckle Matriarch (brown gorilla) will spawn and run around this area after you poke enough Softknuckles.
|tip You will see a message in your chat when she spawns.
kill Hardknuckle Matriarch##28213 |q 12530/1 |goto 66.87,73.55
step
label "Kill_Hardknuckle_Chargers"
kill 6 Hardknuckle Charger##28096 |q 12529/2 |goto 66.87,73.55
|tip They look like black gorillas.
You can find more around: |notinsticky
[69.73,70.84]
[63.32,71.82]
[59.28,70.58]
[57.89,66.27]
step
talk High-Shaman Rakjak##28082
turnin The Ape Hunter's Slave##12529 |goto 55.00,69.12
turnin Tormenting the Softknuckles##12530 |goto 55.00,69.12
accept The Wasp Hunter's Apprentice##12533 |goto 55.00,69.12
step
talk Elder Harkek##28138
accept The Sapphire Queen##12534 |goto 55.49,69.68
step
talk Grakjek##29014
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Grakjek##29014 |goto 55.92,70.34 |q 12534
stickystart "Kill_Sapphire_Hive_Wasps"
stickystart "Kill_Sapphire_Hive_Drones"
step
Enter the cave |goto 59.43,79.11 < 15 |walk
kill Sapphire Hive Queen##28087
|tip Inside the cave.
collect Stinger of the Sapphire Queen##38477|q 12534/1 |goto 57.15,79.22
step
label "Kill_Sapphire_Hive_Wasps"
Follow the path up and leave the cave |goto 59.43,79.11 < 15 |walk |only if subzone("Sapphire Hive") and _G.IsIndoors()
kill 6 Sapphire Hive Wasp##28086 |q 12533/1 |goto 61.53,79.04
|tip They look like purple and black flying insects.
|tip You can find them all around the Sapphire Hive area. |notinsticky
You can find more around: |notinsticky
[58.80,85.45]
[53.41,85.93]
[47.51,81.91]
step
label "Kill_Sapphire_Hive_Drones"
kill 9 Sapphire Hive Drone##28085 |q 12533/2 |goto 61.53,79.04
|tip They look like blue and red flying insects.
|tip You can find them all around the Sapphire Hive area. |notinsticky
You can find more around: |notinsticky
[58.80,85.45]
[53.41,85.93]
[47.51,81.91]
step
talk High-Shaman Rakjak##28082
turnin The Wasp Hunter's Apprentice##12533 |goto 54.99,69.11
turnin The Sapphire Queen##12534 |goto 54.99,69.11
step
talk Elder Harkek##28138
accept Flown the Coop!##12532 |goto 55.50,69.68
step
use the Chicken Net##38689
|tip Use it on Chicken Escapees.
|tip They look like tiny chickens running on the ground.
|tip You can find them all around the Frenzyheart Hill area.
|tip To see the chickens easier, enable the "Critters and Companions" option in the "Names" section of your Interface settings.
clicknpc Chicken Escapee##28161+
|tip They will stop running after you use the Chicken Net on them.
|tip If you're quick, you can also just click them to pick them up without using the net on them first.
collect 12 Captured Chicken##38483 |q 12532/1 |goto 55.50,69.68
step
talk Elder Harkek##28138
turnin Flown the Coop!##12532 |goto 55.50,69.69
accept The Underground Menace##12531 |goto 55.50,69.69
step
talk High-Shaman Rakjak##28082
accept Mischief in the Making##12535 |goto 54.99,69.11
step
talk Grakjek##29014
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Grakjek##29014 |goto 55.92,70.34 |q 12535
stickystart "Collect_Skyreach_Crystal_Clusters"
step
kill Serfex the Reaver##28083
|tip He looks like a pile of jumping rocks moving on the ground along the river bank around this area.
|tip He will pop out of the ground when you get close to him.
collect Claw of Serfex##38473 |q 12531/1 |goto 49.86,84.82
Also check around: |notinsticky
[51.66,86.41]
[59.01,85.60]
[58.20,83.83]
step
label "Collect_Skyreach_Crystal_Clusters"
click Skyreach Crystal Formation##190500+
|tip They look like smaller clusters of white crystals on the ground along the river bank.
|tip You can find them all around the Wintergrasp River area. |notinsticky
collect 8 Skyreach Crystal Cluster##38504 |q 12535/1 |goto 48.15,82.29
You can find more around: |notinsticky
[52.71,84.95]
[59.44,85.68]
step
talk High-Shaman Rakjak##28082
turnin The Underground Menace##12531 |goto 54.99,69.11
turnin Mischief in the Making##12535 |goto 54.99,69.11
accept A Rough Ride##12536 |goto 54.99,69.11
step
talk Tanak##31911
|tip Sell any items you don't need, to clear some bag space.
buy Nepeta Leaf##44064 |goto 55.14,69.02 |q 12536
step
talk Captive Crocolisk##28298
Tell him _"You look safe enough... let's do this."_
Begin Riding the Captive Crocolisk |invehicle |goto 57.28,68.38 |q 12536
step
Watch the dialoague
|tip You will eventually ride to this location.
Travel to Mistwhisper Refuge |q 12536/1 |goto 46.25,39.47 |notravel
step
use the Nepeta Leaf##44064
|tip This will give you a 5% increase in damage and movement speed for 30 minutes.
Gain the Frenzyheart Fury Buff |havebuff spell:59755 |q 12536
|only if itemcount(44064) > 0
step
use Zepik's Hunting Horn##38512
Summon Zepik the Gorloc Hunter |havebuff spell:54176 |q 12536
step
_Next to you:_
talk Zepik the Gorloc Hunter##28668
turnin A Rough Ride##12536
accept Lightning Definitely Strikes Twice##12537
accept The Mist Isn't Listening##12538
stickystart "Slay_Mistwhisper_Gorlocs"
step
use the Skyreach Crystal Clusters##38510
|tip Next to the stone shrine.
click Arranged Crystal Formation##190502
|tip It looks like a cluster of white crystals that appears on the ground.
Watch the dialogue
Sabotage the Mistwhisper Weather Shrine |q 12537/1 |goto 45.38,37.19
step
label "Slay_Mistwhisper_Gorlocs"
Kill Mistwhisper enemies around this area
|tip They look like blue gremlins.
|tip You can find them all around the Mistwhisper Refuge area.
Slay #12# Mistwhisper Gorlocs |q 12538/1 |goto 44.21,36.47
step
talk Elder Harkek##28138
Tell him _"I need to find Zepik, do you have his hunting horn?"_
collect Zepik's Hunting Horn##38512 |goto 55.50,69.68 |q 12538
|only if itemcount(38512) == 0
step
use Zepik's Hunting Horn##38512
Summon Zepik the Gorloc Hunter |havebuff spell:54176 |q 12538
step
_Next to you:_
talk Zepik the Gorloc Hunter##28216
turnin Lightning Definitely Strikes Twice##12537
turnin The Mist Isn't Listening##12538
accept Hoofing It##12539
step
talk High-Shaman Rakjak##28082
turnin Hoofing It##12539 |goto 55.00,69.12
accept Just Following Orders##12540 |goto 55.00,69.12
step
talk Grakjek##29014
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Grakjek##29014 |goto 55.92,70.34 |q 12540
step
talk Injured Rainspeaker Oracle##28217
Choose _<Reach down and pull the Injured Rainspeaker Oracle to its feet.>_
|tip You will be attacked.
kill Ravenous Mangal Crocolisk##28325
Locate the Injured Rainspeaker Oracle |q 12540/1 |goto 55.70,64.98
step
talk Injured Rainspeaker Oracle##28217
turnin Just Following Orders##12540 |goto 55.70,64.98
accept Fortunate Misunderstandings##12570 |goto 55.70,64.98
step
talk Injured Rainspeaker Oracle##28217
Tell him _"I am ready to travel to your village now."_
Begin Following the Injured Rainspeaker Oracle |goto 55.7,64.9 > 20 |c |q 12570
step
Watch the dialogue
|tip Follow the Injured Rainspeaker Oracle and protect him as he walks.
|tip He eventually walks to this location.
Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1 |goto 53.52,56.81
step
talk High-Oracle Soo-say##28027
turnin Fortunate Misunderstandings##12570 |goto 54.59,56.36
accept Make the Bad Snake Go Away##12571 |goto 54.59,56.36
step
_Next to you:_
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not next to you.
talk Lafoo##28120
accept Gods like Shiny Things##12572
step
talk Geen##31910
|tip Sell any items you don't need, to clear some bag space.
buy Oracle Secret Solution##44065 |goto 54.58,56.12 |q 12572
step
use the Oracle Secret Solution##44065
|tip This will give you a 5% increase in movement speed and a chance to deal poison damage for 30 minutes.
Gain the Oracle Ownage Buff |havebuff spell:59776 |q 12572
|only if itemcount(44065) > 0
stickystart "Collect_Shiny_Treasures"
stickystart "Kill_Emperor_Cobras"
step
kill Venomtip##28358 |q 12571/2 |goto 57.61,52.60
|tip He looks like a purple and pink snake that moves around this area.
Also check around [58.81,54.66]
step
label "Collect_Shiny_Treasures"
use Lafoo's Bug Bag##38622
|tip Use this if Lafoo is not next to you.
|tip If you lose Lafoo's Bug Bag, speak to High-Oracle Soo-say at this location. |only if itemcount(38622) == 0
click Sparkling Treasure##190563+
|tip Look for twinkles of white light on the ground.
|tip You can find them all around the Wildgrowth Mangal area that surrounds Rainspeaker Canopy.
|tip Walk next to the twinkles of light and Lafoo will dig something out of the ground.
|tip Lafoo may not always find a Sparkling Treasure.
|tip The Sparkling Treasures look like shiny objects with various names.
collect 6 Shiny Treasures##38575 |q 12572/1 |goto 54.59,56.36
step
label "Kill_Emperor_Cobras"
kill 10 Emperor Cobra##28011 |q 12571/1 |goto 53.17,51.69
You can find more around: |notinsticky
[42.97,56.15]
[43.42,68.76]
[50.78,70.64]
[58.31,59.59]
step
talk High-Oracle Soo-say##28027
turnin Make the Bad Snake Go Away##12571 |goto 54.59,56.35
turnin Gods like Shiny Things##12572 |goto 54.59,56.35
accept Making Peace##12573 |goto 54.59,56.35
step
talk Shaman Vekjik##28315
|tip On top of the cliff, overlooking the lake.
Tell him _"Shaman Vekjik, I have spoken with the big-tongues and they desire peace. I have brought this offering on their behalf."_
Extend the Peace Offering to Shaman Vekjik |q 12573/1 |goto 51.30,64.63
step
talk High-Oracle Soo-say##28027
turnin Making Peace##12573 |goto 54.59,56.35
accept Back So Soon?##12574 |goto 54.59,56.35
step
talk Mistcaller Soo-gan##28114
turnin Back So Soon?##12574 |goto 42.15,38.65
accept The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
accept Forced Hand##12576 |goto 42.15,38.65
stickystart "Kill_Frenzyheart_Spearbearers"
stickystart "Kill_Frenzyheart_Scavengers"
step
use Jaloot's Favorite Crystal##38623
Summon Jaloot |havebuff spell:52119 |goto 41.65,19.53 |q 12576
If you lost Jaloot's Favorite Crystal, talk to High-Oracle Soo-say to get another one at [54.59,56.35] |only if itemcount(38623) == 0
step
click Mistwhisper Treasure##190578
|tip You will be attacked.
collect Mistwhisper Treasure##38601 |q 12575/2 |goto 41.65,19.53
step
Watch the dialogue
|tip He rides to you on a dragon.
kill Warlord Tartek##28105 |q 12575/1 |goto 41.28,19.96
step
label "Kill_Frenzyheart_Spearbearers"
kill 8 Frenzyheart Spearbearer##28080 |q 12576/1 |goto 40.83,22.93
|tip You can find them all around the Spearborn Encampment. |notinsticky
step
label "Kill_Frenzyheart_Scavengers"
kill 6 Frenzyheart Scavenger##28081 |q 12576/2 |goto 40.83,22.93
|tip You can find them all around the Spearborn Encampment. |notinsticky
step
talk Mistcaller Soo-gan##28114
turnin The Lost Mistwhisper Treasure##12575 |goto 42.15,38.65
turnin Forced Hand##12576 |goto 42.15,38.65
accept Home Time!##12577 |goto 42.15,38.65
step
talk High-Oracle Soo-say##28027
turnin Home Time!##12577 |goto 54.59,56.35
accept The Angry Gorloc##12578 |goto 54.59,56.35
step
talk High-Oracle Soo-say##28027
Ask him _"I need to find Moodle, do you have his stress ball?"_
collect Moodle's Stress Ball##38624 |goto 54.59,56.35 |q 12578
step
talk Geen##31910
|tip Sell any items you don't need, to clear some bag space.
buy Oracle Secret Solution##44065 |goto 54.58,56.12 |q 12578
step
talk Loomee##29035
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Loomee##29035 |goto 53.52,55.89 |q 12578
step
talk Avatar of Freya##27801
turnin Back Through the Waygate##12797 |goto 64.55,48.61
accept Reclamation##12546 |goto 64.55,48.61
step
use the Omega Rune##38709
|tip Land in a safe area to use the item.
Call Forth the Etymidian |invehicle |goto 72.56,42.93 |q 12546
stickystart "Destroy_Scourge_Minions"
step
kill Bythius the Flesh-Shaper##28212 |q 12546/2 |goto 69.92,38.52
|tip He walks around this area.
|tip Use the abilities on your action bar.
step
kill Urgreth of the Thousand Tombs##28103 |q 12546/3 |goto 70.06,37.23
|tip Use the abilities on your action bar.
step
kill Hailscorn##28208 |q 12546/4 |goto 69.98,34.03
|tip Use the abilities on your action bar.
step
label "Destroy_Scourge_Minions"
Kill enemies around this area
|tip Use the abilities on your action bar. |notinsticky
|tip You can find them all around the Avalanche area.
Destroy #200# Scourge Minions |q 12546/1 |goto 71.37,37.21
step
Release the Etymidian |outvehicle |q 12546
|tip Get to a safe area.
|tip Click the red arrow on your action bar.
step
talk Avatar of Freya##27801
turnin Reclamation##12546 |goto 64.55,48.61
step
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not next to you.
Travel to Mosswalker Village |q 12578/1 |goto 75.68,51.18
step
_Next to you:_
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not next to you.
talk Moodle##28122
turnin The Angry Gorloc##12578
accept The Mosswalker Savior##12580
accept Lifeblood of the Mosswalker Shrine##12579
step
use the Oracle Secret Solution##44065
|tip This will give you a 5% increase in movement speed and a chance to deal poison damage for 30 minutes.
Gain the Oracle Ownage Buff |havebuff spell:59776 |q 12580
|only if itemcount(44065) > 0
step
talk Mosswalker Victim##28113+
|tip They look like dead green gremlins on the ground.
|tip You can find them all around the Mosswalker Village area.
Choose _<Check for a pulse...>_
|tip They won't all live to be rescued.
Rescue #6# Mosswalker Victims |q 12580/1 |goto 75.68,51.18
step
_Next to you:_
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not next to you.
talk Moodle##28122
turnin The Mosswalker Savior##12580
step
click Lifeblood Shard##190702+
|tip They look like small red crystals on the ground.
|tip You can find them all around this area.
|tip They are usually somewhat near the clusters of large red crystals.
collect 10 Lifeblood Shard##39063 |q 12579/1 |goto 70.01,58.12
step
_Next to you:_
talk Moodle##28122
use Moodle's Stress Ball##38624
|tip Use this if Moodle is not next to you.
turnin Lifeblood of the Mosswalker Shrine##12579
accept A Hero's Burden##12581
step
_NOTE:_
Do You Want to Complete a Group Quest?
|tip The next quest is a group quest (suggested 3 players) and can be difficult.
|tip Completing the quest will unlock the ability to complete daily quests for either the Frenzyheart Tribe or the Oracles.
|tip It is an important quest to complete, but you can do it later, if you prefer.
|tip If you want to get it done now, try to find at least 1 person to help you, unless you want to try to solo it.
You Will Choose Who to Ally With
|tip You will have to kill Artruis the Heartless inside a cave.
|tip During the fight, you will be forced to choose to kill one of your friends, Jaloot or Zepik the Gorlock Hunter.
|tip Kill Jaloot if you want to be friendly with the Frenzyheart Tribe.
|tip Kill Zepik the Gorloc Hunter if you want to be friendly with the Oracles.
Not a Permanent Decision
|tip Whichever side you choose to ally with, it's not a permanent decision.
|tip You can complete the quest everyday, if you want, to change who you ally with and complete daily quests for.
Yes, I Have a Group (Do It)		|confirm	|q 12581	|next "Complete_A_Heros_Burden"
No, I Don't Have a Group (Skip It)	|confirm	|q 12581	|next "Leveling Guides\\Northrend (69-80)\\The Storm Peaks (78-79)"
step
label "Complete_A_Heros_Burden"
Enter the cave |goto 70.93,58.70 < 15 |walk
kill Artruis the Heartless##28659 |q 12581/1 |goto 72.12,57.61
|tip Upstairs inside the cave.
|tip Follow the path around and up inside the cave to get to him.
|tip During the fight, you will be forced to choose to kill one of your friends, Jaloot or Zepik the Gorlock Hunter.
|tip Kill Jaloot if you want to be friendly with the Frenzyheart Tribe.
|tip Kill Zepik the Gorloc Hunter if you want to be friendly with the Oracles.
step
click Artruis' Phylactery##190777
|tip Inside the cave.
|tip It appears on the ground after you kill Artruis the Heartless.
turnin A Hero's Burden##12581 |goto 72.12,57.61
step
talk Jaloot##28667
|tip Nearby inside the cave.
|tip Talk to Jaloot if you chose to kill Zepik the Gorloc Hunter.
accept Hand of the Oracles##12689 |goto 72.18,57.31 |or 2
accept Return of the Friendly Dryskin##12695 |goto 72.18,57.31 |or 2
|tip
_Or_
|tip
talk Zepik the Gorloc Hunter##28668
|tip Nearby inside the cave.
|tip Talk to Zepik the Gorloc Hunter if you chose to kill Jaloot.
accept Frenzyheart Champion##12582 |goto 72.18,57.31 |or 2
accept Return of the Lich Hunter##12692 |goto 72.18,57.31 |or 2
step
Leave the cave |goto 70.93,58.70 < 15 |walk |only if subzone("The Sundered Shard") and _G.IsIndoors()
talk High-Oracle Soo-say##28027
turnin Return of the Friendly Dryskin##12695 |goto 54.59,56.36
|only if haveq(12695) or completedq(12695)
step
Leave the cave |goto 70.93,58.70 < 15 |walk |only if subzone("The Sundered Shard") and _G.IsIndoors()
talk Elder Harkek##28138
turnin Return of the Lich Hunter##12692 |goto 55.50,69.69
|only if haveq(12692) or completedq(12692)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\The Storm Peaks (78-79)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."StormPeaks",
next="Leveling Guides\\Northrend (69-80)\\Icecrown (79-80)",
condition_suggested=function() return level >= 78 and level <= 79 and not completedq(13007) end,
},[[
step
talk Jeer Sparksocket##29431
accept Clean Up##12818 |goto The Storm Peaks 41.02,86.44
step
talk Xark Bolthammer##29907
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Xark Bolthammer##29907 |goto 40.96,86.48 |q 12818
step
Enter the building |goto 41.01,85.95 < 7 |walk
talk Gretchen Fizzlespark##29473
|tip Inside the building.
accept They Took Our Men!##12843 |goto 41.15,86.15
accept Equipment Recovery##12844 |goto 41.15,86.15
step
talk Ricket##29428
accept Reclaimed Rations##12827 |goto 40.93,85.31
accept Expression of Gratitude##12836 |goto 40.93,85.31
step
talk Skizzle Slickslide##29721
fpath K3 |goto 40.75,84.55
stickystart "Collect_Relics_Of_Ulduar"
step
click Charred Wreckage##191535+
|tip They look like various shaped metal parts on the ground around this area.
collect 10 Charred Wreckage##40603 |q 12818/1 |goto 39.39,86.36
step
talk Jeer Sparksocket##29431
turnin Clean Up##12818 |goto 41.02,86.44
accept Just Around the Corner##12819 |goto 41.02,86.44
step
click Sparksocket's Tools##191519
|tip In the middle of the mine field.
|tip You will be shot down if you try to fly, you must walk and try to avoid the mines.
|tip While walking, try to navigate carefully through the wider paths.
|tip If you position yourself carefully, you can also use the mines to knock yourself over other mines, closer to this location.
|tip You may get knocked around in order to get to this spot, but just keep trying.
collect Sparksocket's Tools##40642 |q 12819/1 |goto 35.10,87.78
stickystart "Collect_Dried_Gnoll_Rations"
step
kill Gnarlhide##30003 |q 12836/1 |goto 30.38,85.66
step
label "Collect_Dried_Gnoll_Rations"
Kill Savage Hill enemies around this area
|tip They look like gnolls.
click Dried Gnoll Rations##191843+
|tip They look like wooden boxes on the ground around this area.
|tip The ration boxes will give multiple quest items at once, so focus on those.
collect 16 Dried Gnoll Rations##40645 |q 12827/1 |goto 31.30,85.50
You can find more around [34.99,83.30]
step
talk Jeer Sparksocket##29431
turnin Just Around the Corner##12819 |goto 41.02,86.44
accept Slightly Unstable##12826 |goto 41.02,86.44
stickystop "Collect_Relics_Of_Ulduar"
step
talk Xark Bolthammer##29907
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Xark Bolthammer##29907 |goto 40.96,86.48 |q 12826
step
talk Ricket##29428
turnin Slightly Unstable##12826 |goto 40.93,85.31
accept A Delicate Touch##12820 |goto 40.93,85.31
turnin Reclaimed Rations##12827 |goto 40.93,85.31
turnin Expression of Gratitude##12836 |goto 40.93,85.31
accept Ample Inspiration##12828 |goto 40.93,85.31
step
_Destroy These Items:_
|tip They are no longer needed.
trash Dried Gnoll Rations##40645
step
use the Improved Land Mines##40676
|tip Use them to place mines on the ground around this area.
|tip Try to place them so that the Garm Invaders and Snowblind Followers will run over the mines and die.
|tip You don't need to try to avoid enemies, they won't attack you.
Slay #12# Garm Attackers |q 12820/1 |goto 44.31,81.82
step
talk Tore Rumblewrench##29430
accept Moving In##12829 |goto 41.67,80.01
accept Ore Repossession##12830 |goto 41.67,80.01
step
click U.D.E.D. Dispenser##191553
Choose _<Retrieve a bomb from the dispenser.>_
|tip Hurry to the mammoth location.
|tip You will need to use or destroy the bomb within ~45 seconds, or it will blow up in your bags and damage you.
collect U.D.E.D.##40686 |q 12828 |n
use the U.D.E.D.##40686
|tip Use it on an Ironwool Mammoth.
|tip They look like grey hairy elephants around this area.
click Mammoth Meat##191567+
|tip They look like pieces of meat and bone that appear on the ground after you blow up an Ironwool Mammoth.
collect 8 Hearty Mammoth Meat##40728 |q 12828/1 |goto 41.63,80.04
You can find the mammoths around [43.95,79.02]
stickystart "Collect_Relics_Of_Ulduar"
stickystart "Collect_Impure_Saronite_Ore"
stickystart "Slay_Crystalweb_Spiders"
step
Enter the cave |goto 40.42,78.23 < 30 |walk |only if not (subzone("Crystalweb Cavern") and _G.IsIndoors())
Follow the path inside the cave |goto 41.40,74.08 < 15 |walk
talk Injured Goblin Miner##29434
|tip Inside the cave.
|tip He offers an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Only Partly Forgotten##12831 |goto 41.51,74.89
step
Follow the path inside the cave |goto 44.80,73.75 < 20 |walk
Continue following the path inside the cave |goto 47.26,72.95 < 30 |walk
kill Icetip Crawler##29461+
|tip They look like purple spider around this area inside the cave.
collect Icetip Venom Sac##40944 |q 12831/1 |goto 47.13,70.95
step
talk Injured Goblin Miner##29434
|tip Inside the cave.
|tip He offers an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin Only Partly Forgotten##12831 |goto 43.48,75.24
accept Bitter Departure##12832 |goto 43.48,75.24
step
talk Injured Goblin Miner##29434
|tip Inside the cave.
|tip He offers an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
Tell them _"I'm ready - let's get you out of here."_
Begin Following the Injured Goblin Miner |goto 43.48,75.24 > 15 |c |q 12832
step
Watch the dialogue
|tip Follow the Injured Goblin Miner and protect them while walking.
|tip They eventually walks to this location outside the cave.
Escort the Injured Goblin Miner to K3 |q 12832/1 |goto 40.20,78.99
step
label "Collect_Impure_Saronite_Ore"
kill Snowblind Digger##29413+
|tip They look like kobolds.
|tip You can find them inside the westen part of the Crystalweb Cavern cave, between the dig site and the entrance of the cave. |notinsticky
collect 5 Impure Saronite Ore##40744 |q 12830/1 |goto 40.42,78.23
step
label "Slay_Crystalweb_Spiders"
Kill enemies around this area
|tip They look like spiders.
|tip You can find them all throughout the Crystalweb Cavern cave. |notinsticky
Slay #12# Crystalweb Spiders |q 12829/1 |goto 40.42,78.23
step
Leave the cave |goto 40.42,78.23 < 30 |walk |only if subzone("Crystalweb Cavern") and _G.IsIndoors()
talk Tore Rumblewrench##29430
turnin Moving In##12829 |goto 41.67,80.01
turnin Ore Repossession##12830 |goto 41.67,80.01
stickystop "Collect_Relics_Of_Ulduar"
step
talk Ricket##29428
turnin A Delicate Touch##12820 |goto 40.93,85.31
turnin Ample Inspiration##12828 |goto 40.93,85.31
turnin Bitter Departure##12832 |goto 40.93,85.31
accept Cell Block Tango##12821 |goto 40.93,85.31
step
click Transporter Power Cell##191576
|tip Next to a dead goblin.
collect Transporter Power Cell##40731 |q 12821/1 |goto 45.12,82.38
step
use the Transporter Power Cell##40731
|tip You will be teleported back to K3.
Activate the Garm Teleporter |q 12821/2 |goto 50.66,81.91
step
talk Ricket##29428
turnin Cell Block Tango##12821 |goto 40.93,85.31
accept Know No Fear##12822 |goto 40.93,85.31
step
talk Xark Bolthammer##29907
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Xark Bolthammer##29907 |goto 40.96,86.48 |q 12822
step
Teleport to Garm's Rise |complete subzone("Garm's Rise") |goto 40.99,85.31 |q 12823 |future
|tip Walk into the teleporter machine.
stickystart "Collect_Relics_Of_Ulduar"
step
talk Gino##29432
|tip He walks around this area.
accept A Flawless Plan##12823 |goto 50.01,81.76
stickystart "Kill_Garm_Watchers"
stickystart "Kill_Snowblind_Devotees"
step
Enter the cave |goto 48.22,81.08 < 30 |walk |only if not (subzone("Garm") and _G.IsIndoors())
Follow the spiral path up to the top floor inside the cave |goto 49.13,78.65 < 15 |walk
use the Hardpacked Explosive Bundle##41431
|tip Upstairs inside the cave, on the top floor.
|tip You will be attacked.
Place the Explosive Bundle |q 12823/1 |goto 50.50,77.82
step
Watch the dialogue
|tip Tormar Frostgut will walk up behind you.
|tip Upstairs inside the cave, on the top floor.
kill Tormar Frostgut##29626 |q 12823/2 |goto 50.45,78.32
step
label "Kill_Garm_Watchers"
kill 6 Garm Watcher##29409 |q 12822/1 |goto 48.22,81.08
|tip They look like large blue centaurs.
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Snowblind_Devotees"
kill 8 Snowblind Devotee##29407 |q 12822/2 |goto 48.22,81.08
|tip They look like kobolds.
|tip Inside and outside the cave. |notinsticky
step
Leave the cave |goto 48.22,81.08 < 30 |walk |only if subzone("Garm") and _G.IsIndoors()
talk Gino##29432
|tip He walks around this area.
turnin A Flawless Plan##12823 |goto 50.01,81.76
accept Demolitionist Extraordinaire##12824 |goto 50.01,81.76
step
Teleport to K3 |complete subzone("K3") |goto 50.69,81.88 |q 12824
|tip Walk into the teleporter machine.
|only if subzone("Garm's Rise")
stickystop "Collect_Relics_Of_Ulduar"
step
talk Ricket##29428
turnin Know No Fear##12822 |goto 40.93,85.31
turnin Demolitionist Extraordinaire##12824 |goto 40.93,85.31
accept Overstock##12833 |goto 40.93,85.31				|only if subzone("K3")
accept When All Else Fails##12862 |goto 40.93,85.31
step
talk Xark Bolthammer##29907
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Xark Bolthammer##29907 |goto 40.96,86.48 |q 12862
step
Enter the building |goto 41.01,85.95 < 7 |walk
talk Smilin' Slirk Brassknob##29904
|tip Inside the building.
home K3 |goto 41.09,85.91
step
use the Improved Land Mines##40676
|tip Use them to place mines on the ground around this area.
|tip Try to place them so that the Garm Invaders and Snowblind Followers will run over the mines and die.
|tip You don't need to try to avoid enemies, they won't attack you.
Slay #12# Garm Attackers |q 12833/1 |goto 44.31,81.82
|only if haveq(12833)
stickystart "Collect_Relics_Of_Ulduar"
stickystart "Collect_K3_Equipment"
step
Kill Sifreldar enemies around this area
|tip They look like blue humans.
|tip You can find them all around the Sifreldar Village area.
collect Cold Iron Key##40641+ |n
click Rusty Cage##191544+
|tip They look like brown wooden and metal cages.
|tip They can also be inside the buildings around the lower level of the village.
Free #5# Goblin Prisoners |q 12843/1 |goto 40.78,71.57
step
label "Collect_K3_Equipment"
click K3 Equipment##191568+
|tip They look like wooden crates on the ground.
|tip You can find them all around the Sifreldar Village area. |notinsticky
|tip They can also be inside all of the buildings around this area. |notinsticky
collect 8 K3 Equipment##40726 |q 12844/1 |goto 40.78,71.57
step
use the Hearthstone##6948
Hearth to K3 |complete subzone("K3") |noway |c |q 12844
|only if subzone("Sifreldar Village")
stickystop "Collect_Relics_Of_Ulduar"
step
talk Gretchen Fizzlespark##29473
|tip Inside the building.
turnin They Took Our Men!##12843 |goto 41.15,86.14
accept Leave No Goblin Behind##12846 |goto 41.15,86.14
turnin Equipment Recovery##12844 |goto 41.15,86.14
step
talk Xark Bolthammer##29907
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Xark Bolthammer##29907 |goto 40.96,86.48 |q 12846
step
talk Ricket##29428
turnin Overstock##12833 |goto 40.93,85.31
|only if haveq(12833) or completedq(12833)
step
talk Ricket##29428
Tell her _"I am ready to head further into Storm Peaks."_
Begin Flying in the D16 Propelled Delivery Device |invehicle |goto 40.93,85.31 |q 12862
step
Fly to Frosthold |outvehicle |goto 28.56,74.57 |q 12862	|notravel
step
talk Rork Sharpchin##29744
turnin When All Else Fails##12862 |goto 28.83,74.07
accept Ancient Relics##12870 |goto 28.83,74.07
step
talk Rork Sharpchin##29744
turnin Ancient Relics##12870 |goto 28.83,74.07
|only if readyq(12870)
step
talk Gunda Boldhammer##29926
home Frosthold |goto 28.71,74.38
step
talk Faldorf Bitterchill##29750
fpath Frosthold |goto 29.50,74.33
step
talk Archaeologist Andorin##29650
accept On Brann's Trail##12854 |goto 29.61,74.07
step
talk Lagnus##29743
accept Offering Thanks##12863 |goto 29.40,73.77
step
talk Glorthal Stiffbeard##29727
turnin Offering Thanks##12863 |goto 29.18,74.91
accept Missing Scouts##12864 |goto 29.18,74.91
step
talk Fjorlin Frostbrow##29732
accept Loyal Companions##12865 |goto 29.82,75.72
stickystart "Collect_Relics_Of_Ulduar"
step
talk Frostborn Scout##29811
|tip High up on the mountain.
Ask him _"Are you okay? I've come to take you back to Frosthold if you can stand."_
Locate the Missing Scout |q 12864/1 |goto 36.43,77.30
step
click Disturbed Snow##191708
|tip It looks like a pile of snow.
collect Burlap-Wrapped Note##40947 |q 12854/1 |goto 36.06,64.13
step
Kill Ice Steppe enemies around this area
|tip They look like hairy rhinos.
|tip You can find them all around the Foot Steppes area.
collect 8 Fresh Ice Rhino Meat##41340 |q 12865 |goto 42.83,58.50
step
Enter the mine |goto 42.22,69.48 < 20 |walk |only if not (subzone("The Forlorn Mine") and _G.IsIndoors())
talk Lok'lira the Crone##29481
|tip Inside the mine, on the bottom floor.
turnin Leave No Goblin Behind##12846 |goto 42.81,68.90
accept The Crone's Bargain##12841 |goto 42.81,68.90
step
map The Storm Peaks
path	follow strictbounce;	loop off;	ants curved;	dist 20;	markers none
path	45.11,71.07		44.78,71.25		44.53,70.79		44.14,70.53
path	44.03,70.03		43.51,70.10		44.10,69.78		44.13,67.89
path	44.17,67.52		44.28,67.20		44.30,66.99
kill Overseer Syra##29518
|tip She looks like a blue human that walks around this area on the middle floor inside the mine.
collect Runes of the Yrkvinn##40690 |q 12841/1
step
talk Lok'lira the Crone##29481
|tip Inside the mine, on the bottom floor.
turnin The Crone's Bargain##12841 |goto 42.81,68.90
accept Mildred the Cruel##12905 |goto 42.81,68.90
step
talk Mildred the Cruel##29885
|tip Upstairs inside the mine, on the top floor.
turnin Mildred the Cruel##12905 |goto 44.39,68.93
accept Discipline##12906 |goto 44.39,68.93
step
use the Disciplining Rod##42837
|tip Use it on Exhausted Vrykul.
|tip They look like vrykul men sitting on the ground around this area inside the mine.
|tip They are mostly in the side tunnels inside the mine, on all floors.
Discipline #6# Exhausted Vrykuls |q 12906/1 |goto 44.01,68.95
step
talk Mildred the Cruel##29885
|tip Upstairs inside the mine, on the top floor.
turnin Discipline##12906 |goto 44.39,68.93
accept Examples to be Made##12907 |goto 44.39,68.93
step
kill Garhal##30147 |q 12907/1 |goto 45.41,69.10
|tip Inside the mine, on the top floor.
step
talk Mildred the Cruel##29885
|tip Upstairs inside the mine, on the top floor.
turnin Examples to be Made##12907 |goto 44.39,68.93
accept A Certain Prisoner##12908 |goto 44.39,68.93
step
talk Lok'lira the Crone##29481
|tip Inside the mine, on the bottom floor.
turnin A Certain Prisoner##12908 |goto 42.81,68.90
accept A Change of Scenery##12921 |goto 42.81,68.90
step
Leave the mine |goto 46.95,68.44 < 20 |walk |only if subzone("The Forlorn Mine") and _G.IsIndoors()
talk Lok'lira the Crone##29975
turnin A Change of Scenery##12921 |goto 47.47,69.08
accept Is That Your Goblin?##12969 |goto 47.47,69.08
step
talk Agnetta Tyrsdottar##30154
Tell her _"Skip the warmup, sister... or are you too scared to face someone your own size?"_
kill Agnetta Tyrsdottar##30154 |q 12969/1 |goto 48.25,69.76
step
talk Lok'lira the Crone##29975
turnin Is That Your Goblin?##12969 |goto 47.47,69.08
accept The Hyldsmeet##12970 |goto 47.47,69.08
step
talk Lok'lira the Crone##29975
Tell her _"Tell me about this proposal."_
Listen to Lok'lira's Proposal |q 12970/1 |goto 47.47,69.08
step
talk Lok'lira the Crone##29975
turnin The Hyldsmeet##12970 |goto 47.47,69.08
accept Taking on All Challengers##12971 |goto 47.47,69.08
step
talk Victorious Challenger##30012+
|tip They look like blue armored women standing place.
|tip They are the ones that aren't already fighting each other.
Tell them _"Let's do this, sister."_
kill 6 Victorious Challenger##30012 |q 12971/1 |goto 48.16,70.30
You can find more around: |notinsticky
[50.38,68.02]
[51.39,66.41]
step
talk Lok'lira the Crone##29975
turnin Taking on All Challengers##12971 |goto 47.47,69.08
accept You'll Need a Bear##12972 |goto 47.47,69.08
step
talk Brijana##29592
turnin You'll Need a Bear##12972 |goto 53.14,65.72
accept Bearly Hanging On##12851 |goto 53.14,65.72
stickystop "Collect_Relics_Of_Ulduar"
step
clicknpc Icefang##29598
Ride Icefang |invehicle |goto 53.12,65.62 |q 12851
stickystart "Burn_Frost_Giants"
step
Burn #7# Frostworgs |q 12851/1 |goto 58.30,59.85
|tip Use the "Flaming Arrow" ability on your action bar on Frostworgs.
|tip They look like large white wolves around this area.
step
label "Burn_Frost_Giants"
Burn #15# Frost Giants |q 12851/2 |goto 58.30,59.85
|tip Use the "Flaming Arrow" ability on your action bar on Frost Giants.
|tip They look like large armored dwarves around this area.
step
Return to Brijana |outvehicle |goto 53.81,65.29 |q 12851
|tip Use the "Burst of Speed" ability to travel faster.
|tip You will automatically be dropped off at this location.
step
talk Brijana##29592
turnin Bearly Hanging On##12851 |goto 53.14,65.72
accept Cold Hearted##12856 |goto 53.14,65.72
stickystart "Free_Proto_Drakes"
step
clicknpc Captive Proto-Drake##29708+
|tip The look like dragons on chains flying in the air around this area.
Rescue #9# Brunnhildar Prisoners |q 12856/1 |goto 65.00,60.45
|tip Use the ability on your action bar on Brunnhildar Prisoners.
|tip They look like blue blocks of ice on the ground around this area.
Bring the prisoners to [49.09,66.89]
|tip Wait until you have the Captive Proto-Drakes holding 3 Brunnhildar Prisoners before you go to this location.
|tip Once you leave the objective area the Captive Proto-Drakes will automatically fly back to Brunnhildar Village.
|tip You will have to do this 3 times.
step
label "Free_Proto_Drakes"
clicknpc Captive Proto-Drake##29708+ |notinsticky
|tip The look like chained up dragons flying in the air around this area. |notinsticky
Free #3# Proto-Drakes |q 12856/2 |goto 65.00,60.45
Fly the Proto-Drakes to [49.09,66.89]
step
talk Brijana##29592
turnin Cold Hearted##12856 |goto 53.14,65.72
accept Deemed Worthy##13063 |goto 53.14,65.72
step
Enter the building |goto 49.82,71.40 < 20 |walk
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Deemed Worthy##13063 |goto 49.75,71.81
accept Making a Harness##12900 |goto 49.75,71.81
stickystart "Collect_Relics_Of_Ulduar"
step
kill Icemane Yeti##29875+
|tip They look like large white gorillas with horns.
|tip You can find them all around the Snowblind Terrace area.
collect 3 Icemane Yeti Hide##41424 |q 12900/1 |goto 47.07,76.15
step
Enter the building |goto 49.82,71.40 < 20 |walk
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Making a Harness##12900 |goto 49.75,71.81
accept The Last of Her Kind##12983 |goto 49.75,71.81
accept The Slithering Darkness##12989 |goto 49.75,71.81
step
kill 8 Ravenous Jormungar |q 12989/1 |goto 55.89,64.04
|tip They look like centipedes standing upright.
|tip Inside and outside the cave.
|tip The next step is inside the cave, so try to kill them inside the cave, if possible.
|tip If you find the Injured Icemaw Matriarch inside the cave, don't click her yet.
|tip She looks like a dead white bear in the back of the cave.
|tip You will do it in the next step, and it will talk you back to Brunnhildar.
step
clicknpc Injured Icemaw Matriarch##29563
|tip Inside the cave.
Ride the Icemaw Matriarch |invehicle |goto 54.79,60.37 |q 12983
stickystop "Collect_Relics_Of_Ulduar"
step
Rescue the Icemaw Matriarch |q 12983/1 |goto 49.82,71.12
|tip You will automatically be brought back to Brunnhildar Village.
step
Enter the building |goto 49.82,71.40 < 20 |walk
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Last of Her Kind##12983 |goto 49.75,71.81
accept The Warm-Up##12996 |goto 49.75,71.81
turnin The Slithering Darkness##12989 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42481
Ride a Warbear Matriarch |invehicle |goto 49.68,70.64 |q 12996
step
kill Kirgaraak##29352
|tip Use the abilities on your action bar.
Defeat Kirgaraak |q 12996/1 |goto 50.81,67.68
step
Stop Riding the Warbear Matriarch |outvehicle |q 12996
|tip Click the red arrow on your action bar.
step
Enter the building |goto 49.82,71.40 < 20 |walk
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin The Warm-Up##12996 |goto 49.75,71.81
accept Into the Pit##12997 |goto 49.75,71.81
step
use the Reins of the Warbear Matriarch##42499
Ride a Warbear Matriarch |invehicle |goto 49.19,68.72 |q 12997
step
kill 6 Hyldsmeet Warbear##30174 |q 12997/1 |goto 49.19,68.56
|tip Use the abilities on your action bar.
step
Stop Riding the Warbear Matriarch |outvehicle |q 12997
|tip Click the red arrow on your action bar.
step
Enter the building |goto 49.82,71.40 < 20 |walk
talk Astrid Bjornrittar##29839
|tip Inside the building.
turnin Into the Pit##12997 |goto 49.75,71.81
accept Prepare for Glory##13061 |goto 49.75,71.81
step
Enter the building |goto 48.77,70.47 < 20 |walk
talk Sigdis the Trader##30011
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Sigdis the Trader##30011 |goto 48.58,71.23 |q 13061
step
talk Thyra Kvinnshal##30041
|tip Inside the building.
accept Aberrations##12925 |goto 48.44,72.16
step
talk Iva the Vengeful##29997
|tip Inside the building.
accept Off With Their Black Wings##12942 |goto 48.33,72.13
accept Yulda's Folly##12968 |goto 48.33,72.13
step
talk Lok'lira the Crone##29975
turnin Prepare for Glory##13061 |goto 47.47,69.09
accept Lok'lira's Parting Gift##13062 |goto 47.47,69.09
step
talk Gretta the Arbiter##29796
turnin Lok'lira's Parting Gift##13062 |goto 50.87,65.59
accept The Drakkensryd##12886 |goto 50.87,65.59
step
Fly to the Temple of Storms |complete subzone("Temple of Storms") |goto 33.40,61.29 |q 12886 |notravel
|tip You will fly here automatically.
step
use the Hyldnir Harpoon##41058
|tip Use it on Hyldsmeet Proto-Drakes.
|tip They look like dragons with riders on them flying around this area.
|tip You will harpoon and fly over to a new drake to fight the rider.
kill Hyldsmeet Drakerider##29694+
Defeat #10# Hyldsmeet Drakeriders |q 12886/1 |goto 33.40,61.29 |notravel
step
use the Hyldnir Harpoon##41058
|tip Use it on a Column Ornament.
|tip They look like light fixtures on the side of the stone columns around the Temple of Storms area.
Stop Riding the Proto-Drake |outvehicle |q 12886
step
talk Thorim##29445
|tip At the top of the huge column.
turnin The Drakkensryd##12886 |goto 33.42,57.95
accept Sibling Rivalry##13064 |goto 33.42,57.95
step
talk Thorim##29445
|tip At the top of the huge column.
Ask him _"Can you tell me what became of Sif?"_
Hear Thorim's History |q 13064/1 |goto 33.42,57.95
step
talk Thorim##29445
|tip At the top of the huge column.
turnin Sibling Rivalry##13064 |goto 33.42,57.95
accept Mending Fences##12915 |goto 33.42,57.95
stickystart "Collect_Relics_Of_Ulduar"
stickystart "Collect_Vial_Of_Frost_Oil"
stickystart "Kill_Nascent_Valkyrs"
step
Enter the building |goto 23.84,60.45 < 10 |walk
kill Yulda the Stormspeaker##30046 |q 12968/1 |goto 24.01,61.93
|tip Inside the building.
step
click Harpoon Crate##192072
|tip Inside the building.
accept Valkyrion Must Burn##12953 |goto 24.02,61.74
step
Leave the building |goto 23.84,60.45 < 10 |walk |only if subzone("Valkyrion") and _G.IsIndoors()
clicknpc Valkyrion Harpoon Gun##30066
|tip They look like bronze dragon guns.
Start #6# Fires |q 12953/1 |goto 25.79,59.60
|tip Use the ability on your action bar to shoot the tan bundles of straw near buildings and in wagons on the ground around this area.
|tip If you have trouble shooter the further bundles, you can switch to using one of the other harpoon guns nearby.
step
Stop Controlling the Valkyrion Harpoon Gun |outvehicle |q 12953
|tip Click the yellow arrow on your action bar.
step
label "Collect_Vial_Of_Frost_Oil"
kill Valkyrion Aspirant##29569+
|tip They look like blue humans.
|tip You can find them all around the Valkyrion and the Blighted Pool areas.
collect 6 Vial of Frost Oil##41612 |q 12925 |goto 25.34,60.20
step
use the Vial of Frost Oil##41612
|tip Use it on Plagued Proto-Drake Eggs.
|tip They look like brown spiked eggs on the ground around this area.
|tip If you run out of vials, kill Valkyrion Aspirant blue humans to get more.
Destroy #30# Plagued Proto-Drake Eggs |q 12925/1 |goto 23.27,58.25
step
label "Kill_Nascent_Valkyrs"
kill 12 Nascent Val'kyr##29570 |q 12942/1 |goto 25.34,60.20
|tip They look like women with wings flying in the air.
|tip You can find them all around the Valkyrion and the Blighted Pool areas. |notinsticky
step
use the Hearthstone##6948
Hearth to Frosthold |complete subzone("Frosthold") |noway |c |q 12942
|only if (subzone("Valkyrion") or subzone("The Blighted Pool"))
stickystop "Collect_Relics_Of_Ulduar"
step
talk Rork Sharpchin##29744
turnin Ancient Relics##12870 |goto 28.83,74.07
|only if readyq(12870)
step
talk Dagni Oregleam##29923
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dagni Oregleam##29923 |goto 28.83,74.92 |q 12942
step
talk Glorthal Stiffbeard##29727
turnin Missing Scouts##12864 |goto 29.18,74.91
accept Stemming the Aggressors##12866 |goto 29.18,74.91
step
talk Archaeologist Andorin##29650
turnin On Brann's Trail##12854 |goto 29.61,74.07
accept Sniffing Out the Perpetrator##12855 |goto 29.61,74.07
step
use the Fresh Ice Rhino Meat##41340
|tip Use them on Stormcrest Eagles.
|tip They look like white birds around the top of the mountain.
|tip You can do this while mounted and don't need to target the eagles.
Feed #8# Stormcrest Eagles |q 12865/1 |goto 33.20,73.77
step
talk Fjorlin Frostbrow##29732
turnin Loyal Companions##12865 |goto 29.82,75.72
accept Baby Stealers##12867 |goto 29.82,75.72
stickystart "Collect_Relics_Of_Ulduar"
stickystart "Kill_Frostfeather_Screechers"
stickystart "Kill_Frostfeather_Witches"
step
click Eagle Egg##244841+
|tip They look like white eggs on the ground around this area.
|tip They are usually next to trees.
collect 15 Stormcrest Eagle Egg##41341 |q 12867/1 |goto 27.02,71.93
You can find more around: |notinsticky
[29.19,66.56]
[33.54,66.02]
[36.38,67.29]
step
label "Kill_Frostfeather_Screechers"
kill 8 Frostfeather Screecher##29792 |q 12866/1 |goto 27.02,71.93
|tip They look like black harpies.
You can find more around: |notinsticky
[29.19,66.56]
[33.54,66.02]
[36.38,67.29]
step
label "Kill_Frostfeather_Witches"
kill 8 Frostfeather Witch##29793 |q 12866/2 |goto 27.02,71.93
|tip They look like blue harpies.
You can find more around: |notinsticky
[29.19,66.56]
[33.54,66.02]
[36.38,67.29]
step
use the Frosthound's Collar##41430
Ride the Frosthound |invehicle |goto 36.46,64.26 |q 12855
stickystop "Collect_Relics_Of_Ulduar"
step
Track Down the Thief |q 12855/1 |goto 47.91,61.00 |notravel
|tip Use the abilities on your action bar.
|tip Use the "Cast Net" on the dwarves.
|tip Use the "Ice Slick" ability near the white piles of snow on the ground.
|tip You will eventually ride to this location.
step
Enter the cave |goto 48.13,60.96 < 15 |walk
kill Tracker Thulin##29695 |q 12855/2 |goto 48.55,60.82
|tip Inside the cave.
collect Brann's Communicator##40971 |goto 48.55,60.82 |q 12855
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12855
accept Pieces to the Puzzle##12858
step
Enter the building |goto 48.77,70.47 < 20 |walk
talk Sigdis the Trader##30011
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Sigdis the Trader##30011 |goto 48.58,71.23 |q 12858
step
talk Thyra Kvinnshal##30041
|tip Inside the building.
turnin Aberrations##12925 |goto 48.44,72.15
step
talk Iva the Vengeful##29997
|tip Inside the building.
turnin Off With Their Black Wings##12942 |goto 48.33,72.13
turnin Yulda's Folly##12968 |goto 48.33,72.13
turnin Valkyrion Must Burn##12953 |goto 48.33,72.13
stickystart "Collect_Relics_Of_Ulduar"
stickystart "Collect_Furious_Sparks"
step
click Granite Boulder+
|tip They look like large grey rocks on the ground around this area.
collect Granite Boulder##41506+ |n
|tip You can only carry 1 at a time.
use Thorim's Charm of Earth##41505
|tip Use it on Stormforged Iron Giants.
|tip They look like large armored dwarves around this area.
|tip Smaller dwarves will appear and attack them.
|tip Help the dwarves kill them.
kill 5 Stormforged Iron Giant##29375 |q 12915/2 |goto 70.18,61.09
collect Slag Covered Metal##41556 |goto 70.18,61.09 |q 12922 |future
You can find more around [74.60,62.96]
step
use the Slag Covered Metal##41556
accept The Refiner's Fire##12922
step
_NOTE:_
Continue Using Boulders to Kill Giants
|tip During the next steps, continue collecting the large grey Granite Boulders from the ground.
|tip Use Thorim's Charm of Earth on the dwarf giants, and kill them.
Click Here to Continue |confirm |q 12922
step
label "Collect_Furious_Sparks"
kill Seething Revenant##29504+
|tip They look like armored fire elementals.
collect 10 Furious Spark##41558 |q 12922/1 |goto 70.18,61.09
You can find more around [74.60,62.96]
step
click Granite Boulder##191815+
|tip They look like large grey rocks on the ground around this area.
collect Granite Boulder##41506+ |n
|tip You can only carry 1 at a time.
use Thorim's Charm of Earth##41505
|tip Use it on Fjorn.
|tip He looks like a much larger dwarf with brown armor that walks around this area.
|tip Smaller dwarves will appear and attack him.
|tip Help the dwarves kill them.
kill Fjorn##29503 |q 12915/1 |goto 77.35,62.88
step
click Fjorn's Anvil##192071
|tip It looks like a huge blacksmith anvil.
turnin The Refiner's Fire##12922 |goto 77.15,62.80
accept A Spark of Hope##12956 |goto 77.15,62.80
step
label "Collect_Relics_Of_Ulduar"
Kill enemies around this area
|tip Any enemy in the Storm Peaks can drop the quest item.
|tip Be careful to not accidentally sell these to a vendor.
collect 10 Relic of Ulduar##42780 |goto 70.18,61.09 |q 12870 |future
You can find more around [74.60,62.96]
step
use the Hearthstone##6948
Hearth to Frosthold |complete subzone("Frosthold") |noway |c |q 12956
|only if (subzone("Fjorn's Anvil") or subzone("Frostfield Lake"))
step
talk Rork Sharpchin##29744
turnin Ancient Relics##12870 |goto 28.83,74.07
step
talk Dagni Oregleam##29923
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dagni Oregleam##29923 |goto 28.83,74.92 |q 12866
step
talk Glorthal Stiffbeard##29727
turnin Stemming the Aggressors##12866 |goto 29.18,74.91
step
talk Fjorlin Frostbrow##29732
turnin Baby Stealers##12867 |goto 29.82,75.72
step
talk Thorim##29445
|tip At the top of the huge column.
turnin Mending Fences##12915 |goto 33.42,57.95
turnin A Spark of Hope##12956 |goto 33.42,57.95
accept Forging an Alliance##12924 |goto 33.42,57.95
step
kill Library Guardian##29724+
|tip They look like mechanical gnomes on mechanical bird mounts.
|tip You can find them all around the Inventory's Library area.
collect 6 Inventor's Disk Fragment##41130 |goto 38.17,42.64 |q 12858
step
use the Inventor's Disk Fragment##41130+
collect The Inventor's Disk##41132 |q 12858/1
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces to the Puzzle##12858
accept Data Mining##12860
step
use The Inventor's Disk##41179
|tip Use it near Databanks.
|tip They look like floating geometric orbs.
|tip You can find them all around the Inventory's Library area.
Gather #7# Hidden Data |q 12860/1 |goto 38.17,42.64
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12860
accept The Library Console##13415
step
Enter the building |goto 37.73,45.22 < 15 |walk
click Inventor's Library Console##191760
|tip Inside the building.
turnin The Library Console##13415 |goto 37.43,46.80
accept Norgannon's Shell##12872 |goto 37.43,46.80
step
use the Charged Disk##44704
|tip Inside the building.
Watch the dialogue
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12872/1 |goto 37.53,46.52
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12872
accept Aid from the Explorers' League##12871
accept The Exiles of Ulduar##12885
step
Leave the building |goto 37.73,45.22 < 15 |walk |only if subzone("The Inventor's Library") and _G.IsIndoors()
talk Breck Rockbrow##29950
fpath Bouldercrag's Refuge |goto 30.65,36.32
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Magorn##29963
|tip Inside the building.
home Bouldercrag's Refuge |goto 30.89,37.36
step
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin The Exiles of Ulduar##12885 |goto 31.42,38.07
accept Rare Earth##12930 |goto 31.42,38.07
step
_NOTE:_
Keep Your Frostweave Cloth
|tip In the next step, be careful not to sell any Frostweave Cloth you have currently.
|tip You need it for a quest goal.
Click Here to Continue |confirm |q 12930
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12930
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
click Enchanted Earth##191845+
|tip They look like black rocks with snow on them on the ground.
|tip You can find them all along the side of the cliff around this area.
collect 7 Enchanted Earth##41614 |q 12930/1 |goto 25.36,33.54
step
Kill Stormforged enemies around this area
|tip They look like dwarves.
|tip You can find them all around the Nidavelir and Narvir's Cradle areas.
|tip The metal War Golems won't drop the quest item.
collect 5 Frostweave Cloth##33470 |q 12930/1 |goto 25.60,46.00
You can find more around [29.33,45.39]
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin Rare Earth##12930 |goto 31.42,38.07
accept Fighting Back##12931 |goto 31.42,38.07
accept Relief for the Fallen##12937 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12937
stickystart "Slay_Stormforged_Attackers"
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
use the Telluric Poultice##41988
|tip Use it on Fallen Earthen Defenders.
|tip They look like dwarves made of stone kneeling on the ground around this area.
Heal #8# Fallen Earthen Defenders |q 12937/1 |goto 26.38,37.58
step
label "Slay_Stormforged_Attackers"
Kill Stormforged enemies around this area
|tip They look like armored dwarves and metal golems around this area.
Slay #10# Stormforged Attackers |q 12931/1 |goto 26.38,37.58
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin Fighting Back##12931 |goto 31.42,38.07
turnin Relief for the Fallen##12937 |goto 31.42,38.07
accept Slaves of the Stormforged##12957 |goto 31.42,38.07
accept The Dark Ore##12964 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12964
stickystart "Kill_Stormforged_Taskmasters"
stickystart "Collect_Dark_Ore_Sample"
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
talk Captive Mechagnome##29384+
|tip They look like metal gnomes mining.
|tip You can find them all throughout the Frozen Mine.
Tell them _"I'm not a laborer. I'm here to free you from servitude in the mines."_
Attempt to Free #6# Captive Mechagnomes |q 12957/1 |goto 27.35,49.80
step
label "Kill_Stormforged_Taskmasters"
kill 3 Stormforged Taskmaster##29369 |q 12957/2 |goto 27.35,49.80
|tip They look like dwarves with dark armor.
|tip You can find them all throughout the Frozen Mine. |notinsticky
step
label "Collect_Dark_Ore_Sample"
click Ore Cart##192058+
|tip They look like brown mining carts with ore in them.
|tip You can find them on the ground all throughout the Frozen Mine. |notinsticky
collect 5 Dark Ore Sample##42109|q 12964/1 |goto 27.35,49.80
step
use the Hearthstone##6948
Hearth to Bouldercrag's Refuge |complete subzone("Bouldercrag's Refuge") |q 12964
|only if subzone("The Frozen Mine")
step
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin Slaves of the Stormforged##12957 |goto 31.42,38.07
turnin The Dark Ore##12964 |goto 31.42,38.07
accept The Gifts of Loken##12965 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12965
step
talk Bruor Ironbane##30152
|tip Inside the building.
accept Facing the Storm##12978 |goto 31.28,38.17
stickystart "Accept_Armor_Of_Darkness"
stickystart "Collect_Dark_Armor_Samples"
stickystart "Slay_Nidavelir_Stormforged"
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
Enter the building |goto 24.36,42.75 < 15 |walk
click Loken's Fury##192120
|tip Inside this building.
Destroy Loken's Fury |q 12965/1 |goto 24.02,42.64
step
Enter the building |goto 26.04,47.20 < 15 |walk
click Loken's Power##192121
|tip Inside this building.
Destroy Loken's Power |q 12965/2 |goto 26.16,47.69
step
Enter the building |goto 24.59,47.68 < 15 |walk
click Loken's Favor##192122
|tip Inside this building.
Destroy Loken's Favor |q 12965/3 |goto 24.55,48.42
step
label "Accept_Armor_Of_Darkness"
kill Stormforged War Golem##29380+
|tip They look like metal humanoid machines.
|tip You can find them all around the Nidavelir area. |notinsticky
collect Dark Armor Sample##42203 |n
use the Dark Armor Sample##42203
accept Armor of Darkness##12979 |goto 25.75,46.60
step
label "Collect_Dark_Armor_Samples"
kill Stormforged War Golem##29380+
|tip They look like metal humanoid machines.
|tip You can find them all around the Nidavelir area. |notinsticky
collect 4 Dark Armor Sample##42204 |q 12979/1 |goto 25.75,46.60
|only if haveq(12979) or completedq(12979)
step
label "Slay_Nidavelir_Stormforged"
Kill Stormforged enemies around this area
|tip They look like dwarves and metal golems.
|tip You can find them all around the Nidavelir area. |notinsticky
Slay #10# Nidavelir Stormforged |q 12978/1 |goto 25.75,46.60
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin The Gifts of Loken##12965 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12978
step
talk Bruor Ironbane##30152
|tip Inside the building.
turnin Facing the Storm##12978 |goto 31.28,38.17
turnin Armor of Darkness##12979 |goto 31.28,38.17
accept The Armor's Secrets##12980 |goto 31.28,38.17
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
Enter the building in the side of the mountain |goto 33.56,39.65 < 20 |walk
talk Attendant Tock##30190
|tip Inside the building.
Tell him _"I found this strange armor plate. Can you tell me more about it?"_
Click Here Once the Dialogue Begins |confirm |goto 32.04,40.73 |q 12980
step
Leave the building |goto 33.56,39.65 < 20 |walk |only if subzone("Mimir's Workshop") and _G.IsIndoors()
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
Investigate the Armor Plate |q 12980/1 |goto 31.28,38.17
|tip Inside the building.
|tip You may have to wait a few seconds for the quest goal to complete.
|tip You are waiting for the dialogue to finish that you started in the previous guide step.
|tip When it completes, you will already be next to the NPC to turn in the quest.
step
talk Bruor Ironbane##30152
|tip Inside the building.
turnin The Armor's Secrets##12980 |goto 31.28,38.17
step
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
accept Valduran the Stormborn##12984 |goto 31.42,38.07
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
Enter the building |goto 24.70,51.71 < 10 |walk
use Bouldercrag's War Horn##42419
|tip Use it near Valduran the Stormborn.
|tip Inside the building.
Watch the dialogue
|tip Allies will appear to help you fight.
kill Valduran the Stormborn##29368 |q 12984/1 |goto 24.28,52.15
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin Valduran the Stormborn##12984 |goto 31.42,38.07
accept Destroy the Forges!##12988 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12988
step
talk Bruor Ironbane##30152
|tip Inside the building.
accept Hit Them Where it Hurts##12991 |goto 31.28,38.17
stickystart "Kill_Stormforged_Artificers"
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
use Bouldercrag's Bomb##42441
Damage the North Lightning Forge |q 12988/1 |goto 29.01,45.81
step
use Bouldercrag's Bomb##42441
Damage the Central Lightning Forge |q 12988/2 |goto 29.49,45.89
step
use Bouldercrag's Bomb##42441
Damage the South Lightning Forge |q 12988/3 |goto 30.22,46.14
step
label "Kill_Stormforged_Artificers"
kill 10 Stormforged Artificer##29376 |q 12991/1 |goto 29.79,45.63
|tip They look like armored dwarves.
|tip You can find them all around the Narvir's Cradle area.
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bruor Ironbane##30152
|tip Inside the building.
turnin Hit Them Where it Hurts##12991 |goto 31.28,38.17
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12988
step
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin Destroy the Forges!##12988 |goto 31.42,38.07
accept A Colossal Threat##12993 |goto 31.42,38.07
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
click Colossus Attack Specs##192171
|tip It looks like a white unrolled scroll.
collect Colossus Attack Specs##42475 |q 12993/1 |goto 28.88,44.06
step
click Colossus Defense Specs##192172
|tip It looks like a white unrolled scroll.
collect Colossus Defense Specs##42476 |q 12993/2 |goto 29.90,45.81
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin A Colossal Threat##12993 |goto 31.42,38.07
accept The Heart of the Storm##12998 |goto 31.42,38.07
step
talk Dargum Hammerdeep##29964
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dargum Hammerdeep##29964 |goto 31.38,38.27 |q 12998
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
Enter the large metal hole in the side of the mountain (closer to the ground) |goto 32.39,63.62 < 30 |walk |only if not subzone("Uldis")
Fly down here |goto 32.42,60.89 < 30 |walk
click Heart of the Storm##192181
|tip Inside the building.
Watch the dialogue
Attempt to Secure the Heart of the Storm |q 12998/1 |goto 36.10,60.92
step
use the Hearthstone##6948
Hearth to Bouldercrag's Refuge |complete subzone("Bouldercrag's Refuge") |q 12998
|only if subzone("Uldis")
step
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin The Heart of the Storm##12998 |goto 31.42,38.07
accept The Iron Colossus##13007 |goto 31.42,38.07
step
Leave the building |goto 30.63,37.00 < 15 |walk |only if subzone("Bouldercrag's Refuge") and _G.IsIndoors()
click Jormungar Control Orb##192262
Control a Jormungar |invehicle |goto 27.17,35.90 |q 13007
step
kill Iron Colossus##30300 |q 13007/1 |goto 27.39,45.30
|tip He looks like a huge armored dwarf that walks around this area.
|tip Use the abilities on your action bar.
|tip Use the "Submerge" ability on your action bar to be able to move around.
|tip Use the "Emerge" ability on your action bar when underground, to come back to the surface.
|tip Use the "Submerge" ability on your action bar when he jumps up to do a ground slam, then move behind him to avoid taking damage.
step
Stop Controlling the Jormungar |outvehicle |q 13007
|tip Click the red arrow on your action bar.
step
Enter the building |goto 30.63,37.00 < 15 |walk |only if not (subzone("Bouldercrag's Refuge") and _G.IsIndoors())
talk Bouldercrag the Rockshaper##29801
|tip Inside the building.
turnin The Iron Colossus##13007 |goto 31.42,38.07
step
talk Lagnus##29743
turnin Aid from the Explorers' League##12871 |goto 29.40,73.76
accept The Frostborn King##12873 |goto 29.40,73.76
step
talk Gunda Boldhammer##29926
home Frosthold |goto 28.71,74.38
step
talk Rutner Steelpick##29925
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Rutner Steelpick##29925 |goto 28.57,74.72 |q 12873
step
talk Yorg Stormheart##29593
turnin The Frostborn King##12873 |goto 30.26,74.76
accept Fervor of the Frostborn##12874 |goto 30.26,74.76
step
talk Fjorlin Frostbrow##29732
Tell him _"King Stormheart sent me to be tested as a frostborn would. I am ready for my test, Fjorlin."_
Begin the Test |invehicle |goto 29.83,75.72 |q 12874
step
Watch the dialogue
|tip This is a long flight.
Fly to the Iron Watcher |goto 53.48,35.10 < 50 |c |q 12874 |notravel
step
click Battered Storm Hammer##192243
collect Battered Storm Hammer##42624 |goto 53.61,35.14 |q 12874
step
use the Battered Storm Hammer##42624
|tip Use it repeatedly on The Iron Watcher.
|tip While he is stunned, you can fight him normally, or you can run away to let the hammer recharge, if you want to play it safe.
|tip When his health is low enough, he will run to the end of the bridge.
|tip When he's on the edge of the bridge, use the hammer on him and he will fall off.
kill The Iron Watcher##30142 |q 12874/1 |goto 53.55,37.86
step
talk Shavalius the Fancy##29951
fpath Ulduar |goto 44.49,28.18
step
talk Halvdan##32571
fpath Dun Niffelem |goto 62.63,60.92
step
talk King Jokkum##30105
accept You Can't Miss Him##12966 |goto 65.43,60.15
step
talk Njormeld##30099
turnin You Can't Miss Him##12966 |goto 75.38,63.57
accept Battling the Elements##12967 |goto 75.38,63.57
step
clicknpc Snorri##30123
Accompany Snorri |invehicle |goto 75.71,63.91 |q 12967
step
kill 10 Seething Revenant##29504 |q 12967/1 |goto 76.18,63.32
|tip Use the "Gather Snow" ability on your action bar next to Snowdrifts.
|tip They look like piles of white snow on the ground around this area.
|tip Use the "Throw Snowball" ability on your action bar on Seething Revenants.
|tip They look like armored fire elementals around this area.
step
Stop Accompanying Snorri |outvehicle |q 12967
|tip Click the red arrow on your action bar.
step
talk Njormeld##30099
turnin Battling the Elements##12967 |goto 75.38,63.57
Bring Fjorn's Anvil to Dun Niffelem |q 12924/1 |goto 75.38,63.57
step
talk Njormeld##30127
turnin Forging an Alliance##12924 |goto 63.21,63.23
step
talk Yorg Stormheart##29593
turnin Fervor of the Frostborn##12874 |goto 30.26,74.76
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Icecrown (79-80)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Icecrown",
condition_suggested=function() return level >= 79 and level <= 80 and not completedq(13403) end,
},[[
step
talk Officer Van Rossem##31081
accept Preparations for War##13418 |goto Dalaran 67.72,47.21
step
talk Aedan Moran##30433
fpath The Argent Vanguard |goto Icecrown 87.80,78.07
step
talk Highlord Tirion Fordring##28179
accept Honor Above All Else##13036 |goto 87.46,75.83
step
talk Crusade Commander Entari##30223
turnin Honor Above All Else##13036 |goto 87.09,75.85
accept Scourge Tactics##13008 |goto 87.09,75.85
step
talk Durik Bronzebomb##30434
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Durik Bronzebomb##30434 |goto 87.25,75.89 |q 13008
step
talk Father Gustav##30226
|tip He walks around this area.
accept Curing The Incurable##13040 |goto 86.75,76.60
step
talk Crusader Lord Dalfors##30224
accept Defending The Vanguard##13039 |goto 86.06,75.77
stickystart "Collect_Forgotten_Depths_Venom_Sacs"
stickystart "Slay_Forgotten_Depths_Nerubians"
step
clicknpc Webbed Crusader##30273+
|tip They look like white squirming cocoons on the ground.
|tip You can find them all around the Valley of Echoes area.
Free #8# Webbed Crusaders |q 13008/1 |goto 83.85,75.58
step
label "Collect_Forgotten_Depths_Venom_Sacs"
Kill enemies around this area
|tip They look like spiders.
|tip You can find them all around the Valley of Echoes area. |notinsticky
collect 10 Forgotten Depths Venom Sac##42770|q 13040/1 |goto 83.85,75.58
step
label "Slay_Forgotten_Depths_Nerubians"
Kill enemies around this area |notinsticky
|tip They look like spiders. |notinsticky
|tip You can find them all around the Valley of Echoes area. |notinsticky
Slay #15# Forgotten Depths Nerubians |q 13039/1 |goto 83.85,75.58
step
talk Crusader Lord Dalfors##30224
turnin Defending The Vanguard##13039 |goto 86.06,75.77
step
talk Father Gustav##30226
|tip He walks around this area.
turnin Curing The Incurable##13040 |goto 86.75,76.60
step
talk Crusade Commander Entari##30223
turnin Scourge Tactics##13008 |goto 87.09,75.85
accept If There Are Survivors...##13044 |goto 87.09,75.85
step
talk Durik Bronzebomb##30434
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Durik Bronzebomb##30434 |goto 87.25,75.89 |q 13044
step
talk Penumbrius##30227
turnin If There Are Survivors...##13044 |goto 87.01,79.02
accept Into The Wild Green Yonder##13045 |goto 87.01,79.02
step
clicknpc Argent Skytalon##30500
Ride an Argent Skytalon |invehicle |goto 87.10,79.14 |q 13045
step
Pick Up Captured Crusaders
|tip Use the "Grab Captured Crusader" ability on your action bar near Captured Crusaders.
|tip They look like humans trapped in brown and white webbed cocoons.
|tip You can find them all around the Scourgeholme area.
Bring Them to Safety
|tip Fly them back to the Argent Vanguard.
|tip Use the "Drop Off Captured Crusader" ability on your action bar.
Rescue #3# Captured Crusaders |q 13045/1 |goto 78.40,64.61
Bring the Captured Crusaders to [86.85,76.60]
step
Release the Argent Skytalon |outvehicle |goto 87.46,75.83 |q 13045
|tip Click the red arrow on your action bar.
step
talk Highlord Tirion Fordring##28179
turnin Into The Wild Green Yonder##13045 |goto 87.46,75.83
accept A Cold Front Approaches##13070 |goto 87.46,75.83
step
talk Siegemaster Fezzik##30657
|tip Inside the building.
turnin A Cold Front Approaches##13070 |goto 85.62,76.01
accept The Last Line Of Defense##13086 |goto 85.62,76.01
step
clicknpc Argent Cannon##30236+
|tip They look like mounted metal guns on top of the walls around this area.
Control the Argent Cannon |invehicle |goto 85.33,75.84 |q 13086
stickystart "Slay_Scourge_Attackers"
step
kill 3 Frostbrood Destroyer##30575 |q 13086/2 |goto 85.33,75.84
|tip They look like skeletal dragons nearby.
|tip Use the abilities on your action bar.
step
label "Slay_Scourge_Attackers"
Kill enemies around this area |notinsticky
|tip On the ground and in the air nearby. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
Slay #100# Scourge Attackers |q 13086/1 |goto 85.33,75.84
step
Stop Controlling the Argent Cannon |outvehicle |q 13086
|tip Click the yellow arrow on your action bar.
step
talk Siegemaster Fezzik##30657
|tip Inside the building.
turnin The Last Line Of Defense##13086 |goto 85.62,76.01
step
talk Highlord Tirion Fordring##30677
accept Once More Unto The Breach, Hero##13105 |goto 86.03,75.80 |only if DeathKnight
accept Once More Unto The Breach, Hero##13104 |goto 86.03,75.80 |only if not DeathKnight
step
talk The Ebon Watcher##30596
turnin Once More Unto The Breach, Hero##13105 |goto 83.02,72.94 |only if DeathKnight
turnin Once More Unto The Breach, Hero##13104 |goto 83.02,72.94 |only if not DeathKnight
accept The Purging Of Scourgeholme##13118 |goto 83.02,72.94
accept The Scourgestone##13122 |goto 83.02,72.94
step
talk Crusade Architect Silas##30686
accept The Stone That Started A Revolution##13130 |goto 83.02,73.07
step
talk Crusade Engineer Spitzpatrick##30714
accept It Could Kill Us All##13135 |goto 82.99,73.07
step
talk Father Gustav##30683
|tip Inside the building.
accept The Restless Dead##13110 |goto 82.87,72.78
stickystart "Collect_Ancient_Elven_Masonry"
stickystart "Collect_Crystallized_Energy"
step
click Crystalline Heartwood##192908+
|tip They look like pink glowing tree stumps on the ground.
collect 10 Crystalline Heartwood##43217 |q 13130/1 |goto Crystalsong Forest 61.77,58.87
You can find more around: |notinsticky
[69.53,69.92]
[75.58,66.02]
[82.96,64.06]
step
label "Collect_Ancient_Elven_Masonry"
click Ancient Elven Masonry##192912+
|tip They look like blue stone column pieces on the ground.
collect 10 Ancient Elven Masonry##43218 |q 13130/2 |goto 75.58,66.02
You can find more around: |notinsticky
[82.96,64.06]
step
label "Collect_Crystallized_Energy"
Kill enemies around this area
collect 8 Crystallized Energy##43225 |q 13135/1 |goto 78.19,59.09
You can find more around: |notinsticky
[63.57,66.94]
[61.01,54.67]
step
talk Halig Fireforge##30436
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Halig Fireforge##30436 |goto Icecrown 86.93,77.12 |q 13135
step
talk Crusade Architect Silas##30686
turnin The Stone That Started A Revolution##13130 |goto 83.02,73.07
step
talk Crusade Engineer Spitzpatrick##30714
turnin It Could Kill Us All##13135 |goto 82.99,73.07
stickystart "Kill_Forgotten_Depths_Underkings"
stickystart "Kill_Reanimated_Crusaders"
stickystart "Free_Restless_Souls"
stickystart "Collect_Scourgestones"
step
kill Forgotten Depths High Priest##31037 |q 13118/1 |goto 77.31,68.19
|tip They are usually inside or next to the buildings around the Scourgeholme area.
You can find more around: |notinsticky
[79.21,64.00]
[75.65,61.06]
[79.06,60.42]
[78.79,56.27]
step
label "Kill_Forgotten_Depths_Underkings"
kill 3 Forgotten Depths Underking##31039 |q 13118/2 |goto 78.00,63.16
|tip They look like huge beetles.
|tip You can find them all around the Scourgeholme area. |notinsticky
step
label "Kill_Reanimated_Crusaders"
kill 8 Reanimated Crusader##31043 |q 13118/3 |goto 78.32,66.36
|tip They look like skeletons.
|tip You can find them all around the Scourgeholme area. |notinsticky
step
label "Free_Restless_Souls"
kill Reanimated Crusader##31043+
|tip They look like skeletons.
|tip You can find them all around the Scourgeholme area. |notinsticky
use the Holy Water##43153
|tip Use it on their corpses.
Free #10# Restless Souls |q 13110/1 |goto 78.32,66.36
step
label "Collect_Scourgestones"
Kill enemies around this area
|tip You can find them all around the Scourgeholme area. |notinsticky
collect 15 Scourgestone##43169 |q 13122/1 |goto 78.00,63.16
step
talk The Ebon Watcher##30596
turnin The Purging Of Scourgeholme##13118 |goto 83.02,72.94
turnin The Scourgestone##13122 |goto 83.02,72.94
accept The Air Stands Still##13125 |goto 83.02,72.94
step
talk Father Gustav##30683
|tip Inside the building.
turnin The Restless Dead##13110 |goto 82.87,72.78
step
Enter the building |goto 77.85,62.54 < 20 |walk
use the War Horn of Acherus##43206
|tip Use it on Salranax the Flesh Render inside the building.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill Salranax the Flesh Render##30829 |q 13125/1 |goto 77.33,61.90
step
Enter the building |goto 79.27,60.55 < 15 |walk
use the War Horn of Acherus##43206
|tip Use it on High Priest Yath'amon inside the building.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill High Priest Yath'amon##30831 |q 13125/3 |goto 80.08,61.16
step
use the War Horn of Acherus##43206
|tip Use it on Underking Talonox.
|tip He walks around this area.
|tip He is elite, but don't worry.
|tip Your allies will appear to help you kill him after you use the horn.
kill Underking Talonox##30830 |q 13125/2 |goto 76.48,53.70
step
talk The Ebon Watcher##30596
turnin The Air Stands Still##13125 |goto 83.02,72.93
step
talk Father Gustav##30683
|tip Inside the building.
accept Into The Frozen Heart Of Northrend##13139 |goto 82.87,72.78
step
talk Highlord Tirion Fordring##30677
turnin Into The Frozen Heart Of Northrend##13139 |goto 86.01,75.75
accept The Battle For Crusaders' Pinnacle##13141 |goto 86.01,75.75
step
use the Blessed Banner of the Crusade##43243
|tip Your allies will appear and help you fight.
Kill the enemies that attack in waves
|tip Groups of enemies will run up the path nearby.
kill Halof the Deathbringer##30989
Complete the Battle for Crusaders' Pinnacle |q 13141/1 |goto 80.08,71.94
step
talk Father Gustav##30683
|tip Inside the building.
turnin The Battle For Crusaders' Pinnacle##13141 |goto 82.87,72.78
accept The Crusaders' Pinnacle##13157 |goto 82.87,72.78
step
talk Highlord Tirion Fordring##31044
turnin The Crusaders' Pinnacle##13157 |goto 79.79,71.76
accept A Tale of Valor##13068 |goto 79.79,71.76
step
Enter the building |goto 79.62,72.53 < 10 |walk
talk Quartermaster Vaskess##31115
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Vaskess##31115 |goto 79.58,72.73 |q 13068
step
talk Marshal Ivalius##31241
|tip Inside the building.
accept The Skybreaker##13225 |goto 79.39,72.88
step
talk Penumbrius##31069
fpath Crusaders' Pinnacle |goto 79.41,72.37
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13225
step
_On the Skybreaker Airship:_
talk High Captain Justin Bartlett##30344
|tip Inside the airship, in the room with the yellow windows.
turnin Preparations for War##13418
turnin The Skybreaker##13225
accept The Broken Front##13231
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
accept It's All Fun and Games##12887
step
_On the Skybreaker Airship:_
talk Knight-Captain Drosche##32302
|tip At the very top of the airship.
accept Blood of the Chosen##13336
accept Joining the Assault##13341
step
_On the Skybreaker Airship:_
talk Absalan the Pious##31259
|tip He walks around the rear of the ship, on the main and top decks.
accept Slaves to Saronite##13300
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
accept Get to Ymirheim!##13296
step
talk Crusader Bridenbrad##30562
turnin A Tale of Valor##13068 |goto 79.84,30.82
accept A Hero Remains##13072 |goto 79.84,30.82
step
Enter the building |goto 75.96,19.93 < 15 |walk
talk Caris Sunlance##33970
|tip Inside the building.
home Silver Covenant Pavilion |goto 76.19,19.66
step
Leave the building |goto 75.96,19.93 < 15 |walk |only if subzone("Silver Covenant Pavilion") and _G.IsIndoors()
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto 72.59,22.62
step
use the Eyesore Blaster##41265
|tip Use it repeatedly on The Ocular.
|tip It looks like a huge blue glowing eye at the top of this tower.
|tip You can use this item while flying.
Destroy The Ocular |q 12887/1 |goto 44.55,22.44
step
talk Baron Sliver##29804
|tip On the ground, outside the building.
turnin It's All Fun and Games##12887 |goto 44.15,24.68
accept I Have an Idea, But First...##12891 |goto 44.15,24.68
stickystart "Collect_Abomination_Hook"
stickystart "Collect_Geist_Rope"
stickystart "Collect_Scourge_Essences"
step
kill Shadow Cultist##29717+
|tip They look like humans in purple shadowy robes.
|tip You can find them all around the Shadow Vault area.
|tip You can also find them up on the raised platforms and inside the building nearby.
collect Cultist Rod##41359 |q 12891/1 |goto 43.23,25.19
step
label "Collect_Abomination_Hook"
kill Morbid Carcass##29719+
|tip They look like abominations.
|tip You can find them all around the Shadow Vault area. |notinsticky
|tip You can also find them up on the raised platforms and inside the building nearby. |notinsticky
collect Abomination Hook##41361 |q 12891/2 |goto 43.23,25.19
step
label "Collect_Geist_Rope"
kill Vault Geist##29720+
|tip They look like frail humanoids crouching on the ground.
|tip You can find them all around the Shadow Vault area. |notinsticky
|tip You can also find them up on the raised platforms and inside the building nearby. |notinsticky
collect Geist Rope##41362 |q 12891/3 |goto 43.23,25.19
step
label "Collect_Scourge_Essences"
Kill enemies around this area
|tip Only Undead enemies will drop the quest item.
|tip You can find them all around the Shadow Vault area. |notinsticky
|tip You can also find them up on the raised platforms and inside the building nearby. |notinsticky
collect 5 Scourge Essence##41363 |q 12891/4 |goto 43.23,25.19
step
talk Baron Sliver##29804
|tip On the ground, outside the building.
turnin I Have and Idea, But First...##12891 |goto 44.15,24.68
accept Free Your Mind##12893 |goto 44.15,24.68
step
kill Vile##29769
|tip He looks like a larger abomination.
|tip On the raised platform.
use the Soveriegn Rod##41366
|tip Use it on his corpse.
Turn Vile |q 12893/1 |goto 44.42,27.00
step
kill Lady Nightswood##29770
|tip She looks like a banshee.
|tip On the raised platform.
use the Soveriegn Rod##41366
|tip Use it on her corpse.
Turn Lady Nightswood |q 12893/2 |goto 41.75,24.49
step
kill The Leaper##29840
|tip He looks like a larger Geist.
|tip He runs along the path of the raised tower platform, outside, high off the ground.
|tip The platform almost wraps around the whole tower.
use the Soveriegn Rod##41366
|tip Use it on his corpse.
Turn the Leaper |q 12893/3 |goto 46.08,20.83
step
talk Baron Sliver##29804
|tip On the ground, outside the building.
turnin Free Your Mind##12893 |goto 44.15,24.68
accept If He Cannot Be Turned##12896 |goto 44.15,24.68
step
Enter the building |goto 43.71,23.67 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
click General's Weapon Rack##191779
|tip Inside the building.
|tip Be careful, a level 80 elite enemy will appear and attack you.
|tip If you have trouble, try to find someone to help you.
|tip It is important to get this quest done, since it unlocks a quest hub.
kill General Lightsbane##29851 |q 12896/1 |goto 44.72,19.76
step
Leave the building |goto 43.71,23.67 < 30 |walk |only if subzone("The Shadow Vault") and _G.IsIndoors()
talk Ground Commander Koup##31808
|tip Standing on the ground.
turnin Joining the Assault##13341 |goto 62.56,51.33
accept Assault by Air##13309 |goto 62.56,51.33 |only if subzone("The Valley of Lost Hope")
step
click Skybreaker Suppression Turret
|tip It looks like a gun mounted on the front of the airplane.
Man the Suppression Turret |invehicle |goto 62.47,50.79 |q 13309
|only if haveq(13309) or completedq(13309)
step
_As You Fly:_
Blind Ymirheim Spear Guns
|tip They look like metal dragon heads with harpoons sticking out of them.
|tip They are mounted on the ground and up on buildings all around the Ymirheim area.
|tip Shoot them using the ability on your action bar.
|tip They will be blinded by the smoke and won't shoot at you.
|tip You need to protect the airplane you're in as the Kor'kron Infiltrators get dropped around the area.
|tip The infiltrators will be dropped automatically as you fly.
Drop #4# Skybreaker Infiltrators |q 13309/1
|only if haveq(13309) or completedq(13309)
step
Return to Ground Commander Koup |outvehicle |goto 62.56,51.33 |q 13309 |notravel
|only if haveq(13309) or completedq(13309)
step
talk Ground Commander Koup##31808
turnin Assault by Air##13310 |goto 62.56,51.33
|only if haveq(13309) or completedq(13309)
step
talk Skybreaker Squad Leader##31737
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Assault by Ground##13284 |goto 62.78,51.62
stickystart "Slay_Ymirheim_Vrykul"
step
Watch the dialogue
|tip Follow the Skybreaker Squad Leader and his group, and help them fight as they walk.
|tip They eventually walk to this location up the path.
|tip At least 4 of the troops must survive.
Escort #4# Alliance Troops to Ymirheim |q 13284/1 |goto 60.01,53.34
|only if haveq(13284) or completedq(13284)
step
label "Slay_Ymirheim_Vrykul"
Kill enemies around this area
|tip They look like large blue humans.
|tip You can find them all around the Ymirheim area. |notinsticky
Slay #20# Ymirheim Vrykul |q 13336/1 |goto 58.74,54.71
|only if haveq(13336) or completedq(13336)
step
talk Saronite Mine Slave##31397+
|tip They look like friendly NPCs mining all throughout Saronite Mines.
|tip Be careful to avoid Foreman Thaldrin, an elite enemy near the back of the mine.
Tell them _"Go on, you're free. Get out of here!"_
|tip Some of them may attack you.
Rescue #10# Saronite Mine Slaves |q 13300/1 |goto 56.82,57.47
|only if haveq(13300) or completedq(13300)
step
Leave the cave |goto 56.82,57.47 < 30 |walk |only if subzone("Saronite Mines") and _G.IsIndoors()
talk Frazzle Geargrinder##31776
|tip Outside, near the building.
turnin Get to Ymirheim!##13296 |goto 56.99,62.57
step
_NOTE:_
The Next Quest is a PVP Daily Quest
|tip Would you like to complete it?
|tip It's very easy and can be completed quickly.
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Alliance)! |confirm |next "PVP_King_Of_The_Mountain"
No, Skip It |confirm |next "PVP_King_Of_The_Mountain_SKIP"
|only if subzone("Ymirheim")
step
label "PVP_King_Of_The_Mountain"
talk Frazzle Geargrinder##31776
accept King of the Mountain##13280 |goto Icecrown 56.99,62.57
|only if subzone("Ymirheim")
step
clicknpc Geargrinder's Jumpbot##31736
Take Control of Geargrinder's Jumpbot |invehicle |goto 57.00,62.60 |q 13280
|only if haveq(13280) or completedq(13280)
step
Jump Up to the Mountain Peak
|tip Spam the "Jump Jets" ability on your action.
|tip You can move straight up the mountain without stopping.
Locate the Ymirheim Peak Skulls
|tip They look like a pile of skulls on the ground on the mountain peak.
|tip Use the "Plant Alliance Battle Standard" ability next to the skulls.
Plant the Alliance Battle Standard |q 13280/1 |goto 54.86,60.13
|only if haveq(13280) or completedq(13280)
step
Release Geargrinder's Jumpbot |outvehicle |goto 54.86,60.13 |q 13280
|tip Click the red arrow on your action bar.
|only if haveq(13280) or completedq(13280)
step
talk Frazzle Geargrinder##31776
turnin King of the Mountain##13280 |goto 56.99,62.57
|only if haveq(13280) or completedq(13280)
step
label "PVP_King_Of_The_Mountain_SKIP"
talk Frazzle Geargrinder##31776
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Frazzle Geargrinder##31776 |goto Icecrown 56.99,62.57 |q 13231
step
talk Dying Soldier##31304+
|tip They look like alliance soldiers laying on the ground.
|tip You won't be able to talk to them if they are already dead.
|tip You can find them all around the Broken Front Area.
Tell them _"Stay with me, friend. I must know what happened here."_
Question the Dying Soldier |q 13231/1 |goto 66.75,64.04
step
talk Dying Soldier##31304
|tip The Dying Soldier you talked to in the previous step.
accept Finish Me!##13232 |goto 66.75,64.04
step
talk Dying Soldier##31304+
|tip They look like alliance soldiers laying on the ground around this area.
|tip You won't be able to talk to them if they are already dead.
|tip You can find them all around the Broken Front Area.
|tip You can do this while being mounted.
Tell them _"Travel well, hero of the Alliance!"_
Slay #5# Dying Alliance Soldiers |q 13232/1 |goto 69.82,64.53
step
talk Highlord Tirion Fordring##31044
turnin A Hero Remains##13072 |goto 79.79,71.76
accept The Keeper's Favor##13073 |goto 79.79,71.76
step
talk Arch Druid Lilliandra##30630
Tell her _"It's a pleasure to meet you as well, Archdruid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?"_
clicknpc Moonglade Portal##32790
|tip It appears nearby.
Teleport to Moonglade |complete zone("Moonglade") |goto 87.06,77.02 |q 13073
step
talk Keeper Remulos##11832
turnin The Keeper's Favor##13073 |goto Moonglade 36.20,41.81
accept Hope Within the Emerald Nightmare##13074 |goto Moonglade 36.20,41.81
step
click Emerald Acorn##192676+
|tip They look like brown pinecones on the ground, usually near trees.
|tip You can find them all around the Shrine of Remulos area.
collect 3 Emerald Acorn##43006 |q 13074/1 |goto 34.63,41.48
step
Wake from the Dream |nobuff spell:57413 |q 13074
|tip Right-click the "Fitful Dream" buff near your minimap.
step
talk Keeper Remulos##11832
turnin Hope Within the Emerald Nightmare##13074 |goto 36.20,41.81
accept The Boon of Remulos##13075 |goto 36.20,41.81
step
talk Keeper Remulos##11832
Tell him _"I wish to return to Arch Druid Lilliandra."_
Click the Moonglade Return Portal that appears nearby
Return to Icecrown |complete zone("Icecrown") |goto 36.20,41.81 |q 13075
step
talk Crusader Bridenbrad##30562
turnin The Boon of Remulos##13075 |goto Icecrown 79.85,30.82
accept Time Yet Remains##13076 |goto Icecrown 79.85,30.82
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13231
step
_On the Skybreaker Airship:_
talk Knight-Captain Drosche##32302
|tip At the very top of the airship.
turnin Blood of the Chosen##13336
|only if haveq(13336) or completedq(13336)
step
_On the Skybreaker Airship:_
talk Absalan the Pious##31259
|tip He walks around the rear of the ship, on the main and top decks.
turnin Slaves to Saronite##13300
|only if haveq(13300) or completedq(13300)
step
_On the Skybreaker Airship:_
talk High Captain Justin Bartlett##30344
|tip Inside the airship, in the room with the yellow windows.
turnin The Broken Front##13231
turnin Finish Me!##13232
accept ...All the Help We Can Get.##13286
accept Your Attention, Please##13290
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin If He Cannot Be Turned##12896
accept The Shadow Vault##12898
turnin ...All the Help We Can Get.##13286
accept Poke and Prod##13237
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin Your Attention, Please##13290
accept Borrowed Technology##13291
step
talk Ground Commander Koup##31808
|tip Standing on the ground.
turnin Assault by Ground##13284 |goto 62.56,51.33
|only if haveq(13284) or completedq(13284)
step
talk Baron Sliver##29343
turnin The Shadow Vault##12898 |goto 42.84,24.92
accept The Duke##12938 |goto 42.84,24.92
accept Blackwatch##13106 |goto 42.84,24.92
step
talk Morlia Doomwing##30314
fpath The Shadow Vault |goto 43.75,24.37
step
Enter the building |goto 43.72,23.65 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
talk Duke Lankral##30002
|tip Inside the building.
turnin The Duke##12938 |goto 44.66,20.34
accept Honor Challenge##12939 |goto 44.66,20.34
step
Leave the building |goto 43.72,23.65 < 30 |walk |only if not subzone("The Shadow Vault") and _G.IsIndoors()
talk The Leaper##30074
|tip He walks around this area.
accept Eliminate the Competition##12955 |goto 43.63,25.13
stickystart "Challenge_And_Defeat_Mjordin_Combatants"
step
talk Efrem the Faithful##30081
Tell him _"I challenge you to a duel, Scarlet scum!"_
kill Efrem the Faithful##30081
|tip He will eventually surrender.
Defeat Efrem the Faithful |q 12955/2 |goto 37.86,25.12
step
talk Tinky Wickwhistle##30162
Tell her _"Sorry, Tinky, but I can't afford you as a distraction while I'm doing what needs to be done here."_
kill Tinky Wickwhistle##30162
|tip She will eventually surrender.
Defeat Tinky Wickwhistle |q 12955/4 |goto 36.14,23.57
step
talk Sigrid Iceborn##30086
Tell her _"I've heard that vrykul women cannot fight at all. If you wish to prove me wrong, you can try."_
kill Sigrid Iceborn##30086
|tip She will eventually surrender.
Defeat Sigrid Iceborn |q 12955/1 |goto 37.07,22.47
step
talk Onu'zun##30180
Tell him _"I have bad news for you Onu'zun: I'm gonna have to cut short your dreams!"_
kill Onu'zun##30180
|tip He will eventually surrender.
Defeat Onu'zun |q 12955/3 |goto 37.86,22.93
step
label "Challenge_And_Defeat_Mjordin_Combatants"
use the Challenge Flag##41372
|tip Use it on Mjordin Combatants.
|tip They look like large humans fighting around this area.
kill Mjordin Combatant##30037+
Challenge and Defeat #6# Mjordin Combatants |q 12939/1 |goto 37.21,23.81
step
talk The Leaper##30074
|tip He walks around this area.
turnin Eliminate the Competition##12955 |goto 43.63,25.13
accept The Bone Witch##12999 |goto 43.63,25.13
step
Enter the building |goto 43.72,23.65 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
talk Duke Lankral##30002
|tip Inside the building.
turnin Honor Challenge##12939 |goto 44.66,20.34
accept Shadow Vault Decree##12943 |goto 44.66,20.34
step
talk Runesmith Balehammer##30336
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Runesmith Balehammer##30336 |goto 44.85,22.69 |q 12943
step
Leave the building |goto 43.72,23.65 < 30 |walk |only if not subzone("The Shadow Vault") and _G.IsIndoors()
Enter the building |goto 39.11,23.99 < 20 |walk |only if not (subzone("Ufrang's Hall") and _G.IsIndoors())
talk Vaelen the Flayed##30056
|tip Inside the building.
|tip Follow the path around to get to him.
accept Get the Key##12949 |goto 41.04,23.87
step
use the Shadow Vault Decree##41776
|tip Use it on Thane Ulfrang the Mighty.
|tip Inside the building.
Watch the dialogue
kill Thane Ulfrang the Mighty##29919 |q 12943/1 |goto 40.12,23.93
step
Leave the building |goto 39.11,23.99 < 20 |walk |only if subzone("Ufrang's Hall") and _G.IsIndoors()
kill Instructor Hroegar##29915
|tip He looks like a larger human wearing a white cape.
|tip He walks around this area.
collect Key to Vaelan's Chains##41843 |q 12949/1 |goto 37.15,23.21
step
Enter the building |goto 39.11,23.99 < 20 |walk |only if not (subzone("Ufrang's Hall") and _G.IsIndoors())
talk Vaelen the Flayed##30056
|tip Inside the building.
|tip Follow the path around to get to him.
turnin Get the Key##12949 |goto 41.04,23.87
accept Let the Baron Know##12951 |goto 41.04,23.87
step
Leave the building |goto 39.11,23.99 < 20 |walk |only if subzone("Ufrang's Hall") and _G.IsIndoors()
talk Baron Sliver##29343
turnin Let the Baron Know##12951 |goto 42.84,24.92
accept Vaelen Has Returned##13085 |goto 42.84,24.92
step
talk Baron Sliver##29343
accept Leave Our Mark##12995 |goto 42.84,24.92
|only if subzone("The Shadow Vault")
step
talk Vile##30216
|tip He looks like an abomination that walks around this area.
accept Crush Dem Vrykuls!##12992 |goto 43.16,25.15
step
Enter the building |goto 43.72,23.65 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
talk Vaelen the Flayed##30218
|tip Inside the building.
turnin Vaelen Has Returned##13085 |goto 43.11,21.07
accept Ebon Blade Prisoners##12982 |goto 43.11,21.07
step
talk Duke Lankral##30002
|tip Inside the building.
turnin Shadow Vault Decree##12943 |goto 44.66,20.34
accept Vandalizing Jotunheim##13084 |goto 44.66,20.34
step
talk Runesmith Balehammer##30336
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Runesmith Balehammer##30336 |goto 44.85,22.69 |q 13084
stickystart "Burn_Vrykul_Banners"
stickystart "Collect_Vrykul_Bones"
stickystart "Plant_Ebon_Blade_Banners_Near_Vrykul_Corpses"
stickystart "Slay_Jotunheim_Vrykul"
step
Kill enemies around this area
collect Jotunheim Cage Key##42422+ |n
click Jotunheim Cage##192135+
|tip They look like wooden cages.
|tip You can find them all around the Jotunheim area.
Set #8# Ebon Blade Prisoners Free |q 12982/1 |goto 33.59,27.83
You can find more around: |notinsticky
[29.72,36.30]
[28.69,45.38]
step
label "Burn_Vrykul_Banners"
click Vrykul Banner##191820+
|tip They look like large wooden posts with dark colored banners hanging from them.
|tip You can find them all around the Jotunheim area. |notinsticky
Burn #10# Vrykul Banners |q 13084/1 |goto 33.59,27.83
You can find more around: |notinsticky
[29.72,36.30]
[28.69,45.38]
step
label "Collect_Vrykul_Bones"
Kill enemies around this area
|tip They look like large humans. |notinsticky
|tip You can find them all around the Jotunheim area. |notinsticky
collect 15 Vrykul Bones##43089 |goto 33.59,27.83 |q 13092 |future
You can find more around: |notinsticky
[29.72,36.30]
[28.69,45.38]
step
Enter the cave |goto 32.20,42.48 < 15 |walk
talk The Bone Witch##30232
|tip Inside the cave.
turnin The Bone Witch##12999 |goto 32.50,42.94
accept Deep in the Bowels of the Underhalls##13042 |goto 32.50,42.94
accept Reading the Bones##13092 |goto 32.50,42.94
step
talk The Bone Witch##30232
|tip Inside the cave.
|tip Choose the "Fate Rune of Fleet Feet" quest reward.
|tip Use it afterward to get a run speed buff.
turnin Reading the Bones##13092 |goto 32.50,42.94
step
Enter the building |goto 32.73,32.26 < 15 |walk |only if not (subzone("The Underhalls") and _G.IsIndoors())
Follow the path |goto 34.40,34.69 < 15 |walk
talk Bethod Feigr##30406
|tip Inside the building, on the top floor.
accept Revenge for the Vargul##13059 |goto 36.11,33.07
step
Run down the stairs |goto 34.44,35.33 < 15 |walk
use Bethod's Sword##42928
|tip Inside the building, on the middle floor.
|tip You will be attacked.
Issue a Challenge Using Bethod's Sword |q 13059/1 |goto 33.11,37.68
step
Kill the enemies that attack
|tip Inside the building, on the middle floor.
kill Thane Illskar##30475 |q 13059/2 |goto 33.11,37.68
step
Run down the stairs |goto 34.28,36.24 < 15 |walk
kill Apprentice Osterkilgr##30409
|tip He walks around this area inside the building, under the stairs on the bottom floor.
|tip Don't kill him too quickly, just weaken him until he starts talking, then you can kill him.
Beat the Information Out of Apprentice Osterkilgr |q 13042/1 |goto 34.01,36.34
kill Apprentice Osterkilgr##30409 |q 13042/2 |goto 34.01,36.34
collect Dr. Terrible's "Building a Better Flesh Giant"##42772 |goto 34.01,36.34
step
use Dr. Terrible's "Building a Better Flesh Giant"##42772
accept The Sum is Greater than the Parts##13043
step
Follow the path |goto 34.38,34.66 < 15 |walk
clicknpc Nergeld##30403
|tip Inside the building, on the bottom floor.
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
kill Dr. Terrible##30404 |q 13043/1 |goto 33.37,33.17
step
Run up the stairs |goto 34.68,35.71 < 15 |walk
talk Bethod Feigr##30406
|tip Inside the building, on the top floor.
turnin Revenge for the Vargul##13059 |goto 36.11,33.07
step
label "Plant_Ebon_Blade_Banners_Near_Vrykul_Corpses"
Kill enemies around this area
|tip They look like large humans. |notinsticky
|tip Inside the building. |notinsticky			|only if subzone("The Underhalls")
|tip You can find them all around the Jotunheim area. |notinsticky
use the Ebon Blade Banner##42480
|tip Use it on their corpses.
Plant #15# Ebon Blade Banners near Vrykul Corpses |q 12995/1 |goto 34.60,34.98
|only if haveq(12995) or completedq(12995)
step
label "Slay_Jotunheim_Vrykul"
Kill enemies around this area
|tip They look like large humans. |notinsticky
|tip Inside the building. |notinsticky			|only if subzone("The Underhalls")
|tip You can find them all around the Jotunheim area. |notinsticky
Slay #15# Jotunheim Vrykul |q 12992/1 |goto 34.60,34.98
step
Leave the building on the top floor |goto 32.72,32.26 < 15 |walk |only if subzone("The Underhalls") and _G.IsIndoors()
Enter the cave |goto 32.20,42.48 < 15 |walk
talk The Bone Witch##30232
|tip Inside the cave.
turnin Deep in the Bowels of the Underhalls##13042 |goto 32.50,42.94
turnin The Sum is Greater than the Parts##13043 |goto 32.50,42.94
accept The Art of Being a Water Terror##13091 |goto 32.50,42.94
step
click Lock Gate##192774
Control a Water Terror |invehicle |goto 31.36,41.22 |q 13091
step
Kill enemies around this area
|tip They look like large humans.
|tip You can find them all around the Jotunheim area.
|tip Use the abilities on your action bar.
Slay #10# Jotunheim Vrykul While Possessing a Water Terror |q 13091/1 |goto 31.45,39.66
step
Stop Controlling the Water Terror |outvehicle |q 13091
|tip Click the red arrow on your action bar.
step
Enter the cave |goto 32.20,42.48 < 15 |walk
talk The Bone Witch##30232
|tip Inside the cave.
turnin The Art of Being a Water Terror##13091 |goto 32.50,42.94
accept Through the Eye##13121 |goto 32.50,42.94
step
talk Baron Sliver##29343
turnin Leave Our Mark##12995 |goto 42.84,24.92
|only if haveq(12995) or completedq(12995)
step
talk Vile##30216
|tip He looks like and abomination that walks around this area.
turnin Crush Dem Vrykuls!##12992 |goto 43.16,25.15
accept Vile Like Fire!##13071 |goto 43.16,25.15 |only if subzone("The Shadow Vault")
step
Enter the building |goto 43.73,23.63 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
talk Vaelen the Flayed##30218
|tip Inside the building.
turnin Ebon Blade Prisoners##12982 |goto 43.11,21.07
step
talk Duke Lankral##30002
|tip Inside the building.
turnin Vandalizing Jotunheim##13084 |goto 44.66,20.33
step
talk Runesmith Balehammer##30336
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Runesmith Balehammer##30336 |goto 44.85,22.69 |q 13121
step
Leave the building |goto 43.73,23.63 < 30 |walk |only if subzone("The Shadow Vault") and _G.IsIndoors()
talk Baron Sliver##29343
accept To the Rise with all Due Haste!##12806 |goto 42.84,24.92
step
talk The Leaper##30074
|tip He walks around this area.
accept Shoot 'Em Up##13069 |goto 43.63,25.13
|only if subzone("The Shadow Vault")
step
clicknpc Jotunheim Rapid-Fire Harpoon##30337+
|tip They look like metal dragon heads with spears sticking out of their mouths, mounted on the ground around this area.
Control a Harpoon Gun |invehicle |goto 32.65,23.98 |q 13069
|only if haveq(13069) or completedq(13069)
step
Shoot Down #15# Jotunheim Proto-Drakes & Their Riders |q 13069/1
|tip They look like dragons flying in the air nearby.
|tip Use the abilities on your action bar.
|only if haveq(13069) or completedq(13069)
step
Leave the Harpoon Gun |outvehicle |q 13069
|tip Click the red arrow on your action bar.
|only if haveq(13069) or completedq(13069)
step
clicknpc Njorndar Proto-Drake##30272+
|tip They look like dragons on the ground around this area.
Borrow a Drake |invehicle |goto 27.79,37.80 |q 13071
|only if haveq(13071) or completedq(13071)
step
Set #8# Vrykul Buildings Ablaze |q 13071/1 |goto 29.38,41.17
|tip Use the "Strafe Jotunheim Building" ability on your action bar.
|tip Use it near the tops of buildings.
|tip You can find buildings all around the Jotunheim area.
|tip Use the "Burst of Speed" ability on your action bar to move faster.
|only if haveq(13071) or completedq(13071)
step
Release the Drake |outvehicle |q 13071
|tip Click the red arrow on your action bar.
|tip Get to a safe area first.
|only if haveq(13071) or completedq(13071)
step
talk Lord-Commander Arete##29344
|tip On the platform on the side of the cliff.
turnin To the Rise with all Due Haste!##12806 |goto 19.54,48.15
accept The Story Thus Far...##12807 |goto 19.54,48.15
step
talk Lord-Commander Arete##29344
|tip On the platform on the side of the cliff.
Tell him _"Lord-Commander, I would hear your tale."_
Listen to Lord-Commander Arete's Tale |q 12807/1 |goto 19.54,48.15
step
talk Lord-Commander Arete##29344
|tip On the platform on the side of the cliff.
turnin The Story Thus Far...##12807 |goto 19.54,48.15
accept Blood in the Water##12810 |goto 19.54,48.15
step
talk Setaal Darkmender##29396
|tip On the platform on the side of the cliff.
accept From Their Corpses, Rise!##12813 |goto 19.67,48.39
|only if subzone("Death's Rise")
step
talk Aurochs Grimbane##29456
|tip On the platform on the side of the cliff.
|tip He walks around this area on a horse.
accept Intelligence Gathering##12838 |goto 19.85,48.01
|only if subzone("Death's Rise")
step
talk Dreadwind##31078
fpath Death's Rise |goto 19.33,47.77
stickystart "Collect_Onslaught_Intel_Documents"
stickystart "Transform_Scarlet_Onslaught_Corpses"
step
Kill Onslaught enemies around this area
|tip They look like humans in red and white armor all around the Onslaught Harbor area.
|tip They can also be flying in the air on white birds.
collect Scarlet Onslaught Trunk Key##40652+ |n
click Scarlet Onslaught Trunk##191543+
|tip They look like small wooden boxes on the ground.
|tip You can find them all around the Onslaught Harbor area.
|tip You may not always find a quest item in the chests.
collect Note from the Grand Admiral##40666 |n
use the Note from the Grand Admiral##40666
accept The Grand (Admiral's) Plan##12839 |goto 9.31,40.48
|only if haveq(12838)
step
label "Collect_Onslaught_Intel_Documents"
Kill Onslaught enemies around this area											|notinsticky
|tip They look like humans in red and white armor all around the Onslaught Harbor area.					|notinsticky
|tip They can also be flying in the air on white birds.									|notinsticky
collect Scarlet Onslaught Trunk Key##40652+ |n										|notinsticky
click Scarlet Onslaught Trunk##191543+											|notinsticky
|tip They look like small wooden boxes on the ground.									|notinsticky
|tip You can find them all around the Onslaught Harbor area.								|notinsticky
|tip You may not always find a quest item in the chests.								|notinsticky
collect 5 Onslaught Intel Documents##40640 |q 12838/1 |goto 9.31,40.48
|tip This is a daily quest that isn't required, and can take while to finish.						|notinsticky
|tip If you don't want to take the time to finish it, you can abandon the "Intelligence Gathering" quest.		|notinsticky
|only if haveq(12838) or completedq(12838)
step
label "Transform_Scarlet_Onslaught_Corpses"
Kill Onslaught enemies around this area
|tip They look like humans in red and white armor all around the Onslaught Harbor area.		|notinsticky
|tip They can also be flying in the air on white birds.						|notinsticky
use the Darkmender's Tincture##40587
|tip Use it on their corpses.
Transform #10# Scarlet Onslaught Corpses |q 12813/1 |goto 9.31,40.48
|only if haveq(12813) or completedq(12813)
step
kill Ravenous Jaws##29392+
|tip They look like hammerhead sharks.
|tip You can find them underwater around the outskirts, and inside the Onslaught Harbor area.
use the Gore Bladder##40551
|tip Use it on their corpses.
Collect Blood from #10# Ravenous Jaws |q 12810/1 |goto 13.87,46.23
step
talk Lord-Commander Arete##29344
|tip On the platform on the side of the cliff.
turnin Blood in the Water##12810 |goto 19.54,48.15
accept You'll Need a Gryphon##12814 |goto 19.54,48.15
turnin The Grand (Admiral's) Plan##12839 |goto 19.54,48.15
accept In Strict Confidence##12840 |goto 19.54,48.15
step
talk Setaal Darkmender##29396
|tip On the platform on the side of the cliff.
turnin From Their Corpses, Rise!##12813 |goto 19.67,48.39
|only if haveq(12813) or completedq(12813)
step
talk Aurochs Grimbane##29456
|tip On the platform on the side of the cliff.
|tip He walks around this area on a horse.
turnin Intelligence Gathering##12838 |goto 19.85,48.01
|only if haveq(12838) or completedq(12838)
step
talk Initiate Claget##30067
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Initiate Claget##30067 |goto 20.52,47.78 |q 12840
step
kill Captain Hartford##29490
|tip On the top deck of the ship.
Beat and Kill Captain Hartford for Information |q 12840/2 |goto 7.03,41.92
step
kill Captain Welsington##29489
|tip On the top deck of the ship.
Beat and Kill Captain Welsington for Information |q 12840/1 |goto 5.67,41.94
step
kill Onslaught Gryphon Rider##29333+
|tip They look like humans flying on white birds.
|tip You can find them all around the Onslaught Harbor area.
collect Onslaught Gryphon Reins##40970 |goto 8.26,43.23 |q 12814
step
use the Onslaught Gryphon Reins##40970
Take Control of an Onslaught Gryphon |invehicle |q 12814
step
Deliver the Onslaught Gryphon to Uzo Deathcaller |q 12814/1 |goto 19.64,47.80 |notravel
|tip Use the ability on your action bar.
|tip Next to Uzo Deathcaller.
|tip On the platform on the side of the cliff.
step
talk Uzo Deathcaller##29405
|tip On the platform on the side of the cliff.
turnin You'll Need a Gryphon##12814 |goto 19.64,47.80
accept No Fly Zone##12815 |goto 19.64,47.80 |only if subzone("Death's Rise")
step
talk Lord-Commander Arete##29344
|tip On the platform on the side of the cliff.
turnin In Strict Confidence##12840 |goto 19.54,48.15
step
kill 10 Onslaught Gryphon Rider##29333 |q 12815/1 |goto 8.26,43.23
|tip They look like humans flying on white birds.
|tip You can find them all around the Onslaught Harbor area.
|only if haveq(12815) or completedq(12815)
step
talk Uzo Deathcaller##29405
|tip On the platform on the side of the cliff.
turnin No Fly Zone##12815 |goto 19.64,47.80
|only if haveq(12815) or completedq(12815)
step
talk Initiate Claget##30067
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Initiate Claget##30067 |goto 20.52,47.78 |q 13121
step
Enter the building |goto 25.07,61.25 < 15 |walk |only if not (subzone("Kul'galar Keep") and _G.IsIndoors())
click Eye of the Lich King##192861
|tip It looks like a floating blue orb.
|tip Inside the building.
|tip Follow the path around to get to it.
Choose _"Grasp the Eye of the Lich King and focus your will upon it to scry for important information."_
Watch the dialogue
Gain Information for The Bone Witch |q 13121/1 |goto 26.2,62.3
step
Leave the building |goto 25.07,61.25 < 15 |walk |only if subzone("Kul'galar Keep") and _G.IsIndoors()
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Blackwatch##13106 |goto 35.39,66.32
accept Where Are They Coming From?##13117 |goto 35.39,66.32
step
click Summoning Altar##192858+
|tip They look like small stone stages with green summoning circles on them on the ground.
Investigate a Summoning Altar |q 13117/1 |goto 37.06,71.09
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Where Are They Coming From?##13117 |goto 35.39,66.32
accept Destroying the Altars##13119 |goto 35.39,66.32
accept Death's Gaze##13120 |goto 35.39,66.32
step
click Cauldron Area Orb Stand##192916
Place the Orb in the Cauldron Area |q 13120/3 |goto 30.55,65.11
step
click Abomination Lab Orb Stand##192914
Place the Orb in the Abomination Lab |q 13120/1 |goto 32.59,70.55
step
click Flesh Giant Lab Orb Stand##192915
Place the Orb in the Flesh Giant Lab |q 13120/2 |goto 34.59,69.64
step
kill Master Summoner Zarod##30746
|tip He looks like a lich wearing a purple robe.
|tip He walks around this area.
collect Master Summoner's Staff##43159 |goto 37.14,71.11 |q 13119
step
use the Master Summoner's Staff##43159
|tip You can do this while flying.
Destroy the First Summoning Altar |q 13119/1 |goto 36.75,70.72
step
use the Master Summoner's Staff##43159
|tip You can do this while flying.
Destroy the Second Summoning Altar |q 13119/2 |goto 36.60,71.64
step
use the Master Summoner's Staff##43159
|tip You can do this while flying.
Destroy the Fourth Summoning Altar |q 13119/4 |goto 37.36,71.52
step
use the Master Summoner's Staff##43159
|tip You can do this while flying.
Destroy the Third Summoning Altar |q 13119/3 |goto 37.83,70.74
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Destroying the Altars##13119 |goto 35.39,66.32
turnin Death's Gaze##13120 |goto 35.39,66.32
accept Spill Their Blood##13134 |goto 35.39,66.32
stickystart "Accept_Jagged_Shards"
stickystart "Destroy_Vats_Of_Embalming_Fluid"
stickystart "Shatter_Blood_Orbs"
stickystart "Collect_Jagged_Shards"
step
talk Father Kamaros##31279
accept I'm Not Dead Yet!##13221 |goto 31.76,64.80
step
Watch the dialogue
|tip Follow Father Kamaros and protect him as he walks.
|tip He eventually walks to this location.
Escort Father Kamaros to Safety |q 13221/1 |goto 31.98,57.02
step
label "Accept_Jagged_Shards"
kill Spiked Ghoul##30597+
|tip They look like grey zombies with spikes on the backs.
|tip You can find them all around the Fleshwerks area. |notinsticky
collect Jagged Shard##43242 |n
use the Jagged Shard##43242
accept Jagged Shards##13136 |goto 32.22,68.09
step
label "Destroy_Vats_Of_Embalming_Fluid"
click Embalming Fluid##192932+
|tip They look like larger glass orbs with green liquid in them, in short metal stands.
|tip You can find them all around the Fleshwerks area. |notinsticky
Destroy #5# Vats of Embalming Fluid |q 13134/2 |goto 32.22,68.09
step
label "Shatter_Blood_Orbs"
click Blood Orb##192933+
|tip They look like smaller glass orbs with red liquid in them, in taller metal stands.
|tip You can find them all around the Fleshwerks area. |notinsticky
Shatter #5# Blood Orbs |q 13134/1 |goto 32.22,68.09
step
label "Collect_Jagged_Shards"
kill Spiked Ghoul##30597+
|tip They look like grey zombies with spikes on the backs.
|tip You can find them all around the Fleshwerks area. |notinsticky
collect 10 Jagged Shard##43242 |q 13136/1 |goto 32.22,68.09
|only if haveq(13136) or completedq(13136)
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Spill Their Blood##13134 |goto 35.39,66.32
step
talk Crusader Olakin Sainrith##30708
|tip On top of the mountain.
turnin Jagged Shards##13136 |goto 35.50,66.45
accept I'm Smelting... Smelting!##13138 |goto 35.50,66.45
accept The Runesmiths of Malykriss##13140 |goto 35.50,66.45
stickystart "Collect_Runed_Saronite_Plates"
step
use the Bag of Jagged Shards##43289
|tip Next to a huge vent on the ground with a tornado of fire rising out of it.
collect Smelted Metal Bar##43288 |q 13138/1 |goto 58.09,70.87
step
label "Collect_Runed_Saronite_Plates"
kill Skeletal Runesmith##30921+
|tip They look like skeletons.
|tip You can find them alll around the Malykriss: The Vile Hold area. |notinsticky
collect 5 Runed Saronite Plate##43291 |q 13140/1 |goto 58.91,73.64
stickystart "Collect_Abandoned_Armor"
stickystart "Collect_Abandoned_Helms"
stickystart "Kill_Hulking_Abominations"
stickystart "Kill_Malefic_Necromancers"
stickystart "Kill_Shadow_Adepts"
step
click Pile of Bones##193199+
|tip They look like small groups of white bones on the ground.
|tip You can find them all around the Broken Front area.
collect 3 Pile of Bones##43609 |goto 68.89,65.59 |q 13291
step
label "Collect_Abandoned_Armor"
click Abandoned Armor##193201+
|tip They look like metal armor chest pieces on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Armor##43616 |goto 68.89,65.59 |q 13291
step
label "Collect_Abandoned_Helms"
click Abandoned Helm##193200+
|tip They look like small metal helmets on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Helm##43610 |goto 68.89,65.59 |q 13291
step
use the Smuggled Solution##44048
|tip Use it multiple times.
|tip A skeletal dragon will fly down and die each time.
Conduct #3# Field Tests |q 13291/1 |goto 68.89,65.59
step
label "Kill_Hulking_Abominations"
kill 5 Hulking Abomination##31140 |q 13287/1 |goto 68.89,65.59
|tip You can find them all around the Broken Front area. |notinsticky
step
label "Kill_Malefic_Necromancers"
kill 5 Malefic Necromancer##31155 |q 13287/2 |goto 68.89,65.59
|tip They look like skeletons wearing brown capes.
|tip You can find them all around the Broken Front area. |notinsticky
step
label "Kill_Shadow_Adepts"
kill 5 Shadow Adept##31145 |q 13287/3 |goto 68.89,65.59
|tip They look like humans channeling a green spell on objects.
|tip You can find them all around the Broken Front area. |notinsticky
step
talk Highlord Tirion Fordring##31044
turnin Time Yet Remains##13076 |goto 79.79,71.76
accept The Touch of an Aspect##13077 |goto 79.79,71.76
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin The Touch of an Aspect##13077 |goto Dragonblight 59.83,54.66
accept Dahlia's Tears##13078 |goto Dragonblight 59.83,54.66
step
click Dahlia's Tears##192773+
|tip They look like small yellow flowers on the ground around this area.
collect Dahlia's Tears##43084 |q 13078/1 |goto 51.98,47.10
You can find more around: |notinsticky
[50.36,52.09]
[43.92,51.88]
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin Dahlia's Tears##13078 |goto 59.83,54.66
accept The Boon of Alexstrasza##13079 |goto 59.83,54.66
step
talk Crusader Bridenbrad##30562
turnin The Boon of Alexstrasza##13079 |goto Icecrown 79.85,30.82
accept Hope Yet Remains##13080 |goto Icecrown 79.85,30.82
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13237
step
_On the Skybreaker Airship:_
talk Absalan the Pious##31259
|tip He walks around the rear of the ship, on the main and top decks.
turnin I'm Not Dead Yet!##13221
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin Poke and Prod##13237
accept That's Abominable!##13264
accept Exploiting an Opening##13386
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin Borrowed Technology##13291
accept The Solution Solution##13292 |only if zone("Icecrown")
stickystart "Collect_Abandoned_Armor_DAILY"
stickystart "Collect_Abandoned_Helms_DAILY"
stickystart "Collect_Chilled_Abomination_Guts"
step
click Pile of Bones##193199+
|tip They look like small groups of white bones on the ground.
|tip You can find them all around the Broken Front area.
collect 3 Pile of Bones##43609 |goto 68.89,65.59 |q 13292
|only if haveq(13292) or completedq(13292)
step
label "Collect_Abandoned_Armor_DAILY"
click Abandoned Armor##193201+
|tip They look like metal armor chest pieces on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Armor##43616 |goto 68.89,65.59 |q 13292
|only if haveq(13292) or completedq(13292)
step
label "Collect_Abandoned_Helms_DAILY"
click Abandoned Helm##193200+
|tip They look like small metal helmets on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Helm##43610 |goto 68.89,65.59 |q 13292
|only if haveq(13292) or completedq(13292)
step
use Smuggled Solution##44048
|tip Use it multiple times.
|tip A skeletal dragon will fly down and die each time.
Destroy #3# Frostbrood Skytalons |q 13292/1 |goto 68.89,65.59
|only if haveq(13292) or completedq(13292)
step
label "Collect_Chilled_Abomination_Guts"
kill Hulking Abomination##31140+
|tip You can find them south and southeast of this location.
collect Chilled Abomination Guts##43966+ |n
|tip You can only have 1 at a time.
use the Abomination Reanimation Kit##43968
|tip You will take control of a Hulking Abomination.
|tip Send your Hulking Abomination into groups of undead enemies near this location.
|tip Gather them up so that a group of many are attacking your abomination.
|tip Use the "Burst at the Seams" ability on your pet action bar when you have many attacking your abomination.
|tip Your abomination will blow up and kill the enemies.
|tip Do this multiple times.
Explode #15# Icy Ghouls |q 13288/1 |goto 67.92,60.67
Explode #15# Vicious Geists |q 13288/2 |goto 67.92,60.67
Explode #15# Risen Alliance Soldiers |q 13288/3 |goto 67.92,60.67
step
Fly through the slits in the bottom of the building |goto 50.98,86.07 < 40 |walk
talk Captain Kendall##31444
|tip Inside the building, on the ground floor.
turnin Exploiting an Opening##13386 |goto 51.75,86.69
accept Securing the Perimeter##13387 |goto 51.75,86.69
step
kill 10 Hulking Horror##31413 |q 13387/1 |goto 53.05,89.49
|tip Inside the building, on the ground floor.
|tip You can find them all around this area.
step
talk Captain Kendall##31444
|tip Inside the building, on the ground floor.
turnin Securing the Perimeter##13387 |goto 51.75,86.69
accept Set it Off!##13388 |goto 51.75,86.69
step
click Saronite Bomb Stack##193400
|tip Inside the building, on the ground floor.
|tip You will fall down the huge whole after you accept the quest.
turnin Set it Off!##13388 |goto 54.35,86.24
accept A Short Fuse##13389 |goto 54.35,86.24
step
click Pulsing Crystal##193195
|tip Underwater.
|tip Underground, beneath Icecrown Citadel.
turnin A Short Fuse##13389 |goto 53.99,87.29
accept A Voice in the Dark##13390 |goto 53.99,87.29
step
talk Matthias Lehner##31237
|tip Underground, beneath Icecrown Citadel.
|tip Be careful to not accidentally click the portal near him.
turnin A Voice in the Dark##13390 |goto 53.81,86.93
accept Time to Hide##13391 |goto 53.81,86.93
step
kill Faceless Lurker##31691+
|tip They look like elephant people.
|tip Underground around this area.
|tip You can find them all around the Naz'anak: The Forgotten Depths area.
collect 3 Faceless One's Blood##44001 |q 13391/1 |goto 55.23,86.71
step
talk Matthias Lehner##31237
|tip Underground, beneath Icecrown Citadel.
|tip Be careful to not accidentally click the portal near him.
turnin Time to Hide##13391 |goto 53.81,86.93
accept Return to the Surface##13392 |goto 53.81,86.93
step
click Surface Portal
|tip Underground, beneath Icecrown Citadel.
Escape Naz'anak: The Forgotten Depths |complete not subzone("Naz'anak: The Forgotten Depths") |goto 53.79,86.84 |q 13392
step
talk Highlord Tirion Fordring##31044
turnin Hope Yet Remains##13080 |goto 79.79,71.76
accept The Will of the Naaru##13081 |goto 79.79,71.76
step
Watch the dialogue
|tip Rhydian will approach nearby and cast a portal.
clicknpc Portal to Shattrath##32790
Teleport to Shattrath City |complete zone("Shattrath City") |goto 79.90,71.84 |q 13081
step
talk A'dal##18481
|tip Inside the building.
|tip You will be teleported back to Dalaran after you accept the quest.
turnin The Will of the Naaru##13081 |goto Shattrath City 54.00,44.64
accept The Boon of A'dal##13082 |goto Shattrath City 54.00,44.64
step
talk Crusader Bridenbrad##30562
turnin The Boon of A'dal##13082 |goto Icecrown 79.85,30.82
step
click Bridenbrad's Possessions##192833
accept Light Within the Darkness##13083 |goto 79.78,30.83
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next couple of steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13392
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin That's Abominable!##13264 |only if haveq(13264) or completedq(13264)
turnin Return to the Surface##13392
accept Field Repairs##13393
accept Sneak Preview##13315
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin The Solution Solution##13292
|only if haveq(13292) or completedq(13292)
step
Visit the South of Aldur'thar |q 13315/1 |goto 53.93,44.68
|tip Fly over this location.
step
Visit the Central of Aldur'thar |q 13315/2 |goto 53.96,41.08
|tip Fly over this location.
step
Visit the North of Aldur'thar |q 13315/3 |goto 53.99,34.92
|tip Fly over this location.
step
Visit the Northwest of Aldur'thar |q 13315/4 |goto 51.05,34.06
|tip Fly over this location.
step
talk Vile##30216
|tip He looks like and abomination that walks around this area.
turnin Vile Like Fire!##13071 |goto 43.16,25.15
|only if haveq(13071) or completedq(13071)
step
talk The Leaper##30074
|tip He walks around this area.
turnin Shoot 'Em Up##13069 |goto 43.63,25.13
|only if haveq(13069) or completedq(13069)
step
Enter the building |goto 43.73,23.63 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
talk Runesmith Balehammer##30336
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Runesmith Balehammer##30336 |goto 44.85,22.69 |q 13168 |future
step
Leave the building |goto 43.73,23.63 < 30 |walk |only if subzone("The Shadow Vault") and _G.IsIndoors()
talk Keritose Bloodblade##30946
accept Parting Gifts##13168 |goto 44.06,24.54
step
click Eye of Dominion##193424
Choose _<Seize control of an Eidolon Watcher through the eye.>_
Seize Control of an Eidolon Watcher |q 13168/1 |goto 44.13,24.71
step
Release the Eidolon Watcher |outvehicle |q 13168
|tip Click the red arrow on your action bar.
step
talk Keritose Bloodblade##30946
turnin Parting Gifts##13168 |goto 44.06,24.54
accept An Undead's Best Friend##13169 |goto 44.06,24.54
accept Honor is for the Weak##13170 |goto 44.06,24.54
accept From Whence They Came##13171 |goto 44.06,24.54
step
click Eye of Dominion##193424
Choose _<Seize control of an Eidolon Watcher through the eye.>_
Seize Control of an Eidolon Watcher |invehicle |goto 44.13,24.71 |q 13169
stickystart "Assassinate_Restless_Lookouts"
stickystart "Banish_Scourge_Crystals"
step
Feed #18# Hungering Plaguehounds |q 13169/1 |goto 40.57,32.49
|tip Use the "Feed Hungering Plaguehound" ability on Hungering Plaguehounds.
|tip They look like demon dogs.
|tip You can find them all around the Weeping Quarry area.
|tip You can use the "Phase Jump" ability to teleport up walls.
You can find more around [37.67,41.04]
step
label "Assassinate_Restless_Lookouts"
Assassinate #20# Restless Lookouts |q 13170/1 |goto 40.57,32.49
|tip Use the "Assassinate Restless Lookout" ability on Restless Lookouts, when you are behind them.
|tip They look like ghouls.
|tip You can find them all around the Weeping Quarry area. |notinsticky
|tip You can use the "Phase Jump" ability to teleport up walls. |notinsticky
You can find more around [37.67,41.04]
step
label "Banish_Scourge_Crystals"
Banish #10# Scourge Crystals |q 13171/1 |goto 40.57,32.49
|tip Use the "Banish Scourge Crystal" ability on Scourge Crystals.
|tip They look like large purple crystals floating above stone pillars.
|tip You can find them all around the Weeping Quarry area. |notinsticky
|tip You can use the "Phase Jump" ability to teleport up walls. |notinsticky
You can find more around [37.67,41.04]
step
Release the Eidolon Watcher |outvehicle |q 13169
|tip Click the red arrow on your action bar.
step
talk Keritose Bloodblade##30946
turnin An Undead's Best Friend##13169 |goto 44.06,24.54
turnin Honor is for the Weak##13170 |goto 44.06,24.54
turnin From Whence They Came##13171 |goto 44.06,24.54
accept Seeds of Chaos##13172 |goto 44.06,24.54
accept Amidst the Confusion##13174 |goto 44.06,24.54
step
talk Keritose Bloodblade##30946
Tell him _"I am prepared to join the assault, Keritose. Do you have a skeletal gryphon ready for me?"_
Join the Assault |invehicle |goto 44.06,24.54 |q 13172
step
Kill enemies around this area
|tip Use the ability on your action bar on the enemies on the ground as you fly.
|tip You can find them all around the Weeping Quarry area.
Slaughter #80# Weeping Quarry Undead |q 13172/1 |goto 39.24,39.08
step
Stop Riding the Skeletal Gryphon |outvehicle |q 13172
|tip Click the red arrow on your action bar.
|tip Wait to do this until you know you will land in a safe area.
step
click Weeping Quarry Schedule##193406
|tip It looks like a rolled up scroll.
collect Weeping Quarry Schedule##43690 |q 13174/4 |goto 37.23,41.65
step
click Weeping Quarry Map##193405
|tip It looks like a flat brown piece of paper.
collect Weeping Quarry Map##43691 |q 13174/3 |goto 38.66,39.41
step
click Weeping Quarry Ledger##193404
|tip It looks like a rolled up scroll.
collect Weeping Quarry Ledger##43689 |q 13174/2 |goto 39.16,36.68
step
click Weeping Quarry Document##193403
|tip It looks like an unrolled scroll, under a canopy.
collect Weeping Quarry Document##43688 |q 13174/1 |goto 39.11,33.65
step
talk Keritose Bloodblade##30946
turnin Seeds of Chaos##13172 |goto 44.06,24.54
turnin Amidst the Confusion##13174 |goto 44.06,24.54
accept Vereth the Cunning##13155 |goto 44.06,24.54
step
Enter the cave |goto 32.28,42.57 < 15 |walk
talk The Bone Witch##30232
|tip Inside the cave.
turnin Through the Eye##13121 |goto 32.50,42.94
accept Find the Ancient Hero##13133 |goto 32.50,42.94
step
Enter the cave |goto 27.88,47.25 < 30 |walk |only if not (subzone("Halls of the Ancestors") and _G.IsIndoors())
talk Slumbering Mjordin##30718+
|tip They look like upright sleeping vrykul along the walls inside the building.
|tip You can find them all around the Halls of the Ancestors area.
|tip It's random, but you will eventually find Iskalder.
Choose _"Waken the slumbering mjordin to see if it is really the ancient hero, Iskalder."_
use The Bone Witch's Amulet##43166
|tip Use it on Iskalder once you find him.
|tip He will begin following you.
Click Here Once Iskalder is Following You |confirm |goto 27.29,48.23 |q 13133
step
Leave the cave |goto 27.88,47.25 < 30 |walk |only if subzone("Halls of the Ancestors") and _G.IsIndoors()
Enter the cave |goto 32.28,42.57 < 15 |walk
Deliver Iskalder to The Bone Witch |q 13133/1 |goto 32.50,42.94
|tip Inside the cave.
|tip You can fly to the cave without losing Iskalder.
step
talk The Bone Witch##30232
|tip Inside the cave.
turnin Find the Ancient Hero##13133 |goto 32.50,42.94
step
talk Crusader Olakin Sainrith##30708
|tip On top of the mountain.
turnin I'm Smelting... Smelting!##13138 |goto 35.50,66.45
turnin The Runesmiths of Malykriss##13140 |goto 35.50,66.45
accept By Fire Be Purged##13211 |goto 35.50,66.45
step
talk Darkrider Arly##30631
|tip On top of the mountain.
accept A Visit to the Doctor##13152 |goto 35.39,66.32
stickystart "Burn_Festering_Corpses"
step
Enter the cave |goto 34.43,68.39 < 10 |walk |only if not (subzone("Sanctum of Reanimation") and _G.IsIndoors())
click Metal Stake##193025
|tip Inside the cave, on the bottom floor.
Free Patches |q 13152/1 |goto 35.81,66.99
step
Watch the dialogue
|tip Inside the cave, on the bottom floor.
kill Doctor Sabnok##30992
|tip "Patches" will kill him, you don't have to fight, just stand close to them.
|tip If you choose to help kill him, be careful to not pull aggro.
Help Patches Kill Doctor Sabnok |q 13152/2 |goto 35.81,66.99
step
label "Burn_Festering_Corpses"
use Olakin's Torch##43524
|tip Use it near Festering Corpses.
|tip They look like dead soldiers on the ground.
|tip You can find them inside and outside the cave.
Burn #7# Festering Corpses |q 13211/1 |goto 34.43,68.39
step
Follow the path up and leave the cave |goto 34.43,68.39 < 10 |walk |only if subzone("Sanctum of Reanimation") and _G.IsIndoors()
talk Crusader Olakin Sainrith##30708
|tip On top of the mountain.
turnin By Fire Be Purged##13211 |goto 35.50,66.44
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin A Visit to the Doctor##13152 |goto 35.39,66.32
accept Killing Two Scourge With One Skeleton##13144 |goto 35.39,66.32
step
click Grasping Arm##193060+
|tip They look like green skeleton arms on the ground.
|tip You can find them all around the Fleshwerks area.
|tip You will gain Burning Skeleton minions.
|tip You can only have one minion at a time.
Use the Burning Skeleton Minions
|tip Stand next to Chained Abominations with your Burning Skeletons, but don't attack them yourself.
|tip They are along the edge of the platform around this area.
|tip You can fly without losing your minions.
Burn #3# Chained Abominations |q 13144/1 |goto 31.73,70.29
You can find Grasping Arms around [34.02,68.99]
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Killing Two Scourge With One Skeleton##13144 |goto 35.39,66.32
accept He's Gone to Pieces##13212 |goto 35.39,66.32
stickystart "Collect_Olakins_Torso"
stickystart "Collect_Olakins_Legs"
stickystart "Collect_Olakins_Left_Arm"
stickystart "Collect_Olakins_Right_Arm"
step
label "Collect_Olakins_Torso"
kill Corpulent Horror##30696+
|tip They look like abominations.
collect Olakin's Torso##43526 |q 13212/1 |goto 34.15,68.95
You can find more around [35.57,71.00]
step
label "Collect_Olakins_Legs"
kill Corpulent Horror##30696+ |notinsticky
|tip They look like abominations. |notinsticky
collect Olakin's Legs##43527 |q 13212/2 |goto 34.15,68.95
You can find more around [35.57,71.00]
step
label "Collect_Olakins_Left_Arm"
kill Corpulent Horror##30696+ |notinsticky
|tip They look like abominations. |notinsticky
collect Olakin's Left Arm##43528 |q 13212/3 |goto 34.15,68.95
You can find more around [35.57,71.00]
step
label "Collect_Olakins_Right_Arm"
kill Corpulent Horror##30696+ |notinsticky
|tip They look like abominations. |notinsticky
collect Olakin's Right Arm##43529 |q 13212/4 |goto 34.15,68.95
You can find more around [35.57,71.00]
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin He's Gone to Pieces##13212 |goto 35.39,66.32
accept Putting Olakin Back Together Again##13220 |goto 35.39,66.32
step
Enter the cave |goto 34.43,68.39 < 10 |walk |only if not (subzone("Sanctum of Reanimation") and _G.IsIndoors())
Follow the path |goto 34.94,66.30 < 10 |walk
click Spool of Thread##193091
|tip Inside the cave, on the top floor.
collect Spool of Thread##43567 |goto 34.70,65.99 |q 13220
step
click The Doctor's Cleaver##193092
|tip Inside the cave, on the bottom floor.
collect The Doctor's Cleaver##43568 |goto 36.61,67.57 |q 13220
step
use Crusader Olakin's Remains##43564
|tip On the stone table.
|tip Inside the cave, on the top level.
Watch the dialogue
Revive Crusader Olakin Sainrith |q 13220/1 |goto 35.59,66.72
step
Leave the cave |goto 34.43,68.39 < 10 |walk |only if subzone("Sanctum of Reanimation") and _G.IsIndoors()
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin Putting Olakin Back Together Again##13220 |goto 35.39,66.32
accept The Flesh Giant Champion##13235 |goto 35.39,66.32
step
talk Margrave Dhakar##31306
Tell him _"Let's kill this... thing... and get this over with."_
Watch the dialogue
|tip Your allies will help you fight.
kill Morbidus##30698 |q 13235/1 |goto 29.75,61.26
step
talk Darkrider Arly##30631
|tip On top of the mountain.
turnin The Flesh Giant Champion##13235 |goto 35.39,66.32
step
talk Vereth the Cunning##30944
|tip On the cliff, overlooking the valley.
turnin Vereth the Cunning##13155 |goto 54.15,71.17
accept New Recruit##13143 |goto 54.15,71.17
step
kill Lithe Stalker##30894+
|tip They look like geists on the bridge.
|tip Don't kill it, just weaken it to about 20-25% health.
use the Sigil of the Ebon Blade##43315
|tip Use it on a weakened Lithe Stalker.
|tip It will begin following you.
Subdue a Lithe Stalker |havebuff spell:58151 |goto 55.59,72.16 |q 13143
step
Watch the dialogue
|tip The Lithe Stalker will run here once you bring it close to this location.
Return the Subdued Lithe Stalker |q 13143/1 |goto 55.29,70.27
step
talk Vereth the Cunning##30944
|tip On the cliff, overlooking the valley.
turnin New Recruit##13143 |goto 54.15,71.17
accept The Vile Hold##13145 |goto 54.15,71.17
step
Explore the Icy Lookout |q 13145/3 |goto 60.81,68.70
|tip Fly near the lookout platform.
step
Explore the Blood Forge |q 13145/2 |goto 58.08,70.87
|tip Fly near the hole in the ground with a fire tornado rising out of it.
step
Explore the Runeworks |q 13145/4 |goto 59.05,73.74
|tip Fly near the blacksmith anvils.
step
Explore the Altar of Sacrifice |q 13145/1 |goto 56.18,80.49
|tip Fly near the tall stone monument.
step
talk Vereth the Cunning##30944
|tip On the cliff, overlooking the valley.
turnin The Vile Hold##13145 |goto 54.15,71.17
accept Generosity Abounds##13146 |goto 54.15,71.17
accept Matchmaker##13147 |goto 54.15,71.17
accept Stunning View##13160 |goto 54.15,71.17
step
click Eye of Dominion##193424
Choose _<Seize control of a Lithe Stalker through the eye.>_
Seize Control of a Lithe Stalker |invehicle |goto 54.25,70.62 |q 13146
step
Chain Scourge Bombs
|tip Use the "Iron Chain" ability on your action bar on Scourge Bombs.
|tip They look like large, round, spiked metal bombs on the ground.
|tip Drag the Scourge Bombs next to Lumbering Atrocities (abominations) around this area.
|tip Use the "Leap" ability on your action bar to get around faster.
Deliver #4# Scourge Bomb Gifts |q 13146/1 |goto 57.93,73.72
You can find more Scourge Bombs around [57.47,75.88]
step
Throw Rocks at Umbral Brutes
|tip Use the "Throw Rock" ability on your action bar on Umbral Brutes.
|tip They look like muscular zombies.
|tip Try to throw the rocks when they are already near skeletons.
|tip They will attack the skeletons and start fights.
|tip Use the "Leap" ability on your action bar to get around faster.
Start #5# Worker Fights |q 13147/1 |goto 59.02,73.78
step
Push Iceskin Sentries Off the Cliffs
|tip Use the "Heave" ability on your action bar next to Iceskin Sentries.
|tip They look like gargoyles perched up along the cliffs.
|tip Use the "Leap" ability on your action bar to get around faster, and jump up the cliffs.
Destroy #12# Iceskin Sentries |q 13160/1 |goto 59.01,76.27
You can find more around [60.55,72.06]
step
Release the Lithe Stalker |outvehicle |q 13160
|tip Click the red arrow on your action bar.
step
talk Vereth the Cunning##30944
|tip On the cliff, overlooking the valley.
turnin Generosity Abounds##13146 |goto 54.15,71.17
turnin Matchmaker##13147 |goto 54.15,71.17
turnin Stunning View##13160 |goto 54.15,71.17
step
kill Scavenging Geist##31847+
|tip They look like frail humanoids crouching on the ground.
|tip You can find them all around the southern part of the Valley of Lost Hope area.
collect 5 Demolisher Parts##44529 |q 13393/1 |goto 65.82,53.08
step
talk Wrecked Demolisher##31868
turnin Field Repairs##13393 |goto 68.01,51.88
step
talk Matthias Lehner##32408
accept Do Your Worst##13394 |goto 68.02,51.59
step
click Refurbished Demolisher##32370
Control the Refurbished Demolisher |invehicle |goto 68.0,51.8 |q 13394
stickystart "Kill_Frostskull_Maguses"
stickystart "Kill_Decomposed_Ghouls"
step
kill 2 Bone Giant##31815 |q 13394/3 |goto 64.22,45.77
|tip They look like huge skeletons that walk around.
|tip You can find them all around the northern part of the Valley of Lost Hope area.
|tip Use the abilities on your action bar.
step
label "Kill_Frostskull_Maguses"
kill 20 Frostskull Magus##31813 |q 13394/2 |goto 64.22,45.77
|tip They look like smaller skeletons wearing capes.
|tip You can find them all around the northern part of the Valley of Lost Hope area. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
step
label "Kill_Decomposed_Ghouls"
kill 150 Decomposed Ghoul##31812 |q 13394/1 |goto 64.22,45.77
|tip They look like zombies.
|tip You can find them all around the northern part of the Valley of Lost Hope area. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
step
Leave the Refurbished Demolisher |outvehicle |q 13394
|tip Click the yellow arrow on your action bar.
|tip Kill any nearby enemies first, so you will be safe.
step
talk Matthias Lehner##32404
turnin Do Your Worst##13394 |goto 64.52,44.00
accept Army of the Damned##13395 |goto 64.52,44.00
step
kill Lordaeron Footsoldier##31254+
|tip Use the abilities on your action bar.
|tip Use the "Gift of the Lich King" ability near their corpses.
Raise #100# Ghoulish Minions |q 13395/1 |goto 65.44,43.97
step
Dispel the Vision |outvehicle |goto 64.52,44.00 |q 13395
|tip Click the red arrow on your action bar.
|tip Go to this location first.
step
talk Matthias Lehner##32404
turnin Army of the Damned##13395 |goto 64.52,44.00
accept Futility##13396 |goto 64.52,44.00
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next step, you will need to talk to an NPC on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13348
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin Futility##13348
accept Sindragosa's Fall##13397
turnin Sneak Preview##13315
accept Drag and Drop##13318
accept Chain of Command##13319
accept Cannot Reproduce##13320
stickystart "Collect_Orbs_Of_Illusion"
step
kill Overseer Faedris##32250 |q 13319/1 |goto 53.89,46.84
|tip Inside the tent.
step
label "Collect_Orbs_Of_Illusion"
kill Bitter Initiate##32238+
|tip They look like humans wearing robes.
collect Orb of Illusion##44246+ |n
use the Orb of Illusion##44246+
|tip Use them on Dark Subjugators.
|tip They look like humans wearing robes and carrying staves.
|tip A gargoyle will fly down and kill them.
Drag and Drop #3# Dark Subjugators |q 13318/1 |goto 53.96,45.71
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the purple smoke rising out of it.
Collect the Dark Sample |q 13320/3 |goto 49.71,34.34
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the green smoke rising out of it.
Collect the Green Sample |q 13320/2 |goto 49.11,34.21
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the grey smoke rising out of it.
Collect the Blue Sample |q 13320/1 |goto 48.98,33.26
step
kill Overseer Savryn##32291 |q 13319/4 |goto 49.40,31.20
|tip Under the canopy.
step
kill Overseer Jhaeqon##32285 |q 13319/2 |goto 54.72,32.62
|tip Inside the tent.
step
kill Overseer Veraj##32263 |q 13319/3 |goto 53.68,29.20
|tip Under the canopy.
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next couple of steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13318
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin Drag and Drop##13318
turnin Chain of Command##13319
accept Not a Bug##13342
accept Need More Info##13345
accept Drag and Drop##13323 |only if zone("Icecrown")
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin Cannot Reproduce##13320
accept Retest Now##13321
step
kill Bitter Initiate##32238+
|tip They look like humans wearing robes.
collect Orb of Illusion##44246+ |n
use the Orb of Illusion##44246+
|tip Use them on Dark Subjugators.
|tip They look like humans wearing robes and carrying staves.
|tip A gargoyle will fly down and kill them.
Drag and Drop #3# Dark Subjugators |q 13323/1 |goto 53.96,45.71
|only if haveq(13323) or completedq(13323)
stickystart "Collect_Writhing_Mass"
step
kill Enslaved Minion##32260+
|tip They look like blue voidwalkers.
use the Rod of Siphening##44433
|tip Use it near their corpses.
collect 5 Dark Matter##44434 |goto 55.26,29.28 |q 13342
step
click Summoning Stone
|tip It looks like a large floating purple crystal.
Summon the Dark Messenger |q 13342/1 |goto 53.79,33.55
step
Enter the building |goto 51.90,32.81 < 30 |walk |only if not (subzone("Aldur'thar: The Desolation Gate") and _G.IsIndoors())
kill Cult Researcher##32297+
|tip They look like humans wearing black wearings and carrying daggers.
|tip Be careful, if you use mana, they have an ability that drains your mana and damages you for the same amount.
|tip Inside the building.
|tip If you have trouble, try to get someone to help you.
|tip It's important to get this quest done, since it unlocks more quests.
collect Cult of the Damned Research - Page 1##44459 |goto 52.35,30.14 |q 13345
collect Cult of the Damned Research - Page 2##44460 |goto 51.92,30.80 |q 13345
collect Cult of the Damned Research - Page 3##44461 |goto 51.92,30.80 |q 13345
step
use the Cult of the Damned Research - Page 1##44459
collect Cult of the Damned Thesis##44462 |q 13345/1
step
label "Collect_Writhing_Mass"
use the Diluted Cult Tonic##44307
|tip Use it repeatedly, to keep the "Dark Discernment" buff active.
|tip This buff allows enemies to drop Tainted Essences.
Kill enemies around this area
|tip Inside and outside the building. |notinsticky
|tip Only enemies that look like humans will drop the quest item.
|tip You can find them all around the Aldur'thar: The Desolation Gate area. |notinsticky
collect 10 Tainted Essence##44301 |n
use the Tainted Essence##44301+
|tip Use them once you have 10 essences.
collect Writhing Mass##44304 |goto 51.90,32.81 |q 13321
step
Leave the building |goto 51.90,32.81 < 30 |walk |only if subzone("Aldur'thar: The Desolation Gate") and _G.IsIndoors()
use the Writhing Mass##44304
|tip Use it next to one 1 of the 3 cauldrons around this area.
|tip Each of the cauldrons will give you a different stat buff for 2 hours, depending on the smoke color.
|tip Purple = Spell Power.
|tip Green = Stamina.
|tip Grey = Attack Power.
Banish the Writhing Mass |q 13321/1 |goto 49.32,33.88
step
use the Hearthstone##6948
Hearth to Silver Covenant Pavilion |complete subzone("Silver Covenant Pavilion") |q 13345
|only if subzone("Aldur'thar: The Desolation Gate")
step
talk Hiren Loresong##34881
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hiren Loresong##34881 |goto 76.14,19.58 |q 13345
stickystart "Kill_Cultist_Corrupters"
stickystart "Kill_Vrykul_Necrolords"
step
talk Matthias Lehner##32423
|tip He may sometimes disappear for some reason.
|tip If he's not here, wait for him to reappear.
accept Where Dragons Fell##13398 |goto 71.55,37.62
stickystart "Collect_Whelp_Bone_Dust"
step
kill 5 Wyrm Reanimator##31731 |q 13397/1 |goto 72.31,36.66
|tip They look like humans wearing robes.
You can find more around: |notinsticky
[72.00,43.46]
[73.54,42.42]
[74.84,44.11]
step
label "Collect_Whelp_Bone_Dust"
kill Frostbrood Whelp##31718+
|tip They look like tiny skeleton dragons flying low to the ground.
|tip You can find them all around the Sindragos's Fall area. |notinsticky
collect 6 Whelp Bone Dust##44631 |q 13398/1 |goto 69.30,38.74
You can find more around [73.54,43.15]
step
label "Kill_Cultist_Corrupters"
kill 8 Cultist Corrupter##31738 |q 13397/2 |goto 69.30,38.74
|tip They look like humans wearing robes and carrying staves.
|tip You can find them all around the Sindragos's Fall area. |notinsticky
You can find more around [73.54,43.15]
step
label "Kill_Vrykul_Necrolords"
kill 3 Vrykul Necrolord##31783 |q 13397/3 |goto 69.30,38.74
|tip They look like large zombies carrying staves.
|tip You can find them all around the Sindragos's Fall area. |notinsticky
You can find more around [73.54,43.15]
step
talk Matthias Lehner##32423
|tip He may sometimes disappear for some reason.
|tip If he's not here, wait for him to reappear.
turnin Where Dragons Fell##13398 |goto 71.55,37.62
accept Time for Answers##13399 |goto 71.55,37.62
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next couple of steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13342
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin Drag and Drop##13318 |only if haveq(13318) or completedq(13318)
turnin Not a Bug##13342
turnin Sindragosa's Fall##13397
turnin Need More Info##13345
accept Raise the Barricades##13332
accept Not a Bug##13344 |only if zone("Icecrown")
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin Retest Now##13321
accept Retest Now##13322 |only if zone("Icecrown")
step
use the Barricade Construction Kit##44127
|tip Use it near the bursts of purple light and smoke that appear hovering over the ground.
|tip You can find them all around the Valley of Fallen Heroes area.
Construct #8# Barricades |q 13332/1 |goto 49.89,40.47
stickystart "Collect_Writhing_Mass_DAILY"
step
kill Enslaved Minion##32260+
|tip They look like blue voidwalkers.
use the Rod of Siphening##44433
|tip Use it near their corpses.
collect 5 Dark Matter##44434 |goto 55.26,29.28 |q 13344
|only if haveq(13344) or completedq(13344)
step
click Summoning Stone
|tip It looks like a large floating purple crystal.
Summon the Dark Messenger |q 13344/1 |goto 53.79,33.55
|only if haveq(13344) or completedq(13344)
step
label "Collect_Writhing_Mass_DAILY"
use the Diluted Cult Tonic##44307
|tip Use it repeatedly, to keep the "Dark Discernment" buff active.
|tip This buff allows enemies to drop Tainted Essences.
Kill enemies around this area
|tip Only enemies that look like humans will drop the quest item.
|tip Don't go inside the building, the enemies can be difficult. |notinsticky
|tip You can find them all around the Aldur'thar: The Desolation Gate area. |notinsticky
collect 10 Tainted Essence##44301 |n
use the Tainted Essence##44301+
|tip Use them once you have 10 essences.
collect Writhing Mass##44304 |goto 52.32,34.80 |q 13322
|only if haveq(13322) or completedq(13322)
step
use the Writhing Mass##44304
|tip Use it next to one 1 of the 3 cauldrons around this area.
|tip Each of the cauldrons will give you a different stat buff for 2 hours, depending on the smoke color.
|tip Purple = Spell Power.
|tip Green = Stamina.
|tip Grey = Attack Power.
Banish the Writhing Mass |q 13322/1 |goto 49.32,33.88
|only if haveq(13322) or completedq(13322)
step
talk Matthias Lehner##32497
turnin Time for Answers##13399 |goto 49.16,73.12
accept The Hunter and the Prince##13400 |goto 49.16,73.12
step
click Bloodstained Stone+
|tip They look like blocky chunks of grey stone on the ground.
|tip They appear in random locations around this area.
Watch the dialogue
|tip Illidan Stormrage will appear and attack you.
kill Illidan Stormrage##32588
|tip Use the abilities on your action bar.
|tip Use the "Parry" ability on your action bar until your mana is full.
|tip Once your mana is full, use the "Stomp" ability, the immediately use the "Annihilate" ability.
|tip Repeat this process until you kill him.
Find Out the Prince's Destiny |q 13400/1 |goto 49.17,73.91
step
talk Matthias Lehner##32497
turnin The Hunter and the Prince##13400 |goto 49.16,73.12
accept Knowledge is a Terrible Burden##13401 |goto 49.16,73.12
step
_NOTE:_
Locate the Skybreaker Airship
|tip During the next couple of steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/blue airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13342
step
_On the Skybreaker Airship:_
talk Thassarian##29799
|tip On the left rear deck of the airship.
turnin Raise the Barricades##13332
turnin Not a Bug##13344 |only if haveq(13344) or completedq(13344)
turnin Knowledge is a Terrible Burden##13401
accept Tirion's Help##13402
step
_On the Skybreaker Airship:_
talk Chief Engineer Boltwrench##30345
|tip Downstairs inside the airship, on the bottom floor, near the front of the airship.
|tip To get downstairs, run down the stairs in the center of the main deck.
turnin Retest Now##13322
|only if haveq(13322) or completedq(13322)
step
talk Highlord Tirion Fordring##31044
turnin Light Within the Darkness##13083 |goto 79.79,71.76
turnin Tirion's Help##13402 |goto 79.79,71.76
accept Tirion's Gambit##13403 |goto 79.79,71.76
step
kill Cultist Acolyte##32507+
|tip They look like humans wearing robes.
collect Cultist Acolyte's Hood##44784 |goto 45.40,78.23 |q 13403
step
use the Cultist Acolyte's Hood##44784
Wear the Cultist Disguise |havebuff spell:61131 |q 13403
step
Locate Highlord Tirion Fordring |goto 44.41,76.21 < 15 |c |q 13403
|tip Outside the building, next to a blue bonfire.
step
talk Highlord Tirion Fordring##32239
|tip Outside the building, next to a blue bonfire.
Tell him _"I'm ready, Highlord."_
Begin Following Highlord Tirion Fordring |goto 44.41,76.21 > 15 |c |q 13403
step
Watch the dialogue
|tip Follow Highlord Tirion Fordring as he walks.
|tip He eventually walks to this location inside the building.
Witness Tirion's Gambit |q 13403/1 |goto 42.83,78.81
step
click Escape Portal
|tip Inside the building.
Escape to Crusaders' Pinnacle |complete not subzone("Cathedral of Darkness") |goto 42.83,78.76 |q 13403
step
talk Highlord Tirion Fordring##31044
turnin Tirion's Gambit##13403 |goto 79.79,71.76
]])
