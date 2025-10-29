{ config, lib, ... }:

{
  options = {
    updates.enable = lib.mkEnableOption "Enable automatic home-manager updates";
  };
  config = lib.mkIf config.updates.enable {

    services.home-manager.autoUpgrade = {
      enable = true;
      frequency = "weekly";
    };

  };
}
