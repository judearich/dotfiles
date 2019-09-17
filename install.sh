#!/bin/sh

# XDG variables
if [ -z "$XDG_CACHE_DIR" ]; then
	XDG_CACHE_DIR="${HOME}/.cache"
fi

if [ -z "${XDG_CONFIG_DIR}" ]; then
	XDG_CONFIG_DIR="${HOME}/.config"
fi

if [ -z "${XDG_DATA_DIR}" ]; then
	XDG_DATA_DIR="${HOME}/.local/share"
fi


# Install dotfiles
mkdir -p ${XDG_CACHE_DIR}/vim		# Make cache directories
mkdir -p ${XDG_DATA_DIR}		# Make data directory
mkdir -p ${XDG_CONFIG_DIR}		# Make config directory
mkdir -p ${HOME}/.ssh/{config.d,keys}	# Make ssh dirs

cp -ar home/.config/* ${XDG_CONFIG_DIR}/  # Copy config files
cp home/.zshenv ${HOME}/
cp home/.ssh/config ${HOME}/.ssh/

# Install Dein (n)vim plugin manager
deindir=${XDG_DATA_DIR}/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | \
	sh -s -- ${deindir} # Actually install dein
