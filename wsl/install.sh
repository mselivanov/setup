#!/usr/bin/env bash

# Install generic development dependencies 
# ----------------------------------------------------------
# Update the list of packages
sudo apt update

sudo apt install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \ 
libffi-dev liblzma-dev gnupg2

# Install git 
# -------------------------
sudo apt -y install git

# Install Power Shell
# -------------------------
# Install pre-requisite packages.
sudo apt install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt update
# Install PowerShell
sudo apt install -y powershell

# TODO
# Install python tools
# -------------------------
# pyenv
# pipx
# pipenv


# Install podman for wsl on Ubuntu 20.04
# -------------------------
source /etc/os-release
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
sudo wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | sudo apt-key add -
sudo apt update -qq -y
sudo apt -qq -y install podman
sudo cp /usr/share/containers/containers.conf /etc/containers/
echo "Update configuration in /etc/containers/containers.conf after installation"

# Upgrade packages versions
# -------------------------
sudo apt upgrade -y

# Cleanup 
# -------------------------
rm "./packages-microsoft-prod.deb"
