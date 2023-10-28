//------------------------------------------------------------------
//------------------------------------------------------------------
//
//						Mike_Nahsicherer1
//
//------------------------------------------------------------------
//------------------------------------------------------------------
if (!local player) exitWith {};

player setVariable ["loadout","Mike_Nahsicherer1"];
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
player addWeapon grenadier_primary;
player addPrimaryWeaponItem grenadier_scope;
player addPrimaryWeaponItem grenadier_attachement1;
player addPrimaryWeaponItem grenadier_attachement2;
player addPrimaryWeaponItem grenadier_mag;

player addWeapon handgun;
player addHandgunItem handgun_mag;


//------------------------------------------------------------------
//
//	Munition Autofill
//
//------------------------------------------------------------------

//------------------------------------------------------------------
//	Primärwaffe
//------------------------------------------------------------------
for "_i" from 1 to 3 do {
	_fits = player canAddItemToVest grenadier_mag;
	if (_fits) then {
		player addItemToVest grenadier_mag;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack grenadier_mag;
		if (_fits) then {
			player addItemToBackpack grenadier_mag;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform grenadier_mag;
			if (_fits) then {
				player addItemToUniform grenadier_mag;
			}
			else {
				_notloadeditems pushback grenadier_mag;
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
//	40mm
//------------------------------------------------------------------

for "_i" from 1 to 4 do {
	_fits = player canAddItemToVest UGL_Smoke;
	if (_fits) then {
		player addItemToVest UGL_Smoke;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack UGL_Smoke;
		if (_fits) then {
			player addItemToBackpack UGL_Smoke;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform UGL_Smoke;
			if (_fits) then {
				player addItemToUniform UGL_Smoke;
			}
			else {
				_notloadeditems pushback UGL_Smoke;
			};
		};
	};
};

for "_i" from 1 to 1 do {
	_fits = player canAddItemToVest UGL_Flare;
	if (_fits) then {
		player addItemToVest UGL_Flare;
	}
	else {
		_fits = false;
		_fits = player canAddItemToBackpack UGL_Flare;
		if (_fits) then {
			player addItemToBackpack UGL_Flare;
		}
		else {
			_fits = false;
			_fits = player canAddItemToUniform UGL_Flare;
			if (_fits) then {
				player addItemToUniform UGL_Flare;
			}
			else {
				_notloadeditems pushback UGL_Flare;
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

//------------------------------------------------------------------
//	Medic
//------------------------------------------------------------------	
execVM "loadouts\san_load_san.sqf";

//------------------------------------------------------------------
//	ACE Optionen für Spieler
//------------------------------------------------------------------	
//Medic: 
player setVariable ["ACE_medical_medicClass", 2, true];

//Combat Engineer:
player setVariable ["ACE_isEngineer", 0, true];

//Explosive Specialist:
player setVariable ["ACE_isEOD", true, true];

//------------------------------------------------------------------
//	Item Debug Hint
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
}




