// Kiste Echo Typ III - Anti Tank
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_echo_typ_iii.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["Titan_AT",8];
_box addItemCargoGlobal ["launch_I_Titan_short_F", 1];