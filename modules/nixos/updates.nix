{ config, lib, ... }:

{
  options = {
    updates.enable = lib.mkEnableOption "Enable automatic NixOS updates";
  };
  config = lib.mkIf config.updates.enable {

    system.autoUpgrade = {
      enable = true;
      dates = "weekly";
      persistent = true;
    };

  };
}
