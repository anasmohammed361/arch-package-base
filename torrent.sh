#!/bin/bash
echo 'Please make sure you have a permanent alias (tsm)'
read -e -p "Torrent File :" File
echo $File 
wait
transmission-daemon &
pid=$!
wait $pid
sleep 3 
transmission-remote -a $File &
wait
echo 'type tsm -l for info ||| tsm -t :file_id -r for removing'
