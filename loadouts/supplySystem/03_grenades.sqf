/* 03 Grenades

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\03_zug_grenades.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_boxLoad = 0;
_loadItems = 0;

_magMass = [configfile >> "CfgMagazines" >> (grenades), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 200 / _magMass;
_box addMagazineCargoGlobal [grenades, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (smoke_white), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 90 / _magMass;
_box addMagazineCargoGlobal [smoke_white, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (smoke_green), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 30 / _magMass;
_box addMagazineCargoGlobal [smoke_green, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (smoke_red), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 30 / _magMass;
_box addMagazineCargoGlobal [smoke_red, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (UGL_HE), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 120 / _magMass;
_box addMagazineCargoGlobal [UGL_HE, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (UGL_Smoke), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 70 / _magMass;
_box addMagazineCargoGlobal [UGL_Smoke, _loadItems];

_magMass = [configfile >> "CfgMagazines" >> (UGL_Flare), "mass"] call BIS_fnc_returnConfigEntry;
_loaditems = 50 / _magMass;
_box addMagazineCargoGlobal [UGL_Flare, _loadItems];