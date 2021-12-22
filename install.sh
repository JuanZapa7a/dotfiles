#!/bin/bash

# nvim #

mkdir -p "$HOME/.config/nvim" # -p if the directory already exist (no problem)
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim" # -s symlink -f file that already exits

# ~/ #

ln -sf "$HOME/dotfiles/X11/.Xresources" "$HOME/.Xresources"
ln -sf "$HOME/dotfiles/X11/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/dotfiles/X11/.tmux.conf" "$HOME/.tmux.conf"

# ~/.config/i3 #
mkdir -p "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3/config" "$HOME/.config/i3/config"

# ~/.config/i3status
mkdir -p "$HOME/.config/i3status"
ln -sf "$HOME/dotfiles/i3status/config" "$HOME/.config/i3status/config"
ln -sf "$HOME/dotfiles/i3status/pyconfig" "$HOME/.config/i3status/pyconfig" 

# ~/.config/picom
mkdir -p "$HOME/.config/picom"
ln -sf "$HOME/dotfiles/picom/picom.conf" "$HOME/.config/picom/picom.conf" 

# ~/.config/neofetch
mkdir -p "$HOME/.config/neofetch"
ln -sf "$HOME/dotfiles/neofetch/config.conf" "$HOME/.config/neofetch/config.conf" 

# ~/.local/bin/bing.sh
mkdir -p "$HOME/.local/bin"
ln -sf "$HOME/dotfiles/.local/bin/bing.sh" "$HOME/.local/bin/bing.sh" 

# ~/.config/zathura
mkdir -p "$HOME/.config/zathura"
ln -sf "$HOME/dotfiles/zathura/zathurarc" "$HOME/.config/zathura/zathurarc" 

# ~/.config/kitty
mkdir -p "$HOME/.config/kitty"
ln -sf "$HOME/dotfiles/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf" 

# ~/.screenlayout
mkdir -p "$HOME/.screenlayout"
ln -sf "$HOME/dotfiles/screenlayout/screens.sh" "$HOME/.screenlayout/screens.sh" 
