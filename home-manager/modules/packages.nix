{ pkgs, ...}:
{
    programs.zoxide = {
        enable = true;
        enableFishIntegration = true;
    };

    home.packages = with pkgs; [
        neovim
        lua-language-server
        stylua
        tree-sitter

        bun
        pnpm
        typescript
        typescript-language-server
        tailwindcss-language-server
        oxfmt
        oxlint


        gradle
        rustup
        go
        zig
        zls
    ];
}
