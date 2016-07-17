class RscSamButton: RscButton
{
  colorBackground[] = {0,0,0,0.5};
  colorBackgroundDisabled[] = {0,0,0,0.2};
  colorBackgroundActive[] ={0,0,0,0.5};
  colorFocused[] ={0,0,0,0.5};
  colorShadow[] ={0,0,0,0.2};
  colorBorder[] ={0,0,0,0};
  shadow = 1;
};
class RscSamButtonSquare: RscSamButton
{
  w = 0.0721875 * safezoneW;
  h = 0.132 * safezoneH;
};
class RscSamButtonBigSquare: RscSamButton
{
  w = 0.201094 * safezoneW;
  h = 0.275 * safezoneH;
};
class RscSamButtonLong: RscSamButton
{
  w = 0.113437 * safezoneW;
  h = 0.132 * safezoneH;
};
