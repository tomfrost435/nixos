{ version, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # Host-specific
  networking.hostName = "captor";
  time.timeZone = "Europe/Rome";

  # Modules
  steam.enable = true;
  virt-manager.enable = false;

  system.stateVersion = version;
}
