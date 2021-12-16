#!/bin/bash

# nvim #

mkdir -p "$HOME/.config/nvim" # -p if the directory already exist (no problem)
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim" # -s symlink -f file that already exits

# xresources #

ln -sf "$HOME/dotfiles/X11/.Xresources" "$HOME/.Xresources"

# i3 #
mkdir -p "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3/config" "$HOME/.config/i3/config" # -s symlink -f file that already exits

mkdir -p "$HOME/.config/i3status"
ln -sf "$HOME/dotfiles/i3status/config" "$HOME/.config/i3status/config" # -s symlink -f file that already exits
ln -sf "$HOME/dotfiles/i3status/pyconfig" "$HOME/.config/i3status/pyconfig" # -s symlink -f file that already exits











