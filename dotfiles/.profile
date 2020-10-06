export PATH=$PATH:$HOME/.local/bin
export SCROT_DIR=$HOME/pics/screenshots/
export VREC_DIR=$HOME/vids/recordings/
export AREC_DIR=$HOME/docs/audio/recordings/
#export GDK_BACKEND=wayland
export EGL_PLATFORM=wayland
export CLUTTER_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME="qt5ct"
export _JAVA_AWT_WM_NONREPARENTING=1
export MANWIDTH=80

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERMINAL=alacritty
export EDITOR="nvim"
export PAGER="less -R"
export BROWSER=qutebrowser

# Sanely export XDG Base dir variables
eval "$(sed 's/^[^#].*/export &/g;t;d' ~/.config/user-dirs.dirs)"

# Le cleaner home
export LESSHISTFILE="-"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export INPUTRC="$XDG_CONFIG_HOME/zsh/inputrc"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export GOPATH="$XDG_DATA_HOME/go"
eval "$(dircolors "$HOME/.config/dir_colors")"

# Start sway automatically upon login on tty1 or tty2
if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ] || [ $(tty) = /dev/tty2 ]; then
  # DBUS variables (for Artix)
  export $(dbus-launch)
  sway > ~/.cache/sway.log 2>&1 && clear && exit
fi

