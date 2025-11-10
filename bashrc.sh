#!/bin/bash

set -e

# Define Routes
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
REPO_PATH="$SCRIPT_DIR"

if [ "$EUID" -ne 0 ]; then
  echo "This script need super user privileges"
  echo "Please run with: sudo $0"
  exit 1
fi

REAL_USER="$SUDO_USER"
if [ -z "$REAL_USER" ]; then
  echo "Can't determine real user, exiting..."
  exit 1
fi
HOME_DIR=$(getent passwd "$REAL_USER" | cut -d: -f6)
CONFIG_DIR="$HOME_DIR/.config/bash"

# Create config directory
install -d -m 755 -o "$REAL_USER" -g "$REAL_USER" "$CONFIG_DIR"

echo "Directory created in $CONFIG_DIR"

# Copy configs
install -m 644 -o "$REAL_USER" -g "$REAL_USER" "$REPO_PATH"/alias "$CONFIG_DIR"/
install -m 644 -o "$REAL_USER" -g "$REAL_USER" "$REPO_PATH"/exports "$CONFIG_DIR"/
install -m 644 -o "$REAL_USER" -g "$REAL_USER" "$REPO_PATH"/functions "$CONFIG_DIR"/
install -m 644 -o "$REAL_USER" -g "$REAL_USER" "$REPO_PATH"/promts "$CONFIG_DIR"/

if [ -f "$HOME_DIR/.bashrc" ]; then
    mv "$HOME_DIR/.bashrc" "$HOME_DIR/.bashrc.bak"
    echo "Backed up existing .bashrc to .bashrc.bak"
fi

install -m 644 -o "$REAL_USER" -g "$REAL_USER" "$REPO_PATH"/bashrc "$HOME_DIR/.bashrc"

echo "Config complete correct"
