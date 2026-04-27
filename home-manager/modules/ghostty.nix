{ ... }:
{
  programs.ghostty = {
    enable = true;
    package = null;
    systemd.enable = false;

    settings = {
      font-family = "CaskaydiaCove Nerd Font";
      font-size = 14;

      keybind = [
        "performable:ctrl+c=copy_to_clipboard:mixed"
        "ctrl+shift+h=unbind"
        "ctrl+shift+j=unbind"
        "ctrl+shift+k=unbind"
        "ctrl+shift+l=unbind"
        "ctrl+shift+|=new_split:right"
        "ctrl+shift+-=new_split:down"
        "ctrl+alt+h=goto_split:left"
        "ctrl+alt+j=goto_split:down"
        "ctrl+alt+k=goto_split:up"
        "ctrl+alt+l=goto_split:right"
        "ctrl+shift+t=new_tab"
        "ctrl+tab=next_tab"
        "ctrl+shift+tab=previous_tab"
      ];

      # freetype-load-flags = "no-hinting,no-force-autohint,no-monochrome";
      freetype-load-flags = "hinting,no-autohint,light,no-force-autohint,no-monochrome";
      alpha-blending = "linear-corrected";
      quit-after-last-window-closed = true;
      quit-after-last-window-closed-delay = "5m";
      window-inherit-working-directory = false;
      tab-inherit-working-directory = false;
      gtk-tabs-location = "bottom";

      foreground = "#e0def4";
      background = "#000000";
      selection-foreground = "#e0def4";
      selection-background = "#403d52";
      cursor-color = "#524f67";
      cursor-text = "#e0def4";

      palette = [
        "0=#26233a"
        "8=#6e6a86"
        "1=#eb6f92"
        "9=#eb6f92"
        "2=#9ccfd8"
        "10=#9ccfd8"
        "3=#f6c177"
        "11=#f6c177"
        "4=#31748f"
        "12=#31748f"
        "5=#c4a7e7"
        "13=#c4a7e7"
        "6=#ebbcba"
        "14=#ebbcba"
        "7=#e0def4"
        "15=#e0def4"
      ];
    };
  };
}
