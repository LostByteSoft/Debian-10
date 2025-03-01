#!/bin/bash
#!/usr/bin/ffmpeg

	printf '\033[8;30;100t'		# will resize the window.

echo -------------------------===== Start of bash ====-------------------------

	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")	## time now
	id=$(echo $PPID)			## current process id of the bash process

	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

	## General purposes variables. Needed before program to random variables.
	## All variables must be 0
	part=0		## Don't change this value.
	primeerror=0	## Ending error detector, do not change.
	error=0		## Test error, do not change.
	
	## All variables must be 0 or 1
	automatic=0	## automatic without (at least minimal) dialog box. (0 or 1)
	debug=0		## test debug. (0 or 1 debug mode)
	noquit=1	## noquit option. (0 or 1)
	lowercase=0	## Change all to lowercase option. (0 or 1)

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
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random random2=$random2 primeerror=$primeerror id=$id"
	me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
	echo
	echo "Running job file : $me"
	echo
	echo "This version : debian-live-12.9.0-amd64-cinnamon.iso"
	echo

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
	echo 2025-02-20-12-31-03
	echo
echo -------------------------========================-------------------------
echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"

## For debian 12

sudo dpkg -r --force-depends fonts-opensymbol
sudo dpkg -r --force-depends libreoffice-base-core
sudo dpkg -r --force-depends libreoffice-calc
sudo dpkg -r --force-depends libreoffice-common
sudo dpkg -r --force-depends libreoffice-core
sudo dpkg -r --force-depends libreoffice-draw
sudo dpkg -r --force-depends libreoffice-gnome
sudo dpkg -r --force-depends libreoffice-gtk3
sudo dpkg -r --force-depends libreoffice-help-ca
sudo dpkg -r --force-depends libreoffice-help-common
sudo dpkg -r --force-depends libreoffice-help-cs
sudo dpkg -r --force-depends libreoffice-help-da
sudo dpkg -r --force-depends libreoffice-help-de
sudo dpkg -r --force-depends libreoffice-help-dz
sudo dpkg -r --force-depends libreoffice-help-el
sudo dpkg -r --force-depends libreoffice-help-en-gb
sudo dpkg -r --force-depends libreoffice-help-es
sudo dpkg -r --force-depends libreoffice-help-et
sudo dpkg -r --force-depends libreoffice-help-eu
sudo dpkg -r --force-depends libreoffice-help-fi
sudo dpkg -r --force-depends libreoffice-help-fr
sudo dpkg -r --force-depends libreoffice-help-gl
sudo dpkg -r --force-depends libreoffice-help-hi
sudo dpkg -r --force-depends libreoffice-help-hu
sudo dpkg -r --force-depends libreoffice-help-it
sudo dpkg -r --force-depends libreoffice-help-ja
sudo dpkg -r --force-depends libreoffice-help-km
sudo dpkg -r --force-depends libreoffice-help-ko
sudo dpkg -r --force-depends libreoffice-help-nl
sudo dpkg -r --force-depends libreoffice-help-pl
sudo dpkg -r --force-depends libreoffice-help-pt
sudo dpkg -r --force-depends libreoffice-help-ru
sudo dpkg -r --force-depends libreoffice-help-sk
sudo dpkg -r --force-depends libreoffice-help-sl
sudo dpkg -r --force-depends libreoffice-help-sv
sudo dpkg -r --force-depends libreoffice-help-zh-cn
sudo dpkg -r --force-depends libreoffice-help-zh-tw
sudo dpkg -r --force-depends libreoffice-impress
sudo dpkg -r --force-depends libreoffice-l10n-ar
sudo dpkg -r --force-depends libreoffice-l10n-ast
sudo dpkg -r --force-depends libreoffice-l10n-be
sudo dpkg -r --force-depends libreoffice-l10n-bg
sudo dpkg -r --force-depends libreoffice-l10n-bn
sudo dpkg -r --force-depends libreoffice-l10n-bs
sudo dpkg -r --force-depends libreoffice-l10n-ca
sudo dpkg -r --force-depends libreoffice-l10n-cs
sudo dpkg -r --force-depends libreoffice-l10n-cy
sudo dpkg -r --force-depends libreoffice-l10n-da
sudo dpkg -r --force-depends libreoffice-l10n-de
sudo dpkg -r --force-depends libreoffice-l10n-dz
sudo dpkg -r --force-depends libreoffice-l10n-el
sudo dpkg -r --force-depends libreoffice-l10n-en-gb
sudo dpkg -r --force-depends libreoffice-l10n-en-za
sudo dpkg -r --force-depends libreoffice-l10n-eo
sudo dpkg -r --force-depends libreoffice-l10n-es
sudo dpkg -r --force-depends libreoffice-l10n-et
sudo dpkg -r --force-depends libreoffice-l10n-eu
sudo dpkg -r --force-depends libreoffice-l10n-fa
sudo dpkg -r --force-depends libreoffice-l10n-fi
sudo dpkg -r --force-depends libreoffice-l10n-fr
sudo dpkg -r --force-depends libreoffice-l10n-ga
sudo dpkg -r --force-depends libreoffice-l10n-gl
sudo dpkg -r --force-depends libreoffice-l10n-gu
sudo dpkg -r --force-depends libreoffice-l10n-he
sudo dpkg -r --force-depends libreoffice-l10n-hi
sudo dpkg -r --force-depends libreoffice-l10n-hr
sudo dpkg -r --force-depends libreoffice-l10n-hu
sudo dpkg -r --force-depends libreoffice-l10n-id
sudo dpkg -r --force-depends libreoffice-l10n-is
sudo dpkg -r --force-depends libreoffice-l10n-it
sudo dpkg -r --force-depends libreoffice-l10n-ja
sudo dpkg -r --force-depends libreoffice-l10n-ka
sudo dpkg -r --force-depends libreoffice-l10n-km
sudo dpkg -r --force-depends libreoffice-l10n-ko
sudo dpkg -r --force-depends libreoffice-l10n-lt
sudo dpkg -r --force-depends libreoffice-l10n-lv
sudo dpkg -r --force-depends libreoffice-l10n-mk
sudo dpkg -r --force-depends libreoffice-l10n-ml
sudo dpkg -r --force-depends libreoffice-l10n-mr
sudo dpkg -r --force-depends libreoffice-l10n-nb
sudo dpkg -r --force-depends libreoffice-l10n-ne
sudo dpkg -r --force-depends libreoffice-l10n-nl
sudo dpkg -r --force-depends libreoffice-l10n-nn
sudo dpkg -r --force-depends libreoffice-l10n-pa-in
sudo dpkg -r --force-depends libreoffice-l10n-pl
sudo dpkg -r --force-depends libreoffice-l10n-pt
sudo dpkg -r --force-depends libreoffice-l10n-pt-br
sudo dpkg -r --force-depends libreoffice-l10n-ro
sudo dpkg -r --force-depends libreoffice-l10n-ru
sudo dpkg -r --force-depends libreoffice-l10n-si
sudo dpkg -r --force-depends libreoffice-l10n-sk
sudo dpkg -r --force-depends libreoffice-l10n-sl
sudo dpkg -r --force-depends libreoffice-l10n-sr
sudo dpkg -r --force-depends libreoffice-l10n-sv
sudo dpkg -r --force-depends libreoffice-l10n-ta
sudo dpkg -r --force-depends libreoffice-l10n-te
sudo dpkg -r --force-depends libreoffice-l10n-th
sudo dpkg -r --force-depends libreoffice-l10n-tr
sudo dpkg -r --force-depends libreoffice-l10n-ug
sudo dpkg -r --force-depends libreoffice-l10n-uk
sudo dpkg -r --force-depends libreoffice-l10n-vi
sudo dpkg -r --force-depends libreoffice-l10n-xh
sudo dpkg -r --force-depends libreoffice-l10n-zh-cn
sudo dpkg -r --force-depends libreoffice-l10n-zh-tw
sudo dpkg -r --force-depends libreoffice-math
sudo dpkg -r --force-depends libreoffice-style-colibre
sudo dpkg -r --force-depends libreoffice-style-elementary
sudo dpkg -r --force-depends libreoffice-voikko
sudo dpkg -r --force-depends libreoffice-writer
sudo dpkg -r --force-depends libuno-cppu3
sudo dpkg -r --force-depends libuno-cppuhelpergcc3-3
sudo dpkg -r --force-depends libuno-purpenvhelpergcc3-3
sudo dpkg -r --force-depends libuno-sal3
sudo dpkg -r --force-depends libuno-salhelpergcc3-3
sudo dpkg -r --force-depends myspell-he
sudo dpkg -r --force-depends mythes-cs
sudo dpkg -r --force-depends mythes-de
sudo dpkg -r --force-depends mythes-de-ch
sudo dpkg -r --force-depends mythes-fr
sudo dpkg -r --force-depends mythes-it
sudo dpkg -r --force-depends mythes-ne
sudo dpkg -r --force-depends mythes-pl
sudo dpkg -r --force-depends mythes-ru
sudo dpkg -r --force-depends mythes-sk
sudo dpkg -r --force-depends python3-uno
sudo dpkg -r --force-depends uno-libs-private
sudo dpkg -r --force-depends ure

