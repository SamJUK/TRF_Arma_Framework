disableSerialization;
//Get players damage to whole number in percentage
  _dmg = round (100 - (damage player) / 1 * 100);

//Get players hunger and thirst
  _thirst = player getVariable "sam_thirst";
  _hunger = player getVariable "sam_hunger";
//Hud shit
  waitUntil {!isNull (uiNameSpace getVariable "ninfwHUD")};
  _display = uiNameSpace getVariable "ninfwHUD";
//Set values on hud
  //Display Controls
    _setTextDmg = _display displayCtrl 9722;
    _setTextHunger = _display displayCtrl 9724;
    _setTextThirst = _display displayCtrl 9723;
  //Setting the values
    _setTextDmg ctrlsetstructuredtext (parseText format ["Health: %1%2", _dmg, "%"]);
    _setTextHunger ctrlsetstructuredtext (parseText format ["Hunger: %1%2", _hunger, "%"]);
    _setTextThirst ctrlsetstructuredtext (parseText format ["Thirst: %1%2", _thirst, "%"]);

//Check if earplugs are in use
  _ep = player getVariable "sam_earplugs";
  if (_ep == 0) then {((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow false;};
  if (_ep == 1) then {((uiNamespace getVariable 'ninfwHUD') displayCtrl 9800) ctrlShow true;};
