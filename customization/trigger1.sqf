if (isServer && !courseStarted && !triggered) then {
	[] spawn {
		triggered = true;
		triggered2 = false;
		"Room Clearing Scenario about to start" remoteExecCall ["hint",blufor];
		sleep 3;
		"setup" execVM "customization\popup.sqf";
		"Fireteam stack on wall!" remoteExecCall ["hint",blufor];
		sleep 8;
		"Instructor confirm stack!" remoteExecCall ["hint",blufor];
		waitUntil {confirmed};
		"Stack Confirmed!" remoteExecCall ["hint",blufor];
		courseStarted = true;
		playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\checkpoint_clear.wss", speaker1];
		[traininghall, 1, 0] call BIS_fnc_Door;
		sleep 3;
		traininghall setVariable ["bis_disabled_Door_1",1,true];
		sleep 3;
		"Drill starts in 10 seconds!" remoteExecCall ["hint",blufor];
		sleep 6;
		"3" remoteExecCall ["hint",blufor]; sleep 1;
		"2" remoteExecCall ["hint",blufor]; sleep 1;
		"1" remoteExecCall ["hint",blufor]; sleep 1;
		"Drill LIVE" remoteExecCall ["hint",blufor];
		playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\course_active.wss", speaker1];
	};
};