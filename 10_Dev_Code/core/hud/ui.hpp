class ninfwHUD {
	idd = -1;
	fadeout=0;
	fadein=0;
	duration = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
	name = "ninfwHUD";
	onLoad = "uiNamespace setVariable ['ninfwHUD', _this select 0]";

	class controlsBackground {
    class nin_faw_health: RscStructuredText
		{
			idc = 9722;
			text = "Health:"; //--- ToDo: Localize;
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.874 * safezoneH + safezoneY;
			w = 0.25;
			h = 0.04;
		};
		class nin_faw_thirst: RscStructuredText
		{
			idc = 9723;
			text = "Thirst:"; //--- ToDo: Localize;
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.25;
			h = 0.04;
		};
		class nin_faw_hunger: RscStructuredText
		{
			idc = 9724;
			text = "Hunger:"; //--- ToDo: Localize;
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.25;
			h = 0.04;
		};
		class nin_not_text: RscStructuredText
		{
			idc = 9799;
			text = ""; //--- ToDo: Localize;
			x = 0.02 * safezoneW + safezoneX;
			y = 0.174 * safezoneH + safezoneY;
			w = 1;
			h = 1;
		};
		class nin_hud_earplugs: RscPicture
		{
			idc = 9800;
			text = "sam_img\ui\earplugs.paa"; //--- ToDo: Localize;
			x = 0.95 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.12;
			h = 0.12;
		};
	};
};
