#!/usr/bin/env bash

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# TODO
# Install python tools
# -------------------------
# pyenv
# pipx
# pipenv

# Install starship 
# -------------------------
sudo curl -sS https://starship.rs/install.sh | sh -s -- --yes
eval "$(starship init bash)"

# Install bash_it 
# -------------------------
if [[ -d "${HOME}/.bash_it" ]]
then
    rm -rf ~/.bash_it
fi
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
# -s - silent installation
# -n - do not modify config
# -f - overwrite existing backup
~/.bash_it/install.sh -s -n -f


# Install additional components for vim/neovim 
# -------------------------
"${SCRIPT_DIR}/vim/install.sh"

# Cleanup 
# -------------------------
