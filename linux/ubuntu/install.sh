#!/usr/bin/env bash

# Install generic development dependencies 
# ----------------------------------------------------------
# Update the list of packages
sudo apt update && sudo apt upgrade -y

sudo apt install -y make build-essential wget curl git stow neovim podman

# Upgrade packages versions
# -------------------------
sudo apt upgrade -y

# Cleanup 
# -------------------------
