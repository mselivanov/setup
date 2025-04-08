#!/usr/bin/env bash

# Install generic development dependencies
# ----------------------------------------------------------
# Update system
pacman -Sy --needed --noconfirm archlinux-keyring && pacman -Su --noconfirm

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
	dotnet-sdk \
	libxcrypt-compat

# Install fonts
pacman -Sy --noconfirm ttf-jetbrains-mono-nerd
fc-cache -vf

# Update system
pacman -Syu --noconfirm

# Cleanup
# -------------------------
