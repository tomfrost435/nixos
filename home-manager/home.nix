{ user, homeStateVersion, ... }:

{
  imports = [
    ./modules
    ./home-packages.nix
  ];

  programs.bash = {
    enable = true;
  };

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}
