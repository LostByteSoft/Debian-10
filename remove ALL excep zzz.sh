#!/bin/bash
#!/usr/bin/ffmpeg
## -----===== Start of bash =====-----
	#printf '\033[8;40;75t'		# will resize the window, if needed.
	printf '\033[8;50;200t'	# will resize the window, if needed.
echo -------------------------========================-------------------------
## Software lead in
	start=$SECONDS
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo
	echo Version compiled on : Also serves as a version
	echo 2022-01-30_Sunday_06:11:10
echo -------------------------========================-------------------------
echo "Remove ALL junk and unused files"
echo "By LostBytesSoft"
echo "Optimized For Debian Cinnamon 11.2"
echo "Version 2022-02-02"
echo -------------------------========================-------------------------
echo Press enter to continue or X to quit.
read name
echo "Remove junk accessoires"
sudo apt-get remove deja-dup -y
sudo apt-get remove gnome-firmware -y
sudo apt-get remove goldendict -y &&
sudo apt-get remove gnote -y &&
sudo apt-get remove yelp -y &&
sudo apt-get remove khmerconverter -y &&
sudo apt-get remove debian-reference-common -y &&
echo -------------------------========================-------------------------
echo "Remove junk audio"
sudo apt-get remove totem -y &&
sudo apt-get remove brasero -y &&
sudo apt-get remove brasero-common -y &&
sudo apt-get remove cheese -y &&
sudo apt-get remove sound-juicer -y &&
sudo apt-get remove gnome-sound-recorder -y &&
echo -------------------------========================-------------------------
echo "Remove junk games"
sudo apt-get remove gnome-robots -y &&
sudo apt-get remove gnome-chess -y &&
sudo apt-get remove aisleriot -y &&
sudo apt-get remove five-or-more -y &&
sudo apt-get remove gnome-mahjongg -y &&
sudo apt-get remove tali -y &&
sudo apt-get remove four-in-a-row -y &&
sudo apt-get remove gnome-klotski -y &&
sudo apt-get remove gnome-mines -y &&
sudo apt-get remove gnome-nibbles -y &&
sudo apt-get remove gnome-2048 -y &&
sudo apt-get remove gnome-sudoku -y &&
sudo apt-get remove gnome-taquin -y &&
sudo apt-get remove gnome-tetravex -y &&
sudo apt-get remove hitori -y &&
sudo apt-get remove lightsoff -y &&
sudo apt-get remove quadrapassel -y &&
sudo apt-get remove swell-foop -y &&
sudo apt-get remove iagno -y &&
echo -------------------------========================-------------------------
echo "Remove junk graphics"
sudo apt-get remove eog -y &&
sudo apt-get remove simple-scan -y &&
sudo apt-get remove shotwell -y &&
sudo apt-get remove inkscape -y &&
echo apt-get remove imagemagick -y &&
echo apt-get remove imagemagick-6-common -y &&
echo sudo apt-get remove imagemagick-6.q16 -y &&
echo sudo apt-get remove libmagickcore-6.q16-6 -y &&
echo sudo apt-get remove libmagickwand-6.q16-6 -y &&
echo -------------------------========================-------------------------
echo "Remove junk internet"
sudo apt-get remove pidgin -y &&
sudo apt-get remove thunderbird -y &&
sudo apt-get remove hexchat -y &&
sudo apt-get remove transmission-gtk -y &&
sudo apt-get remove remmina -y &&
sudo apt-get remove vinagre -y &&
echo -------------------------========================-------------------------
echo "Remove junk Office"
sudo apt-get remove fbreader -y &&
echo -------------------------========================-------------------------
echo "Remove junk preferences"
sudo apt-get remove anthy -y &&
sudo apt-get remove kasumi -y &&
echo -------------------------========================-------------------------
echo "Remove junk system"
killall -9 uim
sudo apt-get remove uim -y &&
sudo apt-get remove uim-data -y &&
sudo apt-get remove uim-mozc -y &&
sudo apt-get remove uim-xim -y &&
sudo apt-get remove im-config -y &&
sudo apt-get remove mozc-data -y &&
sudo apt-get remove mozc-utils-gui -y &&
sudo apt-get remove ibus -y &&		# problem in terminal
sudo apt-get remove ibus-clutter -y &&	# problem in terminal
sudo apt-get remove fcitx -y &&
sudo apt-get remove fcitx5 -y &&
sudo apt-get remove fcitx-bin -y &&
sudo apt-get remove fcitx-data -y &&
sudo apt-get remove fcitx-module-dbus -y &&
sudo apt-get remove libfcitx-utils0 -y &&
sudo apt-get remove fcitx-config-common -y &&
sudo apt-get remove blueman -y &&
sudo apt-get remove hunspell -y &&
sudo apt-get remove aspell -y &&
sudo apt-get remove eject -y &&
sudo apt-get remove vino -y &&
sudo apt-get remove texlive-base -y
echo -------------------------========================-------------------------
echo "Remove junk administration"
sudo apt-get remove gnome-software -y &&
sudo apt-get remove xterm -y &&
sudo apt-get remove mlterm-common -y &&
sudo apt-get remove mlterm -y &&
sudo apt-get remove mlterm-tiny -y &&
sudo apt-get remove xiterm+thai -y &&
sudo apt-get remove malcontent -y &&
echo -------------------------========================-------------------------
echo autoremove unused associated files.
sudo apt-get autoremove -y
echo -------------------------========================-------------------------
## Software lead out.
	echo "Finish..."
	echo "This script take $(( SECONDS - start )) seconds to complete."
	date=$(date -d@$(( SECONDS - start )) -u +%H:%M:%S)
	echo "Time needed: $date"
	now=$(date +"%Y-%m-%d_%A_%I:%M:%S")
	echo "Current time : $now"
	echo Press ENTER key to exit !
	read name
	exit

echo --- End of bash ---
