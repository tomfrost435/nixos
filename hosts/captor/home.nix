{ user, version, ... }:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true; # required

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
