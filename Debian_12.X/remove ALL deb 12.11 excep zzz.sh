#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;30;100t'		# will resize the window.
echo -------------------------===== Start of bash ====-------------------------

	## Lead-in Version 6.04
	echo
	echo
	## Time, host name, file name, pid.
		start=$SECONDS
		now=$(date +"%Y-%m-%d_%A_%H:%M:%S")	## time now
		hostname=$(cat /etc/hostname)
		#hostname="${hostname%-pc}"
		me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
		id=$(echo $PPID)			## current process id of the bash process
	## General purposes variables. Needed before program to random variables.
	## All general variables must be 0, DO NOT CHANGE.
		part=0		## Don't change this value.
		primeerror=0	## Ending error detector, do not change.
		error=0		## Test error, do not change.
		version=2025-05-23_Friday_15:17:48
	## "0 or 1 , 0 deactivated , 1 activated ## All general variables must be 0 or 1"
		findsubfolders=0
		lowercase=0
		detox=0
		automatic=1
		debug=0
		debugcore=0
		minimize=0
		maximize=0
		reseize=1
		noquit=0
	## Auto-generated variables. DO NOT CHANGE.
		random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
		random2=$RANDOM
	## Colors codes
		red=$(tput setaf 1)
		green=$(tput setaf 2)
		yellow=$(tput setaf 11)
		blue=$(tput setaf 12)
		orange=$(tput setaf 9)
		reset=$(tput sgr0)

##-------------------------=========== SEPARATOR =============-------------------------

	spd-say "Lost byte soft"

	echo "${green}  ░▒▓█▓▒░      ░▒▓██████▓▒░ ░▒▓███████▓▒░▒▓████████▓▒░ "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░   ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░  ░▒▓█▓▒░     "
	echo "${green}  ░▒▓████████▓▒░▒▓██████▓▒░░▒▓███████▓▒░   ░▒▓█▓▒░     ${reset}"
	echo
	echo "${green}	  ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░ ░▒▓██████▓▒░   ░▒▓█▓▒░   ░▒▓██████▓▒░   "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓█▓▒░        "
	echo "${green}	  ░▒▓███████▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░   ░▒▓████████▓▒░ ${reset}"
	echo
	echo "${green}		   ░▒▓███████▓▒░░▒▓██████▓▒░░▒▓████████▓▒░▒▓████████▓▒░ "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		   ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░    ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}			 ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░         ░▒▓█▓▒░     "
	echo "${green}		  ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░         ░▒▓█▓▒░  ${reset}"
	echo
	sleep 1

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "$me"
	echo
	echo "Version : $version"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "You are running this script from : $hostname"
	echo
	echo "Running software file : $(dirname "$0")/"
	echo
	echo "Read me for this file : (EULA at the end of file, open in text.)"
	echo
	echo "By LostByteSoft, no copyright or copyleft. https://github.com/LostByteSoft"
	echo
	echo "Don't hack paid software, free software exists and does the job better."
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2"
	echo "		primeerror=$primeerror lowercase=$lowercase id=$id reseize=$reseize"
	echo

