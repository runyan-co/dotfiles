#!/usr/bin/env bash

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
   rm ~/.zshrc
   ln -s ~/.config/dotfiles/.zshrc ~/.zshrc
fi
