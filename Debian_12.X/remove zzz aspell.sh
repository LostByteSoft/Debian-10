#!/bin/bash
#!/usr/bin/ffmpeg
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%H:%M:%S")

echo -------------------------===== Start of bash ====-------------------------
	#printf '\033[8;40;90t'		# will resize the window, if needed.
	printf '\033[8;50;125t'		# will resize the window, if needed.
	#printf '\033[8;40;130t'	# will resize the window, if needed.
	
	red=`tput setaf 1`
	green=`tput setaf 2`
	yellow=`tput setaf 11`
	blue=`tput setaf 12`
	reset=`tput sgr0`

	## All variables 0 or 1
	autoquit=0	# autoquit anyway to script takes LESS than 2 min to complete. (0 or 1, change in conjoncture noquit=0)
	debug=0		# test debug. (0 or 1 debug mode)
	error=0		# test error. (0 or 1 make error)
	part=0		# don't change this value. (0)
	noquit=1	# No quit after all operations. (0 or 1 noquit)
	wol=1		# Wake on lan skip. (0 or 1 skip)
	random=$(shuf -i 4096-131072 -n 1)	# Used for temp folders. A big number hard to guess for security reasons.
	## random=$RANDOM	# Normal random number.
	
	echo
	echo "Software lead-in. LostByteSoft ; https://github.com/LostByteSoft"
	echo
	echo "NEVER remove dual ## in front of lines. Theses are code annotations."
	echo "You can test / remove single # for testing purpose."
	echo
	echo "Current time : $now"
	echo
	echo "Common variables, you can changes theses variables as you wish to test."
	echo "Debug data : autoquit=$autoquit debug=$debug error=$error part=$part noquit=$noquit wol=$wol random=$random"
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
	echo 2025-02-20-12-30-57
	echo
echo -------------------------========================-------------------------

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

echo -------------------------========================-------------------------
## Software lead out
	echo "Finish... with numbers of actions : $part"
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
echo -------------------------===== End of Bash ======-------------------------
		echo
		echo "${blue}	█████████████████ NO exit activated ███████████████████${reset}"
		echo
		read -n 1 -s -r -p "Press ENTER key to exit !"
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
