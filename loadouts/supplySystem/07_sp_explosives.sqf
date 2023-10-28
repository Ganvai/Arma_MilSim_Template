/* 10 Explosives

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\10_sp_explosives.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["ACE_Clacker", 2];
_box addItemCargoGlobal ["ACE_DefusalKit", 1];
_box addItemCargoGlobal ["ACE_VMM3", 1];

_box addItemCargoGlobal ["DemoCharge_Remote_Mag", 3];
_box addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 3];
_box addItemCargoGlobal ["SatchelCharge_Remote_Mag", 2];
_box addItemCargoGlobal ["ATMine_Range_Mag", 4];