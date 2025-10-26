{ pkgs, version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = nixos-desktop;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = [ pkgs.home-manager ]; # idk why

  # steam.enable = true;

  time.timeZone = "Europe/Rome";

  system.stateVersion = version;
}
