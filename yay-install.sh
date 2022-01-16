#!/bin/bash
set -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi

git clone https://aur.archlinux.org/yay.git &
wait $!
cd yay/
makepkg -si &
