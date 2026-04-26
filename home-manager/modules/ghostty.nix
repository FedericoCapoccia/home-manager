{ ... }:
{
  programs.ghostty = {
    enable = true;
    package = null;
    systemd.enable = false;

    settings = {
      font-family = "CaskaydiaCove Nerd Font";
      font-size = 14;

      freetype-load-flags = "no-hinting,no-force-autohint,no-monochrome";
      alpha-blending = "linear-corrected";

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
