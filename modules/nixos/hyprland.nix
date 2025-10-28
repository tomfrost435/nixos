{ user, ... }:

{
  programs.hyprland.enable = true;
  services.getty.autologinUser = user;
}
