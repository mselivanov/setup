#!/usr/bin/env bash

# Install generic development dependencies
# ----------------------------------------------------------
# Update system
pacman -Syuu --noconfirm

pacman -Sy --noconfirm \
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
	unzip \
	neovim

pacman -Syuu --noconfirm

# Cleanup
# -------------------------
