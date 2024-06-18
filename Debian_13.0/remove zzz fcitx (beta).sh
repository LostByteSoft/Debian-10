#!/bin/bash
#!/usr/bin/ffmpeg

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")

echo -------------------------===== Start of bash ====-------------------------
	#printf '\033[8;40;90t'		# will resize the window, if needed.
	printf '\033[8;40;110t'		# will resize the window, if needed.
	#printf '\033[8;40;130t'	# will resize the window, if needed.
	
	echo
	echo
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo "Running : $me"
	
	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

	## General purposes variables. Watch before program to specific variables.
	## All variables must be 0 or 1
	debug=0		# test debug. (0 or 1 debug mode)
	error=0		# test error. (0 or 1 make error)
	primeerror=0
	noquit=1

	## Auto-generated variables.
	random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	random2=$RANDOM
	part=0					# don't change this value. (0)
	
	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror"
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
	echo 2023-03-29_Wednesday_06:54:00
	echo
echo -------------------------========================-------------------------
echo "Remove FCITX"
	echo
	sudo apt-get remove fcitx5-data -y
	sudo apt-get remove fcitx-bin -y
	sudo apt-get remove fcitx-module-dbus -y
	sudo apt-get remove fcitx-config-common -y
	sudo apt-get remove fcitx-data -y
	sudo apt-get remove fcitx-frontend-all -y
	sudo apt-get remove fcitx-ui-classic -y
	sudo apt-get remove libfcitx-core0 -y
	sudo apt-get remove libfcitx-gclient1 -y
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

echo "Software lead out."
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
	echo "$date $now $me" >>/dev/shm/logs.txt

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
		echo "		${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "		${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "		${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "		${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "		${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
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
