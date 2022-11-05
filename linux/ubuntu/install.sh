#!/usr/bin/env bash

# Install generic development dependencies 
# ----------------------------------------------------------
# Update the list of packages
sudo apt update && sudo apt upgrade -y

sudo apt install -y make build-essential wget curl git stow neovim podman

# sudo apt install libssl-dev zlib1g-dev \
# libbz2-dev libreadline-dev libsqlite3-dev \
# libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \ 
# libffi-dev liblzma-dev gnupg2 llvm


# TODO
# Install python tools
# -------------------------
# pyenv
# pipx
# pipenv

# Install podman
# -------------------------
# source /etc/os-release
# sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
# sudo wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | sudo apt-key add -
# sudo apt update -qq -y
# sudo apt -qq -y install podman
# sudo cp /usr/share/containers/containers.conf /etc/containers/
# echo "Update configuration in /etc/containers/containers.conf after installation"

# Install starship 
# -------------------------
sudo curl -sS https://starship.rs/install.sh | sh -s -- --yes
eval "$(starship init bash)"

# Install bash_it 
# -------------------------
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# Upgrade packages versions
# -------------------------
sudo apt upgrade -y

# Cleanup 
# -------------------------
