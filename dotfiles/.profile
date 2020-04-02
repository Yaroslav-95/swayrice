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

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=xterm-256color
export TERMINAL=termite
export EDITOR="nvim"
export BROWSER=qutebrowser

# Le cleaner home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$HOME/.config/zsh"
export INPUTRC="$HOME/.config/zsh/inputrc"
export LESSHISTFILE="-"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGNOME="$XDG_DATA_HOME/gnupg"
eval "$(dircolors "$HOME/.config/dir_colors")"

# Start sway automatically upon login on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  sway > ~/.cache/sway.log 2>&1 && clear && exit
fi

