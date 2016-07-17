class TRF_Framework
{
  tag = "TRF";
  class Master_Directory
  {
    file = "core";
		class setupEVH {};
    class keyhandler {};
    class test {};
  };

  class EventHandlers
  {
    file = "core\evh";
    class handleDamage {};
    class onPlayerKilled {};
    class onPlayerRespawn {};
    class onFired {};
    class inventoryOpened {};
    class inventoryClosed {};
  };

  class functions
  {
    file = "core\functions";
    class earplugs {};
    class hudstateChange {};
  };

  class hud
  {
    file = "core\hud";
    class hudrefresh {};
    class SetupHUD {};
  };

  class logistics
  {
    file = "core\logistics";
    class logistics {};
    class pickup {};
    class drop {};
    class load {};
    class unload {};
    class use {};
    class listboxes {};
  };

  class notifications
  {
    file = "core\notifications"
    class samNotify {};
  };

  class survival
  {
    file = "core\survival";
    class SetupSurvival {};
  };

  class tablet
  {
    file = "core\tablet"
    class tabletUse {};
    class tabletPowerOn {};
    class tabletPower {};
  };
};
