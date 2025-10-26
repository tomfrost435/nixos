{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = user;
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  };
}
