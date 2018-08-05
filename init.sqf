#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

/*
if (isServer) then {

	[] spawn {
		
		while {true} do {
			
			_sounds = selectRandom [
				"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight1.wss",
				"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight2.wss",
				"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight3.wss",
				"A3\Sounds_F\environment\ambient\battlefield\battlefield_firefight4.wss"];
			_location = selectRandom [
				tottahbattle,
				gorambattle,
				hamabattle,
				sectorbase];
			sleep (3 + random 4);
			playSound3D [_sounds, gorambattle, false, getPosASL _location, 5, 1, 150];
			
		};	
	};
};
*/

#include "customization\addAction.sqf" //gives the CI the 'confirm stack' option
#include "customization\unlockVehicles.sqf" //this will unlock bradleys after 8 players and mraps after 12 players have connected

courseStarted = false;
confirmed = false;
cqcCheck = false;
triggered = false;
triggered2 = false;
cntPly = 0;

if (isServer) then {
	
	"init" execVM "customization\popup.sqf";
	
	[] spawn { 
		while {true} do {
			cntPly = (count allPlayers);
			sleep 60;
		};
	};
	
	"" call FNC_StartingCount; //DO NOT REMOVE
	
	[] spawn { //Spawns code running in parallel

		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE
			
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE