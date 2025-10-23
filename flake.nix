{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      self,
      nixpkgs,
      disko,
    }:
    {
      # NOTE: 'nixos' is the default hostname set by the installer
      nixosConfigurations.tom = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          disko.nixosModules.disko
        ];
      };
    };
}
