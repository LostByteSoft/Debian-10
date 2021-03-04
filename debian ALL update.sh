echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window
echo -----------------------------------------------------------------------------
echo "Auto updater for Debian 11"
echo "By LostBytesSoft"
echo "Version 2021-02-23"
echo -----------------------------------------------------------------------------
echo "Upadte files"
sudo apt update -y
sudo apt upgrade -y
sleep 1
echo -----------------------------------------------------------------------------
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
sleep 1
echo -----------------------------------------------------------------------------

	echo Press ENTER key to exit !
	read name
	exit

echo -----------------------------------------------------------------------------
exit
echo --- End of bash ---

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                        Version 3.1415926535
                          February 2022

	  As is customary and in compliance with current global and
	interplanetary regulations, the author of these pages disclaims
	all liability for the consequences of the advice given here,
	in particular in the event of partial or total destruction of
	the material, Loss of rights to the manufacturer warranty,
	electrocution, drowning, divorce, civil war, the effects of
	radiation due to atomic fission, unexpected tax recalls or
	    encounters with extraterrestrial beings elsewhere.

      LostByteSoft no copyright or copyleft we are in the center.

# --- End of file ---
