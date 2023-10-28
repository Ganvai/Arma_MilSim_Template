/*
 *  Author: 
 */
private [];
	
	// Welche Gruppe
	_LoadoutClass = "Zug";
	_LoadoutClass = param[0]; // get the right group, currently not done
	
	_fraktion = getMissionConfigValue "fraktion";

	_rollensqf = format ["loadouts\%1\rollen.sqf", _fraktion];
	execVM _rollensqf;
	
	loudout = [];
	publicVariable "loudout";
	loudoutindex = [];
	publicVariable "loudoutindex";
	
	//swicht gruppe set Loadouts for the group	
switch (_LoadoutClass) do
{
	case "Sierra": { 
		{
			loudout pushBack (_x select 0);
			loudoutindex pushback (_x select 1);
		} forEach sierraRollen;
	};
	 case "Echo": {  
		{
			loudout pushBack (_x select 0);
			loudoutindex pushback (_x select 1);
		} forEach echoRollen;
	};
	
	case "Lima": {  
		{
			loudout pushBack (_x select 0);
			loudoutindex pushback (_x select 1);
		} forEach limaRollen;
	};
	
	default {
		{
			loudout pushBack (_x select 0);
			loudoutindex pushback (_x select 1);
		} forEach zugRollen;
	};
};

	//Show the  loudout/roles in the selection

	_loudout = loudout;
	_loudoutIndex = loudoutIndex;
	
	{
		lbAdd [1500, _x];
		lbSetData [1500, _forEachIndex, _loudoutIndex select _forEachIndex];	 
	} forEach _loudout;