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
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      user = "tom";
      hosts = [
        {
          hostname = "nixos-desktop";
          stateVersion = "25.11";
        }
      ];
      homeStateVersion = "25.11";

      makeSystem =
        { hostname, stateVersion }:
        nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit
              inputs
              user
              hostname
              stateVersion
              ;
          };

          modules = [
            ./hosts/${hostname}/configuration.nix
            ./nixos-modules
          ];
        };

    in
    {
      nixosConfigurations = nixpkgs.lib.foldl' (
        configs: host:
        configs
        // {
          "${host.hostname}" = makeSystem {
            inherit (host) hostname stateVersion;
          };
        }
      ) { } hosts;

      # NOTE: Might want it to be "user@host"
      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit
            inputs
            user
            homeStateVersion
            ;
        };
        modules = [ ./home-manager/home.nix ];
      };
    };
}
