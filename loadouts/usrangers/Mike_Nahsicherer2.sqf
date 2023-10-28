//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Mike_Nahsicherer2
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Mike_Nahsicherer2"];
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
player addVest weste;
player addGoggles facewear;
player addBackpack rucksack_big;

// Waffen
player addWeapon autorifle;
player addPrimaryWeaponItem autorifle_scope;
player addPrimaryWeaponItem autorifle_attachment1;
player addPrimaryWeaponItem autorifle_attachment2;
player addPrimaryWeaponItem autorifle_mag;

player addWeapon minedetector;

player addWeapon launcher_at_light;

//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to autorifle_mag_count do {
	_fits = player canAddItemToVest autorifle_mag;
	if (_fits) then {
		player addItemToVest autorifle_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack autorifle_mag;
		if (_fits) then {
			player addItemToBackpack autorifle_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform autorifle_mag;
			if (_fits) then {
				player addItemToUniform autorifle_mag;
			}
			else {
				_notloadeditems pushback autorifle_mag;
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
//	Rollenspezifische Items
//------------------------------------------------------------------
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

_fits = player canAddItemToUniform "ACE_wirecutter";
if (_fits) then {
	player addItemToUniform "ACE_wirecutter";
}
else {
	_fits = false;
	_fits = player canAdd "ACE_wirecutter";
	if (_fits) then {
		player addItem "ACE_wirecutter";
	}
	else {
		_notloadeditems pushback "ACE_wirecutter";
	};
};

_fits = player canAddItemToUniform explosivedevice;
if (_fits) then {
	player addItemToUniform explosivedevice;
}
else {
	_fits = false;
	_fits = player canAdd explosivedevice;
	if (_fits) then {
		player addItem explosivedevice;
	}
	else {
		_notloadeditems pushback explosivedevice;
	};
};

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

_fits = player canAddItemToUniform launcher_at_light;
if (_fits) then {
	player addItemToUniform launcher_at_light;
}
else {
	_fits = false;
	_fits = player canAdd launcher_at_light;
	if (_fits) then {
		player addItem launcher_at_light;
	}
	else {
		_notloadeditems pushback launcher_at_light;
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
player setVariable ["ACE_medical_medicClass", 0, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", false, true];

//------------------------------------------------------------------
//	Item Debug Hint
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
}