{ pkgs, ... }:
{
    fonts.fontconfig = {
        enable = true;
        antialiasing = true;
        hinting = "slight";
        subpixelRendering = "rgb";
        defaultFonts = {
            sansSerif = [ "Inter" "DejaVu Sans" ];
            serif = [ "DejaVu Serif" ];
            monospace = [ "DejaVuSansM Nerd Font Mono" ];
            emoji = [ "Noto Color Emoji" ];
        };
        configFile = {
            no-embedded-bitmaps = {
                enable = true;
                priority = 20;
                label = "no-embedded-bitmaps";
                text = ''
                    <?xml version="1.0"?>
                    <!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
                    <fontconfig>
                    <match target="font">
                    <edit name="embeddedbitmap" mode="assign">
                    <bool>false</bool>
                    </edit>
                    </match>
                    </fontconfig>
                    '';
            };
        };
    };
    home.packages = with pkgs; [
        nerd-fonts.dejavu-sans-mono
        inter
        noto-fonts-color-emoji
    ];
}
