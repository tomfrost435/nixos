{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs =
    { self, nixpkgs, disko }:
    {
      nixosConfigurations.tom = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
      };
    };
}






disko = {
  url = "github:nix-community/disko";
  inputs.nixpkgs.follows = "nixpkgs";
}
