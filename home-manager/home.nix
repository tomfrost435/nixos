{ user, homeStateVersion, ... }:

{
  imports = [
    ./home-packages.nix
    ./programs
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };

}
