// Kiste Zug Typ III - Granaten
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_iii.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal ["SmokeShell",30];
_box addMagazineCargoGlobal ["SmokeShellGreen",30];
_box addMagazineCargoGlobal ["SmokeShellRed",30];
_box addMagazineCargoGlobal ["CUP_HandGrenade_M67",30];
