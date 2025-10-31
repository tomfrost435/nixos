{ user, version, ... }:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true; # required

  home.preferXdgDirectories = true; # dont know if it does anything

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
