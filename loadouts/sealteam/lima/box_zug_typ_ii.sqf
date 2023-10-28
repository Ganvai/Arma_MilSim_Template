// Kiste Zug Typ II - Explosiv-Munition
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_ii.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal ["CUP_1Rnd_HE_M203",15];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",10];
_box addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",15];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",15];
_box addMagazineCargoGlobal ["CUP_SMAW_HEAA_M",6];
_box addMagazineCargoGlobal ["CUP_SMAW_Spotting",2];

