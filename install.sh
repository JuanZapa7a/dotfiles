#!/bin/bash

# nvim #

mkdir -p "$HOME/.config/nvim" # -p if the directory already exist (no problem)
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim" # -s symlink -f file that already exits

# xresources #

ln -sf "$HOME/dotfiles/X11/.Xresources" "$HOME/.Xresources"
ln -sf "$HOME/dotfiles/X11/.vimrc" "$HOME/.vimrc"

# i3 #
mkdir -p "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3/config" "$HOME/.config/i3/config"

#i3status
mkdir -p "$HOME/.config/i3status"
ln -sf "$HOME/dotfiles/i3status/config" "$HOME/.config/i3status/config"
ln -sf "$HOME/dotfiles/i3status/pyconfig" "$HOME/.config/i3status/pyconfig" 

#picom
mkdir -p "$HOME/.config/picom"
ln -sf "$HOME/dotfiles/picom/picom.conf" "$HOME/.config/picom/picom.conf" 

#neofetch
mkdir -p "$HOME/.config/neofetch"
ln -sf "$HOME/dotfiles/neofetch/config.conf" "$HOME/.config/neofetch/config.conf" 









