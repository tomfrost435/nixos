{ config, lib, ... }:

{
  options = {
    update.enable = lib.mkEnableOption "Enable automatic NixOS updates";
  };
  config = lib.mkIf config.update.enable {

    system.autoUpgrade = {
      enable = true;
      dates = "weekly";
    };

  };
}
