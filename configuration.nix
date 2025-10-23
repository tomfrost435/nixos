{
  config,
  lib,
  pkgs,
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

  # Time and Location

  time.timeZone = "Europe/Rome";
  i18n.defaultLocale = "it_IT.UTF-8";

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
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # User

  users.users.tom = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  environment.systemPackages = with pkgs; [
    # Plasma KDE Packages
    kdePackages.kcalc
    kdePackages.kclock
    kdePackages.ksystemlog
    kdePackages.sddm-kcm

    alacritty
    mpv
    discord
    obsidian
    firefox
    steam

    neofetch
    git
    ffmpeg
    zip
    unzip
    yt-dlp

    wayland
    wayland-utils
    wl-clipboard

    pipewire

    syncthingtray

    home-manager
  ];

  # ???

  services.passSecretService.enable = true;

  # OpenSSH

  services.openssh.enable = true;

  # Enable flakes

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Allow non-open-source packages

  nixpkgs.config.allowUnfree = true;

  # Nix Garbage Collector
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  system.stateVersion = "25.05"; # Do NOT change
}
