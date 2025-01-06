#!/usr/bin/env bash

curl -fsSL https://raw.githubusercontent.com/databricks/setup-cli/main/install.sh | sudo sh
if [[ -f /usr/local/bin/databricks ]]; then
  sudo chmod 755 /usr/local/bin/databricks
fi
