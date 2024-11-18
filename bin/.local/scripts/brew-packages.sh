#!/bin/bash

packages=(
    "awscli"
    "bat"
    "boost"
    "cmake"
    "ffmpeg"
    "fish"
    "gcc"
    "gh"
    "ghostscript"
    "glab"
    "go"
    "helm"
    "httpie"
    "jq"
    "kind"
    "kubernetes-cli"
    "lua"
    "n"
    "poetry"
    "ripgrep"
    "neovim"
    "scc"
    "tmux"
    "up"
    "uv"
    "wget"
    "openconnect"
)

casks=(
    "arc"
    "chatgpt"
    "cleanshot"
    "discord"
    "figma"
    "firefox"
    "google-drive"
    "lunar"
    "notchnook"
    "notion"
    "notion-calendar"
    "obs"
    "orbstack"
    "pictogram"
    "postman"
    "raycast"
    "slack"
    "spotify"
    "telegram"
    "utm"
    "wezterm"
    "vlc"
    "logitech-g-hub"
)

for package in "${packages[@]}"; do
  /opt/homebrew/bin/brew install "$package"
done

for package in "${casks[@]}"; do
  /opt/homebrew/bin/brew install --cask "$package"
done
