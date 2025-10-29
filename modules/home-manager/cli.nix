{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ffmpeg
    microfetch
    yt-dlp
  ];
}
