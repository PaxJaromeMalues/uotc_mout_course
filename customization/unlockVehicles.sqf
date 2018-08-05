if (isServer) then {
	[] spawn {
		
		_mrap = [mrap1, mrap2];
		_bradley = [bradley1, bradley2];
		_lockBradley = 8;
		_lockMRAP = 12;
		
		sleep 10;
		waitUntil {cntPly >= _lockBradley};
		{
			_x setVehicleLock "unlocked";
		} forEach _bradley;
		"Bradleys Unlocked" remoteExecCall ["hint",blufor];
		waitUntil {cntPly >= _lockMRAP};
		{
			_x setVehicleLock "unlocked";
		} forEach _mrap;
		"MRAPs Unlocked" remoteExecCall ["hint",blufor];
		exit;
		
	};
};