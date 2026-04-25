{ config, pkgs, ... }:
{
  programs.fish = {
    enable = true;

    shellAbbrs = {
      c = "clear";
      op = "opencode attach http://localhost:42069 --dir .";
      glo = "git log --oneline";
      ssh = "kitten ssh";
    };

    loginShellInit = ''
      if test -e /etc/profile.d/nix-daemon.fish
          source /etc/profile.d/nix-daemon.fish
      end

      if test (tty) = /dev/tty1; and not set -q DISPLAY; and not set -q WAYLAND_DISPLAY
          exec uwsm start -- sway
      end
    '';

    interactiveShellInit = ''
      set fish_greeting
      set -gx __fish_git_prompt_showdirtystate true
      stty -echoctl
    '';

    functions.fish_prompt = ''
      set -l last_status $status
      set -l normal (set_color normal)
      set -l status_color (set_color brgreen)
      set -l cwd_color (set_color $fish_color_cwd)
      set -l vcs_color (set_color brpurple)
      set -l prompt_status ""

      # Since we display the prompt on a new line allow the directory names to be longer.
      set -q fish_prompt_pwd_dir_length
      or set -lx fish_prompt_pwd_dir_length 0

      # Color the prompt differently when we're root
      set -l suffix '❯'
      if functions -q fish_is_root_user; and fish_is_root_user
          if set -q fish_color_cwd_root
                  set cwd_color (set_color $fish_color_cwd_root)
          end
          set suffix '#'
      end

      # Color the prompt in red on error
      if test $last_status -ne 0
          set status_color (set_color $fish_color_error)
          set prompt_status $status_color "[" $last_status "]" $normal
      end

      echo -s (prompt_login) ' ' $cwd_color (prompt_pwd) $vcs_color (fish_vcs_prompt) $normal ' ' $prompt_status
      echo -n -s $status_color $suffix ' ' $normal
    '';

    functions.gitff = ''
      git add --all
      git commit -m "I don't really feel like writing a commit"
      git push
    '';

    functions.gitacp = ''
      git add --all
      git commit -m "$(curl -s https://whatthecommit.com/index.txt)"
      git push
    '';
  };

  home.sessionPath = [
    "$CARGO_HOME/bin"
  ];
}
