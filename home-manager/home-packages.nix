{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # General
    bitwarden-desktop
    discord
    vencord # Used by discord
    firefox
    krita
    obsidian
    qbittorrent # Remove in 25.11
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
