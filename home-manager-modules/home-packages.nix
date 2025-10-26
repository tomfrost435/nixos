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
    thunderbird
    mpv

    # Audio
    easyeffects
    calf # Used by easyeffects
    lsp-plugins # Used by easyeffects

    # Programming
    vscode

    # CLI
    alacritty
    ffmpeg
    mpv
    microfetch
    yt-dlp
  ];
}
