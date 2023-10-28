//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Player Init
//
//------------------------------------------------------------------
//------------------------------------------------------------------
waitUntil{!isNull(player)};
setTerrainGrid 25;
enableEnvironment [false, true];
titleText ["Mission preparing...", "BLACK FADED" ];

// briefingName
[] execVM "scripts\briefing.sqf";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Dynamic Groups
//
//------------------------------------------------------------------
//------------------------------------------------------------------

//DynamicGroups_Function Function needs to be initialized on server and client. Clients can then use action TeamSwitch ("U" by default) to access the Dynamic Groups interface.
["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;			//Exec on client


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Loadouts
//
//------------------------------------------------------------------
//------------------------------------------------------------------
sleep 1;


call compile preprocessFileLineNumbers "loadouts\loadoutInit.sqf";

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Recolor
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
// Recolor Post-Processing - Night
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [1.04,0.9,-0.00279611,[0.147043,0,0.0476897,-0.34],[1,1,0.94,1.15],[1.39,0.95,-1.34,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
*/

/*
// Recolor Post-Processing - Desert/Winter
"colorCorrections" ppEffectAdjust 	[1,1,-0.01,[0.0, 0.0, 0.0, 0.0],[1, 0.8, 0.6, 0.6],[0.199, 0.587, 0.114, 0.0]]; 
"colorCorrections" ppEffectEnable true; 
"colorCorrections" ppEffectCommit 0; 
"filmGrain" ppEffectAdjust 	[0.04,1,1,0.1,1,false];      
"filmGrain" ppEffectEnable true;    
*/

/*
// Recolor Post-Processing - Winter Day
"colorCorrections" ppEffectAdjust  [1.1,1.2,-0.01,[0.0, 0.0, 0.0, 0.0],[0.8, 0.8, 1, 0.6],[0.199, 0.587, 0, 0.0]];  
"colorCorrections" ppEffectEnable true;  
"colorCorrections" ppEffectCommit 0; 
"filmGrain" ppEffectAdjust 	[0.04,1,1,0.1,1,false];      
"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectCommit 0;  
*/

/*
// Recolor Post-Processing - brownish, bright african
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500];
PPeffect_colorC ppEffectAdjust [1,1,-0.00279611,[0.399248,0.452746,0.307538,0.1042],[1.36009,1,0.320698,0.95],[2.50966,0.263398,3.22694,0]];
PPeffect_colorC ppEffectEnable true;
PPeffect_colorC ppEffectCommit 0;
*/

/*
// Recolor Post-Processing - Jungle Rainy
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500]; 
PPeffect_colorC ppEffectAdjust [1,1,0,[0,1,0.3,0.04],[1,1,1,1],[0.3,0.587,0.114,0]]; 
PPeffect_colorC ppEffectEnable true; 
PPeffect_colorC ppEffectCommit 0;
"filmGrain" ppEffectAdjust  [0.04,1,1,0.1,1,false];
"filmGrain" ppEffectEnable true;
*/

/*
// Recolor Post-Processing - Jungle
PPeffect_colorC = ppEffectCreate ["ColorCorrections",1500]; 
PPeffect_colorC ppEffectAdjust [1,1,0,[0,1,0.1,0.04],[1,1,1,1],[0.3,0.587,0.114,0]]; 
PPeffect_colorC ppEffectEnable true; 
PPeffect_colorC ppEffectCommit 0;
*/
//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Sandstorm Effect
//
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
	[object,interval,brightness,newspapers] call BIS_fnc_sandstorm
	position: Object - sandstorm center (should be player)
	interval (Optional): Number - particle refresh time (default is 0.07)
	brightness (Optional): Number - brightness coeficient (default is 1)
	newspapers (Optional): Boolean - true if flying newspapers will be present (default is true)
*/

//[player, 0.9, 0.5, true] call BIS_fnc_sandstorm;


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					Crates Dragable with ACE
//				Only needed for non ACE crates
//------------------------------------------------------------------
//------------------------------------------------------------------

/*
check the weight:	[cursorTarget] call ace_dragging_fnc_getweight;
max weight is:		ACE_maxWeightCarry = 600;
					ACE_maxWeightDrag = 800;
*/

/*
if isClass (configFile >> "CfgPatches" >> "ace_main") then {
    [crate1, true, [0, 1, 1], 0] call ace_dragging_fnc_setCarryable;
    [crate1, true, [0, 2, 0], 90] call ace_dragging_fnc_setDraggable;
};
*/


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//					TFAR Longrange in Vehicles
//
//------------------------------------------------------------------
//------------------------------------------------------------------

// Needed for having the right TFAR Longrange Unit in Vehicle from other Faction

/*
if (isClass(configFile >> "cfgPatches" >> "task_force_radio")) then {
    car1 setVariable ["tf_side", west];
    car1 setVariable ["tf_hasRadio", true];
    car1 setVariable ["TF_RadioType", "tfar_rt1523g"];
};
*/

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Base Menu
//
//------------------------------------------------------------------
//------------------------------------------------------------------

_playerGrp = group player;

//Condition in which radius around the "base"-Object the Base-Menu is available
_condition = {player distance base < 100 || missionstarted == false};

_mainDialog = {createDialog "Main_Dialog";};

// Creating a Sub Menu Category GR Base with Logo
_base_menu = ["Base Menu","Base Menu","images\Logo.paa",_mainDialog,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _base_menu] call ace_interact_menu_fnc_addActionToClass;

//Add Armory to ACE Menu GR Base
if (getMissionConfigValue "allowArmory" == "true") then {
	_armory = ["Armory","Armory","",{ execVM Armorypfad; },_condition] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions","Base Menu"], _armory] call ace_interact_menu_fnc_addActionToClass;
};

//Add Teleport to ACE Base Menu 
_teleport_action = ["Teleporter","Teleporter","gui\teleport\icon_teleport.paa",{ _ok = createDialog "Teleport_Dialog";},_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _teleport_action] call ace_interact_menu_fnc_addActionToClass;

//Add Loadout Menu to ACE Base Menu
_loadout_action = ["Loadouts","Loadouts","",_choose_Loadout,_condition] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","GR Base"], _loadout_action] call ace_interact_menu_fnc_addActionToClass;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Radio Log
//
//------------------------------------------------------------------
//------------------------------------------------------------------

_radio_menu = ["Radiocode","Radiocode","images\GermanRangersLogo.paa","",{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions"], _radio_menu] call ace_interact_menu_fnc_addActionToClass;

_radiocode1 = ["Radiocode 1","Code 1 - Come In","",{ [1] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode1] call ace_interact_menu_fnc_addActionToClass;

_radiocode2 = ["Radiocode 2","Code 2 - Arrival on Scene","",{ [2] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode2] call ace_interact_menu_fnc_addActionToClass;

_radiocode3 = ["Radiocode 3","Code 3 -Assignment Complete","",{ [3] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode3] call ace_interact_menu_fnc_addActionToClass;

_radiocode4 = ["Radiocode 4","Code 4 - Waiting for Orders","",{ [4] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode4] call ace_interact_menu_fnc_addActionToClass;

_radiocode5 = ["Radiocode 5","Code 5 - Tango spotted","",{ [5] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode5] call ace_interact_menu_fnc_addActionToClass;

_radiocode6 = ["Radiocode 6","Code 6 - Recieving Fire","",{ [6] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode6] call ace_interact_menu_fnc_addActionToClass;

_radiocode7 = ["Radiocode 7","Code 7 - In Firefight","",{ [7] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode7] call ace_interact_menu_fnc_addActionToClass;

_radiocode8 = ["Radiocode 8","Code 8 - Personal Wounded","",{ [8] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode8] call ace_interact_menu_fnc_addActionToClass;

_radiocode9 = ["Radiocode 9","Code 9 - Clear","",{ [9] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode9] call ace_interact_menu_fnc_addActionToClass;

_radiocode10 = ["Radiocode 10","Code 10 - Groupleader Down","",{ [10] execVM "scripts\Radiocode.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[(typeOf player), 1, ["ACE_SelfActions","Radiocode"], _radiocode10] call ace_interact_menu_fnc_addActionToClass;
*/
//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Zeus Mission Control
//
//------------------------------------------------------------------
//------------------------------------------------------------------

// Creating a Sub Menu Category GR Base with Logo
_mission_control = ["Mission Control","Mission Control","images\GermanRangersLogo.paa",{}, {true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions"], _mission_control] call ace_interact_menu_fnc_addActionToZeus;

_start_mission = ["Missionstart","Missionstart","",{ execVM "scripts\MCC_chapter_missionstart.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _start_mission] call ace_interact_menu_fnc_addActionToZeus;

_mission_succesful = ["End: Mission Accomplished","End: Mission Accomplished","",{ execVM "scripts\MCC_chapter_missionendsuccesfull.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _mission_succesful] call ace_interact_menu_fnc_addActionToZeus;

_to_be_continued = ["End: TO BE CONTINUED","End: TO BE CONTINUED","",{ execVM "scripts\MCC_chapter_missionendcontinue.sqf"; },{true}] call ace_interact_menu_fnc_createAction;
[["ACE_ZeusActions","Mission Control"], _to_be_continued] call ace_interact_menu_fnc_addActionToZeus;



//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Admin Control Menu
//
//------------------------------------------------------------------
//------------------------------------------------------------------


if (_playerGrp == toc) then {
	// Creating the Admin Control Menu Category GR Base with Logo
	_adminmenu = ["TOC Menu","TOC Menu","images\GermanRangersLogo.paa",{}, {true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions"], _adminmenu] call ace_interact_menu_fnc_addActionToClass;

	_fullheal = ["Full Heal","Full Heal","a3\ui_f\data\igui\cfg\simpletasks\types\heal_ca.paa",{[player, cursorObject] call ace_medical_treatment_fnc_fullHeal},{true}] call ace_interact_menu_fnc_createAction;
	[(typeOf player), 1, ["ACE_SelfActions","TOC Menu"], _fullheal] call ace_interact_menu_fnc_addActionToClass;

	[(typeOf player), 1, ["ACE_SelfActions","TOC Menu"], _start_mission] call ace_interact_menu_fnc_addActionToClass;

	[(typeOf player), 1, ["ACE_SelfActions","TOC Menu"], _mission_succesful] call ace_interact_menu_fnc_addActionToClass;
	
	[(typeOf player), 1, ["ACE_SelfActions","TOC Menu"], _to_be_continued] call ace_interact_menu_fnc_addActionToClass;

};


//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Supply Point
//
//------------------------------------------------------------------
//------------------------------------------------------------------

if (getMissionConfigValue "supplyFeature" == "true") then {
		//Supply Point Static
		
		_box1 = ["Box1","01 Zug - Munition","",{[[1,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box1] call ace_interact_menu_fnc_addActionToObject;

		_box2 = ["Box2","02 Zug - Schwere Munition","",{[[2,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box2] call ace_interact_menu_fnc_addActionToObject;

		_box3 = ["Box3","03 Zug - Granaten","",{[[3,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box3] call ace_interact_menu_fnc_addActionToObject;

		_box4 = ["Box4","04 Zug - Werfer Munition","",{[[4,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box4] call ace_interact_menu_fnc_addActionToObject;

		_box5 = ["Box5","05 Zug - Leichte Werfer","",{[[5,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box5] call ace_interact_menu_fnc_addActionToObject;

		_box6 = ["Box6","06 Zug - SanMat","",{[[6,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box6] call ace_interact_menu_fnc_addActionToObject;

		_box7 = ["Box7","07 Echo - Munition","",{[[7,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box7] call ace_interact_menu_fnc_addActionToObject;

		_box8 = ["Box8","08 Sierra - Munition","",{[[8,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box8] call ace_interact_menu_fnc_addActionToObject;

		_box9 = ["Box9","09 SP - Granaten","",{[[9,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box9] call ace_interact_menu_fnc_addActionToObject;

		_box10 = ["Box10","10 SP - Sprengung","",{[[10,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box10] call ace_interact_menu_fnc_addActionToObject;

		_box11 = ["Box11","11 SP - Technik","",{[[11,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box11] call ace_interact_menu_fnc_addActionToObject;
		
		_box12 = ["Box12","12 SP - Drohnen","",{[[12,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box12] call ace_interact_menu_fnc_addActionToObject;

		_box13 = ["Box13","13 SP - CBRN","",{[[13,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box13] call ace_interact_menu_fnc_addActionToObject;

		_box16 = ["Box16","16 Lima - Leere Box","",{[[16,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box16] call ace_interact_menu_fnc_addActionToObject;

		_box17 = ["Box17","17 Lima - Transportkiste","",{[[17,"static"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointstatic, 0, ["ACE_MainActions"], _box17] call ace_interact_menu_fnc_addActionToObject;


		//Supply Point Mobile
		
		_box1m = ["Box1","01 Zug - Munition","",{[[1,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box1m] call ace_interact_menu_fnc_addActionToObject;

		_box2m = ["Box2","02 Zug - Schwere Munition","",{[[2,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box2m] call ace_interact_menu_fnc_addActionToObject;

		_box3m = ["Box3","03 Zug - Granaten","",{[[3,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box3m] call ace_interact_menu_fnc_addActionToObject;

		_box4m = ["Box4","04 Zug - Werfer Munition","",{[[4,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box4m] call ace_interact_menu_fnc_addActionToObject;

		_box5m = ["Box5","05 Zug - Leichte Werfer","",{[[5,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box5m] call ace_interact_menu_fnc_addActionToObject;

		_box6m = ["Box6","06 Zug - SanMat","",{[[6,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box6m] call ace_interact_menu_fnc_addActionToObject;

		_box7m = ["Box7","07 Echo - Munition","",{[[7,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box7m] call ace_interact_menu_fnc_addActionToObject;

		_box8m = ["Box8","08 Sierra - Munition","",{[[8,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box8m] call ace_interact_menu_fnc_addActionToObject;

		_box9m = ["Box9","09 SP - Granaten","",{[[9,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box9m] call ace_interact_menu_fnc_addActionToObject;

		_box10m = ["Box10","10 SP - Sprengung","",{[[10,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box10m] call ace_interact_menu_fnc_addActionToObject;

		_box11m = ["Box11","11 SP - Technik","",{[[11,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box11m] call ace_interact_menu_fnc_addActionToObject;
		
		_box12m = ["Box12","12 SP - Drohnen","",{[[12,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box12m] call ace_interact_menu_fnc_addActionToObject;

		_box13m = ["Box13","13 SP - CBRN","",{[[13,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box13m] call ace_interact_menu_fnc_addActionToObject;

		_box16m = ["Box16","16 Lima - Leere Box","",{[[16,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box16] call ace_interact_menu_fnc_addActionToObject;

		_box17m = ["Box17","17 Lima - Transportkiste","",{[[17,"mobile"], "loadouts\lima\limasupplypoint.sqf"] remoteExec ["execVM"];},{true}] call ace_interact_menu_fnc_createAction;
		[limasupplypointmobile, 0, ["ACE_MainActions"], _box17] call ace_interact_menu_fnc_addActionToObject;
};


//FoggyBreath
//_units = if (!isMultiplayer) then {switchableUnits} else {playableUnits};
//{[_x, 0.03] execVM "scripts\foggy_breath.sqf"} forEach _units;

//Ground Fog
//null = [] execVM "scripts\GroundFog.sqf";

//If active, all Players will be teleported onto the "base"-Object 

if (getMissionConfigValue "missionstartedfeat" == "true") then {
	if missionstarted then {
		player setPos getPos base;
	};
};

sleep 1;

titleText ["Missionsvorbereitung", "BLACK IN" ];

//Blurry Back to Visuals
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 3;

//------------------------------------------------------------------
//------------------------------------------------------------------
//
//							Mod Check
//
// 			Checks Loaded Mods and logs Non Whitelisted
//------------------------------------------------------------------
//------------------------------------------------------------------

[] execVM "scripts\modcheck.sqf";