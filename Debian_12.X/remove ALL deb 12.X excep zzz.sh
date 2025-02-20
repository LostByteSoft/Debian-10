#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;40;110t'		# will resize the window.

echo -------------------------===== Start of bash ====-------------------------

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")
	
	echo
	echo
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo "Running : $me"
	
	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	orange=`tput setaf sgr9`
	reset=`tput sgr0`

	## General purposes variables. Needed before program to random variables.
	## All variables must be 0
	part=0		## don't change this value. (0)
	debug=0		## test debug. (0 or 1 debug mode)
	error=0		## test error. (0 or 1 make error)
	primeerror=0	## ending error detector
	## All variables must be 0 or 1
	automatic=0	## automatic without (at least minimal) dialog box.
	noquit=1	## noquit option. (0 or 1)

	## Auto-generated variables. Do not change
	random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	random2=$RANDOM
	
	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo
	echo "Running job file :"
	echo
	echo $(dirname "$0")/$me
	echo

echo -------------------------========================-------------------------
	echo
	echo  "${green}	████████████████     ALL OK / ACTIVE      ████████████████ ${reset}"
	echo   "${blue}	████████████████      INFORMATION(S)      ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo    "${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo
echo -------------------------========================-------------------------
	echo Version compiled on : Also serves as a version
	echo 2025-02-20-12-30-43
	echo
echo -------------------------========================-------------------------
	echo
	echo "Remove ALL junk and unused files"
	echo "By LostBytesSoft"
	echo "Optimized For : Debian non free Cinnamon 12.0 x64"
	echo
	echo "This version : debian-bookworm-DI-alpha2-amd64-DVD-1.iso"
	echo
	echo "Informations : (EULA at the end of file, open in text.)"
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo
echo -------------------------========================-------------------------
echo "Press enter to continue or X to quit. Remove all junk ?"
	read name

	echo   "${blue}	████████████████ START ████████████████ ${reset}"

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk accessoires"
	sudo apt-get remove deja-dup -y
	sudo apt-get remove goldendict -y
	sudo apt-get remove gnote -y
	sudo apt-get remove yelp -y

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

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk internet"
	sudo apt-get remove pidgin -y
	sudo apt-get remove hexchat -y
	sudo apt-get remove transmission-gtk -y
	sudo apt-get remove remmina -y
	sudo apt-get remove deluge -y
	sudo apt-get remove deluge-common -y
	sudo apt-get remove deluge-gtk -y
	sudo apt-get remove thunderbird -y

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk Office"
	echo Nothing to remove in Debian 12.0 here.

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
	#sudo apt-get remove ibus -y		## problem in terminal if removed
	#sudo apt-get remove ibus-clutter -y	## problem in terminal if removed
	sudo apt-get remove fcitx5-data -y
	sudo apt-get remove fcitx-bin -y
	sudo apt-get remove fcitx-module-dbus -y
	sudo apt-get remove fcitx-config-common -y
	sudo dpkg -r --force-depends fcitx-m17n
	sudo dpkg -r --force-depends fcitx-module-lua
	sudo dpkg -r --force-depends fcitx-module-quickphrase-editor5
	sudo dpkg -r --force-depends fcitx-module-x11
	sudo dpkg -r --force-depends fcitx-modules
	sudo dpkg -r --force-depends fcitx5-chewing
	sudo dpkg -r --force-depends fcitx5-chinese-addons-bin
	sudo dpkg -r --force-depends fcitx5-chinese-addons-data
	sudo dpkg -r --force-depends fcitx5-chinese-addons
	sudo dpkg -r --force-depends fcitx5-module-chttrans
	sudo dpkg -r --force-depends fcitx5-module-cloudpinyin
	sudo dpkg -r --force-depends fcitx5-module-fullwidth
	sudo dpkg -r --force-depends fcitx5-module-lua-common
	sudo dpkg -r --force-depends fcitx5-module-lua
	sudo dpkg -r --force-depends fcitx5-module-pinyinhelper
	sudo dpkg -r --force-depends fcitx5-module-punctuation
	sudo dpkg -r --force-depends fcitx5-pinyin
	sudo dpkg -r --force-depends fcitx5-table
	sudo dpkg -r --force-depends libfcitx-config4
	sudo dpkg -r --force-depends libfcitx-qt5-1
	sudo dpkg -r --force-depends libfcitx-qt5-data
	sudo dpkg -r --force-depends libfcitx-utils0
	sudo dpkg -r --force-depends libfcitx5-qt-data
	sudo dpkg -r --force-depends libfcitx5-qt1
	sudo dpkg -r --force-depends libfcitx5config6
	sudo dpkg -r --force-depends libfcitx5core7
	sudo dpkg -r --force-depends libfcitx5utils2
	sudo apt-get remove hunspell -y
	sudo apt-get remove aspell -y
	sudo apt-get remove eject -y
	sudo apt-get remove vino -y
	sudo apt-get remove yelp -y
	sudo apt-get remove yelp-xsl -y
	sudo apt-get remove id3 -y		## command line id3 tag
	sudo apt-get remove mdadm -y		## raid software

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
	sudo apt-get remove gnome-logs -y

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo Finish removing applications.

	echo
	echo "${yellow}	████████████████ REMOVE APP FINISH ████████████████ ${reset}"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo autoremove unused associated files.
	echo "Will now run apt-get autoremove -y to remove associated files."
	sudo apt-get autoremove -y
	echo
	echo  "${green}	████████████████ ALL OK / ALL REMOVED ████████████████ ${reset}"
	echo

echo -------------------------========================-------------------------
echo "Software lead out."
	printf '\033[8;50;107t'		# will resize the window, 96 is minimum for exit box.
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo "$now" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Debug software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt

echo -------------------------===== End of Bash ======-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██           ERROR ERROR ERROR            ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		functionsmallbar
		echo
		read -n 1 -s -r -p "Press ENTER key to Continue !"
		echo
	else
		echo
		echo "	${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "	${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "	${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "	${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "	${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
		echo
		exit
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to continue !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	sleep 0.5
	echo
	functionsmallbar
	echo
	sleep 1
	exit

## -----===== Start of eula =====-----

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
 	
 	You can send your request and your Christmas wishes to this address:
 	
 		Père Noël
 		Pôle Nord, Canada
 		H0H 0H0

## -----===== End of file =====-----
