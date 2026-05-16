{ config, ... }:
{
  programs.git = {
    enable = true;
    package = null;

    settings = {
      user = {
        name = "Federico Capoccia";
        email = "accounts@federicocapoccia.com";
      };
      init.defaultBranch = "main";
      core.autocrlf = "input";
      push.autoSetupRemote = true;

    };
    signing = {
      key = "${config.home.homeDirectory}/.ssh/github.pub";
      format = "ssh";
      signByDefault = true;
    };
  };
}
