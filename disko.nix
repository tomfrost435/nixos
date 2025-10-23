# Disko device partition with btrfs

{
  disko.devices = {
    disk = {
      MAIN = {
        device = "/dev/disk/by-diskseq/1"; # Optionally change device name
        type = "disk";
        content = {
          type = "gpt";
          partitions = {

            # UEFI Boot
            ESP = {
              label = "boot";
              size = "512M";
              type = "EF00";
              content = {
                name = "ESP";
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
                name = "storage";
                type = "btrfs";
                mountOptions = [
                  "compress=zstd" # Some kind of compression
                  "noatime" # Disable file and directory access time recording to "improve performance"
                ];
                # extraArgs = [ "-f" ]; # Override existing partition
                subvolumes = {

                  "root" = {
                    mountpoint = "/";
                  };

                  # "home" = {
                  #   mountpoint = "/home";
                  # };
                };

              };
            };

          };
        };
      };
    };
  };
}
