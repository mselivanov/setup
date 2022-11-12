#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install nodejs 
# ----------------------------------------------------------
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt install -y nodejs

# Cleanup 
# -------------------------
