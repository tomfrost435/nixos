{ stateVersion, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos.configuration
  ];

  system.stateVersion = stateVersion;
}
