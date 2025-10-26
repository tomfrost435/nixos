{ config, lib, ... }:

{
  options = {
    autoUpdate.enable = lib.mkEnableOption "Enable automatic NixOS updates";
  };
  config = lib.mkIf config.autoUpdate.enable {

    system.autoUpgrade = {
      enable = true;
      dates = "weekly";
    };

  };
}
