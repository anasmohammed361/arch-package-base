#!/bin/bash

git clone https://aur.archlinux.org/brave-bin.git &
wait $!
cd brav*
wait
makepkg &
wait $!
sudo pacman -U brav*.zst ||pacman -U brav*.gz &
wait $!
cd ~
git clone https://aur.archlinux.org/visual-studio-code-bin.git &
wait $!
cd *code**
wait
makepkg &
wait $!
sudo pacman -U *code**.zst ||pacman -U *code**.gz &
wait $!
cd ~
sudo pacman -Sy nodejs npm htop tmux vim starship &
wait $!
echo'eval "$(starship init bash)"' >> ~/.bashrc
