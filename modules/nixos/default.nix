{ lib, ... }:

{
  imports = [
    ./programs
    ./services

    ./audio.nix
    ./bootloader.nix
    ./hyprland.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    # ./plasma.nix
    ./updates.nix
    ./user.nix
    ./zram.nix
  ];

  # Config
  updates.enable = lib.mkDefault true;

  # Programs
  steam.enable = lib.mkDefault true;
  virt-manager.enable = lib.mkDefault true;

  # Services
}
