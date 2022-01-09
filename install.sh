#!/bin/bash

# nvim #
mkdir -p "$HOME/.config/nvim" # -p if the directory already exist (no problem)
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim" # -s symlink -f file that already exits

# ~/ #
ln -sf "$HOME/dotfiles/X11/.Xresources" "$HOME/.Xresources"
ln -sf "$HOME/dotfiles/X11/.vimrc" "$HOME/.vimrc"
ln -sf "$HOME/dotfiles/X11/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$HOME/dotfiles/X11/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/X11/.p10k.zsh" "$HOME/.p10k.zsh"

# ~/.config/i3 #
mkdir -p "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3/config" "$HOME/.config/i3/config"

# ~/.config/i3status
mkdir -p "$HOME/.config/i3status"
ln -sf "$HOME/dotfiles/i3status/config" "$HOME/.config/i3status/config"
ln -sf "$HOME/dotfiles/i3status/pyconfig" "$HOME/.config/i3status/pyconfig" 
ln -sf "$HOME/dotfiles/i3status/weather.py" "$HOME/.config/i3status/weather.py" 
ln -sf "$HOME/dotfiles/i3status/weatherbspwm.py" "$HOME/.config/i3status/weatherbspwm.py" 

# ~/.config/picom
mkdir -p "$HOME/.config/picom"
ln -sf "$HOME/dotfiles/picom/picom.conf" "$HOME/.config/picom/picom.conf" 

# ~/.config/neofetch
mkdir -p "$HOME/.config/neofetch"
ln -sf "$HOME/dotfiles/neofetch/config.conf" "$HOME/.config/neofetch/config.conf" 

# ~/.local/bin/bing.sh
mkdir -p "$HOME/.local/bin"
ln -sf "$HOME/dotfiles/.local/bin/bing.sh" "$HOME/.local/bin/bing.sh" 

# ~/.local/share/rofi/themes
mkdir -p "$HOME/.local/share/rofi/themes"
ln -sf "$HOME/dotfiles/.local/share/rofi/themes/nord.rasi" "$HOME/.local/share/rofi/themes/nord.rasi" 

# ~/.config/zathura
mkdir -p "$HOME/.config/zathura"
ln -sf "$HOME/dotfiles/zathura/zathurarc" "$HOME/.config/zathura/zathurarc" 

# ~/.config/kitty
mkdir -p "$HOME/.config/kitty"
ln -sf "$HOME/dotfiles/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf" 

# ~/.screenlayout
mkdir -p "$HOME/.screenlayout"
ln -sf "$HOME/dotfiles/screenlayout/screens.sh" "$HOME/.screenlayout/screens.sh"

# ~/.local/share/mc/skins
mkdir -p "$HOME/.local/share/mc/skins"
ln -sf "$HOME/dotfiles/.local/share/mc/skins/nord.ini" "$HOME/.local/share/mc/skins/nord.ini"

# ~/.zsh_functions
mkdir -p "$HOME/.zsh_functions"
ln -sf "$HOME/dotfiles/.zsh_functions/scripts.sh" "$HOME/.zsh_functions/scripts.sh"

# ~/.config/rofi
mkdir -p "$HOME/.config/rofi"
ln -sf "$HOME/dotfiles/rofi/config.rasi" "$HOME/.config/rofi/config.rasi" 

# ~/.config/Polybar
mkdir -p "$HOME/.config/polybar"
ln -sf "$HOME/dotfiles/polybar/config.ini" "$HOME/.config/polybar/config.ini" 

# ~/.config/bspwm
mkdir -p "$HOME/.config/bspwm"
ln -sf "$HOME/dotfiles/bspwm/bspwmrc" "$HOME/.config/bspwm/bspwmrc" 

# ~/.config/sxhkd
mkdir -p "$HOME/.config/sxhkd"
ln -sf "$HOME/dotfiles/sxhkd/sxhkdrc" "$HOME/.config/sxhkd/sxhkdrc" 