echo -------------------------========================-------------------------

sudo apt-get autoremove -y

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Software lead out."
	printf '\033[8;26;102t'		## minimum of ? for graphics, will resize the window, if needed.
	echo
	echo "Debug data : debug=$debug error=$error part=$part noquit=$noquit random=$random"
	echo "Debug data : random2=$random2 automatic=$automatic primeerror=$primeerror id=$id"
	echo
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo "$now (Time now)" >>/dev/shm/logs.txt
	echo "	Time needed : $date" >>/dev/shm/logs.txt
	echo "	Name of software : $me" >>/dev/shm/logs.txt
	echo "	Debug data : debug=$debug debugcore=$debugcore error=$error part=$part noquit=$noquit random=$random random2=$random2 automatic=$automatic primeerror=$primeerror id=$id" >>/dev/shm/logs.txt
	echo "	File (If any used) : $file" >>/dev/shm/logs.txt
	echo " " >>/dev/shm/logs.txt

echo -------------------------===== End of Bash ======-------------------------
## Exit, wait or auto-quit.

	if [ "$primeerror" -ge "1" ]; then
		echo
		echo "	${red}████████████████████████████████████████████${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}██         Unknown entry event...         ██${reset}"
		echo "	${red}██                                        ██${reset}"
		echo "	${red}████████████████████████████████████████████${reset}"
		echo
		echo "Numbers of error(s) : $primeerror"
		echo
		echo "$id - RUNNING : $me"
		echo
		debug
		#functionsmallbar
		noquit=1
	else
		echo
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}██         NO errors detected.        ██${reset}	${blue}██       Time needed : $date       ██${reset}"
		echo "${green}██                                    ██${reset}	${blue}██                                    ██${reset}"
		echo "${green}████████████████████████████████████████${reset}	${blue}████████████████████████████████████████${reset}"
		echo
		echo "$id - RUNNING : $me"
	fi

	if [ "$noquit" -eq "1" ]; then
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
		echo
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
