#!/usr/bin/env bash

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# Install nodejs 
# ----------------------------------------------------------
npm install --global yarn

# Cleanup 
# -------------------------
