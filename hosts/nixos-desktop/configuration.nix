{ pkgs, version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixos-desktop";

  time.timeZone = "Europe/Rome";

  plasma.enable = true;

  system.stateVersion = version;
}
