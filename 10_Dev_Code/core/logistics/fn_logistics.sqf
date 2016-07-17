_item = _this select 0;
_type = _this select 1;
_Itema = [["Tyre","Land_Tyre_F",50],["Fuel Barrel","Land_MetalBarrel_F",25]];
if (isNil {_item getVariable "TRF_Items"}) then {_item setVariable["TRF_Items", _Itema]};

createDialog "trf_logistics";
[]call trf_fnc_listboxes;
