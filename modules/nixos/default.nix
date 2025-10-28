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
    ./updates.nix
    ./user.nix
    ./zram.nix
    # ./plasma.nix
  ];

  # Config
  updates.enable = lib.mkDefault true;

  # Programs
  steam.enable = lib.mkDefault true;
  virt-manager.enable = lib.mkDefault true;

  # Services
}
