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

part=$((part+1))
echo "-------------------------===== Section $part =====-------------------------"

echo "Remove dictionnary ?"

	sudo dpkg -r --force-depends aspell
	sudo dpkg -r --force-depends dictionaries-common	## Does not want to remove
	sudo dpkg -r --force-depends hspell
	sudo dpkg -r --force-depends hspell-gui
	sudo dpkg -r --force-depends hunspell
	sudo dpkg -r --force-depends hunspell-ar
	sudo dpkg -r --force-depends hunspell-be
	sudo dpkg -r --force-depends hunspell-be
	sudo dpkg -r --force-depends hunspell-bg
	sudo dpkg -r --force-depends hunspell-bs
	sudo dpkg -r --force-depends hunspell-ca
	sudo dpkg -r --force-depends hunspell-cs
	sudo dpkg -r --force-depends hunspell-da
	sudo dpkg -r --force-depends hunspell-de-at
	sudo dpkg -r --force-depends hunspell-de-ch
	sudo dpkg -r --force-depends hunspell-de-de
	sudo dpkg -r --force-depends hunspell-el
	sudo dpkg -r --force-depends hunspell-en-gb
	sudo dpkg -r --force-depends hunspell-eu
	sudo dpkg -r --force-depends hunspell-fr
	sudo dpkg -r --force-depends hunspell-fr-classical
	sudo dpkg -r --force-depends hunspell-gl
	sudo dpkg -r --force-depends hunspell-gl-es
	sudo dpkg -r --force-depends hunspell-gu
	sudo dpkg -r --force-depends hunspell-hi
	sudo dpkg -r --force-depends hunspell-hr
	sudo dpkg -r --force-depends hunspell-hu
	sudo dpkg -r --force-depends hunspell-id
	sudo dpkg -r --force-depends hunspell-is
	sudo dpkg -r --force-depends hunspell-it
	sudo dpkg -r --force-depends hunspell-kk
	sudo dpkg -r --force-depends hunspell-kmr
	sudo dpkg -r --force-depends hunspell-ko
	sudo dpkg -r --force-depends hunspell-lt
	sudo dpkg -r --force-depends hunspell-lv
	sudo dpkg -r --force-depends hunspell-ml
	sudo dpkg -r --force-depends hunspell-ne
	sudo dpkg -r --force-depends hunspell-nl
	sudo dpkg -r --force-depends hunspell-pl
	sudo dpkg -r --force-depends hunspell-pt-br
	sudo dpkg -r --force-depends hunspell-pt-pt
	sudo dpkg -r --force-depends hunspell-ro
	sudo dpkg -r --force-depends hunspell-ru
	sudo dpkg -r --force-depends hunspell-si
	sudo dpkg -r --force-depends hunspell-sl
	sudo dpkg -r --force-depends hunspell-sr
	sudo dpkg -r --force-depends hunspell-sv
	sudo dpkg -r --force-depends hunspell-sv-se
	sudo dpkg -r --force-depends hunspell-te
	sudo dpkg -r --force-depends hunspell-th
	sudo dpkg -r --force-depends hunspell-vi
	sudo dpkg -r --force-depends hyphen-de
	sudo dpkg -r --force-depends hyphen-hr
	sudo dpkg -r --force-depends hyphen-hu
	sudo dpkg -r --force-depends hyphen-lt
	sudo dpkg -r --force-depends iamerican
	sudo dpkg -r --force-depends ibrazilian
	sudo dpkg -r --force-depends ibritish
	sudo dpkg -r --force-depends ibulgarian
	sudo dpkg -r --force-depends icatalan
	sudo dpkg -r --force-depends idanish
	sudo dpkg -r --force-depends idanish
	sudo dpkg -r --force-depends idutch
	sudo dpkg -r --force-depends ienglish-common
	sudo dpkg -r --force-depends ifrench-gut
	sudo dpkg -r --force-depends igerman
	sudo dpkg -r --force-depends ihungarian
	sudo dpkg -r --force-depends iitalian
	sudo dpkg -r --force-depends ilithuanian
	sudo dpkg -r --force-depends ingerman
	sudo dpkg -r --force-depends inorwegian
	sudo dpkg -r --force-depends ipolish
	sudo dpkg -r --force-depends iportuguese
	sudo dpkg -r --force-depends irussian
	sudo dpkg -r --force-depends ispanish
	sudo dpkg -r --force-depends ispell			## Does not want to remove
	sudo dpkg -r --force-depends iswiss
	sudo dpkg -r --force-depends libhunspell-1.7-0		## Does not want to remove
	sudo dpkg -r --force-depends myspell-eo
	sudo dpkg -r --force-depends myspell-es
	sudo dpkg -r --force-depends myspell-et
	sudo dpkg -r --force-depends myspell-fa
	sudo dpkg -r --force-depends myspell-ga
	sudo dpkg -r --force-depends myspell-he
	sudo dpkg -r --force-depends myspell-nb
	sudo dpkg -r --force-depends myspell-nn
	sudo dpkg -r --force-depends myspell-sk
	sudo dpkg -r --force-depends myspell-sq
	sudo dpkg -r --force-depends myspell-uk
	sudo dpkg -r --force-depends mythes-cs
	sudo dpkg -r --force-depends mythes-de
	sudo dpkg -r --force-depends mythes-de-ch
	sudo dpkg -r --force-depends mythes-fr
	sudo dpkg -r --force-depends mythes-it
	sudo dpkg -r --force-depends mythes-ne
	sudo dpkg -r --force-depends mythes-pl
	sudo dpkg -r --force-depends mythes-ru
	sudo dpkg -r --force-depends mythes-sk
	sudo dpkg -r --force-depends wamerican
	sudo dpkg -r --force-depends wbrazilian
	sudo dpkg -r --force-depends wbulgarian
	sudo dpkg -r --force-depends wcatalan
	sudo dpkg -r --force-depends wdanish
	sudo dpkg -r --force-depends wdutch
	sudo dpkg -r --force-depends wfrench
	sudo dpkg -r --force-depends witalian
	sudo dpkg -r --force-depends wngerman
	sudo dpkg -r --force-depends wnorwegian
	sudo dpkg -r --force-depends wpolish
	sudo dpkg -r --force-depends wportuguese
	sudo dpkg -r --force-depends wspanish
	sudo dpkg -r --force-depends wswedish
	## sudo dpkg -r --force-depends hunspell-en-us		## Need at least one language

echo -------------------------========================-------------------------
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
