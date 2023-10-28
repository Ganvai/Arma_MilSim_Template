_result = false;
private _result = ["Do you want to end the Mission?", "Confirm", true, true] call BIS_fnc_guiMessage;

if (!_result) exitWith {};

_outro = getMissionConfigValue "outro";
_outropath = "scripts\MCC_sequence_outro_success" + _outro + ".sqf";

_outropath remoteExec ["execVM"];

_sleepy = 32;

switch (_outro) do
{
	case "PR1": {_sleepy = 32;};
	case "PR2": {_sleepy = 32;};
	case "MGS": {_sleepy = 78;};
	case "Rock": {_sleepy = 42;};
	case "AFO": {_sleepy = 37;};
};

sleep _sleepy;

["MyEnding", true, 0, false, false] remoteExec ["BIS_fnc_endMission", 0, true];
