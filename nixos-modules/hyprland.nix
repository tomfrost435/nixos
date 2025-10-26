{ user, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  services.getty.autologinUser = user;
}
