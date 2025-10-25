{ pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos-configuration
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  time.timeZone = "Europe/Rome";

  system.stateVersion = stateVersion;
}
