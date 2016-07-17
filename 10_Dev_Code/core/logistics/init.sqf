sam_fnc_logistics={
  _object = _this select 0;
  _objectCN = typeOf _object;
  _aa = _this select 1;
  switch (_objectCN) do {
    case "Land_Tyre_F": {
      _object removeAction _aa;
      _object attachto [player, [0.4,.5,1]];
      player addAction ["Drop",{
        detach _object;
        player removeAction _da;
        }];
    };
  };

};
