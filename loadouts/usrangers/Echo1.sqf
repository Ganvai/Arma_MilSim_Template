//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Echo_1
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Echo_1"];
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
player forceAddUniform uniforms;
player addHeadgear helmet;
player addVest echo_weste;
player addGoggles echo_facewear;
player addBackpack rucksack;

// Waffen
player addWeapon echo_primary;
player addPrimaryWeaponItem echo_primary_scope;
player addPrimaryWeaponItem echo_primary_attachement1;
player addPrimaryWeaponItem echo_primary_attachement2;
player addPrimaryWeaponItem echo_primary_silencer;
player addPrimaryWeaponItem echo_primary_mag;

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
for "_i" from 1 to echo_primary_mag_count do {
	_fits = player canAddItemToVest echo_primary_mag;
	if (_fits) then {
		player addItemToVest echo_primary_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack echo_primary_mag;
		if (_fits) then {
			player addItemToBackpack echo_primary_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform echo_primary_mag;
			if (_fits) then {
				player addItemToUniform echo_primary_mag;
			}
			else {
				_notloadeditems pushback echo_primary_mag;
			};
		};
	};
};

//------------------------------------------------------------------
//	Pistole
//------------------------------------------------------------------
for "_i" from 1 to handgun_mag_count do {
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
//	Granaten
//------------------------------------------------------------------
for "_i" from 1 to grenades_count do {
	_fits = player canAddItemToVest grenades;
	if (_fits) then {
		player addItemToVest grenades;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack grenades;
		if (_fits) then {
			player addItemToBackpack grenades;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform grenades;
			if (_fits) then {
				player addItemToUniform grenades;
			}
			else {
				_notloadeditems pushback grenades;
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
//	Ir Grenades
//------------------------------------------------------------------
for "_i" from 1 to 4 do {
	_fits = player canAddItemToVest ir_grenade;
	if (_fits) then {
		player addItemToVest ir_grenade;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack ir_grenade;
		if (_fits) then {
			player addItemToBackpack ir_grenade;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform ir_grenade;
			if (_fits) then {
				player addItemToUniform ir_grenade;
			}
			else {
				_notloadeditems pushback ir_grenade;
			};
		};
	};
};

//------------------------------------------------------------------
//	Flashbangs
//------------------------------------------------------------------
for "_i" from 1 to 4 do {
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

for "_i" from 1 to 2 do {
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
player linkItem cTab_small;
player addweapon binocs_tier1;

_fits = player canAddItemToUniform "ItemcTabHCam";
if (_fits) then {
	player addItemToUniform "ItemcTabHCam";
}
else {
	_fits = false;
	_fits = player canAdd "ItemcTabHCam";
	if (_fits) then {
		player addItem "ItemcTabHCam";
	}
	else {
		_notloadeditems pushback "ItemcTabHCam";
	};
};

_fits = player canAddItemToUniform "ACE_EntrenchingTool";
if (_fits) then {
	player addItemToUniform "ACE_EntrenchingTool";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_EntrenchingTool";
	if (_fits) then {
		player addItem "ACE_EntrenchingTool";
	}
	else {
		_notloadeditems pushback "ACE_EntrenchingTool";
	};
};

_fits = player canAddItemToUniform echo_headwear;
if (_fits) then {
	player addItemToUniform echo_headwear;
}
else {
	_fits = false;
	_fits = player canAdd echo_headwear;
	if (_fits) then {
		player addItem echo_headwear;
	}
	else {
		_notloadeditems pushback echo_headwear;
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