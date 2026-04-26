{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    package = null;

    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 13;
      package = pkgs.nerd-fonts.caskaydia-cove;
    };

    settings = {
      enable_audio_bell = "no";
      confirm_os_window_close = 0;
      enabled_layouts = "Tall";

      foreground = "#e0def4";
      background = "#000";
      selection_foreground = "#e0def4";
      selection_background = "#403d52";
      cursor = "#524f67";
      cursor_text_color = "#e0def4";
      url_color = "#c4a7e7";
      active_tab_foreground = "#e0def4";
      active_tab_background = "#26233a";
      inactive_tab_foreground = "#6e6a86";
      inactive_tab_background = "#191724";
      color0 = "#26233a";
      color8 = "#6e6a86";
      color1 = "#eb6f92";
      color9 = "#eb6f92";
      color2 = "#9ccfd8";
      color10 = "#9ccfd8";
      color3 = "#f6c177";
      color11 = "#f6c177";
      color4 = "#31748f";
      color12 = "#31748f";
      color5 = "#c4a7e7";
      color13 = "#c4a7e7";
      color6 = "#ebbcba";
      color14 = "#ebbcba";
      color7 = "#e0def4";
      color15 = "#e0def4";
    };

    keybindings = {
      "ctrl+shift+enter" = "new_window_with_cwd";
    };
  };
}
