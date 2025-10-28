{ user, version, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
    };
  };

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
