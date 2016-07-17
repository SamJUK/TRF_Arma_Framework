_dialog = uiNamespace getVariable "trf_logistics";
_list = _dialog displayCtrl 1500;
_index = lbCurSel _list;

_data = _list lbData _index;
_text = _list lbText _index;

switch (_data) do{
  case "Land_Tyre_F": {
    _var = cursorTarget getVariable "TRF_Items";
    _item = createVehicle ["Land_Tyre_F", getMarkerPos "Logi_Con_1", [], 0, "CAN_COLLIDE"];
    cursorTarget setVariable ["TRF_Items",[["Tyre","Land_Tyre_F",((_var select 0)select 2)-1],_var select 1]];
  };
  case "Land_MetalBarrel_F": {
    _var = cursorTarget getVariable "TRF_Items";
    _item = createVehicle ["Land_MetalBarrel_F", getMarkerPos "Logi_Con_1", [], 0, "CAN_COLLIDE"];
    cursorTarget setVariable ["TRF_Items",[_var select 0,["Fuel Barrel","Land_MetalBarrel_F",((_var select 1)select 2)-1]]];
  };
};
["blue",format["You unloaded a %1",(_text)]]spawn trf_fnc_samNotify;
[]call trf_fnc_listboxes;
