{ user, version, ... }:

{
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
