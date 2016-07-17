class TRF_Framework
{
  class anything
  {
    tag = "TRF";
  };

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
  };

  class notifications
  {
    class samNotify {};
  };

  class survival
  {
    file = "core\survival";
    class SetupSurvival {};
  };

  class tablet
  {
    class tabletPowerOn {};
    class tabletPower {};
  };
};
