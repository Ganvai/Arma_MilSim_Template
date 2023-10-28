//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Dynamic Groups
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//DynamicGroups_Function Function needs to be initialized on server and client. Clients can then use action TeamSwitch ("U" by default) to access the Dynamic Groups interface.
["Initialize"] call BIS_fnc_dynamicGroups;			//Exec on Server


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//				Reading Variables from Mission Config
//
//------------------------------------------------------------------
//------------------------------------------------------------------

if (getMissionConfigValue "missionstartedfeat" == "true") then {
	missionstarted = false;
}
else {
	missionstarted = true;
};

publicVariable "missionstarted";

factionVariable = getMissionConfigValue "faction";
publicVariable "factionVariable";

camoVariable = getMissionConfigValue "camo";
publicVariable "camoVariable";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					Equipment Variables
//
//------------------------------------------------------------------
//------------------------------------------------------------------

armoryPath = format ["loadouts\%1\armory.sqf", factionVariable];
publicVariable "armoryPath";

supplyPath = format ["loadouts\%1\supplySystem\", factionVariable];
publicVariable "supplyPath";

_rolessqf = format ["loadouts\%1\roles.sqf", factionVariable];
execVM _rolesqf;

_faction_equipmentsqf = format ["loadouts\%1\faction_equipment.sqf", factionVariable];
execVM _faction_equipmentsqf;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//				Variablen for Radio-Log
//
//------------------------------------------------------------------
//------------------------------------------------------------------
rlPlatoon = "";
publicVariable "rlZug";
rlAlpha = "";
publicVariable "rlAlpha";
rlBravo = "";
publicVariable "rlBravo";
rlCharlie = "";
publicVariable "rlCharlie";
rlDelta = "";
publicVariable "rlDelta";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Fortify Tool
//
//				Available Items via Fortify Tool
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//Fortify Items Object, Buildtime
//Buildtime Calculatio: (x * 8) + 20, meaning Buildtime "1" is 28 seconds, "2" ist 36, "0.5" is 24 and "-1" is 12 seconds

//Woodland
if isClass (configFile >> "CfgPatches" >> "ace_main") then
{
	[west, -1, [

	["RoadCone_L_F",-2],
	["PortableHelipadLight_01_red_F",-2],
	
	["RoadBarrier_F",0],
	["Land_PortableLight_double_F",0],
	["Land_Plank_01_4m_F",0],

	["Land_Razorwire_F",1],
	["Land_Plank_01_8m_F",1],
	
	["Land_CzechHedgehog_01_new_F",2],
	["Land_CncBarrier_stripes_F",2],
	
	["Land_SandbagBarricade_01_half_F",3],
	
	["Land_SandbagBarricade_01_F",4],
	["Land_SandbagBarricade_01_hole_F",4],
	["Land_BarGate_F",4],
	
	//Woodland Specific
	["Land_BagFence_01_long_green_F",4],
	["Land_BagFence_01_round_green_F",4],
	
	["Land_BagBunker_01_small_green_F",15],
	
	["CamoNet_BLUFOR_F",5],
	["CamoNet_BLUFOR_open_F",5],
	["CamoNet_BLUFOR_big_F",5],
	["GerRng_MedTent_01",5]
	]] call acex_fortify_fnc_registerObjects;
};

/*
//Arid
if isClass (configFile >> "CfgPatches" >> "ace_main") then
{
	[west, -1, [

	["RoadCone_L_F",-2],
	["PortableHelipadLight_01_red_F",-2],
	
	["RoadBarrier_F",0],
	["Land_PortableLight_double_F",0],
	["Land_Plank_01_4m_F",0],

	["Land_Razorwire_F",1],
	["Land_Plank_01_8m_F",1],
	
	["Land_CzechHedgehog_01_new_F",2],
	["Land_CncBarrier_stripes_F",2],
	
	["Land_SandbagBarricade_01_half_F",3],
	
	["Land_SandbagBarricade_01_F",4],
	["Land_SandbagBarricade_01_hole_F",4],
	["Land_BarGate_F",4],
	
	//Woodland Specific
	["Land_BagFence_Long_F",4],
	["Land_BagFence_Round_F",4],
	
	["Land_BagBunker_Small_F",15],
	
	["Land_HBarrier_3_F",20],
	
	["CamoNet_OPFOR_F",5],
	["CamoNet_OPFOR_open_F",5],
	["CamoNet_OPFOR_big_F",5],
	["GerRng_MedTent_01",5]
	]] call acex_fortify_fnc_registerObjects;
};
*/