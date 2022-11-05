#!/usr/bin/env bash

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
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# Cleanup 
# -------------------------
