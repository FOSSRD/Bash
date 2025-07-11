#!/bin/bash

# Define Routes
REPO_PATH="$PWD"

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

# Create config directory
sudo mkdir -p "$HOME_DIR"/.config/bash || echo "failed to create directory"

echo "Directory created in $HOME_DIR/.config"

# Copy configs
sudo cp "$REPO_PATH"/alias "$HOME_DIR"/.config/bash/

sudo cp "$REPO_PATH"/exports "$HOME_DIR"/.config/bash/

sudo cp "$REPO_PATH"/functions "$HOME_DIR"/.config/bash/

sudo cp "$REPO_PATH"/promts "$HOME_DIR"/.config/bash/

sudo mv "$HOME_DIR"/.bashrc "$HOME_DIR"/.bashrc.bak || echo "failed to backup bashrc"

sudo cp "$REPO_PATH"/bashrc "$HOME_DIR"/.bashrc || "failed to copy bashrc"

echo "Config complete correct"
