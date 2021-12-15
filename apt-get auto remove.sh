echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window
echo -----------------------------------------------------------------------------
echo "Autoremove no longer used files"
echo "By LostBytesSoft"
echo "Version 2021-04-09"
echo -----------------------------------------------------------------------------
sudo apt-get autoremove -y
echo -----------------------------------------------------------------------------

	echo Press ENTER key to exit !
	read name
	exit

# --- End of file ---
