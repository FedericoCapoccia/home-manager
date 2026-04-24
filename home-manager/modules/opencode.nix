{ pkgs, ... }:
let
  opencodeWrapper = pkgs.writeShellScriptBin "opencode" ''
    exec "$HOME/.opencode/bin/opencode" "$@"
  '';
in
{
  programs.opencode = {
    enable = true;
    package = opencodeWrapper;

    settings = {
      model = "opencode/qwen3.6-plus";
      provider = {
        github-copilot = {
          whitelist = [ "gpt-5-mini" "gpt-5.4-mini" ];
        };
        openai = {
          whitelist = [ "gpt-5.4" "gpt-5.4-mini" "gpt-5.5" ];
        };
      };
      mcp = { };
      server = {
        port = 42069;
      };
    };
    web.enable = true;
  };
}
