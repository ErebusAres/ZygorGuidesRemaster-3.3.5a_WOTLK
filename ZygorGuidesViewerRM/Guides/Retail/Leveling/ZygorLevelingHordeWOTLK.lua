local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
local ZGV = ZygorGuidesViewer
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12) & Death Knight (55-58)\\Death Knight Starter (55-58)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Death Knight",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return (raceclass('DeathKnight') and not completedq(13189)) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
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
accept Warchief's Blessing##13189 |goto 83.44,49.46
step
clicknpc Portal to Orgrimmar##103191
|tip On the bottom floor of the floating building.
Teleport to Orgrimmar |complete zone("Durotar") |goto 84.55,50.46 |q 13189
step
Enter the building |goto Orgrimmar 40.30,36.96 < 15 |walk
talk Thrall ##4949
|tip Inside the building.
turnin Warchief's Blessing##13189 |goto 31.61,37.83
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Howling Fjord (69-71)",{
author="support@zygorguides.com",
condition_suggested=function() return level >= 69 and level <= 71 and not completedq(11239) end,
next="Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",
},[[
step
talk Apothecary Lysander##24126
accept The New Plague##11167 |goto Howling Fjord 78.55,28.98
step
talk Bat Handler Adeline##27344
fpath Vengeance Landing |goto 79.04,29.71
step
Enter the building |goto 79.04,30.37 < 7 |walk
talk Timothy Holland##24342
|tip Downstairs inside the building.
home Vengeance Landing |goto 79.73,30.84
step
Leave the building |goto 79.04,30.37 < 7 |walk |only if subzone("Vengeance Landing Inn, Howling Fjord")
talk Pontius##23938
|tip Outside, next to the building.
accept Let Them Eat Crow##11227 |goto 79.15,31.22
step
talk High Executor Anselm##23780
accept War is Hell##11270 |goto 78.61,31.23
stickystart "Burn_Fallen_Combatants"
step
use Plaguehound Cage##33221
|tip A Plaguehound will appear and start following you.
kill Fjord Crow##23945+
|tip They look like black birds flying in the air.
|tip You can find them all around the Bleeding Vale area.
collect 5 Crow Meat##33238+ |n
use Crow Meat##33238
|tip Use it multiple times.
Feed Your Plaguehound #5# Times |q 11227/1 |goto 75.28,33.32
step
label "Burn_Fallen_Combatants"
use Burning Torch##33278
|tip Use it on Corpses.
|tip They look like Horde and Alliance dead bodies on the ground.
|tip You can find them all around the Bleeding Vale area.
Burn #10# Fallen Combatants |q 11270/1 |goto 75.26,32.60
step
click Plague Containers##186390+
|tip They look like dark barrels with a green ring around the middle of them.
|tip They can also be underwater inside the ship.
collect 10 Intact Plague Container##33099 |q 11167/1 |goto 80.81,35.32
step
talk High Executor Anselm##23780
turnin War is Hell##11270 |goto 78.61,31.23
accept Reports from the Field##11221 |goto 78.61,31.23
step
talk Pontius##23938
turnin Let Them Eat Crow##11227 |goto 79.15,31.22
accept Sniff Out the Enemy##11253 |goto 79.15,31.22
step
talk Apothecary Lysander##24126
turnin The New Plague##11167 |goto 78.54,28.98
accept Spiking the Mix##11168 |goto 78.54,28.98
stickystart "Collect_Giant_Toxic_Glands"
step
Enter the cave |goto 76.30,19.99 < 20 |walk
click Dragonskin Scroll##186585
|tip Inside the cave.
turnin Sniff Out the Enemy##11253 |goto 75.93,19.75
accept The Dragonskin Map##11254 |goto 75.93,19.75
step
label "Collect_Giant_Toxic_Glands"
kill Giant Tidecrawler##23929+
|tip They look like red and white crabs.
|tip You can find them all along the beach and in the water nearby.
collect 3 Giant Toxin Gland##33337 |q 11168/1 |goto 77.92,22.36
step
talk Apothecary Lysander##24126
|tip Outside, in front of the building.
turnin Spiking the Mix##11168 |goto 78.54,28.98
accept Test at Sea##11170 |goto 78.54,28.98
step
talk High Executor Anselm##23780
turnin The Dragonskin Map##11254 |goto 78.61,31.23
accept The Offensive Begins##11295 |goto 78.61,31.23
step
talk Bat Handler Camille##23816
Tell her _"I need a riding bat to intercept the Alliance reinforcements."_
Borrow a Bat |ontaxi |goto 79.05,29.81 |q 11170
step
use Plague Vials##33349
|tip Use it on North Fleet Reservists as you fly.
|tip They look like humans on the decks of the ships around this area.
Infect #16# North Fleet Reservists |q 11170/1 |goto 89.72,82.98 |notravel
step
Return to Vengeance Landing |offtaxi |goto 79.06,29.84 |q 11170 |notravel
step
talk Apothecary Lysander##24126
turnin Test at Sea##11170 |goto 78.54,28.98
step
talk Brock Olson##24343
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brock Olson##24343 |goto 78.71,29.66 |q 11221
step
talk Deathstalker Razael##23998
Tell him _"High Executor Anseim wants a report on the situation."_
Listen to Razael's Report |q 11221/1 |goto 77.59,34.70
step
talk Dark Ranger Lyana##23778
Tell her _"High Executor Anseim requests your report."_
Listen to Lyana's Report |q 11221/2 |goto 78.68,37.13
step
talk High Executor Anselm##23780
turnin Reports from the Field##11221 |goto 78.61,31.23
accept The Windrunner Fleet##11229 |goto 78.61,31.23
step
talk Bat Handler Camille##23816
Tell her _"I need to fly to the Windrunner. Official business!"_
Begin Flying to the Windrunner |ontaxi |goto 79.05,29.82 |q 11229
step
Fly to the Windrunner |offtaxi |goto 84.59,36.31 |q 11229 |notravel
step
talk Captain Harker##24037
|tip On the top deck of the ship.
turnin The Windrunner Fleet##11229 |goto 84.66,36.46
accept Ambushed!##11230 |goto 84.66,36.46
step
kill 15 North Fleet Marine##23983 |q 11230/1 |goto 84.36,35.85
|tip On the deck and inside the ship.
You can find more on another ship around [83.47,37.94]
step
talk Captain Harker##24037
|tip On the top deck of the ship.
turnin Ambushed!##11230 |goto 84.66,36.46
accept Guide Our Sights##11232 |goto 84.66,36.46
step
Run up the stairs |goto 80.44,38.37 < 10 |only if walking
use Cannoneer's Smoke Flare##33335
|tip Next to cannon on top of the makeshift wooden wall.
Mark the Eastern Cannon |q 11232/1 |goto 80.35,38.21
step
Run up the stairs |goto 79.40,40.36 < 10 |only if walking
use Cannoneer's Smoke Flare##33335
|tip Next to cannon on top of the makeshift wooden wall.
Mark the Western Cannon |q 11232/2 |goto 79.33,40.16
step
talk Dark Ranger Lyana##23778
|tip She will eventually run to this location.
turnin Guide Our Sights##11232 |goto 78.68,37.13
accept Landing the Killing Blow##11233 |goto 78.68,37.13
step
kill Sergeant Lorric##23963 |q 11233/3 |goto 82.22,40.72
step
kill Captain Olster##23962 |q 11233/1 |goto 81.50,43.37
step
kill Lieutenant Celeyne##23964 |q 11233/2 |goto 83.20,43.15
step
talk Apothecary Hanes##23784
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Trail of Fire##11241 |goto 83.23,43.10
step
Watch the dialogue
|tip Follow Apothecary Hanes and protect him as he walks.
|tip He will eventually walk to this location.
Escort Apothecary Hanes to Safety |q 11241/1 |goto 78.73,37.25
step
talk Dark Ranger Lyana##23778
turnin Landing the Killing Blow##11233 |goto 78.68,37.13
accept Report to Anselm##11234 |goto 78.68,37.13
step
talk High Executor Anselm##23780
turnin Report to Anselm##11234 |goto 78.61,31.23
step
talk Brock Olson##24343
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Brock Olson##24343 |goto 78.71,29.66 |q 11241
step
talk Apothecary Lysander##24126
turnin Trail of Fire##11241 |goto 78.54,28.98
accept New Agamand##11304 |goto 78.54,28.98
step
Ride the lift up the cliff |goto 73.33,35.44 < 20 |only if walking
talk Longrunner Nanik##28314
accept Help for Camp Winterhoof##12566 |goto 71.47,39.21
step
talk Sergeant Gorth##24027
turnin The Offensive Begins##11295 |goto 71.11,39.08
accept A Lesson in Fear##11282 |goto 71.11,39.08
stickystart "Impale_Gunnar_Thorvardsson"
stickystart "Impale_Ulf_The_Bloodletter"
step
kill Winterskorn Defender##24015+
|tip They look like large humans.
|tip You can find them all around the Balejar Watch area.
|tip Kill them around this area until Oric the Baleful spawns at this location.
kill Oric the Baleful##24161
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Oric the Baleful |q 11282/1 |goto 69.12,38.47
step
label "Impale_Gunnar_Thorvardsson"
kill Winterskorn Defender##24015+ |notinsticky
|tip They look like large humans. |notinsticky
|tip You can find them all around the Balejar Watch area. |notinsticky
|tip Kill them around this area until Gunnar Thorvardsson spawns at this location. |notinsticky
kill Gunnar Thorvardsson##24162
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Gunnar Thorvardsson |q 11282/3 |goto 69.62,40.06
step
label "Impale_Ulf_The_Bloodletter"
kill Winterskorn Defender##24015+ |notinsticky
|tip They look like large humans. |notinsticky
|tip You can find them all around the Balejar Watch area. |notinsticky
|tip Kill them around this area until Ulf the Bloodletter spawns at this location. |notinsticky
kill Ulf the Bloodletter##24016
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Ulf the Bloodletter |q 11282/2 |goto 69.38,39.56
step
talk Sergeant Gorth##24027
turnin A Lesson in Fear##11282 |goto 71.11,39.08
accept Baleheim Bodycount##11283 |goto 71.11,39.08
accept Baleheim Must Burn!##11285 |goto 71.11,39.08
stickystart "Slay_Winterskorn_Vrykuls"
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Watchtower |q 11285/2 |goto 67.12,39.44
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Bridge |q 11285/3 |goto 66.18,39.79
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Dwelling |q 11285/1 |goto 65.00,41.01
step
Follow the path up |goto 63.55,41.80 < 20 |only if walking
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Barracks |q 11285/4 |goto 63.95,40.65
step
label "Slay_Winterskorn_Vrykuls"
Kill Winterskorn enemies around this area
|tip They look like large humans.
|tip You can find them all around the Baleheim area. |notinsticky
Slay #16# Winterskorn Vrykuls |q 11283/1 |goto 65.18,40.46
step
talk Sergeant Gorth##24027
turnin Baleheim Bodycount##11283 |goto 71.11,39.08
turnin Baleheim Must Burn!##11285 |goto 71.11,39.08
accept The Ambush##11303 |goto 71.11,39.08
step
talk Lydell##24458
turnin The Ambush##11303 |goto 65.87,36.78
accept Adding Injury to Insult##12481 |goto 65.87,36.78
step
use Vrykul Insult##33581
|tip Use it on Bjorn Halgurdsson.
|tip You don't have to be very close to him, so try to use it at max range.
|tip After you use it on him, start running back to Lydell, the NPC who just gave you the quest.
|tip You don't have to kite Born Halgurdsson, he will follow you the whole way.
Insult Bjorn Halgurdsson |q 12481/1 |goto 64.02,39.80
step
kill Bjorn Halgurdsson##24238
|tip Lead him back to Lydell, where he and the other NPCs will help you to defeat him.
|tip You must lead him here for the quest to complete.
Defeat Bjorn Halgurdsson |q 12481/2 |goto 65.87,36.78
step
talk Lydell##24458
turnin Adding Injury to Insult##12481 |goto 65.87,36.78
step
Follow the path up to Camp Winterhoof |goto 48.31,15.15 < 50 |only if walking and not subzone("Camp Winterhoof")
talk Celea Frozenmane##24032
fpath Camp Winterhoof |goto 49.57,11.59
step
talk Chieftain Ashtotem##24129
turnin Help for Camp Winterhoof##12566 |goto 48.04,10.75
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11271 |future
step
talk Ahota Whitefrost##24127
accept Hasty Preparations##11271 |goto 48.38,11.04
step
talk Wind Tamer Kagan##24256
accept Suppressing the Elements##11311 |goto 48.92,11.98
step
talk Nokoma Snowseer##24123
accept Making the Horn##11275 |goto 49.32,11.98
stickystart "Collect_Spotted_Hippogryph_Down"
step
kill Frosthorn Ram##23740+
collect 6 Undamaged Ram Horn##33351 |q 11275/1 |goto |goto 46.05,17.03
You can find more around: |notinsticky
[56.96,15.74]
[52.58,10.15]
[50.97,3.19]
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11275
stickystop "Collect_Spotted_Hippogryph_Down"
step
talk Nokoma Snowseer##24123
turnin Making the Horn##11275 |goto 49.32,11.98
accept Mimicking Nature's Call##11281 |goto 49.32,11.98
accept The Frozen Glade##11312 |goto 49.32,11.98
step
talk Longrunner Pembe##24362
accept The Book of Runes##11350 |goto 49.23,12.24
step
Enter the building |goto 49.42,10.91 < 10 |walk
talk Bori Wintertotem##24033
|tip Inside the building.
home Camp Winterhoof |goto 49.50,10.79
step
talk Junat the Wanderer##24234
accept Keeping Watch on the Interlopers##11297 |goto 48.43,10.43
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Kill_Iceshard_Elementals"
step
use the Carved Horn##33450
Watch the dialogue
|tip Frostgore will run up to you.
kill Frostgore##24173
Test Nokoma's Horn |q 11281/1 |goto 52.42,3.83
step
label "Kill_Iceshard_Elementals"
kill Iceshard Elemental##24228+
|tip They look like grey rock elementals.
Slay #8# Mountain Elementals |q 11311/1 |goto 52.37,2.77
step
talk Lurielle##24117
|tip Avoid Fort Wildervar while traveling here.
turnin The Frozen Glade##11312 |goto 61.49,22.86
accept Spirits of the Ice##11313 |goto 61.49,22.86
step
kill Ice Elemental##23919+
|tip They look like small grey rock elementals.
|tip You can find them all around the Frozen Glade area.
collect 15 Icy Core##33605 |q 11313/1 |goto 60.85,22.08
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.49,22.86
accept The Fallen Sisters##11314 |goto 61.49,22.86
accept Wild Vines##11315 |goto 61.49,22.86
stickystart "Collect_Book_of_Runes_Chapter_2"
stickystart "Collect_Book_of_Runes_Chapter_3"
step
Kill Iron Rune enemies around this area
|tip They look like dwarves wearing dark colored armor.
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 1##33778 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
label "Collect_Book_of_Runes_Chapter_2"
Kill Iron Rune enemies around this area |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 2##33779 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
label "Collect_Book_of_Runes_Chapter_3"
Kill Iron Rune enemies around this area |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 3##33780 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
use Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11350/1
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11350
|only if (subzone("Giant's Run"))
stickystop "Collect_Spotted_Hippogryph_Down"
step
talk Nokoma Snowseer##24123
turnin Mimicking Nature's Call##11281 |goto 49.32,11.98
step
talk Longrunner Pembe##24362
turnin The Book of Runes##11350 |goto 49.23,12.24
accept Mastering the Runes##11351 |goto 49.23,12.24
step
talk Wind Tamer Kagan##24256
turnin Suppressing the Elements##11311 |goto 48.92,11.98
step
talk Chieftain Ashtotem##24129
accept Skorn Must Fall!##11256 |goto 48.04,10.75
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11256
stickystart "Collect_Spotted_Hippogryph_Down"
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
turnin The Fallen Sisters##11314 |goto 61.49,22.86
turnin Wild Vines##11315 |goto 61.49,22.86
accept Spawn of the Twisted Glade##11316 |goto 61.49,22.86
accept Seeds of the Blacksouled Keepers##11319 |goto 61.49,22.86
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
turnin Spawn of the Twisted Glade##11316 |goto 61.49,22.86
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.49,22.86
accept Keeper Witherleaf##11428 |goto 61.49,22.86
step
click Iron Rune Carving Tools##186684
|tip It looks like a small metal chest.
|tip It can spawn in multiple locations.
collect Iron Rune Carving Tools##33794 |q 11351/1 |goto 67.54,23.33
It can also be located at: |notinsticky
[72.40,17.80]
[69.10,22.80]
[67.50,29.20]
[71.20,28.70]
[73.30,24.89]
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.64,18.34
|tip He looks like a green and brown centaur that walks around this area.
step
label "Collect_Spotted_Hippogryph_Down"
click Spotted Hippogryph Down##186591+
|tip They look like brown feathers on the ground around this area.
|tip You can find them all around this area. |notinsticky
collect 10 Spotted Hippogryph Down##33348 |q 11271/1 |goto 52.80,18.98
step
Follow the path up to Camp Winterhoof |goto 48.31,15.15 < 50 |only if walking and not subzone("Camp Winterhoof")
talk Longrunner Pembe##24362
turnin Mastering the Runes##11351 |goto 49.23,12.24
accept The Rune of Command##11352 |goto 49.23,12.24
step
talk Ahota Whitefrost##24127
turnin Hasty Preparations##11271 |goto 48.38,11.04
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11352
step
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.49,22.86
step
use the Rune of Command##33796
|tip Use it on a neutral Stone Giant around this area.
|tip It will not work on a Runed Stone Giant.
Test the Rune of Command |q 11352/1 |goto 70.41,23.92
step
kill Binder Murdis##24334 |q 11352/2 |goto 71.85,24.56
|tip Your Captive Stone Giant minion from the previous step will help you fight.
step
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He appears next to you.
turnin Skorn Must Fall!##11256 |goto 44.37,26.36
accept Gruesome, But Necessary##11257 |goto 44.37,26.36
accept Burn Skorn, Burn!##11258 |goto 44.37,26.36
accept Towers of Certain Doom##11259 |goto 44.37,26.36
stickystart "Dismember_Winterskorn_Vrykul"
stickystart "Accept_Stop_The_Ascension"
step
Enter the building |goto 43.73,28.31 < 10 |walk
use the Brave's Flare##33344
|tip Use it inside this building.
Set the Northwest Longhouse Ablaze |q 11258/1 |goto 43.66,28.57
step
use the Brave's Flare##33344
Target the Northwest Tower |q 11259/1 |goto 43.66,28.57
step
Enter the building |goto 46.18,28.36 < 10 |walk
use the Brave's Flare##33344
|tip Use it inside this building.
Set the Northeast Longhouse Ablaze |q 11258/2 |goto 46.33,28.21
step
Enter the building |goto 45.74,30.38 < 10 |walk
use the Brave's Torch##33343
|tip Use it inside this building.
Set the Barracks Ablaze |q 11258/3 |goto 45.93,30.71
step
_Next to you:_
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Burn Skorn, Burn!##11258
step
Follow the path up |goto 44.90,32.14 < 30 |only if walking
use the Brave's Flare##33344
Target the East Tower |q 11259/2 |goto 46.44,33.21
step
use the Brave's Flare##33344
Target the Southeast Tower |q 11259/4 |goto 46.95,36.37
step
label "Accept_Stop_The_Ascension"
Kill Winterskorn enemies around this area
collect Vrykul Scroll of Ascension##33345 |n
use the Vrykul Scroll of Ascension##33345
accept Stop the Ascension!##11260 |goto 44.86,35.07
step
use the Vrykul Scroll of Ascension##33346
Watch the dialogue
|tip Halfdan the Ice-Hearted appears nearby.
kill Halfdan the Ice-Hearted##23671 |q 11260/1 |goto 44.86,35.07
step
label "Dismember_Winterskorn_Vrykul"
Kill Winterskorn enemies around this area
use The Brave's Machete##33343
|tip Use it on their corpses.
Dismember #20# Winterskorn Vrykul |q 11257/1 |goto 44.78,31.41
step
_Next to you:_
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Gruesome, But Necessary##11257
step
use the Brave's Flare##33344
Target the Southwest Tower |q 11259/3 |goto 43.30,35.93
step
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Towers of Certain Doom##11259
accept The Conqueror of Skorn!##11261
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11261
|only if (subzone("Skorn"))
step
talk Chieftain Ashtotem##24129
turnin The Conqueror of Skorn!##11261 |goto 48.04,10.75
accept Dealing With Gjalerbron##11263 |goto 48.04,10.75
step
talk Greatmother Ankha##24135
turnin Stop the Ascension!##11260 |goto 48.16,10.66
accept Of Keys and Cages##11265 |goto 48.16,10.66
accept Find Sage Mistwalker##11287 |goto 48.16,10.66
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11263
step
talk Longrunner Pembe##24362
turnin The Rune of Command##11352 |goto 49.23,12.24
step
talk Longrunner Skycloud##24209
|tip On the wooden platform.
accept Rivenwood Captives##11296 |goto 31.28,24.34
step
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin Find Sage Mistwalker##11287 |goto 31.16,24.52
accept The Artifacts of Steel Gate##11286 |goto 31.16,24.52
step
Follow the path down |goto 32.01,24.30 < 40 |only if walking
click Steel Gate Artifact##186397+
|tip They look like grey broken stone tablets laying on the ground.
|tip You can find them all around the Steel Gate area.
collect 10 Steel Gate Artifact##33109 |q 11286/1 |goto 30.88,26.81
step
Follow the path up |goto 31.97,25.85 < 15 |only if walking and subzone("Steel Gate")
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin The Artifacts of Steel Gate##11286 |goto 31.16,24.52
accept The Cleansing##11317 |goto 31.16,24.52
step
talk Lilleth Radescu##26844
fpath Apothecary Camp |goto 25.98,25.07
step
talk Apothecary Anastasia##24359
|tip She walks around this area.
accept And You Thought Murlocs Smelled Bad!##11397 |goto 26.24,24.61
step
talk Apothecary Malthus##24152
turnin Keeping Watch on the Interlopers##11297 |goto 26.43,24.50
accept What's in That Brew?##11298 |goto 26.43,24.50
step
talk Apothecary Grick##24218
accept Brains! Brains! Brains!##11301 |goto 25.96,24.43
step
talk Samuel Rosemond##24188
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Samuel Rosemond##24188 |goto 25.94,24.65 |q 11263
step
Follow the path to the top of the mountain |goto 54.30,8.23 < 30 |only if walking
click Frostblade Shrine##186649
|tip At the top of the mountain.
Watch the dialogue
kill Your Inner Turmoil##27959
Become Cleansed of Your Inner Turmoil |q 11317/1 |goto 61.12,2.02
step
_NOTE:_
Jump Off the Mountain Toward Camp Winterhoof
|tip You received a slow fall buff.
|tip Jump off the mountain toward this location and float down to Camp Winterhoof.
Reach Camp Winterhoof |complete subzone("Camp Winterhoof") |goto 49.56,11.59 |q 11317
|only if hasbuff("spell:50237")
step
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin The Cleansing##11317 |goto 31.16,24.52
accept In Worg's Clothing##11323 |goto 31.16,24.52
step
kill Riven Widow Cocoon##24210+
|tip They look like big squirming white cocoons.
|tip You can find them all around the Rivenwood area.
Free #7# Winterhoof Longrunners |q 11296/1 |goto 29.41,17.69
step
use Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff("spell:68347") |goto 29.21,7.56 |q 11323
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin In Worg's Clothing##11323 |goto 29.70,5.66
accept Brother Betrayers##11415 |goto 29.70,5.66
step
kill Bjomolf##24516 |q 11415/1 |goto 27.47,21.50
|tip He looks like a larger brown wolf that walks around this area.
step
talk Longrunner Skycloud##24209
|tip On the wooden platform.
turnin Rivenwood Captives##11296 |goto 31.28,24.34
step
kill Varg##24517 |q 11415/2 |goto 34.12,30.42
|tip He looks like a larger grey wolf that walks around this area.
stickystart "Kill_Gjalerbron_Warriors"
stickystart "Kill_Gjalerbron_Rune_Casters"
stickystart "Kill_Gjalerbron_Sleep_Watchers"
stickystart "Accept_Gjalerbron_Attack_Plans"
step
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
Free #10# Gjalerbron Prisoners |q 11265/1 |goto 35.80,11.46
step
label "Kill_Gjalerbron_Warriors"
kill 15 Gjalerbron Warrior##23991 |q 11263/1 |goto 35.37,11.30
|tip They look like large humans with an axe and a shield.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Rune_Casters"
kill 8 Gjalerbron Rune-Caster##23990 |q 11263/2 |goto 33.64,13.20
|tip They look like large humans wearing white robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Sleep_Watchers"
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11263/3 |goto 35.37,11.30
|tip They look like large humans wearing brown robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Accept_Gjalerbron_Attack_Plans"
Kill Gjalerbron enemies around this area
|tip They look like large humans. |notinsticky
|tip You can find them all around the Gjalerbron area. |notinsticky
collect Gjalerbron Attack Plans##33347 |n
use the Gjalerbron Attack Plans##33347w
accept Gjalerbron Attack Plans##11266 |goto 33.69,13.12
step
Leave Gjalerbron and run around the mountain |goto 31.39,13.03 < 70 |only if walking and subzone("Gjalerbron")
use the Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff("spell:68347") |goto 29.21,7.56 |q 11415
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Brother Betrayers##11415 |goto 29.69,5.67
accept Eyes of the Eagle##11417 |goto 29.69,5.67
step
click Talonshrike's Egg##190283
|tip At the bottom of the waterfall.
kill Talonshrike##24518
|tip It flies down to you.
collect Eyes of the Eagle##34027 |q 11417/1 |goto 41.46,37.69
stickystart "Collect_Deranged_Explorer_Brains"
step
Follow the path up out of the canyon |goto 40.64,35.93 < 15 |only if walking and not subzone("Whisper Gulch")
Follow the path down into Whisper Gulch |goto 37.64,36.05 < 15 |only if walking and not subzone("Whisper Gulch")
click Dwarven Kegs##186632+
|tip They look like large dark wooden kegs on the ground.
|tip You can find them all around inside the Whisper Gulch canyon.
collect 5 Dwarven Keg##33541 |q 11298/1 |goto 33.51,36.68
step
label "Collect_Deranged_Explorer_Brains"
kill Deranged Explorer##23967+
|tip They look like dwarves.
|tip You can find them all around inside the Whisper Gulch canyon. |notinsticky
use Grick's Bonesaw##33554
|tip Use it on their corpses.
collect 12 Deranged Explorer Brain##33558 |q 11301/1 |goto 33.51,36.68
stickystart "Kill_Chillmere_Coast_Scourge"
step
Jump down carefully to leave Whisper Gulch |goto 30.36,36.55 < 10 |only if walking and subzone("Whisper Gulch")
Follow the shore to leave Whisper Gulch |goto 28.39,38.00 < 40 |only if walking and subzone("Whisper Gulch")
Kill enemies around this area
collect Scourge Device##33962 |n
use the Scourge Device##33962
accept It's a Scourge Device##11398 |goto 22.73,31.08
step
Follow the path up the cliff |goto 23.71,21.80 < 15 |only if walking and subzone("Chillmere Coast")
talk Apothecary Malthus##24152
turnin What's in That Brew?##11298 |goto 26.43,24.50
stickystop "Kill_Chillmere_Coast_Scourge"
step
talk Apothecary Anastasia##24359
|tip She walks around this area.
turnin It's a Scourge Device##11398 |goto 26.24,24.61
accept Bring Down Those Shields##11399 |goto 26.24,24.61
step
talk Apothecary Grick##24218
turnin Brains! Brains! Brains!##11301 |goto 25.96,24.43
step
talk Samuel Rosemond##24188
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Samuel Rosemond##24188 |goto 25.94,24.65 |q 11399
stickystart "Kill_Chillmere_Coast_Scourge"
step
Follow the path down the cliff |goto 25.48,20.01 < 30 |only if walking and not subzone("Chillmere Coast")
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 22.51,17.62 |count 1
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 22.91,20.07 |count 2
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 21.75,22.47 |count 3
step
talk Old Icefin##24544
accept Trident of the Son##11422 |goto 19.78,22.21
step
kill Rotgill##24546
|tip He looks like a white murloc that walks along the coast around this area.
collect Rotgill's Trident##34035 |q 11422/1 |goto 22.89,33.81
step
talk Old Icefin##24544
turnin Trident of the Son##11422 |goto 19.78,22.21
step
label "Kill_Chillmere_Coast_Scourge"
Kill enemies around this area
|tip You can find them all around the Chillmere Coast area.
Kill #15# Chillmere Coast Scourge |q 11397/1 |goto 22.27,22.02
step
Follow the path up the cliff |goto 23.71,21.80 < 15 |only if walking and subzone("Chillmere Coast")
talk Apothecary Anastasia##24359
|tip She walks around this area.
turnin And You Thought Murlocs Smelled Bad!##11397 |goto 26.24,24.61
turnin Bring Down Those Shields##11399 |goto 26.24,24.61
step
talk Samuel Rosemond##24188
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Samuel Rosemond##24188 |goto 25.94,24.65 |q 11266
step
talk Celea Frozenmane##24032
turnin Gjalerbron Attack Plans##11266 |goto 49.57,11.59
step
talk Greatmother Ankha##24135
turnin Of Keys and Cages##11265 |goto 48.16,10.66
accept The Walking Dead##11268 |goto 48.16,10.66
step
talk Chieftain Ashtotem##24129
turnin Dealing With Gjalerbron##11263 |goto 48.04,10.75
accept Necro Overlord Mezhen##11264 |goto 48.04,10.75
step
talk Ahota Whitefrost##24127
accept Sleeping Giants##11433 |goto 48.38,11.04
step
use the Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff("spell:68347") |goto 29.21,7.56 |q 11417
step
Enter the cave |goto 29.33,5.97 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Eyes of the Eagle##11417 |goto 29.69,5.67
accept Alpha Worg##11324 |goto 29.69,5.67
step
kill Garwal##24277 |q 11324/1 |goto 27.32,15.39
|tip He looks like a larger grey wolf that walks around this area.
stickystart "Kill_Deathless_Watchers"
stickystart "Collect_Awakening_Rods"
stickystart "Kill_Putrid_Wights"
step
Run up the ramp |goto 38.33,10.88 < 15 |only if walking
kill Necro Overlord Mezhen##24018 |q 11264/1 |goto 38.79,13.08
collect Mezhen's Writings##34091 |goto 38.79,13.08 |q 11453 |future
step
use Mezhen's Writings##34091
accept The Slumbering King##11453
step
Enter the building |goto 39.77,7.61 < 15 |walk
kill Queen Angerboda##24023 |q 11453/1 |goto 40.89,6.48
|tip Inside the building.
|tip Follow the path around inside the building to get to her.
step
label "Kill_Deathless_Watchers"
Leave the building |goto 39.77,7.61 < 15 |walk |only if subzone("Winter's Terrace")
kill 10 Deathless Watcher##24013 |q 11268/1 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
step
label "Collect_Awakening_Rods"
kill Necrolord##24014+
collect 5 Awakening Rod##34083 |goto 38.50,12.53 |q 11433
You can find more around [33.25,9.33]
step
label "Kill_Putrid_Wights"
kill 2 Putrid Wight##23992 |q 11268/3 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
stickystart "Kill_Fearsome_Horrors"
step
Enter the building |goto 34.43,13.16 < 15 |walk
use the Awakening Rod##34083+
|tip Use them on Dormant Vrykul.
|tip They look like vrykul sleeping upright inside the walls like mummies around this area inside the building.
kill 5 Dormant Vrykul##24669 |q 11433/1 |goto 35.12,11.70
step
label "Kill_Fearsome_Horrors"
kill 4 Fearsome Horror##24073 |q 11268/2 |goto 35.35,12.19
|tip Inside the building.
|tip They can be spread out in all of the rooms in this underground building.
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11268
|only if (subzone("The Waking Halls"))
step
talk Ahota Whitefrost##24127
turnin Sleeping Giants##11433 |goto 48.38,11.04
step
talk Greatmother Ankha##24135
turnin The Walking Dead##11268 |goto 48.16,10.66
step
talk Chieftain Ashtotem##24129
turnin Necro Overlord Mezhen##11264 |goto 48.04,10.75
turnin The Slumbering King##11453 |goto 48.04,10.75
step
talk Talu Frosthoof##24028
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Talu Frosthoof##24028 |goto 48.10,11.02 |q 11324
step
talk Sage Mistwalker##24186
turnin Alpha Worg##11324 |goto 31.16,24.52
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto 40.29,60.25
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Tobias Sarkhoff##24155
fpath New Agamand |goto 52.01,67.38
step
talk Plaguebringer Tillinghast##24157
accept Green Eggs and Whelps##11279 |goto 53.07,66.93
step
talk Chief Plaguebringer Harris##24251
turnin New Agamand##11304 |goto 53.59,66.36
accept A Tailor-Made Formula##11305 |goto 53.59,66.36
step
talk "Hacksaw" Jenny##24252
accept Shield Hill##11424 |goto 53.68,65.21
step
kill Thorvald##27926
collect Dragonflayer Patriarch's Blood##38098 |q 11305/1 |goto 46.80,68.09
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Chief Plaguebringer Harris##24251
turnin A Tailor-Made Formula##11305 |goto 53.59,66.36
accept Apply Heat and Stir##11306 |goto 53.59,66.36
step
_Gather a Flask:_
use Empty Apothecary's Flask##33614
|tip Nearby, next to the metal cauldron.
|tip This will give you a Flask of Vrykul Blood.
collect Flask of Vrykul Blood##33614+ |n
_Test the Flask:_
use the Flask of Vrykul Blood##33615+
|tip Nearby, next to the table with chemistry instruments on it.
|tip Enemies way spawn after you use the flask, if you don't get the quest item.
_Repeat the Process:_
|tip Continue filling the Empty Apothecary's Flasks at the cauldron, and testing the Flasks of Vrykul Blood at the table.
|tip You will eventually create a Balanced Concoction.
collect Balanced Concoction##33617 |q 11306/1 |goto 53.57,66.39
step
talk Chief Plaguebringer Harris##24251
turnin Apply Heat and Stir##11306 |goto 53.59,66.36
accept Field Test##11307 |goto 53.59,66.36
step
use the Plague Spray##33621
|tip Use it on Plagued Dragonflayer enemies.
|tip They look like green large humans.
|tip You can find them all around the Halgrind area.
Spray #10# Plagued Vrykul |q 11307/1 |goto 49.78,54.61
stickystart "Collect_Plagued_Proto_Whelp_Specimens"
step
Follow the path to leave Halgrind |goto 49.50,50.28 < 30 |only if walking and subzone("Halgrind")
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
label "Collect_Plagued_Proto_Whelp_Specimens"
use Tillinghast's Plague Canister##33418
|tip Use it on Proto-Drake Eggs.
|tip They look like large white eggs.
|tip You can find them all around the Ember Clutch area.
kill Plagued Proto-Whelp##24160+
|tip They appear after you destroy the eggs.
collect 10 Plagued Proto-Whelp Specimen##33420 |q 11279/1 |goto 39.38,50.75
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Plaguebringer Tillinghast##24157
turnin Green Eggs and Whelps##11279 |goto 53.07,66.93
accept Draconis Gastritis##11280 |goto 53.07,66.93
step
talk Chief Plaguebringer Harris##24251
turnin Field Test##11307 |goto 53.59,66.36
accept Time for Cleanup##11308 |goto 53.59,66.36
step
talk "Hacksaw" Jenny##24252
turnin Time for Cleanup##11308 |goto 53.68,65.21
accept Parts for the Job##11309 |goto 53.68,65.21
step
talk Orson Locke##24330
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Orson Locke##24330 |goto 53.85,66.94 |q 11309
step
map Howling Fjord
path	follow strictbounce;	loop off;	ants curved;	dist 30;	markers none
path	52.15,73.51		50.58,73.81		50.19,74.25		49.33,74.32		48.20,73.22
path	48.05,72.85		47.80,72.52		47.61,72.03		47.62,71.36		47.20,70.79
path	46.93,70.27		46.21,70.06		45.57,69.04
talk Anton##24291
|tip He looks like an undead in a black robe.
|tip He walks along the road.
buy Fresh Pound of Flesh##33612 |q 11309/2
stickystart "Collect_Ancient_Vrykul_Bones"
step
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
label "Collect_Ancient_Vrykul_Bones"
kill Risen Vrykul Ancestor##24871+
|tip They look like large skeletons.
|tip You can find them all around the Shield Hill area.
collect 5 Ancient Vrykul Bone##34043 |q 11424/1 |goto 59.95,78.45
step
Cross the bridge |goto 59.39,72.99 < 30 |only if walking and subzone("Shield Hill")
talk Ranger Captain Areiel##27922
accept Against Nifflevar##12482 |goto 67.45,60.58
step
talk Scribe Seguine##24548
accept The Enemy's Legacy##11423 |goto 67.35,60.32
stickystart "Slay_Dragonflayer_Warriors"
stickystart "Slay_Dragonflayer_RuneSeers"
stickystart "Slay_Dragonflayer_Hunting_Hounds"
step
Enter the building |goto 67.61,56.61 < 10 |walk
click Saga of the Val'kyr##186830
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Val'kyr##34042 |q 11423/2 |goto 67.42,57.16
step
Enter the building |goto 66.18,53.95 < 20 |walk
click the Saga of the Twins##525
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Twins##34040 |q 11423/1 |goto 64.68,53.57
step
Enter the building |goto 68.69,53.10 < 10 |walk
click the Saga of the Winter Curse##525
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Winter Curse##34041 |q 11423/3 |goto 68.93,52.62
step
label "Slay_Dragonflayer_Warriors"
kill 5 Dragonflayer Warrior##23654 |q 12482/1 |goto 67.94,53.88
|tip They look like large humans holding an axe and a club.
|tip You can find them all around the Nifflevar area. |notinsticky
step
label "Slay_Dragonflayer_RuneSeers"
kill 4 Dragonflayer Rune-Seer##23656 |q 12482/2 |goto 67.94,53.88
|tip They look like large humans wearing robes.
|tip You can find them all around the Nifflevar area. |notinsticky
step
label "Slay_Dragonflayer_Hunting_Hounds"
kill 4 Dragonflayer Hunting Hound##23994 |q 12482/3 |goto 67.94,53.88
|tip They look like hyenas.
|tip You can find them all around the Nifflevar area. |notinsticky
step
talk Ranger Captain Areiel##27922
turnin Against Nifflevar##12482 |goto 67.45,60.58
step
talk Scribe Seguine##24548
turnin The Enemy's Legacy##11423 |goto 67.35,60.32
step
Kill Shoveltusk enemies around this area
|tip They look like buffalo.
collect 6 Shoveltusk Ligament##33611 |q 11309/1 |goto 67.93,62.99
You can: |notinsticky
Find more around [69.05,69.78]
Cross the bridge at [62.30,72.19]
Find more across the bridge around [54.04,71.38]
step
talk Orson Locke##24330
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Orson Locke##24330 |goto 53.85,66.94 |q 11309
step
talk "Hacksaw" Jenny##24252
turnin Parts for the Job##11309 |goto 53.68,65.21
accept Warning: Some Assembly Required##11310 |goto 53.68,65.21
turnin Shield Hill##11424 |goto 53.68,65.21
step
use Abomination Assembly Kit##33613
|tip You will start to control a Mindless Abomination.
|tip Send your Mindless Abomination into groups of enemies.
|tip You can find them all around the Halgrind area.
|tip Gather them up so that a group of many are attacking your abomination.
|tip Use the "Plagued Blood Explosion" ability on your pet action bar when you have many attacking your abomination.
|tip Your abomination will blow up and kill the enemies.
|tip Do this multiple times.
|tip Blow up the Abomination before it dies, or the Vrykul he aggroed may attack you.
Exterminate #20# Plagued Vrykul |q 11310/1 |goto 49.50,57.29
step
use Tillinghast's Plagued Meat##33441
|tip Use it on a Proto-Drake.
|tip They look like dragons flying in the sky around this area.
|tip The drake will fly down and die.
Observe the Proto-Drake Plague Results |q 11280/1 |goto 39.18,50.38
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
|tip Repair your items.
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
|tip Repair your items.
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
|tip Repair your items.
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
|tip Repair your items.
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
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Plaguebringer Tillinghast##24157
turnin Draconis Gastritis##11280 |goto 53.07,66.93
step
talk "Hacksaw" Jenny##24252
turnin Warning: Some Assembly Required##11310 |goto 53.68,65.21
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
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto 25.02,56.97
step
talk Deniigi##27151
|tip In the doorway of the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Deniigi##27151 |goto 25.65,57.44 |q 11585 |future
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Borean",
condition_suggested=function() return level >= 70 and level <= 72 and not completedq(11638) end,
next="Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",
},[[
step
talk Warsong Recruitment Officer##25273
|tip Inside the building, on the top floor.
accept Hellscream's Vigil##11585 |goto Borean Tundra 41.62,53.99
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Hellscream's Vigil##11585 |goto 41.35,53.58
step
talk High Overlord Saurfang##25256
|tip Inside the building, on the bottom floor.
accept The Defense of Warsong Hold##11596 |goto 41.36,53.70
step
talk Williamson##25278
|tip Inside the building, on the bottom floor.
home Warsong Hold |goto 41.92,54.48
step
Leave the building |goto 42.73,55.83 < 20 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin The Defense of Warsong Hold##11596 |goto 43.19,54.97
accept Taking Back Mightstone Quarry##11598 |goto 43.19,54.97
step
talk Quartermaster Holgoth##25327
accept Patience is a Virtue that We Don't Need##11606 |goto 43.33,55.36
step
talk Foreman Mortuus##25280
|tip He walks around this area.
accept Taken by the Scourge##11611 |goto 42.02,56.13
stickystart "Collect_Warsong_Munitions"
stickystart "Slay_Nerubar"
step
kill Nerub'ar Victim##25284+
|tip They look like white squirming cocoons on the ground.
|tip You can find them all around the Mightstone Quarry area.
|tip The Mightstone Quarry wraps around the entire building.
Free #5# Warsong Peons |q 11611/1 |goto 40.89,58.21
step
label "Collect_Warsong_Munitions"
click Warsong Munitions Crate##187661+
|tip They look like wooden crates on the ground.
|tip You can find them all around the Mightstone Quarry area. |notinsticky
|tip The Mightstone Quarry wraps around the entire building. |notinsticky
collect 15 Warsong Munitions##34709 |q 11606/1 |goto 40.89,58.21
step
label "Slay_Nerubar"
Kill Nerub'ar enemies around this area
|tip They look like insects.
|tip You can find them all around the Mightstone Quarry area. |notinsticky
|tip The Mightstone Quarry wraps around the entire building. |notinsticky
Slay #15# Nerub'ar |q 11598/1 |goto 40.89,58.21
step
talk Foreman Mortuus##25280
|tip He walks around this area.
turnin Taken by the Scourge##11611 |goto 42.02,56.13
step
talk Quartermaster Holgoth##25327
turnin Patience is a Virtue that We Don't Need##11606 |goto 43.33,55.36
accept Bury Those Cockroaches!##11608 |goto 43.33,55.36
step
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin Taking Back Mightstone Quarry##11598 |goto 43.19,54.97
accept Cutting Off the Source##11602 |goto 43.19,54.97
step
talk Shadowstalker Barthus##25394
|tip Inside the building.
accept Untold Truths##11614 |goto 43.20,55.05
step
Enter the building |goto 42.73,55.84 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Endorah##25247
|tip Inside the building, on the bottom floor.
accept Too Close For Comfort##11574 |goto 41.73,54.73
step
talk Ambassador Talonga##25978
|tip Inside the building, on the bottom floor.
accept Ride to Taunka'le Village##11888 |goto 41.70,54.59
step
talk Armorer Orkuruk##25274
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Armorer Orkuruk##25274 |goto 41.15,55.54 |q 11574
step
talk Sauranok the Mystic##25272
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
accept To Bor'gorok Outpost, Quickly!##12486 |goto 41.36,53.23
stickystart "Destroy_Nerubar_Egg_Sacs"
step
Leave the building |goto 42.73,55.83 < 20 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
use Seaforium Depth Charge Bundle##34710
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the East Nerub'ar Sinkhole |q 11608/2 |goto 44.23,56.76
step
use Seaforium Depth Charge Bundle##34710
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the South Nerub'ar Sinkhole |q 11608/1 |goto 41.62,58.29
step
use Seaforium Depth Charge Bundle##34710
|tip Outside, behind the building.
|tip Follow the path around the building to travel here.
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the West Nerub'ar Sinkhole |q 11608/3 |goto 39.81,52.54
step
talk Shadowstalker Luther##25328
|tip Outside, behind the building.
turnin Untold Truths##11614 |goto 40.07,52.06
accept Nerub'ar Secrets##11615 |goto 40.07,52.06
step
use Seaforium Depth Charge Bundle##34710
|tip Outside, behind the building.
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the North Nerub'ar Sinkhole |q 11608/4 |goto 41.35,50.36
step
label "Destroy_Nerubar_Egg_Sacs"
kill Nerub'ar Egg Sac##187655+
|tip They look like white eggs sitting upright on small brown stands.
|tip They can only be found on the metal and wooden platforms along the perimeter of Mightstone Quarry.
|tip Enemies may spawn when you break the eggs.
Destroy #10# Nerub'ar Egg Sacs |q 11602/1 |goto 40.04,50.86
You can find more around: |notinsticky
[39.12,55.10]
[40.08,58.19]
[42.46,61.67]
[43.90,59.12]
step
talk Quartermaster Holgoth##25327
|tip Outside, in front of the building.
turnin Bury Those Cockroaches!##11608 |goto 43.33,55.36
step
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin Cutting Off the Source##11602 |goto 43.19,54.97
accept Wind Master To'bor##11634 |goto 43.19,54.97
step
talk Shadowstalker Barthus##25394
|tip Inside the building.
turnin Nerub'ar Secrets##11615 |goto 43.20,55.05
accept Message to Hellscream##11616 |goto 43.20,55.05
step
Enter the building |goto 42.73,55.84 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Armorer Orkuruk##25274
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Armorer Orkuruk##25274 |goto 41.15,55.54 |q 11616
step
talk Garrosh Hellscream##25237
|tip Inside the building, on the bottom floor.
turnin Message to Hellscream##11616 |goto 41.35,53.59
accept Reinforcements Incoming...##11618 |goto 41.35,53.59
step
Run up the ramp and ride the elevator up |goto 40.71,52.54 < 15 |only if walking
talk Turida Coldwind##25288
|tip Outside, on top of the building.
fpath Warsong Hold |goto 40.36,51.40
step
talk Wind Master To'bor##25289
|tip He walks around this area.
|tip Outside, on top of the building.
turnin Wind Master To'bor##11634 |goto 42.48,55.21
accept Magic Carpet Ride##11636 |goto 42.48,55.21
step
talk Yanni##25459
|tip Outside, on top of the building.
Tell him _"Send me to Garrosh's Landing, Yanni."_
Begin Flying to Garrosh's Landing |invehicle |goto 42.29,55.68 |q 11636
step
Fly to Garrosh's Landing |outvehicle |goto 32.13,54.64 |q 11636 |notravel
step
talk Gorge the Corpsegrinder##25329
turnin Magic Carpet Ride##11636 |goto 32.25,54.07
accept Tank Ain't Gonna Fix Itself##11642 |goto 32.25,54.07
step
talk Waltor of Pal'ea##25476
accept Into the Mist##11655 |goto 32.34,54.27
accept Horn of the Ancient Mariner##11660 |goto 32.34,54.27
step
talk Mobu##25475
|tip He walks around this area.
turnin Tank Ain't Gonna Fix Itself##11642 |goto 32.10,54.21
accept Mobu's Pneumatic Tank Transjigamarig##11643 |goto 32.10,54.21
accept Super Strong Metal Plates!##11644 |goto 32.10,54.21
stickystart "Collect_Super_Strong_Metal_Plates"
stickystart "Collect_Tuskarr_Relics"
stickystart "Collect_Horn_of_the_Ancient_Mariner"
step
Enter the building |goto 32.20,48.85 < 10 |walk
click Pneumatic Tank Transjigamarig##187683
|tip Inside the building.
collect Pneumatic Tank Transjigamarig##34785 |q 11643/1 |goto 32.38,49.16
step
Enter the building |goto 31.73,51.88 < 10 |walk
talk Mootoo the Younger##25504
|tip Upstairs inside the building.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
accept Escaping the Mist##11664 |goto Borean Tundra/0 31.88,52.32
step
Watch the dialogue
|tip Follow Mootoo the Younger and protect her as she walks.
|tip She eventually walks to this location.
Save Mootoo |q 11664/1 |goto 31.63,54.38
step
talk Elder Mootoo##25503
turnin Escaping the Mist##11664 |goto 31.68,54.37
step
label "Collect_Super_Strong_Metal_Plates"
click Super Strong Metal Plate##187687+
|tip They look like scraps of tan metal objects on the ground.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect 10 Super Strong Metal Plate##34786 |q 11644/1 |goto 30.67,50.99
step
label "Collect_Tuskarr_Relics"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect 8 Tuskarr Relic##34814 |q 11655/1 |goto 30.67,50.99
step
label "Collect_Horn_of_the_Ancient_Mariner"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect Horn of the Ancient Mariner##34813 |q 11660/1 |goto 30.67,50.99
step
talk Mobu##25475
|tip He walks around this area.
turnin Mobu's Pneumatic Tank Transjigamarig##11643 |goto 32.10,54.21
turnin Super Strong Metal Plates!##11644 |goto 32.10,54.21
accept Tanks a lot...##11651 |goto 32.10,54.21
step
talk Gorge the Corpsegrinder##25329
turnin Tanks a lot...##11651 |goto 32.25,54.07
accept The Plains of Nasam##11652 |goto 32.25,54.07
step
talk Waltor of Pal'ea##25476
turnin Into the Mist##11655 |goto 32.34,54.27
accept Burn in Effigy##11656 |goto 32.34,54.27
turnin Horn of the Ancient Mariner##11660 |goto 32.34,54.27
accept Orabus the Helmsman##11661 |goto 32.34,54.27
step
use Tuskarr Torch##34830
Destroy Bor's Anvil |q 11656/4 |goto 30.00,61.67
step
use Horn of the Ancient Mariner##34844
Watch the dialogue
|tip A boat approaches and stops near you.
|tip Enemies will attack one at a time, then Orabus the Helmsman will attack.
kill Kvaldir Crewman##32577+
kill Orabus the Helmsman##32576 |q 11661/1 |goto 26.76,54.67
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy Bor's Hammer |q 11656/3 |goto 29.78,52.57
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Kur Drakkar |q 11656/2 |goto 31.00,48.94
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Serpent's Maw |q 11656/1 |goto 31.69,48.32
step
talk Waltor of Pal'ea##25476
turnin Burn in Effigy##11656 |goto 32.34,54.27
turnin Orabus the Helmsman##11661 |goto 32.34,54.27
accept Seek Out Karuk!##11662 |goto 32.34,54.27
step
clicknpc Horde Siege Tank##25334+
|tip They look like horde wooden artillery machines.
|tip Click any of them.
Control a Horde Siege Tank |invehicle |goto 31.92,54.40 |q 11652
step
_NOTE:_
In the Next Steps:
|tip You will use the siege tank abilities to kill enemies and rescue allies.
|tip Drive over the red metal Abandoned Fuel Tank barrels to get more mana.
|tip Be careful to not aggro too many enemies at once, or you might lose the siege tank.
|tip If you lose the siege tank, go back a few steps to get another one.
Click to Continue |confirm |q 11652
stickystart "Rescue_Injured_Warsong_Soldiers"
stickystart "Obliterate_Scourge_Units"
step
Enter the Plains of Nasam |goto 33.51,56.87 < 40 |only if walking and not subzone("Plains of Nasam")
Identify the Scourge Leader |q 11652/3 |goto 36.15,63.75
step
label "Rescue_Injured_Warsong_Soldiers"
Rescue #3# Injured Warsong Soldiers |q 11652/2 |goto 36.15,63.75
|tip Use the "Rescue Injured Soldier" ability on your action bar on Injured Warsong Mages.
|tip They look like friendly Horde NPCs of various races.
|tip They are usually in the outskirts surrounding the undead enemies.
|tip You can find them all around the Plains of Nasam area. |notinsticky
step
label "Obliterate_Scourge_Units"
Kill enemies around this area
|tip They look like undead enemies.
|tip Use the abilities on your action bar.
|tip You can find them all around the Plains of Nasam area. |notinsticky
Obliterate #100# Scourge Units |q 11652/1 |goto 36.15,63.75
step
talk Karuk##25435
turnin Seek Out Karuk!##11662 |goto 47.13,75.48
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
Hearth to Warsong Hold |complete subzone("Warsong Hold") |q 11652
|only if (subzone("Shrine of Scales") or subzone("Riplash Strand"))
step
talk Armorer Orkuruk##25274
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Armorer Orkuruk##25274 |goto 41.15,55.54 |q 11652
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin The Plains of Nasam##11652 |goto 41.35,53.59
step
Leave the building |goto 39.88,55.54 < 15 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
Run up the ramp to leave Mightstone Quarry |goto 39.18,55.53 < 10 |only if walking and (subzone("Warsong Hold") or subzone("Mightstone Quarry"))
talk Shadowstalker Ickoris##25437
|tip He walks around this area.
turnin Reinforcements Incoming...##11618 |goto 38.08,52.55
accept The Warsong Farms##11686 |goto 38.08,52.55
step
talk Shadowstalker Canarius##25438
accept Merciful Freedom##11676 |goto 37.92,52.58
step
talk Farmer Torp##25607
accept Damned Filthy Swine##11688 |goto 37.91,52.33
stickystart "Free_Scourge_Prisoners"
stickystart "Kill_Unliving_Swine"
step
Scout the Warsong Slaughterhouse |q 11686/3 |goto 39.65,48.15
|tip Be careful to avoid the elite enemy nearby.
step
Scout Torp's Farm |q 11686/2 |goto 36.97,52.26
step
Scout the Warsong Granary |q 11686/1 |goto 34.82,54.83
step
label "Free_Scourge_Prisoners"
Kill enemies around this area
|tip The Unliving Swine boars will not drop the cage keys.
collect Scourge Cage Key##34908+ |n
click Scourge Cage##45807+
|tip They look like tall metal cages with large white skulls on top of them around this area.
Free #5# Scourge Prisoners |q 11676/1 |goto 36.20,49.53
step
label "Kill_Unliving_Swine"
kill 10 Unliving Swine##25600 |q 11688/1 |goto 35.75,50.85
|tip They look like grey boars around this area.
step
talk Farmer Torp##25607
turnin Damned Filthy Swine##11688 |goto 37.91,52.33
accept Bring 'Em Back Alive##11690 |goto 37.91,52.33
step
talk Shadowstalker Canarius##25438
turnin Merciful Freedom##11676 |goto 37.92,52.58
step
talk Shadowstalker Ickoris##25437
|tip He walks around this area.
turnin The Warsong Farms##11686 |goto 38.08,52.55
accept Get to Getry##11703 |goto 38.08,52.55
step
use Torp's Kodo Snaffle##34954
|tip Use it on an Infected Kodo Beasts.
|tip They look like large green dinosaurs laying on the ground around this area.
Return the Infected Kodo Beasts
|tip Bring the kodos back to Farmer Torp, and use the "Deliver Kodo" ability on your action bar.
|tip Repeat this process.
Rescue #8# Kodos |q 11690/1 |goto 36.76,50.68
Bring the Kodos to [37.91,52.33]
step
talk Farmer Torp##25607
turnin Bring 'Em Back Alive##11690 |goto 37.91,52.33
step
talk Shadowstalker Getry##25729
|tip At the top of the tower.
turnin Get to Getry##11703 |goto 34.59,46.42
accept Foolish Endeavors##11705 |goto 34.59,46.42
step
Watch the dialogue
|tip Follow Shadowstalker Getry as he walks.
|tip You will become stunned.
kill Varidus the Flenser##25618
|tip Your allies will help you fight.
Defeat Varidus the Flenser |q 11705/1 |goto 35.25,46.25
step
Enter Warsong Hold |goto 39.88,55.54 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Armorer Orkuruk##25274
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Armorer Orkuruk##25274 |goto 41.15,55.54 |q 11705
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Foolish Endeavors##11705 |goto 41.35,53.59
accept Nork Bloodfrenzy's Charge##11709 |goto 41.35,53.59
step
Leave the building |goto 42.73,55.85 < 15 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
talk Warden Nork Bloodfrenzy##25379
turnin Nork Bloodfrenzy's Charge##11709 |goto 43.72,54.43
accept Coward Delivery... Under 30 Minutes or it's Free##11711 |goto 43.72,54.43
step
Run up the ramp to leave Mightstone Quarry |goto 43.84,53.15 < 10 |only if walking and subzone("Mightstone Quarry")
talk Bloodmage Laurith##25381
|tip Make sure the Alliance Deserter follows you to this location.
|tip Don't get too far away from him, or you will lose him and have to restart the quest.
accept The Wondrous Bloodspore##11716 |goto 52.07,52.49
stickystart "Collect_Bloodspore_Carpels"
step
use Warsong Flare Gun##34971
|tip Make sure the Alliance Deserter follows you to this location.
|tip Don't get too far away from him, or you will lose him and have to restart the quest.
Watch the dialogue
Deliver the Alliance Deserter |q 11711/1 |goto 55.31,50.80
step
talk Scout Tungok##25440
|tip He walks around this area riding a grey and white wolf.
turnin Coward Delivery... Under 30 Minutes or it's Free##11711 |goto 52.55,52.19
accept Vermin Extermination##11714 |goto 52.55,52.19
stickystart "Kill_Bloodspore_Roasters"
stickystart "Kill_Bloodspore_Firestarters"
stickystart "Kill_Bloodspore_Harvesters"
step
label "Collect_Bloodspore_Carpels"
click Bloodspore Carpel##187902+
|tip They look like red flowery plant stalks with a bright red bulb at the top of them.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
collect 10 Bloodspore Carpel##34974 |q 11716/1 |goto 51.76,51.93
You can find more around [51.54,61.35]
step
talk Bloodmage Laurith##25381
turnin The Wondrous Bloodspore##11716 |goto 52.07,52.49
accept Pollen from the Source##11717 |goto 52.07,52.49
step
kill Bloodspore Moth##25464+
|tip They look like large flying insects.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
collect 5 Bloodspore Moth Pollen##34976 |q 11717/1 |goto 51.76,51.93
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Roasters"
kill 2 Bloodspore Roaster##25468 |q 11714/3 |goto 51.76,51.93
|tip They look like blue kobolds.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Firestarters"
kill 5 Bloodspore Firestarter##25470 |q 11714/2 |goto 51.76,51.93
|tip They look like smaller kobolds with orange glowing fists.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Harvesters"
kill 8 Bloodspore Harvester##25467 |q 11714/1 |goto 51.76,51.93
|tip They look like slightly larger kobolds.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
talk Bloodmage Laurith##25381
turnin Pollen from the Source##11717 |goto 52.07,52.49
accept A Suitable Test Subject##11719 |goto 52.07,52.49
step
use Pollinated Bloodspore Flower##34978
Watch the dialogue
|tip You will receive a buff.
|tip The quest goal will complete when the buff expires.
Use the Bloodspore Flower |q 11719/1 |goto 52.07,52.49
step
talk Bloodmage Laurith##25381
turnin A Suitable Test Subject##11719 |goto 52.07,52.49
accept The Invasion of Gammoth##11720 |goto 52.07,52.49
step
talk Primal Mighthorn##25380
turnin The Invasion of Gammoth##11720 |goto 52.18,52.82
accept Gammothra the Tormentor##11721 |goto 52.18,52.82
step
talk Scout Tungok##25440
|tip He walks around this area riding a grey and white wolf.
turnin Vermin Extermination##11714 |goto 52.55,52.19
step
Follow the path up and around above the cave |goto  47.55,54.84 < 15 |only if walking and not (subzone("Gammoth") and _G.IsIndoors())
click Massive Glowing Egg##187905
accept Massive Moth Omelet?##11724 |goto 48.55,59.03
step
_In The Next Step:_
Use the Pouch of Crushed Bloodspore
|tip You can use the pouch on any large blue magnataur elites inside the cave.
|tip They will be become non-elite.
Click Here to Continue |confirm |q 11721
step
Jump down and enter the cave |goto 49.36,58.40 < 20 |walk |only if not (subzone("Gammoth") and _G.IsIndoors())
use Pouch of Crushed Bloodspore##34979
|tip Use it on Gammothra the Tormentor.
|tip He look like a large blue magnataur that walks around this area.
|tip Inside the cave, on the bottom floor.
|tip Follow the spiral path down, or jump down the center of the cave into the water, to get to this location.
kill Gammothra the Tormentor##25789
|tip He will become non-elite.
collect Head of Gammothra##34980 |q 11721/1 |goto 46.08,62.19
step
Follow the spiral path up |goto 46.13,60.52 < 10 |walk |only if subzone("Gammoth") and _G.IsIndoors()
Continue up the spiral path and leave the cave |goto 49.46,58.35 < 40 |walk |only if subzone("Gammoth") and _G.IsIndoors()
talk Primal Mighthorn##25380
turnin Gammothra the Tormentor##11721 |goto 52.18,52.82
accept Trophies of Gammoth##11722 |goto 52.18,52.82
step
talk Bloodmage Laurith##25381
turnin Massive Moth Omelet?##11724 |goto 52.07,52.49
step
use the Hearthstone##6948
Hearth to Warsong Hold |complete subzone("Warsong Hold") |q 11722
|only if subzone("Bloodspore Plains")
step
talk Armorer Orkuruk##25274
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Armorer Orkuruk##25274 |goto 41.15,55.54 |q 11722
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Trophies of Gammoth##11722 |goto 41.35,53.59
accept Hellscream's Champion##11916 |goto 41.35,53.59
step
talk Durkot Wolfbrother##26044
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
Tell him _"I am ready to leave, Durkot."_
Begin Traveling to Taunka'le Village |ontaxi |goto 40.23,55.09 |q 11916
step
Watch the dialogue
|tip You will travel automatically.
Travel to Taunka'le Village |offtaxi |goto 77.49,37.84 |q 11916 |notravel
step
talk Omu Spiritbreeze##26847
fpath Taunka'le Village |goto 77.76,37.77
step
talk Sage Earth and Sky##25982
turnin Ride to Taunka'le Village##11888 |goto 77.25,38.47
accept What Are They Up To?##11890 |goto 77.25,38.47
step
talk Greatfather Mahan##24702
accept Scouting the Sinkholes##11684 |goto 77.07,37.82
step
talk Fezzix Geartwist##25849
accept Load'er Up!##11881 |goto 77.49,36.96
step
Enter the building |goto 77.34,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
accept Sage Highmesa is Missing##11674 |goto 77.30,36.88
step
Enter the building |goto 76.71,37.33 < 15 |walk
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Hellscream's Champion##11916 |goto 75.89,37.25
step
use Map of the Geyser Fields##34920
Mark the Location of the South Sinkhole |q 11684/1 |goto 70.51,37.01
step
use Map of the Geyser Fields##34920
Mark the Location of the Northeast Sinkhole |q 11684/2 |goto 69.88,32.88
step
use Map of the Geyser Fields##34920
Mark the Location of the Northwest Sinkhole |q 11684/3 |goto 66.50,32.84
step
Inspect the Fizzcrank Pumping Station Environs |q 11890/1 |goto 64.68,24.49
step
talk Crashed Recon Pilot##25984
accept Emergency Supplies##11887 |goto 64.03,35.76
step
clicknpc Fizzcrank Recon Pilot##25841+
|tip They look like dead gnomes in black clothing laying on the ground.
|tip They are usually on the white parts of the ground next to water.
|tip You can find them all around the Scalding Pools area.
Choose _Search the body for the pilot's emergency toolkit._
collect 7 Gnomish Emergency Toolkit##35276 |q 11887/1 |goto 62.98,35.75
You can find more around: |notinsticky
[62.39,38.87]
[60.56,36.41]
step
use Jenny's Whistle##35272
|tip Jenny will appear next to you.
|tip She looks like a mule with cargo strapped to her back.
|tip You need to lead her back to safety at Taunka'le Village without her losing cargo.
|tip Be careful to not allow Jenny to get attacked as you travel.
|tip She will follow you as you walk.
Click Here Once Jenny is Following You |confirm |goto 63.49,36.90 |q 11881
step
Watch the dialogue
|tip Make sure Jenny follows you at all times, and protect her as she walks.
|tip Be careful to not allow Jenny to get attacked as you travel.
|tip You need to lead her back to safety at Taunka'le Village without her losing cargo.
|tip Don't get too far away from her, or you'll lose her and have to restart the quest.
Return Jenny to Safety Without Losing Cargo |q 11881/1 |goto 77.52,37.04 |notravel
step
talk Fezzix Geartwist##25849
turnin Load 'er Up!##11881 |goto 77.49,36.96
turnin Emergency Supplies##11887 |goto 77.49,36.96
step
talk Dorain Frosthoof##25983
accept The Power of the Elements##11893 |goto 77.62,36.95
step
talk Greatfather Mahan##24702
turnin Scouting the Sinkholes##11684 |goto 77.07,37.82
accept The Heart of the Elements##11685 |goto 77.07,37.82
step
talk Sage Earth and Sky##25982
turnin What Are They Up To?##11890 |goto 77.25,38.47
accept Master the Storm##11895 |goto 77.25,38.47
step
clicknpc Storm Totem##26048
|tip Inside the building.
|tip An air elemental will appear.
kill Storm Tempest##26045
Master the Storm |q 11895/1 |goto 77.06,38.71
step
talk Sage Earth and Sky##25982
turnin Master the Storm##11895 |goto 77.25,38.47
accept Weakness to Lightning##11896 |goto 77.25,38.47
step
talk Iron Eyes##26104
accept Cleaning Up the Pools##11906 |goto 76.92,37.63
step
Enter the building |goto 77.34,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
accept Souls of the Decursed##11899 |goto 77.30,36.88
step
Enter the building |goto 76.72,37.34 < 15 |walk
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11899
step
use the Windsoul Totem##35281
|tip This will plant a Windsoul Totem in the ground.
kill Steam Rager##24601+
|tip They look like white ghosts.
|tip Kill them near the Windsoul Totem.
|tip You can find them all around the Steam Springs area.
Collect #10# Energy |q 11893/1 |goto 72.12,31.43
stickystart "Capture_Gnome_Souls"
stickystart "Collect_Fizzcrank_Spare_Parts"
step
use Sage's Lightning Rod##35352
|tip Use it on enemies that look like robots.
|tip You can find them all around the Geyser Fields area.
|tip The gnomes will not count for the quest goal.
Kill enemies around this area
|tip Kill them after using the lightning rod on them.
Weaken and Destroy #15# Robots |q 11896/1 |goto 63.11,21.53
step
label "Capture_Gnome_Souls"
kill Fizzcrank Mechagnome##25814+
|tip They look like small mechanical gnomes.
|tip You can find them all around the Geyser Fields area. |notinsticky
use The Greatmother's Soulcatcher##35401
|tip Use it on their corpses.
Capture #10# Gnome Souls |q 11899/1 |goto 63.11,21.53
step
label "Collect_Fizzcrank_Spare_Parts"
click Fizzcrank Spare Parts##187901+
|tip They look like various shaped metal parts on the ground.
|tip You can find them all around the Geyser Fields area. |notinsticky
collect 15 Fizzcrank Spare Parts##34972 |q 11906/1 |goto 63.11,21.53
step
use the Hearthstone##6948
Hearth to Taunka'le Village |complete subzone("Taunka'le Village") |q 11906
|only if subzone("The Geyser Fields") or subzone("Festering Pools") or subzone("Fizzcrank Pumping Station") or subzone("Mid Point Station")
step
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11906
step
talk Iron Eyes##26104
turnin Cleaning Up the Pools##11906 |goto 76.92,37.63
step
talk Sage Earth and Sky##25982
turnin Weakness to Lightning##11896 |goto 77.25,38.47
accept The Sub-Chieftains##11907 |goto 77.25,38.47
step
Enter the building |goto 77.33,37.00 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Souls of the Decursed##11899 |goto 77.30,36.88
accept Defeat the Gearmaster##11909 |goto 77.30,36.88
step
talk Dorain Frosthoof##25983
turnin The Power of the Elements##11893 |goto 77.62,36.95
step
talk Fezzix Geartwist##25849
accept Patching Up##11894 |goto 77.49,36.96
step
kill Marsh Caribou##25680+
|tip They look like brown deer bucks.
|tip You can find them all around the Flood Plains area.
collect 5 Uncured Caribou Hide##35288 |goto 78.11,40.29 |q 11894
You can find more around [78.29,32.61]
step
kill Frozen Elemental##25715+
|tip They look like white rock elementals.
|tip You can find them all around this icy beach area.
collect 5 Elemental Heart##34956 |q 11685/1 |goto 85.57,46.18
step
Enter the building |goto 76.72,37.34 < 15 |walk
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11685
step
talk Wind Tamer Barah##24730
turnin The Heart of the Elements##11685 |goto 75.58,35.77
accept The Horn of Elemental Fury##11695 |goto 75.58,35.77
step
_Destroy These Items:_
|tip They are no longer needed.
trash The Legend of the Horn##34960
step
use Uncured Caribou Hide##35288
collect 5 Steam Cured Hide##35289 |q 11894/1 |goto 75.87,32.49
step
kill Chieftain Gurgleboggle##25725
|tip He looks like a larger green gremlin.
|tip He walks around this area.
collect Gurbleboggle's Key##34962 |goto 78.40,28.70 |q 11695
step
click Gurbleboggle's Bauble
|tip It looks like a large white pearl sitting on a stone table in the water.
collect Lower Horn Half##34963 |q 11695/2 |goto 78.72,28.33
step
click North Point Station Valve##188107
kill ED-210##25831 |q 11907/2 |goto 65.44,17.45
step
click West Point Station Valve##188106
kill Twonky##25830 |q 11907/1 |goto 60.19,20.38
step
click Mid Point Station Valve##188108
kill Max Blasto##25832 |q 11907/3 |goto 63.66,22.48
step
Run up the ramp and follow the path to the top of the platform |goto 65.55,23.03 < 15 |only if walking
Enter the building at the top of the platform |goto 64.59,23.15 < 10 |walk
click The Gearmaster's Manual##190335
|tip Inside the building at the top of the platform.
|tip Gearmaster Mechazod will appear and attack you after you click the book.
Research the Gearmaster's Manual |q 11909/1 |goto 64.42,23.40
step
Watch the dialogue
|tip Inside the building at the top of the platform.
kill Gearmaster Mechazod##25834
collect Mechazod's Head##35486 |q 11909/2 |goto 64.42,23.40
step
click South Point Station Valve##188109
kill The Grinder##25833 |q 11907/4 |goto 65.25,28.75
step
kill Chieftain Burblegobble##25726
|tip He looks like a larger red gremlin.
|tip He walks around this area.
collect Burblegobble's Key##34961 |goto 68.33,40.26 |q 11695
step
click Burblegobble's Bauble##187886
|tip It looks like a large white pearl sitting on a stone table in the water.
collect Upper Horn Half##34964 |q 11695/1 |goto 68.52,40.38
step
talk Wind Tamer Barah##24730
turnin The Horn of Elemental Fury##11695 |goto 75.58,35.77
step
Watch the dialogue
talk Wind Tamer Barah##24730
accept The Collapse##11706 |goto 75.58,35.77
step
talk Fezzix Geartwist##25849
turnin Patching Up##11894 |goto 77.49,36.96
step
Enter the building |goto 77.33,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Defeat the Gearmaster##11909 |goto 77.30,36.88
step
talk Sage Earth and Sky##25982
turnin The Sub-Chieftains##11907 |goto 77.25,38.47
step
Enter the building |goto 76.72,37.34 < 15 |walk
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11706
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
accept Shrouds of the Scourge##11628 |goto 75.89,37.25
step
use The Horn of Elemental Fury##34968
Watch the dialogue
|tip Lord Kryxix will appear nearby.
Collapse the Nerubian Tunnels |q 11706/2 |goto 70.52,37.00
step
kill Lord Kryxix##25629 |q 11706/1 |goto 70.69,36.55
|tip He looks like a huge blue beetle that walks around this area.
step
talk Sage Highmesa##25604
turnin Sage Highmesa is Missing##11674 |goto 74.67,23.66
accept A Proper Death##11675 |goto 74.67,23.66
stickystart "Collect_Scourged_Mammoth_Pelts"
step
kill 10 Plagued Magnataur##25615 |q 11675/1 |goto 76.09,20.97
|tip They look like large blue centaurs.
step
label "Collect_Scourged_Mammoth_Pelts"
kill Scourged Mammoth##25452+
|tip They look like brown hairy elephants.
collect 5 Scourged Mammoth Pelt##34775 |q 11628/1 |goto 76.09,20.97
You can find more around [79.26,25.60]
step
talk Sage Highmesa##25604
turnin A Proper Death##11675 |goto 74.67,23.66
accept Stop the Plague##11677 |goto 74.67,23.66
step
Enter the cave |goto 77.93,18.80 < 20 |walk
use Highmesa's Cleansing Seeds##34913
|tip Inside the cave.
Neutralize the Plague Cauldron |q 11677/1 |goto 78.30,17.97
step
talk Sage Highmesa##25604
turnin Stop the Plague##11677 |goto 74.67,23.66
accept Find Bristlehorn##11678 |goto 74.67,23.66
accept Fallen Necropolis##11683 |goto 74.67,23.66
stickystart "Destroy_Talramas_Scourge"
step
Enter the building |goto 68.62,15.26 < 40 |walk
Follow the path up |goto 69.10,12.58 < 15 |walk
talk Longrunner Bristlehorn##25658
|tip Inside a cage.
|tip Upstairs inside the building.
turnin Find Bristlehorn##11678 |goto 69.76,12.62
accept The Doctor and the Lich-Lord##11687 |goto 69.76,12.62
step
Follow the winding path up to the very top of the building |goto 69.51,15.82 < 10 |only if walking
kill Lich-Lord Chillwinter##25682 |q 11687/2 |goto 70.13,13.40
|tip He walks around this area.
|tip On top of the building.
step
kill Doctor Razorgrin##25678 |q 11687/1 |goto 69.70,12.87
|tip He walks around this area inside the building.
|tip Jump down to him from on top of the building.
step
label "Destroy_Talramas_Scourge"
Kill enemies around this area
Destroy #20# Talramas Scourge |q 11683/1 |goto 68.24,19.13
step
talk Sage Highmesa##25604
turnin Fallen Necropolis##11683 |goto 74.67,23.66
turnin The Doctor and the Lich-Lord##11687 |goto 74.67,23.66
accept Return with the Bad News##11689 |goto 74.67,23.66
step
talk Wind Tamer Barah##24730
turnin The Collapse##11706 |goto 75.58,35.77
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Shrouds of the Scourge##11628 |goto 75.89,37.25
accept The Bad Earth##11630 |goto 75.89,37.25
step
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11630
step
Enter the building |goto 77.33,37.00 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Return with the Bad News##11689 |goto 77.30,36.88
step
click Scourged Earth##187677+
|tip They look like piles of brown dirt on the ground.
|tip You can find them all around this area.
collect 8 Scourged Earth##34774 |q 11630/1 |goto 80.58,32.38
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin The Bad Earth##11630 |goto 75.89,37.25
accept Blending In##11633 |goto 75.89,37.25
step
_NOTE:_
During the Next Steps:
|tip You will use an item to become invisible.
|tip As you travel around to complete the quest goals, avoid abomination enemies.
|tip They can see through your invisibility and will attack you.
|tip You won't lose your invisibility if you mount.
|tip If you get attacked and lose your invisibility, unequip the cloak, and equip it again to regain the invisibility buff.
Click Here to Continue |confirm |q 11633
step
use the Imbued Scourge Shroud##34782
|tip You will become invisible.
Gain the Shroud of the Scourge Buff |havebuff spell:45614 |goto 84.27,30.79 |q 11633
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs and enter the building |goto 88.64,28.33 < 15 |walk
Scout the Spire of Pain |q 11633/3 |goto 88.96,28.56
|tip Inside the building.
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
Scout the Spire of Blood |q 11633/2 |goto 88.07,20.89
|tip Upstairs inside the building.
step
Enter the building |goto 84.24,21.82 < 15 |walk
Scout the Spire of Decay |q 11633/1 |goto 84.00,20.89
|tip Inside the building.
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Enter the building |goto 76.72,37.34 < 15 |walk
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Blending In##11633 |goto 75.89,37.25
accept Words of Power##11640 |goto 75.89,37.25
step
Equip Your Regular Back Armor
Click Here After Equipping Your Regular Back Armor |confirm |q 11640
step
talk Durm Icehide##24706
|tip Outside, on the balcony of the building.
accept A Courageous Strike##11641 |goto 75.96,37.16
step
talk Sage Aeire##24709
|tip Outside, on the balcony of the building.
accept Neutralizing the Cauldrons##11647 |goto 75.96,37.34
step
talk Pahu Frosthoof##26709
|tip Inside the building.
home Taunka'le Village |goto 76.25,37.19
step
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11647
stickystart "Skay_Enkilah_Necromancers"
stickystart "Slay_Enkilah_Ghouls"
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs |goto 87.32,27.41 < 30 |only if walking
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the East Cauldron |q 11647/1 |goto 87.73,29.78
step
Run up the stairs and enter the building |goto 88.63,28.33 < 5 |walk
kill High Priest Talet-Kha##26073
|tip Inside the building.
|tip You must kill the 2 cocoons next to him before you can attack him.
collect High Priest Talet-Kha's Scroll##35354 |q 11640/2 |goto 89.38,28.86
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
kill Darkfallen Bloodbearer##26115
|tip He looks like a blood elf wearing black armor.
|tip He walks up and down the path around this area on the building.
collect Vial of Fresh Blood##34815 |n
use Vial of Fresh Blood##34815
accept The Spire of Blood##11654 |goto 87.22,21.24
step
Enter the bottom floor of the building |goto 87.78,21.67 < 15 |walk
talk Snow Tracker Grumm##25516
|tip Inside the building, on the bottom floor.
turnin The Spire of Blood##11654 |goto 87.57,19.95
accept Shatter the Orbs!##11659 |goto 87.57,19.95
step
kill En'Kilah Blood Globe##25534+
|tip They look like red globes sitting on golden pedestals.
|tip Inside the building, on the bottom floor.
Shatter #5# Blood Globes |q 11659/1 |goto 87.73,19.61
step
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
kill High Priest Andorath##25392
|tip Inside the building, on the top floor.
|tip To find him, follow the path up, outside the building, and enter the top floor of the building from either side.
collect High Priest Andorath's Scroll##35355 |q 11640/3 |goto 88.05,20.94
step
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the Central Cauldron |q 11647/2 |goto 86.20,22.61
step
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the West Cauldron |q 11647/3 |goto 85.51,20.22
step
Enter the building |goto 84.24,21.82 < 15 |walk
kill High Priest Naferset##26076
|tip Inside the building.
|tip You must kill the 3 enemies channeling on him before you can attack him.
collect High Priest Naferset's Scroll##35353 |q 11640/1 |goto 83.89,20.46
step
label "Skay_Enkilah_Necromancers"
kill 5 En'kilah Necromancer##25378 |q 11641/2 |goto 84.41,22.30
|tip They look like large humans wearing robes.
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
step
label "Slay_Enkilah_Ghouls"
kill 15 En'kilah Ghoul##25393 |q 11641/1 |goto 86.60,25.15
|tip They look like zombies.
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
step
use the Hearthstone##6948
Hearth to Taunka'le Village |complete subzone("Taunka'le Village") |q 11640
|only if subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay")
step
talk Durm Icehide##24706
|tip Outside, on the balcony of the building.
turnin A Courageous Strike##11641 |goto 75.96,37.16
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Words of Power##11640 |goto 75.89,37.25
step
talk Sage Aeire##24709
|tip Outside, on the balcony of the building.
turnin Neutralizing the Cauldrons##11647 |goto 75.96,37.34
step
talk Tewah Chillmane##26697
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Tewah Chillmane##26697 |goto 76.61,37.18 |q 11659
step
talk Snow Tracker Junek##24733
|tip Outside the building.
turnin Shatter the Orbs!##11659 |goto 76.75,37.88
step
talk Ataika##26169
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
Follow the road to leave Kaskala |goto 63.11,45.56 < 40 |only if walking and (subzone("Njord's Breath Bay") or subzone("Kaskala"))
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
use the D.E.H.T.A. Trap Smasher##35228
|tip Use it next to Trapped Mammoth Calves.
|tip They look like baby elephants stuck in metal traps on the ground around this area.
|tip Avoid killing any mammoths, since you'll get a debuff that will cause druid guards to attack you.
Free #8# Mammoth Calves |q 11876/1 |goto 56.38,39.08
You can find more around: |notinsticky
[55.79,32.94]
[54.72,28.92]
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto 56.80,44.04
accept The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto 57.05,44.32
turnin Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
accept Khu'nok Will Know##11878 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto 57.33,44.09
accept The Abandoned Reach##11870 |goto 57.33,44.09
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
Return to the Abandoned Reach |complete subzone("The Abandoned Reach") |goto 60.71,62.65 |q 11872
|only if (dist("Borean Tundra 60.71,62.65") < 1000) and not subzone("The Abandoned Reach")
step
Follow the path up to leave the Abandoned Reach |goto 57.63,55.03 < 20 |only if walking and subzone("The Abandoned Reach")
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto 57.33,44.08
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto 56.80,44.04
step
click Elder Atkanok##187565
accept The Honored Ancestors##11605 |goto 54.60,36.00
step
talk Etaruk##25292
accept Reclaiming the Quarry##11612 |goto 54.29,36.10
step
talk Surristrasz##24795
|tip Follow the road to get to this location.
fpath Amber Ledge |goto 45.33,34.50
step
talk Librarian Donathan##25262
turnin Too Close for Comfort##11574|goto 45.26,33.35
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
|tip Follow the road to get to this location.
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
talk Librarian Whitley##27139
|tip Inside the tower, on the bottom floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Librarian Whitley##27139 |goto 46.52,32.56 |q 11682
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
talk Librarian Hamilton##27141
|tip He walks around this area.
|tip Sell any items you don't need, to clear some bag space.
|tip Follow the road to get to this location.
Visit the Vendor |vendor Librarian Hamilton##27141 |goto 45.27,33.94 |q 11582
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Sundered Chasm##11582 |goto 44.98,33.38
accept Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
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
Return to Transitus Shield |condition subzone("Transitus Shield") |q 11967
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
Visit the Vendor |vendor Archmage Berinand##25314 |goto 32.97,34.38 |q 12486
step
talk Spirit Talker Snarlfang##25339
turnin To Bor'gorok Outpost, Quickly!##12486 |goto 50.28,9.72
accept The Sky Will Know##11624 |goto 50.28,9.72
step
talk Kimbiza##26848
fpath Bor'gorok Outpost |goto 49.65,11.05
step
talk Overlord Bor'gorok##25326
accept Report to Steeljaw's Caravan##11591 |goto 49.62,10.58
step
talk Supply Master Taz'ishi##25736
accept King Mrgl-Mrgl##11702 |goto 48.96,10.27
step
talk Imperean##25376
turnin The Sky Will Know##11624 |goto 46.57,9.35
accept Boiling Point##11627 |goto 46.57,9.35
step
kill Churn##25418
|tip He looks like a water elemental.
|tip He will eventually surrender.
Fight Churn Until He Submits |q 11627/2 |goto 45.89,13.09
step
kill Simmer##25416
|tip He looks like a fire elemental.
|tip He will eventually surrender.
Fight Simmer Until He Submits |q 11627/1 |goto 50.95,15.30
step
talk Imperean##25376
turnin Boiling Point##11627 |goto 46.57,9.35
accept Motes of the Enraged##11649 |goto 46.57,9.35
step
kill Enraged Tempest##25415+
|tip They look like air elementals.
|tip You can find them all around the Ruins of Eldra'nath area.
collect 5 Tempest Mote##34800 |q 11649/1 |goto 44.06,9.13
step
talk King Mrgl-Mrgl##25197
turnin King Mrgl-Mrgl##11702 |goto 43.50,13.97
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
|tip They look like black and white whales.
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
Follow the path up the cliffside |goto 42.64,12.41 < 15 |only if walking and subzone("Winterfin Retreat")
talk Imperean##25376
turnin Motes of the Enraged##11649 |goto 46.57,9.35
accept Return to the Spirit Talker##11629 |goto 46.57,9.35
step
talk Spirit Talker Snarlfang##25339
turnin Return to the Spirit Talker##11629 |goto 50.28,9.72
accept Vision of Air##11631 |goto 50.28,9.72
step
use Imperean's Primal##34779
Watch the dialogue
Divine Farseer Grimwalker's Fate |q 11631/1 |goto 50.22,9.73
step
talk Spirit Talker Snarlfang##25339
turnin Vision of Air##11631 |goto 50.28,9.72
accept Farseer Grimwalker's Spirit##11635 |goto 50.28,9.72
step
Enter the building |goto 49.53,10.16 < 10 |walk
talk Matron Magah##27069
|tip Inside the building.
home Bor'gorok Outpost |goto 49.67,10.19
step
talk Ortrosh##25374
|tip He walks around this area.
accept Revenge Upon Magmoth##11639 |goto 50.07,10.14
stickystart "Kill_Magmoth_Foragers"
stickystart "Kill_Magmoth_Shamans"
step
kill 3 Magmoth Crusher##25434 |q 11639/3 |goto 56.49,11.92
|tip They look like large blue magnataurs.
|tip You can find them all around the Magmoth area.
step
label "Kill_Magmoth_Foragers"
kill 5 Magmoth Forager##25429 |q 11639/2 |goto 54.99,13.12
|tip They look like brown kobolds holding torches.
|tip You can find them all around the Magmoth area. |notinsticky
stickystart "Kill_Mates_of_Magmothregar"
step
Enter the cave |goto 54.01,13.48 < 20 |walk
Jump down carefully into the water here |goto 54.80,12.34 < 10 |walk
Follow the path at the bottom of the cave |goto 56.34,11.35 < 30 |walk
talk Farseer Grimwalker's Spirit##25425
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
|tip Kill the Magmoth Shamans to free Farseer Grimwalker's Spirit, so that you can talk to him.
turnin Farseer Grimwalker's Spirit##11635 |goto 56.17,9.11
accept Kaganishu##11637 |goto 56.17,9.11
step
kill Kaganishu##25427
|tip Inside the cave, on the bottom floor.
collect Kaganishu's Fetish##34781 |q 11637/2 |goto 56.19,12.77
step
use Kaganishu's Fetish##34781
|tip Use it on Farseer Grimwalker's Spirit.
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
Set Farseer Grimwalker Free |q 11637/1 |goto 56.17,9.11
step
talk Farseer Grimwalker's Spirit##25425
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
turnin Kaganishu##11637 |goto 56.17,9.11
accept Return My Remains##11638 |goto 56.17,9.11
step
click Farseer Grimwalker's Remains##187673
|tip It looks like a skeleton on the ground.
|tip Inside the cave, on the bottom floor.
collect Farseer Grimwalker's Remains##34773 |q 11638/1 |goto 56.17,9.11
step
label "Kill_Mates_of_Magmothregar"
kill 3 Mate of Magmothregar##25432 |q 11639/4 |goto 54.01,13.48
|tip They look like large blue magnataurs.
|tip All around inside the cave.
step
label "Kill_Magmoth_Shamans"
kill 10 Magmoth Shaman##25428 |q 11639/1 |goto 54.01,13.48
|tip They look like blue kobolds next to fire totems channeling an orange fire spell on objects.
|tip Inside and outside the cave. |notinsticky
|tip You can find them all around the Magmoth area. |notinsticky
step
use the Hearthstone##6948
Hearth to Bor'gorok Outpost |complete subzone("Bor'gorok Outpost") |q 11638
|only if subzone("Magmoth")
step
talk Drigoth##27067
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Drigoth##27067 |goto 49.74,10.08 |q 11638
step
talk Ortrosh##25374
|tip Inside the building.
turnin Revenge Upon Magmoth##11639 |goto 49.55,9.98
step
talk Spirit Talker Snarlfang##25339
turnin Return My Remains##11638 |goto 50.28,9.72
step
talk Grunt Ragefist##25336
|tip She walks around this area.
turnin Report to Steeljaw's Caravan##11591 |goto 48.39,19.32
accept The Honored Dead##11593 |goto 48.39,19.32
accept Put Them to Rest##11594 |goto 48.39,19.32
step
talk Longrunner Proudhoof##25335
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept We Strike!##11592 |goto 48.32,19.76
stickystart "Torch_Fallen_Caravan_Guards_And_Workers"
stickystart "Lay_Taunka_Spirits_to_Rest"
step
Watch the dialogue
|tip Follow Longrunner Proudhoof and protect him as he walks.
|tip He eventually walks to this location.
kill Force-Commander Steeljaw##25359
Successfully Assist Longrunner Proudhoof's Assault |q 11592/1 |goto 49.50,26.52
step
label "Torch_Fallen_Caravan_Guards_And_Workers"
use Ragefist's Torch##34692
|tip Use it next to Dead Caravan Guards and Dead Caravan Workers.
|tip They look like armored corpses of various Horde races laying on the ground.
|tip You can find them all around the Steeljaw's Caravan area. |notinsticky
Torch #10# Fallen Caravan Guards & Workers |q 11593/1 |goto 49.36,24.54
step
label "Lay_Taunka_Spirits_to_Rest"
Kill enemies around this area
|tip They look like Tauren ghosts.
|tip You can find them all around the Steeljaw's Caravan area. |notinsticky
Lay #20# Taunka Spirits to Rest |q 11594/1 |goto 49.36,24.54
step
talk Grunt Ragefist##25336
|tip She walks around this area.
turnin The Honored Dead##11593 |goto 48.39,19.32
turnin Put Them to Rest##11594 |goto 48.39,19.32
step
talk Overlord Bor'gorok##25326
turnin We Strike!##11592 |goto 49.62,10.58
step
Enter the building |goto 49.53,10.16 < 10 |walk
talk Drigoth##27067
|tip Inside the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Drigoth##27067 |goto 49.74,10.08 |q 11638
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."DragonBlight",
condition_suggested=function() return level >= 72 and level <= 74 and not completedq(12091) end,
next="Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",
},[[
step
talk Chief Plaguebringer Harris##24251
accept Give it a Name##12181 |goto Howling Fjord 53.59,66.36
step
talk Tobias Sarkhoff##24155
turnin Give it a Name##12181 |goto 52.01,67.38
accept To Venomspite!##12182 |goto 52.01,67.38
step
Begin Flying to Venomspite |ontaxi |goto 52.01,67.38 |q 12182
step
Take a Flight to Venomspite |offtaxi |goto Dragonblight 76.62,62.36 |q 12182 |notravel
step
talk Junter Weiss##26845
fpath Venomspite |goto 76.48,62.21
step
talk Quartermaster Bartlett##27267
accept Funding the War Effort##12303 |goto 75.97,63.26
accept Materiel Plunder##12209 |goto 75.97,63.26
step
click Wanted Poster##184945
accept Wanted: The Scarlet Onslaught##12205 |goto 76.95,62.84
step
Enter the building |goto 76.88,62.96 < 10 |walk
talk Mrs. Winterby##27027
|tip Inside the building.
home Venomspite |goto 76.87,63.13
step
talk Apothecary Vicky Levine##27248
|tip Outside the building.
accept Blighted Last Rites##12206 |goto 77.00,62.92
step
use the Flask of Blight##37129
|tip Next to the Scarlet Onslaught Prisoner.
|tip Inside the cage, outside the building.
Test the Flask of Blight |q 12206/1 |goto 77.05,63.01
step
talk Apothecary Vicky Levine##27248
turnin Blighted Last Rites##12206 |goto 77.00,62.92
accept Let Them Not Rise!##12211 |goto 77.00,62.92
step
Enter the building |goto 77.56,62.45 < 10 |walk
talk Chief Plaguebringer Middleton##27172
|tip Inside the building, on the bottom floor.
turnin To Venomspite!##12182 |goto 77.67,62.79 |only if haveq(12182) or completedq(12182)
accept The Forsaken Blight and You: How Not to Die##12188 |goto 77.67,62.79
step
talk Surveyor Hansen##32599
accept Beachfront Property##12304 |goto 79.35,65.06
stickystart "Collect_Ectoplasmic_Residues"
stickystart "Slay_Forgotten_Ghosts"
step
click Forgotten Treasure##189306+
|tip They look like small brown chests on the ground.
|tip You can find them all around this area.
collect 6 Forgotten Treasure##37580 |q 12303/1 |goto 83.03,70.80
You can find more underwater around [82.45,74.39]
step
label "Collect_Ectoplasmic_Residues"
Kill Forgotten enemies around this area
|tip They look like ghosts of Alliance soldiers.
|tip You can find them all around the Forgotten Shore area. |notinsticky
collect 10 Ectoplasmic Residue##37121 |q 12188/1 |goto 82.50,70.12
step
label "Slay_Forgotten_Ghosts"
Kill Forgotten enemies around this area |notinsticky
|tip They look like ghosts of Alliance soldiers. |notinsticky
|tip You can find them all around the Forgotten Shore area. |notinsticky
Slay #20# Forgotten Ghosts |q 12304/1 |goto 82.94,68.74
step
talk Surveyor Hansen##32599
turnin Beachfront Property##12304 |goto 79.35,65.06
stickystart "Collect_Scarlet_Onslaught_Weapons"
stickystart "Pick_Scarlet_Onslaught_Corpses_Clean"
stickystart "Slay_Members_Of_The_Scarlet_Onslaught"
step
Enter New Hearthglen |goto 72.20,69.49 < 50 |only if walking
click Scarlet Onslaught Armor Stand##188658+
|tip They look like wooden racks with silver chainmail chest armor hanging on them.
|tip You can find them all around the New Hearthglen area.
|tip They can also be inside the buildings.
|tip Don't go into the huge cathedral building with red carpet stairs, there's elite enemies inside.
collect 8 Scarlet Onslaught Armor##37136 |q 12209/1 |goto 70.44,73.33
step
label "Collect_Scarlet_Onslaught_Weapons"
click Scarlet Onslaught Weapon Rack##188659+
|tip They look like wooden racks with a polearm and sword on them.
|tip You can find them all around the New Hearthglen area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
|tip Don't go into the huge cathedral building with red carpet stairs, there's elite enemies inside. |notinsticky
collect 8 Scarlet Onslaught Weapon##37137 |q 12209/2 |goto 70.44,73.33
step
label "Pick_Scarlet_Onslaught_Corpses_Clean"
Kill Onslaught enemies around this area
|tip They look like humans wearing red and white armor.
|tip You can find them all around the New Hearthglen area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
|tip Don't go into the huge cathedral building with red carpet stairs, there's elite enemies inside. |notinsticky
use the Container of Rats##37187
|tip Use it on their corpses.
Pick #15# Scarlet Onslaught Corpses Clean |q 12211/1 |goto 70.44,73.33
step
label "Slay_Members_Of_The_Scarlet_Onslaught"
Kill Onslaught enemies around this area |notinsticky
|tip They look like humans wearing red and white armor. |notinsticky
|tip You can find them all around the New Hearthglen area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
|tip Don't go into the huge cathedral building with red carpet stairs, there's elite enemies inside. |notinsticky
Slay #20# Members of the Scarlet Onslaught |q 12205/1 |goto 70.44,73.33
step
use the Hearthstone##6948
Hearth to Venomspite |complete subzone("Venomspite") |q 12205
|only if subzone("New Hearthglen")
step
talk High Executor Wroth##27243
|tip Inside the building, on the bottom floor.
turnin Wanted: The Scarlet Onslaught##12205 |goto 76.78,63.28
step
talk Spy Mistress Repine##27337
|tip Inside the building, on the top floor.
accept No Mercy for the Captured##12245 |goto 76.73,63.03
step
talk Apothecary Vicky Levine##27248
|tip Outside the building.
turnin Let Them Not Rise!##12211 |goto 77.00,62.92
step
Enter the building |goto 77.56,62.45 < 10 |walk
talk Chief Plaguebringer Middleton##27172
|tip Inside the building, on the bottom floor.
turnin The Forsaken Blight and You: How Not to Die##12188 |goto 77.67,62.79
accept Emerald Dragon Tears##12200 |goto 77.67,62.79
step
talk Deathguard Molder##27320
|tip He walks around this area.
accept Stealing from the Siegesmiths##12230 |goto 77.02,62.32
step
talk Quartermaster Bartlett##27267
turnin Materiel Plunder##12209 |goto 75.97,63.26
turnin Funding the War Effort##12303 |goto 75.97,63.26
step
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12230
step
talk Hansel Bauer##27028
accept Fresh Remounts##12214 |goto 75.93,61.88
step
talk Nethestrasz##26851
fpath Wyrmrest Temple |goto 60.32,51.55
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
step
talk Envoy Ripfang##26441
|tip Inside the building.
accept Your Presence is Required at Agmar's Hammer##11996 |goto 47.99,74.76
stickystart "Collect_Stolen_Moaki_Goods"
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
Enter Agmar's Hammer |goto 37.34,48.07 < 40 |only if walking and not subzone("Agmar's Hammer")
talk Messenger Torvus##26649
accept Message from the West##12033 |goto 37.32,46.79
step
click Burning Brazier
Read and Destroy the Letter from Saurfang |q 12033/1 |goto 37.36,46.67
step
talk Messenger Torvus##26649
turnin Message from the West##12033 |goto 37.32,46.79
step
Enter the building |goto 37.68,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin Your Presence is Required at Agmar's Hammer##11996 |goto 38.05,46.22
accept Rifle the Bodies##11999 |goto 38.05,46.22
step
talk Narzun Skybreaker##26566
|tip Outside the building.
fpath Agmar's Hammer |goto 37.51,45.76
step
talk Senior Sergeant Juktok##26415
|tip You will only be able to accept one of these quests.
accept The Taunka and the Tauren##11979 |goto 36.62,46.58 |or
accept A Tauren Among Taunka##11977 |goto 36.62,46.58 |or
step
talk Senior Sergeant Juktok##26415
accept The High Executor Needs You##12488 |goto 36.62,46.58
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 12488
step
talk Blood Guard Roh'kill##26180
accept Pride of the Horde##11980 |goto 14.21,49.83
step
talk Emissary Brighthoof##26181
|tip She walks around this area.
turnin The Taunka and the Tauren##11979 |goto 13.42,49.07 |only if haveq(11979) or completedq(11979)
turnin A Tauren Among Taunka##11977 |goto 13.42,49.07 |only if haveq(11977) or completedq(11977)
accept Into the Fold##11978 |goto 13.42,49.07
stickystart "Kill_Anubar_Ambushers"
step
click Horde Armament##1988+
|tip They look like brown wooden crates on the ground.
|tip You can find them all around this area.
collect 10 Horde Armaments##35726 |q 11978/1 |goto 16.61,49.31
step
label "Kill_Anubar_Ambushers"
kill 15 Anub'ar Ambusher##26402 |q 11980/1 |goto 17.78,49.17
|tip They look like insects.
step
talk Blood Guard Roh'kill##26180
turnin Pride of the Horde##11980 |goto 14.21,49.83
step
talk Emissary Brighthoof##26181
|tip She walks around this area.
turnin Into the Fold##11978 |goto 13.42,49.07
accept Blood Oath of the Horde##11983 |goto 13.42,49.07
step
talk Taunka'le Refugee##26184+
|tip They look like Tauren.
|tip You can find them all around the Westwind Refugee Camp area.
Tell them _"Worry no more, taunka. The Horde will save and protect you and your people, but first you must swear allegiance to the Warchief by taking the blood oath of the Horde."_
Admit #5# Taunka Into the Horde |q 11983/1 |goto 13.34,48.62
step
talk Emissary Brighthoof##26181
|tip She walks around this area.
turnin Blood Oath of the Horde##11983 |goto 13.42,49.07
accept Agmar's Hammer##12008 |goto 13.42,49.07
stickystart "Collect_Moonrest_Garden_Plans"
step
talk Ethenial Moonshadow##26501
accept Avenge this Atrocity!##12006 |goto 24.20,60.08
stickystart "Slay_Blue_Dragonflight_Forces_At_Moonrest_Gardens"
step
label "Slay_Blue_Dragonflight_Forces_At_Moonrest_Gardens"
Kill enemies around this area
|tip They look like dragons, dogs, and humans.
|tip The Moonrest Highborne ghosts will not count for the quest goal.
|tip You can find them all around the Moonrest Gardens area. |notinsticky
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
label "Collect_Moonrest_Garden_Plans"
clicknpc Dead Mage Hunter##26477+
|tip They look like dead bodies on the ground.
|tip You can find them all around the Moonrest Gardens area. |notinsticky
collect Mage Hunter Personal Effects##35792+ |n
use the Mage Hunter Personal Effects##35792
|tip You may have to find and use multiple of these.
collect Moonrest Gardens Plans##35783 |q 11999/1 |goto 23.65,57.82
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 11999
step
Enter the building |goto 37.69,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin Rifle the Bodies##11999 |goto 38.05,46.22
accept Prevent the Accord##12005 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
turnin Agmar's Hammer##12008 |goto 38.15,46.33
accept Victory Nears...##12034 |goto 38.15,46.33
step
talk Barracks Master Harga##26985
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
home Agmar's Hammer |goto 38.19,46.65
step
talk Senior Sergeant Juktok##26415
turnin Victory Nears...##12034 |goto 36.62,46.58
accept From the Depths of Azjol-Nerub##12036 |goto 36.62,46.58
step
talk Borus Ironbender##26564
accept Black Blood of Yogg-Saron##12039 |goto 36.61,47.19
step
Enter the building |goto 35.88,48.20 < 10 |walk
talk Captain Gort##26618
|tip Inside the building.
accept Marked for Death: High Cultist Zangus##12056 |goto 35.81,48.39
step
talk Soar Hawkfury##26504
accept Containing the Rot##12100 |goto 37.08,48.55
stickystart "Slay_Infected_Wildlife"
step
Kill enemies around this area
|tip They look like dark colored deer bucks and diseased brown bears.
|tip You can find them all around this area.
collect Rot Resistant Organ##36800 |q 12100/2 |goto 31.09,47.25
You can find more around: |notinsticky
[28.48,49.48]
[24.46,50.29]
step
label "Slay_Infected_Wildlife"
Kill enemies around this area |notinsticky
|tip They look like dark colored deer bucks and diseased brown bears. |notinsticky
|tip You can find them all around this area. |notinsticky
Slay #15# Infected Wildlife |q 12100/1 |goto 31.09,47.25
You can find more around: |notinsticky
[28.48,49.48]
[24.46,50.29]
stickystart "Collect_Black_Blood_Of_YoggSaron_Samples"
step
Jump down through the hole in the ground, or follow the path down into the cave |goto 26.26,49.50 < 15 |walk |only if not (subzone("The Pit of Narjun") and _G.IsIndoors())
Explore the Pit of Narjun |q 12036/1 |goto 26.18,50.78
|tip Inside the cave, on the middle floor.
step
talk Kilix the Unraveler##26653
|tip Inside the cave, on the middle floor.
accept An Enemy in Arthas##12040 |goto 26.18,50.78
stickystart "Kill_Anubar_Underlords"
step
Follow the path down |goto 26.91,49.48 < 15 |walk
kill High Cultist Zangus##26655
|tip Inside the cave, on the bottom floor.
collect Head of High Cultist Zangus##36741 |q 12056/1 |goto 28.84,49.75
step
label "Kill_Anubar_Underlords"
kill 6 Anub'ar Underlord##26605 |q 12040/1 |goto 26.26,49.49
|tip They look like large beetles.
|tip You can find them all throughout the Pit of Narjun cave. |notinsticky
step
talk Kilix the Unraveler##26653
|tip Inside the cave, on the middle floor.
turnin An Enemy in Arthas##12040 |goto 26.18,50.78
accept The Lost Empire##12041 |goto 26.18,50.78
step
label "Collect_Black_Blood_Of_YoggSaron_Samples"
click Black Blood of Yogg-Saron##188432+
|tip They look like dark ore nodes with green crystals on them on the ground.
|tip You can find them all throughout the Pit of Narjun cave. |notinsticky
collect 10 Black Blood of Yogg-Saron Sample##36725 |q 12039/1 |goto 26.26,49.49
step
Follow the path up to leave the cave |goto 26.74,48.85 < 15 |walk |only if subzone("The Pit of Narjun") and _G.IsIndoors()
kill Wind Trader Mu'fah##26496
|tip Outside, in front of the building.
collect Wind Trader Mu'fah's Remains##35800 |q 12005/1 |goto 18.42,58.89
stickystart "Accept_A_Strange_Device"
step
Enter the building and follow the path up |goto 18.67,58.92 < 10 |only if walking
kill Goramosh##26349
|tip Upstairs inside the crumbled building.
collect The Scales of Goramosh##35801 |q 12005/2 |goto 19.52,58.12
collect Goramosh's Strange Device##36746 |goto 19.52,58.12 |q 12059 |future
step
label "Accept_A_Strange_Device"
use Goramosh's Strange Device##36746
accept A Strange Device##12059
step
use the Hearthstone##6948
Hearth to Agmar's Hammer |complete subzone("Agmar's Hammer") |q 12059
|only if subzone("Moonrest Gardens")
step
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin Prevent the Accord##12005 |goto 38.05,46.22
turnin A Strange Device##12059 |goto 38.05,46.22
accept Projections and Plans##12061 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
turnin The Lost Empire##12041 |goto 38.15,46.33
step
talk Senior Sergeant Juktok##26415
turnin From the Depths of Azjol-Nerub##12036 |goto 36.62,46.58
accept The Might of the Horde##12053 |goto 36.62,46.58
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 12053
step
talk Borus Ironbender##26564
turnin Black Blood of Yogg-Saron##12039 |goto 36.61,47.19
accept Scourge Armaments##12048 |goto 36.61,47.19
step
talk Soar Hawkfury##26504
turnin Containing the Rot##12100 |goto 37.08,48.55
accept The Good Doctor...##12101 |goto 37.08,48.55
step
talk Doctor Sintar Malefious##26505
turnin The Good Doctor...##12101 |goto 36.08,48.88
accept In Search of the Ruby Lilac##12102 |goto 36.08,48.88
step
Enter the building |goto 35.89,48.18 < 10 |walk
talk Captain Gort##26618
|tip Inside the building.
turnin Marked for Death: High Cultist Zangus##12056 |goto 35.81,48.39
step
talk Greatmother Icemist##26652
|tip She walks around this area.
accept Strength of Icemist##12063 |goto 36.12,45.62
step
use Surge Needle Teleporter##36747
Teleport to the Surge Needle |complete subzone("Surge Needle") |goto 22.80,55.53 |q 12061
step
Watch the dialogue
|tip On the floating platform.
Observe the Object on the Surge Needle |q 12061/1 |goto 19.79,59.82
step
use the Surge Needle Teleporter##36747
|tip On the floating platform.
Return to the Ground |complete not subzone("Surge Needle") |q 12061
stickystart "Collect_Scourge_Armaments"
stickystart "Accept_The_Flesh-Bound_Tome"
step
Follow the path up |goto 21.19,46.93 < 20 |only if walking and not subzone("Icemist Village")
talk Banthok Icemist##26733
|tip He looks like a kneeling tauren.
|tip On a rock ledge next to the water, near the bottom of the waterfall nearby.
|tip Follow the water to find him.
turnin Strength of Icemist##12063 |goto 22.60,41.73
accept Chains of the Anub'ar##12064 |goto 22.60,41.73
step
Follow the path up |goto 22.72,39.23 < 20 |only if walking
Enter the building |goto Dragonblight/0 26.49,39.41 < 10 |walk
kill Tivax the Breaker##26770
|tip Inside the building.
collect Tivax's Key Fragment##36753 |q 12064/2 |goto 26.76,39.05
step
use Warsong Battle Standard##36738
Kill the enemies that attack in waves
Defend the Warsong Battle Standard |q 12053/1 |goto 24.86,41.26
step
kill Sinok the Shadowrager##26771
|tip He walks around this area.
|tip Inside the building.
|tip He may spawn in different locations inside this building.
collect Sinok's Key Fragment##36754 |q 12064/3 |goto 25.03,44.65
step
Jump down and enter the building |goto 25.04,44.89 < 15 |walk
kill Anok'ra the Manipulator##26769
|tip Inside the building.
collect Anok'ra's Key Fragment##36752 |q 12064/1 |goto 24.94,43.92
step
Leave the building |goto 25.04,44.89 < 15 |walk |only if subzone("Icemist Village") and _G.IsIndoors()
talk Banthok Icemist##26733
|tip He looks like a kneeling tauren.
|tip On a rock ledge next to the water, near the bottom of the waterfall nearby.
|tip Follow the water to find him.
turnin Chains of the Anub'ar##12064 |goto 22.60,41.73
accept Return of the High Chief##12069 |goto 22.60,41.73
step
Follow the path up |goto 22.72,39.23 < 20 |only if walking
click Anub'ar Mechanism##188463
Watch the dialogue
|tip Under-king Anub'et'kan will appear at the top of the cliff nearby.
Kill the enemies that attack
|tip Under-king Anub'et'kan will eventually jump down to you.
kill Under-king Anub'et'kan##26608
|tip Your allies will help you fight.
click Anub'et'kan's Carapace##188462
|tip It looks like a large brown and white insect husk.
|tip It appears on the ground after you kill Under-king Anub'et'kan.
collect Fragment of Anub'et'kan's Husk##36759 |q 12069/1 |goto 25.55,40.90
step
label "Collect_Scourge_Armaments"
Kill Anub'ar enemies around this area
|tip They look like spiders and humans.
|tip You can find them all around the Icemist Village area. |notinsticky
collect 8 Scourge Armament##36736 |q 12048/1 |goto 24.05,41.65
step
label "Accept_The_Flesh-Bound_Tome"
Kill Anub'ar enemies around this area
|tip They look like spiders and humans.
|tip You can find them all around the Icemist Village area. |notinsticky
collect Flesh-bound Tome##36744 |n
use the Flesh-bound Tome##36744
accept The Flesh-Bound Tome##12057 |goto 24.05,41.65
step
Follow the path to leave Icemist Village |goto 27.77,45.38 < 30 |only if walking and subzone("Icemist Village")
Enter the building |goto 35.89,48.19 < 10 |walk
talk Captain Gort##26618
|tip Inside the building.
turnin The Flesh-Bound Tome##12057 |goto 35.81,48.39
accept Koltira and the Language of Death##12115 |goto 35.81,48.39
step
talk Borus Ironbender##26564
turnin Scourge Armaments##12048 |goto 36.61,47.19
step
talk Senior Sergeant Juktok##26415
turnin The Might of the Horde##12053 |goto 36.62,46.58
accept Attack by Air!##12071 |goto 36.62,46.58
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 12071
step
talk Koltira Deathweaver##26581
|tip He walks around this area.
turnin Koltira and the Language of Death##12115 |goto 36.29,46.25
accept In Service of Blood##12125 |goto 36.29,46.25
accept In Service of the Unholy##12126 |goto 36.29,46.25
accept In Service of Frost##12127 |goto 36.29,46.25
step
talk Valnok Windrager##26574
turnin Attack by Air!##12071 |goto 37.21,45.71
accept Blightbeasts be Damned!##12072 |goto 37.21,45.71
step
Enter the building |goto 37.68,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin Projections and Plans##12061 |goto 38.05,46.22
accept The Focus on the Beach##12066 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
turnin Return of the High Chief##12069 |goto 38.15,46.33
accept All Hail Roanauk!##12140 |goto 38.15,46.33
step
talk Roanauk Icemist##26810
Tell him _"Greetings High Chief..."_
|tip After talking to him, skip to the next step.
|tip A long dialogue happens, but you don't need to wait for it to finish.
|tip The quest goal will complete as you travel.
Click Here After Talking to Roanauk Icemist |confirm |goto 36.25,45.45 |q 12140
step
Follow the path up to Icemist Village |goto 29.44,46.41 < 40 |only if walking and not subzone("Icemist Village")
use Valnok's Flare Gun##36774
|tip A windrider will fly down to you.
clicknpc Kor'kron War Rider##26813
Mount the Kor'kron War Rider |invehicle |goto 27.68,45.21 |q 12125
step
kill 25 Anub'ar Blightbeast##26607 |q 12072/1 |goto 25.25,40.88
|tip They look like flying spiders.
|tip They fly around the buildings.
|tip You can find them all around the Icemist Village area.
|tip Use the abilities on your action bar.
step
_NOTE:_
Use the Kor'kron War Rider to Travel
|tip When traveling to the next guide step, stay mounted on the Kor'kron War Rider.
|tip Try to fly near the ground, because you will eventually be dropped from the war rider, without a parachute.
Click Here to Continue |confirm |q 12072
step
kill Captain Emmy Malin##26762
collect Ley Line Focus Control Ring##36751 |goto 26.32,64.87 |q 12066
step
use the Ley Line Focus Control Ring##36751
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12066/1 |goto 26.53,65.07
step
Follow the path up to leave the Glittering Strand |goto 28.09,66.37 < 15 |only if walking and subzone("Glittering Strand")
kill Deranged Indu'le Villager##26411
|tip Don't kill them, just weaken them to about 30% health.
|tip They look like walrus people.
|tip The Deranged villagers are usually on the outskirts around the perimeter of Indu'le Village.
use Blood Gem##36827
|tip Use your Blood Gem on it when it's weakened.
collect Filled Blood Gem##36828 |q 12125/1 |goto 35.69,65.83
You can find more around: |notinsticky
[37.95,64.37]
[39.48,64.12]
[37.96,62.22]
step
Enter Agmar's Hammer |goto 37.34,48.07 < 40 |only if walking and not subzone("Agmar's Hammer")
talk Koltira Deathweaver##26581
|tip He walks around this area.
turnin In Service of Blood##12125 |goto 36.29,46.25
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 12072
step
talk Valnok Windrager##26574
turnin Blightbeasts be Damned!##12072 |goto 37.21,45.71
step
Enter the building |goto 37.69,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin The Focus on the Beach##12066 |goto 38.05,46.22
accept Atop the Woodlands##12084 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
turnin All Hail Roanauk!##12140 |goto 38.15,46.33
step
talk Earthwarden Grife##26854
accept Strengthen the Ancients##12096 |goto 36.52,47.87
step
talk Woodlands Walker##26421+
|tip They look like smaller trees with no leaves on them that walk around this area.
|tip They have a chance to attack you instead of giving you the bark.
|tip You can find them all around the Lothalor Woodlands area.
collect Bark of the Walkers##36786+ |n
use the Bark of the Walkers##36786+
|tip Use them on Lothalor Ancients around this area.
|tip They look like larger dazed tree creatures.
Strengthen #3# Lothalor Ancients |q 12096/1 |goto 33.92,62.77
step
kill Lieutenant Ta'zinni##26815
|tip He looks like a troll that walks around this area with a guard.
|tip They walk in a clockwise circle around the large stone half circle with purple symbols on it.
collect Ley Line Focus Amulet##36779 |goto 32.61,71.39 |q 12084
collect Lieutenant Ta'zinni's Letter##36780 |goto 32.61,71.39 |q 12085 |future
step
use Lieutenant Ta'zinni's Letter##36780
accept A Letter for Home##12085
step
use the Ley Line Focus Control Amulet##36779
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12084/1 |goto 32.33,71.33
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
talk Kuk'uq##27185
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Kuk'uq##27185 |goto 49.37,75.43 |q 11959
step
Follow the path up to leave Moa'ki Harbor |goto 48.85,69.18 < 40 |only if walking and subzone("Moa'ki Harbor")
kill Loguhn##26196
collect Blood of Loguhn##35688 |goto 46.31,59.15 |q 11959
step
use the Blood of Loguhn##35688
Smear Loguhn's Blood |q 11959/1
step
Enter the tree |goto 47.90,49.71 < 20 |walk
kill Dahlia Suntouch##27680
|tip Inside the tree.
collect Ruby Brooch##37833 |goto 47.64,48.97 |q 12419 |future
step
use the Ruby Brooch##37833
accept The Fate of the Ruby Dragonshrine##12419
step
click Ruby Lilac##188489
|tip It looks like a plant with white flowers.
|tip Inside the tree.
collect Ruby Lilac##36803 |q 12102/1 |goto 47.69,49.07
step
Leave the tree |goto 47.90,49.71 < 20 |walk |only if subzone("Ruby Dragonshrine") and _G.IsIndoors()
kill Duke Vallenhal##26926
|tip Don't kill him, just weaken him to about 30% health.
|tip He looks like a human riding a black horse with white feet.
|tip He walks around this tree on a horse around this area.
use the Unholy Gem##36835
|tip Use it on him when he's weakened.
collect Filled Unholy Gem##36836 |q 12126/1 |goto 48.50,50.98
Also check around: |notinsticky
[46.83,51.10]
[46.16,48.90]
[46.79,47.03]
[48.14,46.38]
step
Follow the path up to leave the Ruby Dragonshrine |goto 44.66,51.76 < 30 |only if walking and subzone("Dragonshrine")
Enter Agmar's Hammer |goto 37.34,48.07 < 40 |only if walking and not subzone("Agmar's Hammer")
talk Earthwarden Grife##26854
turnin Strengthen the Ancients##12096 |goto 36.52,47.87
step
talk Doctor Sintar Malefious##26505
turnin In Search of the Ruby Lilac##12102 |goto 36.08,48.88
accept Return to Soar##12104 |goto 36.08,48.88
step
talk Soar Hawkfury##26504
turnin Return to Soar##12104 |goto 37.08,48.55
accept Where the Wild Things Roam##12111 |goto 37.08,48.55
step
talk Siegesmith Gulda##27019
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Siegesmith Gulda##27019 |goto 36.63,46.25 |q 12111
step
talk Koltira Deathweaver##26581
|tip He walks around this area.
turnin In Service of the Unholy##12126 |goto 36.29,46.25
step
Enter the building |goto 37.69,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin Atop the Woodlands##12084 |goto 38.05,46.22
accept Search Indu'le Village##12106 |goto 38.05,46.22
step
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
turnin A Letter for Home##12085 |goto 38.15,46.33
stickystart "Inoculate_Arctic_Grizzlies"
step
use the Pack of Vaccine##36818
|tip Use it on Snowfall Elk.
|tip They look like grey deer bucks.
|tip You can find them all around this area.
Inoculate #5# Snowfall Elk |q 12111/1 |goto 39.77,52.93
You can find more around [41.05,45.83]
step
label "Inoculate_Arctic_Grizzlies"
use the Pack of Vaccine##36818
|tip Use it on Arctic Grizzlies.
|tip They look like white bears.
|tip You can find them all around this area. |notinsticky
Inoculate #5# Arctic Grizzlies |q 12111/2 |goto 39.77,52.93
You can find more around [41.05,45.83]
step
talk Soar Hawkfury##26504
turnin Where the Wild Things Roam##12111 |goto 37.08,48.55
step
Enter the building |goto 48.31,74.63 < 15 |walk
talk Elder Ko'nani##26194
|tip Inside the building.
turnin Slay Loguhn##11959 |goto 48.01,74.87
step
talk Caregiver Mumik##27174
|tip Inside the building.
home Moa'ki Harbor |goto 48.14,74.76
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
clicknpc Mage-Commander Evenstar##26873
|tip He looks like a dead blood elf wearing a robe.
|tip Underwater.
turnin Search Indu'le Village##12106 |goto 40.25,66.86
accept The End of the Line##12110 |goto 40.25,66.86
step
use the Ley Line Focus Control Talisman##36815
|tip Underwater.
|tip It takes a few seconds to complete the goal after you use the item.
Retrieve the Ley Line Focus Information |q 12110/1 |goto 39.79,66.98
step
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
Hearth to Moa'ki Harbor |complete subzone("Moa'ki Harbor") |q 12032
|only if subzone("The Briny Pinnacle")
step
Enter the building |goto 49.06,75.73 < 10 |walk
talk Toalu'u the Mystic##26595
|tip Inside the building.
turnin Conversing With the Depths##12032 |goto 49.14,75.65
step
Observe the Azure Dragonshrine |q 12110/2 |goto 53.11,66.52
stickystart "Collect_Emerald_Dragon_Tears"
step
Follow the path down to the Emerald Dragonshrine |goto 63.25,67.19 < 40 |only if walking and not subzone("Emerald Dragonshrine")
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
label "Collect_Emerald_Dragon_Tears"
click Emerald Dragon Tear##188650+
|tip They look like glowing green crystals on the ground.
|tip You can find them all around the Emerald Dragonshrine area. |notinsticky
collect 8 Emerald Dragon Tear##37124 |q 12200/1 |goto 63.44,71.90
step
Follow the path up to leave the Emerald Dragonshrine |goto 66.37,73.64 < 20 |only if walking and subzone("Emerald Dragonshrine")
Enter New Hearthglen |goto 72.17,69.81 < 50 |only if walking
talk Chancellor Amai##27381
|tip Inside the cage.
Tell him _"No, chancellor, I wouldn't say that I'm here to 'rescue' you, per se."_
kill Chancellor Amai##27381 |q 12245/4 |goto 72.65,72.58
step
talk Deathguard Schneider##27376
|tip Inside the cage.
Tell him _"I'm afraid not, Schneider. Your time has come!"_
kill Deathguard Schneider##27376 |q 12245/1 |goto 71.42,72.21
step
talk Engineer Burke##27379
|tip Inside the cage.
|tip Outside, next to the building.
Tell him _"Afraid not. Your days as a sanitation engineer are coming to an end."_
kill Engineer Burke##27379 |q 12245/3 |goto 72.71,74.36
step
talk Senior Scrivener Kinnedius##27378
|tip Inside the cage.
Tell him _"Not today, senior scrivener!"_
kill Senior Scrivener Kinnedius##27378 |q 12245/2 |goto 69.39,73.99
step
label "Hand_Over_Scarlet_Onslaught_Warhorse_Reins"
kill Onslaught Knight##27206+
|tip They look like humans on horses.
|tip Some of them walk around this area.
|tip Be careful, don't kill the horse.
collect Onslaught Riding Crop##37202 |n
Steal a Horse
use Onslaught Riding Crop##37202
|tip Use it on the Onslaught Warhorse whose rider you just killed.
|tip You need to ride the horse back to Venomspite to hand in the reins.
|tip Use the "Hand Over Reins" ability on your action bar at the location in Venomspite.
|tip Repeat this process.
Hand Over #3# Scarlet Onslaught Warhorse Reins |q 12214/1 |goto 73.92,66.30
The path back up to Venomspite starts at [73.86,62.37]
Hand over the reigns in Venomspite at [75.93,61.88]
step
talk Hansel Bauer##27028
turnin Fresh Remounts##12214 |goto 75.93,61.88
step
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12245
step
Enter the building |goto 76.88,62.96 < 10 |walk
talk High Executor Wroth##27243
|tip Inside the building, on the bottom floor.
turnin No Mercy for the Captured##12245 |goto 76.78,63.28
accept Torture the Torturer##12252 |goto 76.78,63.28
turnin The High Executor Needs You##12488 |goto 76.77,63.28
step
Enter the building |goto 77.55,62.44 < 10 |walk
talk Chief Plaguebringer Middleton##27172
|tip Inside the building, on the bottom floor.
turnin Emerald Dragon Tears##12200 |goto 77.67,62.79
accept Spread the Good Word##12218 |goto 77.67,62.79
step
Enter New Hearthglen |goto 72.17,69.81 < 50 |only if walking
Enter the building |goto 70.32,71.93 < 15 |walk
Run down the stairs |goto 69.79,71.72 < 7 |walk
clicknpc Torturer Alphonse##27209
|tip Inside the building, on the bottom floor.
use High Executor's Branding Iron##37314
|tip Use it 5 times.
Fully Question Torturer Alphonse |q 12252/1 |goto 69.80,72.00
step
kill Torturer Alphonse##27209 |q 12252/2 |goto 69.80,72.00
|tip Inside the building, on the bottom floor.
collect Torturer's Rod##37432 |goto 69.80,72.00 |q 12271 |future
step
use the Torturer's Rod##37432
accept The Rod of Compulsion##12271
step
Leave the building |goto 70.32,71.93 < 15 |walk |only if subzone("New Hearthglen") and _G.IsIndoors()
Follow the path up to Venomspite |goto 74.03,62.42 < 30 |only if walking and not subzone("Venomspite")
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12271
step
Enter the building |goto 76.88,62.96 < 10 |walk
talk High Executor Wroth##27243
|tip Inside the building, on the bottom floor.
turnin Torture the Torturer##12252 |goto 76.78,63.28
turnin The Rod of Compulsion##12271 |goto 76.78,63.28
accept The Denouncement##12273 |goto 76.78,63.28
step
Enter New Hearthglen |goto 72.17,69.81 < 50 |only if walking
use Rod of Compulsion##37438
|tip Use it on Blacksmith Goodman.
|tip He looks like a human holding a blacksmith hammer.
|tip Inside the building.
kill Blacksmith Goodman##27234
|tip Make sure he has the "Compelled" buff when you kill him.
Exact Blacksmith Goodman's Denouncement & Death |q 12273/3 |goto 70.62,70.50
step
Enter the building |goto 70.32,71.93 < 15 |walk
Run up the stairs |goto 69.59,71.90 < 10 |walk
use Rod of Compulsion##37438
|tip Use it on Commander Jordan.
|tip Inside the building, on the top floor.
kill Commander Jordan##27237
|tip Make sure he has the "Compelled" buff when you kill him.
Exact Commander Jordan's Denouncement & Death |q 12273/1 |goto 69.66,71.79
step
Leave the building |goto 70.32,71.93 < 15 |walk |only if subzone("New Hearthglen") and _G.IsIndoors()
use Rod of Compulsion##37438
|tip Use it on Stable Master Mercer.
kill Stable Master Mercer##27236
|tip Make sure he has the "Compelled" buff when you kill him.
Exact Stable Master Mercer's Denouncement & Death |q 12273/4 |goto 67.88,75.92
step
Follow the path down |goto 73.59,75.45 < 30 |only if walking
use Rod of Compulsion##37438
|tip Use it on Lead Cannoneer Zierhut.
|tip He looks like a human carrying a torch.
|tip He walks around this area.
kill Lead Cannoneer Zierhut##27235
|tip Make sure he has the "Compelled" buff when you kill him.
Exact Lead Cannoneer Zierhut's Denouncement & Death |q 12273/2 |goto 73.08,77.72
step
Follow the path up to make your way back to Venomspite |goto 72.36,78.04 < 15 |only if walking and subzone("New Hearthglen")
Follow the path up to Venomspite |goto 74.03,62.42 < 30 |only if walking and not subzone("Venomspite")
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12273
step
Enter the building |goto 76.88,62.96 < 10 |walk
talk High Executor Wroth##27243
|tip Inside the building, on the bottom floor.
turnin The Denouncement##12273 |goto 76.78,63.28
step
clicknpc Forsaken Blight Spreader##26523+
|tip They look like catapult machines.
|tip Click any of the ones around this area.
Take Control of the Forsaken Blight Spreader |invehicle |goto 77.80,61.48 |q 12218
step
kill 30 Hungering Dead##27335 |q 12218/1 |goto 85.06,54.82
|tip Follow the road to get to this location.
|tip Use the "Blight Bomb" ability on your action bar.
step
Release the Forsaken Blight Spreader |outvehicle |q 12218
|tip Click the yellow arrow on your action bar.
step
kill Scourge Siegesmith##27410+
|tip They look like skeletons with almost no armor on.
|tip You can find them all around the Carrion Fields area.
click Siegesmith Bomb##188671+
|tip They look like grey metal balls with spikes on them on the ground.
|tip They can also be inside the buildings.
collect 6 Siegesmith Bomb##37248 |q 12230/1 |goto 85.20,50.54
step
Follow the path back to Venomspite |goto 81.33,56.21 < 30 |only if walking and not subzone("Venomspite")
talk Deathguard Molder##27320
|tip He walks around this area.
turnin Stealing from the Siegesmiths##12230 |goto 77.02,62.32
accept Bombard the Ballistae##12232 |goto 77.02,62.32
step
Enter the building |goto 77.55,62.45 < 10 |walk
talk Chief Plaguebringer Middleton##27172
|tip Inside the building.
turnin Spread the Good Word##12218 |goto 77.67,62.79
accept The Forsaken Blight##12221 |goto 77.67,62.79
step
talk Apothecary Vicky Levine##27248
accept A Means to an End##12240 |goto 77.00,62.92
step
Enter the building |goto 76.88,62.95 < 10 |walk
talk Spy Mistress Repine##27337
|tip Inside the building, on the top floor.
accept Need to Know##12234 |goto 76.73,63.03
step
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12234
stickystart "Bombard_New_Hearthglen_Ballistas"
step
Enter New Hearthglen |goto 72.21,69.61 < 50 |only if walking
Enter the building |goto 70.33,71.93 < 15 |walk
click Scarlet Onslaught Daily Orders: Barracks##188675
|tip It looks like a white unrolled scroll on a table.
|tip Inside the building, on the ground floor.
collect Scarlet Onslaught Daily Orders: Barracks##37267 |q 12234/2 |goto 69.72,71.89
step
Leave the building |goto 70.33,71.93 < 15 |walk |only if subzone("New Hearthglen") and _G.IsIndoors()
Enter the building |goto 72.25,73.46 < 10 |walk
Follow the path |goto 73.38,73.01 < 7 |walk
click Scarlet Onslaught Daily Orders: Abbey##188676
|tip It looks like a white unrolled scroll on a table.
|tip Inside the building, on the ground floor.
collect Scarlet Onslaught Daily Orders: Abbey##37268 |q 12234/1 |goto 73.42,72.63
step
label "Bombard_New_Hearthglen_Ballistas"
Leave the building |goto 72.25,73.46 < 10 |walk |only if subzone("New Hearthglen") and _G.IsIndoors()
use the Siegesmith Bombs##37259
|tip Use it on New Hearthglen Ballistas.
|tip They look like large wooden arrow gun carts.
|tip You can find them all around the New Hearthglen area.
Bombard #5# New Hearthglen Ballistas |q 12232/1 |goto 70.38,73.38
step
use Levine Family Termites##37300
|tip Inside the building.
Watche dialogue
|tip Foreman Kaleiki will appear.
kill Foreman Kaleiki##27238 |q 12240/1 |goto 68.30,74.16
step
Follow the path down to the beach |goto 66.42,76.51 < 40 |only if walking and not subzone("Crusader's Landing")
click Scarlet Onslaught Daily Orders: Beach##188677
|tip It looks like a white rolled up scroll on a wooden crate.
collect Scarlet Onslaught Daily Orders: Beach##37269 |q 12234/3 |goto 71.61,80.42
step
Follow the path up to leave the New Hearthglen area |goto 72.39,80.28 < 30 |only if walking and subzone("Crusader's Landing")
Follow the path to Venomspite |goto 73.89,62.40 < 40 |only if walking and not subzone("Venomspite")
Enter the building |goto  76.88,62.96 < 10 |walk
talk Spy Mistress Repine##27337
|tip Inside the building, on the top floor.
turnin Need to Know##12234 |goto 76.73,63.03
accept The Spy in New Hearthglen##12239 |goto 76.73,63.03
step
talk Mrs. Winterby##27027
|tip Inside the building, on the bottom floor.
home Venomspite |goto 76.87,63.13
step
talk Apothecary Vicky Levine##27248
|tip Outside, next to the building.
turnin A Means to an End##12240 |goto 77.00,62.92
accept Fire Upon the Waters##12243 |goto 77.00,62.92
step
talk Deathguard Molder##27320
|tip He walks around this area.
turnin Bombard the Ballistae##12232 |goto 77.02,62.32
step
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12243
step
talk Agent Skully##27350
|tip Outside, behind the building.
turnin The Spy in New Hearthglen##12239 |goto 73.59,73.55
accept Without a Prayer##12254 |goto 73.59,73.55
step
Enter the building |goto 68.95,76.14 < 10 |walk
kill Bishop Street##27246
|tip Inside the building.
collect Bishop Street's Prayer Book##37350 |q 12254/1 |goto 69.21,76.69
step
talk Agent Skully##27350
|tip Outside, behind the building.
turnin Without a Prayer##12254 |goto 73.59,73.55
accept The Perfect Dissemblance##12260 |goto 73.59,73.55
step
use Banshee's Magic Mirror##37381
|tip Use it on an Onslaught Raven Priest.
|tip They look like humans wearing robes and red glowing shoulder armor, carrying a purple glowing staff.
|tip Druids will need to shift out of forms to use this quest item. |only if raceclass("Druid")
Steal an Onslaught Raven Priest's Image |q 12260/1 |goto 73.14,74.67
You can find more around [72.03,73.13]
step
talk Agent Skully##27350
|tip Outside, behind the building.
turnin The Perfect Dissemblance##12260 |goto 73.59,73.55
accept A Fall From Grace##12274 |goto 73.59,73.55
step
_NOTE:_
Keep Your Disguise Active
|tip During the next steps, you need to have your disguise active.
|tip If you lose the diguise, talk to Agent Skelly in the previous step to get another one.
Click Here to Continue |confirm |q 12274
step
Enter the building |goto 72.27,73.46 < 10 |walk
Run up the stairs |goto 73.04,73.71 < 7 |walk
click Abbey Bell Rope##188713
|tip It looks like a large brown rope hanging down above a wooden platform.
|tip Inside the building, on the top floor.
Ring the Abbey Bell |q 12274/1 |goto 72.90,73.48
step
talk High Abbot Landgren##27245
|tip Inside the building, on the ground floor.
Tell him _"Your eminence, may I have a word in private?"_
Click Here After Talking to High Abbot Landgren |confirm |goto 73.50,74.28 |q 12274
step
Meet High Abbot Landgren at the Abbey Entrance |goto 72.25,73.46 < 15 |c |q 12274
|tip Run to the doorway of the building.
|tip High Abbot Landgren will appear nearby.
step
Watch the dialogue
|tip Follow High Abbot Landgren as he walks.
|tip He eventually walks to this location and jumps off the cliff.
|tip As you walk with him, avoid Onslaught Knights.
|tip They can see through your disguise.
|tip They look like humans riding horses.
Speak with High Abbot Landgren |q 12274/2 |goto 74.02,75.86
step
talk Agent Skully##27350
|tip Outside, behind the building.
turnin A Fall From Grace##12274 |goto 73.59,73.55
accept The Truth Will Out##12283 |goto 73.59,73.55
step
Enter the building |goto 68.24,76.37 < 10 |walk
click The Diary of High General Abbendis##189293
|tip It looks like a purple book laying on a table.
|tip Inside the building, on the top floor.
collect The Diary of High General Abbendis##37540 |q 12283/1 |goto 68.28,76.98
step
Follow the path down to the beach |goto 66.42,76.51 < 40 |only if walking and not subzone("Crusader's Landing")
Board the ship |goto 71.27,82.57 < 10 |only if walking
use Apothecary's Burning Water##37304
|tip Throw it at the ship's sail nearby.
Set the Sails of the Sinner's Folly Afire |q 12243/1 |goto 71.77,83.04
step
Enter the ship |goto 71.92,83.43 < 7 |walk
kill Captain Shely##27232
|tip Inside the ship, on the middle deck.
collect Captain Shely's Rutters##37305 |q 12243/2 |goto 71.86,83.99
step
use the Hearthstone##6948
Hearth to Venomspite |complete subzone("Venomspite") |q 12243
|only if subzone("Crusader's Landing")
step
talk High Executor Wroth##27243
|tip Inside the building.
turnin The Truth Will Out##12283 |goto 76.78,63.28
step
talk Apothecary Vicky Levine##27248
turnin Fire Upon the Waters##12243 |goto 77.00,62.92
step
talk Quartermaster Bartlett##27267
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Quartermaster Bartlett##27267 |goto 75.97,63.23 |q 12127
step
kill Ice Revenant##26283
|tip Don't kill it, just weaken it to about 30% health.
use the Frost Gem##36847
|tip Use it on the Ice Revenant when it's weakened.
collect Filled Frost Gem##36846 |q 12127/1 |goto 67.08,53.53
step
talk Tariolstrasz##26443
Tell him _"Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple."_
Begin Flying to the Top of the Temple |ontaxi |goto 57.91,54.16 |q 12458
step
Fly to the Top of the Temple |offtaxi |goto 59.72,53.07 |q 12458
step
talk Lord Itharius##27785
|tip At the top of the tower.
turnin Seeds of the Lashers##12458 |goto 59.60,54.47
step
talk Krasus##27990
|tip At the top of the tower.
turnin The Fate of the Ruby Dragonshrine##12419 |goto 59.79,54.70
step
talk Torastrasza##26949
Tell him _"Yes, please, I would like to return to the ground level of the temple."_
Begin Flying to the Ground Level of the Temple |ontaxi |goto 59.51,53.33 |q 12110 |future
step
Fly to the Ground Level of the Temple |offtaxi |goto 58.01,55.18 |q 12110 |future
step
Enter the building |goto 37.68,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Image of Archmage Aethas Sunreaver##26471
|tip Inside the building, on the bottom floor.
turnin The End of the Line##12110 |goto 38.05,46.22
accept Gaining an Audience##12122 |goto 38.05,46.22
step
talk Doctor Sintar Malefious##26505
turnin The Forsaken Blight##12221 |goto 36.08,48.88
step
talk Koltira Deathweaver##26581
|tip He walks around this area.
turnin In Service of Frost##12127 |goto 36.29,46.25
accept The Power to Destroy##12132 |goto 36.29,46.25
step
kill 6 Shadowy Tormentor##26966 |q 12132/1 |goto 36.29,46.25
|tip They look like black ghosts.
|tip You can find them all around the Agmar's Hammer area.
|tip If you lose the buff, talk to Koltira Deathweaver, who walks around this area.
step
Leave the Spirit Realm |nobuff spell:47740 |q 12132
|tip Right-click the "World of Shadows" buff near your minimap.
step
talk Koltira Deathweaver##26581
|tip He walks around this area.
turnin The Power to Destroy##12132 |goto 36.29,46.25
accept The Translated Tome##12136 |goto 36.29,46.25
step
Enter the building |goto 35.88,48.19 < 10 |walk
talk Captain Gort##26618
|tip Inside the building, on the bottom floor.
turnin The Translated Tome##12136 |goto 35.81,48.39
step
Enter the building |goto 37.68,46.33 < 15 |walk |only if not (subzone("Agmar's Hammer") and _G.IsIndoors())
talk Overlord Agmar##26379
|tip Inside the building, on the bottom floor.
accept The Kor'kron Vanguard!##12224 |goto 38.15,46.33
step
Leave Agmar's Hammer |goto 35.54,45.23 < 40 |only if walking and subzone("Agmar's Hammer")
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
Follow the path up |goto 44.56,20.67 < 40 |only if walking
talk Numo Spiritbreeze##26850
fpath Kor'kron Vanguard |goto 43.85,16.94
step
talk Saurfang the Younger##25257
turnin The Kor'kron Vanguard!##12224 |goto 40.71,18.06
accept Audience With The Dragon Queen##12496 |goto 40.71,18.06
step
talk Dalormi##27943
|tip Inside the building, on the ground floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dalormi##27943 |goto 59.39,54.95 |q 12496
step
talk Demestrasz##27950
|tip Inside the building, on the ground floor.
home Wyrmrest Temple |goto 59.80,54.24
step
talk Tariolstrasz##26443
turnin Gaining an Audience##12122 |goto 57.91,54.17
accept Speak with your Ambassador##12767 |goto 57.91,54.17
step
talk Golluck Rockfist##27804
turnin Speak with your Ambassador##12767 |goto 58.44,56.08
accept Report to the Ruby Dragonshrine##12461 |goto 58.44,56.08
step
talk Tariolstrasz##26443
Tell him _"Steward, please allow me to ride one of the drakes to the queen's chamber at the top of the temple."_
Begin Flying to the Top of the Temple |ontaxi |goto 57.91,54.16 |q 12266
step
Fly to the Top of the Temple |offtaxi |goto 59.72,53.07 |q 12266
step
talk Nalice##27765
|tip At the top of the tower.
turnin Tales of Destruction##12266 |goto 60.07,54.20
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin Audience With The Dragon Queen##12496 |goto 59.83,54.66
accept Galakrond and the Scourge##12497 |goto 59.83,54.66
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
Use the Dragon to Travel While Questing
|tip You are about to use the dragon you're riding to do many quests.
|tip You will repeatedly be using the "Ruby Beacon of the Dragon Queen" quest item to call a dragon to ride.
|tip When you need to call a dragon, run to a place on the map where your minimap says "The Dragon Wastes".
|tip Being anywhere in the Dragon Wastes will allow you to use the item to summon another dragon to ride.
|tip You can also use it when you're at Wyrmrest Temple.
Click Here to Continue |confirm |q 12498
step
Fly down to the road and land here, then follow the road on foot |goto 47.44,55.10 < 40 |walk
talk Vargastrasz##27763
turnin Report to the Ruby Dragonshrine##12461 |goto 42.97,50.89
accept Heated Battle##12448 |goto 42.97,50.89
stickystart "Kill_Frigid_Geist_Attackers"
stickystart "Kill_Frigid_Ghoul_Attackers"
step
kill Frigid Abomination Attacker##27531 |q 12448/3 |goto 43.38,51.80
|tip They look like abominations.
step
label "Kill_Frigid_Geist_Attackers"
kill 8 Frigid Geist Attacker##27686 |q 12448/2 |goto 43.38,51.80
|tip They looks like frail humans crouching on the ground.
step
label "Kill_Frigid_Ghoul_Attackers"
kill 12 Frigid Ghoul Attacker##27685 |q 12448/1 |goto 43.09,51.73
|tip They look like zombies.
step
talk Vargastrasz##27763
turnin Heated Battle##12448 |goto 42.97,50.89
accept Return to the Earth##12449 |goto 42.97,50.89
step
click Ruby Acorn##189992+
|tip They look like small red stones on the ground.
|tip You can find them all around the Ruby Dragonshrine area.
collect Ruby Acorn##37727+ |n
use the Ruby Acorn##37727+
|tip Use them on Ruby Keeper corpses.
|tip They look like large red dragons on fire on the ground.
Return #6# Ruby Keepers to the Earth |q 12449/1 |goto 46.77,50.36
step
Follow the path up |goto 44.66,51.75 < 30 |only if walking and subzone("Ruby Dragonshrine")
talk Vargastrasz##27763
turnin Return to the Earth##12449 |goto 42.97,50.89
accept Through Fields of Flame##12450 |goto 42.97,50.89
stickystart "Kill_Frigid_Necromancers"
step
Enter the tree |goto 47.90,49.71 < 20 |walk
kill Dahlia Suntouch##27680
|tip Inside the tree.
Cleanse the Ruby Corruption |q 12450/2 |goto 47.64,48.97
step
label "Kill_Frigid_Necromancers"
Leave the tree |goto 47.90,49.71 < 20 |walk |only if subzone("Ruby Dragonshrine") and _G.IsIndoors()
kill 6 Frigid Necromancer##27539 |q 12450/1 |goto 46.99,50.82
|tip They look like humans wearing robes.
|tip You can find them all around the outside of the tree.
step
Follow the path up |goto 44.66,51.75 < 30 |only if walking and subzone("Ruby Dragonshrine")
talk Vargastrasz##27763
turnin Through Fields of Flame##12450 |goto 42.97,50.89
accept The Steward of Wyrmrest Temple##12769 |goto 42.97,50.89
step
use the Hearthstone##6948
Hearth to Wyrmrest Temple |complete subzone("Wyrmrest Temple") |q 12769
|only if dist("Dragonblight 42.97,50.89") < 300
step
talk Dalormi##27943
|tip Inside the building, on the ground floor.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Dalormi##27943 |goto 59.39,54.95 |q 12769
step
talk Tariolstrasz##26443
turnin The Steward of Wyrmrest Temple##12769 |goto 57.91,54.16
accept Informing the Queen##12124 |goto 57.91,54.16
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the temple.
turnin Informing the Queen##12124 |goto 59.83,54.65
accept Report to Lord Devrestrasz##12435 |goto 59.83,54.65
step
talk Torastrasza##26949
Tell him _"I would like to go to Lord Devrestrasz in the middle of the temple."_
Begin Flying to the Ground Level of the Temple |ontaxi |goto 59.51,53.33 |q 12435
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
talk Lord Devrestrasz##27575
|tip Upstairs inside the tower, on the middle level.
turnin Defending Wyrmrest Temple##12372 |goto 59.24,54.32
|only if haveq(12372) or completedq(12372)
step
talk Kontokanis##26979
accept Pest Control##12144 |goto 46.68,33.50
stickystart "Slay_Snowplain_Snobolds"
step
Kill Magnataur enemies around this area
|tip They look like large blue centaurs.
Slay #3# Dragonblight Magnataur |q 12144/2 |goto 56.76,40.95
You can find more around: |notinsticky
[55.37,50.35]
[56.35,56.90]
step
label "Slay_Snowplain_Snobolds"
Kill Snowplain enemies around this area
|tip They look like kobolds.
Slay #10# Snowplain Snobolds |q 12144/1 |goto 55.76,52.26
You can find more around: |notinsticky
[55.85,58.51]
[64.83,61.72]
step
talk Kontokanis##26979
turnin Pest Control##12144 |goto 46.68,33.50
accept Canyon Chase##12145 |goto 46.68,33.50
step
kill Icefist##27004 |q 12145/1 |goto 42.42,39.76
|tip He looks like a Magnataur that walks around in this canyon.
collect Emblazoned Battle Horn##36856 |goto 42.42,39.76
step
use the Emblazoned Battle Horn##36856
accept Disturbing Implications##12147
step
talk Kontokanis##26979
turnin Canyon Chase##12145 |goto 46.68,33.50
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
talk Aurastrasza##26983
|tip Inside the building, on the ground floor.
turnin Disturbing Implications##12147 |goto 60.02,55.19
step
talk Alexstrasza the Life-Binder##26917
|tip At the top of the tower.
turnin On Ruby Wings##12498 |goto 59.84,54.65
accept Return To Angrathar##12500 |goto 59.84,54.65
step
talk Torastrasza##26949
Tell him _"Yes, please, I would like to return to the ground level of the temple."_
Begin Flying to the Ground Level of the Temple |ontaxi |goto 59.51,53.33 |q 12500
step
Fly to the Ground Level of the Temple |offtaxi |goto 58.01,55.18 |q 12500
step
talk Saurfang the Younger##25257
turnin Return To Angrathar##12500 |goto 40.71,18.06
step
talk Alexstrasza the Life-Binder##31333
accept Darkness Stirs##13242 |goto 38.42,19.25
step
click Saurfang's Battle Armor
|tip It looks like a silver metal spiked collar on the ground.
collect Saurfang's Battle Armor##43615 |q 13242/1 |goto 38.15,18.70
step
talk High Overlord Saurfang##25256
|tip Inside the building, on the bottom floor.
turnin Darkness Stirs##13242 |goto Borean Tundra 41.43,53.67
accept Herald of War##13257 |goto Borean Tundra 41.43,53.67
step
click Portal to Orgrimmar
|tip Inside the building, on the bottom floor.
Teleport to Orgrimmar |complete (zone("Durotar") or zone("Orgrimmar")) |goto 41.49,53.80 |q 13257
step
Enter the building |goto Orgrimmar 39.60,37.07 < 15 |walk |only if not subzone("Grommash Hold")
talk Thrall##31412
|tip He walks around this area.
|tip Inside the building.
turnin Herald of War##13257 |goto Orgrimmar 32.72,37.71
step
Enter the building |goto Dragonblight 76.88,62.96 < 10 |walk
talk Magister Tyr'ganal##29162
|tip Inside the building, on the bottom floor.
accept The Magical Kingdom of Dalaran##12791 |goto Dragonblight 76.84,63.23
step
talk Magister Tyr'ganal##29162
|tip Inside the building, on the bottom floor.
Tell her _"I am ready to be teleported to Dalaran."_
Teleport to Dalaran |complete zone("Dalaran") |goto 76.84,63.23 |q 12791
step
talk Archmage Celindra##29156
|tip Inside the building.
turnin The Magical Kingdom of Dalaran##12791 |goto Dalaran 56.30,46.76
accept Learning to Leave and Return: the Magical Way##12790 |goto Dalaran 56.30,46.76
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
turnin Learning to Leave and Return: the Magical Way##12790 |goto Dalaran 56.30,46.76
step
talk Aludane Whitecloud##28674
fpath Dalaran##310 |goto 72.18,45.79
step
Enter the building |goto Dragonblight 76.88,62.96 < 10 |walk
talk High Executor Wroth##27243
|tip Inside the building, on the bottom floor.
accept To Conquest Hold, But Be Careful!##12487 |goto Dragonblight 76.77,63.28
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."GrizzlyHills",
condition_suggested=function() return level >= 74 and level <= 75 and not completedq(29829) end,
next="Leveling Guides\\Northrend (69-80)\\Zul'Drak (75-77)",
},[[
step
_NOTE:_
You Will Have Access to Stronger Ammo Soon
|tip You should be level 75 soon, or already are.
|tip When you reach level 75, you can use stronger bullets or arrows.
|tip When you restock ammo at vendors, make sure to buy level 75 ammo.
Click Here to Continue |confirm |q 12436 |future
|only if Hunter
step
Enter Conquest Hold |goto Grizzly Hills 21.60,66.70 < 40 |only if walking and not subzone("Conquest Hold")
talk Provisioner Lorkran##26868
accept Supplemental Income##12436 |goto Grizzly Hills 22.69,66.17
step
talk Hidetrader Jun'ik##27037
accept Gray Worg Hides##12175 |goto 22.04,65.11
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12175
step
Enter the building |goto 21.17,64.47 < 15 |walk |only if not (subzone("Conquest Hold") and _G.IsIndoors())
talk Conqueror Krenna##26860
|tip Inside the building, on the ground floor.
turnin To Conquest Hold, But Be Careful!##12487 |goto 20.70,64.17 |only if haveq(12487) or completedq(12487)
accept The Conqueror's Task##12468 |goto 20.70,64.17
step
talk Sergeant Nazgrim##27388
|tip Inside the building, on the ground floor.
turnin The Conqueror's Task##12468 |goto 21.00,64.05
accept A Show of Strength##12257 |goto 21.00,64.05
accept The Flamebinders' Secrets##12256 |goto 21.00,64.05
step
talk Kragh##26852
fpath Conquest Hold |goto 22.00,64.43
step
_NOTE:_
The Next Few Quests are PVP Daily Quests
|tip Would you like to complete them?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Horde)! |confirm |next "PVP_Venture_Bay"
No, Skip It |confirm |next "PVP_Venture_Bay_SKIP"
step
label "PVP_Venture_Bay"
Leave Conquest Hold |goto 21.61,66.81 < 40 |only if walking and subzone("Conquest Hold")
talk Gurtor##27565
accept Seeking Solvent##12433 |goto Grizzly Hills 11.17,76.62
step
talk Stone Guard Ragetotem##27606
accept Smoke 'Em Out##12324 |goto 11.38,76.74
step
talk Centurion Kaggrum##27563
|tip Inside the building.
accept Keep Them at Bay##12317 |goto 10.12,77.33
stickystart "Kill_Alliance_In_Venture_Bay"
step
use the Smoke Bomb##37621
|tip Use it on Venture Co. Stragglers.
|tip They look like Horde enemies inside the buildings around this area.
|tip They are not in the ships. |notinsticky
Smoke Out #20# Venture Company Stragglers |q 12324/1 |goto 14.47,76.78
You can find more around: |notinsticky
[16.11,76.83]
[17.87,79.79]
step
label "Kill_Alliance_In_Venture_Bay"
Kill Conquest Hold enemies around this area
|tip You can kill NPCs or players.
Kill #10# Alliance in Venture Bay |q 12317/1 |goto 16.79,79.02
step
Enter the ship |goto 15.98,81.11 < 7 |walk
click Element 115
|tip It looks like a red canister inside the ship, on the main deck level.
|tip HURRY after picking this up, it only lasts for 4 minutes.
|tip In the next step, get back to the questgivers as fast as you can.
collect Element 115##37664 |q 12433/1 |goto 16.44,80.32
step
Follow the path up |goto 10.53,79.20 < 30 |only if walking
talk Gurtor##27565
turnin Seeking Solvent##12433 |goto 11.17,76.62
step
talk Stone Guard Ragetotem##27606
turnin Smoke 'Em Out##12324 |goto 11.38,76.74
step
talk Centurion Kaggrum##27563
|tip Inside the building.
turnin Keep Them at Bay##12317 |goto 10.12,77.33
stickystart "Collect_Succulent_Venison"
step
label "PVP_Venture_Bay_SKIP"
Follow the path up to leave Venture Bay |goto Grizzly Hills 10.80,73.69 < 40 |only if walking and subzone("Venture Bay")
kill Graymist Hunter##26592+
|tip They look like gray wolves.
collect 3 Gray Worg Hide##37010 |q 12175/1 |goto 25.46,67.43
stickystop "Collect_Succulent_Venison"
step
_NOTE:_
The Next Quest is a PVP Daily Quest
|tip Would you like to complete it?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Horde)! |confirm |next "PVP_Blackriver_Skirmish"
No, Skip It |confirm |next "Collect_Succulent_Venison"
step
label "PVP_Blackriver_Skirmish"
talk Raider Captain Kronn##27120
accept Blackriver Brawl##12170 |goto Grizzly Hills 26.45,65.75
step
Kill enemies around this area
|tip You can kill NPCs or players.
Slay #10# Alliance in Blackriver |q 12170/1 |goto 28.35,62.42
|only if haveq(12170) or completedq(12170)
step
talk Raider Captain Kronn##27120
turnin Blackriver Brawl##12170 |goto 26.45,65.75
step
label "Collect_Succulent_Venison"
kill Tallhorn Stag##26363+
|tip They look like brown deer bucks.
collect 5 Succulent Venison##37185 |q 12436/1 |goto 32.11,67.97
stickystart "Kill_Dragonflayer_Huscarls"
step
Follow the path up into Voldrune |goto 31.46,73.71 < 15 |only if walking and not subzone("Voldrune")
kill Dragonflayer Flamebinder##27259+
|tip These look like women.
|tip They can also be inside the buildings around this area.
collect 3 Flame-Imbued Talisman##37229 |q 12256/1 |goto 30.35,75.75
You can find more around [28.06,74.09]
step
label "Kill_Dragonflayer_Huscarls"
kill 12 Dragonflayer Huscarl##27260 |q 12257/1 |goto 30.35,75.75
|tip They can also be inside the buildings around this area. |notinsticky
You can find more around [28.06,74.09]
step
Enter Conquest Hold |goto Grizzly Hills 21.60,66.70 < 40 |only if walking and not subzone("Conquest Hold")
talk Provisioner Lorkran##26868
turnin Supplemental Income##12436 |goto 22.69,66.17
step
talk Hidetrader Jun'ik##27037
turnin Gray Worg Hides##12175 |goto 22.04,65.11
accept A Minor Substitution##12176 |goto 22.04,65.11
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12176
step
Enter the building |goto 21.17,64.47 < 15 |walk |only if not (subzone("Conquest Hold") and _G.IsIndoors())
talk Sergeant Nazgrim##27388
|tip Inside the building, on the ground floor.
turnin A Show of Strength##12257 |goto 21.00,64.05
turnin The Flamebinders' Secrets##12256 |goto 21.00,64.05
accept The Thane of Voldrune##12259 |goto 21.00,64.05
step
Leave Conquest Hold |goto 21.61,66.81 < 40 |only if walking and subzone("Conquest Hold")
Follow the path up into Voldrune |goto 25.85,79.54 < 30 |only if walking and not subzone("Voldrune")
clicknpc Flamebringer##27292
Choose _"Unchain and control Flamebringer."_
Ride Flamebringer |invehicle |goto 26.57,77.80 |q 12259
step
kill Thane Torvald Eriksson##27377 |q 12259/1 |goto 27.06,72.86
|tip Use the abilities on your action bar.
|tip At the top of the tower.
step
Enter the building |goto 21.17,64.47 < 15 |walk |only if not (subzone("Conquest Hold") and _G.IsIndoors())
talk Sergeant Nazgrim##27388
|tip Inside the building, on the ground floor.
turnin The Thane of Voldrune##12259 |goto 21.00,64.05
accept Onward to Camp Oneqwah##12451 |goto 21.00,64.05
step
talk Conqueror Krenna##26860
|tip Inside the building, on the ground floor.
accept My Enemy's Friend##12412 |goto 20.70,64.17
step
talk Barracks Master Rhekku##27125
|tip Inside the building, on the ground floor.
home Conquest Hold |goto 20.80,64.58
stickystart "Accept_Mikhails_Journal"
stickystart "Kill_Silverbrook_Hunters"
step
Leave Conquest Hold |goto 21.61,66.81 < 40 |only if walking and subzone("Conquest Hold")
kill Vladek##27547 |q 12412/2 |goto 36.24,67.84
|tip Inside the building.
step
label "Accept_Mikhails_Journal"
kill Silverbrook Hunter##27546+
collect Mikhail's Journal##37830 |n
use Mikhail's Journal##37830
accept Mikhail's Journal##12423 |goto 36.12,68.64
step
label "Kill_Silverbrook_Hunters"
kill 8 Silverbrook Hunter##27546 |q 12412/1 |goto 36.12,68.64
|tip They look like humans.
step
kill Grizzly Bear##27131+
|tip They look like brown bears.
collect 6 Grizzly Hide##37020 |q 12176/1 |goto 37.99,70.12
You can find more around: |notinsticky
[39.60,64.78]
[43.09,57.40]
[45.76,54.10]
step
talk Conqueror Krenna##26860
|tip Inside the building.
turnin My Enemy's Friend##12412 |goto 20.70,64.17
accept Attack on Silverbrook##12413 |goto 20.70,64.17
turnin Mikhail's Journal##12423 |goto 20.70,64.17
accept Gorgonna##12424 |goto 20.70,64.17
step
talk Gorgonna##27102
|tip Inside the building.
turnin Gorgonna##12424 |goto 20.90,64.03
accept Tactical Clemency##12422 |goto 20.90,64.03
step
talk Hidetrader Jun'ik##27037
turnin A Minor Substitution##12176 |goto 22.04,65.11
accept Jun'ik's Coverup##12177 |goto 22.04,65.11
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12177
step
talk Sergeant Thurkin##27266
accept Good Troll Hunting##12208 |goto 22.20,64.74
step
talk Provisioner Lorkran##26868
buy 5 Simple Flour##30817 |q 12177/2 |goto 22.69,66.17
step
talk Smith Prigka##27134
buy 1 Coal##3857 |q 12177/1 |goto 23.39,63.07
step
talk Hidetrader Jun'ik##27037
turnin Jun'ik's Coverup##12177 |goto 22.04,65.11
accept Delivery to Krenna##12178 |goto 22.04,65.11
step
Enter the building |goto 21.17,64.47 < 15 |walk |only if not (subzone("Conquest Hold") and _G.IsIndoors())
talk Conqueror Krenna##26860
|tip Inside the building.
turnin Delivery to Krenna##12178 |goto 20.70,64.17
step
Leave Conquest Hold |goto 20.95,61.84 < 40 |only if walking and subzone("Conquest Hold")
talk Samir##26424
turnin Good Troll Hunting##12208 |goto 16.19,47.60
accept Filling the Cages##11984 |goto 16.19,47.60
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
talk Captured Trapper##27497
turnin Tactical Clemency##12422 |goto 21.93,29.93
step
_NOTE:_
Start Looking for a Group
|tip After you complete a few more quests, you will be a good spot to complete the Conquest Pit group quests.
|tip If you can find a group, you can complete 6 group quests that give a lot of experience quickly.
|tip You can also get a nice pair of gloves from completing the questline.
|tip If you can't find a group, you can skip the quests later.
Click Here to Continue |confirm |q 12431 |future
step
kill 8 Silverbrook Defender##27676 |q 12413/1 |goto 24.12,33.75
|tip They look like humans.
|tip You can find them all around the western perimeter or Silverbrook.
step
_NOTE:_
The Next Few Quests are PVP Daily Quests
|tip Would you like to complete them?
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Horde)! |confirm |next "PVP_Blue_Sky_Logging_Grounds"
No, Skip It |confirm |next "PVP_Blue_Sky_Logging_Grounds_SKIP"
step
label "PVP_Blue_Sky_Logging_Grounds"
talk Aumana##27464
accept Overwhelmed!##12288 |goto Grizzly Hills 33.85,32.73
step
talk Lurz##27422
accept Making Repairs##12280 |goto 34.35,32.60
step
talk Grekk##27423
accept Shred the Alliance##12270 |goto 34.50,32.50
step
talk Commander Bargok##27451
accept Keep 'Em on Their Heels##12284 |goto 34.48,33.00
stickystart "Heal_Wounded_Skirmishers"
stickystart "Collect_High_Tension_Springs"
stickystart "Collect_Notched_Sprockets"
stickystart "Collect_Grooved_Cogs"
stickystart "Eliminate_Alliance_Units"
step
clicknpc Broken-down Shredder##27354+
|tip They look like humanoid metal shredding machines around this area.
|tip You will take control of the shredder machines.
|tip You need to return the machine to your allies.
|tip At the return location, use the "Shredder Delivery" ability on your action bar to return the shredders.
Deliver #3# Shredders |q 12270/1 |goto 34.12,40.46
Return the Shredders at [34.46,32.56]
step
label "Heal_Wounded_Skirmishers"
use the Renewing Tourniquet##37568
|tip Use it on Wounded Skirmishers.
|tip They look like Horde soldiers kneeling on the ground around this area.
|tip You can find them all around the Blue Sky Logging Grounds area.
Heal #10# Wounded Skirmishers |q 12288/1 |goto 34.12,40.46
step
label "Collect_High_Tension_Springs"
click High Tension Spring+
|tip They look like metal springs on the ground around this area.
collect 2 High Tension Spring##37416 |q 12280/3 |goto 34.12,40.46
step
label "Collect_Notched_Sprockets"
click Notched Sprockets+
|tip They look like metal cog wheels laying flat on the ground around this area.
collect 3 Notched Sprocket##37413 |q 12280/2 |goto 34.12,40.46
step
label "Collect_Grooved_Cogs"
click Grooved Cog+
|tip They look like metal cog wheels sticking vertically out of the ground around this area.
collect 4 Grooved Cog##37412 |q 12280/1 |goto 34.12,40.46
step
label "Eliminate_Alliance_Units"
Kill enemies around this area
|tip You can kill NPCs or players.
Eliminate #15# Alliance Units |q 12289/1 |goto 34.12,40.46
You can find more around [37.48,43.11]
step
talk Aumana##27464
turnin Overwhelmed!##12288 |goto Grizzly Hills 33.85,32.73
step
talk Lurz##27422
turnin Making Repairs##12280 |goto 34.35,32.60
step
talk Grekk##27423
turnin Shred the Alliance##12270 |goto 34.50,32.50
step
talk Commander Bargok##27451
turnin Keep 'Em on Their Heels##12284 |goto 34.48,33.00
step
label "PVP_Blue_Sky_Logging_Grounds_SKIP"
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
use the Hearthstone##6948
Hearth to Conquest Hold |complete subzone("Conquest Hold") |q 12068
|only if subzone("Drak'atal Passage")
step
talk Conqueror Krenna##26860
|tip Inside the building, on the ground floor.
turnin Attack on Silverbrook##12413 |goto 20.70,64.17
step
talk Gorgonna##27102
|tip Inside the building, on the ground floor.
accept Ruuna the Blind##12425 |goto 20.90,64.03
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12425
step
_NOTE:_
Did You Find a Group for the Conquest Pit?
|tip If you were able to find a group, it is now a good spot to complete the Conquest Pit group quests.
Yes (Do It)	|confirm	|q 12431	|future		|next "Conquest_Pit"
No (Skip)	|confirm	|q 12431	|future		|next "Conquest_Pit_SKIP"
step
label "Conquest_Pit"
talk Grennix Shivwiggle##27719
accept The Conquest Pit: Bear Wrestling!##12427 |goto Grizzly Hills 22.44,63.87 |noautoaccept
step
kill Ironhide##27715
|tip He looks like a black bear.
|tip Inside the covered pit.
Defeat Ironhide |q 12427/1 |goto 23.44,64.97
step
talk Bookie Vel'jen##27720
turnin The Conquest Pit: Bear Wrestling!##12427 |goto 22.34,64.16
step
talk Grennix Shivwiggle##27719
accept The Conquest Pit: Mad Furbolg Fighting##12428 |goto 22.44,63.87 |noautoaccept
step
kill Torgg Thundertotem##27716
|tip He looks like a brown furbolg.
|tip Inside the covered pit.
Defeat Torgg Thundertotem |q 12428/1 |goto 23.44,64.97
step
talk Bookie Vel'jen##27720
turnin The Conquest Pit: Mad Furbolg Fighting##12428 |goto 22.34,64.16
step
talk Grennix Shivwiggle##27719
accept The Conquest Pit: Blood and Metal##12429 |goto 22.44,63.87 |noautoaccept
step
kill Rustblood##27717
|tip He looks like a metal golem.
|tip Inside the covered pit.
Defeat Rustblood |q 12429/1 |goto 23.44,64.97
step
talk Bookie Vel'jen##27720
turnin The Conquest Pit: Blood and Metal##12429 |goto 22.34,64.16
step
talk Grennix Shivwiggle##27719
accept The Conquest Pit: Death Is Likely##12430 |goto 22.44,63.87 |noautoaccept
step
kill Horgrenn Hellcleave##27718
|tip He looks like an armored orc.
|tip Inside the covered pit.
Defeat Horgrenn Hellcleave |q 12430/1 |goto 23.44,64.97
step
talk Bookie Vel'jen##27720
turnin The Conquest Pit: Death Is Likely##12430 |goto 22.34,64.16
step
talk Grennix Shivwiggle##27719
accept The Conquest Pit: Final Showdown##12431 |goto 22.44,63.87 |noautoaccept
step
Watch the dialogue
|tip Inside the covered pit.
Kill the enemies that attack
kill Conqueror Krenna##27727
|tip She looks like an armored orc.
Defeat Krenna in the Conquest Pit |q 12431/1 |goto 23.43,64.70
step
Enter the building |goto 21.17,64.47 < 15 |walk |only if not (subzone("Conquest Hold") and _G.IsIndoors())
talk Gorgonna##27102
|tip Inside the building, on the ground floor.
turnin The Conquest Pit: Final Showdown##12431 |goto 20.70,64.17
step
label "Conquest_Pit_SKIP"
Enter the building |goto Grizzly Hills 22.50,62.98 < 10 |walk
talk Windseer Grayhorn##27262
|tip Inside the building.
accept Eyes Above##12453 |goto 22.50,62.85
accept Vordrassil's Fall##12207 |goto 22.50,62.85
accept The Darkness Beneath##12213 |goto 22.50,62.85
step
Leave Conquest Hold |goto 20.95,61.84 < 40 |only if walking and subzone("Conquest Hold")
talk Mack Fearsen##26604
turnin Seared Scourge##12029 |goto 16.67,48.29
step
talk Prigmon##26519
turnin Shimmercap Stew##12483 |goto 15.74,46.69
accept Say Hello to My Little Friend##12190 |goto 15.74,46.69
stickystart "Collect_Slime_Samples"
step
Enter the cave |goto 28.61,45.06 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Tears |q 12213/3 |goto 30.44,43.80
step
Follow the path up and leave the cave |goto 28.61,45.06 < 15 |walk |only if subzone("Vordrassil's Tears") and _G.IsIndoors()
Enter the cave |goto 33.28,48.43 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Limb |q 12213/2 |goto 32.23,45.89
step
Follow the path up and leave the cave |goto 33.28,48.43 < 15 |walk |only if subzone("Vordrassil's Limb") and _G.IsIndoors()
use the Silver Feather##37877
|tip Use it on Imperial Eagles.
|tip They look like bald eagles.
|tip They fly around and land on rocks and logs on the ground around this area.
Bind #6# Imperial Eagles' Sight |q 12453/1 |goto 34.59,51.84
You can find more around [38.10,53.12]
step
Enter the cave |goto 40.73,51.99 < 15 |walk
use the Geomancer's Orb##37173
|tip Inside the cave.
Use the Orb Beneath Vordrassil's Heart |q 12213/1 |goto 41.15,54.64
step
label "Collect_Slime_Samples"
Follow the path up and leave the cave |goto 40.73,51.99 < 15 |walk |only if subzone("Vordrassil's Heart") and _G.IsIndoors()
kill Entropic Ooze##26366+
collect 6 Slime Sample##37199 |q 12207/1 |goto 39.82,50.50
step
Follow the path up and leave the cave |goto 40.73,51.99 < 15 |walk |only if subzone("Vordrassil's Heart") and _G.IsIndoors()
talk Ruuna the Blind##27581
turnin Ruuna the Blind##12425 |goto 44.04,47.95
accept Ruuna's Request##12328 |goto 44.04,47.95
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
talk Makki Wintergale##26853
fpath Camp Oneqwah |goto 64.96,46.93
step
talk Soulok Stormfury##26944
accept The Horse Hollerer##12415 |goto 65.01,47.88
step
talk Scout Vor'takh##26666
turnin Onward to Camp Oneqwah##12451 |goto 65.16,47.67
accept An Expedient Ally##12074 |goto 65.16,47.67
step
talk Tormak the Scarred##27221
accept The Unexpected 'Guest'##12195 |goto 65.26,47.51
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12195
step
kill Silvercoat Stag##27230+
|tip They look like grey deer bucks.
collect 5 Mature Stag Horn##37104 |q 12195/1 |goto 67.47,50.09
You can find more around [66.72,44.91]
step
Enter the cave |goto 65.58,43.27 < 15 |walk
talk Anya##27646
|tip Inside the small cave.
turnin A Sister's Pledge##12411 |goto 64.82,43.42
step
talk Hugh Glass##26484
accept A Bear of an Appetite##12279 |goto 69.10,40.10
step
Follow the path up |goto 62.02,29.55 < 50 |only if walking and not subzone("Thor Modan")
click Battered Journal##188261
|tip It looks like an open book on the ground.
accept The Damaged Journal##12026 |goto 64.29,19.77
step
click Missing Journal Page##188263+
|tip They look like yellow torn pieces of paper on the ground.
|tip You can find them all around the Thor Modan area.
|tip You can also find them inside the buildings.
collect 8 Missing Journal Page##35737 |goto 63.90,22.28 |q 12026
step
use the Incomplete Journal##35739
collect Brann Bronzebeard's Journal##35738 |q 12026/1
step
use the Hearthstone##6948
Hearth to Conquest Hold |complete subzone("Conquest Hold") |q 12026
|only if subzone("Thor Modan")
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12026
step
Enter the building |goto 22.50,62.98 < 10 |walk
talk Windseer Grayhorn##27262
|tip Inside the building.
turnin Vordrassil's Fall##12207 |goto 22.50,62.85
turnin The Darkness Beneath##12213 |goto 22.50,62.85
turnin Eyes Above##12453 |goto 22.50,62.85
accept A Possible Link##12229 |goto 22.50,62.85
accept The Bear God's Offspring##12231 |goto 22.50,62.85
step
talk Sage Paluna##26584
turnin The Damaged Journal##12026 |goto 65.20,47.76
accept Deciphering the Journal##12054 |goto 65.20,47.76
step
talk Tormak the Scarred##27221
turnin The Unexpected 'Guest'##12195 |goto 65.26,47.51
stickystart "Collect_Crazed_Furbolg_Blood"
step
kill Grumbald One-Eye##26681
collect Spiritsbreath##36740 |q 12054/1 |goto 66.61,58.82
step
Enter the cave |goto 66.78,61.83 < 15 |walk
talk Kodian##27275
|tip Inside the cave.
Ask her _"Who was this stranger?"_
Listen to Kodian's Story |q 12231/2 |goto 66.90,62.40
step
Follow the path up |goto 52.85,56.77 < 50 |only if walking
Enter the cave |goto 48.35,58.47 < 5 |walk
talk Orsonn##27274
|tip Inside the cave.
Tell him _"You're free to go Orsonn, but first tell me what's wrong with the furbolg."_
Listen to Orsonn's Story |q 12231/1 |goto 48.07,58.87
step
label "Collect_Crazed_Furbolg_Blood"
Kill enemies around this area
|tip They look like furbolgs.
collect 8 Crazed Furbolg Blood##37251 |q 12229/1 |goto 52.94,56.19
You can find more around [51.85,48.25]
step
talk Sage Paluna##26584
turnin Deciphering the Journal##12054 |goto 65.20,47.76
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12058 |future
step
Watch the dialogue
talk Sage Paluna##26584
accept The Runic Prophecies##12058 |goto 65.20,47.76
step
talk Scout Vor'takh##26666
accept Pounding the Iron##12073 |goto 65.16,47.67
step
Follow the path up |goto 62.02,29.55 < 50 |only if walking and not subzone("Boulder Hills")
use the Flashbang Grenade##37716
|tip Use it on Highland Mustangs.
|tip They look like horses.
Frighten #15# Highland Mustangs |q 12415/1 |goto 59.85,21.80
You can find more around: |notinsticky
[61.48,16.47]
[65.12,12.38]
step
Follow the path up |goto 64.53,15.15 < 30 |only if walking
talk Kurun##26260
|tip On top of the mountain.
turnin An Expedient Ally##12074 |goto 65.77,17.76
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
stickystart "Kill_Iron_Dwarf_Defenders"
step
Jump down carefully into the water below |goto 67.44,16.10 < 10 |only if walking and not (subzone("Thor Modan") and _G.IsIndoors())
click Third Rune Plate##188289
|tip On the metal door inside the canyon.
Decipher the Third Prophecy |q 12058/3 |goto 68.52,16.21
step
click First Rune Plate##188264
|tip On the metal door inside the canyon.
Decipher the First Prophecy |q 12058/1 |goto 68.99,14.42
step
click Second Rune Plate##188288
|tip On the metal door inside the canyon.
Decipher the Second Prophecy |q 12058/2 |goto 70.18,14.68
step
kill Iron Thane Argrum##26348 |q 11985/1 |goto 70.21,12.93
|tip Inside the canyon.
step
label "Kill_Iron_Dwarf_Defenders"
Kill enemies around this area
|tip They look like black and blue dwarves.
|tip You can find them all throughout the Thor Modan canyon. |notinsticky
Kill #10# Iron Dwarf Defenders |q 12073/1 |goto 68.63,15.42
step
Follow the path to the canyon exit |goto 67.01,16.52 < 10 |only if walking and (subzone("Thor Modan") and _G.IsIndoors())
Leave the canyon |goto 65.07,19.65 < 15 |only if walking and (subzone("Thor Modan") and _G.IsIndoors())
Follow the path up the mountain |goto 60.77,20.45 < 50 |only if walking and not subzone("Boulder Hills")
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
step
talk Datalore Smallsphere##29277
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Datalore Smallsphere##29277 |goto 74.02,34.09 |q 12116
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
use the Hearthstone##6948
Hearth to Conquest Hold |complete subzone("Conquest Hold") |q 12229
|only if subzone("Drakil'jin Ruins")
step
talk Hidetrader Jun'ik##27037
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Hidetrader Jun'ik##27037 |goto 22.02,65.13 |q 12229
step
Enter the building |goto 22.50,62.98 < 10 |walk
talk Windseer Grayhorn##27262
|tip Inside the building.
turnin A Possible Link##12229 |goto 22.50,62.85
turnin The Bear God's Offspring##12231 |goto 22.50,62.85
accept Destroy the Sapling##12241 |goto 22.50,62.85
accept Vordrassil's Seeds##12242 |goto 22.50,62.85
step
talk Sage Paluna##26584
turnin The Runic Prophecies##12058 |goto 65.20,47.76
step
talk Scout Vor'takh##26666
turnin Pounding the Iron##12073 |goto 65.16,47.67
accept In the Name of Loken##12204 |goto 65.16,47.67
step
talk Soulok Stormfury##26944
turnin The Horse Hollerer##12415 |goto 65.01,47.88
stickystart "Collect_Vordrassils_Seeds"
step
Enter the huge tree |goto 50.45,45.99 < 30 |only if walking and not (subzone("Grizzlemaw") and _G.IsIndoors())
use the Verdant Torch##37306
|tip Inside the huge tree, on the bottom floor.
collect Vordrassil's Ashes##37303 |q 12241/1 |goto 50.73,42.66
step
label "Collect_Vordrassils_Seeds"
click Vordrassil's Seed##188691+
|tip They look like small brown pine cones on the ground.
|tip You can find them all around the Grizzlemaw area. |notinsticky
|tip They can be inside or outside the huge tree. |notinsticky
collect 8 Vordrassil's Seed##37302 |q 12242/1 |goto 50.73,42.70
step
Leave the huge tree |goto 50.45,45.99 < 30 |only if walking and (subzone("Grizzlemaw") and _G.IsIndoors())
talk Hugh Glass##26484
turnin A Bear of an Appetite##12279 |goto 69.10,40.10
step
talk Hugh Glass##26484
Tekk him _"Calm down. I want to ask you about the iron dwarves and Loken."_
Watch the dialogue
Question Hugh Glass |q 12204/1 |goto 69.10,40.10
step
talk Kraz##26886
turnin Jin'arrak's End##12152 |goto 73.91,34.12
step
talk Gavrock##26420
turnin Free at Last##12099 |goto 79.76,33.61
step
talk Gavrock##26420
Ask him _"What can you tell me about Loken and the iron dwarves?"_
Watch the dialogue
Question Gavrock |q 12204/2 |goto 79.76,33.62
step
talk Scout Vor'takh##26666
turnin In the Name of Loken##12204 |goto 65.16,47.67
accept The Overseer's Shadow##12201 |goto 65.16,47.67
step
talk Tormak the Scarred##27221
accept An Intriguing Plan##12165 |goto 65.26,47.51
stickystart "Collect_Golem_Blueprint_Section_1"
stickystart "Collect_Golem_Blueprint_Section_2"
stickystart "Collect_Golem_Blueprint_Section_3"
step
Enter the building |goto 76.15,54.25 < 10 |walk
kill Iron Rune Overseer##27177+
|tip They look like black and blue dwarves, with orange glowing smaller hammers.
collect Overseer's Uniform##37035 |q 12201/1 |goto 76.62,54.81
You can find more around: |notinsticky
[76.13,57.97]
[78.41,59.36]
step
label "Collect_Golem_Blueprint_Section_1"
kill Iron Rune-Smith##26408+
|tip They look like black and blue dwarves, with lightning hammers.
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 1##36849 |goto 76.22,57.58 |q 12165
step
label "Collect_Golem_Blueprint_Section_2"
kill Iron Rune-Smith##26408+
|tip They look like black and blue dwarves, with lightning hammers.
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 2##36850 |goto 76.22,57.58 |q 12165
step
label "Collect_Golem_Blueprint_Section_3"
kill Iron Rune-Smith##26408+
|tip They look like black and blue dwarves, with lightning hammers.
|tip You can find them all around the Dun Argol area. |notinsticky
|tip They can also be inside the buildings. |notinsticky
collect Golem Blueprint Section 3##36851 |goto 76.22,57.58 |q 12165
step
use the Golem Blueprint Section 1##36849
collect War Golem Blueprint##36848 |q 12165/1
step
talk Scout Vor'takh##26666
turnin The Overseer's Shadow##12201 |goto 65.16,47.67
accept Cultivating an Image##12202 |goto 65.16,47.67
step
talk Prospector Rokar##27227
turnin An Intriguing Plan##12165 |goto 65.10,47.25
accept From the Ground Up##12196 |goto 65.10,47.25
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12196
stickystart "Collect_War_Golem_Parts"
step
Kill enemies around this area
|tip Only the enemies that look like dwarves will count for this quest goal.
|tip You can find them all around the Dun Argol area. |notinsticky
use Rokar's Camera##37125
|tip Use it on their corpses.
Capture #8# Iron Dwarf Images |q 12202/1 |goto 76.22,57.58
step
label "Collect_War_Golem_Parts"
click War Golem Part##188503+
|tip They look like various shaped grey metal objects on the ground.
|tip They can also be inside the buildings. |notinsticky
|tip You can find them all around the Dun Argol area. |notinsticky
collect 8 War Golem Part##36852 |q 12196/1 |goto 76.22,57.58
step
talk Scout Vor'takh##26666
turnin Cultivating an Image##12202 |goto 65.16,47.67
accept Loken's Orders##12203 |goto 65.16,47.67
step
talk Prospector Rokar##27227
turnin From the Ground Up##12196 |goto 65.10,47.25
accept We Have the Power##12197 |goto 65.10,47.25
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12197
step
Enter the building |goto 75.45,57.43 < 15 |walk
kill Rune-Smith Durar##26409
|tip Inside the building.
collect Durar's Power Cell##36857 |q 12197/1 |goto 74.89,56.92
step
Enter the building |goto 76.72,58.37 < 15 |walk
kill Rune-Smith Kathorn##26410
|tip Inside the building.
collect Kathorn's Power Cell##36858 |q 12197/2 |goto 76.82,59.35
step
_NOTE:_
Get on Your Mount
|tip Make sure you are mounted and not in combat.
|tip You will use the Overseer Disguise Kit in the next guide step.
|tip If you are already mounted when you use the item, it will let you ride your mount while disguised, so you can run faster.
Click Here to Continue |confirm |q 12203
step
use the Overseer Disguise Kit##37071
Wear the Iron Rune Overseer's Disguise |havebuff spell:48064 |q 12203
step
Cross the bridge |goto 78.00,59.17 < 20 |only if walking
Enter the building |goto 80.90,59.92 < 10 |walk
click Loken's Pedestal##188596
|tip Inside the building.
Watch the dialogue
|tip If you don't want to watch the dialogue, you don't have to wait.
|tip You can leave the building and start running down the mountain to the questgivers.
|tip The quest goal will complete as you are running down the mountain.
Receive the Message from Loken |q 12203/1 |goto 81.54,60.30
step
Remove the Iron Rune Overseer Disguise |nobuff spell:48064 |q 12203
|tip Right-click the "Iron Rune Overseer Disguise" buff near your minimap.
|tip Make sure you're in a safe spot before removing the disguise.
step
talk Scout Vor'takh##26666
turnin Loken's Orders##12203 |goto 65.16,47.67
step
talk Prospector Rokar##27227
turnin We Have the Power##12197 |goto 65.10,47.25
accept ... Or Maybe We Don't##12198 |goto 65.10,47.25
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12198
step
use the Golem Control Unit##36936
|tip This will summon a Depleted War Golem to follow you around.
|tip If your golem disappears, use this item again to summon another one.
kill Lightning Sentry##26407+
|tip They look like air elementals.
|tip Kill them with the golem next to you.
|tip Make sure you're close to them when you kill them, or the golem won't collect the charge level.
Collect #10# Charge Levels |q 12198/1 |goto 77.82,53.24
You can find more around: |notinsticky
[75.62,51.49]
[73.54,54.76]
[72.64,59.96]
step
talk Prospector Rokar##27227
turnin ... Or Maybe We Don't##12198 |goto 65.10,47.25
accept Bringing Down the Iron Thane##12199 |goto 65.10,47.25
step
Enter the building |goto 65.40,47.12 < 10 |walk
talk Aiyan Coldwind##26680
|tip Inside the building.
home Camp Oneqwah |goto 65.42,46.89
step
talk Litoko Icetotem##26707
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Litoko Icetotem##26707 |goto 65.37,48.02 |q 12199
step
Follow the path to the top of the mountain and enter the building |goto 75.90,62.18 < 15 |walk
use the Golem Control Unit##36865
|tip Downstairs inside the building.
Control a War Golem |invehicle |goto 76.79,63.01 |q 12199
step
kill Iron Thane Furyhammer##26405 |q 12199/1 |goto 76.37,63.72
|tip Downstairs inside the building.
|tip Use the abilities on your action bar.
|tip Use the "EMP" ability to stun The Anvil and remove Iron Thane Furyhammer's Shield.
|tip Use the "Charged Smash" ability Iron Thane Furyhammer.
step
Stop Controlling the War Golem |outvehicle |q 12199
|tip Click the yellow arrow on your action bar.
step
use the Hearthstone##6948
Hearth to Camp Oneqwah |complete subzone("Camp Oneqwah") |q 12199
|only if subzone("Dun Argol")
step
talk Tormak the Scarred##27221
turnin Bringing Down the Iron Thane##12199 |goto 65.26,47.51
step
Enter the building |goto 22.50,62.98 < 10 |walk
talk Windseer Grayhorn##27262
|tip Inside the building.
turnin Destroy the Sapling##12241 |goto 22.50,62.85
turnin Vordrassil's Seeds##12242 |goto 22.50,62.85
step
talk Scout Vor'takh##26666
accept Shifting Priorities##12763 |goto 65.16,47.67
step
talk Makki Wintergale##26853
Tell him _"I wish to travel to Light's Breach."_
Begin Flying to Light's Breach |ontaxi |goto 64.96,46.93 |q 12763
step
Fly to Light's Breach |offtaxi |goto 32.18,74.47 |q 12763 |notravel
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
turnin Shifting Priorities##12763 |goto 32.03,74.43
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
|tip They look like small oozes on the ground.
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
accept A Flawless Plan##12823 |goto The Storm Peaks/0 50.48,81.65
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
accept When All Else Fails##13060 |goto 40.93,85.31
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
Begin Flying in the D16 Propelled Delivery Device |invehicle |goto 40.93,85.31 |q 13060
step
Fly to Grom'arsh Crash-Site |outvehicle |goto 36.83,49.61 |q 13060 |notravel
step
talk Olut Alegut##30472
|tip Inside the building.
|tip On top of the mountain.
turnin When All Else Fails##13060 |goto 36.97,49.51
accept Ancient Relics##12882 |goto 36.97,49.51
step
talk Peon Gakra##29944
|tip Inside the building.
|tip On top of the mountain.
home Grom'arsh Crash-Site |goto 37.12,49.52
step
talk Boktar Bloodfury##29651
|tip Inside the building.
|tip On top of the mountain.
accept The Missing Bronzebeard##12895 |goto 37.31,49.66
step
talk Blood Guard Lorga##30247
|tip On top of the mountain.
accept The Missing Tracker##13054 |goto 36.44,49.08
accept Emergency Measures##13000 |goto 36.44,49.08
step
talk Kabarg Windtamer##29757
|tip On top of the mountain.
fpath Grom'arsh Crash-Site |goto 36.19,49.39
step
click Disturbed Snow##191708
|tip It looks like a pile of snow.
collect Burlap-Wrapped Note##40947 |q 12895/1 |goto 36.06,64.13
step
talk Boktar Bloodfury##29651
|tip Inside the building.
|tip On top of the mountain.
turnin The Missing Bronzebeard##12895 |goto 37.31,49.66
accept The Nose Knows##12909 |goto 37.31,49.66
step
talk Khaliisi##29855
turnin The Nose Knows##12909 |goto 40.77,51.20
accept Sniffing Out the Perpetrator##12910 |goto 40.77,51.20
step
clicknpc Frostbite##29857
Ride Frostbite |invehicle |goto 40.75,51.22 |q 12910
step
Track the Scent to its Source |q 12910/1 |goto 47.87,60.86 |notravel
|tip Use the abilities on your action bar.
|tip Use the "Cast Net" on the dwarves.
|tip Use the "Ice Slick" ability near the white piles of snow on the ground.
|tip You will eventually ride to this location.
step
Enter the cave |goto 48.13,60.96 < 15 |walk
kill Tracker Thulin##29695 |q 12910/2 |goto 48.55,60.82
|tip Inside the cave.
collect Brann's Communicator##40971 |goto 48.55,60.82 |q 12910
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Sniffing Out the Perpetrator##12910
accept Speak Orcish, Man!##12913
stickystart "Collect_Worg_Fur"
step
Enter the cave |goto 46.94,55.09 < 40 |walk |only if not (subzone("Gimorak's Den") and _G.IsIndoors())
talk Tracker Val'zij##30469
|tip Inside the cave.
turnin The Missing Tracker##13054 |goto 48.52,54.36
accept Cave Medicine##13055 |goto 48.52,54.36
stickystart "Collect_Toxin_Gland"
step
click Cave Mushroom##192556+
|tip They look like small red and white mushrooms on the ground.
|tip inside the cave. |notinsticky
|tip You can find them all throughout the Gimorak's Den cave. |notinsticky
collect 8 Cave Mushroom##42926 |q 13055/1 |goto 48.96,52.83
step
label "Collect_Toxin_Gland"
kill Infesting Jormungar##30148+
|tip They look like large centipedes standing upright.
|tip inside the cave. |notinsticky
|tip You can find them all throughout the Gimorak's Den cave. |notinsticky
collect Toxin Gland##42927 |q 13055/2 |goto 48.96,52.83
step
talk Tracker Val'zij##30469
|tip Inside the cave.
turnin Cave Medicine##13055 |goto 48.52,54.36
accept There's Always Time for Revenge##13056 |goto 48.52,54.36
step
kill Gimorak##30167 |q 13056/1 |goto 47.91,48.39
|tip He looks like a large black wolf.
|tip He walks around this area inside the cave.
step
label "Collect_Worg_Fur"
Kill Cavedweller Worg enemies around this area
|tip They look like grey and white wolves.
|tip Inside the cave. |notinsticky
|tip You can find them all throughout the Gimorak's Den cave. |notinsticky
collect 6 Worg Fur##42510 |q 13000/1 |goto 48.96,52.83
step
talk Tracker Val'zij##30469
|tip Inside the cave.
turnin There's Always Time for Revenge##13056 |goto 48.52,54.36
step
Leave the cave |goto 46.94,55.09 < 40 |walk |only if subzone("Gimorak's Den") and _G.IsIndoors()
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
Hearth to Grom'arsh Crash-Site |complete subzone("Grom'arsh Crash-Site") |noway |c |q 12942
|only if (subzone("Valkyrion") or subzone("The Blighted Pool"))
stickystop "Collect_Relics_Of_Ulduar"
step
talk Moteha Windborn##29937
|tip Inside the building.
|tip On top of the mountain.
turnin Speak Orcish, Man!##12913 |goto 37.29,49.73
accept Speaking with the Wind's Voice##12917 |goto 37.29,49.73
step
talk Blood Guard Lorga##30247
|tip On top of the mountain.
turnin Emergency Measures##13000 |goto 36.44,49.08
step
talk Marksman Udabu##29945
|tip On top of the mountain.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Marksman Udabu##29945 |goto 36.36,48.95 |q 12917
stickystart "Collect_Relics_Of_Ulduar"
step
kill Stormrider##29624+
|tip They look like armored air elementals.
You can find them all around the Snowdrift Plains area.
collect 5 Voice of the Wind##41514 |q 12917/1 |goto 26.66,41.41
step
label "Collect_Relics_Of_Ulduar"
kill Stormrider##29624+ |notinsticky
|tip They look like armored air elementals. |notinsticky
You can find them all around the Snowdrift Plains area. |notinsticky
collect 10 Relic of Ulduar##42780 |q 12882/1 |goto 26.66,41.41 |future
step
talk Marksman Udabu##29945
|tip On top of the mountain.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Marksman Udabu##29945 |goto 36.36,48.95 |q 12917
step
talk Olut Alegut##30472
|tip Inside the building.
|tip On top of the mountain.
turnin Ancient Relics##12882 |goto 36.97,49.51
step
talk Moteha Windborn##29937
|tip Inside the building.
|tip On top of the mountain.
turnin Speaking with the Wind's Voice##12917 |goto 37.29,49.73
step
talk Boktar Bloodfury##29651
|tip Inside the building.
|tip On top of the mountain.
accept Catching up with Brann##12920 |goto 37.31,49.66
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
Ask him _"Do you understand me? We should be able to understand each other now."_
Watch the dialogue
Speak with Brann |q 12920/1
step
talk Boktar Bloodfury##29651
|tip Inside the building.
|tip On top of the mountain.
turnin Catching up with Brann##12920 |goto 37.31,49.66
accept Pieces of the Puzzle##12926 |goto 37.31,49.66
step
kill Library Guardian##29724+
|tip They look like mechanical gnomes on mechanical bird mounts.
|tip You can find them all around the Inventory's Library area.
collect 6 Inventor's Disk Fragment##41130 |goto 38.17,42.64 |q 12926
step
use the Inventor's Disk Fragment##41130+
collect The Inventor's Disk##41132 |q 12926/1
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Pieces to the Puzzle##12926
accept Data Mining##12927
step
use The Inventor's Disk##41179
|tip Use it near Databanks.
|tip They look like floating geometric orbs.
|tip You can find them all around the Inventory's Library area.
Gather #7# Hidden Data |q 12927/1 |goto 38.17,42.64
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Data Mining##12927
accept The Library Console##13416
step
Enter the building |goto 37.73,45.22 < 15 |walk
click Inventor's Library Console##191760
|tip Inside the building.
turnin The Library Console##13416 |goto 37.43,46.80
accept Norgannon's Shell##12928 |goto 37.43,46.80
step
use the Charged Disk##44704
|tip Inside the building.
Watch the dialogue
kill Archivist Mechaton##29775
collect Norgannon's Shell##41258 |q 12928/1 |goto 37.53,46.52
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Norgannon's Shell##12928
accept The Earthen of Ulduar##12929
accept Going After the Core##13273
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
turnin The Earthen of Ulduar##12929 |goto 31.42,38.07
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
talk Thyra Kvinnshal##30041
|tip Inside the building.
turnin Aberrations##12925 |goto 48.44,72.15
step
talk Iva the Vengeful##29997
|tip Inside the building.
turnin Off With Their Black Wings##12942 |goto 48.33,72.13
turnin Yulda's Folly##12968 |goto 48.33,72.13
turnin Valkyrion Must Burn##12953 |goto 48.33,72.13
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
click Prospector Khrona's Notes##193561
|tip It looks like an open book.
|tip Laying on a brown wooden crate.
|tip On top of the mountain.
collect Prospector Khrona's Notes##43984 |q 13273/1 |goto 59.78,52.65
step
click Prospector Soren's Maps##193560
|tip It looks like a tan piece of paper.
|tip Laying on a brown wooden crate.
|tip On top of the mountain.
collect Prospector Soren's Maps##43983 |q 13273/2 |goto 59.25,51.48
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin Going After the Core##13273
accept The Core's Keeper##13274
step
Enter the large metal hole in the side of the mountain (high up off the ground) |goto 56.38,58.49 < 30 |walk |only if not subzone("Loken's Bargain")
Fly down here |goto 54.76,57.43 < 30 |walk
kill Athan##31798
|tip Inside the tunnel.
collect Norgannon's Core##44047 |q 13274/1 |goto 56.38,52.10
step
_Next to you:_
use Brann's Communicator##40971
talk Brann Bronzebeard##29579
turnin The Core's Keeper##13274
accept Forging the Keystone##13285
step
Fly up here |goto 54.76,57.43 < 30 |walk |only if subzone("Loken's Bargain")
Leave the large metal hole in the side of the mountain |goto 56.38,58.49 < 30 |walk |only if subzone("Loken's Bargain")
talk Brann Bronzebeard##29579
|tip On top of the huge pillar.
Tell him _"I'm ready, Brann. Let's make the keystone."_
|tip After talking to him, skip to the next step.
|tip A long dialogue happens, but you don't need to wait for it to finish.
|tip The quest goal will complete as you travel.
Click Here After Talking to Brann Bronzebeard |confirm |goto 45.49,49.50 |q 13285
step
Help Brann Create the Keystone |q 13285/1 |goto 33.42,57.93
|tip Fly to the top of the huge pillar.
|tip You may have to wait a few seconds for the quest goal to complete.
|tip You are waiting for the dialogue to finish that you started in the previous guide step.
step
talk Thorim##29445
|tip On top of the huge pillar.
turnin Mending Fences##12915 |goto 33.42,57.93
turnin A Spark of Hope##12956 |goto 33.42,57.93
accept Forging an Alliance##12924 |goto 33.42,57.93
step
talk Marksman Udabu##29945
|tip On top of the mountain.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Marksman Udabu##29945 |goto 36.36,48.95 |q 13285
step
talk Peon Gakra##29944
|tip Inside the building.
|tip On top of the mountain.
home Grom'arsh Crash-Site |goto 37.12,49.52
step
talk Boktar Bloodfury##29651
|tip Inside the building.
|tip On top of the mountain.
turnin Forging the Keystone##13285 |goto 37.31,49.66
accept Xarantaur, the Witness##13426 |goto 37.31,49.66
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
Enter the building on top of the mountain |goto 65.71,51.29 < 10 |walk
talk Xarantaur##30381
|tip Inside the building.
|tip On top of the mountain.
turnin Xarantaur, the Witness##13426 |goto 65.77,51.42
accept The Witness and the Hero##13034 |goto 65.77,51.42
step
talk Hyeyoung Parka##29762
|tip On top of the mountain.
fpath Camp Tunka'lo |goto 65.41,50.61
step
click First History Scroll
|tip It looks like a white banner hanging on the wall.
|tip On top of the mountain.
Read the First History Scroll |q 13034/1 |goto 65.82,50.43
step
click Second History Scroll
|tip It looks like a white banner hanging from the building.
|tip On top of the mountain.
Read the Second History Scroll |q 13034/2 |goto 66.84,50.10
step
click Second History Scroll
|tip It looks like a white banner with a grey border hanging from the building.
|tip On top of the mountain.
Read the Third History Scroll |q 13034/3 |goto 67.50,50.58
step
talk Ontak##29969
|tip On top of the mountain.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ontak##29969 |goto 67.38,50.64 |q 13034
step
Enter the building on top of the mountain |goto 65.71,51.29 < 10 |walk
talk Xarantaur##30381
|tip Inside the building.
|tip On top of the mountain.
turnin The Witness and the Hero##13034 |goto 65.77,51.42
accept Memories of Stormhoof##13037 |goto 65.77,51.42
step
Enter the cave |goto 62.45,41.40 < 20 |walk |only if not (subzone("Frostfloe Deep") and _G.IsIndoors())
talk Chieftain Swiftspear##30395
|tip Inside the cave, on the upper floor.
Tell him _"I am sorry to disturb your rest, chieftain, but your brother's spirit may be in danger. Would you tell me what you remember of him?"_
Watch the dialogue
Ask Chieftain Swiftspear About His Memories |q 13037/1 |goto 61.18,39.00
step
talk Chieftain Swiftspear##30395
|tip Inside the cave, on the upper floor.
accept Distortions in Time##13038 |goto 61.18,39.00
step
use The Chieftain's Totem##42781
|tip Use it near Frostfloe Rifts.
|tip They look like yellow swirling portals.
|tip You can find them all throughout the Frostfloe Deep cave.
Close #4# Frostfloe Rifts |q 13038/1 |goto 61.84,39.92
step
Leave the cave |goto 62.45,41.40 < 20 |walk |only if subzone("Frostfloe Deep") and _G.IsIndoors()
Enter the building on top of the mountain |goto 65.71,51.29 < 10 |walk
talk Xarantaur##30381
|tip Inside the building.
|tip On top of the mountain.
turnin Memories of Stormhoof##13037 |goto 65.77,51.42
turnin Distortions in Time##13038 |goto 65.77,51.42
accept Where Time Went Wrong##13048 |goto 65.77,51.42
accept The Hero's Arms##13049 |goto 65.77,51.42
stickystart "Collect_Stormhoofs_Spear"
stickystart "Collect_Stormhoofs_Mail"
step
click Taunka Artifact+
|tip They look like various shaped objects on the ground.
|tip You can find them all throughout the Howling Hollow cave.
Attune the Lorehammer to Stormhoof's Time #6# Times |q 13048/1 |goto 67.07,44.80
step
label "Collect_Stormhoofs_Spear"
kill Scion of Storm##30184+
|tip They look like armored air elementals.
|tip You can find them all throughout the Howling Hollow cave. |notinsticky
collect Stormhoof's Spear##42782 |q 13049/1 |goto 67.07,44.80
step
label "Collect_Stormhoofs_Mail"
kill Scion of Storm##30184+
|tip They look like armored air elementals.
|tip You can find them all throughout the Howling Hollow cave. |notinsticky
collect Stormhoof's Mail##42783 |q 13049/2 |goto 67.07,44.80
step
Leave the Howling Hollow Cave |complete not (subzone("The Howling Hollow") and _G.IsIndoors())
|tip There are multiple exits in the cave, upstairs and downstairs.
|tip Go to the exit closest to you and walk outside, so you can use your flying mount.
step
Enter the building on top of the mountain |goto 65.71,51.29 < 10 |walk
talk Xarantaur##30381
|tip Inside the building.
|tip On top of the mountain.
turnin Where Time Went Wrong##13048 |goto 65.77,51.42
turnin The Hero's Arms##13049 |goto 65.77,51.42
accept Changing the Wind's Course##13058 |goto 65.77,51.42
step
talk Ontak##29969
|tip On top of the mountain.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Ontak##29969 |goto 67.38,50.64 |q 13058
step
use The Lorehammer##42918
Become Stormhoof |invehicle |goto 64.34,46.73 |q 13058
step
kill The North Wind##30474
|tip He looks like a large elite armored air elemental.
|tip Use the abilities on your action bar.
|tip He will eventually surrender.
click Horn of Elemental Fury
|tip It looks like a large spiral white horn.
|tip It appears on the ground nearby after he surrenders.
Restore the True Timeline |q 13058/1 |goto 64.18,47.56
step
Enter the building on top of the mountain |goto 65.71,51.29 < 10 |walk
talk Xarantaur##30381
|tip Inside the building.
|tip On top of the mountain.
turnin Changing the Wind's Course##13058 |goto 65.77,51.42
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (69-80)\\Icecrown (79-80)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Icecrown",
condition_suggested=function() return level >= 79 and level <= 80 and not completedq(13403) end,
},[[
step
talk Sky-Reaver Klum##31085
accept Preparations for War##13419 |goto Dalaran 69.37,40.63
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
talk Warlord Hork Strongbrow##31240
|tip Inside the building.
accept Orgrim's Hammer##13224 |goto 79.44,72.71
step
talk Penumbrius##31069
fpath Crusaders' Pinnacle |goto 79.41,72.37
step
_NOTE:_
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13224
step
_On the Orgrim's Hammer Airship:_
talk Sky-Reaver Korm Blackscar##30824
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Preparations for War##13419
turnin Orgrim's Hammer##13224
accept The Broken Front##13228
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
accept It's All Fun and Games##12892
step
_On the Orgrim's Hammer Airship:_
talk Warbringer Davos Rioht##32301
|tip He walks around on the main deck ramps that lead down to the lower deck.
accept Blood of the Chosen##13330
accept Joining the Assault##13340
step
_On the Orgrim's Hammer Airship:_
talk Brother Keltan##31261
|tip He walks around on the main deck ramps that lead down to the lower deck.
accept Slaves to Saronite##13302
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
accept Get to Ymirheim!##13293
step
talk Crusader Bridenbrad##30562
turnin A Tale of Valor##13068 |goto 79.84,30.82
accept A Hero Remains##13072 |goto 79.84,30.82
step
Enter the building |goto 75.92,23.61 < 15 |walk
talk Jarin Dawnglow##33971
|tip Inside the building.
home Sunreaver Pavilion |goto 76.10,23.96
step
Leave the building |goto 75.92,23.61 < 15 |walk |only if subzone("Sunreaver Pavilion") and _G.IsIndoors()
talk Helidan Lightwing##33849
fpath Argent Tournament Grounds |goto 72.59,22.62
step
use the Eyesore Blaster##41265
|tip Use it repeatedly on The Ocular.
|tip It looks like a huge blue glowing eye at the top of this tower.
|tip You can use this item while flying.
Destroy The Ocular |q 12892/1 |goto 44.55,22.44
step
talk Baron Sliver##29804
|tip On the ground, outside the building.
turnin It's All Fun and Games##12892 |goto 44.15,24.68
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
accept If He Cannot Be Turned##12897 |goto 44.15,24.68
step
Enter the building |goto 43.71,23.67 < 30 |walk |only if not (subzone("The Shadow Vault") and _G.IsIndoors())
click General's Weapon Rack##191779
|tip Inside the building.
|tip Be careful, a level 80 elite enemy will appear and attack you.
|tip If you have trouble, try to find someone to help you.
|tip It is important to get this quest done, since it unlocks a quest hub.
kill General Lightsbane##29851 |q 12897/1 |goto 44.72,19.76
step
Leave the building |goto 43.71,23.67 < 30 |walk |only if subzone("The Shadow Vault") and _G.IsIndoors()
talk Ground Commander Xutjja##31834
|tip Standing on the ground.
turnin Joining the Assault##13340 |goto 58.34,46.00
accept Assault by Air##13310 |goto 58.34,46.00 |only if subzone("The Bombardment")
step
click Kor'kron Suppression Turret
|tip It looks like a gun mounted on the front of the airplane.
Man the Suppression Turret |invehicle |goto 59.52,45.94 |q 13310
|only if haveq(13310) or completedq(13310)
step
_As You Fly:_
Blind Ymirheim Spear Guns
|tip They look like metal dragon heads with harpoons sticking out of them.
|tip They are mounted on the ground and up on buildings all around the Ymirheim area.
|tip Shoot them using the ability on your action bar.
|tip They will be blinded by the smoke and won't shoot at you.
|tip You need to protect the airplane you're in as the Kor'kron Infiltrators get dropped around the area.
|tip The infiltrators will be dropped automatically as you fly.
Drop #4# Kor'kron Infiltrators |q 13310/1
|only if haveq(13310) or completedq(13310)
step
Return to Ground Commander Koup |outvehicle |goto 58.91,45.86 |q 13310 |notravel
|only if haveq(13310) or completedq(13310)
step
talk Ground Commander Xutjja##31834
turnin Assault by Air##13310 |goto 58.34,46.00
|only if haveq(13310) or completedq(13310)
step
talk Kor'kron Squad Leader##31833
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Assault by Ground##13301 |goto 58.00,45.92
stickystart "Slay_Ymirheim_Vrykul"
step
Watch the dialogue
|tip Follow the Kor'kron Squad Leader and his group, and help them fight as they walk.
|tip They eventually walk to this location up the path.
|tip At least 4 of the troops must survive.
Escort #4# Horde Troops to Ymirheim |q 13301/1 |goto 59.26,52.45
|only if haveq(13301) or completedq(13301)
step
label "Slay_Ymirheim_Vrykul"
Kill enemies around this area
|tip They look like large blue humans.
|tip You can find them all around the Ymirheim area. |notinsticky
Slay #20# Ymirheim Vrykul |q 13330/1 |goto 58.74,54.71
|only if haveq(13330) or completedq(13330)
step
talk Saronite Mine Slave##31397+
|tip They look like friendly NPCs mining all throughout Saronite Mines.
|tip Be careful to avoid Foreman Thaldrin, an elite enemy near the back of the mine.
Tell them _"Go on, you're free. Get out of here!"_
|tip Some of them may attack you.
Rescue #10# Saronite Mine Slaves |q 13302/1 |goto 56.82,57.47
|only if haveq(13302) or completedq(13302)
step
Leave the cave |goto 56.82,57.47 < 30 |walk |only if subzone("Saronite Mines") and _G.IsIndoors()
talk Blast Thunderbomb##31781
|tip Outside, near the building.
turnin Get to Ymirheim!##13293 |goto 51.94,57.59
step
_NOTE:_
The Next Quest is a PVP Daily Quest
|tip Would you like to complete it?
|tip It's very easy and can be completed quickly.
|tip Click the line of your choice to continue.
Yes, Let's Do It (For the Horde)! |confirm |next "PVP_King_Of_The_Mountain"
No, Skip It |confirm |next "PVP_King_Of_The_Mountain_SKIP"
|only if subzone("Ymirheim")
step
label "PVP_King_Of_The_Mountain"
talk Blast Thunderbomb##31781
|tip Outside, near the building.
accept King of the Mountain##13283 |goto Icecrown 51.94,57.59
|only if subzone("Ymirheim")
step
talk Thunderbomb's Jumpbot##31770
|tip Outside, near the building.
Take Control of Geargrinder's Jumpbot |invehicle |goto 51.94,57.59 |q 13283
|only if haveq(13283) or completedq(13283)
step
Jump Up to the Mountain Peak
|tip Spam the "Jump Jets" ability on your action.
|tip You can move straight up the mountain without stopping.
Locate the Ymirheim Peak Skulls
|tip They look like a pile of skulls on the ground on the mountain peak.
|tip Use the "Plant Horde Battle Standard" ability next to the skulls.
Plant the Horde Battle Standard |q 13283/1 |goto 54.86,60.13
|only if haveq(13283) or completedq(13283)
step
Release Thunderbomb's Jumpbot |outvehicle |goto 54.86,60.13 |q 13283
|tip Click the red arrow on your action bar.
|only if haveq(13283) or completedq(13283)
step
talk Blast Thunderbomb##31781
|tip Outside, near the building.
turnin King of the Mountain##13283 |goto 51.94,57.59
|only if haveq(13283) or completedq(13283)
step
label "PVP_King_Of_The_Mountain_SKIP"
talk Blast Thunderbomb##31781
|tip Outside, near the building.
|tip Repair your items.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Blast Thunderbomb##31781 |goto Icecrown 51.94,57.59 |q 13231
step
talk Dying Berserker##31273+
|tip They look like horde soldiers laying on the ground.
|tip You won't be able to talk to them if they are already dead.
|tip You can find them all around the Broken Front Area.
Tell them _"Hold on, friend. Tell me what happened here."_
Question the Dying Berserker |q 13228/1 |goto 68.10,67.34
step
talk Dying Berserker##31273
|tip The Dying Berserker you talked to in the previous step.
accept Avenge Me!##13230 |goto 68.10,67.34
step
Kill Dying Soldier##31304+
|tip They look like alliance soldiers laying on the ground.
|tip You won't be able to talk to them if they are already dead.
|tip You can find them all around the Broken Front Area.
Slay #5# Dying Alliance Soldiers |q 13230/1 |goto 69.82,64.53
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
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 12897
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin If He Cannot Be Turned##12897
accept The Shadow Vault##12899
step
_On the Orgrim's Hammer Airship:_
talk Sky-Reaver Korm Blackscar##30824
|tip Inside the airship, in the large room on the rear of the main deck.
turnin The Broken Front##13228
turnin Avenge Me!##13230
accept Good For Something?##13238
accept Takes One to Know One##13260
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Takes One to Know One##13260
accept Poke and Prod##13237
step
_On the Orgrim's Hammer Airship:_
talk Warbringer Davos Rioht##32301
|tip He walks around on the main deck ramps that lead down to the lower deck.
turnin Blood of the Chosen##13330
|only if haveq(13330) or completedq(13330)
step
_On the Orgrim's Hammer Airship:_
talk Brother Keltan##31261
|tip He walks around on the main deck ramps that lead down to the lower deck.
turnin Slaves to Saronite##13302
|only if haveq(13302) or completedq(13302)
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Good For Something?##13238
accept Volatility##13239
step
talk Ground Commander Xutjja##31834
|tip Standing on the ground.
turnin Assault by Ground##13301 |goto 58.34,46.00
|only if haveq(13301) or completedq(13301)
step
talk Baron Sliver##29343
turnin The Shadow Vault##12899 |goto 42.84,24.92
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
accept I'm Not Dead Yet!##13229 |goto 31.76,64.80
step
Watch the dialogue
|tip Follow Father Kamaros and protect him as he walks.
|tip He eventually walks to this location.
Escort Father Kamaros to Safety |q 13229/1 |goto 31.98,57.02
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
collect 3 Pile of Bones##43609 |goto 68.89,65.59 |q 13239
step
label "Collect_Abandoned_Armor"
click Abandoned Armor##193201+
|tip They look like metal armor chest pieces on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Armor##43616 |goto 68.89,65.59 |q 13239
step
label "Collect_Abandoned_Helms"
click Abandoned Helm##193200+
|tip They look like small metal helmets on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Helm##43610 |goto 68.89,65.59 |q 13239
step
use Copperclaw's Volatile Oil##43608
|tip Use it multiple times.
|tip A skeletal dragon will fly down and die each time.
Conduct #3# Field Tests |q 13239/1 |goto 68.89,65.59
step
label "Kill_Hulking_Abominations"
kill 5 Hulking Abomination##31140 |q 13237/1 |goto 68.89,65.59
|tip You can find them all around the Broken Front area. |notinsticky
step
label "Kill_Malefic_Necromancers"
kill 5 Malefic Necromancer##31155 |q 13237/2 |goto 68.89,65.59
|tip They look like skeletons wearing brown capes.
|tip You can find them all around the Broken Front area. |notinsticky
step
label "Kill_Shadow_Adepts"
kill 5 Shadow Adept##31145 |q 13237/3 |goto 68.89,65.59
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
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13237
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Poke and Prod##13237
accept That's Abominable!##13264
accept Opportunity##13258
step
_On the Orgrim's Hammer Airship:_
talk Brother Keltan##31261
|tip He walks around on the main deck ramps that lead down to the lower deck.
turnin I'm Not Dead Yet!##13229
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Volatility##13239
accept Volatility##13261
stickystart "Collect_Abandoned_Armor_DAILY"
stickystart "Collect_Abandoned_Helms_DAILY"
stickystart "Collect_Chilled_Abomination_Guts"
step
click Pile of Bones##193199+
|tip They look like small groups of white bones on the ground.
|tip You can find them all around the Broken Front area.
collect 3 Pile of Bones##43609 |goto 68.89,65.59 |q 13261
|only if haveq(13261) or completedq(13261)
step
label "Collect_Abandoned_Armor_DAILY"
click Abandoned Armor##193201+
|tip They look like metal armor chest pieces on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Armor##43616 |goto 68.89,65.59 |q 13261
|only if haveq(13261) or completedq(13261)
step
label "Collect_Abandoned_Helms_DAILY"
click Abandoned Helm##193200+
|tip They look like small metal helmets on the ground.
|tip You can find them all around the Broken Front area. |notinsticky
collect 3 Abandoned Helm##43610 |goto 68.89,65.59 |q 13261
|only if haveq(13261) or completedq(13261)
step
use Copperclaw's Volatile Oil##43608
|tip Use it multiple times.
|tip A skeletal dragon will fly down and die each time.
Conduct #3# Field Tests |q 13261/1 |goto 68.89,65.59
|only if haveq(13261) or completedq(13261)
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
Explode #15# Icy Ghouls |q 13264/1 |goto 67.92,60.67
Explode #15# Vicious Geists |q 13264/2 |goto 67.92,60.67
Explode #15# Risen Alliance Soldiers |q 13264/3 |goto 67.92,60.67
step
Fly through the slits in the bottom of the building |goto 55.14,83.07 < 40 |walk
talk Sergeant Kregga##31440
|tip Inside the building, on the ground floor.
turnin Opportunity##13258 |goto 54.94,84.18
accept Establishing Superiority##13259 |goto 54.94,84.18
step
kill 10 Hulking Horror##31413 |q 13259/1 |goto 52.77,86.08
|tip Inside the building, on the ground floor.
|tip You can find them all around this area.
step
talk Sergeant Kregga##31440
|tip Inside the building, on the ground floor.
turnin Establishing Superiority##13259 |goto 54.94,84.18
accept Blow it Up!##13262 |goto 54.94,84.18
step
click Saronite Bomb Stack##193400
|tip Inside the building, on the ground floor.
|tip You will fall down the huge whole after you accept the quest.
turnin Blow it Up!##13262 |goto 54.37,86.30
accept A Short Fuse##13263 |goto 54.37,86.30
step
click Pulsing Crystal##193195
|tip Underwater.
|tip Underground, beneath Icecrown Citadel.
turnin A Short Fuse##13263 |goto 53.99,87.29
accept A Voice in the Dark##13271 |goto 53.99,87.29
step
talk Matthias Lehner##31237
|tip Underground, beneath Icecrown Citadel.
|tip Be careful to not accidentally click the portal near him.
turnin A Voice in the Dark##13271 |goto 53.81,86.93
accept Time to Hide##13275 |goto 53.81,86.93
step
kill Faceless Lurker##31691+
|tip They look like elephant people.
|tip Underground around this area.
|tip You can find them all around the Naz'anak: The Forgotten Depths area.
collect 3 Faceless One's Blood##44001 |q 13275/1 |goto 55.23,86.71
step
talk Matthias Lehner##31237
|tip Underground, beneath Icecrown Citadel.
|tip Be careful to not accidentally click the portal near him.
turnin Time to Hide##13275 |goto 53.81,86.93
accept Return to the Surface##13282 |goto 53.81,86.93
step
click Surface Portal
|tip Underground, beneath Icecrown Citadel.
Escape Naz'anak: The Forgotten Depths |complete not subzone("Naz'anak: The Forgotten Depths") |goto 53.79,86.84 |q 13282
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
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13264
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin That's Abominable!##13264
turnin Return to the Surface##13282
accept Field Repairs##13304
accept Sneak Preview##13351
step
Visit the South of Aldur'thar |q 13351/1 |goto 53.93,44.68
|tip Fly over this location.
step
Visit the Central of Aldur'thar |q 13351/2 |goto 53.96,41.08
|tip Fly over this location.
step
Visit the North of Aldur'thar |q 13351/3 |goto 53.99,34.92
|tip Fly over this location.
step
Visit the Northwest of Aldur'thar |q 13351/4 |goto 51.05,34.06
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
collect 5 Demolisher Parts##44529 |q 13304/1 |goto 65.82,53.08
step
talk Wrecked Demolisher##31868
turnin Field Repairs##13304 |goto 68.01,51.88
step
talk Matthias Lehner##32408
accept Do Your Worst##13305 |goto 68.02,51.59
step
click Refurbished Demolisher##32370
Control the Refurbished Demolisher |invehicle |goto 68.0,51.8 |q 13305
stickystart "Kill_Frostskull_Maguses"
stickystart "Kill_Decomposed_Ghouls"
step
kill 2 Bone Giant##31815 |q 13305/3 |goto 64.22,45.77
|tip They look like huge skeletons that walk around.
|tip You can find them all around the northern part of the Valley of Lost Hope area.
|tip Use the abilities on your action bar.
step
label "Kill_Frostskull_Maguses"
kill 20 Frostskull Magus##31813 |q 13305/2 |goto 64.22,45.77
|tip They look like smaller skeletons wearing capes.
|tip You can find them all around the northern part of the Valley of Lost Hope area. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
step
label "Kill_Decomposed_Ghouls"
kill 150 Decomposed Ghoul##31812 |q 13305/1 |goto 64.22,45.77
|tip They look like zombies.
|tip You can find them all around the northern part of the Valley of Lost Hope area. |notinsticky
|tip Use the abilities on your action bar. |notinsticky
step
Leave the Refurbished Demolisher |outvehicle |q 13305
|tip Click the yellow arrow on your action bar.
|tip Kill any nearby enemies first, so you will be safe.
step
talk Matthias Lehner##32404
turnin Do Your Worst##13305 |goto 64.52,44.00
accept Army of the Damned##13236 |goto 64.52,44.00
step
kill Lordaeron Footsoldier##31254+
|tip Use the abilities on your action bar.
|tip Use the "Gift of the Lich King" ability near their corpses.
Raise #100# Ghoulish Minions |q 13236/1 |goto 65.44,43.97
step
Dispel the Vision |outvehicle |goto 64.52,44.00 |q 13236
|tip Click the red arrow on your action bar.
|tip Go to this location first.
step
talk Matthias Lehner##32404
turnin Army of the Damned##13236 |goto 64.52,44.00
accept Futility##13348 |goto 64.52,44.00
step
_NOTE:_
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13348
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Futility##13348
accept Cradle of the Frostbrood##13349
turnin Sneak Preview##13351
accept Cannot Reproduce##13355
accept Chain of Command##13354
accept Drag and Drop##13352
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Volatility##13261 |only if haveq(13261) or completedq(13261)
accept Green Technology##13379
stickystart "Collect_Orbs_Of_Illusion"
step
kill Overseer Faedris##32250 |q 13354/1 |goto 53.89,46.84
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
Drag and Drop #3# Dark Subjugators |q 13352/1 |goto 53.96,45.71
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the purple smoke rising out of it.
Collect the Dark Sample |q 13355/3 |goto 49.71,34.34
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the green smoke rising out of it.
Collect the Green Sample |q 13355/2 |goto 49.11,34.21
step
use the Partitioned Flask##44251
|tip Next to the cauldron with the grey smoke rising out of it.
Collect the Blue Sample |q 13355/1 |goto 48.98,33.26
step
kill Overseer Savryn##32291 |q 13354/4 |goto 49.40,31.20
|tip Under the canopy.
step
kill Overseer Jhaeqon##32285 |q 13354/2 |goto 54.72,32.62
|tip Inside the tent.
step
kill Overseer Veraj##32263 |q 13354/3 |goto 53.68,29.20
|tip Under the canopy.
step
talk Fringe Engineer Tezzla##32430
|tip On the platform above the bridge.
|tip It may take a few seconds for her to appear.
turnin Green Technology##13379 |goto 54.04,36.74
accept Fringe Science Benefits##13373 |goto 54.04,36.74
step
talk Rizzy Ratchwiggle##31839
|tip On the platform above the bridge.
Tell her _"Give me a bomber!"_
Borrow a Bomber |invehicle |goto 54.00,36.92 |q 13373
step
_As You Fly:_
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip Bomb the enemies on the ground.
|tip Shoot rockets at the flying gargoyle enemies.
Slay #40# Bombardment Infantry |q 13373/1 |goto 58.95,41.21
Slay #8# Bombardment Captains |q 13373/2 |goto 58.95,41.21
Slay #15# Gargoyle Ambushers |q 13373/3 |goto 58.95,41.21
step
Return to Fringe Engineer Tezzla |outvehicle |goto 54.11,36.89 |q 13373 |notravel
step
talk Fringe Engineer Tezzla##32430
|tip On the platform above the bridge.
|tip It may take a few seconds for her to appear.
turnin Fringe Science Benefits##13373 |goto 54.04,36.74
step
_NOTE:_
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13352
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Drag and Drop##13352
turnin Chain of Command##13354
accept Drag and Drop##13353
accept Not a Bug##13358
accept Need More Info##13366
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Cannot Reproduce##13355
accept Retest Now##13356
step
kill Bitter Initiate##32238+
|tip They look like humans wearing robes.
collect Orb of Illusion##44246+ |n
use the Orb of Illusion##44246+
|tip Use them on Dark Subjugators.
|tip They look like humans wearing robes and carrying staves.
|tip A gargoyle will fly down and kill them.
Drag and Drop #3# Dark Subjugators |q 13353/1 |goto 53.96,45.71
|only if haveq(13353) or completedq(13353)
stickystart "Collect_Writhing_Mass"
step
kill Enslaved Minion##32260+
|tip They look like blue voidwalkers.
use the Rod of Siphening##44433
|tip Use it near their corpses.
collect 5 Dark Matter##44434 |goto 55.26,29.28 |q 13358
step
click Summoning Stone
|tip It looks like a large floating purple crystal.
Summon the Dark Messenger |q 13358/1 |goto 53.79,33.55
step
Enter the building |goto 51.90,32.81 < 30 |walk |only if not (subzone("Aldur'thar: The Desolation Gate") and _G.IsIndoors())
kill Cult Researcher##32297+
|tip They look like humans wearing black wearings and carrying daggers.
|tip Be careful, if you use mana, they have an ability that drains your mana and damages you for the same amount.
|tip Inside the building.
|tip If you have trouble, try to get someone to help you.
|tip It's important to get this quest done, since it unlocks more quests.
collect Cult of the Damned Research - Page 1##44459 |goto 52.35,30.14 |q 13366
collect Cult of the Damned Research - Page 2##44460 |goto 51.92,30.80 |q 13366
collect Cult of the Damned Research - Page 3##44461 |goto 51.92,30.80 |q 13366
step
use the Cult of the Damned Research - Page 1##44459
collect Cult of the Damned Thesis##44462 |q 13366/1
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
collect Writhing Mass##44304 |goto 51.90,32.81 |q 13356
step
Leave the building |goto 51.90,32.81 < 30 |walk |only if subzone("Aldur'thar: The Desolation Gate") and _G.IsIndoors()
use the Writhing Mass##44304
|tip Use it next to one 1 of the 3 cauldrons around this area.
|tip Each of the cauldrons will give you a different stat buff for 2 hours, depending on the smoke color.
|tip Purple = Spell Power.
|tip Green = Stamina.
|tip Grey = Attack Power.
Banish the Writhing Mass |q 13356/1 |goto 49.32,33.88
step
use the Hearthstone##6948
Hearth to Sunreaver Pavilion |complete subzone("Sunreaver Pavilion") |q 13356
|only if subzone("Aldur'thar: The Desolation Gate")
step
talk Vasarin Redmorn##34772
|tip Inside the building.
|tip Sell any items you don't need, to clear some bag space.
Visit the Vendor |vendor Vasarin Redmorn##34772 |goto 76.16,23.91 |q 13356
stickystart "Kill_Cultist_Corrupters"
stickystart "Kill_Vrykul_Necrolords"
step
talk Matthias Lehner##32423
|tip He may sometimes disappear for some reason.
|tip If he's not here, wait for him to reappear.
accept Where Dragons Fell##13359 |goto 71.55,37.62
stickystart "Collect_Whelp_Bone_Dust"
step
kill 5 Wyrm Reanimator##31731 |q 13349/1 |goto 72.31,36.66
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
collect 6 Whelp Bone Dust##44631 |q 13359/1 |goto 69.30,38.74
You can find more around [73.54,43.15]
step
label "Kill_Cultist_Corrupters"
kill 8 Cultist Corrupter##31738 |q 13349/2 |goto 69.30,38.74
|tip They look like humans wearing robes and carrying staves.
|tip You can find them all around the Sindragos's Fall area. |notinsticky
You can find more around [73.54,43.15]
step
label "Kill_Vrykul_Necrolords"
kill 3 Vrykul Necrolord##31783 |q 13349/3 |goto 69.30,38.74
|tip They look like large zombies carrying staves.
|tip You can find them all around the Sindragos's Fall area. |notinsticky
You can find more around [73.54,43.15]
step
talk Matthias Lehner##32423
|tip He may sometimes disappear for some reason.
|tip If he's not here, wait for him to reappear.
turnin Where Dragons Fell##13359 |goto 71.55,37.62
accept Time for Answers##13360 |goto 71.55,37.62
step
_NOTE:_
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13358
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Drag and Drop##13353 |only if haveq(13353) or completedq(13353)
turnin Not a Bug##13358
turnin Cradle of the Frostbrood##13349
turnin Need More Info##13366
accept Raise the Barricades##13306
accept Not a Bug##13365 |only if zone("Icecrown")
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Retest Now##13356
accept Retest Now##13357 |only if zone("Icecrown")
step
use the Barricade Construction Kit##44127
|tip Use it near the bursts of purple light and smoke that appear hovering over the ground.
|tip You can find them all around the Valley of Fallen Heroes area.
Construct #8# Barricades |q 13306/1 |goto 49.89,40.47
stickystart "Collect_Writhing_Mass_DAILY"
step
kill Enslaved Minion##32260+
|tip They look like blue voidwalkers.
use the Rod of Siphening##44433
|tip Use it near their corpses.
collect 5 Dark Matter##44434 |goto 55.26,29.28 |q 13365
|only if haveq(13365) or completedq(13365)
step
click Summoning Stone
|tip It looks like a large floating purple crystal.
Summon the Dark Messenger |q 13365/1 |goto 53.79,33.55
|only if haveq(13365) or completedq(13365)
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
collect Writhing Mass##44304 |goto 52.32,34.80 |q 13357
|only if haveq(13357) or completedq(13357)
step
use the Writhing Mass##44304
|tip Use it next to one 1 of the 3 cauldrons around this area.
|tip Each of the cauldrons will give you a different stat buff for 2 hours, depending on the smoke color.
|tip Purple = Spell Power.
|tip Green = Stamina.
|tip Grey = Attack Power.
Banish the Writhing Mass |q 13357/1 |goto 49.32,33.88
|only if haveq(13357) or completedq(13357)
step
talk Matthias Lehner##32497
turnin Time for Answers##13360 |goto 49.16,73.12
accept The Hunter and the Prince##13361 |goto 49.16,73.12
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
Find Out the Prince's Destiny |q 13361/1 |goto 49.17,73.91
step
talk Matthias Lehner##32497
turnin The Hunter and the Prince##13361 |goto 49.16,73.12
accept Knowledge is a Terrible Burden##13362 |goto 49.16,73.12
step
_NOTE:_
Locate the Orgrim's Hammer Airship
|tip During the next few steps, you will need to talk to NPCs on the airship.
|tip It looks like a huge flying boat.
|tip You can see its location on your world map.
|tip It looks like a grey/red airship icon that moves around slowly.
|tip It flies in a large path near the center of the map, east of Ymirheim.
|tip Once you locate it, fly to it.
Click Here to Continue |confirm |q 13306
step
_On the Orgrim's Hammer Airship:_
talk Koltira Deathweaver##29795
|tip Inside the airship, in the large room on the rear of the main deck.
turnin Raise the Barricades##13306
turnin Knowledge is a Terrible Burden##13362
turnin Not a Bug##13365 |only if haveq(13365) or completedq(13365)
accept Argent Aid##13363
step
_On the Orgrim's Hammer Airship:_
talk Chief Engineer Copperclaw##30825
|tip Downstairs inside the airship, near the rear of the airship.
|tip To get downstairs, run down the ramps on either side of the main deck.
turnin Retest Now##13357
|only if haveq(13357) or completedq(13357)
step
talk Highlord Tirion Fordring##31044
turnin Light Within the Darkness##13083 |goto 79.79,71.76
turnin Argent Aid##13363 |goto 79.79,71.76
accept Tirion's Gambit##13364 |goto 79.79,71.76
step
kill Cultist Acolyte##32507+
|tip They look like humans wearing robes.
collect Cultist Acolyte's Hood##44784 |goto 45.40,78.23 |q 13364
step
use the Cultist Acolyte's Hood##44784
Wear the Cultist Disguise |havebuff spell:61131 |q 13364
step
Locate Highlord Tirion Fordring |goto 44.41,76.21 < 15 |c |q 13364
|tip Outside the building, next to a blue bonfire.
step
talk Highlord Tirion Fordring##32239
|tip Outside the building, next to a blue bonfire.
Tell him _"I'm ready, Highlord."_
Begin Following Highlord Tirion Fordring |goto 44.41,76.21 > 15 |c |q 13364
step
Watch the dialogue
|tip Follow Highlord Tirion Fordring as he walks.
|tip He eventually walks to this location inside the building.
Witness Tirion's Gambit |q 13364/1 |goto 42.83,78.81
step
click Escape Portal
|tip Inside the building.
Escape to Crusaders' Pinnacle |complete not subzone("Cathedral of Darkness") |goto 42.83,78.76 |q 13364
step
talk Highlord Tirion Fordring##31044
turnin Tirion's Gambit##13364 |goto 79.79,71.76
]])
