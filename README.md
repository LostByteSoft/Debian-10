# Debian junk remover...

Debian remove junk.
--------------------------------------------------------------------

Debian have some junk software installed by default.

I use Debian:

	debian-live-11.11.0-amd64-cinnamon.iso
	debian-live-12.10.0-amd64-cinnamon.iso
	debian-live-testing-amd64-cinnamon.iso


Debian is easy to use and really stable.

Debian junk remover. Sh script to remove junk or bloatware softwares. Remove about 1 gb of data.

Just run *.sh file and remove bloatwares automatically.

The file to use is " remove ALL deb 1X.X excep zzz.sh ".


	-I update this file if i detect issues.
	
	THIS IS NOT AN AGRESSIVE REMOVE. ONLY REMOVES SOFTWARES WITH LITTLE USE.

	ZZZ are more agressives.

Others remove files are for YOUR purpose if you really want to remove theses programs.

This software is useful if you want to create a server and avoid unnecessary updates.

Files included in folder.
--------------------------------------------------------------------

	-apt-get_auto_remove.sh
		auto removes orphelin unused files.
	
	-apt-get_fix_broken.sh
		Fix broken dependancies.
	
	-README.md
		This file.

	-search_and_create.sh
		Search for specific softwares ans associated files.


Search for specific files.
--------------------------------------------------------------------

	-search and create.sh
		Search for an installed program.
	
	Exectue and write anything "ex: vlc". This will give you 2 files.
		installed.txt
			-vlc/stable,now 3.0.21-0+deb12u1 amd64 [installed]
		corrected.sh
			-vlc

	Add MANUALLY sudo apt-get remove before vlc (and other lines) in the file corrected.sh
		-Execute file corrected.sh and remove your software.

--------------------------------------------------------------------

# Files: /subfolder/Debian_13.X

I DO NOT SUGGEST THAT YOU USE FILES NAMED ZZZ

remove ALL deb 13.X excep zzz.sh

	-script to remove some bloatwares includes with Debian 13.X

	-remove zzz evince.sh
		Remove evince.

	-remove zzz fcitx (beta).sh
		i have some problems now !

	-remove zzz firefox-esr.sh
		Remove Firefox
	
	-remove zzz ibus (beta).sh

	-remove zzz libreoffice.sh
	
	-remove zzz rhythmbox

	-remove zzz spelldictionnary.sh
		A new file to remove spell dictionnary (beta)

ZZZ files work but cause a lot of errors.

--------------------------------------------------------------------

# Files: /subfolder/Debian_12.X

I DO NOT SUGGEST THAT YOU USE FILES NAMED ZZZ

remove ALL deb 12.X excep zzz.sh

	-script to remove some bloatwares includes with Debian 12.X

	-remove zzz evince.sh
		Remove evince.

	-remove zzz fcitx (beta).sh
		i have some problems now !

	-remove zzz firefox-esr.sh
		Remove Firefox
	
	-remove zzz ibus (beta).sh

	-remove zzz libreoffice.sh
	
	-remove zzz rhythmbox

	-remove zzz spelldictionnary.sh
		A new file to remove spell dictionnary (beta)

ZZZ files work but cause a lot of errors.

--------------------------------------------------------------------

# Files: /subfolder/Debian_11.X

I DO NOT SUGGEST THAT YOU USE FILES NAMED ZZZ

remove ALL deb 11.X excep zzz.sh

	-script to remove some bloatwares includes with Debian 11.X

	-remove zzz evince.sh
		Remove evince.

	-remove zzz fcitx (beta).sh
		i have some problems now !

	-remove zzz firefox-esr.sh
		Remove Firefox
	
	-remove zzz ibus (beta).sh

	-remove zzz libreoffice.sh
	
	-remove zzz rhythmbox

	-remove zzz spelldictionnary.sh
		A new file to remove spell dictionnary (beta)

ZZZ files work but cause a lot of errors.

License
--------------------------------------------------------------------

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

--------------------------------------------------------------------
 --- End of file ---

