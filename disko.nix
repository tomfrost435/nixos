# Disko device partition with btrfs

{
  disko.devices = {
    disk = {
      MAIN = {
        device = "dev/vda"; # Change device name
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
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };

            # Storage
            STORAGE = {
              label = "nixos";
              size = "100%";
              content = {
                type = "btrfs";
                mountpoint = "/";
                mountOptions = [
                  "compress=zstd" # Some kind of compression
                  "noatime" # Disable file and directory access time recording to "improve performance"
                ];
                extraArgs = [ "-f" ]; # Override existing partition
              };
            };

          };
        };
      };
    };
  };
}
