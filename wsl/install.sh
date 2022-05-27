#!/usr/bin/env bash

# Install generic development dependencies 
# ----------------------------------------------------------
# Update the list of packages
sudo apt update

sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install git 
# -------------------------
sudo apt install get

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

# Upgrade packages versions
# -------------------------
sudo apt upgrade -y

# Cleanup 
# -------------------------
rm "./packages-microsoft-prod.deb"
