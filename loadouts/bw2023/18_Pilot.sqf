//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						LIMA_Pilot
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","LIMA_Pilot"];
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
player forceAddUniform pilot_uniforms;
player addHeadgear pilot_helmet;
player addVest pilot_weste;
player addGoggles pilot_facewear;
player addBackpack rucksack_lr;

// Waffen
player addWeapon pilot_primary;
player addPrimaryWeaponItem pilot_primary_scope;
player addPrimaryWeaponItem primary_attachement1;
player addPrimaryWeaponItem primary_attachement2;
player addPrimaryWeaponItem pilot_primary_mag;

player addWeapon pilot_handgun;
player addHandgunItem pilot_handgun_mag;


//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to pilot_primary_mag_count do {
	_fits = player canAddItemToVest pilot_primary_mag;
	if (_fits) then {
		player addItemToVest pilot_primary_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack pilot_primary_mag;
		if (_fits) then {
			player addItemToBackpack pilot_primary_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform pilot_primary_mag;
			if (_fits) then {
				player addItemToUniform pilot_primary_mag;
			}
			else {
				_notloadeditems pushback pilot_primary_mag;
			};
		};
	};
};

//------------------------------------------------------------------
//	Pistole
//------------------------------------------------------------------
for "_i" from 1 to pilot_handgun_mag_count do {
	_fits = player canAddItemToVest pilot_handgun_mag;
	if (_fits) then {
		player addItemToVest pilot_handgun_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack pilot_handgun_mag;
		if (_fits) then {
			player addItemToBackpack pilot_handgun_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform pilot_handgun_mag;
			if (_fits) then {
				player addItemToUniform pilot_handgun_mag;
			}
			else {
				_notloadeditems pushback pilot_handgun_mag;
			};
		};
	};
};		

//------------------------------------------------------------------
//	Smokes White
//------------------------------------------------------------------
for "_i" from 1 to smoke_white_count do {
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
//	Smokes Green
//------------------------------------------------------------------
for "_i" from 1 to smoke_green_count do {
	_fits = player canAddItemToVest smoke_green;
	if (_fits) then {
		player addItemToVest smoke_green;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_green;
		if (_fits) then {
			player addItemToBackpack smoke_green;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_green;
			if (_fits) then {
				player addItemToUniform smoke_green;
			}
			else {
				_notloadeditems pushback smoke_green;
			};
		};
	};
};

//------------------------------------------------------------------
//	Smokes Red
//------------------------------------------------------------------
for "_i" from 1 to smoke_red_count do {
	_fits = player canAddItemToVest smoke_red;
	if (_fits) then {
		player addItemToVest smoke_red;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack smoke_red;
		if (_fits) then {
			player addItemToBackpack smoke_red;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform smoke_red;
			if (_fits) then {
				player addItemToUniform smoke_red;
			}
			else {
				_notloadeditems pushback smoke_red;
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


_fits = player canAddItemToUniform pilot_nvg;
if (_fits) then {
	player addItemToUniform pilot_nvg;
}
else {
	_fits = false;
	_fits = player canAdd pilot_nvg;
	if (_fits) then {
		player addItem pilot_nvg;
	}
	else {
		_notloadeditems pushback pilot_nvg;
	};
};

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

_fits = player canAddItemToUniform "ACE_Flashlight_XL50";
if (_fits) then {
	player addItemToUniform "ACE_Flashlight_XL50";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_Flashlight_XL50";
	if (_fits) then {
		player addItem "ACE_Flashlight_XL50";
	}
	else {
		_notloadeditems pushback "ACE_Flashlight_XL50";
	};
};

_fits = player canAddItemToUniform "ACE_MapTools";
if (_fits) then {
	player addItemToUniform "ACE_MapTools";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_MapTools";
	if (_fits) then {
		player addItem "ACE_MapTools";
	}
	else {
		_notloadeditems pushback "ACE_MapTools";
	};
};


//------------------------------------------------------------------
//	Spezialausrüstung
//------------------------------------------------------------------
player linkItem cTab_big;

_fits = player canAddItemToUniform cTabcam;
if (_fits) then {
	player addItemToUniform cTabcam;
}
else {
	_fits = false;
	_fits = player canAdd cTabcam;
	if (_fits) then {
		player addItem cTabcam;
	}
	else {
		_notloadeditems pushback cTabcam;
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