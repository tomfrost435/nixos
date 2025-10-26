{
  config,
  lib,
  user,
  ...
}:

{
  options = {
    plasma.enable = lib.mkEnableOption "Enable plasma";
  };
  config = lib.mkIf config.plasma.enable {

    services = {
      desktopManager.plasma6.enable = true;
      displayManager = {
        autoLogin.enable = true;
        autoLogin.user = user;
        sddm.enable = true;
        sddm.wayland.enable = true;
      };
    };

  };
}
