#!/usr/bin/env bash

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
