#!/bin/bash
#!/usr/bin/ffmpeg
## -----===== Start of bash =====-----
	#printf '\033[8;40;75t'		# will resize the window, if needed.
	printf '\033[8;40;75t'		# will resize the window, if needed.
	#printf '\033[8;50;200t'	# will resize the window, if needed.
echo -------------------------========================-------------------------
## Software lead in
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo Version compiled on : Also serves as a version
	echo 2022-01-30_Sunday_06:11:10
echo -------------------------========================-------------------------
echo "By LostBytesSoft"
echo "Version 2021-11-18"

echo "Fix broken install"
echo -------------------------========================-------------------------
sudo apt --fix-broken install
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
