{ pkgs, ... }:
{
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  home.packages = with pkgs; [
    lua-language-server
    stylua
    nixd
    nixfmt

    bun
    pnpm
    nodejs_24
    typescript
    typescript-language-server
    tailwindcss-language-server
    oxfmt
    oxlint

    gradle
    rustup
    go
    zls

    bat
    btop
    fastfetch
    fzf
    tldr
    tokei
    tree
    xdg-ninja
    zip
    unzip
  ];
}
