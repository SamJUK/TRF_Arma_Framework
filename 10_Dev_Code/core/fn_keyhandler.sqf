private['_handled'];
_handled = false;
switch (_this) do {
	/*
		https://community.bistudio.com/wiki/ListOfKeyCodes
    //ESC Key
		case 1: {
			//Code Here
			_handled = true;
		};
	*/
		//F1 Key - Ear Plugs
	case 59: {
			[]spawn TRF_fnc_earplugs;
			_handled = true;
	};

	//Number 4 Key - Holster Weapon
	case 5:{
		player action ["SwitchWeapon", player, player, 100];
		_handled = true;
	};

		//F2 Key - Tablet
	case 60: {
			[]call TRF_fnc_tabletUse;
	};

};
_handled;
