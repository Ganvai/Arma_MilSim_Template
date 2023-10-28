/* 13 Chemical

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\13_sp_chemical.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;


_box addItemCargoGlobal ["U_B_CBRN_Suit_01_Wdl_F", 12];
_box addItemCargoGlobal ["kat_mask_M04", 12];
_box addItemCargoGlobal ["ChemicalDetector_01_watch_F", 5];
_box addItemCargoGlobal ["kat_gasmaskFilter", 36];
_box addItemCargoGlobal ["kat_sealant", 30];
_box addItemCargoGlobal ["kat_atropine", 12];