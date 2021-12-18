read -e -p "Torrent File :" File
echo $File 
transmission-daemon
alias tsm="transmission-remote"
tsm -a $File
echo"typr tsm -l for info or tsm -t :file_id -r for removing"
