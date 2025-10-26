{ user, version, ... }:

{
  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  home.stateVersion = version;
}
