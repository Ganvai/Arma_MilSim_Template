/* 06 San Mat

Aufruf im Editor mit: null = [this] execVM "loadouts\lima\06_zug_san.sqf";

*/

if (! isServer) exitWith {};

_box = _this select 0;

clearWeaponCargoGlobal _box; 
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addItemCargoGlobal ["ACE_splint",20];
_box addItemCargoGlobal ["kat_chestSeal",15];
_box addItemCargoGlobal ["kat_larynx",50];
_box addItemCargoGlobal ["kat_IO_FAST",15];
_box addItemCargoGlobal ["ACE_elasticBandage",100];
_box addItemCargoGlobal ["ACE_packingBandage",40];
_box addItemCargoGlobal ["ACE_quikclot",20];
_box addItemCargoGlobal ["ACE_epinephrine",25];
_box addItemCargoGlobal ["ACE_salineIV_500",120];
_box addItemCargoGlobal ["kat_naloxone",10];
_box addItemCargoGlobal ["kat_IV_16",75];
_box addItemCargoGlobal ["kat_TXA",50];
_box addItemCargoGlobal ["ACE_adenosine",30];
_box addItemCargoGlobal ["kat_norepinephrine",5];
_box addItemCargoGlobal ["kat_nitroglycerin",50];
_box addItemCargoGlobal ["kat_phenylephrine",5];
_box addItemCargoGlobal ["kat_CarbonateItem",5];
_box addItemCargoGlobal ["kat_EACA",50];
_box addItemCargoGlobal ["kat_ketamine",20];
_box addItemCargoGlobal ["kat_fentanyl",10];
_box addItemCargoGlobal ["kat_Pulseoximeter",10];
_box addItemCargoGlobal ["kat_oxygenTank_150_Item",5];



