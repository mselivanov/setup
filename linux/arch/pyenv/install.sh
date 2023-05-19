#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "${SCRIPT_DIR}/../../common.sh"

# Install pyenv 
# ----------------------------------------------------------
git clone https://github.com/pyenv/pyenv.git ${HOME}/.pyenv
