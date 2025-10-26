{ pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
    ffmpeg
    mpv
    microfetch
    yt-dlp
  ];
}
