// Kiste Echo Typ I - Munition
// Aufruf im Editor mit 	[this] execvm "scripts\supplies\box_echo_typ_i.sqf";

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["CUP_30Rnd_556x45_Stanag", 59];
_box addItemCargoGlobal ["CUP_30Rnd_Subsonic_9x19_MP5", 59];
_box addItemCargoGlobal ["CUP_7Rnd_45ACP_1911", 20];
