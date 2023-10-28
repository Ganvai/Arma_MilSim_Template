_code = _this select 0;

_playerGrp = group player;

_radiocode = "";

switch _code do
{
	case 1 : { _radiocode = "Code 1 - TOC Come In"; };
	case 2 : { _radiocode = "Code 2 - Arrival on Scene"; };
	case 3 : { _radiocode = "Code 3 - Mission Accomplished"; };
	case 4 : { _radiocode = "Code 4 - Waiting for Orders"; };
	case 5 : { _radiocode = "Code 5 - Tango spotted"; };
	case 6 : { _radiocode = "Code 6 - Recieving Fire"; };
	case 7 : { _radiocode = "Code 7 - In Firefight"; };
	case 8 : { _radiocode = "Code 8 - Personal Wounded"; };
	case 9 : { _radiocode = "Code 9 - Clear"; };
	case 10 : { _radiocode = "Code 10 - Groupleader Down"; };
};

_logentry = format ["<t color='#00ff00' size='3'>%1 </t><t color='#ffffff' size='3'>: %2</t>", _playerGrp, _radiocode];

_t = [daytime, "HH:MM"] call BIS_fnc_timeToString;

_logEntry = format ["%1 | %2 : %3",_t,_playerGrp,_radiocode];
_grouplogEntry = format ["%1 | %2",_t,_radiocode];

rlPlatoon = _logEntry + "<br/>" + rlPlatoon;
publicVariable "rlPlatoon";
_records = player allDiaryRecords "Funk";

_rl = "";
_rlalpha = "";
_rlbravo = "";
_rlcharlie = "";
_rldelta = "";

{
	switch (_x select 1) do
	{
		case "Radiolog" : {_rl = _x select 8;};
		case "Alpha" : {_rlalpha = _x select 8;};
		case "Bravo" : {_rlbravo = _x select 8;};
		case "Charlie" : {_rlcharlie = _x select 8;};
		case "Delta" : {_rldelta = _x select 8;};
	};	

} forEach _records;

switch _playergrp do
{
	case grpalpha : {
						rlAlpha = _grouplogEntry + "<br/>" + rlAlpha;
						publicVariable "rlAlpha";	
						_rlgroup = _rlalpha;
					};
	case grpbravo : {
						rlBravo = _grouplogEntry + "<br/>" + rlBravo;
						publicVariable "rlBravo";						
						_rlgroup = _rlbravo;
					};
	case grpcharlie : {
						rlCharlie = _grouplogEntry + "<br/>" + rlCharlie;
						publicVariable "rlCharlie";						
						_rlgroup = _rlcharlie;
					};
	case grpdelta : {
						rlDelta = _grouplogEntry + "<br/>" + rlDelta;
						publicVariable "rlDelta";						
						_rlgroup = _rldelta;
					};
};

[[_playergrp,_rl,_rlgroup],"scripts\radiolog.sqf"] remoteExec ["execVM"];

[[_logentry],"scripts\radiomessage.sqf"] remoteExec ["execVM",[grptoc],false];

_logentryControl = format ["<t color='#0000ff' size='3'>Code Send</t><t color='#ffffff' size='3'>: %1</t>",_radiocode];

titleText [_logentryControl, "PLAIN DOWN", 0.8, true, true];
playSound "OMPhoneRingSMS";



