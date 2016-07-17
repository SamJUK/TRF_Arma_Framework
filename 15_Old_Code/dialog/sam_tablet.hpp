class sam_tablet
{
    idd = 500;
    movingenable = false;
    name = "sam_tablet";
    onLoad = "uiNamespace setVariable ['sam_tablet', _this select 0]";

    class Controls
    {
         class sam_bg: RscPicture
         {
          idc = 501;
          text = "sam_img\tablet\xm9_off_ca.paa";
          x = 0.25 * safezoneW + safezoneX;
          y = 0.1 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.8 * safezoneH;
         };
         class sam_bgon: RscPicture
         {
          idc = 502;
          text = "sam_img\tablet\xm9_on_ca.paa";
          x = 0.25 * safezoneW + safezoneX;
          y = 0.1 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.8 * safezoneH;
         };
         class sam_bgss: RscPicture
         {
          idc = 503;
          text = "sam_img\tablet\xm9_splash_ca.paa";
          x = 0.25 * safezoneW + safezoneX;
          y = 0.1 * safezoneH + safezoneY;
          w = 0.5 * safezoneW;
          h = 0.8 * safezoneH;
         };
         class sam_homebut: RscButton
         {
          idc = 510;
          colorBackground[] = {0,0,0,0};
          colorBackgroundDisabled[] = {0,0,0,0};
          colorBackgroundActive[] ={0,0,0,0};
        	colorFocused[] ={0,0,0,0};
        	colorShadow[] ={0,0,0,0};
          colorBorder[] ={0,0,0,0};
          shadow = 0;
          x = 0.484531 * safezoneW + safezoneX;
          y = 0.698 * safezoneH + safezoneY;
          w = 0.0309375 * safezoneW;
          h = 0.044 * safezoneH;
          action = "execVM ""core\tablet\power.sqf""";
         };
         class sam_button1: RscSamButtonSquare
         {
           idc = 551;
           x = 0.304062 * safezoneW + safezoneX;
           y = 0.269 * safezoneH + safezoneY;
           text="Admin Tools";
           action = "[""red"",""Not Yet Implimented!""]spawn sam_notify";
         };
         class sam_button2: RscSamButtonSquare
         {
           idc = 552;
           x = 0.304062 * safezoneW + safezoneX;
           y = 0.412 * safezoneH + safezoneY;
           text="Ear Plugs";
           action = "[]call sam_fnc_earplugs;";
         };
         class sam_button3: RscSamButtonSquare
         {
           idc = 553;
           x = 0.304062 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           text="Holster Weapon";
           action = "player action [""SwitchWeapon"", player, player, 100];";
         };
         class sam_button4: RscSamButtonBigSquare
         {
           idc = 554;
           x = 0.381406 * safezoneW + safezoneX;
           y = 0.269 * safezoneH + safezoneY;
           action = "hint ""hehe""";
         };
         class sam_button5: RscSamButtonSquare
         {
           idc = 555;
           x = 0.386562 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           action = "hint ""hehe""";
         };
         class sam_button6: RscSamButtonLong
         {
           idc = 556;
           x = 0.469062 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           action = "hint ""hehe""";
         };
         class sam_button7: RscSamButtonLong
         {
           idc = 557;
           x = 0.587656 * safezoneW + safezoneX;
           y = 0.269 * safezoneH + safezoneY;
           text="Repairs"
           action = "execVM ""core\repair\repairRequest.sqf""";
         };
         class sam_button8: RscSamButtonLong
         {
           idc = 558;
           x = 0.587656 * safezoneW + safezoneX;
           y = 0.412 * safezoneH + safezoneY;
           action = "hint ""hehe""";
         };
         class sam_button9: RscSamButtonLong
         {
           idc = 559;
           x = 0.587656 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           action = "hint ""hehe""";
         };
    };
};
