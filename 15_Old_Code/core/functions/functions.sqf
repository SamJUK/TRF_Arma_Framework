//Hud Change Function
  sam_fnc_hud_state_change={
    //Update Earplugs HUD Status
    if (0 == (player getVariable "sam_earplugs")) then { //If earpugs are not in
      ((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow false; //Hide Icon
    } else {
        ((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow true;  //Show Icon
    };
  };

//Earplugs Function
if (SamEnableEarplugs) then {
  sam_fnc_earplugs = {
    disableSerialization;
    _display = uiNameSpace getVariable "ninfwHUD";
    _ctrl = _display displayCtrl 9800;
    switch (player getVariable "sam_earplugs") do {
      case 0: { //If earplgs are not in, insert them
        2 fadeSound .2; //Lower Sound
        2 fadeMusic .2; //Lower Music
        player setVariable ["sam_earplugs", 1]; //Set New State
        ["earplugs",true]call sam_fnc_hud_state_change;  //Call Hud Update
        _handled = true;
      };
      case 1: { //If Earplugs are in, Remove Them
        2 fadeSound 1;  //Raise Sound
        2 fadeMusic 1;  //Raise Music
        player setVariable ["sam_earplugs", 0]; //Set New State
        ["earplugs",false]call sam_fnc_hud_state_change;  //Call Hud updates
        _handled = true;
      };
    };
  };
};
