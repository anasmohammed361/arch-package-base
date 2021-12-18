#!/bin/bash

git clone https://aur.archlinux.org/brave-bin.git
cd brav*
makepkg
sudo pacman -U brav*.zst ||pacman -U brav*.gz
cd ~
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd *code**
makepkg
sudo pacman -U *code**.zst ||pacman -U *code**.gz
cd ~
sudo pacman -Sy nodejs npm htop tmux vim starship
echo'eval "$(starship init bash)"'
