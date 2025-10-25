{
  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  services.home-manager.autoUpgrade = {
    enable = true;
    autoUpgrade.frequency = "weekly";
  };
}
