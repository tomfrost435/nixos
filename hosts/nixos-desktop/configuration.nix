{ version, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # Host-specific
  networking.hostName = "nixos-desktop";
  time.timeZone = "Europe/Rome";

  # Modules
  virt-manager.enable = false;
  steam.enable = true;

  updates.enable = true;

  system.stateVersion = version;
}
