# Set up the prompt

autoload -Uz promptinit; promptinit
prompt clint red cyan green orange yellow

# Set Variables
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export LESSHISTFILE=- # Less no history

# Aliases
alias ls='ls --color=auto'
alias ta='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf a'
alias tmux='tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'

# Options
setopt histignorealldups # History is all unique
setopt histignorespace   # Start a command with a space doesn't add it to history


# Vi
export EDITOR=vi
bindkey -v

# Misc
export PAGER=less

# History stuff
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh_history

# Use modern completion system
#autoload -Uz compinit; compinit -D

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
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

# Scripts
source $XDG_CONFIG_HOME/zsh/cmp.zsh # Colored man pages

# Run before interactive
fortune -a
