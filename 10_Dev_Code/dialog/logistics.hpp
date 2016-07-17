class trf_logistics
{
    idd = 500;
    movingenable = false;
    name = "trf_logistics";
    onLoad = "uiNamespace setVariable ['trf_logistics', _this select 0]";

    class Controls
          {
            class TRF_LOGISTICS_BACK: IGUIBack
            {
            	idc = 2200;
            	x = 0.303989 * safezoneW + safezoneX;
            	y = 0.247053 * safezoneH + safezoneY;
            	w = 0.392022 * safezoneW;
            	h = 0.505894 * safezoneH;
            };
            class TRF_LOGISTICS_INVENTORY_LISTBOX: RscListbox
            {
            	idc = 1500;
            	x = 0.324622 * safezoneW + safezoneX;
            	y = 0.280046 * safezoneH + safezoneY;
            	w = 0.273384 * safezoneW;
            	h = 0.208956 * safezoneH;
            };
            class TRF_LOGISTICS_INVENTORY_TITLE: RscText
            {
            	idc = 1000;
            	text = "INVENTORY"; //--- ToDo: Localize;
            	x = 0.324622 * safezoneW + safezoneX;
            	y = 0.236055 * safezoneH + safezoneY;
            	w = 0.242435 * safezoneW;
            	h = 0.0659861 * safezoneH;
            };
            class TRF_LOGISTICS_TAKEOUT_BUTTON: RscButton
            {
            	idc = 1600;
            	text = "Take Out"; //--- ToDo: Localize;
            	x = 0.61348 * safezoneW + safezoneX;
            	y = 0.434014 * safezoneH + safezoneY;
            	w = 0.0670564 * safezoneW;
            	h = 0.0549885 * safezoneH;
              action = "[]call TRF_fnc_unload";
            };
            class RscListbox_1501: RscListbox
            {
            	idc = 1501;
            	text = "TRF_LOGISTICS_VICIN_LISTBOX"; //--- ToDo: Localize;
            	x = 0.324622 * safezoneW + safezoneX;
            	y = 0.532993 * safezoneH + safezoneY;
            	w = 0.273384 * safezoneW;
            	h = 0.186961 * safezoneH;
            };
            class TRF_LOGISTICS_VICIN_TEXT: RscText
            {
            	idc = 1001;
            	text = "VICINITY"; //--- ToDo: Localize;
            	x = 0.324622 * safezoneW + safezoneX;
            	y = 0.489002 * safezoneH + safezoneY;
            	w = 0.0361073 * safezoneW;
            	h = 0.0659861 * safezoneH;
            };
            class TRF_LOGISTICS_LOADIN_BUTTON: RscButton
            {
            	idc = 1601;
            	text = "Load In"; //--- ToDo: Localize;
            	x = 0.61348 * safezoneW + safezoneX;
            	y = 0.664965 * safezoneH + safezoneY;
            	w = 0.0670564 * safezoneW;
            	h = 0.0549885 * safezoneH;
              action = "[]call TRF_fnc_load";
            };
      };
};
