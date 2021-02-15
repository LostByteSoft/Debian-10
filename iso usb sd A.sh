echo --- Start of file ---
#!/bin/bash
echo -----------------------------------------------------------------------------
echo "Write an *.iso to an usb key"
echo "By LostByteSoft"
echo "Version 2021-02-15"
echo "Write to sda"
echo -----------------------------------------------------------------------------

echo "Select filename using dialog"
FILE="$(zenity --file-selection --filename=$HOME/$USER --file-filter="*.iso" --title="Select a ISO File")"
echo "Your file is $FILE"

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

VAR="$FILE"
echo var = "${VAR}"
echo "After sudo passord wait until it finishes..."

sudo dd if="$FILE" of=/dev/sda

echo -----------------------------------------------------------------------------
sleep 3		#A little wait here to wait the writing process
echo Press ENTER key to exit !
read name
exit
echo --- End of file ---
