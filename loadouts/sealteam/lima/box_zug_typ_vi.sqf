// Kiste Zug Typ V - Waffen & Zubehör
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_vi.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["CUP_optic_SMAW_Scope",2];
_box addItemCargoGlobal ["CUP_launch_Mk153Mod0",2];
_box addItemCargoGlobal ["CUP_SMAW_HEAA_M",6];
_box addItemCargoGlobal ["CUP_SMAW_Spotting",2];