{ user, hostname, ... }:

{
  networking.networkmanager.enable = true;
  networking.hostName = hostname;
  users.groups.networkmanager.members = [ user ];
}
