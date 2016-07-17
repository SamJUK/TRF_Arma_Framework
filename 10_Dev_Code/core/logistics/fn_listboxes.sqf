_item = cursorTarget;
_Items = _item getVariable "TRF_Items";
_dialog = uiNamespace getVariable "trf_logistics";
_list = _dialog displayCtrl 1500;
lbClear _list;
{
  _name = format["%1 x%2",_x select 0,_x select 2];
  _class = _x select 1;

  _index = _list lbAdd _name;
  _list lbSetData [_index, _class];

}forEach _Items;
