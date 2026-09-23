local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12492) end,
description="\nThis guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Tapper Swindlekeg##24711
accept Welcome to Brewfest!##11447 |goto Durotar/0 45.59,17.22
step
talk Ram Master Ray##24497
accept Now This is Ram Racing... Almost.##11409 |goto Durotar/0 46.31,15.00
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11409/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11409/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11409/3
step
Stop Riding the Ram |nobuff spell:43883 |q 11409
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin Now This is Ram Racing... Almost.##11409 |goto 46.31,15.00
accept There and Back Again##11412 |goto 46.31,15.00
step
map Durotar/0
path follow strict; loop on; ants curved; dist 30
path	46.58,20.18	47.57,22.80	48.96,28.09
path	47.57,22.80	46.58,20.18	46.32,15.27
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver #3# Kegs in Under 4 Minutes |q 11412/1 |n |until q(11412/1)
|tip If you lose your ram, return to Ram Master Ray to acquire another.
step
Stop Riding the Ram |nobuff spell:43880 |q 11412
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Ram Master Ray##24497
turnin There and Back Again##11412 |goto 46.31,15.00
step
talk Driz Tumblequick##24510
accept Another Year, Another Souvenir.##13931 |goto 46.29,14.84 |or
accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto 46.29,14.84 |or
|tip This quest is not always available.
Click Here if this Quest Is Not Offered |confirm |or
step
talk Blix Fixwidget##24495
turnin Another Year, Another Souvenir.##13931 |goto 44.07,17.98 |or
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12194 |goto 44.07,17.98 |or
|only if haveq(13931) or completedq(13931) or haveq(12194) or completedq(12194)
step
talk Bizzle Quicklift##27216
accept Chug and Chuck!##12191 |goto 45.25,17.33
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They looks like mugs of beer on the small tables on either side of you.
collect Alcohol-Free Brewfest Sampler##33096 |n
clicknpc Self-Turning and Oscillating Utility Target##24108
|tip Use the target button, then face the S.T.O.U.T. before throwing each sampler.
use the Alcohol-Free Brewfest Sampler##33096
Hit the S.T.O.U.T. #5# Times |q 12191/1 |goto 45.22,17.49
step
talk Bizzle Quicklift##27216
turnin Chug and Chuck!##12191 |goto 45.25,17.33
step
talk Glodrak Huntsniper##24657
accept Catch the Wild Wolpertinger!##11431 |goto 45.01,17.40
step
talk Glodrak Huntsniper##24657
Ask him _"What if I don't like drinking... is there another way I can help out?"_
Tell him _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto 45.01,17.40 |q 11431
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11431
step
clicknpc Wild Wolpertinger##23487
use the Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11431/1 |goto 44.22,17.33
You can find more around here [goto 45.30,18.58]
step
Remove the Synthebrew Goggles and Re-Equip your Helm |confirm |q 11431
step
talk Glodrak Huntsniper##24657
turnin Catch the Wild Wolpertinger!##11431 |goto 45.01,17.40
accept Pink Elekks On Parade##11120 |goto 45.01,17.40
step
Arrive outside Undercity |goto Tirisfal Glades/0 61.87,64.99 < 100 |c |q 11120
step
Go to the Tirisfal Glades Brewfest Camp |goto Tirisfal Glades/0 66.12,13.46 < 50 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
use the Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
|tip They are found above Undercity, in Tirisfal Glades.
kill 3 Tirisfal Pink Elekk##23530 |q 11120/3 |goto Tirisfal Glades/0 66.12,13.46
step
Remove the Synthebrew Goggles and Re-Equip your Helm |confirm |q 11120
step
Enter Undercity |goto Undercity/0 |noway |c |q 11120
step
click Orb of Translocation |goto Undercity/0 54.90,11.30
|tip It looks like a red glowing orb in a gold spinning stand.
Teleport to Silvermoon City |goto Silvermoon City/0 |noway |c |q 11120
step
Leave Silvermoon City |goto Eversong Woods/0 |noway |c |q 11120
step
Go to the Eversong Woods Brewfest Camp |goto Eversong Woods/0 56.97,53.14 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Eversong Pink Elekk##23531 |q 11120/1 |goto Eversong Woods/0 56.97,53.14
step
Remove the Synthebrew Goggles and Re-Equip your Helm |confirm |q 11120
step
Go to the Thunder Bluff Portal |goto Dalaran/1 57.25,22.37 < 10 |c |q 11120
Take the Portal to Thunder Bluff |complete not zone("Dalaran") |next "Mulgore_Brewfest_Camp" |q 11120
|only if zone("Dalaran")
step
Enter Silvermoon City |goto Silvermoon City/0 |noway |c |q 11120
step
click Orb of Translocation |goto Silvermoon City/0 49.50,14.80
|tip It looks like a red glowing orb in a gold spinning stand.
Teleport to Undercity |goto Undercity/0 |noway |c |q 11120
step
Leave Undercity |goto Tirisfal Glades/0 |noway |c |q 11120
step
Go to the Zeppelin Tower |goto Tirisfal Glades/0 60.70,58.70 < 20 |c |q 11120
Ride the Zeppelin to Durotar |goto Durotar/0 |noway |c |q 11120
step
Enter Orgrimmar |goto Orgrimmar/0 |noway |c |q 11120
step
talk Doras##3310 |goto Orgrimmar/0 45.10,63.90
Fly to Thunder Bluff |goto Thunder Bluff/0 46.60,49.90 < 10 |c |q 11120
step
label "Mulgore_Brewfest_Camp"
Go to the Mulgore Brewfest Camp |goto Thunder Bluff/0 32.33,70.85 < 100 |c |q 11120
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11120
step
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Mulgore Pink Elekk##23529 |q 11120/2 |goto Thunder Bluff/0 32.33,70.85
step
Remove the Synthebrew Goggles and Re-Equip your Helm |confirm |q 11120
step
Go to the Orgrimmar Portal |goto Dalaran/1 55.55,25.66 < 10 |c |q 11120
Take the Portal to Orgrimmar |complete not zone("Dalaran") |next "Return_To_Durotar" |q 11120
|only if zone("Dalaran")
step
talk Tal##2995 |goto Thunder Bluff/0 46.78,50.02
Fly to Orgrimmar |goto Orgrimmar/0 45.30,63.80 < 10 |c |q 11120
step
label "Return_To_Durotar"
Leave Orgrimmar |goto Durotar/0 |noway |c |q 11120
step
talk Glodrak Huntsniper##24657
turnin Pink Elekks On Parade##11120 |goto Durotar/0 45.01,17.40
step
Reach Level 65 |ding 65
|tip Coren Direbrew is level 72 elite.
step
talk Slurpo Fizzykeg##28329
accept Save Brewfest!##12318 |goto Durotar/0 48.27,27.65
|tip This quest is elite and will require a group.
step
Enter the Blackrock Depths Dungeon with your Group |complete zone("Blackrock Depths") |q 12062 |future
step
talk Brewfest Spy##26719
|tip After defeating the Dark Iron ambush, interact with the Mole Machine Consoles at the beginning of the dungeon.
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Save Brewfest!##12318
accept Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
description="\nThis guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(12191)
step
label "Begin_Dailies"
talk Ram Master Ray##24497
Ask him _"Do you still need some help moving kegs from the crash site near Razor Hill?"_
Begin the Keg Run |havebuff spell:43880 |goto Durotar/0 46.31,15.00
step
map Durotar/0
path follow strictbounce; loop off; ants curved; dist 30
path	46.27,14.85	46.37,17.99	46.64,20.20	46.88,22.05	47.63,22.79
path	48.21,25.77	48.32,27.47	48.96,28.09
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Bok Dropcertain will throw you a keg when you get close
Once you have a keg, run back and turn it in to Driz Tumblequick
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff spell:43880
step
talk Cort Gorestein##24498
accept Bark for Drohn's Distillery!##11407 |goto 44.38,17.91 |or
talk Ja'ron##24499
accept Bark for T'chali's Voodoo Brewery!##11408 |goto 43.60,17.57 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/0 49.10,94.90 |noway |c |q 11407
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Ride your ram into Orgrimmar |goto Orgrimmar/0 49.10,94.90 |noway |c |q 11408
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11407/1 |goto Orgrimmar/0 52.76,65.39
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11407/2 |goto 70.55,35.91
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11407/3 |goto 43.10,36.93
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11407/4 |goto 36.51,77.81
|only if haveq(11407)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark Outside the Auction House |q 11408/1 |goto 52.76,65.39
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Honor |q 11408/2 |goto 70.55,35.91
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Wisdom |q 11408/3 |goto 43.10,36.93
|only if haveq(11408)
step
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100.
Bark in the Valley of Spirits |q 11408/4 |goto 36.51,77.81
|only if haveq(11408)
step
talk Cort Gorestein##24498
turnin Bark for Drohn's Distillery!##11407 |goto Durotar/0 44.38,17.91
|only if haveq(11407)
step
talk Ja'ron##24499
turnin Bark for T'chali's Voodoo Brewery!##11408 |goto 43.60,17.57
|only if haveq(11408)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto 44.11,17.25 |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12020 |goto 45.25,17.33
step
Reach Level 65 |ding 65 |or
|tip Coren Direbrew is level 73 elite.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Slurpo Fizzykeg##28329
accept Save Brewfest!##12318 |goto Durotar/0 48.27,27.65 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
Enter the Blackrock Depths Dungeon with your Group |complete zone("Blackrock Depths") |q 12062 |future |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip After defeating the Dark Iron ambush, interact with the Mole Machine Consoles at the beginning of the dungeon.
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Save Brewfest!##12318 |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies" |or
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11408,11407,12020) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Month",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(2796) end,
description="\nJoin the Brew of the Month club.",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|achieve 2796 |or
step
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|achieve 2796 |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.49
step
Earn the "Brew of the Month" Achievement |achieve 2796
step
_Congratulations!_
You Earned the "Brew of the Month" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Year",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1183) end,
description="\nSample the following beers featured in the Brew of the Month club:\n\nBinary Brew\nAutumnal Acorn Ale\n"..
"Bartlett's Bitter Brew\nLord of Frost's Private Label\nWild Winter Pilsner\nIzzard's Ever Flavor\nAromatic Honey Brew\n"..
"Metok's Bubble Bock\nSpringtime Stout\nBlackrock Lager\nStranglethorn Brew\nDraenic Pale Ale",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|achieve 2796 |or
step
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37737 |goto Durotar/0 44.07,17.98 |or
'|achieve 2796 |or
step
use the "Brew of the Month" Club Membership Form##37737
accept Brew of the Month Club##12306
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.49
step
use the Binary Brew##37496
Drink September's Brew |achieve 1183/5
step
collect Autumnal Acorn Ale##37497 |or
|tip This brew will be in your mailbox for the month of October.
'|complete achieved(1183,4) |or
step
use the Autumnal Acorn Ale##37497
Drink October's Brew |achieve 1183/4
step
collect Bartlett's Bitter Brew##37498 |or
|tip This brew will be in your mailbox for the month of November.
'|complete achieved(1183,3) |or
step
use Bartlett's Bitter Brew##37498
Drink November's Brew |achieve 1183/3
step
collect Lord of Frost's Private Label##37499 |or
|tip This brew will be in your mailbox for the month of December.
'|complete achieved(1183,2) |or
step
use Lord of Frost's Private Label##37499
Drink December's Brew |achieve 1183/2
step
collect Wild Winter Pilsner##37488 |or
|tip This brew will be in your mailbox for the month of January.
'|complete achieved(1183,1) |or
step
use the Wild Winter Pilsner##37488
Drink January's Brew |achieve 1183/1
step
collect Izzard's Ever Flavor##37489 |or
|tip This brew will be in your mailbox for the month of February.
'|complete achieved(1183,8) |or
step
use the Izzard's Ever Flavor##37489
Drink February's Brew |achieve 1183/8
step
collect Aromatic Honey Brew##37490 |or
|tip This brew will be in your mailbox for the month of March.
'|complete achieved(1183,11) |or
step
use the Aromatic Honey Brew##37490
Drink March's Brew |achieve 1183/11
step
collect Metok's Bubble Bock##37491 |or
|tip This brew will be in your mailbox for the month of April.
'|complete achieved(1183,12) |or
step
use Metok's Bubble Bock##37491
Drink April's Brew |achieve 1183/12
step
collect Springtime Stout##37492 |or
|tip This brew will be in your mailbox for the month of May.
'|complete achieved(1183,9) |or
step
use the Springtime Stout##37492
Drink May's Brew |achieve 1183/9
step
collect Blackrock Lager##37493 |or
|tip This brew will be in your mailbox for the month of June.
'|complete achieved(1183,6) |or
step
use the Blackrock Lager##37493
Drink June's Brew |achieve 1183/6
step
collect Stranglethorn Brew##37494 |or
|tip This brew will be in your mailbox for the month of July.
'|complete achieved(1183,10) |or
step
use the Stranglethorn Brew##37494
Drink July's Brew |achieve 1183/10
step
collect Draenic Pale Ale##37495 |or
|tip This brew will be in your mailbox for the month of August.
'|complete achieved(1183,7) |or
step
use the Draenic Pale Ale##37495
Drink August's Brew |achieve 1183/7
step
Earn the "Brew of the Year" Achievement |achieve 1183
|tip This achievment requires you to drink a new brew every month for a year.
step
_Congratulations!_
You Earned the "Brew of the Year" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Direbrewfest",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(295) end,
description="\nKill Coren Direbrew.",
},[[
step
talk Brewfest Spy##26719
|tip Inside the dungeon to the right of the entrance, a Mole Machine console will take you to the bar.
|tip The Brewfewst Spy is located in the bar.
accept Insult Coren Direbrew##12062 |goto Blackrock Depths/0 0.00,0.00 |or
'|achieve 295 |or
step
talk Coren Direbrew##23872
|tip Coren Direbrew is located in the bar.
|tip He will attack you after turnin this quest in.
turnin Insult Coren Direbrew##12062 |or
'|achieve 295 |or
step
kill Coren Direbrew##23872
Earn the "Direbrewfest" Achievement |achieve 295
step
_Congratulations!_
You Earned the "Direbrewfest" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(293) end,
description="\nWhile wearing 3 pieces of Brewfest clothing, get completely smashed and dance in Dalaran.",
},[[
step
collect 350 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|achieve 293 |or
step
talk Blix Fixwidget##24495
collect Blue Brewfest Hat##33968 |goto Durotar/0 44.07,17.98 |or
collect Purple Brewfest Hat##33969 |goto 44.07,17.98 |or
collect Green Brewfest Hat##33967 |goto 44.07,17.98 |or
collect Brown Brewfest Hat##33864 |goto 44.07,17.98 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|achieve 293 |or
step
talk Blix Fixwidget##24495
collect Brewfest Dress##33863 |goto 44.07,17.98 |or
collect Brewfest Regalia##33862 |goto 44.07,17.98 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|achieve 293 |or
step
talk Blix Fixwidget##24495
collect Brewfest Boots##33868 |goto 44.07,17.98 |or
collect Brewfest Slippers##33966 |goto 44.07,17.98 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|achieve 293 |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto 48.54,37.44 |or
'|achieve 293 |or
step
Equip the Blue Brewfest Hat |equipped Blue Brewfest Hat##33968 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Purple Brewfest Hat |equipped Purple Brewfest Hat##33969 |goto 50.58,48.36 |only if itemcount(33969) >= 1 |or
Equip the Green Brewfest Hat |equipped Green Brewfest Hat##33967 |goto 50.58,48.36 |only if itemcount(33967) >= 1 |or
Equip the Brown Brewfest Hat |equipped Brown Brewfest Hat##33864 |goto 50.58,48.36 |only if itemcount(33864) >= 1 |or
'|achieve 293 |or
step
Equip the Brewfest Dress |equipped Brewfest Dress##33863 |goto 50.58,48.36 |only if default |or
Equip the Brewfest Regalia |equipped Brewfest Regalia##33862 |goto 50.58,48.36 |only if itemcount(33862) >= 1 |or
'|achieve 293 |or
step
Equip the Brewfest Boots |equipped Brewfest Boots##33868 |goto 50.58,48.36 |only if default |or
Equip the Brewfest Slippers |equipped Brewfest Slippers##33966 |goto 50.58,48.36 |only if itemcount(33966) >= 1 |or
'|achieve 293 |or
step
use the Caraway Burnwine##40042
|tip Use them all until you are "Completely Smashed."
Dance in Dalaran |script DoEmote("Dance")
Earn the "Disturbing the Peace" Achievement |achieve 293 |goto 50.58,48.36
step
_Congratulations!_
You Earned the "Disturbing the Peace" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1936) end,
description="\nObtain a Wolpertinger pet.",
},[[
step
talk Blix Fixwidget##24495
buy Wolpertinger's Tankard##32233 |goto Durotar/0 44.07,17.98 |or
'|achieve 1936 |or
step
use the Wolpertinger's Tankard##32233
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936
step
_Congratulations!_
You Earned the "Does Your Wolpertinger Linger?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1186) end,
description="\nDefend the Brewfest camp from the Dark Iron attack and complete the quest, \"This One Time, When I Was Drunk...\"",
},[[
step
Wait for the Dark Iron Defense event to start
|tip You have to defend the three kegs at these locations in order to complete it.
Click the Complimentary Brewfest Sampler
use the Complimentary Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12192 |goto Durotar/0 44.11,17.25 |or
'|achieve 1186 |or
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12192 |goto 45.25,17.33 |or
'|achieve 1186 |or
step
Earn the "Down With The Dark Iron" Achievement |achieve 1186
step
_Congratulations!_
You Earned the "Down With The Dark Iron" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Drunken Stupor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1260) end,
description="\nFall 65 yards without dying while completely smashed during the Brewfest Holiday.",
},[[
step
talk Kylene##19186
buy 5 Flagon of Dwarven Honeymead##2594 |goto Shattrath City/0 75.11,32.27 |or
'|achieve 1260 |or
step
use Flagon of Dwarven Honeymead##2594
|tip Use them until you are "Completely Smashed" before jumping.
Earn the "Drunken Stupor" Achievement |achieve 1260 |goto Shattrath City/0 50.22,62.42
|tip You must fall at least 65 yards and not die to receive this achievement.
|tip From this point, run off the edge and miss the platform below, landing on the ground.
|tip You must do this while "Completely Smashed" drunk.
|tip Paladin "Divine Shield" and Mage "Ice Block" allow you to earn this without risk of fall damage.
step
_Congratulations!_
You Earned the "Drunken Stupor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(303) end,
description="\nObtain a Brewfest mount, or transform yours into one using Brewfest Hops.",
},[[
step
collect 2 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|achieve 303 |or
step
Reach Level 20 |ding 20
|tip You must be level 20 to complete this achievement.
|tip Use the leveling guides to accomplish this.
step
talk Blix Fixwidget##24495
buy Fresh Brewfest Hops##37750 |goto Durotar/0 44.07,17.98 |or
'|achieve 303 |or
step
use the Fresh Brewfest Hops##37750
|tip Mount up and use the hops to make your mount festive.
Earn the "Have Keg, Will Travel" Achievement |achieve 303
step
_Congratulations!_
You Earned the "Have Keg, Will Travel" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Strange Brew",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1203) end,
description="\nDrink the following Brewfest beers:\n\nStout Shrunken Head\nBrewdoo Magic\nJungle River Water\n"..
"Path of Brew\nLong Stride Brew\nSmall Step Brew\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk T'chali's Voodoo Brewery Apprentice##23533
buy Stout Shrunken Head##34022 |goto Durotar/0 43.59,17.45 |achieve 1203
buy Brewdoo Magic##34021 |goto 43.59,17.45 |achieve 1203
buy Jungle River Water##34020 |goto 43.59,17.45 |achieve 1203
step
talk Drohn's Distillery Apprentice##24501
buy Path of Brew##34019 |goto 44.31,17.97 |achieve 1203
buy Long Stride Brew##34018 |goto 44.31,17.97 |achieve 1203
buy Small Step Brew##34017 |goto 44.31,17.97 |achieve 1203
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto 43.99,16.63 |achieve 1203
buy Mudder's Milk##33036 |goto 43.99,16.63 |achieve 1203
buy Gordok Grog##33034 |goto 43.99,16.63 |achieve 1203
step
use the Stout Shrunken Head##34022
Drink Some Stout Shrunken Head |achieve 1203/4
step
use the Brewdoo Magic##34021
Drink Some Brewdoo Magic |achieve 1203/3
step
use the Jungle River Water##34020
Drink Some Jungle River Water |achieve 1203/9
step
use the Path of Brew##34019
Drink Some Path of Brew |achieve 1203/6
step
use the Long Stride Brew##34018
Drink Some Long Stride Brew |achieve 1203/8
step
use the Small Step Brew##34017
Drink Some Small Step Brew |achieve 1203/5
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1203/7
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1203/1
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1203/2
step
Earn the "Strange Brew" Achievement |achieve 1203
step
_Congratulations!_
You Earned the "Strange Brew" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1185) end,
description="\nEat all 8 of the following Brewfest foods:\n\nSucculent Sausage\nDried Sausage\nPickled Sausage\n"..
"Savory Sausage\nSpiced Onion Cheese\nSpicy Smoked Sausage\nThe Essential Brewfest Pretzel\nThe Golden Link",
},[[
step
Reach Level 65 |ding 65
|tip You must be level 65.
step
talk Bron##23605
buy Succulent Sausage##34064 |goto Durotar/0 44.42,16.57 |achieve 1185
buy Dried Sausage##34063 |goto 44.42,16.57 |achieve 1185
buy Pickled Sausage##33024 |goto 44.42,16.57 |achieve 1185
buy Savory Sausage##33023 |goto 44.42,16.57 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto 44.42,16.57 |achieve 1185
buy The Golden Link##33026 |goto 44.42,16.57 |achieve 1185
step
talk Uta Roughdough##23603
buy The Essential Brewfest Pretzel##33043 |goto 44.79,17.48 |achieve 1185
step
talk Agnes Farwithers##23604
buy Spiced Onion Cheese##34065 |goto 43.90,17.92 |achieve 1185
step
use The Essential Brewfest Pretzel##33043
Eat The Essential Brewfest Pretzel |achieve 1185/2
step
use the Spiced Onion Cheese##34065
Eat Some Spiced Onion Cheese |achieve 1185/4
step
use the Dried Sausage##34063
Eat Some Dried Sausage |achieve 1185/7
step
use the Succulent Sausage##34064
Eat Some Succulent Sausage |achieve 1185/8
step
use the Savory Sausage##33023
Eat Some Savory Sausage |achieve 1185/5
step
use the Pickled Sausage##33024
Eat Some Pickled Sausage |achieve 1185/6
step
use the Spicy Smoked Sausage##33025
Eat Some Spicy Smoked Sausage |achieve 1185/3
step
use the The Golden Link##33026
Eat The Golden Link |achieve 1185/1
step
Earn "The Brewfest Diet" Achievement |achieve 1185
step
_Congratulations!_
You Earned "The Brewfest Diet" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Main Questline",{
author="support@zygorguides.com",
description="This guide will walk you through the quests for the \"Children's Week\" event.",
condition_end=function() return completedq(5502) end,
},[[
step
talk Orphan Matron Battlewail##14451
Tell her _"Well what do you know, this is Children's Week! What can I do to help?"_
accept Children's Week##172 |goto Orgrimmar/0 70.72,25.20
step
use the Orcish Orphan Whistle##18597
_Next to you:_
talk Orcish Orphan##14444
turnin Children's Week##172 |goto 70.72,25.20
accept Lordaeron Throne Room##1800 |goto 70.72,25.20
accept Down at the Docks##910 |goto 70.72,25.20
accept Gateway to the Frontier##911 |goto 70.72,25.20
step
use the Orcish Orphan Whistle##18597
Go to the Docks of Ratchet in The Barrens |q 910/1 |goto The Barrens/0 62.99,38.08
step
use the Orcish Orphan Whistle##18597
Go to the Mor'shan Rampart in The Barrens |q 911/1 |goto 47.84,5.25
step
use the Orcish Orphan Whistle##18597
|tip Before riding the elevator into Undercity.
Go to the Old Lordaeron Throne Room |q 1800/1 |goto Undercity/0 66.02,36.82
step
use the Orcish Orphan Whistle##18597
_Next to you:_
talk Orcish Orphan##14444
turnin Lordaeron Throne Room##1800 |goto 66.02,36.82
turnin Down at the Docks##910 |goto 66.02,36.82
turnin Gateway to the Frontier##911 |goto 66.02,36.82
accept You Scream, I Scream...##915 |goto 66.02,36.82
accept Cairne's Hoofprint##925 |goto 66.02,36.82
step
talk Alowicious Czervik##14480
buy 1 Tigule and Foror's Strawberry Ice Cream##7228 |goto Orgrimmar/0 52.23,69.06 |q 915 |future
step
talk Cairne Bloodhoof##3057
Tell him _"Chief Bloodhoof, this may sound like an odd request..."_
collect Cairne's Hoofprint##18643 |goto Thunder Bluff/0 60.26,51.69 |q 925
step
use the Orcish Orphan Whistle##18597
_Next to you:_
talk Orcish Orphan##14444
turnin You Scream, I Scream...##915 |goto 60.26,51.69
turnin Cairne's Hoofprint##925 |goto 60.26,51.69
accept A Warden of the Horde##5502 |goto 60.26,51.69
step
talk Orphan Matron Battlewail##14451
turnin A Warden of the Horde##5502 |goto Orgrimmar/0 70.72,25.20
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Sayge's Fortunes (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nReceive a stat buff and have your fortune told by Sayge at the Darkmoon Faire.",
model={491},
},[[
step
label "Choose_Fortune"
Choose the buff you would like to receive:
|tip The buff lasts for two hours.
|tip You can have your fortune told every four hours.
|tip NOTE: You will not be able to receive the written fortune and potential quest without an open inventory slot.
+10% Agility |confirm |next "Agility_Buff"
+10% Intelligence |confirm |next "Intelligence_Buff"
+10% Spirit |confirm |next "Spirit_Buff"
+10% Stamina |confirm |next "Stamina_Buff"
+10% Strength |confirm |next "Strength_Buff"
+10% Armor |confirm |next "Armor_Buff"
+25 All Resistances |confirm |next "Resistance_Buff"
+10% Damage |confirm |next "Damage_Buff"
step
label "Agility_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would create some surreptitious means to keep my brother out of the order."_
Gain the "Sayge's Dark Fortune of Agility" Buff |havebuff spell:23736 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Intelligence_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I quietly ignore the insult."_
Gain the "Sayge's Dark Fortune of Intelligence" Buff |havebuff spell:23766 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Spirit_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I confront the ruler on his malicious behavior, upholding my liege's honor at the risk of any future diplomacy."_
Gain the "Sayge's Dark Fortune of Spirit" Buff |havebuff spell:23738 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Stamina_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak against my brother joining the order, rushing a permanent breech in our relationship."_
Gain the "Sayge's Dark Fortune of Stamina" Buff |havebuff spell:23737 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Strength_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak for my brother joining the order, potentially risking the safety of the order."_
Gain the "Sayge's Dark Fortune of Strength" Buff |havebuff spell:23735 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Armor_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I risk my own life and free him so that he may prove his innocence."_
Gain the "Sayge's Dark Fortune of Armor" Buff |havebuff spell:23767 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Resistance_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, but doing so in as painless of a way as possible."_
Gain the "Sayge's Dark Fortune of Resistance" Buff |havebuff spell:23769 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Damage_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people."_
Gain the "Sayge's Dark Fortune of Damage" Buff |havebuff spell:23768 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Use_Darkmoon_Faire_Fortune"
talk Sayge##14822
Tell him _"I'd love to get one of those written fortunes you mentioned!"_
collect 1 Darkmoon Faire Fortune##19422 |goto Elwynn Forest 42.12,69.00
step
use the Darkmoon Faire Fortune##19422
Obtain Your Fortune |condition itemcount(19422) == 0
step
label "Fortune_Told"
You have received your fortune
|tip You can have your fortune told every four hours.
Click Here to Choose Another Fortune |confirm |next "Choose_Fortune" |or
'|condition itemcount(19423) == 1 and not completedq(7937) and level >= 10 |next "Fortune_Awaits_Eastvale" |or
'|condition itemcount(19424) == 1 and not completedq(7938) and level >= 10 |next "Fortune_Awaits_Deadmines" |or
'|condition itemcount(19443) == 1 and not completedq(7944) and level >= 10 |next "Fortune_Awaits_Wailing_Caverns" |or
'|condition itemcount(19452) == 1 and not completedq(7945) and level >= 10 |next "Fortune_Awaits_Palemane_Rock" |or
step
label "Fortune_Awaits_Eastvale"
use Sayge's Fortune #23##19423
accept Your Fortune Awaits You...##7937
step
click Mysterious Eastvale Haystack
turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.79,64.37 |next "Fortune_Told"
step
label "Fortune_Awaits_Deadmines"
use Sayge's Fortune #24##19424
accept Your Fortune Awaits You...##7938
step
click Mysterious Deadmines Chest
|tip Just inside The Deadmines instance before you reach the first Miner.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7938 |next "Fortune_Told"
step
label "Fortune_Awaits_Wailing_Caverns"
use Sayge's Fortune #25##19443
accept Your Fortune Awaits You...##7944
step
click Mysterious Wailing Caverns Chest
|tip Just inside the Wailing Caverns instance after the Disciple of Naralex.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7944 |next "Fortune_Told"
step
label "Fortune_Awaits_Palemane_Rock"
use Sayge's Fortune #27##19452
accept Your Fortune Awaits You...##7945
step
click Mysterious Tree Stump
turnin Your Fortune Awaits You...##7945 |goto Mulgore 34.99,61.56 |next "Fortune_Told"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Chronos Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Leatherworking crafted items with Chronos for prize tickets at the Darkmoon Faire.",
model={14875},
},[[
step
collect 3 Embossed Leather Boots##2309 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Boots##7881 |goto Elwynn Forest 43.57,70.86 |or
|tip Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 3 Toughened Leather Armor##2314 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Jerkins##7882 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Barbaric Harness##5739 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept The World's Largest Gnome!##7883 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Turtle Scale Leggings##8185 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Crocolisk Boy and the Bearded Murloc##7884 |goto 43.57,70.86 |or
|tip Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Rugged Armor Kit##15564 |q 7885 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
talk Chronos##14833
accept Armor Kits##7885 |goto 43.57,70.86
step
collect 8 Rugged Armor Kit##15564 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept More Armor Kits##7941 |goto 43.57,70.86 |or
|tip From this point on, you can continue turning in Rugged Armor Kits.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Kerri Hicks Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Blacksmithing crafted items with Kerri Hicks for prize tickets at the Darkmoon Faire.",
model={14876},
},[[
step
collect 10 Coarse Weightstone##3240 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Coarse Weightstone##7889 |goto Elwynn Forest 40.48,69.93 |or
|tip Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Heavy Grinding Stone##3486 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Heavy Grinding Stone##7890 |goto 40.48,69.93 |or
|tip Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Green Iron Bracers##3835 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Green Iron Bracers##7891 |goto 40.48,69.93 |or
|tip Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Big Black Mace##7945 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Big Black Mace##7892 |goto 40.48,69.93 |or
|tip Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Dense Grinding Stone##12644 |q 7893 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Kerri Hicks##14832
accept Rituals of Strength##7893 |goto 40.48,69.93
step
collect 8 Dense Grinding Stone##12644 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept More Dense Grinding Stones##7939 |goto 40.48,69.93 |or
|tip From this point on, you can continue turning in Dense Grinding Stones.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Rinling Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Engineering crafted items with Rinling for prize tickets at the Darkmoon Faire.",
model={14877},
},[[
step
collect 5 Copper Modulator##4363 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They also have a small chance to drop from mobs in the Gnomeregan dungeon.
talk Rinling##14841
accept Copper Modulator##7894 |goto Elwynn Forest 41.71,70.72 |or
|tip Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Whirring Bronze Gizmo##4375 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Whirring Bronze Gizmo##7895 |goto 41.71,70.72 |or
|tip Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 36 Green Firework##9313 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They can also be purchased from any Holiday Fireworks Vendor on July 4th.
talk Rinling##14841
accept Green Fireworks##7896 |goto 41.71,70.72 |or
|tip Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 6 Mechanical Repair Kit##11590 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Mechanical Repair Kits##7897 |goto 41.71,70.72 |or
|tip Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 6 Thorium Widget##15994 |q 7898 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
talk Rinling##14841
accept Thorium Widget##7898 |goto 41.71,70.72
step
collect 6 Thorium Widget##15994 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept More Thorium Widgets##7942 |goto 41.71,70.72 |or
|tip From this point on, you can continue turning in Thorium Widgets.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Yebb Neblegear Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Farmed items with Yebb Neblegear for prize tickets at the Darkmoon Faire.",
model={14856},
},[[
step
Kill Savannah enemies around this area
|tip You can find them all over around Crossroads and to its northern area.
collect 5 Small Furry Paw##5134 |goto The Barrens 50.21,21.82 |n
talk Yebb Neblegear##14829
accept Small Furry Paws##7899 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
Kill Ashenvale Bear enemies around this area
|tip You can find them all over between Raynewood Retreat and Splintertree post.
|tip You can also find them east of Satyrn.
collect 5 Torn Bear Pelt##11407 |goto Ashenvale 66.01,60.42 |n
You can find more around [83.81,47.40]
talk Yebb Neblegear##14829
accept Torn Bear Pelts##7900 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
Kill Crag Coyote enemies around this area
|tip You can find the all over central and western Badlands.
collect 5 Soft Bushy Tail##4582 |goto Badlands 34.41,65.63 |n
You can find more around [57.00,58.62]
talk Yebb Neblegear##14829
accept Soft Bushy Tails##7901 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
Kill Northspring enemies around this area
collect 5 Vibrant Plume##5117 |goto Feralas 40.00,12.61 |n
talk Yebb Neblegear##14829
accept Vibrant Plumes##7902 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |q 8222 |future
step
talk Yebb Neblegear##14829
accept Glowing Scorpid Blood##8222 |goto Elwynn Forest 40.17,69.53
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |n
talk Yebb Neblegear##14829
accept More Glowing Scorpid Blood##8223 |goto Elwynn Forest 40.17,69.53
|tip From this point on, you can continue turning in Glowing Scorpid Blood.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Spawn of Jubjub (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCollect a couple of Dark Iron Ale Mugs from the Grim Guzzler tavern in Blackrock Depths "..
"and offer them to Morja at the Darkmoon Faire to receive your very own Jubjub companion pet.",
condition_end=function() return completedq(7946) end,
model={14938},
},[[
step
click Dark Iron Ale Mug##165738
|tip They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths.
|tip Clicking two of them is safe but clicking more will anger the bar patrons.
collect 2 Dark Iron Ale Mug##11325 |q 7946 |future
|tip They can also be purchased from Plugger Spazzring in the Grim Guzzler.
|tip They can be purchased from the Auction House if you are lucky enough to find them.
step
use the Dark Iron Ale Mug##11325
|tip Place it at Morja's feet.
|tip Be sure you only use one; you will need the other one to turn in the quest.
Wait for Jubjub the frog to hop over to the mug
|tip This may take a couple of minutes.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Elwynn Forest 43.33,70.29
|tip This quest will be available after Jubjub appears.
step
use the Unhatched Jubling Egg##19462
|tip It will take seven days for the egg to mature enough to hatch.
collect 1 A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Wood Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his limited supply "..
"Wood Frog Box for 1 gold.",
model={901},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Wood Frog Box##11027 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold and has a limited quantity of 1.
|tip It respawns in approximately 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Tree Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his "..
"Tree Frog Box for 1 gold.",
model={6295},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Tree Frog Box##11026 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Sayge's Fortunes (Mulgore)",{
author="support@zygorguides.com",
description="\nReceive a stat buff and have your fortune told by Sayge at the Darkmoon Faire.",
model={491},
},[[
step
label "Choose_Fortune"
Choose the buff you would like to receive:
|tip The buff lasts for two hours.
|tip You can have your fortune told every four hours.
|tip NOTE: You will not be able to receive the written fortune and potential quest without an open inventory slot.
+10% Agility |confirm |next "Agility_Buff"
+10% Intelligence |confirm |next "Intelligence_Buff"
+10% Spirit |confirm |next "Spirit_Buff"
+10% Stamina |confirm |next "Stamina_Buff"
+10% Strength |confirm |next "Strength_Buff"
+10% Armor |confirm |next "Armor_Buff"
+25 All Resistances |confirm |next "Resistance_Buff"
+10% Damage |confirm |next "Damage_Buff"
step
label "Agility_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would create some surreptitious means to keep my brother out of the order."_
Gain the "Sayge's Dark Fortune of Agility" Buff |havebuff spell:23736 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Intelligence_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I quietly ignore the insult."_
Gain the "Sayge's Dark Fortune of Intelligence" Buff |havebuff spell:23766 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Spirit_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I confront the ruler on his malicious behavior, upholding my liege's honor at the risk of any future diplomacy."_
Gain the "Sayge's Dark Fortune of Spirit" Buff |havebuff spell:23738 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Stamina_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak against my brother joining the order, rushing a permanent breech in our relationship."_
Gain the "Sayge's Dark Fortune of Stamina" Buff |havebuff spell:23737 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Strength_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak for my brother joining the order, potentially risking the safety of the order."_
Gain the "Sayge's Dark Fortune of Strength" Buff |havebuff spell:23735 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Armor_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I risk my own life and free him so that he may prove his innocence."_
Gain the "Sayge's Dark Fortune of Armor" Buff |havebuff spell:23767 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Resistance_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, but doing so in as painless of a way as possible."_
Gain the "Sayge's Dark Fortune of Resistance" Buff |havebuff spell:23769 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Damage_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people."_
Gain the "Sayge's Dark Fortune of Damage" Buff |havebuff spell:23768 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Use_Darkmoon_Faire_Fortune"
talk Sayge##14822
Tell him _"I'd love to get one of those written fortunes you mentioned!"_
collect 1 Darkmoon Faire Fortune##19422 |goto Mulgore 36.92,38.37
step
use the Darkmoon Faire Fortune##19422
Obtain Your Fortune |condition itemcount(19422) == 0
step
label "Fortune_Told"
You have received your fortune
|tip You can have your fortune told every four hours.
Click Here to Choose Another Fortune |confirm |next "Choose_Fortune" |or
'|condition itemcount(19423) == 1 and not completedq(7937) and level >= 10 |next "Fortune_Awaits_Eastvale" |or
'|condition itemcount(19424) == 1 and not completedq(7938) and level >= 10 |next "Fortune_Awaits_Deadmines" |or
'|condition itemcount(19443) == 1 and not completedq(7944) and level >= 10 |next "Fortune_Awaits_Wailing_Caverns" |or
'|condition itemcount(19452) == 1 and not completedq(7945) and level >= 10 |next "Fortune_Awaits_Palemane_Rock" |or
step
label "Fortune_Awaits_Eastvale"
use Sayge's Fortune #23##19423
accept Your Fortune Awaits You...##7937
step
click Mysterious Eastvale Haystack
turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.79,64.37 |next "Fortune_Told"
step
label "Fortune_Awaits_Deadmines"
use Sayge's Fortune #24##19424
accept Your Fortune Awaits You...##7938
step
click Mysterious Deadmines Chest
|tip Just inside The Deadmines instance before you reach the first Miner.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7938 |next "Fortune_Told"
step
label "Fortune_Awaits_Wailing_Caverns"
use Sayge's Fortune #25##19443
accept Your Fortune Awaits You...##7944
step
click Mysterious Wailing Caverns Chest
|tip Just inside the Wailing Caverns instance after the Disciple of Naralex.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7944 |next "Fortune_Told"
step
label "Fortune_Awaits_Palemane_Rock"
use Sayge's Fortune #27##19452
accept Your Fortune Awaits You...##7945
step
click Mysterious Tree Stump
turnin Your Fortune Awaits You...##7945 |goto Mulgore 34.99,61.56 |next "Fortune_Told"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Chronos Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="\nExchange various Leatherworking crafted items with Chronos for prize tickets at the Darkmoon Faire.",
model={14875},
},[[
step
collect 3 Embossed Leather Boots##2309 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Boots##7881 |goto Mulgore 36.15,35.18 |or
|tip Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 3 Toughened Leather Armor##2314 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Jerkins##7882 |goto 36.15,35.18 |or
|tip Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Barbaric Harness##5739 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept The World's Largest Gnome!##7883 |goto 36.15,35.18 |or
|tip Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Turtle Scale Leggings##8185 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Crocolisk Boy and the Bearded Murloc##7884 |goto 36.15,35.18 |or
|tip Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Rugged Armor Kit##15564 |q 7885 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
talk Chronos##14833
accept Armor Kits##7885 |goto 36.15,35.18
step
collect 8 Rugged Armor Kit##15564 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept More Armor Kits##7941 |goto 36.15,35.18 |or
|tip From this point on, you can continue turning in Rugged Armor Kits.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Kerri Hicks Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="\nExchange various Blacksmithing crafted items with Kerri Hicks for prize tickets at the Darkmoon Faire.",
model={14876},
},[[
step
collect 10 Coarse Weightstone##3240 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Coarse Weightstone##7889 |goto Mulgore 37.87,39.83 |or
|tip Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Heavy Grinding Stone##3486 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Heavy Grinding Stone##7890 |goto 37.87,39.83 |or
|tip Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Green Iron Bracers##3835 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Green Iron Bracers##7891 |goto 37.87,39.83 |or
|tip Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Big Black Mace##7945 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Big Black Mace##7892 |goto 37.87,39.83 |or
|tip Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Dense Grinding Stone##12644 |q 7893 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Kerri Hicks##14832
accept Rituals of Strength##7893 |goto 37.87,39.83
step
collect 8 Dense Grinding Stone##12644 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept More Dense Grinding Stones##7939 |goto 37.87,39.83 |or
|tip From this point on, you can continue turning in Dense Grinding Stones.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Rinling Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="\nExchange various Engineering crafted items with Rinling for prize tickets at the Darkmoon Faire.",
model={14877},
},[[
step
collect 5 Copper Modulator##4363 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They also have a small chance to drop from mobs in the Gnomeregan dungeon.
talk Rinling##14841
accept Copper Modulator##7894 |goto Mulgore 37.12,37.31 |or
|tip Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Whirring Bronze Gizmo##4375 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Whirring Bronze Gizmo##7895 |goto 37.12,37.31 |or
|tip Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 36 Green Firework##9313 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They can also be purchased from any Holiday Fireworks Vendor on July 4th.
talk Rinling##14841
accept Green Fireworks##7896 |goto 37.12,37.31 |or
|tip Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 6 Mechanical Repair Kit##11590 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Mechanical Repair Kits##7897 |goto 37.12,37.31 |or
|tip Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 6 Thorium Widget##15994 |q 7898 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
talk Rinling##14841
accept Thorium Widget##7898 |goto 37.12,37.31
step
collect 6 Thorium Widget##15994 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept More Thorium Widgets##7942 |goto 37.12,37.31 |or
|tip From this point on, you can continue turning in Thorium Widgets.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Yebb Neblegear Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="\nExchange various Farmed items with Yebb Neblegear for prize tickets at the Darkmoon Faire.",
model={14856},
},[[
step
Kill Savannah enemies around this area
|tip You can find them all over around Crossroads and to its northern area.
collect 5 Small Furry Paw##5134 |goto The Barrens 50.21,21.82 |n
talk Yebb Neblegear##14829
accept Small Furry Paws##7899 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
Kill Ashenvale Bear enemies around this area
|tip You can find them all over between Raynewood Retreat and Splintertree post.
|tip You can also find them east of Satyrn.
collect 5 Torn Bear Pelt##11407 |goto Ashenvale 66.01,60.42 |n
You can find more around [83.81,47.40]
talk Yebb Neblegear##14829
accept Torn Bear Pelts##7900 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
Kill Crag Coyote enemies around this area
|tip You can find the all over central and western Badlands.
collect 5 Soft Bushy Tail##4582 |goto Badlands 34.41,65.63 |n
You can find more around [57.00,58.62]
talk Yebb Neblegear##14829
accept Soft Bushy Tails##7901 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
Kill Northspring enemies around this area
collect 5 Vibrant Plume##5117 |goto Feralas 40.00,12.61 |n
talk Yebb Neblegear##14829
accept Vibrant Plumes##7902 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |q 8222 |future
step
talk Yebb Neblegear##14829
accept Glowing Scorpid Blood##8222 |goto Mulgore 37.54,39.63
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |n
talk Yebb Neblegear##14829
accept More Glowing Scorpid Blood##8223 |goto Mulgore 37.54,39.63
|tip From this point on, you can continue turning in Glowing Scorpid Blood.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Spawn of Jubjub (Mulgore)",{
author="support@zygorguides.com",
description="\nCollect a couple of Dark Iron Ale Mugs from the Grim Guzzler tavern in Blackrock Depths "..
"and offer them to Morja at the Darkmoon Faire to receive your very own Jubjub companion pet.",
condition_end=function() return completedq(7946) end,
model={14938},
},[[
step
click Dark Iron Ale Mug##165738
|tip They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths.
|tip Clicking two of them is safe but clicking more will anger the bar patrons.
collect 2 Dark Iron Ale Mug##11325 |q 7946 |future
|tip They can also be purchased from Plugger Spazzring in the Grim Guzzler.
|tip They can be purchased from the Auction House if you are lucky enough to find them.
step
use the Dark Iron Ale Mug##11325
|tip Place it at Morja's feet.
|tip Be sure you only use one; you will need the other one to turn in the quest.
Wait for Jubjub the frog to hop over to the mug
|tip This may take a couple of minutes.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Mulgore 35.87,35.24
|tip This quest will be available after Jubjub appears.
step
use the Unhatched Jubling Egg##19462
|tip It will take seven days for the egg to mature enough to hatch.
collect 1 A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Wood Frog (Mulgore)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his limited supply "..
"Wood Frog Box for 1 gold.",
model={901},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Wood Frog Box##11027 |goto Mulgore 36.72,37.36
|tip This item costs 1 gold and has a limited quantity of 1.
|tip It respawns in approximately 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Tree Frog (Mulgore)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his "..
"Tree Frog Box for 1 gold.",
model={6295},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Tree Frog Box##11026 |goto Mulgore 36.72,37.36
|tip This item costs 1 gold.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
author="support@zygorguides.com",
condition_end=function() return completedq(8409) end,
description="\nComplete the Hallow's End event quests.",
},[[
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to be able to accept these quests.
|tip Use the Leveling guides to accomplish this.
step
talk Orc Commoner##19175
accept Masked Orphan Matron##11357 |goto Orgrimmar/0 51.44,69.54
step
Enter the building |goto 71.07,23.87 < 5 |walk
talk Spoops##15309
|tip Inside the building.
accept Hallow's End Treats for Spoops!##8312 |goto 71.44,22.80
step
Enter the building |goto 54.03,68.94 < 5 |walk
talk Innkeeper Gryshka##6929
|tip Inside the building.
accept Flexing for Nougat##8359 |goto 54.10,68.40
step
clicknpc Innkeeper Gryshka##6929
|tip Inside the building.
|tip Target Innkeeper Gryshka and type "/flex" into your chat to perform the Flex emote.
'|script DoEmote("FLEX")
Flex for Inkeeper Gryshka |q 8359/1 |goto 54.10,68.40
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Flexing for Nougat##8359 |goto 54.10,68.40
step
collect Orgrimmar Nougat##20493 |q 8312/1
|tip You should collect this automatically.
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12366 |goto 54.45,68.63
step
Follow the road south |goto Durotar/0 46.34,18.51 < 30 |only if walking
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Fire Training##11361 |goto 52.57,41.20
accept The Headless Horseman##11220 |goto 52.57,41.20
|tip You may need to wait for the Horseman's assault to stop.
|tip The daily quest will be offered during this time.
step
click Water Barrel |goto 49.16,44.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out #5# Fires |q 11361/1 |goto 49.17,43.32
step
talk Masked Orphan Matron##23973
turnin Fire Training##11361 |goto 52.57,41.20
step
Follow the road south |goto 53.38,57.61 < 30 |only if walking
talk Kali Remik##11814
accept Incoming Gumdrop##8358 |goto 56.12,74.24
step
clicknpc Kali Remik##11814
|tip Target Kali Remik and type "/train" into your chat to perform the Train emote.
'|script DoEmote("TRAIN")
Do the "Train" for Kali Remik |q 8358/1 |goto 56.12,74.24
step
talk Kali Remik##11814
turnin Incoming Gumdrop##8358 |goto 56.12,74.24
step
collect Darkspear Gumdrop##20495 |q 8312/2
|tip You should collect this automatically.
step
Enter the building |goto Thunder Bluff/0 44.95,62.12 < 5 |walk
talk Innkeeper Pala##6746
|tip Inside the building.
accept Dancing for Marzipan##8360 |goto 45.81,64.71
step
clicknpc Innkeeper Pala##6746
|tip Inside the building.
|tip Target Innkeeper Pala and type "/dance" into your chat to perform the Dance emote.
'|script DoEmote("DANCE")
Dance for Inkeeper Pala |q 8360/1 |goto 45.81,64.71
step
talk Innkeeper Pala##6746
|tip Inside the building.
turnin Dancing for Marzipan##8360 |goto 45.81,64.71
step
collect Thunder Bluff Marzipan##20497 |q 8312/4
|tip You should collect this automatically.
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12367 |goto 45.60,64.94
step
talk Innkeeper Norman##6741
accept Chicken Clucking for a Mint##8354 |goto Undercity/0 67.73,37.88
step
clicknpc Innkeeper Norman##6741
|tip Target Innkeeper Norman and type "/chicken" into your chat to perform the Chicken emote.
'|script DoEmote("CHICKEN")
Cluck Like a Chicken for Innkeeper Norman |q 8354/1 |goto 67.73,37.88
step
talk Innkeeper Norman##6741
turnin Chicken Clucking for a Mint##8354 |goto 67.73,37.88
step
collect Undercity Mint##20491 |q 8312/3
|tip You should collect this automatically.
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12368 |goto 45.60,64.94
step
Enter the building |goto Orgrimmar 71.07,23.87 < 5 |walk
talk Spoops##15309
|tip Inside the building.
turnin Hallow's End Treats for Spoops!##8312 |goto 71.44,22.80
step
Reach Level 25 |ding 25
|tip You must be at least level 25 to be able to accept this quest.
|tip Use the Leveling guides to accomplish this.
step
Follow the road |goto Tirisfal Glades/0 56.94,64.93 < 30 |only if walking
talk Darkcaller Yanka##15197
accept Stinking Up Southshore##1657 |goto 55.57,69.90
accept Rotten Eggs##8322 |goto 55.57,69.90
step
Avoid Southshore |goto Hillsbrad Foothills/0 45.12,49.16 < 15 |only if walking
Avoid Southshore guards |goto 46.66,58.05 < 10 |only if walking
use the Forsaken Stink Bomb Cluster##20387
|tip Use it while standing here to throw stink bombs on the ground.
Toss #3# Stink Bombs into Southshore |q 1657/1 |goto 48.42,57.86
step
Enter the building |goto 50.47,58.56 < 7 |walk
click Keg
|tip Inside the building.
|tip The top keg on the pyramid behind the innkeeper.
|tip You will become flagged for PvP and be attacked by guards.
|tip Be quick and accept the follow-up quest before you die.
turnin Rotten Eggs##8322 |goto 51.33,58.98
accept Ruined Kegs##8409 |goto 51.33,58.98
step
Follow the road |goto Tirisfal Glades/0 56.94,64.93 < 30 |only if walking
talk Darkcaller Yanka##15197
turnin Stinking Up Southshore##1657 |goto 55.57,69.90
turnin Ruined Kegs##8409 |goto 55.57,69.90
step
_Congratulations!_
You Completed the "Hallow's End" Event
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Daily Quests",{
author="support@zygorguides.com",
description="\nPut out fires in Razor Hill and kill the Headless Horseman.",
},[[
step
label "Begin_Dailies"
talk Orc Commoner##19175
accept Masked Orphan Matron##11357 |goto Orgrimmar/0 51.44,69.54
step
Follow the road south |goto Durotar/0 46.34,18.51 < 30 |only if walking
talk Masked Orphan Matron##23973
turnin Masked Orphan Matron##11357 |goto 52.57,41.20
step
talk Masked Orphan Matron##23973
accept Stop the Fires!##11219 |goto 52.57,41.20 |or
accept "Let the Fires Come!"##12139 |goto 52.57,41.20 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Razor Hill is under attack or not.
step
click Water Barrel |goto 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11219/1 |goto 52.41,42.42
|only if haveq(11219) or completedq(11219)
step
click Water Barrel |goto 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12139/1 |goto 52.41,42.42
|only if haveq(12139) or completedq(12139)
step
talk Masked Orphan Matron##23973
turnin Stop the Fires!##11219 |goto 52.57,41.20 |only if haveq(11219) or completedq(11219) |or
turnin "Let the Fires Come!"##12139 |goto 52.57,41.20 |only if haveq(12139) or completedq(12139) |or
step
Reach Level 65 |ding 65 |or
|tip You must be at least level 65 to be able to kill the Headless Horseman.
|tip Use the Leveling guides to accomplish this.
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
|tip It's in the courtyard of the Scarlet Monastery Graveyard dungeon.
|tip You will need a full group for this.
accept Call the Headless Horseman##11405 |or
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
click Loosely Turned Soil
|tip In front of the crypt behind the Pumpkin Shine.
kill Headless Horseman##23682
|tip He will fly down shortly after disturbing the soil.
|tip When he reaches 1% health, his head will fly off.
|tip Burn the head down to make it rejoin his body.
|tip You will need to do this twice.
|tip After the second time, he will start spawning 4 pumpkins every 30 seconds.
|tip Group them up and AoE them down.
|tip Kill his head the third time it separates to defeat him.
confirm |or
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
turnin Call the Headless Horseman##11405 |or
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
step
You have completed the availble daily quests for Hallow's End
|tip This guide will reset when more become available.
'|complete not completedq(11219,12139,11405) |next "Begin_Dailies" |or
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Candy Buckets",{
author="support@zygorguides.com",
description="\nVisit innkeeper candy buckets in Eastern Kingdoms, Kalimdor, and Outland "..
"for tasty treats.",
},[[
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12368 |goto Undercity/0 45.60,64.94
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12363 |goto Tirisfal Glades/0 61.71,52.14
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12402 |goto Eastern Plaguelands/0 81.70,58.10
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12373 |goto Ghostlands/0 48.68,31.91
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12365 |goto Eversong Woods/0 43.70,71.03
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12364 |goto Eversong Woods/0 48.20,47.88
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12370 |goto Silvermoon City/0 67.58,72.90
step
Enter the building |goto Silvermoon City/0 81.96,58.31 < 7 |walk
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12369 |goto Silvermoon City/0 79.43,57.66
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12371 |goto Silverpine Forest/0 43.14,41.31
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12376 |goto Hillsbrad Foothills/0 62.89,18.95
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12380 |goto Arathi Highlands/0 73.90,32.50
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12387 |goto The Hinterlands/0 78.19,81.48
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12385 |goto Badlands/0 2.80,46.02
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12384 |goto Swamp of Sorrows/0 45.08,56.70
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12382 |goto Stranglethorn Vale/0 31.49,29.69
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12397 |goto Stranglethorn Vale/0 27.06,77.28
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12396 |goto The Barrens/0 62.07,39.41
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12374 |goto The Barrens/0 51.96,29.91
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12375 |goto The Barrens/0 45.56,59.08
step
click Candy Bucket
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12383 |goto Dustwallow Marsh/0 36.78,32.43
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12379 |goto Thousand Needles/0 46.12,51.48
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12399 |goto Tanaris/0 52.45,27.87
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12401 |goto Silithus/0 51.83,39.19
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12386 |goto Feralas/0 74.83,45.14
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12367 |goto Thunder Bluff/0 45.60,64.94
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12362 |goto Mulgore/0 46.59,61.04
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12381 |goto Desolace/0 24.07,68.29
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12378 |goto Stonetalon Mountains/0 47.44,62.07
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12400 |goto Winterspring/0 61.33,38.86
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12377 |goto Ashenvale/0 73.96,60.60
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12366 |goto Orgrimmar/0 54.45,68.63
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12361 |goto Durotar/0 51.54,41.58
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12388 |goto Hellfire Peninsula/0 56.81,37.44
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12389 |goto 26.89,59.47
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12404 |goto Shattrath City/0 56.31,81.95
|only if rep("The Scryers") >= Neutral
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12404 |goto Shattrath City/0 28.23,49.07
|only if rep("The Aldor") >= Neutral
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12391 |goto Terokkar Forest/0 48.74,45.17
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12395 |goto Shadowmoon Valley/0 30.27,27.70
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12409 |goto 56.37,59.82
|only if rep("The Scryers") >= Neutral
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12409 |goto 61.00,28.17
|only if rep("The Aldor") >= Neutral
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12392 |goto Nagrand/0 56.68,34.48
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12390 |goto Zangarmarsh/0 30.62,50.87
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12393 |goto Blade's Edge Mountains/0 53.43,55.55
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12406 |goto 62.90,38.33
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12394 |goto 76.22,60.39
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12407 |goto Netherstorm/0 32.02,64.44
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586
|tip These are unique.
|tip You can't turn in this quest with one in your inventory.
accept Candy Bucket##12408 |goto 43.31,36.10
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
author="support@zygorguides.com",
condition_end=function() return completedq(8150) end,
description="\nComplete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
Reach Level 30 |ding 30
|tip You must be at least level 30 to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
talk Javnir Nashak##15012
accept Honoring a Hero##8150 |goto Durotar 46.10,13.77
step
Follow the path |goto Ashenvale 73.51,63.53 < 15 |only if walking
Continue following the path |goto Ashenvale 75.62,65.88 < 30 |only if walking
Continue following the path |goto Ashenvale 84.20,72.05 < 20 |only if walking
use Grom's Tribute##19851
Place a Tribute at Grom's Monument |q 8150/1 |goto Ashenvale 82.85,79.04
step
Follow the path |goto 84.20,72.05 < 20 |only if walking
Follow the path |goto 73.51,63.53 < 15 |only if walking
talk Javnir Nashak##15012
turnin Honoring a Hero##8150 |goto Durotar 46.10,13.77
step
_Congratulations!_
You Completed the "Harvest Festival" Event
|tip You can now use the food at the Harvest Festival table.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quest",{
author="support@zygorguides.com",
description="This guide will walk you through the quests for the \"Feast of Winter Veil\" event.",
},[[
step
Reach Level 10 |ding 10
|tip You must be at least this level to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
talk Furmund##9550
accept The Reason for the Season##6964 |goto Orgrimmar 50.85,65.26
step
Enter the building |goto 40.32,36.94 < 7 |walk
talk Sagorne Creststrider##13417
|tip Inside the building.
turnin The Reason for the Season##6964 |goto 38.66,35.92
accept The Feast of Winter Veil##7061 |goto 38.66,35.92
step
Leave the building |goto 40.32,36.94 < 7 |walk
talk Cairne Bloodhoof##3057
|tip Inside the building.
turnin The Feast of Winter Veil##7061 |goto Thunder Bluff 60.30,51.68
step
talk Kaymard Copperpinch##13418
accept Great-father Winter is Here!##6961 |goto Orgrimmar 53.33,66.49
step
talk Great-father Winter##13445
turnin Great-father Winter is Here!##6961 |goto 52.49,69.18
accept Treats for Great-father Winter##6962 |goto 52.49,69.18
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
Learn Apprentice Cooking |skillmax Cooking,75 |goto Orgrimmar 57.40,53.96
step
talk Penney Copperpinch##13420
buy Recipe: Gingerbread Cookie##17200 |n
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |goto 53.21,65.89
step
collect 5 Small Egg##6889 |q 6962
|tip Search the guide menu and use the farming guide to accomplish this.
|tip You can also buy them from the Auction House.
step
talk Penney Copperpinch##13420
buy 5 Holiday Spices##17194 |goto 53.21,65.89 |q 6962
step
Enter the building |goto 54.06,68.85 < 7 |walk
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 5 Gingerbread Cookies>_
collect 5 Gingerbread Cookie##17197 |q 6962/1 |goto 54.76,68.23
step
talk Barkeep Morag##5611
|tip Inside the building.
buy Ice Cold Milk##1179 |q 6962/2 |goto 54.64,67.68
step
talk Great-father Winter##13445
turnin Treats for Great-father Winter##6962 |goto 52.49,69.18
|tip After you turn in this quest, you can then repeat it to get more gifts to open.
step
Reach Level 30 |ding 30
|tip You must be at least this level to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
talk Kaymard Copperpinch##13418
accept Stolen Winter Veil Treats##6963 |goto 53.33,66.49
step
Follow the path |goto Alterac Mountains 49.56,69.08 < 20 |only if walking
Continue following the path |goto Alterac Mountains 41.83,77.11 < 20 |only if walking
talk Strange Snowman##13636
turnin Stolen Winter Veil Treats##6963 |goto Alterac Mountains 35.44,72.46
accept You're a Mean One...##6983 |goto Alterac Mountains 35.44,72.46
step
kill The Abominable Greench##13602
|tip He looks like a level 36 elite yeti.
|tip If you have trouble, try to find someone to help you.
|tip He can spawn in random places around the "Growless Cave" area.
|tip When he spawns, you will see a red yelled message in your chat.
|tip Just wait around nearby in this area until he spawns.
collect Stolen Treats##17662 |q 6983/1 |goto 40.80,67.77
step
talk Kaymard Copperpinch##13418
turnin You're a Mean One...##6983 |goto Orgrimmar 53.33,66.49
accept A Smokywood Pastures Thank You!##6984 |goto Orgrimmar 53.33,66.49
step
talk Great-father Winter##13445
turnin A Smokywood Pastures Thank You!##6984 |goto 52.49,69.18
step
Reach Level 40 |ding 40
|tip You must be at least this level to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
talk Kaymard Copperpinch##13418
accept Metzen the Reindeer##8746 |goto 53.33,66.49
step
use the Smokywood Satchel##21315
collect Pouch of Reindeer Dust##21211 |q 8746/2
step
Enter the tunnel |goto Tanaris 68.61,41.45 < 10 |only if walking
Leave the tunnel |goto Tanaris 69.81,42.48 < 10 |only if walking
Follow the path |goto Tanaris 73.18,45.56 < 15 |only if walking
talk Metzen the Reindeer##15664
|tip Inside the building.
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Find Metzen the Reindeer and Rescue Him |q 8746/1 |goto Tanaris 73.35,48.07
step
talk Kaymard Copperpinch##13418
turnin Metzen the Reindeer##8746 |goto Orgrimmar 53.33,66.49
step
_Congratulations!_
You Completed the "Feast of Winter Veil" Event
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
author="support@zygorguides.com",
description="This guide will walk you through the quests for the \"Lunar Festival\" event.",
condition_end=function() return completedq(8862) end,
},[[
step
talk Lunar Festival Emissary##15891
accept The Lunar Festival##8873 |goto Orgrimmar 51.0,70.5
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8873 |goto 41.6,32.0
accept Lunar Fireworks##8867 |goto 41.6,32.0
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |goto 41.3,32.4 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto 41.3,32.4 |q 8867
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks |q 8867/1 |goto 41.6,32.8
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 41.6,32.8
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 41.6,32.0
accept Valadar Starsong##8883 |goto 41.6,32.0
step
use the Lunar Festival Invitation##21711 |goto 41.0,31.0
Go to Moonglade |goto Moonglade |c |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto 53.65,35.26
step
collect 16 Coin of Ancestry##21100
|tip These are awarded by talking to elders around Kalimdor and Eastern Kingdoms.
|tip Use the "Lunar Festival Optimized Elders Path" event guide to collect them.
step
talk Valadar Starsong##15864
accept Festive Lunar Dresses##8864 |goto 53.65,35.26
accept Festive Lunar Pant Suits##8865 |goto 53.65,35.26
accept Festival Dumplings##8863 |goto 53.65,35.26
accept Elune's Candle##8862 |goto 53.65,35.26
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
Follow the path |goto Western Plaguelands/0 68.61,80.10 < 20 |only if walking
Run up the stairs |goto 69.94,74.03 < 7 |only if walking
Enter the building |goto Eastern Kingdoms/0 50.94,36.51 < 15 |walk
Run up the stairs |goto 50.86,36.40 < 5 ||walk
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto 50.88,36.52
step
Jump down here |goto 50.86,36.51 < 7 |walk
Jump Off the Wall |goto Western Plaguelands/0 68.76,73.60 < 500 |c |noway |q 8722 |future
step
talk Elder Meadowrun##15602
accept Meadowrun the Elder##8722 |goto 65.97,47.82
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 81.51,60.52
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto 39.69,75.39
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 64.46,24.04
step
Cross the bridge |goto 76.07,38.04 < 7 |only if walking
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 82.20,46.47
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Stormwind City/0 21.43,53.91
step
talk Elder Skychaser##15577
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 57.91,54.87
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Stranglethorn Vale/0 53.11,18.46
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto 26.46,76.53
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 62.65,36.74
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto 51.40,30.68
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto 45.11,57.88
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.40,53.44
step
Ride the elevator up |goto Thunder Bluff/0 31.76,65.80
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto 72.98,23.38
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto 62.56,31.08
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 48.97,37.65
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 23.09,11.84
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.16
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 36.30,80.53
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto 51.46,27.85
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles/0 79.19,77.05
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto 45.42,50.08
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/0 41.14,33.85
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.65
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara/0 72.53,85.07
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 61.45,37.76
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto 55.62,43.66
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 37.72,53.01
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 36.81,46.75
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 33.48,14.29
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 57.34,60.80
step
talk Elder Wildmane##15578
|tip She is located inside Zul'Farak near the pool that spawns Gaz'Rilla.
|tip You will need to run this dungeon with a group.
accept Wildmane the Elder##8676
step
talk Elder Splitrock##15556
|tip He is located inside Mauradon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You will need to run this dungeon with a group.
accept Splitrock the Elder##8635
step
talk Elder Starsong##15593
|tip Take the path on the left after entering Sunken Temple.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You will need to run this dungeon with a group.
accept Starsong the Elder##8713
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in Blackrock Depths.
|tip Talking to him will start the event.
|tip You will need to run this dungeon with a group.
accept Morndeep the Elder##8619
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in Lower Blackrock Spire.
|tip You will need to run this dungeon with a group.
accept Stonefort the Elder##8644
step
talk Elder Farwhisper##15607
|tip He is located in Stratholme on the Service Entrance (Scarlet) side.
|tip Go left after entering the instance and through the plague rat gate and he will be on the right side.
|tip You will need to run this dungeon with a group.
accept Farwhisper the Elder##8727
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the quests for the \"Love is in the Air\" event.",
condition_end=function() return completedq(9029) end,
},[[
step
talk Fenstad Argyle##16108
accept Dangerous Love##8904 |goto Undercity 66.68,44.70
step
talk Innkeeper Norman##6741
buy 1 Love Token##21815 |goto 67.75,37.88 |q 8904
buy 1 Cologne Bottle##21833 |goto 67.75,37.88 |q 8904
buy 1 Perfume Bottle##21829 |goto 67.75,37.88 |q 8904
step
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682") |q 8904
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
talk Undercity Guardian
|tip Talk to those with a heart above their head.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 1 Guardian's Moldy Card##22145 |q 8904
step
talk Fenstad Argyle##16108
turnin Dangerous Love##8904 |goto 66.68,44.70
accept Fenstad's Hunch##8979 |goto 66.68,44.70
step
Run down the ramp |goto 52.81,77.72
talk Apothecary Zinge##5204
|tip Inside the building.
turnin Fenstad's Hunch##8979 |goto 50.15,67.98
accept Zinge's Assessment##8980 |goto 50.15,67.98
step
talk Fenstad Argyle##16108
turnin Zinge's Assessment##8980 |goto 66.68,44.70
accept Tracing the Source##8982 |goto 66.68,44.70
step
talk Innkeeper Norman##6741
turnin Tracing the Source##8982 |goto 67.75,37.88
accept Tracing the Source##8983 |goto 67.75,37.88
step
talk Mara Rennick##16109
|tip She walks around this area.
turnin Tracing the Source##8983 |goto 70.66,29.23
accept The Source Revealed##8984 |goto 70.66,29.23
step
Follow the path up |goto Hillsbrad Foothills 75.5,24.0
Enter the cave |goto 77.7,19.4
Run up the hill |goto Alterac Mountains 84.3,84.3
Follow the path up |goto 86.1,25.3
talk Apothecary Staffron Lerent##16107
turnin The Source Revealed##8984 |goto 89.5,75.5
step
click Fragrant Cauldron
accept A Bubbling Cauldron##9029 |goto 89.6,75.7
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Gift Giving",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the \"Gift Giving\" quest for the \"Love is in the Air\" event.",
},[[
step
label "Begin_Guide"
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 10 Love Token##21815 |goto Orgrimmar 54.10,68.39
buy 1 Cologne Bottle##21833 |goto 54.10,68.39
buy 1 Perfume Bottle##21829 |goto 54.10,68.39
step
label "Apply_Perfume_or_Cologne_Orgrimmar"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Orgrimmar NPCs
|tip Talk to guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Orgrimmar##22156
use the Pledge of Friendship: Orgrimmar##22161
collect 5 Pledge of Loyalty: Orgrimmar##22123 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22123) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
Talk to Orgrimmar NPCs
|tip Talk to guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Orgrimmar##22156
use the Pledge of Friendship: Orgrimmar##22161
collect 5 Grunt's Card##22142 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22142) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Orgrimmar##21981
use the Gift of Friendship: Orgrimmar##22170
collect 5 Freshly Baked Pie##22175 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22175) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
use the Pledge of Loyalty: Orgrimmar##22123
collect 1 Orgrimmar Pledge Collection##22294
step
use the Grunt's Card##22142
collect 1 Package of Cards##22293
step
use the Freshly Baked Pie##22175
collect 1 Box of Fresh Pies##22292
step
use the Orgrimmar Pledge Collection##22294
collect 1 Orgrimmar Gift Collection##22136
step
label "Apply_Perfume_or_Cologne_Thunder_Bluff"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Thunder Bluff guard NPCs
|tip Talk to guards around Thunder Bluff who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Thunder Bluff##22158
use the Pledge of Friendship: Thunder Bluff##22162
collect 5 Pledge of Loyalty: Thunder Bluff##22122 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22122) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
Talk to Thunder Bluff guard NPCs
|tip Talk to guards around Thunder Bluff who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Thunder Bluff##22158
use the Pledge of Friendship: Thunder Bluff##22162
collect 5 Bluffwatcher's Card##22144 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22144) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Thunder Bluff who have hearts over their heads.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Thunder Bluff##21980
use the Gift of Friendship: Thunder Bluff##22168
collect 5 Freshly Picked Flowers##22177 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22177) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
use the Pledge of Loyalty: Thunder Bluff##22122
collect 1 Thunder Bluff Pledge Collection##22297
step
use the Bluffwatcher's Card##22144
collect 1 Satchel of Cards##22295
step
use the Freshly Picked Flowers##22177
collect 1 Basket of Flowers##22296
step
use the Thunder Bluff Pledge Collection##22297
collect 1 Thunder Bluff Gift Collection##22135
step
label "Apply_Perfume_or_Cologne_Undercity"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Undercity guard NPCs
|tip Talk to guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 5 Pledge of Loyalty: Undercity##22121 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22121) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
Talk to Undercity guard NPCs
|tip Talk to guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 5 Guardian's Moldy Card##22145 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22145) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Undercity##22166
use the Gift of Friendship: Undercity##22172
collect 5 Romantic Poem##22174 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22174) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
use the Pledge of Loyalty: Undercity##22121
collect 1 Undercity Pledge Collection##22300
step
use the Guardian's Moldy Card##22145
collect 1 Sheaf of Cards##22299
step
use the Romantic Poem##22174
collect 1 Book of Romantic Poems##22298
step
use the Undercity Pledge Collection##22300
collect 1 Undercity Gift Collection##22134
step
use the Orgrimmar Gift Collection##22136
collect 1 Horde Gift Collection##22263
step
Choose the faction leader you would like to vote for:
|tip Turning in this quest in a capital city votes for that leader.
Sylvanas Windrunner |confirm |next "Vote_Sylvanas_Windrunner"
Thrall |confirm |next "Vote_Thrall"
Cairne Bloodhoof |confirm |next "Vote_Cairne_Bloodhoof"
step
label "Vote_Sylvanas_Windrunner"
Enter the tunnel |goto Undercity 51.86,64.75 < 20 |walk
talk Kwee Q. Peddlefeet##16075
accept Gift Giving##8981 |goto 55.20,89.96 |next "Final_Step"
step
label "Vote_Thrall"
Enter the building |goto Orgrimmar 40.28,36.93 < 20 |walk
talk Kwee Q. Peddlefeet##16075
|tip Inside the building.
accept Gift Giving##8981 |goto 32.57,36.80 |next "Final_Step"
step
label "Vote_Cairne_Bloodhoof"
talk Kwee Q. Peddlefeet##16075
|tip Inside the building.
accept Gift Giving##8981 |goto Thunder Bluff 60.89,50.29 |next "Final_Step"
step
label "Final_Step"
You completed the Gift Giving quest
Click Here to Complete it Again |confirm |next "Begin_Guide"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",{
author="support@zygorguides.com",
condition_end=function() return completedq(11972) end,
description="\nComplete the following Midsummer Fire Festival event quests:\n\nPlaying with Fire\n"..
"Honor the Flame\nTorch Tossing\nTorch Catching\nIncense for the Festival Scorchlings\n"..
"Unusual Activity\nAn Innocent Disguise\nInform the Elder\nAhune, the Frost Lord\n"..
"Ahune is Here!\nSummon Ahune\n\n"..
"|cffff0000NOTE:|r You will need to be at least level 60 to fully complete this guide.",
},[[
step
talk Flame Eater##25994
accept Playing with Fire##11915 |goto Durotar/0 52.41,47.32
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto 52.18,47.32
step
talk Master Flame Eater##26113
turnin Playing with Fire##11915 |goto Orgrimmar/0 47.15,38.14
accept Torch Tossing##11922 |goto 47.15,38.14
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
|tip If you fail the quest, accept it again from the Master Flame Eater.
Hit 8 Braziers |q 11922/1 |goto 46.69,37.76
step
talk Master Flame Eater##26113
turnin Torch Tossing##11922 |goto 47.15,38.14
accept Torch Catching##11923 |goto 47.15,38.14
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch 4 Torches in a Row |q 11923/1 |goto 46.96,37.78
step
talk Master Flame Eater##26113
turnin Torch Catching##11923 |goto 47.15,38.14
step
talk Festival Talespinner##16818
accept Incense for the Festival Scorchlings##11966 |goto Orgrimmar/0 46.75,38.03
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto 46.44,38.69
step
Kill Twilight enemies around this area
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 15.58,19.99
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto 14.49,19.22
accept An Innocent Disguise##11891 |goto 14.49,19.22
step
use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff spell:46337 |q 11891 |goto 9.37,12.71
step
Watch the dialogue
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto 9.37,12.71
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto 9.37,12.71
accept Inform the Elder##12012 |goto 9.37,12.71
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##12012 |goto Orgrimmar/0 46.44,38.69
accept Ahune, the Frost Lord##11955 |goto 46.44,38.69
step
talk Festival Scorchling##26520
turnin Incense for the Festival Scorchlings##11966 |goto Durotar/0 52.15,47.25
step
talk Numa Cloudsister##25710
|tip Numa can be found inside The Slave Pens dungeon on any difficulty.
|tip She is at the beginning of the dungeon as you zone in.
|tip Ahune is level 73 elite and will require a group to kill.
turnin Ahune, the Frost Lord##11955 |goto Zangarmarsh/0 48.92,35.74
accept Ahune is Here!##11696 |goto 48.92,35.74
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Ahune is Here!##11696
accept Summon Ahune##11691
step
click Ice Stone
|tip The Ice Stone can be found inside The Slave Pens dungeon on any difficulty.
|tip It is near the beginning of the dungeon before Mennu the Betrayer.
turnin Summon Ahune##11691
|tip Turning in this quest will summon Ahune.
|tip Ahune will immediately attack.
step
kill Ahune##25740
|tip You will need a group for this.
click Ice Chest
|tip It spawns after he dies.
collect Shards of Ahune##35723 |q 11972 |future
step
use the Shards of Ahune##35723
accept Shards of Ahune##11972
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Shards of Ahune##11972
step
_Congratulations!_
You Completed the "Midsummer Fire Festival Quests" Guide.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the dailies for the Midsummer Fire Festival event.",
},[[
step
Complete the "Midsummer Fire Festival Quests" Event Guide |complete completedq(12012)
step
label "Begin_Daily_Quests"
talk Master Flame Eater##26113
|tip Accepting this quest will start a timer.
accept More Torch Tossing##11926 |goto Orgrimmar/0 47.15,38.14
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
|tip If you fail, return to the Master Flame Eater to start again.
Hit 20 Braziers |q 11926/1 |goto 46.50,37.90
step
talk Master Flame Eater##26113
turnin More Torch Tossing##11926 |goto 47.15,38.14
step
talk Master Flame Eater##26113
|tip Accepting this quest will start a timer.
accept More Torch Catching##11925 |goto 47.15,38.14
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11925/1 |goto 46.16,36.90
step
talk Master Flame Eater##26113
turnin More Torch Catching##11925 |goto 47.15,38.14
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto 46.44,38.70 |only if level >= 22 and level <= 31
accept Striking Back##11947 |goto 46.44,38.70 |only if level >= 32 and level <= 42
accept Striking Back##11948 |goto 46.44,38.70 |only if level >= 43 and level <= 50
accept Striking Back##11952 |goto 46.44,38.70 |only if level >= 51 and level <= 59
accept Striking Back##11953 |goto 46.44,38.70 |only if level >= 60 and level <= 63
accept Striking Back##11954 |goto 46.44,38.70 |only if level >= 64
step
click Ice Stone##188149
|tip Inside the cave.
Choose _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus/0 68.88,20.44
|only if haveq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Stranglethorn Vale/0 21.30,23.37
|only if haveq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto 16.02,36.86
|only if haveq(11952)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09
|only if haveq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Orgrimmar/0 46.44,38.70 |only if haveq(11917) or completedq(11917)
turnin Striking Back##11947 |goto 46.44,38.70 |only if haveq(11947) or completedq(11947)
turnin Striking Back##11948 |goto 46.44,38.70 |only if haveq(11948) or completedq(11948)
turnin Striking Back##11952 |goto 46.44,38.70 |only if haveq(11952) or completedq(11952)
turnin Striking Back##11953 |goto 46.44,38.70 |only if haveq(11953) or completedq(11953)
turnin Striking Back##11954 |goto 46.44,38.70 |only if haveq(11954) or completedq(11954)
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11926,11925,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\The Fires of Azeroth\\Midsummer Fire Festival Bonfires",{
description="\nThis guide will walk you through obtaining the Flame Keeper of Kalimdor achievement.",
},[[
step
talk Mulgore Flame Keeper##25936
accept Honor the Flame##11852  |goto Mulgore/0 51.93,59.82
step
talk The Barrens Flame Keeper##25943
accept Honor the Flame##11859 |goto The Barrens/0 52.22,28.05
step
talk Dustwallow Marsh Flame Keeper##25930
accept Honor the Flame##11847 |goto Dustwallow Marsh/0 33.43,30.92
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11744 |goto 61.97,40.50
step
talk Thousand Needles Flame Warden##25945
accept Honor the Flame##11861 |goto Thousand Needles/0 42.19,53.00
step
talk Tanaris Flame Keeper##25921
accept Honor the Flame##11838 |goto Tanaris/0 49.83,26.93
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11762 |goto 52.68,30.11
step
talk Silithus Flame Keeper##25919
accept Honor the Flame##11836 |goto Silithus/0 46.45,44.45
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11760 |goto 57.77,35.07
step
talk Feralas Flame Keeper##25932
accept Honor the Flame##11849 |goto Feralas/0 72.38,47.80
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11746 |goto 28.10,43.84
The boat to Sardor Isle can be found at [43.34,42.75]
step
talk Desolace Flame Keeper##25928
accept Honor the Flame##11845 |goto Desolace/0 26.14,76.91
The boat to the mainland can be found at [31.03,39.86]
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11741 |goto 65.87,17.02
step
talk Stonetalon Flame Keeper##25940
accept Honor the Flame##11856 |goto Stonetalon Mountains/0 50.49,60.46
step
talk Ashenvale Flame Keeper##25884
accept Honor the Flame##11841 |goto Ashenvale/0 70.15,69.30
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11734 |goto 37.83,55.08
step
talk Durotar Flame Keeper##25929
accept Honor the Flame##11846 |goto Durotar/0 52.18,47.32
step
talk Winterspring Flame Keeper##25922
accept Honor the Flame##11839 |goto Winterspring/0 59.87,35.65
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11763 |goto 62.65,35.31
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11740 |goto Darkshore/0 37.12,46.00
step
click Flame of Darnassus##181334
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Darnassus##23184 |goto Teldrassil/0 56.54,92.22 |q 9332 |future
The boat to Teldrassil can be found at [33.18,40.13]
step
use the Flame of Darnassus##23184
accept Stealing Darnassus's Flame##9332
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11753 |goto 54.83,60.35
step
Enter the building |goto The Exodar/0 74.40,53.95 < 20 |walk
click Flame of the Exodar##188128
|tip Inside The Exodar.
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of the Exodar##35569 |goto 40.96,26.04 |q 11933 |future
The boat back to Darkshore can be found at [Teldrassil/0 54.87,96.73]
The boat to Azuremyst Isle can be found at [Darkshore/0 30.74,40.99]
step
use the Flame of the Exodar##35569
accept Stealing the Exodar's Flame##11933
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11735 |goto Azuremyst Isle/0 44.71,52.58
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11738 |goto Bloodmyst Isle/0 55.99,68.47
step
talk Stranglethorn Vale Flame Keeper##25920
accept Honor the Flame##11837 |goto Stranglethorn Vale/0 32.93,75.22
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11761 |goto 33.81,73.38
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11737 |goto Blasted Lands/0 58.87,17.23
step
talk Swamp of Sorrows Flame Keeper##25941
accept Honor the Flame##11857 |goto Swamp of Sorrows/0 46.70,46.98
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11743 |goto Duskwood/0 73.41,55.08
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11581 |goto Westfall/0 56.16,53.93
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11745 |goto Elwynn Forest/0 43.07,62.95
step
click Flame of Stormwind##181332
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Stormwind##23182 |goto Stormwind City/0 38.97,61.83 |q 9330 |future
step
use the Flame of Stormwind##23182
accept Stealing Stormwind's Flame##9330
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11751 |goto Redridge Mountains/0 24.99,59.51
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11739 |goto Burning Steppes/0 80.41,62.26
step
talk Burning Steppes Flame Keeper##25927
accept Honor the Flame##11844 |goto 61.77,29.06
step
talk Badlands Flame Keeper##25925
accept Honor the Flame##11842 |goto Badlands/0 4.70,48.61
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11749 |goto Loch Modan/0 32.50,40.55
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11742 |goto Dun Morogh/0 46.68,46.55
step
click Flame of Ironforge##181333
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Ironforge##23183 |goto Ironforge/0 64.39,25.58 |q 9331 |future
step
use the Flame of Ironforge##23183
accept Stealing Ironforge's Flame##9331
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11757 |goto Wetlands/0 13.31,47.25
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11732 |goto Arathi Highlands/0 50.39,44.90
step
talk Arathi Flame Keeper##25923
accept Honor the Flame##11840 |goto 74.22,41.47
step
click Alliance Bonfire##187931
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11748 |goto Hillsbrad Foothills/0 50.43,47.58
step
talk Hillsbrad Flame Keeper##25935
accept Honor the Flame##11853 |goto Hillsbrad Foothills/0 58.58,25.43
step
talk Silverpine Forest Flame Keeper##25939
accept Honor the Flame##11584 |goto Silverpine Forest/0 49.69,38.31
step
talk Eversong Woods Flame Keeper##25931
accept Honor the Flame##11848 |goto Eversong Woods/0 46.40,50.60
step
talk Ghostlands Flame Keeper##25933
accept Honor the Flame##11850 |goto Ghostlands/0 46.90,26.34
step
talk The Hinterlands Flame Keeper##25944
accept Honor the Flame##11860 |goto The Hinterlands/0 76.64,74.96
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11755 |goto 14.53,49.93
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11756 |goto Western Plaguelands/0 43.58,82.52
step
talk Tirisfal Glades Flame Keeper##25946
accept Honor the Flame##11862 |goto Tirisfal Glades/0 57.23,51.75
step
talk Festival Talespinner##16818
turnin Stealing Darnassus's Flame##9332 |goto Undercity/0 67.62,8.29 |only if haveq(9332) or completedq(9332)
turnin Stealing the Exodar's Flame##11933 |goto 67.62,8.29 |only if haveq(11933) or completedq(11933)
turnin Stealing Stormwind's Flame##9330 |goto 67.62,8.29 |only if haveq(9330) or completedq(9330)
turnin Stealing Ironforge's Flame##9331 |goto 67.62,8.29 |only if haveq(9331) or completedq(9331)
accept A Thief's Reward##9339 |goto 67.62,8.29 |only if completedallq(9332,11933,9330,9331)
|only if haveq(9332,11933,9330,9331) or completedq(9332,11933,9330,9331)
step
talk Hellfire Peninsula Flame Keeper##25934
accept Honor the Flame##11851 |goto Hellfire Peninsula/0 57.11,42.04
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11747 |goto 61.97,58.33
step
talk Netherstorm Flame Keeper##25918
accept Honor the Flame##11835 |goto Netherstorm/0 32.11,68.31
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11759 |goto 31.06,62.76
step
talk Blade's Edge Flame Keeper##25926
accept Honor the Flame##11843 |goto Blade's Edge Mountains/0 49.92,58.66
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11736 |goto 41.78,65.96
step
talk Zangarmarsh Flame Keeper##25947
accept Honor the Flame##11863 |goto Zangarmarsh/0 35.44,51.61
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11758 |goto 68.63,52.31
step
talk Nagrand Flame Keeper##25937
accept Honor the Flame##11854 |goto Nagrand/0 50.91,34.14
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11750 |goto 49.72,69.61
step
talk Terokkar Forest Flame Keeper##25942
accept Honor the Flame##11858 |goto Terokkar Forest/0 52.03,42.93
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11754 |goto 54.18,55.42
step
talk Shadowmoon Valley Flame Keeper##25938
accept Honor the Flame##11855 |goto Shadowmoon Valley/0 33.40,30.53
step
click Alliance Bonfire##194036
|tip Completing this will flag you for PvP combat for five minutes.
accept Desecrate this Fire!##11752 |goto 39.65,54.37
]])
