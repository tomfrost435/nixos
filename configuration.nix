{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
  ];

  # Bootloader

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  users.groups.networkmanager.members = [ "tom" ];

  # Time and Location

  time.timeZone = "Europe/Rome";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ALL = "it_IT.UTF-8";
  };

  # Plasma KDE

  services = {
    desktopManager.plasma6.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "tom";
      sddm.enable = true;
      sddm.wayland.enable = true;
    };
  };

  # Audio

  security.rtkit.enable = true;
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # User

  users.users.tom = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  # Packages

  programs = {
    git = {
      enable = true;
      config = {
        user.name = "Tommaso Acciarresi";
        user.email = "49035039+tomfrost435@users.noreply.github.com";
      };
    };

    steam = {
      enable = true;
      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };

    java.enable = true;

    localsend.enable = true;
  };

  environment.systemPackages = with pkgs; [
    alacritty
    bitwarden-desktop
    calf # Used by easyeffects
    discord
    easyeffects
    ffmpeg
    firefox
    home-manager
    krita
    lsp-plugins # Used by easyeffects
    mpv
    neofetch
    obsidian
    qbittorrent
    spotify
    syncthing # Used by syncthingtray
    syncthingtray
    thunderbird
    vencord # Used by discord
    vscode
    yt-dlp
  ];

  # VM

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "tom" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  # Allow non-open-source packages

  nixpkgs.config.allowUnfree = true;

  # Nix Settings

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };

  # ZRAM

  zramSwap.enable = true;

  # Automatic Updates

  system.autoUpgrade = {
    enable = true;
    dates = "weekly";
  };

  system.stateVersion = "25.05"; # Do NOT change
}
