{
  pkgs,
  config,
  lib,
  ...
}:

{
  options = {
    steam.enable = lib.mkEnableOption "Enable Steam";
  };
  config = lib.mkIf config.steam.enable {

    programs.steam = {
      enable = true;
      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

  };
}
