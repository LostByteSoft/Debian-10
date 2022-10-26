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
echo "Write an *.iso to an usb key"
echo "By LostByteSoft"
echo "https://github.com/LostByteSoft"
echo "Version 2021-02-21"
echo "Select and Write ISO to usb key : sdb"
echo -----------------------------------------------------------------------------

echo "Select filename using dialog"
FILE="$(zenity --file-selection --filename=$HOME/$USER --file-filter="*.iso" --title="Select a ISO File to write on SDB")"

echo -----------------------------------------------------------------------------

if test -z "$FILE"
	then
	echo "\$FILE is empty and now exit."
	sleep 1
	echo Press ENTER key to exit !
	read name
	exit
	else
	echo "\$FILE is NOT empty. Ready to write."
fi

echo -----------------------------------------------------------------------------

echo Your selected file is :
echo "$FILE"

echo -----------------------------------------------------------------------------

echo "After sudo passord wait until it finishes..."
sudo dd if="$FILE" of=/dev/sdb

echo -----------------------------------------------------------------------------
sleep 10		#A little wait here to wait the writing process
echo Writing process finish without errors... Ready to eject !
	echo Finish... This script take $(( SECONDS - start )) seconds to complete.
	date -d@$(( SECONDS - start )) -u +%H:%M:%S
	echo Press ENTER key to exit !
	read name

echo --- End of bash ---
