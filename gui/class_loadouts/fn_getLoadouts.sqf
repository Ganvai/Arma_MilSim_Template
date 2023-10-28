/*
 *  Author: 
 */
private ["_loadout","_loadoutIndex"];
	
	//_loadout = loadout;
	//_loadoutIndex = loadoutIndex;
	
	{
		lbAdd [1500, _x];
		lbSetData [1500, _forEachIndex, loadoutIndex select _forEachIndex];	 
	} forEach loadout;
		