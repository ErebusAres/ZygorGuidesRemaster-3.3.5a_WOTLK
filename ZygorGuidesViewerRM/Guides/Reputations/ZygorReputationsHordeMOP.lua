local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Chee Chee",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Chee Chee after completing the Tillers prequests.
'Becoming _Best Friends_ with Chee Chee rewards you with _Chee Chee's Goodie Bag_, which contains leather and cloth, and he also gives you a _Sheep_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Chee Chee##58709
step
label tillers
#include "tillers_prequests"
step
label menu
'_Chee Chee_ is a _Stranger_ to you. |only if rep("Chee Chee")<=Stranger
'_Chee Chee_ is your _Aquaintance_. |only if rep("Chee Chee")==Aquaintance
'_Chee Chee_ is your _Buddy_. |only if rep("Chee Chee")==Buddy
'_Chee Chee_ is your _Friend_. |only if rep("Chee Chee")==Friend
'_Chee Chee_ is your _Good Friend_. |only if rep("Chee Chee")==GoodFriend
'_Chee Chee_ is your _Best Friend_. |only if rep("Chee Chee")==BestFriend
._ |only if rep("Chee Chee")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Chee Chee")<BestFriend
.'_ |only if rep("Chee Chee")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Chee Chee")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Chee Chee")==BestFriend
|confirm |next "end" |only if rep("Chee Chee")==BestFriend
|modelnpc Chee Chee##58709
step
label cooking
.' In order to create Chee Chee's favorite meal, you must have at least 555 skill points in _Way of the Wok_ Cooking.
.' Click here to continue |confirm |next stir_fry
.' Click here to go back to the menu |confirm |next menu
|modelnpc Chee Chee##58709
step
label	stir_fry
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Valley Stir Fry##104302
step
#include "auctioneer"
.buy 25 Reef Octopus##74864
.buy 25 Wildfowl Breast##74839
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_stir_fry_1
|tip You should at least have 525 fishing for this.
step
label	farm_stir_fry_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
.collect 25 Reef Octopus##74864
step
'Skipping farming |next "+create_stir_fry" |only if step:Find("+farm_stir_fry_2"):IsComplete()
'Proceeding to Valley Stir Fry |next |only if default
step
label	farm_stir_fry_2
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 25 Wildfowl Breast##74839
|next create_stir_fry
step
label	create_stir_fry
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Valley Stir Fry##74647,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Blue Feather##79265
|next "turnin2"
step
label turnin1
goto Valley of the Four Winds 34.4,46.7
.talk 58709
..turnin 30402 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Chee Chee |confirm |next cooking
.' You can also find Chee Chee in Halfhill at [53.0,52.0]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
.' Click here if Chee Chee is not in this location. |next altturnin1
step
label turnin2
goto Valley of the Four Winds 34.4,46.7
.talk 58709
..turnin 30400 |tip Keep turning this in until you reach the next status.
.' You can also find Chee Chee in Halfhill at [53.0,52.0]
|next "quest1" |only if rep("Chee Chee")==Buddy
|next "quest2" |only if rep("Chee Chee")==Friend
|next "quest3" |only if rep("Chee Chee")==GoodFriend
|next "menu" |only if default
.' Click here if Chee Chee is not in this location. |next altturnin2
step
quest1
goto 34.4,46.7
.talk 58709
..accept 31338
step
quest2
goto 34.4,46.7
.talk 58709
..accept 31339
step
quest3
goto 34.4,46.7
.talk 58709
..accept 31340
step
goto 34.4,46.7
.talk 58709
..accept A Wolf In Sheep's Clothing
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Ella",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Ella after completing the Tillers prequests.
'Becoming _Best Friends_ with Ella rewards you with a _Tree Seed Pack_, which contains Blossom Seeds, and she also gives you a _Cat_ to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Ella##58647
step
label tillers
#include "tillers_prequests"
step
label menu
'_Ella_ is a _Stranger_ to you. |only if rep("Ella")<=Stranger
'_Ella_ is your _Aquaintance_. |only if rep("Ella")==Aquaintance
'_Ella_ is your _Buddy_. |only if rep("Ella")==Buddy
'_Ella_ is your _Friend_. |only if rep("Ella")==Friend
'_Ella_ is your _Good Friend_. |only if rep ("Ella")==GoodFriend
'_Ella_ is your _Best Friend_. |only if rep("Ella")==BestFriend
._ |only if rep("Ella")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Ella")<BestFriend
.'_ |only if rep("Ella")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Ella")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Ella")==BestFriend
|confirm |next "end" |only if rep("Ella")==BestFriend
|modelnpc Ella##58647
step
label cooking
.' In order to create Ella's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next shrimp_dump
.' Click here to go back to the menu |confirm |next menu
|modelnpc Ella##58647
step
label	shrimp_dump
goto Valley of the Four Winds 52.5,51.8
.talk 58715
.learn Shrimp Dumplings##104307
step
#include "auctioneer"
.buy 25 Giant Mantis Shrimp##74857
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_shrimp_dump_1
|tip You should at least have 525 fishing for this.
step
label	farm_shrimp_dump_1
goto Krasarang Wilds 67.9,49.6
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 25 Giant Mantis Shrimp##74857
step
label	create_shrimp_dump
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Shrimp Dumpling##104307,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Jade Cat##79266
|next turnin2
step
label turnin1
goto Valley of the Four Winds 31.5,58.1
.talk 58647
..turnin 30386 |tip You can only turn this quest in once a day.
.' You can also find Chee Chee in Halfhill at [53.0,51.6]
.' Click here to be taken back to the beginning of the Cooking Dailies for Ella |confirm |next cooking
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
|next "menu" |only if default
.' Click here if Ella is not in this location. |next altturnin1
step
label turnin2
goto Valley of the Four Winds 31.5,58.1
.talk 58647
..turnin 30381 |tip Keep turning this in until you reach Buddy Status.
.' You can also find Chee Chee in Halfhill at [53.0,51.6]
|next quest1 |only if rep("Ella")==Buddy
|next quest2 |only if rep("Ella")==Friend
|next quest3 |only if rep("Ella")==GoodFriend
|next "menu" |only if default
.' Click here if Ella is not in this location. |next altturnin2
step
quest1
goto 31.5,58.1
.talk 58647
..accept 31534
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
goto Valley of the Four Winds 48.2,33.9
.talk 57298
.' Ask him for a Red Radish
.collect 1 Red Radish##87553 |q 31534/1
step
goto Valley of the Four Winds 44.6,34.0
.talk 57402
.' Ask her for a Sweet Lakelemon
.collect 1 Sweet Lakelemon##87554 |q 31534/2
step
goto Valley of the Four Winds 53.2,51.6
.talk 58706
.' Ask her for a Fuzzy Peach
.collect 1 Black Cherries##87555 |q 31534/3
step
goto Valley of the Four Winds 41.7,30.1
.talk 58705
.' Ask her for Black Cherries
.collect 1 Black Cherries##87556 |q 31534/4
step
goto 31.5,58.1
.talk 58647
..turnin 31534
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
quest2
goto Valley of the Four Winds 31.5,58.1
.talk 58647
..accept 31537
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
goto Valley of the Four Winds 53.5,52.6
.' Use _Ella's Brew_ on _Jogu the Drunk_ |use Ella's Brew##87558
.' Have Jogu the Drunk try Ella's Brew |q 31537/1
|modelnpc Jogu the Drunk##58710
step
goto Valley of the Four Winds 53.0,52.0
.' Use _Ella's Brew_ on _Bobo Ironpaw_ |use Ella's Brew##87558
.' Have Bobo Ironpaw try Ella's Brew |q 31537/2
|modelnpc Bobo Ironpaw##58717
step
goto Valley of the Four Winds 52.0,48.0
.' Use _Ella's Brew_ on _Farmer Yoon_ |use Ella's Brew##87558
.' Have Farmer Yoon try Ella's Brew |q 31537/3
|modelnpc Farmer Yoon##58646
step
goto Valley of the Four Winds 54.6,47.0
.' Use _Ella's Brew_ on _Nana Mudclaw_ |use Ella's Brew##87558
.' Have Nana Mudclaw try Ella's Brew |q 31537/4
|modelnpc Nana Mudclaw##64597
step
goto Valley of the Four Winds 31.5,58.1
.talk 58647
..turnin 31537
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
quest3
goto 31.5,58.1
.talk 58647
..accept 31538
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
step
goto Valley of the Four Winds/0 55.1,50.4
.' Use _Ella's Brew_ on _Chen Stormstout_ |use Ella's Brew##87763
.' Have Chen Stormstout try Ella's Brew |q 31537/4
|modelnpc Chen Stormstout##64946
step
goto 31.5,58.1
.talk 58647
..turnin 31538
.' If Ella is not here, you can find her at [53.0,51.6] in Halfhill.
|next "menu"
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Fish Fellreed",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Fish Fellreed after completing the Tillers prequests.
'Becoming _Best Friends_ with Fish Fellreed rewards you with a _Special Seed Pack_, which contains Profession Seeds.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Fish Fellreed##58705
step
label tillers
#include "tillers_prequests"
step
label menu
'_Fish Fellreed_ is a _Stranger_ to you. |only if rep("Fish Fellreed")<=Stranger
'_Fish Fellreed_ is your _Aquaintance_. |only if rep("Fish Fellreed")==Aquaintance
'_Fish Fellreed_ is your _Buddy_. |only if rep("Fish Fellreed")==Buddy
'_Fish Fellreed_ is your _Friend_. |only if rep("Fish Fellreed")==Friend
'_Fish Fellreed_ is your _Good Friend_. |only if rep("Fish Fellreed")==GoodFriend
'_Fish Fellreed_ is your _Best Friend_. |only if rep("Fish Fellreed")==BestFriend
._ |only if rep("Fish Fellreed")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Fish Fellreed")<BestFriend
.'_ |only if rep("Fish Fellreed")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Fish Fellreed")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Fish Fellreed")==BestFriend
|confirm |next "end" |only if rep("Fish Fellreed")==BestFriend
|modelnpc Fish Fellreed##58705
step
label cooking
.' In order to create Fish Fellreed's favorite meal, you must have at least 550 skill points in _Way of the Oven_ Cooking.
.' Click here to continue |confirm |next twin_fish
.' Click here to go back to the menu |confirm |next menu
|modelnpc Fish Fellreed##58705
step
label	twin_fish
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Twin Fish Platter##104311
step
#include "auctioneer"
.buy 10 Krasarang Paddlefish##74865 |next create_twin_fish |or
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_twin_fish_1 |or
|tip You should at least have 525 fishing for this.
step
label	farm_twin_fish_1
map Krasarang Wilds
path loose; loop; curved
path	37.4,35.2	42.9,38.7	43.4,46.0
path	38.0,42.3	34.1,38.4	30.3,33.8
.' Follow this river and use your fishing ability to catch Krasarang Paddlefish
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.collect 10 Krasarang Paddlefish##74865
step
label	create_twin_fish
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Twin Fish Platter##104311,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Jade Cat##79266
|next turnin2
step
label turnin1
goto Valley of the Four Winds 41.7,30.1
.talk 58705
..turnin 30427 |tip You can only turn this quest in once a day.
.' You can also find Fish Fellreed in Halfhill at [53.0,51.6]
.' Click here to be taken back to the beginning of the Cooking Dailies for Fish Fellreed |confirm |next cooking
.' Click here if Fish Fellreed is not in this location. |next "altturnin1"
.' Click here to be taken back to the beginning of this guide. |confirm |next "menu"
step
label turnin2
goto Valley of the Four Winds 41.7,30.1
.talk 58705
..turnin 30424 |tip Keep turning this in until you reach Best Friend Status.
.' You can also find Fish Fellreed in Halfhill at [52.8,51.8]
.' Click here if Fish Fellreed is not in this location. |next "altturnin2"
.' Click here to be taken back to the beginning of this guide. |confirm |next "menu"
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Gina Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Gina Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Gina Mudclaw rewards you with _Celebration Gift_, which contains fireworks, and she also gives you access to a mailbox on Halfhill.
|confirm
|next "menu" |only if completedq(30257)
|modelnpc Gina Mudclaw##58706
step
label tillers
#include "tillers_prequests"
step
label menu
'_Gina Mudclaw_ is a _Stranger_ to you. |only if rep("Gina Mudclaw")<=Stranger
'_Gina Mudclaw_ is your _Aquaintance_. |only if rep("Gina Mudclaw")==Aquaintance
'_Gina Mudclaw_ is your _Buddy_. |only if rep("Gina Mudclaw")==Buddy
'_Gina Mudclaw_ is your _Friend_. |only if rep("Gina Mudclaw")==Friend
'_Gina Mudclaw_ is your _Good Friend_. |only if rep("Gina Mudclaw")==GoodFriend
'_Gina Mudclaw_ is your _Best Friend_. |only if rep("Gina Mudclaw")==BestFriend
._ |only if rep("Gina Mudclaw")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Gina Mudclaw")<BestFriend
.'_ |only if rep("Gina Mudclaw")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Gina Mudclaw")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Gina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Gina Mudclaw")==BestFriend
|modelnpc Gina Mudclaw##58706
step
label cooking
.' In order to create Gina Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next mist_soup
.' Click here to go back to the menu |confirm |next menu
|modelnpc Gina Mudclaw##58706
step
label	mist_soup
goto Valley of the Four Winds 52.7,52.0
.talk 58713
.learn Swirling Mist Soup##104304
step
#include "auctioneer"
.buy 5 Jade Lungfish##74856
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_mist_soup_1
|tip You should at least have 525 fishing for this.
step
label	farm_mist_soup_1
goto The Jade Forest 23.6,25.6
.' Equip your Fishing Pole if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can also look for fishing pools around the beach |cast Fishing##7620
.collect 5 Jade Lungfish##74856
step
label	create_mist_soup
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Swirling Mist Soup##104304,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 44 Blue Feather##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 53.2,51.6
.talk 58706
..turnin 30390 |tip You can only turn this quest in 5 times a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Gina Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 53.2,51.6
.talk 58706
..turnin 30389 |tip Keep turning this in until you reach Best Friend Status.
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Haohan Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Haohan Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Haohan Mudclaw rewards you with three _Songbell Seeds_, and a mushan pet to decorate your farm with.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Haohan Mudclaw_ is a _Stranger_ to you. |only if rep("Haohan Mudclaw")<=Stranger
'_Haohan Mudclaw_ is your _Aquaintance_. |only if rep("Haohan Mudclaw")==Aquaintance
'_Haohan Mudclaw_ is your _Buddy_. |only if rep("Haohan Mudclaw")==Buddy
'_Haohan Mudclaw_ is your _Friend_. |only if rep("Haohan Mudclaw")==Friend
'_Haohan Mudclaw_ is your _Best Friend_. |only if rep("Haohan Mudclaw")==BestFriend
._ |only if rep("Haohan Mudclaw")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Haohan Mudclaw")<BestFriend
.'_ |only if rep("Haohan Mudclaw")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Haohan Mudclaw")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Haohan Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Haohan Mudclaw")==BestFriend
|modelnpc Haohan Mudclaw##59594
step
label cooking
.' In order to create Haohan Mudclaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next tiger_steak
.' Click here to go back to the menu |confirm |next menu
step
label	tiger_steak
goto Valley of the Four Winds 53.0,51.4
.talk 58712
.learn Charbroiled Tiger Steak##104298
step
#include "auctioneer"
.buy 5 Raw Tiger Steak##74833
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_tiger_steak_1
step
label	farm_tiger_steak_1
goto The Jade Forest 62.5,24.3
.from Windward Tiger##63537+
.collect 5 Raw Tiger Steak##74833
step
label	create_tiger_steak
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Charbroiled Tiger Steak##104298,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Ruby Shard##79264
|next turnin2
step
label turnin1
goto Valley of the Four Winds 44.6,34.0
.talk 57402
..turnin 30414 |tip You can only turn this quest in once a day.
.' You can also find Haohan in Halfhill at [53.0,51.6]
.' Click here to be taken back to the beginning of the Cooking Dailies for Haohan Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 44.6,34.1
.talk 57402
..turnin 30409 |tip Keep turning this in until you reach Best Friend Status.
.' You can also find Haohan in Halfhill at [53.0,51.6]
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Jogu the Drunk",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Jogu the Drunk after completing the Tillers prequests.
'Becoming _Best Friends_ with Jogu the Drunk rewards you with a _Secret Stash_, which contains alcohol, and he will no longer charge for crop predictions.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Jogu the Drunk_ is a _Stranger_ to you. |only if rep("Jogu the Drunk")<=Stranger
'_Jogu the Drunk_ is your _Aquaintance_. |only if rep("Jogu the Drunk")==Aquaintance
'_Jogu the Drunk_ is your _Buddy_. |only if rep("Jogu the Drunk")==Buddy
'_Jogu the Drunk_ is your _Friend_. |only if rep("Jogu the Drunk")==Friend
'_Jogu the Drunk_ is your _Best Friend_. |only if rep("Jogu the Drunk")==BestFriend
._ |only if rep("Jogu the Drunk")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Jogu the Drunk")<BestFriend
.'_ |only if rep("Jogu the Drunk")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Jogu the Drunk")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Jogu the Drunk")==BestFriend
|confirm |next "end" |only if rep("Jogu the Drunk")==BestFriend
|modelnpc Jogu the Drunk##58710
step
label cooking
.' In order to create Jogu the Drunk's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next carrots
.' Click here to go back to the menu |confirm |next menu
step
label	carrots
goto Valley of the Four Winds 52.8,51.8
.talk 58713
.learn Sauteed Carrots##104301
step
#include "auctioneer"
.buy 10 Juicycrunch Carrot##74841
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_carrots_1
step
label	farm_carrots_1
goto The Jade Forest 62.5,24.3
.from Windward Tiger##63537+
.collect 10 Juicycrunch Carrot##74841
step
label	create_carrots
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Sauteed Carrots##104301,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 30 Lovely Apple##79267
|next turnin2
step
label turnin1
goto Valley of the Four Winds 53.5,52.6
.talk 58710
..turnin 30439 |tip You can only turn this quest in once a day.
.' Click here to be taken back to the beginning of the Cooking Dailies for Jogu the Drunk |confirm |next cooking
|next quest1 |only if rep("Jogu the Drunk")==Aquaintance
|next quest2 |only if rep("Jogu the Drunk")==Buddy
|next quest3 |only if rep("Jogu the Drunk")==Friend
|next quest4 |only if rep("Jogu the Drunk")==GoodFriend
step
label turnin2
goto Valley of the Four Winds 53.5,52.6
.talk 58710
..turnin 30435 |tip Keep turning this in until you reach the next friendship status.
|next quest1 |only if rep("Jogu the Drunk")==Aquaintance
|next quest2 |only if rep("Jogu the Drunk")==Buddy
|next quest3 |only if rep("Jogu the Drunk")==Friend
|next quest4 |only if rep("Jogu the Drunk")==GoodFriend
step
quest1
goto 53.5,52.6
.talk 58710
..accept 31320
step
goto 54.8,50.6
.talk 64319
.buy 1 Four Wind Soju##81407 |q 31320/1
step
goto 53.5,52.6
.talk 58710
..turnin 31320
step
quest2
goto 53.5,52.6
.talk 58710
..accept 31321
step
goto 54.8,50.6
.talk 64319
.buy 5 Plum Wine##81415 |q 31321/1
step
goto 53.5,52.6
.talk 58710
..turnin 31321
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Farmer Fung",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Farmer Fung after completing the Tillers prequests.
'Becoming _Best Friends_ with Farmer Fung rewards you with an _Enigma Seed_, which blooms into a random plant, and _Shaggy the Prize Yak_ for your farm
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Farmer Fung_ is a _Stranger_ to you. |only if rep("Farmer Fung")<=Stranger
'_Farmer Fung_ is your _Aquaintance_. |only if rep("Farmer Fung")==Aquaintance
'_Farmer Fung_ is your _Buddy_. |only if rep("Farmer Fung")==Buddy
'_Farmer Fung_ is your _Friend_. |only if rep("Farmer Fung")==Friend
'_Farmer Fung_ is your _Best Friend_. |only if rep("Farmer Fung")==BestFriend
._ |only if rep("Farmer Fung")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Farmer Fung")<BestFriend
.'_ |only if rep("Farmer Fung")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Farmer Fung")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Farmer Fung")==BestFriend
|confirm |next "end" |only if rep("Farmer Fung")==BestFriend
|modelnpc Farmer Fung##57298
step
label cooking
.' In order to create Farmer Fung's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next wild_roast
.' Click here to go back to the menu |confirm |next menu
step
label	wild_roast
goto Valley of the Four Winds 53.4,51.6
.talk 58716
.learn Wildfowl Roast##104310
step
#include "auctioneer"
.buy 5 Wildfowl Breast##74839
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_wild_roast_1
step
label	farm_wild_roast_1
goto Krasarang Wilds 64.6,29.3
.from Carp Hunter##58116+
.collect 5 Wildfowl Breast##74839
step
label	create_wild_roast
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Wildfowl Roast##104310,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Marsh Lily##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 48.2,33.9
.talk 57298
..turnin 30421 |tip You can only turn this quest in once a day.
.' You can also find Farmer Fung in Halfhill at [52.8,51.6]
.' Click here to be taken back to the beginning of the Cooking Dailies for Farmer Fung |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 48.2,33.9
.talk 57298
..turnin 30420 |tip Keep turning this in until you reach Best Friend status.
.' You can also find Farmer Fung in Halfhill at [52.8,51.6]
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Old Hillpaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Old Hillpaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Old Hillpaw rewards you with a _Straw Hat_ and _Chickens_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
|modeldisplay Old Hillpaw##40249
step
label tillers
#include "tillers_prequests"
step
label menu
'_Old Hillpaw_ is a _Stranger_ to you. |only if rep("Old Hillpaw")<=Stranger
'_Old Hillpaw_ is your _Aquaintance_. |only if rep("Old Hillpaw")==Aquaintance
'_Old Hillpaw_ is your _Buddy_. |only if rep("Old Hillpaw")==Buddy
'_Old Hillpaw_ is your _Friend_. |only if rep("Old Hillpaw")==Friend
'_Old Hillpaw_ is your _Best Friend_. |only if rep("Old Hillpaw")==BestFriend
._ |only if rep("Old Hillpaw")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Old Hillpaw")<BestFriend
.'_ |only if rep("Old Hillpaw")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Old Hillpaw")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Old Hillpaw")==BestFriend
|confirm |next "end" |only if rep("Old Hillpaw")==BestFriend
|modelnpc Old Hillpaw##58707
step
label cooking
.' In order to create Old Hillpaw's favorite meal, you must have at least 525 skill points in Cooking.
.' Click here to continue |confirm |next turtle
.' Click here to go back to the menu |confirm |next menu
step
label	turtle
goto Valley of the Four Winds 52.6,51.6
.talk 58714
.learn Braised Turtle##104305
step
#include "auctioneer"
.buy 5 Raw Turtle Meat##74837
.buy 25 Juicycrunch Carrot##74841
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_turtle_1
step
label	farm_turtle_1
goto Valley of the Four Winds 67.3,29.4
.from Wyrmhorn Turtle##56256+
.collect 5 Raw Turtle Meat##74837
step
label	farm_turtle_2
goto Valley of the Four Winds 86.5,28.5
.from Snagtooth Hooligan##56462+
.collect 25 Juicycrunch Carrot##74841
step
label	create_turtle
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create 5 Braised Turtle##104305,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Bluie Feather##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 31.0,53.1
.talk 58707
..turnin 30396 |tip You can only turn this quest in once a day.
.' You can also find Old Hillpaw in Halfhill at [53.0,51.8]
.' Click here to be taken back to the beginning of the Cooking Dailies for Old Hillpaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 31.0,53.1
.talk 58707
..turnin 30394 |tip Keep turning this in until you reach Best Friend status.
.' You can also find Old Hillpaw in Halfhill at [53.0,51.8]
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Sho",[[
description This guide will help you get BestFriend with the individuals in MoP
achieveid 6551
step
'You can only start earning reputation with Sho after completing the Tillers prequests.
'Becoming _Best Friends_ with Sho rewards you with a _Red Cricket_ Battle Pet and an _Orange Tree_ for your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Sho_ is a _Stranger_ to you. |only if rep("Sho")<=Stranger
'_Sho_ is your _Aquaintance_. |only if rep("Sho")==Aquaintance
'_Sho_ is your _Buddy_. |only if rep("Sho")==Buddy
'_Sho_ is your _Friend_. |only if rep("Sho")==Friend
'_Sho_ is your _Best Friend_. |only if rep("Sho")==BestFriend
._ |only if rep("Sho")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Sho")<BestFriend
.'_ |only if rep("Sho")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Sho")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Sho")==BestFriend
|confirm |next "end" |only if rep("Sho")==BestFriend
|modelnpc Sho##58708
step
label cooking
.' In order to create Sho's favorite meal, you must have at least 550 skill points in Cooking.
.' Click here to continue |confirm |next eternal_blossom
.' Click here to go back to the menu |confirm |next menu
step
label	eternal_blossom
goto Valley of the Four Winds 53.0,51.4
.talk 58712
.learn Eternal Blossom Fish##104299
step
#include "auctioneer"
.buy 5 Jade Lungfish##74856
.buy 25 Striped Melon##74848
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_eternal_blossom_1
|tip You should at least have 525 fishing for this.
step
label	farm_eternal_blossom_1
goto The Jade Forest 55.0,71.1
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. Look for Schools of fish to increase your chance of catching Jade Lungfish |cast Fishing##7620
.collect 5 Jade Lungfish##74856
step
'Skipping farming |next "+create_eternal_blossom" |only if step:Find("+farm_eternal_blossom_2"):IsComplete()
'Proceeding to Eternal Blossom Fish |next |only if default
step
label	farm_eternal_blossom_2
goto The Jade Forest 53.9,81.4
.from Slingtail Treeleaper##61562+
.collect 25 Striped Melon##74848
step
label	create_eternal_blossom
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Eternal Blossom Fish##104299,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 43 Lovely Apple##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 29.5,30.6
.talk 58708
..turnin 30408 |tip You can only turn this quest in once a day.
.' You can also find Sho in Halfhill at [53.0,52.0]
.' Click here to be taken back to the beginning of the Cooking Dailies for Sho |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 29.5,30.6
.talk 58708
..turnin 30404 |tip Keep turning this in until you reach Best Friend status.
.' You can also find Sho in Halfhill at [53.0,52.0]
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Tina Mudclaw",[[
description This guide will help you get BestFriend with the individuals in MoP
step
'You can only start earning reputation with Tina Mudclaw after completing the Tillers prequests.
'Becoming _Best Friends_ with Tina Mudclaw rewards you by sending _Food_ and _Furniture_ to your farm.
|confirm
|next "menu" |only if completedq(30257)
step
label tillers
#include "tillers_prequests"
step
label menu
'_Tina Mudclaw_ is a _Stranger_ to you. |only if rep("Tina Mudclaw")<=Stranger
'_Tina Mudclaw_ is your _Aquaintance_. |only if rep("Tina Mudclaw")==Aquaintance
'_Tina Mudclaw_ is your _Buddy_. |only if rep("Tina Mudclaw")==Buddy
'_Tina Mudclaw_ is your _Friend_. |only if rep("Tina Mudclaw")==Friend
'_Tina Mudclaw_ is your _Best Friend_. |only if rep("Tina Mudclaw")==BestFriend
._ |only if rep("Tina Mudclaw")<BestFriend
.' Click here to use _Cooking_ to raise your reputation. |confirm |next cooking |only if rep("Tina Mudclaw")<BestFriend
.'_ |only if rep("Tina Mudclaw")<BestFriend
.' Click here to gather gifts to raise your reputation. |confirm |next gifts |only if rep("Tina Mudclaw")<BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Tina Mudclaw")==BestFriend
|confirm |next "end" |only if rep("Tina Mudclaw")==BestFriend
|modelnpc Tina Mudclaw##58761
step
label cooking
.' In order to create Tina Mudclaw's favorite meal, you must have at least 550 skill points in Cooking.
.' Click here to continue |confirm |next fire_spirit
.' Click here to go back to the menu |confirm |next menu
step
label	fire_spirit
goto Valley of the Four Winds 52.5,51.7
.talk 58715
.learn Fire Spirit Salmon##104308
step
#include "auctioneer"
.buy 5 Emperor Salmon##74859
.buy 25 Scallions##74843
.' Or
.' Click here to farm the ingredients yourself |confirm |next farm_fire_spirit_1
|tip You should at least have 525 fishing for this.
step
label	farm_fire_spirit_1
goto Krasarang Wilds 37.4,35.2
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also |cast Fishing##7620
.collect 5 Emperor Salmon##74859
step
label	farm_fire_spirit_2
goto Krasarang Wilds 62.0,40.6
.from Riverblade Raider##59714+, Riverblade Thief##64034+
.collect 25 Scallions##74843
|next create_fire_spirit
step
label	create_fire_spirit
.' Stand next to a fire, or create one yourself |cast Cooking fire##818
.create Fire Spirit Salmon##104308,Cooking,5 total
|next turnin1
step
label gifts
.' When running around gathering these, keep in mind that there is no way to track them. You will have to keep an eye out along this path and spot them.
map Valley of the Four Winds
path	32.8,49.8	34.9,38.4
path	42.0,31.2	40.9,35.1	44.9,36.5
path	39.7,38.9	46.0,53.9	40.4,51.7
.click Dark Soil##210582
.collect 47 Ruby Shard##79268
|next turnin2
step
label turnin1
goto Valley of the Four Winds 45.0,33.8
.talk 58761
..turnin 30433 |tip You can only turn this quest in once a day.
.' You can also find Tina Mudclaw in Halfhill at [53.0,51.8]
.' Click here to be taken back to the beginning of the Cooking Dailies for Tina Mudclaw |confirm |next cooking
step
label turnin2
goto Valley of the Four Winds 45.0,33.8
.talk 58761
..turnin 30428 |tip Keep turning this in until you reach Best Friend status.
.' You can also find Tina Mudclaw in Halfhill at [53.0,51.8]
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Nat Pagle",[[
description This guide will help you get BestFriend with the individuals in MoP
achieveid 7274
step
label menu
'_Nat Pagle_ is a _Stranger_ to you. |only if rep("Nat Pagle")<=Stranger
'_Nat Pagle_ is your _Aquaintance_. |only if rep("Nat Pagle")==Aquaintance
'_Nat Pagle_ is your _Buddy_. |only if rep("Nat Pagle")==Buddy
'_Nat Pagle_ is your _Friend_. |only if rep("Nat Pagle")==Friend
'_Nat Pagle_ is your _Good Friend_. |only if rep("Nat Pagle")==GoodFriend
'_Nat Pagle_ is your _Best Friend_. |only if rep("Nat Pagle")==BestFriend
.' You have maxed out your reputation with this individual. Please select a different guide. |only if rep("Nat Pagle")==BestFriend
|confirm |next "end" |only if rep("Nat Pagle")==BestFriend
|modelnpc Nat Pagle##63721
|confirm |only if rep("Nat Pagle")<BestFriend
step
label menu2
'In order to successfully gain rep with Nat Pagle you have to catch fish, so we recommend that you are at least 525 in Fishing.
'The fish you catch in this guide are unique, meaning you can only have one of each in your bag at any given time.
|confirm
step
label menu3
'Click here to be taken to catch the _Flying Tiger Gourami_. |confirm |next tiger
.'_
'Click here to be taken to catch the _Mimic Octopus_. |confirm |next octo
.'_
'Click here to be taken to catch the _Spinefish Alpha_. |confirm |next alpha
.'_
'Click here to turn in the fish to Nat Pagle for daily reputation gains. |confirm |next turnin
step
label tiger
goto Krasarang Wilds 64.0,28.3
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the beach also. |cast Fishing##7620.
.collect 1 Flying Tiger Gourami##86542
..accept 31443 |use Flying Tiger Gourami##86542
|next menu3
step
label octo
goto Kun-Lai Summit 74.0,29.0
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the area to increase your chances. |cast Fishing##7620.
.collect 1 Mimic Octopus##86545
..accept 31446 |use Mimic Octopus##86545
|next menu3
step
label alpha
goto Kun-Lai Summit 72.5,86.4
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use your Fishing skill to fish in the water here. You can look for fishing pools around the area to increase your chances. |cast Fishing##7620.
.collect 1 Spinefish Alpha##86544
..accept 31444 |use Spinefish Alpha##86544
|next menu3
step
label turnin
goto Krasarang Wilds 68.4,43.5
.talk 63721
..turnin 31444
..turnin 31446
..turnin 31443
|next menu
step
label "end"
'You have reached the end of the guide.
.' Please click here to return to the beginning of the guide. |confirm |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Lorewalkers",[[
description This guide will help you become Exalted with the Lorewalkers.
description Becoming Exalted with the Lorewalkers allows you to purchase the Disc of the Red Flying Cloud Mount.
condition end achieved(6548)
step
goto Vale of Eternal Blossoms 68.8,44.3
.click The Emperor's Burden - Part 8##
.achieve The Seven Burdens of Shaohao##6855/8
step
goto Vale of Eternal Blossoms 52.9,68.6
.click Always Remember##
.achieve What is Worth Fighting For##6858/2
step
goto Vale of Eternal Blossoms 40.2,77.5
.click The Thunder King##
.achieve The Dark Heart of the Mogu##6754/4
step
goto Vale of Eternal Blossoms 26.6,21.5
.click Together, We Are Strong##
.achieve What is Worth Fighting For##6858/4
step
goto Townlong Steppes 84.1,72.9
.click Trapped in a Strange Land##
.achieve The Song of the Yaungol##6847/4
step
goto Townlong Steppes 65.4,50.0
.click Dominance##
.achieve The Song of the Yaungol##6847/2
step
goto Townlong Steppes 37.8,62.9
.click The Emperor's Burden - Part 5##
.achieve The Seven Burdens of Shaohao##6855/5
step
goto Dread Wastes 53.6,15.9 |n
.' Enter the cave here |goto 53.6,15.9
goto 52.5,10.1
.click Amber##
.achieve Heart of the Mantid Swarm##6857/3
step
goto Dread Wastes 35.5,32.6
.click The Empress##
.achieve Heart of the Mantid Swarm##6857/4
step
goto Dread Wastes 48.4,32.8
.click Cycle of the Mantid##
.achieve Heart of the Mantid Swarm##6857/1
step
goto Dread Wastes 59.9,55.1
.click Mantid Society##
.achieve Heart of the Mantid Swarm##6857/2
step
goto Dread Wastes 67.4,60.8
.click The Deserters##
.achieve Between a Saurok and a Hard Place##6716/3
step
goto Valley of the Four Winds 18.8,31.7
.click Pandaren Fighting Tactics##
.achieve What is Worth Fighting For##6858/1
step
goto Valley of the Four Winds 20.3,55.9
.click The Birthplace of Liu Lang##
.achieve Ballad of Liu Lang##6856/1
step
goto Valley of the Four Winds 34.6,63.9
.click The Wondering Widow##
.achieve Ballad of Liu Lang##6856/3
step
goto Krasarang Wilds 32.8,29.4
.click The Last Stand##213330
.achieve Between a Saurok and a Hard Place##6716/4
step
goto Krasarang Wilds 30.5,38.5
.click Origins##215782
.achieve Fish Tales##6846/3
step
goto Krasarang Wilds 40.4,51.7 |n
.' Enter the Temple here |goto 40.4,51.7
.' Go up the stairs |goto 41.2,55.8
goto 40.5,56.6
.click The Emperor's Burden - Part 4##213422
.achieve The Seven Burdens of Shaohao##6855/4
step
goto Krasarang Wilds 52.4,87.6
.' Enter the cave here |goto Krasarang Wilds 52.2,86.3
.click Hozen Maturity##211993
.achieve Hozen in the Mist##6850/2
step
goto Krasarang Wilds 51.0,31.7
.click The Lost Dynasty##213332
.achieve The Dark Heart of the Mogu##6754/2
step
goto Krasarang Wilds 72.2,31.1
.click Waiting for the Turtle##215765
.achieve Ballad of Liu Lang##6856/4
step
goto Valley of the Four Winds 55.1,47.2
.click A Most Famous Bill of Sale##
.achieve Ballad of Liu Lang##6856/2
step
goto Valley of the Four Winds 61.2,34.7
.click Waterspeakers##
.achieve Fish Tales##6846/2
step
goto Valley of the Four Winds 83.2,21.2
.click Embracing the Passion##
.achieve Hozen in the Mist##6850/3
step
goto Krasarang Wilds 78.8,11.1 |n
.' Follow the path up |goto 78.8,11.1
goto 81.4,11.5
.click Quan Tou Kuo the Two Fisted##213407
.achieve Legend of the Brewfathers##7230/1
step
goto The Jade Forest 66.0,87.6
.click Watersmithing##215779
.achieve Fish Tales##6846/1
step
goto The Jade Forest 55.9,56.8
.click The Emperor's Burden - Part 3##213421
.achieve The Seven Burdens of Shaohao##6855/3
step
goto The Jade Forest 47.1,45.2
.click The Emperor's Burden - Part 1##215799
.achieve The Seven Burdens of Shaohao##6855/1
step
goto The Jade Forest 67.7,29.4
.click The Saurok##213327
.achieve Between a Saurok and a Hard Place##6716/1
step
goto The Jade Forest 42.3,17.4
.click Spirit Binders##213333
.achieve The Dark Heart of the Mogu##6754/3
step
goto The Jade Forest 35.7,30.5
.click The First Monks##213415
.achieve What is Worth Fighting For##6858/3
step
goto The Jade Forest 37.3,30.1
.click Xin Wo Yin the Broken Hearted##213512
.achieve Legend of the Brewfathers##7230/2
step
goto The Jade Forest 26.4,28.4
.click Hozen Speech##211990
.achieve Hozen in the Mist##6850/1
step
goto The Veiled Stair/5 54.8,16.0
.click The Defiant##
.achieve Between a Saurok and a Hard Place##6716/2
step
goto Kun-Lai Summit 74.5,83.5
.click Role Call##
.achieve Fish Tales##6846/4
step
goto Kun-Lai Summit 71.7,63.0
.click Yaungoil##
.achieve The Song of the Yaungol##6847/3
step
goto Kun-Lai Summit 67.8,48.4
.click The Emperor's Burden - Part 6##
.achieve The Seven Burdens of Shaohao##6855/6
step
goto Kun-Lai Summit 63.0,40.8
.click Victory in Kun-Lai##
.achieve What is Worth Fighting For##6858/5
step
goto Kun-Lai Summit/17 58.2,70.5
'Enter the Temple here |goto 52.8,46.8
.click Valley of the Emperors##
.achieve The Dark Heart of the Mogu##6754/1
'Leave the Temple here |goto Kun-Lai Summit/17 87.8,55.4
step
goto Kun-Lai Summit 41.0,42.4
.click The Emperor's Burden - Part 7##
.achieve The Seven Burdens of Shaohao##6855/7
step
goto Kun-Lai Summit 43.8,51.2
.click The Emperor's Burden - Part 2##
.achieve The Seven Burdens of Shaohao##6855/2
step
goto Kun-Lai Summit 44.7,52.4
.click Ren Yun the Blind##
.achieve Legend of the Brewfathers##7230/3
step
goto Kun-Lai Summit 45.8,61.9
.click The Hozen Ravage##
.achieve Hozen in the Mist##6850/4
step
goto Kun-Lai Summit 50.3,79.3
.click Yaungol Tactics##
.achieve The Song of the Yaungol##6847/1
step
'Check your in-game mailbox for items from Lorewalker Cho
.collect 1 The Ballad of Liu Lang##83780 |future |q 31103
.collect 1 The Dark Heart of the Mogu##83772 |future |q 31095
.collect 1 The Song of the Yaungol##83777 |future |q 31100
.collect 1 Hozen in the Mist##83770 |future |q 31093
.collect 1 Heart of the Mantid Swarm##83773 |future |q 31097
.collect 1 The Seven Burdens of Shaohao##83779 |future |q 31102
.collect 1 What is Worth Fighting For##83774 |future |q 31096
.collect 1 Fish Tales##83771 |future |q 31094
'You will only be able to collect one of these last two.
.collect 1 Between a Saurok and a Hard Place##83076 |future |q 31055 |or
.collect 1 Between a Saurok and a Hard Place####83769 |future |q 31055 |or
step
'Use each item in your bags to accept the quests.
.accept 31103 |use The Ballad of Liu Lang##83780
.accept 31095 |use The Dark Heart of the Mogu##83772
.accept 31055 |use Between a Saurok and a Hard Place##83076
.accept 31100 |use The Song of the Yaungol##83777
.accept 31093 |use Hozen in the Mist##83770
.accept 31097 |use Heart of the Mantid Swarm##83773
.accept 31102 |use The Seven Burdens of Shaohao##83779
.accept 31096 |use What is Worth Fighting For##83774
.accept 31094 |use Fish Tales##83771
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31096
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31100
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31102
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31095
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31103
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31093
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31097
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31094
.' Watch his story, then click here |confirm always
step
goto Vale of Eternal Blossoms 83.2,29.7
.talk 61962
..turnin 31055
.' Watch his story, then click here |confirm always
step
'Congratulations, you are now Exalted with the Lorewalkers!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Anglers",[[
description This guide will take you through The Anglers dailies
description Becoming Exalted with The Anglers allows you to purchase a companion pet, fishing poles, and water mounts.
achieveid 6547,7614
startlevel 90
#include "H_Anglers"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The August Celestials",[[
description This guide will take you through The August Celestials dailies
description Becoming Exalted with The August Celestials allows you to purchase flying mounts and armor for your character.
achieveid 6543
startlevel 90
step
#include "August_Celestials"
step
label end
'This is the end of the current guide. Click here to go back to the beginning. |confirm |next "startaug"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Order of the Cloud Serpent",[[
description This guide will take you through the Order of the Cloud Serpent dailies
description Becoming Exalted with The Order of the Cloud Serpent allows you to purchase flying mounts and designs for companion pets.
achieveid 6550
startlevel 90
#include "H_Cloud_Serpent"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Shado-Pan",[[
description This guide will take you through the Shado-Pan dailies
description Becoming Exalted with The Shado-Pan allows you to purchase ground mounts and armor for your character.
achieveid 6366
startlevel 90
#include "Shado_Pan_Daily_H"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Tillers",[[
description This guide will take you through The Tillers dailies
description Becoming Exalted with The Tillers allows you to purchase ground mounts and recipes for your character.
achieveid 6544
startlevel 90
step
#include "H_Tillers"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Golden Lotus",[[
description This guide will take you through The Golden Lotus dailies
description Becoming Exalted with the Golden Lotus allows you to purchase a CC trinket with fun visuals, some armor for Justice Points, epic chests, rings, and shoulders for Valor Points, and ground mounts.
achieveid 7315,6546
startlevel 90
step
'Proceeding to Pre-Quests |next |only if default
'Proceeding to The Golden Lotus Dailies |next "dailies" |only if completedq(30638)
step
#include "Golden_Lotus_PreQuests"
step
label dailies
#include "Golden_Lotus"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Klaxxi",[[
description This guide will take you through The Klaxxi dailies
description Becoming Exalted with The Klaxxi allows you to purchase ground mounts, plans for blacksmithing, armor, and weapons for your character.
achieveid 6545
startlevel 90
#include "H_Klaxxi"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Dominance Offensive",[[
description This guide will take you through The Dominance Offensive dailies
description Becoming Exalted with the Dominance Offensive allows you to purchase an epic flying mount, epic armor, and battle pets for your character.
achieveid 7929
startlevel 90
#include "Dominance_Offensive"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Beast Master Dailies (Dominance Offensive)",[[
description This guide will take you through the bonus Dominance Offensive Dailies.
#include "Sturdy_Traps"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Sunreaver Onslaught Reputation",[[
description This guide will take you through The Sunreaver Onslaught dailies
startlevel 90
step
#include "Sunreavers_dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\The Golden Lotus",[[
description This guide will take you through The Golden Lotus dailies
description Becoming Exalted with the Golden Lotus allows you to purchase a CC trinket with fun visuals, some armor for Justice Points, epic chests, rings, and shoulders for Valor Points, and ground mounts.
achieveid 7315,6546
startlevel 90
step
'Routing to proper section |next "prequests" |only if not completedq(31511)
'Routing to proper section |next "dailies" |only if completedq(31511)
step
label "prequests"
#include "Golden_Lotus_PreQuests"
#include "Golden_Lotus"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Reputations Guides\\Mists of Pandaria\\Emperor Shaohao",[[
description This guide will help you reach Exalted with Emperor Shaohao
description Becoming Exalted with the Shaohao allows you to purchase a Flying Mount, Battle Pet, some Trinkets, and a Disguise
condition suggested level>=90
achieveid 8715
startlevel 90
#include "timeless_isle_prequests"
step
'From this point, you have to grind mobs to earn the remaining reputation with _Emperor Shaohao_.
|confirm
step
goto Timeless Isle 52.6,76.9
.from Ordon Fire-Watcher##72894+, Ordon Candlekeeper##72875+, Ordon Oathguard##72892+
|condition rep('Emperor Shaohao')==Exalted
step
'Congratulations, you are now _Exalted_ with _Emperor Shaohao_!
]])
