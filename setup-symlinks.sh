#!/bin/bash

mkdir -p ~/.config/skhd
mkdir -p ~/.config/yabai

ln -sf "$PWD/.gitconfig" ~/
ln -sf "$PWD/.vimrc" ~/
ln -sf "$PWD/tmux/.tmux-cht-command" ~/
ln -sf "$PWD/tmux/.tmux-cht-languages" ~/
ln -sf "$PWD/tmux/.tmux.conf" ~/
ln -sf "$PWD/wezterm/.wezterm.lua" ~/

ln -sf "$PWD/skhd/skhdrc" ~/.config/skhd/
ln -sf "$PWD/yabai/yabairc" ~/.config/yabai/
