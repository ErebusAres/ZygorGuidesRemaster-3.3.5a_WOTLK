assert (ZygorGuidesViewer,"Zygor Guides Viewer not loaded properly!")

local AceHook = LibStub("AceHook-3.0")

local ZGV=ZygorGuidesViewer
local Foglight = {}
ZGV.Foglight = Foglight

Foglight.Debug = ZGV.Debug

Foglight.data = {
	-- Eastern
	['Alterac']={
		['CHILLWINDPOINT']={350,370,626,253},
		['CORRAHNSDAGGER']={195,288,399,380},
		['CRUSHRIDGEHOLD']={280,240,334,162},
		['DALARAN']={300,300,26,262},
		['DANDREDSFOLD']={285,230,276,0},
		['GALLOWSCORNER']={200,200,406,279},
		['GAVINSNAZE']={160,175,225,478},
		['GROWLESSCAVE']={190,170,317,372},
		['LORDAMEREINTERNMENTCAMP']={330,265,44,403},
		['MISTYSHORE']={220,280,196,131},
		['RUINSOFALTERAC']={255,255,270,197},
		['SOFERASNAZE']={255,320,462,307},
		['STRAHNBRAD']={370,300,549,105},
		['THEHEADLAND']={165,197,314,471},
		['THEUPLANDS']={235,200,462,77},
	},
	['AlteracValley']={
		['DUNBALDAR']={270,240,348,13},
		['FROSTWOLFKEEP']={235,290,399,375},
		['ICEBLOODGARRISON']={300,300,335,172},
	},
	['Arathi']={
		['BOULDERFISTHALL']={215,235,432,362},
		['BOULDERGOR']={245,245,232,145},
		['CIRCLEOFEASTBINDING']={160,230,558,112},
		['CIRCLEOFINNERBINDING']={210,185,286,310},
		['CIRCLEOFOUTERBINDING']={170,155,419,293},
		['CIRCLEOFWESTBINDING']={190,210,138,54},
		['DABYRIESFARMSTEAD']={180,210,472,165},
		['FALDIRSCOVE']={256,215,171,424},
		['GOSHEKFARM']={230,195,531,276},
		['HAMMERFALL']={205,250,655,120},
		['NORTHFOLDMANOR']={230,240,192,90},
		['REFUGEPOINT']={175,225,370,186},
		['STROMGARDEKEEP']={240,230,108,287},
		['THANDOLSPAN']={200,220,355,412},
		['THORADINSWALL']={190,240,87,138},
		['WITHERBARKVILLAGE']={215,210,559,333},
	},
	['Badlands']={
		['AGMONDSEND']={265,270,345,389},
		['ANGORFORTRESS']={195,200,325,148},
		['APOCRYPHANSREST']={256,256,17,310},
		['CAMPBOFF']={255,280,501,341},
		['CAMPCAGG']={256,256,12,428},
		['CAMPKOSH']={220,220,551,48},
		['DUSTWINDGULCH']={245,205,498,209},
		['HAMMERTOESDIGSITE']={200,195,445,120},
		['KARGATH']={256,256,0,148},
		['LETHLORRAVINE']={370,455,611,110},
		['MIRAGEFLATS']={256,256,148,384},
		['THEDUSTBOWL']={270,275,159,199},
		['THEMAKERSTERRACE']={245,205,389,7},
		['VALLEYOFFANGS']={230,230,349,256},
	},
	['BlastedLands']={
		['ALTAROFSTORMS']={185,155,310,133},
		['DARKPORTAL']={265,220,453,259},
		['DREADMAULHOLD']={195,180,361,15},
		['DREADMAULPOST']={245,195,361,195},
		['GARRISONARMORY']={170,200,472,9},
		['NETHERGARDEKEEP']={185,190,559,30},
		['RISEOFTHEDEFILER']={170,145,405,123},
		['SERPENTSCOIL']={225,170,501,140},
		['THETAINTEDSCAR']={384,450,212,178},
	},
	['BurningSteppes']={
		['ALTAROFSTORMS']={225,220,36,109},
		['BLACKROCKMOUNTAIN']={256,280,173,101},
		['BLACKROCKPASS']={270,310,589,279},
		['BLACKROCKSTRONGHOLD']={245,265,334,114},
		['DRACODAR']={415,315,56,258},
		['DREADMAULROCK']={220,225,707,168},
		['MORGANSVIGIL']={294,270,708,311},
		['PILLAROFASH']={320,270,377,285},
		['RUINSOFTHAURISSAN']={270,285,513,99},
		['TERRORWINGPATH']={280,355,722,46},
	},
	['DeadwindPass']={
		['DEADMANSCROSSING']={380,365,249,76},
		['KARAZHAN']={300,245,269,337},
		['THEVICE']={270,270,426,299},
	},
	['DunMorogh']={
		['AMBERSTILLRANCH']={128,128,573,280},
		['ANVILMAR']={240,185,155,403},
		['BREWNALLVILLAGE']={115,115,252,249},
		['CHILLBREEZEVALLEY']={180,128,274,296},
		['COLDRIDGEPASS']={150,128,295,385},
		['FROSTMANEHOLD']={125,125,217,287},
		['GNOMERAGON']={180,165,166,184},
		['GOLBOLARQUARRY']={165,165,608,291},
		['HELMSBEDLAKE']={155,170,694,273},
		['ICEFLOWLAKE']={128,180,281,167},
		['IRONFORGE']={315,200,397,163},
		['KHARANOS']={200,200,386,294},
		['MISTYPINEREFUGE']={128,165,502,221},
		['NORTHERNGATEOUTPOST']={128,165,759,173},
		['SHIMMERRIDGE']={128,190,347,163},
		['SOUTHERNGATEOUTPOST']={128,120,792,279},
		['THEGRIZZLEDDEN']={200,185,314,311},
		['THETUNDRIDHILLS']={155,128,522,322},
	},
	['Duskwood']={
		['ADDLESSTEAD']={275,250,55,342},
		['BRIGHTWOODGROVE']={220,340,504,117},
		['DARKSHIRE']={315,280,631,162},
		['MANORMISTMANTLE']={200,175,653,120},
		['RAVENHILL']={195,145,102,302},
		['RAVENHILLCEMETARY']={350,300,85,149},
		['THEDARKENEDBANK']={910,210,89,31},
		['THEHUSHEDBANK']={160,330,19,132},
		['THEROTTINGORCHARD']={250,230,539,369},
		['THEYORGENFARMSTEAD']={235,250,390,382},
		['TRANQUILGARDENSCEMETARY']={220,220,690,353},
		['TWILIGHTGROVE']={360,420,298,79},
		['VULGOLOGREMOUND']={255,285,243,348},
	},
	['EasternPlaguelands']={
		['BLACKWOODLAKE']={256,256,412,177},
		['CORINSCROSSING']={256,256,471,345},
		['CROWNGUARDTOWER']={256,256,261,379},
		['DARROWSHIRE']={256,179,279,467},
		['EASTWALLTOWER']={256,256,562,219},
		['LAKEMERELDAR']={256,205,474,412},
		['LIGHTSHOPECHAPEL']={256,256,656,277},
		['NORTHDALE']={256,256,590,106},
		['NORTHPASSTOWER']={256,256,427,87},
		['PLAGUEWOOD']={384,288,139,61},
		['PestilentScar']={256,288,590,269},
		['QUELLITHIENLODGE']={256,256,392,14},
		['STRATHOLME']={256,243,164,0},
		['ScarletEnclave']={284,450,718,218},
		['TERRORDALE']={256,256,49,76},
		['THEFUNGALVALE']={256,256,241,239},
		['THEMARRISSTEAD']={256,256,126,338},
		['THENOXIOUSGLADE']={256,256,692,144},
		['THEUNDERCROFT']={256,191,142,455},
		['THONDRORILRIVER']={256,384,0,209},
		['TYRSHAND']={256,197,687,449},
		['TheInfectisScar']={256,256,379,323},
		['ZULMASHAR']={256,256,584,8},
	},
	['EversongWoods']={
		['AzurebreezeCoast']={256,256,669,228},
		['DuskwitherGrounds']={256,256,605,253},
		['EastSanctum']={256,256,460,373},
		['ElrendarFalls']={128,256,580,399},
		['FairbreezeVilliage']={256,256,386,386},
		['FarstriderRetreat']={256,128,524,359},
		['GoldenboughPass']={256,128,243,469},
		['LakeElrendar']={128,197,584,471},
		['NorthSanctum']={256,256,361,298},
		['RuinsofSilvermoon']={256,256,307,136},
		['RunestoneFalithas']={256,172,378,496},
		['RunestoneShandor']={256,174,464,494},
		['SatherilsHaven']={256,256,324,384},
		['SilvermoonCity']={512,512,440,87},
		['StillwhisperPond']={256,256,474,314},
		['SunsailAnchorage']={256,128,231,404},
		['SunstriderIsle']={512,512,195,5},
		['TheGoldenStrand']={128,253,183,415},
		['TheLivingWood']={128,248,511,420},
		['TheScortchedGrove']={256,128,255,507},
		['ThuronsLivery']={256,128,539,305},
		['TorWatha']={256,353,648,315},
		['TranquilShore']={256,256,215,298},
		['WestSanctum']={128,256,292,319},
		['Zebwatha']={128,193,554,475},
	},
	['Elwynn']={
		['BRACKWELLPUMPKINPATCH']={256,249,577,419},
		['CRYSTALLAKE']={225,220,422,332},
		['EASTVALELOGGINGCAMP']={256,210,704,330},
		['FARGODEEPMINE']={256,240,238,428},
		['FORESTSEDGE']={256,341,124,327},
		['GOLDSHIRE']={240,220,250,270},
		['JERODSLANDING']={256,237,425,431},
		['NORTHSHIREVALLEY']={256,256,381,147},
		['RIDGEPOINTTOWER']={306,233,696,435},
		['STONECAIRNLAKE']={310,256,587,190},
		['STORMWIND']={485,405,0,0},
		['TOWEROFAZORA']={255,250,551,292},
	},
	['Hilsbrad']={
		['AZURELOADMINE']={165,200,175,275},
		['DARROWHILL']={205,155,414,154},
		['DUNGAROK']={240,275,637,294},
		['DURNHOLDEKEEP']={384,365,605,75},
		['EASTERNSTRAND']={230,320,524,339},
		['HILLSBRADFIELDS']={305,275,198,155},
		['NETHANDERSTEAD']={215,240,541,236},
		['PURGATIONISLE']={125,100,109,482},
		['SOUTHPOINTTOWER']={288,225,2,192},
		['SOUTHSHORE']={235,270,418,201},
		['TARRENMILL']={220,310,509,0},
		['WESTERNSTRAND']={285,155,208,368},
	},
	['Hinterlands']={
		['AERIEPEAK']={255,205,13,245},
		['AGOLWATHA']={205,195,374,164},
		['HIRIWATHA']={225,200,171,306},
		['JINTHAALOR']={235,285,505,333},
		['PLAGUEMISTRAVINE']={145,220,158,149},
		['QUELDANILLODGE']={185,195,237,185},
		['SERADANE']={275,275,509,19},
		['SHADRAALOR']={195,185,240,387},
		['SHAOLWATHA']={280,205,571,239},
		['SKULKROCK']={160,145,512,232},
		['THEALTAROFZUL']={200,165,373,365},
		['THECREEPINGRUIN']={180,170,408,260},
		['THEOVERLOOKCLIFFS']={170,310,693,303},
		['VALORWINDLAKE']={170,170,319,302},
	},
	['LochModan']={
		['GRIZZLEPAWRIDGE']={295,358,309,310},
		['IRONBANDSEXCAVATIONSITE']={345,256,482,321},
		['MOGROSHSTRONGHOLD']={315,235,542,48},
		['NORTHGATEPASS']={230,300,125,12},
		['SILVERSTREAMMINE']={235,270,229,11},
		['STONESPLINTERVALLEY']={255,285,215,348},
		['STONEWROUGHTDAM']={290,175,339,11},
		['THEFARSTRIDERLODGE']={370,295,546,199},
		['THELOCH']={320,410,352,87},
		['THELSAMAR']={256,230,217,203},
		['VALLEYOFKINGS']={195,250,109,370},
	},
	['Redridge']={
		['ALTHERSMILL']={235,270,399,129},
		['GALARDELLVALLEY']={250,250,654,161},
		['LAKEEVERSTILL']={535,275,133,240},
		['LAKERIDGEHIGHWAY']={430,290,187,333},
		['LAKESHIRE']={340,195,83,197},
		['REDRIDGECANYONS']={365,245,121,72},
		['RENDERSCAMP']={275,256,277,0},
		['RENDERSVALLEY']={465,255,484,361},
		['STONEWATCH']={255,300,500,215},
		['STONEWATCHFALLS']={320,210,595,320},
		['THREECORNERS']={365,350,0,284},
	},
	['SearingGorge']={
		['BLACKCHARCAVE']={275,235,77,366},
		['DUSTFIREVALLEY']={460,365,422,8},
		['FIREWATCHRIDGE']={405,430,85,30},
		['GRIMSILTDIGSITE']={305,220,494,300},
		['TANNERCAMP']={305,230,545,407},
		['THECAULDRON']={425,325,250,170},
		['THESEAOFCINDERS']={360,280,247,388},
	},
	['Silverpine']={
		['AMBERMILL']={240,240,494,262},
		['BERENSPERIL']={240,180,491,417},
		['DEEPELEMMINE']={160,170,470,261},
		['FENRISISLE']={250,215,593,74},
		['MALDENSORCHARD']={256,160,465,0},
		['NORTHTIDESHOLLOW']={180,128,323,128},
		['OLSENSFARTHING']={165,185,382,252},
		['PYREWOODVILLAGE']={140,125,391,446},
		['SHADOWFANGKEEP']={220,160,364,359},
		['THEDEADFIELD']={175,165,402,65},
		['THEDECREPITFERRY']={180,185,457,144},
		['THEGREYMANEWALL']={210,215,379,447},
		['THESEPULCHER']={210,160,352,168},
		['THESHININGSTRAND']={256,220,459,13},
		['THESKITTERINGDARK']={185,165,286,37},
	},
	['Stranglethorn']={
		['BALALRUINS']={90,80,241,92},
		['BALIAMAHRUINS']={110,140,371,129},
		['BLOODSAILCOMPOUND']={165,175,194,284},
		['BOOTYBAY']={145,128,203,433},
		['CRYSTALVEINMINE']={120,120,345,276},
		['GROMGOLBASECAMP']={110,105,260,132},
		['JAGUEROISLE']={125,120,314,493},
		['KALAIRUINS']={95,95,299,88},
		['KURZENSCOMPOUND']={155,150,388,0},
		['LAKENAZFERITI']={128,125,331,59},
		['MISTVALEVALLEY']={125,125,280,368},
		['MIZJAHRUINS']={105,110,311,131},
		['MOSHOGGOGREMOUND']={128,175,432,94},
		['NEKMANIWELLSPRING']={90,115,211,359},
		['NESINGWARYSEXPEDITION']={140,110,269,26},
		['REBELCAMP']={170,90,284,0},
		['RUINSOFABORAZ']={95,95,350,335},
		['RUINSOFJUBUWAL']={110,110,306,301},
		['RUINSOFZULKUNDA']={125,140,196,3},
		['RUINSOFZULMAMWE']={170,125,394,212},
		['THEARENA']={200,185,235,189},
		['THEVILEREEF']={190,175,152,90},
		['VENTURECOBASECAMP']={105,125,387,64},
		['WILDSHORE']={165,190,229,422},
		['ZIATAJAIRUINS']={128,125,364,231},
		['ZULGURUB']={245,220,483,8},
		['ZUULDAIARUINS']={115,115,156,42},
	},
	['SwampOfSorrows']={
		['FALLOWSANCTUARY']={365,305,492,0},
		['ITHARIUSSCAVE']={240,245,0,262},
		['MISTYREEDSTRAND']={256,668,746,0},
		['MISTYVALLEY']={245,305,0,140},
		['POOLOFTEARS']={300,275,565,218},
		['SORROWMURK']={215,365,724,120},
		['SPLINTERSPEARJUNCTION']={275,240,129,236},
		['STAGALBOG']={345,250,552,378},
		['STONARD']={360,315,279,237},
		['THEHARBORAGE']={235,205,171,145},
		['THESHIFTINGMIRE']={315,235,286,110},
	},
	['Sunwell']={
		['SunsReachHarbor']={512,416,252,252},
		['SunsReachSanctum']={512,512,251,4},
	},
	['Tirisfal']={
		['AGAMANDMILLS']={256,210,335,139},
		['BALNIRFARMSTEAD']={216,179,630,326},
		['BRIGHTWATERLAKE']={201,288,587,139},
		['BRILL']={128,256,537,299},
		['BULWARK']={230,205,698,362},
		['COLDHEARTHMANOR']={150,128,474,327},
		['CRUSADEROUTPOST']={173,128,694,289},
		['DEATHKNELL']={245,205,227,328},
		['GARRENSHAUNT']={174,220,497,145},
		['MONASTARY']={211,189,746,125},
		['NIGHTMAREVALE']={243,199,363,349},
		['RUINSOFLORDAERON']={315,235,463,361},
		['SCARLETWATCHPOST']={175,247,689,104},
		['SOLLIDENFARMSTEAD']={256,156,239,250},
		['STILLWATERPOND']={186,128,395,277},
		['VENOMWEBVALE']={237,214,757,205},
	},
	['WesternPlaguelands']={
		['CAERDARROW']={170,165,600,412},
		['DALSONSTEARS']={220,150,381,265},
		['DARROWMERELAKE']={370,270,504,343},
		['FELSTONEFIELD']={160,125,300,311},
		['GAHRRONSWITHERING']={180,205,520,250},
		['HEARTHGLEN']={340,288,307,16},
		['NORTHRIDGELUMBERCAMP']={220,180,382,164},
		['RUINSOFANDORHOL']={285,230,260,355},
		['SORROWHILL']={300,206,355,462},
		['THEBULWARK']={225,185,137,293},
		['THEWEEPINGCAVE']={160,200,566,198},
		['THEWRITHINGHAUNT']={170,190,451,323},
		['THONDRORILRIVER']={205,340,590,86},
	},
	['Westfall']={
		['ALEXSTONFARMSTEAD']={305,210,204,260},
		['DEMONTSPLACE']={200,185,208,375},
		['FURLBROWSPUMPKINFARM']={210,215,387,11},
		['GOLDCOASTQUARRY']={225,256,220,102},
		['JANGOLODEMINE']={215,215,307,29},
		['MOONBROOK']={220,200,317,331},
		['SALDEANSFARM']={225,210,459,105},
		['SENTINELHILL']={195,240,442,241},
		['THEDAGGERHILLS']={256,175,339,418},
		['THEDEADACRE']={200,240,524,252},
		['THEDUSTPLAINS']={288,235,523,377},
		['THEJANSENSTEAD']={165,200,488,0},
		['THEMOLSENFARM']={225,205,328,148},
		['WESTFALLLIGHTHOUSE']={280,190,205,467},
	},
	['Wetlands']={
		['ANGERFANGENCAMPMENT']={225,185,347,218},
		['BLACKCHANNELMARSH']={240,175,77,245},
		['BLUEGILLMARSH']={225,190,89,142},
		['DIREFORGEHILL']={256,250,507,115},
		['DUNMODR']={205,180,401,21},
		['GRIMBATOL']={350,360,611,230},
		['IRONBEARDSTOMB']={200,185,349,115},
		['MENETHILHARBOR']={175,128,13,314},
		['MOSSHIDEFEN']={205,245,527,264},
		['RAPTORRIDGE']={190,160,628,176},
		['SALTSPRAYGLEN']={200,240,237,41},
		['SUNDOWNMARSH']={300,240,92,82},
		['THEGREENBELT']={185,240,456,125},
		['THELGANROCK']={230,190,470,371},
		['WHELGARSEXCAVATIONSITE']={195,185,247,205},
	},

	-- Kalimdor
	['Ashenvale']={
		['ASTRANAAR']={205,185,272,251},
		['BOUGHSHADOW']={146,200,856,151},
		['FALLENSKYLAKE']={235,205,547,426},
		['FELFIREHILL']={245,255,713,344},
		['FIRESCARSHRINE']={165,175,189,324},
		['IRISLAKE']={200,205,392,218},
		['LAKEFALATHIM']={128,195,131,137},
		['MAESTRASPOST']={215,305,205,38},
		['MYSTRALLAKE']={275,240,356,347},
		['NIGHTRUN']={225,255,597,258},
		['RAYNEWOODRETREAT']={180,245,520,238},
		['SATYRNAAR']={285,185,694,225},
		['THEHOWLINGVALE']={210,185,463,141},
		['THERUINSOFSTARDUST']={155,150,260,373},
		['THESHRINEOFAESSINA']={220,195,104,259},
		['THEZORAMSTRAND']={245,245,19,28},
		['THISTLEFURVILLAGE']={255,195,203,158},
		['WARSONGLUMBERCAMP']={200,160,796,311},
	},
	['Aszhara']={
		['BAYOFSTORMS']={270,300,479,201},
		['BITTERREACHES']={245,185,644,40},
		['FORLORNRIDGE']={220,255,191,369},
		['HALDARRENCAMPMENT']={200,150,77,331},
		['JAGGEDREEF']={570,170,366,0},
		['LAKEMENNAR']={315,200,296,429},
		['LEGASHENCAMPMENT']={235,140,478,44},
		['RAVENCRESTMONUMENT']={240,125,552,499},
		['RUINSOFELDARATH']={265,280,238,221},
		['SHADOWSONGSHRINE']={225,180,35,422},
		['SOUTHRIDGEBEACH']={370,220,389,353},
		['TEMPLEOFARKKORAN']={190,200,681,153},
		['THALASSIANBASECAMP']={240,155,499,119},
		['THERUINEDREACHES']={395,128,396,540},
		['THESHATTEREDSTRAND']={160,210,404,194},
		['TIMBERMAWHOLD']={235,270,250,106},
		['TOWEROFELDARA']={120,155,818,107},
		['URSOLAN']={145,215,422,95},
		['VALORMOK']={215,175,84,229},
	},
	['AzuremystIsle']={
		['AmmenFord']={256,256,515,279},
		['AmmenVale']={475,512,527,104},
		['AzureWatch']={256,256,383,249},
		['BristlelimbVillage']={256,256,174,363},
		['Emberglade']={256,256,488,24},
		['FairbridgeStrand']={256,128,356,0},
		['GreezlesCamp']={256,256,507,350},
		['MoongrazeWoods']={256,256,449,183},
		['OdesyusLanding']={256,256,352,378},
		['PodCluster']={256,256,281,305},
		['PodWreckage']={128,256,462,349},
		['SiltingShore']={256,256,291,3},
		['SilvermystIsle']={256,222,23,446},
		['StillpineHold']={256,256,365,49},
		['TheExodar']={512,512,74,85},
		['ValaarsBerth']={256,256,176,303},
		['WrathscalePoint']={256,247,220,421},
	},
	['Barrens']={
		['AGAMAGOR']={200,185,340,234},
		['BAELMODAN']={128,128,431,479},
		['BLACKTHORNRIDGE']={155,128,335,462},
		['BOULDERLODEMINE']={120,110,555,0},
		['BRAMBLESCAR']={125,165,442,298},
		['CAMPTAURAJO']={145,125,365,350},
		['DREADMISTPEAK']={128,105,419,63},
		['FARWATCHPOST']={100,165,564,52},
		['FIELDOFGIANTS']={210,150,355,402},
		['GROLDOMFARM']={125,115,492,63},
		['HONORSSTAND']={128,128,306,130},
		['LUSHWATEROASIS']={175,185,365,177},
		['NORTHWATCHFOLD']={150,120,527,307},
		['RAPTORGROUNDS']={115,110,507,294},
		['RATCHET']={125,125,556,189},
		['RAZORFENDOWNS']={155,115,407,553},
		['RAZORFENKRAUL']={128,128,341,537},
		['THECROSSROADS']={155,155,431,118},
		['THEDRYHILLS']={200,145,317,29},
		['THEFORGOTTENPOOLS']={120,125,384,115},
		['THEMERCHANTCOAST']={95,100,581,247},
		['THEMORSHANRAMPART']={128,100,412,0},
		['THESLUDGEFEN']={170,120,456,0},
		['THESTAGNANTOASIS']={155,128,481,211},
		['THORNHILL']={140,128,498,119},
	},
	['BloodmystIsle']={
		['AmberwebPass']={256,512,44,62},
		['Axxarien']={256,256,297,136},
		['BlacksiltShore']={512,242,177,426},
		['Bladewood']={256,256,367,209},
		['BloodWatch']={256,256,437,258},
		['BloodscaleIsle']={239,256,763,256},
		['BristlelimbEnclave']={256,256,546,410},
		['KesselsCrossing']={485,141,517,527},
		['Middenvale']={256,256,414,406},
		['Mystwood']={256,185,309,483},
		['Nazzivian']={256,256,250,404},
		['RagefeatherRidge']={256,256,481,117},
		['RuinsofLorethAran']={256,256,556,216},
		['TalonStand']={256,256,657,78},
		['TelathionsCamp']={128,128,180,216},
		['TheBloodcursedReef']={256,256,729,54},
		['TheBloodwash']={256,256,302,27},
		['TheCrimsonReach']={256,256,555,87},
		['TheCryoCore']={256,256,293,285},
		['TheFoulPool']={256,256,221,136},
		['TheHiddenReef']={256,256,205,39},
		['TheLostFold']={256,198,503,470},
		['TheVectorCoil']={512,430,43,238},
		['TheWarpPiston']={256,256,451,29},
		['VeridianPoint']={256,256,637,0},
		['VindicatorsRest']={256,256,232,242},
		['WrathscaleLair']={256,256,598,338},
		['WyrmscarIsland']={256,256,613,82},
	},
	['Darkshore']={
		['AMETHARAN']={190,205,324,306},
		['AUBERDINE']={150,215,318,162},
		['BASHALARAN']={180,195,365,181},
		['CLIFFSPRINGRIVER']={230,190,375,94},
		['GROVEOFTHEANCIENTS']={200,170,305,412},
		['REMTRAVELSEXCAVATION']={175,183,229,485},
		['RUINSOFMATHYSTRA']={195,215,510,0},
		['THEMASTERSGLAIVE']={175,158,329,510},
		['TOWEROFALTHALAXX']={170,195,468,85},
	},
	['Desolace']={
		['ETHELRETHOR']={205,250,311,61},
		['GELKISVILLAGE']={195,242,293,426},
		['KODOGRAVEYARD']={275,250,387,244},
		['KOLKARVILLAGE']={220,220,607,215},
		['KORMEKSHUT']={170,160,555,181},
		['MAGRAMVILLAGE']={205,285,590,365},
		['MANNOROCCOVEN']={285,280,399,380},
		['NIJELSPOINT']={200,250,554,0},
		['RANAZJARISLE']={100,100,241,6},
		['SARGERON']={285,245,625,33},
		['SHADOWBREAKRAVINE']={205,195,690,444},
		['SHADOWPREYVILLAGE']={230,230,167,389},
		['TETHRISARAN']={205,145,431,0},
		['THUNDERAXEFORTRESS']={190,220,447,102},
		['VALLEYOFSPEARS']={245,285,212,215},
	},
	['Durotar']={
		['DRYGULCHRAVINE']={210,160,427,78},
		['ECHOISLES']={200,240,549,427},
		['KOLKARCRAG']={160,120,413,476},
		['ORGRIMMAR']={445,160,244,0},
		['RAZORHILL']={220,230,432,170},
		['RAZORMANEGROUNDS']={230,230,301,189},
		['SENJINVILLAGE']={160,190,474,384},
		['SKULLROCK']={128,110,464,33},
		['THUNDERRIDGE']={190,200,327,60},
		['TIRAGARDEKEEP']={190,180,462,286},
		['VALLEYOFTRIALS']={215,215,355,320},
	},
	['Dustwallow']={
		['ALCAZISLAND']={200,195,660,21},
		['BACKBAYWETLANDS']={400,255,239,189},
		['BRACKENWALLVILLAGE']={280,270,230,0},
		['THEDENOFFLAME']={255,250,257,313},
		['THERAMOREISLE']={230,205,534,224},
		['THEWYRMBOG']={285,240,367,381},
		['WITCHHILL']={250,315,422,0},
	},
	['Felwood']={
		['BLOODVENOMFALLS']={235,145,292,263},
		['DEADWOODVILLAGE']={175,135,408,533},
		['EMERALDSANCTUARY']={185,160,405,429},
		['FELPAWVILLAGE']={240,145,483,0},
		['IRONTREEWOODS']={215,215,420,54},
		['JADEFIREGLEN']={165,155,332,465},
		['JADEFIRERUN']={195,170,330,29},
		['JAEDENAR']={245,128,271,331},
		['MORLOSARAN']={145,159,496,509},
		['RUINSOFCONSTELLAS']={235,155,297,381},
		['SHATTERSCARVALE']={235,200,307,123},
		['TALONBRANCHGLADE']={160,145,548,90},
	},
	['Feralas']={
		['CAMPMOJACHE']={155,160,689,233},
		['DIREMAUL']={230,195,454,201},
		['DREAMBOUGH']={150,125,454,0},
		['FERALSCARVALE']={115,115,486,329},
		['FRAYFEATHERHIGHLANDS']={110,170,478,386},
		['GORDUNNIOUTPOST']={140,165,690,141},
		['GRIMTOTEMCOMPOUND']={120,195,623,167},
		['ISLEOFDREAD']={215,293,192,375},
		['LOWERWILDS']={225,180,751,198},
		['ONEIROS']={110,110,493,70},
		['RUINSOFISILDIEN']={190,250,540,320},
		['RUINSOFRAVENWIND']={190,155,305,0},
		['SARDORISLE']={180,180,208,234},
		['THEFORGOTTENCOAST']={145,320,404,256},
		['THETWINCOLOSSALS']={285,245,319,75},
		['THEWRITHINGDEEP']={240,220,618,298},
	},
	['Silithus']={
		['HIVEASHI']={512,320,265,12},
		['HIVEREGAL']={512,384,245,285},
		['HIVEZORA']={384,512,97,144},
		['SOUTHWINDVILLAGE']={384,384,500,65},
		['THECRYSTALVALE']={320,289,104,24},
		['THESCARABWALL']={288,256,116,413},
		['TWILIGHTBASECAMP']={320,256,344,197},
	},
	['StonetalonMountains']={
		['BOULDERSLIDERAVINE']={145,107,572,561},
		['CAMPAPARAJE']={190,97,718,571},
		['GRIMTOTEMPOST']={225,120,668,515},
		['MALAKAJIN']={125,86,663,582},
		['MIRKFALLONLAKE']={200,215,390,145},
		['SISHIRCANYON']={125,125,475,433},
		['STONETALONPEAK']={270,205,247,0},
		['SUNROCKRETREAT']={150,150,389,320},
		['THECHARREDVALE']={230,355,210,234},
		['WEBWINDERPATH']={288,355,457,282},
		['WINDSHEARCRAG']={320,275,553,197},
	},
	['Tanaris']={
		['ABYSSALSANDS']={215,180,363,194},
		['BROKENPILLAR']={110,180,473,234},
		['CAVERNSOFTIME']={155,150,561,256},
		['DUNEMAULCOMPOUND']={205,145,325,289},
		['EASTMOONRUINS']={160,150,395,346},
		['GADGETZAN']={175,165,421,91},
		['LANDSENDBEACH']={205,157,445,511},
		['LOSTRIGGERCOVE']={160,190,629,220},
		['NOONSHADERUINS']={120,135,533,104},
		['SANDSORROWWATCH']={195,175,299,100},
		['SOUTHBREAKSHORE']={215,175,499,293},
		['SOUTHMOONRUINS']={195,210,323,359},
		['STEAMWHEEDLEPORT']={155,150,592,75},
		['THEGAPINGCHASM']={220,210,449,372},
		['THENOXIOUSLAIR']={180,200,252,199},
		['THISTLESHRUBVALLEY']={185,250,203,286},
		['VALLEYOFTHEWATCHERS']={150,160,291,434},
		['WATERSPRINGFIELD']={165,180,509,168},
		['ZALASHJISDEN']={110,140,611,147},
		['ZULFARRAK']={210,175,254,0},
	},
	['Teldrassil']={
		['BANETHILHOLLOW']={160,210,382,281},
		['DARNASSUS']={315,256,101,247},
		['DOLANAAR']={190,128,462,323},
		['GNARLPINEHOLD']={185,128,368,443},
		['LAKEALAMETH']={256,185,436,380},
		['POOLSOFARLITHRIEN']={128,190,335,313},
		['RUTTHERANVILLAGE']={128,100,494,548},
		['SHADOWGLEN']={225,225,491,153},
		['STARBREEZEVILLAGE']={200,200,561,292},
		['THEORACLEGLADE']={170,240,272,127},
		['WELLSPRINGLAKE']={180,256,377,93},
	},
	['ThousandNeedles']={
		['CAMPETHOK']={305,310,0,0},
		['DARKCLOUDPINNACLE']={205,195,259,131},
		['FREEWINDPOST']={210,190,357,264},
		['HIGHPERCH']={190,190,31,155},
		['SPLITHOOFCRAG']={210,195,391,192},
		['THEGREATLIFT']={210,180,205,70},
		['THESCREECHINGCANYON']={250,240,179,200},
		['THESHIMMERINGFLATS']={320,365,610,300},
		['WINDBREAKCANYON']={240,220,492,250},
	},
	['Moonglade']={
		['LAKEELUNEARA']={555,510,244,89},
	},
	['Mulgore']={
		['BAELDUNDIGSITE']={210,180,255,214},
		['BLOODHOOFVILLAGE']={256,200,367,303},
		['PALEMANEROCK']={128,205,303,307},
		['RAVAGEDCARAVAN']={128,120,473,260},
		['REDCLOUDMESA']={470,243,270,425},
		['REDROCKS']={205,230,502,16},
		['THEGOLDENPLAINS']={215,240,428,80},
		['THEROLLINGPLAINS']={256,190,523,356},
		['THEVENTURECOMINE']={225,235,532,238},
		['THUNDERBLUFF']={280,240,249,59},
		['THUNDERHORNWATERWELL']={128,155,379,242},
		['WILDMANEWATERWELL']={185,128,291,0},
		['WINDFURYRIDGE']={205,128,395,0},
		['WINTERHOOFWATERWELL']={170,128,458,369},
	},
	['UngoroCrater']={
		['FIREPLUMERIDGE']={295,270,367,178},
		['GOLAKKAHOTSPRINGS']={315,345,121,151},
		['IRONSTONEPLATEAU']={285,285,582,67},
		['LAKKARITARPITS']={570,265,160,6},
		['TERRORRUN']={345,285,158,368},
		['THEMARSHLANDS']={310,355,560,240},
		['THESLITHERINGSCAR']={345,285,367,380},
	},
	['Winterspring']={
		['DARKWHISPERGORGE']={255,205,447,441},
		['EVERLOOK']={165,200,509,107},
		['FROSTFIREHOTSPRINGS']={240,140,222,172},
		['FROSTSABERROCK']={250,180,368,7},
		['FROSTWHISPERGORGE']={200,160,523,376},
		['ICETHISTLEHILLS']={125,165,611,242},
		['LAKEKELTHERIL']={215,185,401,198},
		['MAZTHORIL']={185,180,493,258},
		['OWLWINGTHICKET']={165,140,593,340},
		['STARFALLVILLAGE']={185,160,392,137},
		['THEHIDDENGROVE']={175,185,555,27},
		['TIMBERMAWPOST']={230,120,229,243},
		['WINTERFALLVILLAGE']={145,125,617,158},
	},

	-- Outland
	['BladesEdgeMountains']={
		['BashirLanding']={256,256,422,0},
		['BladedGulch']={256,256,623,147},
		['BladesipreHold']={256,507,314,161},
		['BloodmaulCamp']={256,256,412,95},
		['BloodmaulOutpost']={256,297,342,371},
		['BrokenWilds']={256,256,733,109},
		['CircleofWrath']={256,256,439,210},
		['DeathsDoor']={256,419,512,249},
		['ForgeCampAnger']={416,256,586,147},
		['ForgeCampTerror']={512,252,144,416},
		['ForgeCampWrath']={256,256,254,176},
		['Grishnath']={256,256,286,28},
		['GruulsLayer']={256,256,527,81},
		['JaggedRidge']={256,254,446,414},
		['MokNathalVillage']={256,256,658,297},
		['RavensWood']={512,256,214,55},
		['RazorRidge']={256,336,533,332},
		['RidgeofMadness']={256,410,554,258},
		['RuuanWeald']={256,512,479,98},
		['Skald']={256,256,673,71},
		['Sylvanaar']={256,318,289,350},
		['TheCrystalpine']={256,256,585,0},
		['ThunderlordStronghold']={256,396,405,272},
		['VeilLashh']={256,240,271,428},
		['VeilRuuan']={256,128,563,151},
		['VekhaarStand']={256,256,629,406},
		['VortexPinnacle']={256,462,166,206},
	},
	['Ghostlands']={
		['AmaniPass']={404,436,598,232},
		['BleedingZiggurat']={256,256,184,238},
		['DawnstarSpire']={427,256,575,0},
		['Deatholme']={512,293,95,375},
		['ElrendarCrossing']={512,256,326,0},
		['FarstriderEnclave']={429,256,573,136},
		['GoldenmistVillage']={512,512,44,0},
		['HowlingZiggurat']={256,449,340,219},
		['IsleofTribulations']={256,256,585,0},
		['SanctumoftheMoon']={256,256,210,126},
		['SanctumoftheSun']={256,512,448,150},
		['SuncrownVillage']={512,256,460,0},
		['ThalassiaPass']={256,262,364,406},
		['Tranquillien']={256,512,365,2},
		['WindrunnerSpire']={256,256,40,287},
		['WindrunnerVillage']={256,512,60,117},
		['ZebNowa']={512,431,466,237},
	},
	['Hellfire']={
		['DenofHaalesh']={256,256,182,412},
		['ExpeditionArmory']={512,255,261,413},
		['FalconWatch']={512,342,183,326},
		['FallenSkyRidge']={256,256,34,142},
		['ForgeCampRage']={512,512,478,25},
		['HellfireCitadel']={256,458,338,210},
		['HonorHold']={256,256,469,298},
		['MagharPost']={256,256,206,110},
		['PoolsofAggonar']={256,512,326,45},
		['RuinsofShanaar']={256,378,25,290},
		['TempleofTelhamat']={512,512,38,152},
		['TheLegionFront']={256,512,579,128},
		['TheStairofDestiny']={256,512,737,156},
		['Thrallmar']={256,256,467,154},
		['ThroneofKiljaeden']={512,256,477,6},
		['VoidRidge']={256,256,705,368},
		['WarpFields']={256,260,308,408},
		['ZethGor']={422,238,580,430},
	},
	['Nagrand']={
		['BurningBladeRUins']={256,334,660,334},
		['ClanWatch']={256,256,532,363},
		['ForgeCampFear']={512,420,36,248},
		['ForgeCampHate']={256,256,162,154},
		['Garadar']={256,256,431,143},
		['Halaa']={256,256,335,193},
		['KilsorrowFortress']={256,241,558,427},
		['LaughingSkullRuins']={256,256,351,52},
		['OshuGun']={512,334,168,334},
		['RingofTrials']={256,256,533,267},
		['SouthwindCleft']={256,256,391,258},
		['SunspringPost']={256,256,219,199},
		['Telaar']={256,256,387,390},
		['ThroneoftheElements']={256,256,504,53},
		['TwilightRidge']={256,512,10,107},
		['WarmaulHill']={256,256,157,32},
		['WindyreedPass']={256,256,598,79},
		['WindyreedVillage']={256,256,666,233},
		['ZangarRidge']={256,256,277,54},
	},
	['Netherstorm']={
		['Area52']={256,128,241,388},
		['ArklonRuins']={256,256,328,397},
		['CelestialRidge']={256,256,644,173},
		['EcoDomeFarfield']={256,256,396,10},
		['EtheriumStagingGrounds']={256,256,481,208},
		['ForgeBaseOG']={256,256,237,22},
		['KirinVarVillage']={256,145,490,523},
		['ManaforgeBanar']={256,387,147,281},
		['ManaforgeCoruu']={256,179,357,489},
		['ManaforgeDuro']={256,256,465,336},
		['ManafrogeAra']={256,256,171,155},
		['Netherstone']={256,256,411,20},
		['NetherstormBridge']={256,256,132,294},
		['RuinedManaforge']={256,256,513,138},
		['RuinsofEnkaat']={256,256,253,301},
		['RuinsofFarahlon']={512,256,354,49},
		['SocretharsSeat']={256,256,229,38},
		['SunfuryHold']={256,217,454,451},
		['TempestKeep']={409,384,593,284},
		['TheHeap']={256,213,239,455},
		['TheScrapField']={256,256,356,261},
		['TheStormspire']={256,256,298,134},
	},
	['ShadowmoonValley']={
		['AltarofShatar']={256,256,520,93},
		['CoilskarPoint']={512,512,348,8},
		['EclipsePoint']={512,358,343,310},
		['IlladarPoint']={256,256,143,256},
		['LegionHold']={512,512,104,155},
		['NetherwingCliffs']={256,256,554,308},
		['NetherwingLedge']={492,223,510,445},
		['ShadowmoonVilliage']={512,512,116,35},
		['TheBlackTemple']={396,512,606,126},
		['TheDeathForge']={256,512,290,129},
		['TheHandofGuldan']={512,512,394,90},
		['TheWardensCage']={512,410,469,258},
		['WildhammerStronghold']={512,439,168,229},
	},
	['TerokkarForest']={
		['AllerianStronghold']={256,256,480,277},
		['AuchenaiGrounds']={256,234,247,434},
		['BleedingHollowClanRuins']={256,367,103,301},
		['BonechewerRuins']={256,256,521,275},
		['CarrionHill']={256,256,377,272},
		['CenarionThicket']={256,256,314,0},
		['FirewingPoint']={385,512,617,149},
		['GrangolvarVilliage']={512,256,143,171},
		['RaastokGlade']={256,256,505,154},
		['RazorthornShelf']={256,256,478,19},
		['RefugeCaravan']={128,256,316,268},
		['RingofObservance']={256,256,310,345},
		['SethekkTomb']={256,256,245,289},
		['ShattrathCity']={512,512,104,4},
		['SkethylMountains']={512,320,449,348},
		['SmolderingCaravan']={256,208,321,460},
		['StonebreakerHold']={256,256,397,165},
		['TheBarrierHills']={256,256,116,4},
		['Tuurem']={256,512,455,34},
		['VeilRhaze']={256,256,222,362},
		['WrithingMound']={256,256,417,327},
	},
	['Zangarmarsh']={
		['AngoroshGrounds']={256,256,88,50},
		['AngoroshStronghold']={256,128,124,0},
		['BloodscaleEnclave']={256,256,596,412},
		['CenarionRefuge']={308,256,694,321},
		['CoilfangReservoir']={256,512,462,90},
		['FeralfenVillage']={512,336,314,332},
		['MarshlightLake']={256,256,81,152},
		['OreborHarborage']={256,512,329,25},
		['QuaggRidge']={256,343,141,325},
		['Sporeggar']={512,256,20,202},
		['Telredor']={256,512,569,112},
		['TheDeadMire']={286,512,716,128},
		['TheHewnBog']={256,512,219,51},
		['TheLagoon']={256,256,512,303},
		['TheSpawningGlen']={256,256,31,339},
		['TwinspireRuins']={256,256,342,249},
		['UmbrafenVillage']={256,207,720,461},
		['ZabraJin']={256,256,175,232},
	},

	-- Northrend Data
	['BoreanTundra']={
		['AmberLedge']={244,214,325,140},
		['BorGorokOutpost']={396,203,314,0},
		['Coldarra']={460,381,50,0},
		['DeathsStand']={289,279,707,181},
		['GarroshsLanding']={267,378,153,238},
		['Kaskala']={385,316,509,214},
		['RiplashStrand']={382,258,293,383},
		['SteeljawsCaravan']={244,319,397,66},
		['TempleCityOfEnKilah']={290,292,712,15},
		['TheDensOfDying']={203,209,662,11},
		['TheGeyserFields']={375,342,480,0},
		['TorpsFarm']={186,276,272,237},
		['ValianceKeep']={259,302,457,264},
		['WarsongStronghold']={260,278,329,237},
	},
	['CrystalsongForest']={
		['ForlornWoods']={544,668,129,0},
		['SunreaversCommand']={446,369,536,40},
		['TheAzureFront']={416,424,0,244},
		['TheDecrepitFlow']={288,222,0,0},
		['TheGreatTree']={252,260,0,91},
		['TheUnboundThicket']={502,477,500,105},
		['VioletStand']={264,303,0,176},
		['WindrunnersOverlook']={558,285,444,383},
	},
	['Dragonblight']={
		['AgmarsHammer']={236,218,258,203},
		['Angrathar']={306,242,210,0},
		['ColdwindHeights']={213,219,403,0},
		['EmeraldDragonshrine']={196,218,543,362},
		['GalakrondsRest']={258,225,433,118},
		['IcemistVillage']={235,337,134,165},
		['LakeIndule']={356,300,217,313},
		['LightsRest']={299,278,703,7},
		['Naxxramas']={311,272,691,160},
		['NewHearthglen']={214,261,614,358},
		['ObsidianDragonshrine']={304,203,256,104},
		['RubyDragonshrine']={188,211,374,208},
		['ScarletPoint']={235,354,569,7},
		['TheCrystalVice']={229,259,487,0},
		['TheForgottenShore']={301,286,698,332},
		['VenomSpite']={226,212,661,264},
		['WestwindRefugeeCamp']={229,299,42,187},
		['WyrmrestTemple']={317,353,453,219},
	},
	['GrizzlyHills']={
		['AmberpineLodge']={278,290,217,244},
		['BlueSkyLoggingGrounds']={249,235,232,129},
		['CampOneqwah']={324,265,548,137},
		['ConquestHold']={332,294,17,307},
		['DrakTheronKeep']={382,285,0,46},
		['DrakilJinRuins']={351,284,607,41},
		['DunArgol']={455,400,547,257},
		['GraniteSprings']={356,224,7,207},
		['GrizzleMaw']={294,227,358,187},
		['RageFangShrine']={475,362,312,294},
		['ThorModan']={329,246,509,0},
		['UrsocsDen']={328,260,331,32},
		['VentureBay']={274,207,18,461},
		['Voldrune']={283,247,176,421},
	},
	['HowlingFjord']={
		['AncientLift']={177,191,342,351},
		['ApothecaryCamp']={263,265,99,37},
		['BaelgunsExcavationSite']={244,305,621,327},
		['Baleheim']={174,173,576,170},
		['CampWinterHoof']={223,209,354,0},
		['CauldrosIsle']={181,178,490,161},
		['EmberClutch']={213,256,283,203},
		['ExplorersLeagueOutpost']={232,216,585,336},
		['FortWildervar']={251,192,490,0},
		['GiantsRun']={298,306,572,0},
		['Gjalerbron']={242,189,225,0},
		['Halgrind']={187,263,397,208},
		['IvaldsRuin']={193,201,668,223},
		['Kamagua']={333,265,99,278},
		['NewAgamand']={284,308,415,360},
		['Nifflevar']={178,208,595,240},
		['ScalawagPoint']={350,258,168,410},
		['Skorn']={238,232,343,108},
		['SteelGate']={222,168,222,100},
		['TheTwistedGlade']={266,210,420,57},
		['UtgardeKeep']={248,382,477,216},
		['VengeanceLanding']={223,338,664,25},
		['WestguardKeep']={347,220,90,180},
	},
	['IcecrownGlacier']={
		['Aldurthar']={373,375,355,37},
		['ArgentTournamentGround']={314,224,616,30},
		['Corprethar']={308,212,342,392},
		['IcecrownCitadel']={308,202,392,466},
		['Jotunheim']={393,474,22,122},
		['OnslaughtHarbor']={204,268,0,167},
		['Scourgeholme']={245,239,690,267},
		['SindragosasFall']={300,343,626,31},
		['TheBombardment']={248,243,538,181},
		['TheBrokenFront']={283,231,558,329},
		['TheConflagration']={227,210,327,305},
		['TheFleshwerks']={219,283,218,291},
		['TheShadowVault']={223,399,321,15},
		['Valhalas']={238,240,217,50},
		['ValleyofEchoes']={269,217,715,390},
		['Ymirheim']={223,207,444,276},
	},
	['SholazarBasin']={
		['KartaksHold']={329,293,76,375},
		['RainspeakerCanopy']={207,235,427,244},
		['RiversHeart']={468,329,359,339},
		['TheAvalanche']={322,265,596,92},
		['TheGlimmeringPillar']={294,327,308,34},
		['TheLifebloodPillar']={312,369,501,134},
		['TheMakersOverlook']={233,286,705,236},
		['TheMakersPerch']={249,248,172,135},
		['TheMosslightPillar']={239,313,265,355},
		['TheSavageThicket']={293,229,396,51},
		['TheStormwrightsShelf']={268,288,138,58},
		['TheSuntouchedPillar']={455,316,82,186},
	},
	['TheStormPeaks']={
		['BorsBreath']={322,195,109,375},
		['BrunnhildarVillage']={305,298,339,370},
		['DunNiffelem']={309,383,481,285},
		['EngineoftheMakers']={210,179,316,296},
		['Frosthold']={244,220,134,429},
		['GarmsBane']={184,191,395,470},
		['NarvirsCradle']={180,239,214,144},
		['Nidavelir']={221,200,108,206},
		['SnowdriftPlains']={205,232,162,143},
		['SparksocketMinefield']={251,200,242,468},
		['TempleofLife']={182,270,570,113},
		['TempleofStorms']={169,164,239,301},
		['TerraceoftheMakers']={363,341,292,122},
		['Thunderfall']={306,484,627,179},
		['Ulduar']={369,265,218,0},
		['Valkyrion']={228,158,98,318},
	},
	['ZulDrak']={
		['AltarOfHarKoa']={265,257,533,345},
		['AltarOfMamToth']={291,258,575,88},
		['AltarOfQuetzLun']={261,288,607,251},
		['AltarOfRhunok']={247,304,431,127},
		['AltarOfSseratus']={237,248,288,168},
		['AmphitheaterOfAnguish']={266,254,289,287},
		['DrakSotraFields']={286,265,326,358},
		['GunDrak']={336,297,629,0},
		['Kolramas']={302,231,380,437},
		['LightsBreach']={321,305,181,363},
		['ThrymsEnd']={272,268,0,247},
		['Voltarus']={218,291,174,191},
		['Zeramas']={307,256,7,412},
		['ZimTorga']={249,258,479,241},
	},
}

