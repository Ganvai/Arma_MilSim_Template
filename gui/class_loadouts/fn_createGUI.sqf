/*
 *  Author: 
 */
private [];	
	// Welche Gruppe
	_LoadoutClass = "Zug";
	_LoadoutClass = param[0];
	
	//_rollensqf = format ["loadouts\%1\rollen.sqf", fraktionV];
	//execVM _rollensqf;
	
	loadout = [];
	publicVariable "loadout";
	loadoutindex = [];
	publicVariable "loadoutindex";
	
switch (_LoadoutClass) do
{
	case "Sierra": { 
		{
			loadout pushBack (_x select 0);
			loadoutindex pushback (_x select 1);
		} forEach sierraRollen;
	};
	 case "Echo": {  
		{
			loadout pushBack (_x select 0);
			loadoutindex pushback (_x select 1);
		} forEach echoRollen;
	};
	
	case "Lima": {  
		{
			loadout pushBack (_x select 0);
			loadoutindex pushback (_x select 1);
		} forEach limaRollen;
	};
	
	default {
		{
			loadout pushBack (_x select 0);
			loadoutindex pushback (_x select 1);
		} forEach zugRollen;
	};
};

{
	lbAdd [1500, _x];
	lbSetData [1500, _forEachIndex, loadoutIndex select _forEachIndex];	 
} forEach loadout;

_menueDialog = createDialog 'ClassLoadout_Dialog';

//Show the  loadout/roles in the selection

//_loadout = loadout;
//_loadoutIndex = loadoutIndex;

