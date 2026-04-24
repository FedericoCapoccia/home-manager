{ config, ... }:
{
    programs.git = {
        enable = true;
        package = null;

        settings = {
            user = {
                name = "Federico Capoccia";
                email = "166076838+FedericoCapoccia@users.noreply.github.com";
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
