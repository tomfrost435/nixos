{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      user = "tom";
      version = "25.11";
    in
    {

      nixosConfigurations = {

        "nixos-desktop" = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/nixos-desktop/configuration.nix
            ./hosts/nixos-desktop/hardware-configuration.nix
            ./modules/nixos
          ];
        };

      };

      homeConfigurations = {

        "${user}" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = { inherit inputs user version; };
          modules = [
            ./hosts/nixos-desktop/home.nix
            ./modules/home-manager
          ];
        };

      };

    };
}
