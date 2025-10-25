{ pkgs, stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos-configuration
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = stateVersion;
}
