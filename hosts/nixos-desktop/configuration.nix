{ version, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  nixpkgs.config.allowUnfree = true;
  networking.hostName = "nixos-desktop";

  time.timeZone = "Europe/Rome";

  virt-manager.enable = false;
  steam.enable = true;

  updates.enable = true;

  system.stateVersion = version;
}
