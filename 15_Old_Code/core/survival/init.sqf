//Grab Variable Defines || E.g (Food/Water Values, Reuses etc)
  []execVM "core\survival\defines.sqf";

//Consuming Food || Eating
  sam_fnc_eat= {
    if (!SamEnableHungerThirst) exitWith {hint "Hunger And Thirst Disabled!"};
    //Set Variables
    _item = _this select 0;
    _itemtype = _this select 1;
    _hunger = (player getVariable "sam_hunger");
    _newhunger = _hunger + (_itemtype select 0);
    //Checks
      //Check if been used before if not set its uses
        if (isNil {_item getVariable "sam_content_remaining"}) then {_item setVariable ["sam_content_remaining",_itemtype select 1]};
      //Checks if its been fully used
        if ((_item getVariable "sam_content_remaining") <= 0) exitWith {hint "This is empty!"};
      //If player will be 'Overfull' tell the user he is full
      if (_newhunger > 100) exitWith {hint "You are full"};
    //Set hunger
      //Set New Hunger For Player
      player setVariable ["sam_hunger",_newhunger];
      //Set How much food remains
      _item setVariable ["sam_content_remaining", (_item getVariable "sam_content_remaining") - 1];
};

//Consuming Beverage or water || Drinking
  sam_fnc_drink= {
    if (!SamEnableHungerThirst) exitWith {hint "Hunger And Thirst Disabled!"};
    //Set Variables
    _item = _this select 0;
    _itemtype = _this select 1;
    _thirst = (player getVariable "sam_thirst");
    _newthirst = _thirst + (_itemtype select 0);
    //Checks
      //Check if been used before if not set its uses
      if (isNil {_item getVariable "sam_content_remaining"}) then {_item setVariable ["sam_content_remaining",_itemtype select 1]};
    //Checks if its been fully used
      if ((_item getVariable "sam_content_remaining") <= 0) exitWith {hint "This is empty!"};
    //If player will be 'Overfull' tell the user he is full
      if (_newthirst > 100) exitWith {hint "You are full"};
    //Set hunger
      //Set New Hunger For Player
      player setVariable ["sam_thirst",_newthirst];
      //Set How much food remains
      _item setVariable ["sam_content_remaining", (_item getVariable "sam_content_remaining") - 1];
  };

//Survial Loop
  while {true} do {
    //Call HUD Update
    [] call sam_fnc_hud_refresh;
    //Wait 2 minutes | 120 Seconds
    sleep 120;
    if (SamEnableHungerThirst) then {
      //Get new Hunger & Thirst
      sh = (player getVariable "sam_hunger") - shd;
      st = (player getVariable "sam_thirst") - std;

      //Sets new hunger and thirst
        //If player hunger will be less than 0 set to 0
        if (sh > 0) then{
          player setVariable ["sam_hunger",sh];
        } else {
          player setVariable ["sam_hunger",0];
        };
        //If player thirst will be less than 0 set to 0
        if (st > 0) then{
          player setVariable ["sam_thirst",st];
        } else {
          player setVariable ["sam_thirst",0];
        };

      //Damage player from starvation/deydration
      //If starvation/dehyrdartion is on
      if (SamEnableStarvDehyd) then {
        //If player has more health than 10%
        if ((damage player) < SamStarvDehydLowestHealth) then {
          //If Hunger or Thirst is less than 20
          if (sh < SamHungerThreshhold || st < SamThirstThreshhold) then{
            //Add 5% damage to the player
            player setDamage (damage player) + SamStarvDehydDamage;
          };
        };
      };
    };
  };
