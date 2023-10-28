//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						EchoDive_3
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","EchoDive_3"];
_notloadeditems = [];

//------------------------------------------------------------------
//	Initialisierung
//------------------------------------------------------------------	
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//------------------------------------------------------------------
//	Auto filled
//------------------------------------------------------------------
player forceAddUniform echo_diving_suit;
player addHeadgear echo_diving_helmet;
player addVest echo_diving_weste;
player addGoggles echo_diving_facewear;
player addBackpack rucksack_lr;

// Waffen
player addWeapon echo_diving_primary;
player addPrimaryWeaponItem echo_diving_primary_scope;
player addPrimaryWeaponItem echo_diving_primary_attachement1;
player addPrimaryWeaponItem echo_diving_primary_attachement2;
player addPrimaryWeaponItem echo_diving_primary_silencer;
player addPrimaryWeaponItem echo_diving_primary_mag;

player addWeapon handgun;
player addHandgunItem handgun_mag;
player addHandgunItem handgun_attachment1;
player addHandgunItem handgun_attachment2;
player addHandgunItem handgun_mag;


//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to echo_diving_primary__mag_count do {
	_fits = player canAddItemToVest echo_diving_primary_mag;
	if (_fits) then {
		player addItemToVest echo_diving_primary_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack echo_diving_primary_mag;
		if (_fits) then {
			player addItemToBackpack echo_diving_primary_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform echo_diving_primary_mag;
			if (_fits) then {
				player addItemToUniform echo_diving_primary_mag;
			}
			else {
				_notloadeditems pushback echo_diving_primary_mag;
			};
		};
	};
};

//------------------------------------------------------------------
//	Pistole
//------------------------------------------------------------------
for "_i" from 1 to 1 do {
	_fits = player canAddItemToVest handgun_mag;
	if (_fits) then {
		player addItemToVest handgun_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack handgun_mag;
		if (_fits) then {
			player addItemToBackpack handgun_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform handgun_mag;
			if (_fits) then {
				player addItemToUniform handgun_mag;
			}
			else {
				_notloadeditems pushback handgun_mag;
			};
		};
	};
};		


//------------------------------------------------------------------
//	Smokes White
//------------------------------------------------------------------
for "_i" from 1 to 1 do {
	_fits = player canAddItemToVest smoke_white;
	if (_fits) then {
		player addItemToVest smoke_white;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_white;
		if (_fits) then {
			player addItemToBackpack smoke_white;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_white;
			if (_fits) then {
				player addItemToUniform smoke_white;
			}
			else {
				_notloadeditems pushback smoke_white;
			};
		};
	};
};

//------------------------------------------------------------------
//	Flashbangs
//------------------------------------------------------------------
for "_i" from 1 to 1 do {
	_fits = player canAddItemToVest flashbang;
	if (_fits) then {
		player addItemToVest flashbang;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack flashbang;
		if (_fits) then {
			player addItemToBackpack flashbang;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform flashbang;
			if (_fits) then {
				player addItemToUniform flashbang;
			}
			else {
				_notloadeditems pushback flashbang;
			};
		};
	};
};

//------------------------------------------------------------------
//	Standard Ausrüstung
//------------------------------------------------------------------
player linkItem comms;
player linkItem watch;
player linkItem "ItemMap";
player linkItem "ItemCompass";


_fits = player canAddItemToUniform nvg;
if (_fits) then {
	player addItemToUniform nvg;
}
else {
	_fits = false;
	_fits = player canAdd nvg;
	if (_fits) then {
		player addItem nvg;
	}
	else {
		_notloadeditems pushback nvg;
	};
};

for "_i" from 1 to 1 do {
	_fits = player canAddItemToUniform IRStrobe;
	if (_fits) then {
		player addItemToUniform IRStrobe;
	}
	else {
		_fits = false;
		_fits = player canAdd IRStrobe;
		if (_fits) then {
			player addItem IRStrobe;
		}
		else {
			_notloadeditems pushback IRStrobe;
		};
	};
};

_fits = player canAddItemToUniform "ACE_EarPlugs";
if (_fits) then {
	player addItemToUniform "ACE_EarPlugs";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_EarPlugs";
	if (_fits) then {
		player addItem "ACE_EarPlugs";
	}
	else {
		_notloadeditems pushback "ACE_EarPlugs";
	};
};

for "_i" from 1 to 5 do {
	_fits = player canAddItemToUniform "ACE_CableTie";
	if (_fits) then {
		player addItemToUniform "ACE_CableTie";
	}
	else {
		_fits = false;
		_fits = player canAdd "ACE_CableTie";
		if (_fits) then {
			player addItem "ACE_CableTie";
		}
		else {
			_notloadeditems pushback "ACE_CableTie";
		};
	};
};


//------------------------------------------------------------------
//	Spezialausrüstung
//------------------------------------------------------------------	
player linkItem cTab_small;
player addweapon binocs_tier2;
player addItem laserdesignator_bats;

_fits = player canAddItemToUniform defusalkit;
if (_fits) then {
	player addItemToUniform defusalkit;
}
else {
	_fits = false;
	_fits = player canAdd defusalkit;
	if (_fits) then {
		player addItem defusalkit;
	}
	else {
		_notloadeditems pushback defusalkit;
	};
};

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
execVM "loadouts\san_load_zug.sqf";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 2, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

[ACE_player, currentWeapon ACE_player, currentMuzzle ACE_player] call ace_safemode_fnc_lockSafety;

//------------------------------------------------------------------
//	Loadout Debug Meldung
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
}