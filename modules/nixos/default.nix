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
    ./user.nix
    ./zram.nix
    # ./plasma.nix
  ];

  steam.enable = lib.mkDefault true;
  virt-manager.enable = lib.mkDefault true;
}
