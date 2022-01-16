#!/bin/bash
set -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi
yay -S nodejs npm htop neofetch  tmux starship visual-studio-code-bin brave-bin vim grub-customizer transmission-cli ksuperkey unzip libreoffice-fresh mongosh-bin
