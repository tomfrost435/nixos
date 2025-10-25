{
  disko.devices = {
    disk = {
      MAIN = {
        device = "/dev/vda"; # Change device name
        type = "disk";
        content = {
          type = "gpt";
          partitions = {

            # UEFI Boot
            ESP = {
              size = "512M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };

            # Storage
            STORAGE = {
              size = "100%";
              content = {
                type = "btrfs";
                mountpoint = "/";
              };
            };

          };
        };
      };
    };
  };
}
