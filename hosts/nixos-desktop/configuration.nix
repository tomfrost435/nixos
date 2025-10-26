{ pkgs, version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixos-desktop";

  # environment.systemPackages = [ pkgs.home-manager ]; # required

  time.timeZone = "Europe/Rome";

  system.stateVersion = version;
}
