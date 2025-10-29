{
  imports = [
    ./cli.nix
    ./git.nix
    ./hyprland.nix
    ./alacritty.nix
    # ./audio.nix
    # ./home-packages.nix
    ./fzf.nix
    ./mpv.nix
    ./thunderbird.nix
    ./vscode.nix
    ./yt-dlp.nix
    ./updates.nix
  ];

  updates.enable = true;
}
