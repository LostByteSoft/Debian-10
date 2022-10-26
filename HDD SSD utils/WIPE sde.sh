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
echo "sde, wipe mbr"
sudo dd if=/dev/zero of=/dev/sde bs=446 count=1 #*replace X with the target drive letter.
sleep 1
echo -------------------------========================-------------------------
echo "wipe part with 0"
sudo dd if=/dev/zero of=/dev/sde bs=1M
echo -------------------------========================-------------------------
	echo Finish... This script take $(( SECONDS - start )) seconds to complete.
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name

echo --- End of bash ---
