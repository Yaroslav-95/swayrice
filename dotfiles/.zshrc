# Colors and prompt
autoload -U colors && colors
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

PROMPT=$'\n''%{[38;5;14m%}%B%~ ${reset_color}%F{yellow}${vcs_info_msg_0_}%f'$'\n''%F{green}→%f '
RPROMPT='%{[38;5;14m%} %n%f@%F{red}%m%f'
zstyle ':vcs_info:git:*' formats ' %b'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

zstyle :compinstall filename '/home/yaroslav/.zshrc'

# History
HISTFILE=~/.cache/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep notify

# vi mode
bindkey -v

# Use vim keys in tab complete menu:
bindkey -M menuselect 'H' vi-backward-char
bindkey -M menuselect 'K' vi-up-line-or-history
bindkey -M menuselect 'L' vi-forward-char
bindkey -M menuselect 'J' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'underscore' ]]; then
    echo -ne '\e[3 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

zle -N zle-keymap-select

# Environment variables
typeset -U PATH path
path=("$HOME/.scripts" "$path[@]")
export PATH
export EDITOR="nvim"
export TERMINAL="termite"
export BROWSER="qutebrowser"

# Generic shortcuts
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias news="newsboat"
alias email="neomutt"
alias files="vifm_launch"
alias audio="ncpamixer"
alias calendar="calcurse"
alias calc="R --no-save"

# Mounting drive shortcuts
alias mnt="udisksctl mount -b"
alias umnt="udisksctl unmount -b"
alias dlock="udisksctl lock -b"
alias dulock="udisksctl unlock -b"

# Some aliases
alias v="nvim"
alias vf="vifm_launch"
alias nf="clear && neofetch" # Le Redditfetch
alias eslint="./node_modules/.bin/eslint"
alias ls='ls -hN --color=auto --group-directories-first'
weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

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
