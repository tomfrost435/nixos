{ user, version, ... }:

{
  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
    };
  };

  programs.home-manager.enable = true;

  home.stateVersion = version;
}
