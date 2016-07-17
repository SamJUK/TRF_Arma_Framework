//Use - ["method","item"] call sam_fnc_purchase;
//Method - bank | cash
sam_fnc_purchase = {
    //Variables
      _pc = player getVariable "Sam_Money";
      _pb = player getVariable "Sam_Bank";
      _method = _this select 0;
      _item = _this select 1;
      
    if ((_this select 1) in SamBuyable) exitWith {hint "You cant buy this!"};

    //Methods
    if (_method == "cash") then {
      //Checks
        if (_pm < _iv) exitWith {hint "You do not have sufficient funds on you!"};
        player setVariable ["Sam_Money", _pc - _iv];
    };
    if (_method == "bank") then {
      //Checks
        if (!player getVariable "Sam_GotCard") exitWith {hint "You do not have your card on you!"};
        if (_pb < _iv) exitWith {hint "You do not have sufficient funds in your bank!"};
        player setVariable ["Sam_Bank", _pb - _iv];
    };

};
