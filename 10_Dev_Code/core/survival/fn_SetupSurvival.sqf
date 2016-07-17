//Grab Variable Defines || E.g (Food/Water Values, Reuses etc)
  []execVM "core\survival\survivalDefines.sqf";

//Consuming Food || Eating
  TRF_fnc_eat= {
    if (!TRFEnableHungerThirst) exitWith {hint "Hunger And Thirst Disabled!"};
    //Set Variables
    _item = _this select 0;
    _itemtype = _this select 1;
    _hunger = (player getVariable "TRF_hunger");
    _newhunger = _hunger + (_itemtype select 0);
    //Checks
      //Check if been used before if not set its uses
        if (isNil {_item getVariable "TRF_content_remaining"}) then {_item setVariable ["TRF_content_remaining",_itemtype select 1]};
      //Checks if its been fully used
        if ((_item getVariable "TRF_content_remaining") <= 0) exitWith {hint "This is empty!"};
      //If player will be 'Overfull' tell the user he is full
      if (_newhunger > 100) exitWith {hint "You are full"};
    //Set hunger
      //Set New Hunger For Player
      player setVariable ["TRF_hunger",_newhunger];
      //Set How much food remains
      _item setVariable ["TRF_content_remaining", (_item getVariable "TRF_content_remaining") - 1];
};

//Consuming Beverage or water || Drinking
  TRF_fnc_drink= {
    if (!TRFEnableHungerThirst) exitWith {hint "Hunger And Thirst Disabled!"};
    //Set Variables
    _item = _this select 0;
    _itemtype = _this select 1;
    _thirst = (player getVariable "TRF_thirst");
    _newthirst = _thirst + (_itemtype select 0);
    //Checks
      //Check if been used before if not set its uses
      if (isNil {_item getVariable "TRF_content_remaining"}) then {_item setVariable ["TRF_content_remaining",_itemtype select 1]};
    //Checks if its been fully used
      if ((_item getVariable "TRF_content_remaining") <= 0) exitWith {hint "This is empty!"};
    //If player will be 'Overfull' tell the user he is full
      if (_newthirst > 100) exitWith {hint "You are full"};
    //Set hunger
      //Set New Hunger For Player
      player setVariable ["TRF_thirst",_newthirst];
      //Set How much food remains
      _item setVariable ["TRF_content_remaining", (_item getVariable "TRF_content_remaining") - 1];
  };

//Survial Loop
  while {true} do {
    //Call HUD Update
    [] call trf_fnc_hudrefresh;
    //Wait 2 minutes | 120 Seconds
    sleep 120;
    if (TRFEnableHungerThirst) then {
      //Get new Hunger & Thirst
      sh = (player getVariable "TRF_hunger") - shd;
      st = (player getVariable "TRF_thirst") - std;

      //Sets new hunger and thirst
        //If player hunger will be less than 0 set to 0
        if (sh > 0) then{
          player setVariable ["TRF_hunger",sh];
        } else {
          player setVariable ["TRF_hunger",0];
        };
        //If player thirst will be less than 0 set to 0
        if (st > 0) then{
          player setVariable ["TRF_thirst",st];
        } else {
          player setVariable ["TRF_thirst",0];
        };

      //Damage player from starvation/deydration
      //If starvation/dehyrdartion is on
      if (TRFEnableStarvDehyd) then {
        //If player has more health than 10%
        if ((damage player) < TRFStarvDehydLowestHealth) then {
          //If Hunger or Thirst is less than 20
          if (sh < TRFHungerThreshhold || st < TRFThirstThreshhold) then{
            //Add 5% damage to the player
            player setDamage (damage player) + TRFStarvDehydDamage;
          };
        };
      };
    };
  };
