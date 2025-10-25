{
  programs = {
    java.enable = true;
    localsend.enable = true;
  };

  services = {
    syncthing.enable = true;
    openssh.enable = true;
    # qbittorrent.enable // Available in 25.11
  };
}
