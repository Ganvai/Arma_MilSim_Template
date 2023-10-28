// Kiste Zug Typ V - Waffen & Zubehör
/* Aufruf im Editor mit:

_path = format ["loadouts\%1\lima\box_zug_typ_v.sqf", getMissionConfigValue "fraktion"]; 
null = [this] execVM _path;

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["CUP_arifle_G36A3",2];
_box addItemCargoGlobal ["CUP_arifle_HK416_Black",2];
_box addItemCargoGlobal ["CUP_arifle_HK417_20",2];
_box addItemCargoGlobal ["CUP_arifle_G36A3_AG36",2];
_box addItemCargoGlobal ["CUP_optic_HensoldtZO_low_RDS",5];
_box addItemCargoGlobal ["CUP_optic_Elcan_reflex",5];