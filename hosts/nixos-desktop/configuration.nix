{ pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  steam.enable = true;

  time.timeZone = "Europe/Rome";

  system.stateVersion = stateVersion;
}
