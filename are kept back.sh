echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window
echo -----------------------------------------------------------------------------
echo "sudo apt update"
echo "By LostBytesSoft"
echo "Version 2021-02-23"
echo -----------------------------------------------------------------------------
apt list --upgradable
sleep 1
echo -----------------------------------------------------------------------------

	echo Press ENTER key to exit !
	read name
	exit

echo -----------------------------------------------------------------------------

echo --- End of bash ---


    This will show a list of packages that can be upgraded.

	Next, do this:

    Start at the beginning of the list with the first package and type:

sudo apt-get install package-name-here

sudo apt-get install 

    This will run through the installation process and pull/install dependencies.

	After that process completes, do this:

apt list --upgradable

    This will again show which packages can be upgraded. Your list of packages should now 	be decreasing. Follow the list of packages and type apt list --upgradable after each 	package install. This should only take a couple of minutes to complete.

echo -----------------------------------------------------------------------------

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
