{ config, ... }:
{
  programs.git = {
    enable = true;
    package = null;

    settings = {
      user = {
        name = "Federico Capoccia";
        email = "rich.book7416@fastmail.com";
      };
      init.defaultBranch = "main";
      core.autocrlf = "input";
      push.autoSetupRemote = true;
      http.version = "HTTP/1.1";
    };
    signing = {
      key = "${config.home.homeDirectory}/.ssh/git_ed25519.pub";
      format = "ssh";
      signByDefault = true;
    };
  };
}
