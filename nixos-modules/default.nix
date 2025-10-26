{ lib, ... }:

{
  imports = [
    ./programs
    ./services

    ./allow-unfree.nix
    ./audio.nix
    ./bootloader.nix
    ./home-manager.nix
    ./hyprland.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    ./plasma.nix
    ./update.nix
    ./user.nix
    ./zram.nix
  ];

  # Config
  update.enable = lib.mkDefault true;

  plasma.enable = lib.mkDefault true;
  hyprland.enable = lib.mkDefault false;

  # Programs
  steam.enable = lib.mkDefault true;
  virt-manager.enable = lib.mkDefault true;

  # Services
}
