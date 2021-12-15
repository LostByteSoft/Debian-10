echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window

echo -----------------------------------------------------------------------------
echo "By LostBytesSoft"
echo "Version 2021-11-18"

echo "Auto updater for Debian 11"
echo -----------------------------------------------------------------------------
echo "Upadte files"
sudo apt update -y
sudo apt upgrade -y
echo -----------------------------------------------------------------------------
echo "Update finish..."

	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---
