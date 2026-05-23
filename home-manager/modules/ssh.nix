{ ... }:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
  };

  home.sessionVariables = {
    SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/gcr/ssh";
  };
}
