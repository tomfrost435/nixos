{ pkgs, ... }:

{
  environment.systemPackages = [ pkgs.home-manager ];
  imports = [ inputs.home-manager.nixosModules.default ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
  };
}
