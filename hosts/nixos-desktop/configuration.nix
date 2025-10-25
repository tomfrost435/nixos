{ pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos-configuration
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  system.stateVersion = stateVersion;
}
