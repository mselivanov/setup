#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "${SCRIPT_DIR}/../../common.sh"
VIM_AUTOLOAD_DIR="${HOME}/.vim/autoload"

# Install neovim additional stuff 
# ----------------------------------------------------------
curl -fLo "${VIM_AUTOLOAD_DIR}/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