function Foglight:Startup()
	if not ZGV.db.profile.foglight then return end
	--self:Hook("GetNumMapOverlays")
	
	-- experimental: off
	--hooksecurefunc("WorldMapFrame_Update",function() ZGV.Foglight:WorldMapFrame_Update() end)

	--self:Hook("WorldMapFrame_Update",true)
	if WorldMapFrame:IsShown() then WorldMapFrame_Update() end
end

function Foglight:TurnOff()
	--self:Unhook("GetNumMapOverlays")
	--self:Unhook("WorldMapFrame_Update")

	--[[
	for n=1,NUM_WORLDMAP_OVERLAYS do
		local tex = _G["WorldMapOverlay"..n]
		--tex:SetVertexColor(1.0,1.0,1.0)
		--tex:SetAlpha(1.0)
		tex:Hide()
	end
	--]]
	if WorldMapFrame:IsShown() then WorldMapFrame_Update() end
end

local PreZygor_GetNumMapOverlays = GetNumMapOverlays
function GetNumMapOverlays()
	if not ZGV.db.profile.foglight then return PreZygor_GetNumMapOverlays() end
	local mapfile = GetMapInfo()
	if not mapfile then return 0 end
	if not ZGV.Foglight.data[mapfile] then return 0 end
	return #TableKeys(ZGV.Foglight.data[mapfile])
	--[[
	if NUM_WORLDMAP_OVERLAYS == 0 or not ZGV.db.profile.foglight then
		return PreZygor_GetNumMapOverlays()
	end
	return 0
	--]]
