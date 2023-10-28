/* 04 Launcher

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\04_zug_launcher_ammo.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_at1_mass = = [configfile >> "CfgMagazines" >> (launcher_at_ammo1), "mass"] call BIS_fnc_returnConfigEntry;
_at2_mass = = [configfile >> "CfgMagazines" >> (launcher_at_ammo2), "mass"] call BIS_fnc_returnConfigEntry;
_at3_mass = = [configfile >> "CfgMagazines" >> (launcher_at_spotting), "mass"] call BIS_fnc_returnConfigEntry;
_at4_mass = = [configfile >> "CfgMagazines" >> (launcher_aa_ammo), "mass"] call BIS_fnc_returnConfigEntry;

_loaditems = 200 / _at1_mass;
_box addMagazineCargoGlobal [launcher_at_ammo1, _loadItems];

if (_at2_mass == 0) then {
	_loaditems = 150 / _at1_mass;
	_box addMagazineCargoGlobal [launcher_at_ammo1, _loadItems];
}
else {
	_loaditems = 150 / _at2_mass;
	_box addMagazineCargoGlobal [launcher_at_ammo2, _loadItems];
};

if (_at3_mass == 0) then {
	_loaditems = 150 / _at1_mass;
	_box addMagazineCargoGlobal [launcher_at_ammo1, _loadItems];
}
else {
	_loaditems = 150 / _at3_mass;
	_box addMagazineCargoGlobal [launcher_at_spotting, _loadItems];
};

if (_at4_mass == 0) then {
	_loaditems = 150 / _at1_mass;
	_box addMagazineCargoGlobal [launcher_at_ammo1, _loadItems];
}
else {
	_loaditems = 150 / _at4_mass;
	_box addMagazineCargoGlobal [launcher_aa_ammo, _loadItems];
};