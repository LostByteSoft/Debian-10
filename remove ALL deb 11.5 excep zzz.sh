#!/bin/bash
#!/usr/bin/ffmpeg
## -----===== Start of bash =====-----
	printf '\033[8;40;150t'	# will resize the window, if needed.
	sleep 0.50
	
echo -------------------------========================-------------------------
## Software lead-in
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

## Common variables, you can changes theses variables as you wish to test (0 or 1)
	autoquit=0	# autoquit anyway to script takes more than 2 min to complete
	debug=0		# test debug
	error=0		# test error
	part=0		# don't change this value
	noquit=1
	
	echo autoquit=$autoquit debug=$debug error=$error part=$part

echo -------------------------========================-------------------------
	echo Version compiled on : Also serves as a version
	echo 2022-11-13_12:52:20
	echo
	## Software name, what is this, version, informations.
	echo "Remove ALL junk and unused files"
	echo "By LostBytesSoft"
	echo "Optimized For : Debian non free Cinnamon 11.2 x64"
	echo
	echo "This version : debian-live-11.5.0-amd64-cinnamon+nonfree.iso"
	echo
	echo "Informations : (EULA at the end of file, open in text.)"
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	
echo -------------------------========================-------------------------
echo Press enter to continue or X to quit.
read name
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk accessoires"
sudo apt-get remove deja-dup -y
sudo apt-get remove gnome-firmware -y
sudo apt-get remove goldendict -y
sudo apt-get remove gnote -y
sudo apt-get remove yelp -y
sudo apt-get remove khmerconverter -y
sudo apt-get remove debian-reference-common -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk audio"
sudo apt-get remove totem -y
sudo apt-get remove brasero -y
sudo apt-get remove brasero-common -y
sudo apt-get remove cheese -y
sudo apt-get remove sound-juicer -y
sudo apt-get remove gnome-sound-recorder -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk games"
sudo apt-get remove gnome-robots -y
sudo apt-get remove gnome-chess -y
sudo apt-get remove aisleriot -y
sudo apt-get remove five-or-more -y
sudo apt-get remove gnome-mahjongg -y
sudo apt-get remove tali -y
sudo apt-get remove four-in-a-row -y
sudo apt-get remove gnome-klotski -y
sudo apt-get remove gnome-mines -y
sudo apt-get remove gnome-nibbles -y
sudo apt-get remove gnome-2048 -y
sudo apt-get remove gnome-sudoku -y
sudo apt-get remove gnome-taquin -y
sudo apt-get remove gnome-tetravex -y
sudo apt-get remove hitori -y
sudo apt-get remove lightsoff -y
sudo apt-get remove quadrapassel -y
sudo apt-get remove swell-foop -y
sudo apt-get remove iagno -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk graphics"
sudo apt-get remove eog -y
sudo apt-get remove simple-scan -y
sudo apt-get remove shotwell -y
sudo apt-get remove inkscape -y
#echo apt-get remove imagemagick -y		# imagemagick can be removed
#echo apt-get remove imagemagick-6-common -y	# alot of my bash gui use imagemagick
#echo apt-get remove imagemagick-6.q16 -y
#echo apt-get remove libmagickcore-6.q16-6 -y
#echo apt-get remove libmagickwand-6.q16-6 -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk internet"
sudo apt-get remove pidgin -y
sudo apt-get remove thunderbird -y
sudo apt-get remove hexchat -y
sudo apt-get remove transmission-gtk -y
sudo apt-get remove remmina -y
sudo apt-get remove vinagre -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk Office"
sudo apt-get remove fbreader -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk preferences"
sudo apt-get remove anthy -y
sudo apt-get remove kasumi -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk system"
killall -9 uim
sudo apt-get remove uim -y
sudo apt-get remove uim-data -y
sudo apt-get remove uim-mozc -y
sudo apt-get remove uim-xim -y
sudo apt-get remove im-config -y
sudo apt-get remove mozc-data -y
sudo apt-get remove mozc-utils-gui -y
#sudo apt-get remove ibus -y		## problem in terminal
#sudo apt-get remove ibus-clutter -y	## problem in terminal
sudo apt-get remove fcitx -y
sudo apt-get remove fcitx5 -y
sudo apt-get remove fcitx-bin -y
sudo apt-get remove fcitx-data -y
sudo apt-get remove fcitx-module-dbus -y
#sudo apt-get remove libfcitx-utils0 -y
sudo apt-get remove fcitx-config-common -y
#sudo apt-get remove blueman -y	## bluetooth do not remove
sudo apt-get remove hunspell -y
sudo apt-get remove aspell -y
sudo apt-get remove eject -y
sudo apt-get remove vino -y
sudo apt-get remove texlive-base -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk administration"
sudo apt-get remove gnome-software -y
sudo apt-get remove xterm -y
sudo apt-get remove mlterm-common -y
sudo apt-get remove mlterm -y
sudo apt-get remove mlterm-tiny -y
sudo apt-get remove xiterm+thai -y
sudo apt-get remove malcontent -y
	part=$((part+1))
	echo "-------------------------===== Section $part =====-------------------------"
echo autoremove unused associated files.
sudo apt-get autoremove -y
echo -------------------------========================-------------------------
## Software lead-out.
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"

echo -------------------------========================-------------------------
## Press enter or auto-quit here.
	echo "If a script takes MORE than 120 seconds to complete it will ask"
	echo "you to press ENTER to terminate."
	echo
	echo "If a script takes LESS than 120 seconds to complete it will auto"
	echo "terminate after 10 seconds"
	echo

echo -------------------------========================-------------------------
## Exit, wait or auto-quit.

if [ "$noquit" -eq "1" ]
then
		echo "Script will auto quit in 1 seconds."
		echo
		echo "${blue}██████████████████████████████ Finish Now ████████████████████████████████${reset}"
		echo
		sleep 1
		fi

	echo Press ENTER key to exit !
	read name
	exit

## -----===== End of bash =====-----

	End-user license agreement (eula)

 	JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE
 	
 	Version 3.1415926532 (January 2022)
 	
 	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
    	
	Everyone is permitted to copy and distribute verbatim or modified copies of
 	this license document.
 	
 	As is customary and in compliance with current global and interplanetary
 	regulations, the author of these pages disclaims all liability for the
 	consequences of the advice given here, in particular in the event of partial
 	or total destruction of the material, Loss of rights to the manufacturer
 	warranty, electrocution, drowning, divorce, civil war, the effects of radiation
 	due to atomic fission, unexpected tax recalls or encounters with
 	extraterrestrial beings elsewhere.
 	
 	YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN.
 	
 	LostByteSoft no copyright or copyleft we are in the center.

## -----===== End of file =====-----
