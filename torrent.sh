#!bin/bash
read -e -p "Torrent File :" File
echo $File 
transmission-daemon
transmission-remote -a $File
echo 'typr transmission-remote -l for info ||| transmission -t :file_id -r for removing'
