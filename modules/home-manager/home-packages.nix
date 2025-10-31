{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bitwarden-desktop
    krita
    obsidian
    spotify
    syncthingtray
    vesktop
  ];
}
