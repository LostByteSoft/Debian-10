echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window

echo -----------------------------------------------------------------------------
echo "By LostBytesSoft"
echo "Version 2021-11-18"

echo "sudo apt update"
echo -----------------------------------------------------------------------------
apt list --upgradable
echo -----------------------------------------------------------------------------

	echo Press ENTER key to exit !
	read name
	exit

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

# --- End of file ---
