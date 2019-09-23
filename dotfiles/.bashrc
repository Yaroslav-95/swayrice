stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

source ~/.scripts/git-prompt
export PS1="\[\033[38;5;14;48;5;0m\] \$(__git_ps1)\[$(tput sgr0)\]\[\033[48;5;14;38;5;0m\]\[\033[30m\] \u \[\033[38;5;14;48;5;4m\]\[\033[38;5;0m\] \h \[$(tput sgr0)\]\[\033[38;5;4;48;5;0m\]\[\033[38;5;38m\] \w\[$(tput sgr0)\]\[\033[00;38;5;0m\]\n\[$(tput sgr0)\]\[\033[48;5;0;38;5;2m\]\$\[$(tput sgr0)\]\[\033[00;38;5;0m\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput sgr0)\]"

# Environment variables
export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="qutebrowser"
export MOZ_USE_XINPUT2=1

# User specific environment and startup programs:
export LANG=en_US.UTF-8
export TERM=st

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="vis"
alias news="newsboat"
alias email="neomutt"
alias files="vifm_launch"
alias audio="ncpamixer"
alias calendar="calcurse"
alias calc="R --no-save"
alias eslint="./node_modules/eslint/bin/eslint.js"

#Mounting drive shortcuts
alias mnt="udisksctl mount -b"
alias umnt="udisksctl unmount -b"
alias dlock="udisksctl lock -b"
alias dulock="udisksctl unlock -b"

# System Maintainence
alias nf="clear && neofetch" # Le Redditfetch

# Some aliases
alias tmux="tmux -2"
alias mpv="mpv --gpu-context=wayland"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="nvim"
alias r="ranger"
alias vf="vifm"
alias sr="sudo ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
alias rf="source ~/.bashrc"

# Terminal "Web apps"
alias rickroll="curl -s -L http://bit.ly/10hA8iC | bash"
weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

# Adding color
eval `dircolors ~/.dir_colors`
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias starwars="telnet towel.blinkenlights.nl"

# Audio and Music
alias mute="lmc mute"
alias vu="lmc up"
alias vd="lmc down"
alias play="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias pause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"