end


--- Cheat. Mess with the original WorldMapFrame_Update by faking GetMapOverlayInfo() responses!

local PreZygor_GetMapOverlayInfo = GetMapOverlayInfo
function GetMapOverlayInfo(i)
	if not ZGV.db.profile.foglight then return PreZygor_GetMapOverlayInfo(i) end
	--[[

	-- that's trying not to break stuff. How about some breakage instead - below.

	local t,w,h,x,y,a,b = PreZygor_GetMapOverlayInfo(i)
	if w and w>0 then
		if ZGV.db.profile.debug then
			local mapfile = GetMapInfo()
			local data = ZGV.Foglight.data[mapfile][t:gsub(".*\\","")]
			if not data or w~=data[1] or h~=data[2] or x~=data[3] or y~=data[4] then
				ZGV:Print(("Foglight: wrong/new map overlay data for zone %d '%s' in %s: should be %d,%d,%d,%d"):format(i,t,mapfile,w,h,x,y))
			end
		end
		return t,w,h,x,y,z,b
	end 

	local mapfile = GetMapInfo()
	if not mapfile then return nil,0,0,0,0,0,0 end
	if not ZGV.Foglight.data[mapfile] then return nil,0,0,0,0,0,0 end

	
	local data
	for n=1,PreZygor_GetNumMapOverlays() do
		t,w,h,x,y = PreZygor_GetMapOverlayInfo(n)
		if not w or w<1 then
			lastn=n-1
			break
		end
		t = t:gsub(".*\\","")

		data = ZGV.Foglight.data[mapfile][t]
		if data then
			data.known = 1
		else
			ZGV:Print(("Foglight: unknown zone %d '%s' in %s while fetching zone %d"):format(n,t,mapfile,i))
			return nil,0,0,0,0,0,0
		end
	end

	i=i-PreZygor_GetNumMapOverlays()
	local n

	for tname,data in pairs(ZGV.Foglight.data[mapfile]) do
		if not data.known then
			n=n+1
			if n==i then return "Interface\\WorldMap\\"..mapfile.."\\"..tname,data[1],data[2],data[3],data[4],0,0,"zygfog" end
		end
	end
	--]]

	local mapfile = GetMapInfo()
	if not mapfile then return nil,0,0,0,0,0,0 end
	if not ZGV.Foglight.data[mapfile] then return nil,0,0,0,0,0,0 end
	for tname,data in pairs(ZGV.Foglight.data[mapfile]) do
		i=i-1
		if i==0 then return "Interface\\WorldMap\\"..mapfile.."\\"..tname,data[1],data[2],data[3],data[4],0,0,"zygfog" end
	end
