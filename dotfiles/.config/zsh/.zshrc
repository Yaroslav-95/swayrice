# Colors and prompt
autoload -U colors && colors

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

if [ "$USER" = "root" ]; then
	# Make it so that we display root's user@host on the left and colored red so
	# that it is quite clear that we are under root.
	PROMPT=$'\n''%{[38;5;14m%}%B%~ ${reset_color}%F{yellow}${vcs_info_msg_0_}%f'$'\n''%F{red}%n%f@%F{red}%m%f %F{green}→%f '
else
	PROMPT=$'\n''%{[38;5;14m%}%B%~ ${reset_color}%F{yellow}${vcs_info_msg_0_}%f'$'\n''%F{green}→%f '
	RPROMPT='%{[38;5;14m%} %n%f@%F{red}%m%f'
fi
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

# History search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey -a "k" history-beginning-search-backward
bindkey -a "j" history-beginning-search-forward

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'underline' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

echo -ne '\e[5 q' # Use beam shape cursor on startup.
printf "\033]2;%s\a" "$HOST:$PWD" # Set terminal window title to current dir
# Repeat for every new prompt
precmd () {
  echo -ne '\e[5 q'
  printf "\033]2;%s\a" "$HOST:$PWD"
}

zle -N zle-keymap-select

[ -f "$HOME/.config/zsh/shortcuts" ] && . "$HOME/.config/zsh/shortcuts"

if [ -f "$HOME/.cache/colorscheme" ]; then
	trap "source $HOME/.cache/colorscheme && shtheme ultramar-\$COLORSCHEME" SIGUSR1
	source $HOME/.cache/colorscheme
	shtheme ultramar-$COLORSCHEME
fi

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
  	# Arch/Artix
  . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
	# Debian
  . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
