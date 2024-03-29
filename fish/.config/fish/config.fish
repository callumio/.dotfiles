set fish_greeting ""

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.cabal/bin

source /opt/asdf-vm/asdf.fish

# X runs at login

if status is-login
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx $XDG_CONFIG_HOME/X11/xinitrc i3
  end
end
