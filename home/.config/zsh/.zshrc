# Set up the prompt

autoload -Uz promptinit; promptinit
prompt bart green blue yellow cyan

# Aliases
alias ls='ls --color=auto'

## Only use tmux aliases if we have tmux
command -v tmux > /dev/null && alias ta='tmux -f ${XDG_CONFIG_DIR}/tmux/tmux.conf a'
command -v tmux > /dev/null && alias tmux='tmux -f ${XDG_CONFIG_DIR}/tmux/tmux.conf'

# Options
setopt histignorealldups # History is all unique
setopt histignorespace   # Start a command with a space doesn't add it to history
setopt auto_cd		 # chdir just by typing a path


# Vi
bindkey -v

eval "$(dircolors -b)"

# Scripts
source ${XDG_CONFIG_DIR}/zsh/cmp.zsh # Colored man pages

# Run fortune if installed
command -v fortune > /dev/null && fortune -a
