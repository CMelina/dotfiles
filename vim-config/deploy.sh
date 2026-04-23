#!/bin/bash

# Copies local vimrc configuration to the home directory
cp dotfiles.vimrc ~/.vimrc

# Check if Vundle is installed (if not, clone it from github repo)
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# run to install all plugins defined in .vimrc
vim +PluginInstall +qall
