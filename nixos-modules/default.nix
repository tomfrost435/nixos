{ lib, ... }:

{
  imports = [
    ./programs
    ./services

    ./audio.nix
    ./bootloader.nix
    # ./home-manager.nix
    ./hyprland.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    ./plasma.nix
    ./update.nix
    ./user.nix
    ./zram.nix
    # ./hyprland.nix
  ];

  # Config
  update.enable = lib.mkDefault true;

  # Programs
  steam.enable = lib.mkDefault true;
  virt-manager.enable = lib.mkDefault true;

  # Services
}
