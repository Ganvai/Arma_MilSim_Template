/* 05 Launcher Light

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\05_zug_launcher_light.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_magMass = [configfile >> "CfgVehicles" >> (launcher_at_light), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 600 / _magMass;
_box addMagazineCargoGlobal [launcher_at_light, _loadItems];