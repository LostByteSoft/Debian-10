#!/bin/bash
#!/usr/bin/ffmpeg
## -----===== Start of bash =====-----
	printf '\033[8;40;75t'		# will resize the window, if needed.
	#printf '\033[8;40;125t'		# will resize the window, if needed.
	#printf '\033[8;50;200t'	# will resize the window, if needed.
echo -------------------------========================-------------------------
## Software lead in
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo Version compiled on : Also serves as a version
	echo 2022-01-31_Monday_11:44:51
echo -------------------------========================-------------------------
sudo fstrim -a -v
sleep 1
echo "Finish"
	echo Finish... This script take $(( SECONDS - start )) seconds to complete.
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name

echo --- End of bash ---
