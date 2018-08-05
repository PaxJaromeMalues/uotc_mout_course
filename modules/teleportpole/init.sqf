["Teleport Pole", "Allows to define multiple objects and teleport to set marker", "Starfox64"] call FNC_RegisterModule;

if (!isDedicated) then {

  waitUntil { (player == player) };
  
	"" spawn {

		sleep 0.01;
		
		//pole addAction
		pole2 addAction ["Teleport Desert MOUT", "modules\teleportpole\teleport.sqf", ["marker_lfx1"]];
		pole2 addAction ["Teleport City MOUT", "modules\teleportpole\teleport.sqf", ["marker_lfx2"]];
		pole1 addAction ["Teleport CQC", "modules\teleportpole\teleport.sqf", ["marker_cqc"]];
		pole1 addAction ["Teleport City MOUT", "modules\teleportpole\teleport.sqf", ["marker_lfx2"]];
		pole3 addAction ["Teleport Desert MOUT", "modules\teleportpole\teleport.sqf", ["marker_lfx1"]];
		pole3 addAction ["Teleport CQC", "modules\teleportpole\teleport.sqf", ["marker_cqc"]];
	
		};

};