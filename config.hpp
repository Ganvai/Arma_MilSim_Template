//German Rangers Mission Feature Config Variables
supplyFeature		= true;			//Sets if a Lima Supply Point is available for all Players in Groups Lima and Kilo(Needs adjusted supply boxes in Lima folder for the Fraktion)
missionstartedfeat	= true;			//Sets if the "Mission Started"-Feature is available. When the Feature is "true", all Players have the GR GUI everywhere available until the Mission is started by Zeus
									//After the Mission was started, every JIP Player will be spawned in the Base, defined in initPlayerLocal.sqf. 
									//This is used for Missions that start in field. Needs the Mission Start Feature from Zeus!
// Loadouts 
loadPlayers 		= false;		//Sets if Loadouts for Players are loaded from DB
faction 			= "bw"; 		//Sets the Loadout Path for the Mission start: "bwfleck" | "marsoc"
camo				= "bwfleck";	//If the fraktion has different camos, it is changed here.

allowArmory			= true;			//Sets if the Waffenkammer is available ingame
allowLoadouts		= true;			//Sets if the Loadout Change is available ingame

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					Instant Intro Maker
//
//------------------------------------------------------------------
//------------------------------------------------------------------
intro 				= "PR";			// Choose the Intro Music that is played (please delete mmc_sequence_xxx.sqf files that you don't need and the corresponding intro soundfiles under sounds/)
									// "PR" Pacific Rim | Rockig, Episch | 0:42
									// "Rock" The Rock | Episch, Orchestral | 0:55
									// "Sic" Sicario | Düster, Elektronisch | 0:46
									// "BHD" Black Hawk Down | Düster, Ethnische Trommeln | 0:41
									// "KA" King Arthur | Episch, Laut | 0:58

introsentence = "Introducing sentence in starting sequence";
mission = "Mission: <br/>1. Target<br/>2. Target<br/>3. Target";
titleHeadline = "O P E R A T I O N   S I T E - DD.MM.YYYY - U N I T";
titleMissionname = "Missionname";

tickerCountry = "Land, Region";
tickerLocation = "Map-Location";

outro 				= "Rock";		// Hier kannst du die Musik wählen, die bei einem Erfolgreichen Missionsende gespielt wird
									// "PR1" Pacific Rim | Rockig, Episch | 0:30
									// "PR2" Pacific Rim | Rockig, Episch, etwas schwerer als PR1 | 0:30
									// "Rock" The Rock | Episch, Orchestral | 0:40
									// "AFO" Air Force One | Militärisch, Klassisch, Orchester| 0:35
									// "MGS" Metal Gear Solid | Episch, Modern Orchestral, lang | 1:16
