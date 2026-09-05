{ config, ... }:

{
  programs.noctalia = {
    enable = true;
    package = null;

    settings = {
      shell = {
        lang = "en";

        launcher = {
          categories = false;
        };

        session.actions = [
          {
            action = "lock";
            shortcut = "1";
          }
          {
            action = "suspend";
            shortcut = "2";
          }
          {
            action = "reboot";
            shortcut = "3";
          }
          {
            action = "logout";
            shortcut = "4";
          }
          {
            action = "shutdown";
            shortcut = "5";
            variant = "destructive";
          }
        ];
      };

      theme = {
        mode = "dark";
        source = "custom";
        custom_palette = "Vesper";
      };

      wallpaper = {
        directory = "${config.home.homeDirectory}/media/pictures/wallpapers";
      };

      bar.default = {
        padding = 12;
        margin_ends = 4;
        margin_edge = 4;
        widget_spacing = 18;
        font_weight = 600;

        start = [
          "media"
        ];

        center = [
          "clock"
        ];

        end = [
          "notifications"
          "volume"
          "brightness"
          "battery"
          "bluetooth"
          "tray"
          "control-center"
        ];
      };

      widget = {
        clock = {
          format = "{:%H:%M %a, %b %d}";
        };

        media = {
          hide_when_no_media = true;
        };

        volume.actions = {
          middle = "exec pwvucontrol || pavucontrol";
        };
      };

      location = {
        address = "Milano, IT";
      };
    };

  };

  xdg.configFile."noctalia/palettes/Vesper.json".source = ../../conf/noctalia/palettes/Vesper.json;
}
