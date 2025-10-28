{ version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "nixos-desktop";

  virt-manager.enable = false;

  time.timeZone = "Europe/Rome";

  system.stateVersion = version;
}
