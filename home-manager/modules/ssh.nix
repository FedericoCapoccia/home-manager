{ ... }:
{
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings."codeberg.org" = {
      IdentityFile = "~/.ssh/git_ed25519";
      IdentitiesOnly = true;
    };
  };

  home.sessionVariables = {
    SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/gcr/ssh";
  };
}
