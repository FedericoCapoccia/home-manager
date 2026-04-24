{ config, pkgs, ... }:
{
    home.username = "fede";
    home.homeDirectory = "/home/fede";
    home.stateVersion = "25.11";
    programs.home-manager.enable = true;

    imports = [
        ./modules/env.nix
        ./modules/fish.nix
        ./modules/ssh.nix
        ./modules/git.nix
        ./modules/packages.nix
        ./modules/opencode.nix
        ./modules/fonts.nix
        ./modules/sway.nix
        ./modules/theme.nix
        ./modules/kitty.nix
    ];
}