## Simple function small bar to wait 3 sec. This bar does work with debian 12 & 13. Version 1.05

	functionsmallbar() {
		speed=0.2
		if [ "$debug" -eq 0 ]; then
			echo -ne ${yellow}'	TimeToQuit |                        |    (0%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██                    |   (10%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████                  |   (20%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████                |   (30%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████              |   (40%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████            |   (50%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████          |   (60%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████        |   (70%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████      |   (80%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ██████████████████    |   (90%)\r'${reset}
			sleep $speed
			echo -ne ${yellow}'	TimeToQuit |  ████████████████████  |  (100%)\r'${reset}
			sleep $speed
			echo -ne '\n'
		else
			echo ${yellow} ████████████████████ DEBUG BYPASS functionfastbar ████████████████████${reset}
			sleep $speed
		fi
		}

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo
	echo  "${green}	████████████████     ALL OK / ACTIVE      ████████████████ ${reset}"
	echo   "${blue}	████████████████      INFORMATION(S)      ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo    "${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo
echo -------------------------========================-------------------------
	echo Version compiled on : Also serves as a version
	echo 2025-03-19-11-10-19
	echo

echo -------------------------========================-------------------------
	echo
	echo "Remove ALL junk and unused files By LostBytesSoft"
	echo "Optimized For : Debian non free Cinnamon 12 x64"
	echo
	echo "THIS IS NOT AN AGRESSIVE REMOVE. ONLY REMOVES SOFTWARES WITH LITTLE USE."
	echo
	echo "This version : debian-live-12.10.0-amd64-cinnamon.iso"
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
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk accessoires"
	echo
	sudo apt-get remove deja-dup -y
	sudo apt-get remove gnote -y
	sudo apt-get remove goldendict -y
	sudo apt-get remove yelp -y
	sudo apt-get remove debian-reference-common -y
	sudo apt-get remove debian-reference-es -y
	sudo apt-get remove debian-reference-it -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk audio"
	echo
	sudo apt-get remove brasero-common -y
	sudo apt-get remove brasero -y
	sudo apt-get remove cheese -y
	sudo apt-get remove gnome-sound-recorder -y
	sudo apt-get remove sound-juicer -y
	sudo apt-get remove totem -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk games"
	echo
	sudo apt-get remove aisleriot -y
	sudo apt-get remove five-or-more -y
	sudo apt-get remove four-in-a-row -y
	sudo apt-get remove gnome-2048 -y
	sudo apt-get remove gnome-chess -y
	sudo apt-get remove gnome-klotski -y
	sudo apt-get remove gnome-mahjongg -y
	sudo apt-get remove gnome-mines -y
	sudo apt-get remove gnome-nibbles -y
	sudo apt-get remove gnome-robots -y
	sudo apt-get remove gnome-sudoku -y
	sudo apt-get remove gnome-taquin -y
	sudo apt-get remove gnome-tetravex -y
	sudo apt-get remove hitori -y
	sudo apt-get remove iagno -y
	sudo apt-get remove lightsoff -y
	sudo apt-get remove quadrapassel -y
	sudo apt-get remove swell-foop -y
	sudo apt-get remove tali -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk graphics"
	echo
	sudo apt-get remove eog -y
	sudo apt-get remove shotwell -y
	sudo apt-get remove simple-scan -y
	sudo apt-get remove gimp-help-sv -y
	sudo apt-get remove gimp-help-common -y
	## NOT INSTALLED sudo apt-get remove gimp -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk internet"
	echo
	sudo apt-get remove deluge-common -y
	sudo apt-get remove deluge-gtk -y
	sudo apt-get remove deluge -y
	sudo apt-get remove hexchat -y
	sudo apt-get remove pidgin -y
	sudo apt-get remove remmina -y
	sudo apt-get remove thunderbird -y
	sudo apt-get remove transmission-gtk -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk Office"
	echo
	echo Nothing to remove in Debian 12.X here.
	#sudo apt-get remove evince-common -y	## Possible remove, or use remove zzz evince.sh
	#sudo apt-get remove evince -y		## Possible remove, or use remove zzz evince.sh

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk preferences"
	echo
	sudo apt-get remove anthy -y
	sudo apt-get remove kasumi -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk system"
	echo
	killall -9 uim
	sudo apt-get remove eject -y
	sudo apt-get remove id3 -y		## command line id3 tag
	sudo apt-get remove im-config -y
	sudo apt-get remove mdadm -y		## raid software
	sudo apt-get remove mozc-data -y
	sudo apt-get remove mozc-utils-gui -y
	sudo apt-get remove uim-data -y
	sudo apt-get remove uim-mozc -y
	sudo apt-get remove uim-xim -y
	sudo apt-get remove uim -y
	sudo apt-get remove vino -y
	sudo apt-get remove yelp-xsl -y
	sudo apt-get remove yelp -y
	#sudo apt-get remove ibus-clutter -y	## problem in terminal if removed
	#sudo apt-get remove ibus -y		## problem in terminal if removed
	sudo dpkg -r --force-depends fcitx5-chewing -y
	sudo dpkg -r --force-depends fcitx5-chinese-addons -y
	sudo dpkg -r --force-depends fcitx5-chinese-addons-bin -y
	sudo dpkg -r --force-depends fcitx5-chinese-addons-data -y
	sudo dpkg -r --force-depends fcitx5-data -y
	sudo dpkg -r --force-depends fcitx5-module-chttrans -y
	sudo dpkg -r --force-depends fcitx5-module-cloudpinyin -y
	sudo dpkg -r --force-depends fcitx5-module-fullwidth -y
	sudo dpkg -r --force-depends fcitx5-module-lua -y
	sudo dpkg -r --force-depends fcitx5-module-lua-common -y
	sudo dpkg -r --force-depends fcitx5-module-pinyinhelper -y
	sudo dpkg -r --force-depends fcitx5-module-punctuation -y
	sudo dpkg -r --force-depends fcitx5-pinyin -y
	sudo dpkg -r --force-depends fcitx5-table -y
	sudo dpkg -r --force-depends fcitx-bin -y
	sudo dpkg -r --force-depends fcitx-config-common -y
	sudo dpkg -r --force-depends fcitx-m17n -y
	sudo dpkg -r --force-depends fcitx-module-dbus -y
	sudo dpkg -r --force-depends fcitx-module-lua -y
	sudo dpkg -r --force-depends fcitx-module-quickphrase-editor5 -y
	sudo dpkg -r --force-depends fcitx-modules -y
	sudo dpkg -r --force-depends fcitx-module-x11 -y
	sudo dpkg -r --force-depends libfcitx5config6 -y
	sudo dpkg -r --force-depends libfcitx5core7 -y
	sudo dpkg -r --force-depends libfcitx5-qt1 -y
	sudo dpkg -r --force-depends libfcitx5-qt-data -y
	###sudo dpkg -r --force-depends libfcitx5utils2 -y	## error if removed
	sudo dpkg -r --force-depends libfcitx-config4 -y
	sudo dpkg -r --force-depends libfcitx-qt5-1 -y
	sudo dpkg -r --force-depends libfcitx-qt5-data -y
	sudo dpkg -r --force-depends libfcitx-utils0 -y
	sudo dpkg -r --force-depends fcitx-config-gtk -y
	sudo dpkg -r --force-depends libfcitx-core0 -y
	sudo dpkg -r --force-depends libfcitx-gclient1 -y
	sudo dpkg -r --force-depends fcitx-config-common -y
	sudo dpkg -r --force-depends fcitx-frontend-gtk2 -y
	sudo dpkg -r --force-depends fcitx-frontend-gtk3 -y
	sudo dpkg -r --force-depends fcitx-frontend-qt5 -y
	sudo dpkg -r --force-depends fcitx-module-dbus -y
	sudo dpkg -r --force-depends fcitx-module-kimpanel -y
	sudo dpkg -r --force-depends fcitx5-data -y
	sudo dpkg -r --force-depends fcitx5-modules -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Remove junk administration"
	echo
	sudo apt-get remove gnome-logs -y
	sudo apt-get remove gnome-software -y
	sudo apt-get remove malcontent -y
	sudo apt-get remove mlterm-common -y
	sudo apt-get remove mlterm-tiny -y
	sudo apt-get remove mlterm -y
	sudo apt-get remove xiterm+thai -y
	sudo apt-get remove xterm -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Finish removing applications."

	echo
	echo "${blue}	████████████████ REMOVE APP FINISH ████████████████ ${reset}"
	echo
	sleep 3

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Will now run apt-get autoremove to remove associated files."
	echo
	echo   "${blue}	████████████████ START ████████████████ ${reset}"
	echo
	sudo apt-get autoremove -y

	echo
	echo  "${green}	████████████████ ALL OK / ALL REMOVED ████████████████ ${reset}"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out. Version 5.15"
	echo
	echo "Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2"
	echo
	echo "Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic"
	echo "	debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit"
	echo
	echo -------------------------===== End of Bash ======-------------------------
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo " " >>/dev/shm/logs.txt
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug random : id=$id part=$part primeerror=$primeerror error=$error random=$random random2=$random2" >>/dev/shm/logs.txt
	echo "	Debug : findsubfolders=$findsubfolders lowercase=$lowercase detox=$detox automatic=$automatic debug=$debug debugcore=$debugcore minimize=$minimize maximize=$maximize reseize=$reseize noquit=$noquit" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt
	echo "--------------------====== SEPARATOR ========--------------------" >>/dev/shm/logs.txt

## -------------------------===== Separator =====-------------------------
## Exit, wait or auto-quit.
	printf '\033[8;18;90t'		## Will resize the window.

	if [ "$primeerror" -ge "1" ]; then
		printf '\033[8;35;90t'		## Will resize the window.
		spd-say "	$name have errors."
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██     Unknown entry event... ERROR(S)    ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "Terminated : $me"
		echo
		#debug
		sleep=5
		functionsleepbar
		noquit=1
	else
		spd-say "	$name finished without errors."
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "Terminated : $me"
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press any key to EXIT or press X to close this windows !"
		echo
		fi

	if [ "$debug" -eq "1" ]; then
		debug
		echo "${blue}		█████ DEBUG WAIT | Program finish. █████${reset}"
		echo
		read -n 1 -s -r -p "Press any key to EXIT or press X to close this windows !"
		echo
		fi

	echo
	echo "${green}	███████████████ Finish, quit in 3 seconds █████████████████${reset}"
	echo
	functionsmallbar
	echo
	sleep 0.5
	exit 0

## -------------------------===== Start of eula =====-------------------------

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

## -------------------------===== End of file =====-------------------------
