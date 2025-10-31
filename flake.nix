{
  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      user = "tom";
      version = "25.11";
    in
    {

      nixosConfigurations = {

        "captor" = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/captor/configuration.nix
            ./hosts/captor/hardware-configuration.nix
            ./modules/nixos
          ];
        };

      };

      homeConfigurations = {

        "captor" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/captor/home.nix
            ./modules/home-manager
          ];
        };

      };

    };

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
