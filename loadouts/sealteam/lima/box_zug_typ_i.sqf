// Kiste Zug Typ I - Infantrie-Munition
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_i.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_G36", 40];
_box addMagazineCargoGlobal ["CUP_30Rnd_556x45_PMAG_BLACK_PULL", 30];
_box addMagazineCargoGlobal ["CUP_20Rnd_762x51_HK417", 40];
_box addMagazineCargoGlobal ["CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch",4];
