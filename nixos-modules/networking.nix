{ user, ... }:

{
  networking.networkmanager.enable = true;
  users.groups.networkmanager.members = [ user ];
}
