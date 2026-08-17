{
  pkgs,
  config,
  lib,
  ...
}:
let
  opencodeWrapper = pkgs.writeShellScriptBin "opencode" ''
    exec "${config.home.homeDirectory}/.opencode/bin/opencode" "$@"
  '';
in
{
  programs.opencode = {
    enable = true;
    package = opencodeWrapper;

    settings = {
      model = "ollama/metalspork/qwen3.8-ud:Q2_K_XL";
      provider = {
        github-copilot = {
          whitelist = [
            "gpt-5-mini"
            "gpt-5.4-mini"
          ];
        };
        openai = {
          whitelist = [
            "gpt-5.4"
            "gpt-5.4-mini"
            "gpt-5.5"
          ];
        };
        ollama = {
          npm = "@ai-sdk/openai-compatible";
          name = "Ollama";
          options = {
            baseURL = "http://localhost:11434/v1";
          };
          models = {
            "metalspork/qwen3.8-ud:Q2_K_XL" = {
              name = "Qwen 3.8 UD Q2_K_XL";
            };
          };
        };
      };
      mcp = { };
      server = {
        port = 42069;
      };
    };
    web.enable = true;
  };

  systemd.user.services.opencode-web = {
    Unit = {
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };

    Install.WantedBy = lib.mkForce [ "graphical-session.target" ];
  };
}
