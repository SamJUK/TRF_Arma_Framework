disableSerialization;
_display = uiNameSpace getVariable "ninfwHUD";
_ctrl = _display displayCtrl 9800;
switch (player getVariable "TRF_earplugs") do {
  case 0: { //If earplgs are not in, insert them
    2 fadeSound .2; //Lower Sound
    2 fadeMusic .2; //Lower Music
    player setVariable ["TRF_earplugs", 1]; //Set New State
    ["earplugs",true]call TRF_fnc_hudstateChange;  //Call Hud Update
    _handled = true;
  };
  case 1: { //If Earplugs are in, Remove Them
    2 fadeSound 1;  //Raise Sound
    2 fadeMusic 1;  //Raise Music
    player setVariable ["TRF_earplugs", 0]; //Set New State
    ["earplugs",false]call TRF_fnc_hudstateChange;  //Call Hud updates
    _handled = true;
  };
};
