/*
 *  Author: 
 */
private ["_TeleportTo","_position","_target"];

_TeleportTo = param[0];
_position = getPos player;
_target = player;

	switch (_TeleportTo) do
		{
			 case "Alpha": {_target =  (units grpalpha select 0); };
			 case "Bravo": {_target = (units grpbravo select 0); };
			 case "Charlie": {_target =  (units grpcharlie select 0); };
			 case "Delta": {_target = (units grpdelta select 0); };
			 case "Sierra": {_target = (units grpsierra select 0); };
			 case "Echo_1": {_target = (units grpecho1 select 0); };
			 case "Echo_2": {_target = (units grpecho2 select 0); };
			 case "Fox_1": {_target = s6_1; };
			 case "Fox_2": {_target = s6_2; };
			 case "Kilo_1": {_target = s0_1; };
			 case "Kilo_2": {_target = s0_2; };
			 case "Lima": { _target = (units grplima select 0); };
			 case "Mike": { _target = (units grpmike select 0); };
			 default { hint"$STR_Error"; };
		};
		
	if (player == _target) then {
		switch (_TeleportTo) do
		{
			 case "Alpha": {_target =  (units grpalpha select 1); };
			 case "Bravo": {_target = (units grpbravo select 1); };
			 case "Charlie": {_target =  (units grpcharlie select 1); };
			 case "Delta": {_target = (units grpdelta select 1); };
			 case "Sierra": {_target = (units grpsierra select 1); };
			 case "Echo_1": {_target = (units grpecho1 select 1); };
			 case "Echo_2": {_target = (units grpecho2 select 1); };
			 case "Lima": { _target = (units grplima select 1); };
			 case "Mike": { _target = (units grpmike select 1); };
			 default { hint"$STR_Error";};
		};
	};
		
	if (vehicle _target == _target) then
	{
		_position = getPos _target;		
		(player) setPos _position;
	}

	else

	{
		if ((vehicle _target) emptyPositions "cargo"== 0) then
			{hint "No room in squad leader's vehicle."}
		else
		{
			player moveincargo vehicle _target;
		};
	};