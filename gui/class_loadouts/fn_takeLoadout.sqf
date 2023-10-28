		
	_index = lbCurSel 1500;
	_index2 = lbdata[1500, _index];

	_loadouts = format ["loadouts\%1\%2", fraktionV, _index2];
	call compile preprocessFileLineNumbers _loadouts;	