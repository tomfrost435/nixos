{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    # Optional
    # Whether to enable hyprland-session.target on hyprland startup
    systemd.enable = true;
  };
}
