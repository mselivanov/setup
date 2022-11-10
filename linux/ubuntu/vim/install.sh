#!/usr/bin/env bash

# Install neovim additional stuff 
# ----------------------------------------------------------
if [[ -d "${HOME}/.vim/bundle/Vundle.vim" ]]
then
    rm -rf ~/.vim/bundle/Vundle.vim
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
nvim +PluginInstall +qall
