{ pkgs, ... }:
{
  xdg.configFile."sway/config".source = ../../conf/sway/config;

  home.packages = with pkgs; [
    swayidle
    pavucontrol
    swaysome
    autotiling-rs
    cliphist
    wl-clipboard
    playerctl
  ];

  xdg.configFile."xdg-desktop-portal/sway-portals.conf".text = ''
    [preferred]
    default=wlr;gtk
    org.freedesktop.impl.portal.ScreenCast=wlr
    org.freedesktop.impl.portal.Screenshot=wlr
    org.freedesktop.impl.portal.Inhibit=none
    org.freedesktop.impl.portal.Secret=gnome-keyring
  '';
}
