/* 02 Heavy Ammo

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\02_zug_heavy_ammo.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_boxLoad = 0;
_loadItems = 0;

_magMass = [configfile >> "CfgMagazines" >> (mg_mag), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 300 / _magMass;
_box addMagazineCargoGlobal [mg_mag, _loadItems];


_boxMass = 500 - (_box call ace_dragging_fnc_getweight);
_magMass = [configfile >> "CfgMagazines" >> (dm_mags), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = _boxMass / _magMass;
_box addMagazineCargoGlobal [dm_mags, _loadItems];


_boxMass = 600 - (_box call ace_dragging_fnc_getweight);
_magMass = [configfile >> "CfgMagazines" >> (autorifle_mag), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = _boxMass / _magMass;
_box addMagazineCargoGlobal [autorifle_mag, _loadItems];