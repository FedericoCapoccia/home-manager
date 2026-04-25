{ config, ... }:

{
  xdg.enable = true;

  xdg.userDirs = {
    enable = true;
    setSessionVariables = true;
    createDirectories = true;
    desktop = "${config.home.homeDirectory}/desktop";
    download = "${config.home.homeDirectory}/downloads";
    templates = "${config.home.homeDirectory}/templates";
    publicShare = "${config.home.homeDirectory}/public";
    documents = "${config.home.homeDirectory}/documents";
    music = "${config.home.homeDirectory}/media/music";
    pictures = "${config.home.homeDirectory}/media/pictures";
    videos = "${config.home.homeDirectory}/media/videos";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    _JAVA_AWT_WM_NONREPARENTING = "1";

    CARGO_HOME = "${config.xdg.dataHome}/cargo";
    RUSTUP_HOME = "${config.xdg.dataHome}/rustup";
    GNUPGHOME = "${config.xdg.dataHome}/gnupg";
    GOPATH = "${config.xdg.dataHome}/go";
    GRADLE_USER_HOME = "${config.xdg.dataHome}/gradle";
    LESSHISTFILE = "${config.xdg.stateHome}/less/history";
    TS3_CONFIG_DIR = "${config.xdg.configHome}/ts3client";
    # _JAVA_OPTIONS = "-Djava.util.prefs.userRoot=${config.xdg.configHome}/java";
  };
}
