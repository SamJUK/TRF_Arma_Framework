class TRF_Framework
{
  tag = "TRF";

  class Master_Directory
  {
    file = "core";

		class setupEVH {};
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

  class survival
  {
    file = "core\survival";

    class SetupSurvival {};
  };
};
