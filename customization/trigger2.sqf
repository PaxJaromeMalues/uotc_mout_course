if (isServer && courseStarted && !triggered2) then {
	[] spawn {
		triggered2 = true;
		"Room Clearing Scenario Finished !" remoteExecCall ["hint",blufor];
		playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\drill_finish.wss", speaker2];
		playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\drill_finish.wss", speaker1];
		courseStarted = false;
		//gate1 setVariable ["bis_disabled_Door1",0,true];
		//gate1 setVariable ["bis_disabled_Door2",0,true];
		confirmed = false;
		sleep 5;
		"Instructor confirmation reset!" remoteExecCall ["hint",blufor];
		sleep 5;
		"Resetting firing house targets!" remoteExecCall ["hint",blufor];
		sleep 1;
		"reset" execVM "customization\popup.sqf";
		sleep 1;
		"Next Fireteam: Stand by for entry!" remoteExecCall ["hint",blufor];
		sleep 5;
		triggered = false;
		traininghall setVariable ["bis_disabled_Door_1",0,true];
		[traininghall, 1, 1] call BIS_fnc_Door;
	};
};