/* 01 Primary Ammo

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\01_zug_ammo.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_boxLoad = 0;
_secMag = false;
_loadItems = 0;

//Check if secondary mags exist
_magMass = [configfile >> "CfgMagazines" >> (secondary_mag), "mass"] call BIS_fnc_returnConfigEntry;
if (_magMass < 0) then {
	_secMag = true;
};

_magMass = [configfile >> "CfgMagazines" >> (primary_mag), "mass"] call BIS_fnc_returnConfigEntry;

if _secMag then {
	_loaditems = 500 / _magMass;
	_box addMagazineCargoGlobal [primary_mag, _loadItems];

}
else {
	_loaditems = 300 / _magMass;
	_box addMagazineCargoGlobal [primary_mag, _loadItems];
	_magMass = [configfile >> "CfgMagazines" >> (secondary_mag), "mass"] call BIS_fnc_returnConfigEntry;
	_loaditems = 200 / _magMass;
	_box addMagazineCargoGlobal [secondary_mag, _loadItems];
};

_boxMass = 600 - (_box call ace_dragging_fnc_getweight);

_magMass = [configfile >> "CfgMagazines" >> (handgun_mag), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = _boxMass / _magMass;
_box addMagazineCargoGlobal [handgun_mag, _loadItems];
