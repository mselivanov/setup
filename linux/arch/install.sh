#!/usr/bin/env bash

# Install generic development dependencies 
# ----------------------------------------------------------
# Update the list of packages
sudo pacman -Syuu

sudo pacman -Sy --noconfirm base-devel make wget curl \
 git stow \
 podman fzf \
 bat fd ripgrep

sudo pacman -Sy neovim
sudo pacman -Syuu

# Cleanup 
# -------------------------
