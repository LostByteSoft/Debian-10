#!/bin/bash
## -----===== Start of bash =====-----
	printf '\033[8;50;125t'	# will resize the window, if needed.
echo -------------------------========================-------------------------
## Software lead in
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo Version compiled on : Also serves as a version
	echo 2022-01-30_Sunday_06:11:10
echo -------------------------========================-------------------------
echo "Autoremove no longer used files"
echo "By LostBytesSoft"
echo "Version 2021-04-09"
echo -------------------------========================-------------------------
sudo apt-get autoremove -y
echo -------------------------========================-------------------------
## Software lead out.
	echo "Finish..."
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---
