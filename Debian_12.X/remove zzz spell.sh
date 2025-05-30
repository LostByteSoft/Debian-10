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
	echo "This version : debian-live-12.10.0-amd64-cinnamon.iso"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
	echo
	echo  "${green}	████████████████	 ALL OK / ACTIVE	  ████████████████ ${reset}"
	echo   "${blue}	████████████████	  INFORMATION(S)	  ████████████████ ${reset}"
	echo "${yellow}	████████████████   ATTENTION / INACTIVE   ████████████████ ${reset}"
	echo	"${red}	████████████████   FATAL ERROR / OFFLINE  ████████████████ ${reset}"
	echo
echo -------------------------========================-------------------------
	echo Version compiled on : Also serves as a version
	echo 2025-03-19-10-16-53
	echo
echo -------------------------========================-------------------------
echo "Remove aspell , hunspell , myspell"
	echo

	sudo apt-get remove aspell-am -y
	sudo apt-get remove aspell-ar-large -y
	sudo apt-get remove aspell-ar -y
	sudo apt-get remove aspell-bg -y
	sudo apt-get remove aspell-ca -y
	sudo apt-get remove aspell-cs -y
	sudo apt-get remove aspell-cy -y
	sudo apt-get remove aspell-da -y
	sudo apt-get remove aspell-de -y
	sudo apt-get remove aspell-el -y
	sudo apt-get remove aspell-en -y
	sudo apt-get remove aspell-eo -y
	sudo apt-get remove aspell-es -y
	sudo apt-get remove aspell-et -y
	sudo apt-get remove aspell-eu -y
	sudo apt-get remove aspell-fa -y
	sudo apt-get remove aspell-fr -y
	sudo apt-get remove aspell-ga -y
	sudo apt-get remove aspell-gl-minimos -y
	sudo apt-get remove aspell-he -y
	sudo apt-get remove aspell-hr -y
	sudo apt-get remove aspell-hu -y
	sudo apt-get remove aspell-is -y
	sudo apt-get remove aspell-it -y
	sudo apt-get remove aspell-kk -y
	sudo apt-get remove aspell-ku -y
	sudo apt-get remove aspell-lt -y
	sudo apt-get remove aspell-lv -y
	sudo apt-get remove aspell-nl -y
	sudo apt-get remove aspell-no -y
	sudo apt-get remove aspell-pl -y
	sudo apt-get remove aspell-pt-br -y
	sudo apt-get remove aspell-pt-pt -y
	sudo apt-get remove aspell-ro -y
	sudo apt-get remove aspell-ru -y
	sudo apt-get remove aspell-sk -y
	sudo apt-get remove aspell-sl -y
	sudo apt-get remove aspell-sv -y
	sudo apt-get remove aspell-tl -y
	sudo apt-get remove aspell-uk -y
	sudo apt-get remove aspell -y
	sudo apt-get remove hspell-gui -y
	sudo apt-get remove hspell -y
	sudo apt-get remove hunspell-ar -y
	sudo apt-get remove hunspell-be -y
	sudo apt-get remove hunspell-bg -y
	sudo apt-get remove hunspell-bs -y
	sudo apt-get remove hunspell-ca -y
	sudo apt-get remove hunspell-cs -y
	sudo apt-get remove hunspell-da -y
	sudo apt-get remove hunspell-de-at -y
	sudo apt-get remove hunspell-de-ch -y
	sudo apt-get remove hunspell-de-de -y
	sudo apt-get remove hunspell-el -y
	sudo apt-get remove hunspell-en-gb -y
	sudo apt-get remove hunspell-en-us -y
	sudo apt-get remove hunspell-eu -y
	sudo apt-get remove hunspell-fr-classical -y
	sudo apt-get remove hunspell-fr-revised -y
	sudo apt-get remove hunspell-fr -y
	sudo apt-get remove hunspell-gl-es -y
	sudo apt-get remove hunspell-gl -y
	sudo apt-get remove hunspell-gu -y
	sudo apt-get remove hunspell-hi -y
	sudo apt-get remove hunspell-hr -y
	sudo apt-get remove hunspell-hu -y
	sudo apt-get remove hunspell-id -y
	sudo apt-get remove hunspell-is -y
	sudo apt-get remove hunspell-it -y
	sudo apt-get remove hunspell-kk -y
	sudo apt-get remove hunspell-kmr -y
	sudo apt-get remove hunspell-ko -y
	sudo apt-get remove hunspell-lt -y
	sudo apt-get remove hunspell-lv -y
	sudo apt-get remove hunspell-ml -y
	sudo apt-get remove hunspell-ne -y
	sudo apt-get remove hunspell-nl -y
	sudo apt-get remove hunspell-pl -y
	sudo apt-get remove hunspell-pt-br -y
	sudo apt-get remove hunspell-pt-pt -y
	sudo apt-get remove hunspell-ro -y
	sudo apt-get remove hunspell-ru -y
	sudo apt-get remove hunspell-si -y
	sudo apt-get remove hunspell-sl -y
	sudo apt-get remove hunspell-sr -y
	sudo apt-get remove hunspell-sv-se -y
	sudo apt-get remove hunspell-sv -y
	sudo apt-get remove hunspell-te -y
	sudo apt-get remove hunspell-th -y
	sudo apt-get remove hunspell-vi -y
	sudo apt-get remove hunspell -y
	sudo apt-get remove ispell -y
	sudo apt-get remove libaspell15 -y
	sudo apt-get remove libgspell-1-2 -y
	sudo apt-get remove libgspell-1-common -y
	sudo apt-get remove libhfstospell11 -y
	sudo apt-get remove libhunspell-1.7-0 -y
	sudo apt-get remove myspell-eo -y
	sudo apt-get remove myspell-es -y
	sudo apt-get remove myspell-et -y
	sudo apt-get remove myspell-fa -y
	sudo apt-get remove myspell-ga -y
	sudo apt-get remove myspell-nb -y
	sudo apt-get remove myspell-nn -y
	sudo apt-get remove myspell-sk -y
	sudo apt-get remove myspell-sq -y
	sudo apt-get remove myspell-uk -y

