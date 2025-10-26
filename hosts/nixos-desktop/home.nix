{ user, version, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