end

function Foglight:DebugMap()
	print(("Debugging foglighting of map: %s"):format(GetMapInfo()))
	print(("WoW reports %d zones known, Foglight says %d%s."):format(PreZygor_GetNumMapOverlays(),GetNumMapOverlays(),ZGV.db.profile.foglight and "" or " too as it's turned off."))
	for i=1,GetNumMapOverlays() do
		local t,w,h,x,y,a,b,z = GetMapOverlayInfo(i)
		t = t:gsub(".*\\","")
		print(("%s = %d,%d,%d,%d (%s)"):format(t,w,h,x,y,z and "Foglight" or "WoW"))
	end
end

--[[
function Foglight:WorldMapFrame_Update()
	--self.hooks.WorldMapFrame_Update()
	self:WorldMapFrame_UpdateOverlays()
end

local discovered = {}
local math_mod = math.fmod
local math_floor = math.floor
local math_ceil = math.ceil

function Foglight:WorldMapFrame_UpdateOverlays()
	if not ZGV.db.profile.foglight then return end
	if not WorldMapFrame:IsShown() then return end

	local mapfile = GetMapInfo()
	if not mapfile then return end

	local prefix = "Interface\\WorldMap\\"..mapfile.."\\"
	local zoneTable = self.data[mapfile]
	if not zoneTable then return end

	local numOverlays = PreZygor_GetNumMapOverlays()
	local len = string.len(prefix)+1
	for i=1, numOverlays do
		local tname,tw,th,ofx,ofy = GetMapOverlayInfo(i)
		tname = string.sub(tname, len)
		local num = tw + th * 1024 + ofx * 1048576 + ofy * 1073741824
		if num ~= 0 and num ~= 131200 and tname ~= "" then --and tname:lower() ~= "pixelfix" 
			local tab = {tw,th,ofx,ofy}
			discovered[tname] = tab
			--zoneTable[tname] = tab
		end
	end

	local textureCount = 0

	local overlayPrefix = "WorldMapOverlay"
	--local overlayPrefix = "WorldMapDetailTile"

	for tname, num in pairs(zoneTable) do
		local textureName = prefix .. tname
		local textureWidth, textureHeight, offsetX, offsetY
		if type(num)=="number" then
			textureWidth, textureHeight, offsetX, offsetY = math_mod(num, 1024), math_mod(math_floor(num / 1024), 1024), math_mod(math_floor(num / 1048576), 1024), math_floor(num / 1073741824)
			zoneTable[tname]={textureWidth,textureHeight,offsetX,offsetY}
		else
			textureWidth, textureHeight, offsetX, offsetY = unpack(num)
		end

		-- HACK: override *known incorrect* data with hard-coded fixes.
		if textureName == "Interface\\WorldMap\\Tirisfal\\BRIGHTWATERLAKE" then
			if offsetX == 587 then
				offsetX = 584
			end
		end
		if textureName == "Interface\\WorldMap\\Silverpine\\BERENSPERIL" then
			if offsetY == 417 then
				offsetY = 415
			end
		end

		local numTexturesWide = math_ceil(textureWidth / 256)
		local numTexturesTall = math_ceil(textureHeight / 256)
		local neededTextures = textureCount + numTexturesWide*numTexturesTall
		if neededTextures > NUM_WORLDMAP_OVERLAYS then
			for j = NUM_WORLDMAP_OVERLAYS+1, neededTextures do
				WorldMapDetailFrame:CreateTexture(overlayPrefix..j, "ARTWORK")
			end
			NUM_WORLDMAP_OVERLAYS = neededTextures
		end
		for j = 1, numTexturesTall do
			local texturePixelHeight
			local textureFileHeight
			if j < numTexturesTall then
				texturePixelHeight = 256
				textureFileHeight = 256
			else
				texturePixelHeight = math_mod(textureHeight, 256)
				if texturePixelHeight == 0 then
					texturePixelHeight = 256
				end
				textureFileHeight = 16
				while textureFileHeight < texturePixelHeight do
					textureFileHeight = textureFileHeight * 2
				end
			end
			for k = 1, numTexturesWide do
				ZGV:Debug(k.."x"..j..", tex "..textureCount)
				if textureCount > NUM_WORLDMAP_OVERLAYS then
					return
				end
				textureCount = textureCount + 1
				local texture = _G[overlayPrefix..textureCount]
				local texturePixelWidth
				local textureFileWidth
				if k < numTexturesWide then
					texturePixelWidth = 256
					textureFileWidth = 256
				else
					texturePixelWidth = math_mod(textureWidth, 256)
					if texturePixelWidth == 0 then
						texturePixelWidth = 256
					end
					textureFileWidth = 16
					while textureFileWidth < texturePixelWidth do
						textureFileWidth = textureFileWidth * 2
					end
				end
				texture:SetWidth(texturePixelWidth)
				texture:SetHeight(texturePixelHeight)
				texture:SetTexCoord(0, texturePixelWidth/textureFileWidth, 0, texturePixelHeight/textureFileHeight)
				texture:ClearAllPoints()
				texture:SetPoint("TOPLEFT", "WorldMapDetailFrame", "TOPLEFT", offsetX + (256 * (k-1)), -(offsetY + (256 * (j - 1))))
				texture:SetTexture(textureName..(((j - 1) * numTexturesWide) + k))

				--if discovered[tname] then
					texture:SetVertexColor(1.0,1.0,1.0)
					texture:SetAlpha(1.0)
				--else
				--	texture:SetVertexColor(self.db.profile.darkR, self.db.profile.darkG, self.db.profile.darkB)
				--	texture:SetAlpha(self.db.profile.darkA)
				--end

				texture:Show()
				ZGV:Debug(texture:GetName().." "..tostring(texture:IsShown()))
			end
		end
	end

	for i = textureCount+1, NUM_WORLDMAP_OVERLAYS do
		ZGV:Debug("Hiding "..i)
		_G["WorldMapOverlay"..i]:Hide()
	end

	for k in pairs(discovered) do
		discovered[k] = nil
	end
end

function Foglight:OnProfileEnable()
	WorldMapFrame_Update()
end
--]]