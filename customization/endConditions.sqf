/*
private _westCasualty = "United States Marine Corps" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
private _eastCasualty = "Ittiḥad al-Jihad al-Islāmī" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 40) exitWith {
	
	"Ittiḥad al-Jihad al-Islāmī VICTORY<br />United States Marine Corps has retreated due to casualties." call FNC_EndMission;
	
};

if (_eastCasualty >= 80) exitWith {
	
	"United States Marine Corps VICTORY<br />Ittiḥad al-Jihad al-Islāmī has retreated due to casualties." call FNC_EndMission;
	
};
*/
/*
Alternative methods of counting casualties

	"USMC" call FNC_casualtyCount;
		this will count how many members of a team died in the mission

	"USMC" call FNC_countTeam;
		this will check how many players are remaining in a team
		be careful as using this method will end the mission instantly if
		not enough players are present in the team


Adding extraction

	["USMC", "ExtractionAreaMarker", 0.8] call FNC_hasExtracted;
		this will check if at least 80% of remaining forces are present in extraction area
*/

//sleep (10); //This determines how frequently the end conditions should be checked in seconds