{ pkgs, ... }:
{
  programs.opencode = {
    enable = true;
    package = pkgs.opencode;

    settings = {
      # model = "ollama/metalspork/qwen3.8-ud:Q2_K_XL";
      provider = {
        # github-copilot = {
        #   whitelist = [
        #     "gpt-5-mini"
        #     "gpt-5.4-mini"
        #   ];
        # };
        # openai = {
        #   whitelist = [
        #     "gpt-5.4"
        #     "gpt-5.4-mini"
        #     "gpt-5.5"
        #   ];
        # };
        # ollama = {
        #   npm = "@ai-sdk/openai-compatible";
        #   name = "Ollama";
        #   options = {
        #     baseURL = "http://localhost:11434/v1";
        #   };
        #   models = {
        #     "metalspork/qwen3.8-ud:Q2_K_XL" = {
        #       name = "Qwen 3.8 UD Q2_K_XL";
        #     };
        #   };
        # };
      };
      # mcp = { };
      # server = {
      #   port = 42069;
      # };
    };
    # web.enable = true;
    context = ''
      Follow existing project conventions.
      Prefer simple and maintainable implementations.
      Always check latest docs when questioned about libraries functionality
      Avoid unnecessary dependencies.
    '';
  };

  # systemd.user.services.opencode-web = {
  #   Unit = {
  #     After = [ "graphical-session.target" ];
  #     PartOf = [ "graphical-session.target" ];
  #   };
  #
  #   Install.WantedBy = lib.mkForce [ "graphical-session.target" ];
  # };
}
