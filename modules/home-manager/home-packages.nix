{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # General
    bitwarden-desktop
    discord
    vencord # Used by discord
    krita
    obsidian
    spotify
    syncthingtray
  ];
}
