{ user, homeStateVersion, ... }:

{
  imports = [
    ./home-modules
    ./home-packages.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.bash = {
    enable = true;
  };

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
