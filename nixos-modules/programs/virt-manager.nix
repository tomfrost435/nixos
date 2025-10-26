{
  user,
  config,
  lib,
  ...
}:

{
  options = {
    virt-manager.enable = lib.mkEnableOption "Enable virt-manager";
  };
  config = lib.mkIf config.virt-manager.enable {

    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = [ user ];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;

  };
}
