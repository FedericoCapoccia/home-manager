# Home Manager Setup

Personal Home Manager configuration for CachyOS/Arch.

## Bootstrap

Install the system packages below before switching this Home Manager config on a fresh install.

```sh
sudo pacman -S --needed \
  git nix fish openssh \
  sway uwsm xorg-xwayland \
  xdg-desktop-portal-gtk xdg-desktop-portal-wlr \
  gnome-keyring polkit-gnome qt6ct \
  kitty helium-browser-bin \
  noctalia-shell \
  flatpak
```

Install Flatpak apps used by the Sway autostart:

```sh
flatpak install flathub com.github.wwmm.easyeffects
```

Then enable Nix flakes for the current command and switch:

```sh
home-manager switch --flake ~/hm
```

If `home-manager` is not installed yet, install it with Nix first.

## Required System Packages

These stay system-managed because HM modules use `package = null`, the compositor/session depends on them directly, or the Sway config calls hardcoded system paths.

- `git`: HM config manages settings only.
- `fish`: login shell and shell config target.
- `openssh`: HM config manages settings only.
- `kitty`: HM config manages settings only.
- `sway`: compositor launched by fish through `uwsm`.
- `uwsm`: starts the Sway session from TTY1.
- `xorg-xwayland`: compatibility for XWayland apps.
- `xdg-desktop-portal-gtk`, `xdg-desktop-portal-wlr`: screen sharing, screenshots, file portals.
- `gnome-keyring`: portal secret backend.
- `polkit-gnome`: Sway autostart uses `/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1`.
- `qt6ct`: Qt platform theme used by HM Qt settings.
- `helium-browser-bin`: default browser in `conf/sway/config`.
- `noctalia-shell`: Sway autostart and keybindings call `qs -c noctalia-shell`; this pulls `noctalia-qs` and `brightnessctl` on CachyOS.
- `grim`, `slurp`: pulled by `xdg-desktop-portal-wlr` on CachyOS and used by the screenshot keybinding.
- `flatpak`: starts Easy Effects from Flatpak.

## Managed By Home Manager

Do not install these globally with pacman/npm/pnpm unless there is a specific reason. HM already provides them.

- Editors and shell tools: `neovim`, `zoxide`.
- Language tooling: `lua-language-server`, `stylua`, `tree-sitter`, `go`, `gradle`, `rustup`, `zig`, `zls`.
- JS tooling: `bun`, `pnpm`, `typescript`, `typescript-language-server`, `tailwindcss-language-server`, `oxfmt`, `oxlint`.
- Sway helpers: `swayidle`, `pavucontrol`, `swaysome`, `autotiling-rs`, `cliphist`, `wl-clipboard`, `playerctl`.
- Fonts/theme assets: Inter, DejaVu Nerd Font Mono, Noto Color Emoji, Papirus icons, Bibata cursor, adw-gtk3.
- Desktop user config: GTK, Qt, fonts, Kitty settings, Git settings, SSH settings, Sway config link, xdg-desktop-portal preferences.

## Notes

- Keep Node/TypeScript language servers in HM, not `pnpm global`.
- `pnpm` itself is still useful for project package management.
- `~/.opencode/bin/opencode` is wrapped by HM, but the actual binary is expected to exist there.
- Remove duplicate pacman packages only after verifying `command -v <tool>` resolves to HM/Nix.
