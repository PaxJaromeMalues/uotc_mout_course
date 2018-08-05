if (player == CI) then {
	waitUntil {
		(player == player)
	};
	[] spawn {
		CI addAction ["Confirm Stack", {confirmed = true; publicVariableServer "confirmed";}];
	};
};