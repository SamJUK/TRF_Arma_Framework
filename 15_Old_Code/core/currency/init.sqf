//Setup Variables
  player setVariable ["Sam_Money", 0];
  player setVariable ["Sam_Bank", 5000];

//Execute Rest Of Files
  []execVM "core\currency\purchase.sqf";

//Money Loop
while {true} do {
  sleep 300;  //Sleep 5 Minutes | 300 Seconds
  player setVariable ["Sam_Bank", (player getVariable "Sam_Bank") + SamPaycheckValue];
};
