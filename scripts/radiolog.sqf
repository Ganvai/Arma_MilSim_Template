params ["_playergrp","_rl","_rlgroup"];

_rlgroup = _this select 2;

player setDiaryRecordText [["Radio", _rl], ["Radiolog", rlPlatoon]];

switch _playergrp do
{
	case grpalpha : { player setDiaryRecordText [["Radio", _rlgroup], ["Alpha", rlAlpha]]; };
	case grpbravo : { player setDiaryRecordText [["Radio", _rlgroup], ["Bravo", rlBravo]]; };
	case grpcharlie : { player setDiaryRecordText [["Radio", _rlgroup], ["Charlie", rlCharlie]]; };
	case grpdelta : { player setDiaryRecordText [["Radio", _rlgroup], ["Delta", rlDelta]]; };
};
