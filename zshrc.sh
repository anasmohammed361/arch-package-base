#!/bin/bash
cat rc.txt >> ~/.zshrc
mv ./torrent.sh ~/.torrent.sh
echo 'eval "$(starship init zsh)" >> ~/.zshrc :: Run this if you are using starship with zsh' 
echo "Add ksuperkey to startup"
echo "custom clock format : %a  %d %b | %l:%M %p"