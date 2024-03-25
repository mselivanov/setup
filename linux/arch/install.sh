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
	neovim \
	fontconfig \
	tmux \
	nodejs \
	npm \
	ntp \
	zoxide \
	yarn \
	dotnet-runtime \
	dotnet-sdk

# Install fonts
pacman -Sy ttf-jetbrains-mono-nerd
fc-cache -vf

# Update system
pacman -Syuu --noconfirm

# Cleanup
# -------------------------
