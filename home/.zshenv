
# set XDG variables
if [ -z "$XDG_CACHE_DIR" ]; then
	XDG_CACHE_DIR="${HOME}/.cache"
fi

if [ -z "${XDG_CONFIG_DIR}" ]; then
	XDG_CONFIG_DIR="${HOME}/.config"
fi

if [ -z "${XDG_DATA_DIR}" ]; then
	XDG_DATA_DIR="${HOME}/.local/share"
fi

ZDOTDIR="${XDG_CONFIG_DIR}/zsh"

export GNUPGHOME="${XDG_DATA_DIR}/gnupg" # gpg use XDG dirs
export LESSHISTFILE=- # Less no history

export MYVIMRC="${XDG_CONFIG_DIR}/nvim/init.vim"
export VIMINIT="source $MYVIMRC"

# the dynamic duo
export EDITOR=vi
export PAGER=less

# history stuff
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh_history
