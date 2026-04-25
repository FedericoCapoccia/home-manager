{ pkgs, config, ... }:
{
  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 20;
    };
    font = {
      name = "Inter Nerd Font Propo";
      size = 11;
    };
    colorScheme = "dark";

    gtk4 = {
      theme = config.gtk.theme;
      extraCss = ''
        @import url("noctalia.css");
      '';
    };

    gtk3.extraCss = ''
      @import url("noctalia.css");
    '';
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 20;
    gtk.enable = true;
    x11.enable = true;
    dotIcons.enable = true;
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    qt6ctSettings = {
      Appearance = {
        icon_theme = "Papirus-Dark";
        style = "Adwaita-Dark";
        standard_dialogs = "xdgdesktopportal";
      };
      Fonts = {
        general = "\"Inter Nerd Font Propo,11\"";
        fixed = "\"DejaVuSansM Nerd Font Mono,11\"";
      };
    };
  };

  home.sessionVariables = {
    QS_ICON_THEME = "Papirus-Dark";
  };
}
