{
  user,
  config,
  lib,
  ...
}:

{
  options = {
    hyprland.enable = lib.mkEnableOption "Enable hyprland";
  };
  config = lib.mkIf config.hyprland.enable {

    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    services.getty.autologinUser = user;

  };
}
