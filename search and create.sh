#!/bin/bash
#!/usr/bin/ffmpeg
## -----===== Start of bash =====-----
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
echo "LostbyteSoft"
echo "Version 2021-12-26"
echo ------
sleep 0.25

echo Which program do you search ?
echo Will create a list in file installed.txt
echo "Don't forget an * somewhere !"
read a

apt -qq list $a --installed > installed.txt

	echo --- Research done ---
	echo

if [ -s installed.txt ]
then
        echo SOME MATCH FOUND, LOOK FOR installed.txt and corrected.txt
	cat installed.txt | awk -F '\\/' '{print $1""}'>corrected.txt
        echo
        cat installed.txt
        echo
else
        echo NO FILES FOUND WITH THIS NAME, TRY SOMETHING ELSE.
        echo
fi

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
