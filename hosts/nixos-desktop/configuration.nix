{ version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "nixos-desktop";

  virt-manager.enable = false;

  time.timeZone = "Europe/Rome";

  system.stateVersion = version;
}
