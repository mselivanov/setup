#!/usr/bin/env bash

set -o errexit # exit when command fails

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${SCRIPT_DIR}/../common.sh"

# TODO
# Install python tools
# -------------------------
# pipx
# pipenv

# Install starship
# -------------------------
sudo curl -sS https://starship.rs/install.sh | sh -s -- --yes
eval "$(starship init bash)"

# Install bash_it
# -------------------------
rmdir "${HOME}/.bash_it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
# -s - silent installation
# -n - do not modify config
# -f - overwrite existing backup
"${HOME}/.bash_it/install.sh" -s -n -f

# Install pyenv
# -------------------------
"${SCRIPT_DIR}/pyenv/install.sh"

# Cleanup
# -------------------------
