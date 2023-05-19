#!/usr/bin/env bash

# Install generic development dependencies
# ----------------------------------------------------------
# Update system
sudo pacman -Syuu --noconfirm

sudo pacman -Sy --noconfirm
base-devel \
	make \
	wget \
	curl \
	git \
	stow \
	podman \
	fzf \
	bat \
	fd \
	ripgrep \
	neovim

sudo pacman -Syuu --noconfirm

# Cleanup
# -------------------------