echo
part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
echo "Will now run apt-get autoremove -y to remove associated files."
	echo
	echo   "${blue}	████████████████ START ████████████████ ${reset}"
	echo
	sudo apt-get autoremove -y

	echo
	echo  "${green}	████████████████ ALL OK / ALL REMOVED ████████████████ ${reset}"
	echo

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"
## Exit, wait or auto-quit.
## Simple function small bar to wait 3 sec.
	## Version 1.04
	## https://github.com/LostByteSoft
	## LostBytesSoft, lost byte softwares, because everything is ephemeral.
	## Part of code came from here https://github.com/rabb1t/spinners , Created by Pavel Raykov aka 'rabbit' / 2018-11-08 (c)

	functionsmallbar()
		{
		if [ "$debug" -eq 0 ]; then
			#echo
			width=40
			perc=0
			speed="0.1" # seconds
			inc="$(echo "100/${width}" | bc -ql)"
			#echo -n "	Wake Up.. 0% "
			echo -n "	Wait... "

			while [ $width -ge 0 ]; do
				printf "\e[0;93;103m%s\e[0m %.0f%%" "0" "${perc}"
				sleep $speed
				let width--
				perc="$(echo "${perc}+${inc}" | bc -ql)"
		
				if [ ${perc%%.*} -lt 10 ]; then
					printf "\b\b\b"
				else
					printf "\b\b\b\b"
				fi
			done
			echo
		else
			echo ${blue} ████████████████████ DEBUG BYPASS ALL BARS ████████████████████${reset}
		fi
		}

##-------------------------=========== SEPARATOR =============-------------------------
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
		echo "Pid : $id - RUNNING : $me"
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
