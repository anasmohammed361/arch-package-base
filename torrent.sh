#!/bin/bash
read -e -p "Torrent File :" File
echo $File 
transmission-daemon
transmission-remote -a $File
echo 'type tsm -l for info ||| tsm -t :file_id -r for removing'
