{ user, version, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos, btw";
    };
  };

  # programs.home-manager.enable = true;
  # systemd.user.startServices = "sd-switch";

  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
