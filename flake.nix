{
  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      self, # idk what this does
      nixpkgs,
      home-manager,
      ...
    }@inputs: # idk what this syntax is
    let
      user = "tom";
      version = "25.11";
    in
    {
      nixosConfigurations = {

        nixos-desktop = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/nixos-desktop/configuration.nix
            ./nixos-modules
          ];
        };

      };

      homeConfigurations = {

        tom = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/nixos-desktop/home.nix
            ./home-manager-modules
          ];
        };

      };

    };
}
