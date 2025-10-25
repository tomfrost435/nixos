{
  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "tom";
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  };
}
