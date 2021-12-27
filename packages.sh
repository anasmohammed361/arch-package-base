#!/bin/bash
set -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi
git clone https://aur.archlinux.org/brave-bin.git &
wait $!
cd brav*
wait
makepkg -si &
wait $!
cd ~
git clone https://aur.archlinux.org/visual-studio-code-bin.git &
wait $!
cd *code**
wait
makepkg -si &
wait $!
cd ~
#sudo pacman -S nodejs npm htop tmux vim starship &
wait $!
sleep 1
yes
sleep 1
echo'eval "$(starship init bash)"' >> ~/.bashrc &
