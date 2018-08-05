///////////////////////////////////////////////////////////////////////////
//Script to be called by the ingame triggers at the shooting house
//called as: "init" or "setup" or "reset" execVM "customization\popup.sqf";
//By Pax with help of BlackHawk
///////////////////////////////////////////////////////////////////////////

if (isServer) then {

	_execution = _this;
	
	_targets = [pop1, pop2, pop3, pop4, pop5, pop6, pop7, pop8, pop9, pop10,
				pop11, pop12, pop13, pop14, pop15, pop16, pop17, pop18, pop19,
				pop20, pop21];
	_alltargets = count _targets;
	_rpop = 0;
	_randomResults = [];
  
  switch (_execution) do {
    case "init": {
      {_x animate ["terc",1]} forEach _targets;
    };
    case "setup": {
      _rpop = floor random _alltargets;
      while {_rpop > 0} do {
        _randomResults pushBackUnique (selectRandom _targets);
        _rpop = _rpop - 1;
      };
      {
        _x animate ["terc",0];
        playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-up_small.wss", _x];
		_x addEventHandler [
			"Hit", {
				//(_this select 0) Say3D "FD_Start_F";
				(_this select 0) animate ["terc",1];
				(_this select 0) removeEventHandler ["Hit",0];
			}
		];
      } forEach _randomResults; 
    };
    case "reset": {
      {
        _x animate ["terc",1];
        playSound3D ["a3\missions_f_beta\data\sounds\firing_drills\target_pop-down_small.wss", _x];
      } forEach _targets;
    };
  };
};