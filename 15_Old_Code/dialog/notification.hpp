class ninnot {
	idd = -1;
	fadeout=0;
	fadein=0;
	duration = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999;
	name = "ninnot";
	onLoad = "uiNamespace setVariable ['ninnot', _this select 0]";

	class controlsBackground {
    class nin_not_text: RscStructuredText
		{
			idc = 9722;
			text = "Health:"; //--- ToDo: Localize;
			x = 0.933125 * safezoneW + safezoneX;
			y = 0.774 * safezoneH + safezoneY;
			w = 0.25;
			h = 0.04;
		};
	};
};
