# Set up the prompt

autoload -Uz promptinit; promptinit
prompt bart green blue yellow cyan

# Aliases
alias ls='ls --color=auto'

## Only use tmux aliases if we have tmux
if [ command -v tmux]; then
	alias ta='tmux -f ${XDG_CONFIG_DIR}/tmux/tmux.conf a'
	alias tmux='tmux -f ${XDG_CONFIG_DIR}/tmux/tmux.conf'
fi

# Options
setopt histignorealldups # History is all unique
setopt histignorespace   # Start a command with a space doesn't add it to history
setopt auto_cd		 # chdir just by typing a path


# Vi
bindkey -v

# Use modern completion system
#autoload -Uz compinit; compinit -D

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true

#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

eval "$(dircolors -b)"

# Scripts
source ${XDG_CONFIG_DIR}/zsh/cmp.zsh # Colored man pages

# Run fortune if installed
command -v fortune && fortune -a
