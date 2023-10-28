/* 12 Grenades

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\12_sp_drone.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal [uav_Terminal, 2];

_box addMagazineCargoGlobal [uav_backpack, 2];

_box addMagazineCargoGlobal [uav_battery, 8];