{ version, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # Host-specific
  networking.hostName = "nixos-desktop";
  time.timeZone = "Europe/Rome";

  # Modules
  steam.enable = true;
  virt-manager.enable = false;

  system.stateVersion = version;
}
