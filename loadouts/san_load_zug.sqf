_notloadeditems = [];

_san_uniform = [];

_san_vest = [];

_san_backpack = [					
					["ACE_fieldDressing",8],
					["ACE_elasticBandage",4],
					["ACE_packingBandage",4],
					["kat_chestSeal",2],
					["ACE_salineIV_500",2],
					["ACE_splint",2],
					["ACE_tourniquet",2],
					["ACE_morphine",1]
];

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToUniform (_x select 0);
		if (_fits) then {
			player addItemToUniform (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_uniform;

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToVest (_x select 0);
		if (_fits) then {
			player addItemToVest (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_vest;

{	for "_i" from 1 to (_x select 1) do {
		_fits = player canAddItemToBackpack (_x select 0);
		if (_fits) then {
			player addItemToBackpack (_x select 0);
		}
		else {
			_fits = player canAdd (_x select 0);
			if (_fits) then {
				player addItem (_x select 0);
			}
			else {
				_notloadeditems pushback (_x select 0);
			};
		};
	};
} forEach _san_backpack;

//------------------------------------------------------------------
//	Loadout Debug Meldung
//------------------------------------------------------------------	
if ((count _notloadeditems) > 0) then {
	_errorString = format ["Nicht genug Inventarplatz: %1",_notloadeditems];
	hint _errorString;
	
	sleep 5;
}