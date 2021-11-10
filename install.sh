#!/usr/bin/env bash

# Install oh my zsh
if [ ! ~/.zshrc ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
fi

# Install homebrew
if ! brew; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Symlink logs
if [ ! -L ~/logs ]; then
	if [ -d /usr/local/var/log ]; then
		ln -s /usr/local/var/log ~/logs
	fi
fi

# Check if the symlink to the vim 
# config exists, if not, link is
if [ ! -L ~/.vimrc ]; then
    ln -s ~/.config/dotfiles/.vimrc ~/.vimrc	
fi

# Check if the .zshrc file is symlinked
# and link it if it's not
if [ ! -L ~/.zshrc ]; then
   ln -s ~/.config/dotfiles/.zshrc ~/.zshrc
fi
