echo --- start of file ---
#!/bin/bash
printf '\033[8;50;175t'		# will resize the window
echo -----------------------------------------------------------------------------
echo "Remove ALL unused files"
echo "By LostBytesSoft"
echo "Version 2021-02-27"
echo -----------------------------------------------------------------------------
echo "Remove junk accessoires"
sudo apt-get remove goldendict -y &&
sudo apt-get remove gnote -y &&
sudo apt-get remove yelp -y &&
sudo apt-get remove khmerconverter -y &&
sudo apt-get remove debian-reference-common -y &&
echo -----------------------------------------------------------------------------
echo "Remove junk administration"
sudo apt-get remove fcitx -y &&
sudo apt-get remove fcitx-bin -y &&
sudo apt-get remove fcitx-data -y &&
sudo apt-get remove xterm -y &&
sudo apt-get remove mlterm-common -y &&
sudo apt-get remove mlterm -y &&
sudo apt-get remove mlterm-tiny -y &&
sudo apt-get remove xiterm+thai -y &&
sudo apt-get remove malcontent -y &&
echo -----------------------------------------------------------------------------
echo "Remove junk audio"
sudo apt-get remove totem -y &&
sudo apt-get remove brasero -y &&
sudo apt-get remove cheese -y &&
sudo apt-get remove sound-juicer -y &&
sudo apt-get remove gnome-sound-recorder -y &&
echo -----------------------------------------------------------------------------
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
echo -----------------------------------------------------------------------------
echo "Remove junk graphics"
sudo apt-get remove eog -y &&
sudo apt-get remove simple-scan -y &&
sudo apt-get remove shotwell -y &&
sudo apt-get remove inkscape -y &&
sudo apt-get remove imagemagick -y &&
sudo apt-get remove imagemagick-6-common -y &&
sudo apt-get remove imagemagick-6.q16 -y &&
sudo apt-get remove libmagickcore-6.q16-6 -y &&
sudo apt-get remove libmagickwand-6.q16-6 -y &&
# sudo apt-get remove gimp -y &&
# sudo apt-get remove gimp-help-common -y &&
echo "Remove junk internet"
sudo apt-get remove pidgin -y &&
sudo apt-get remove thunderbird -y &&
sudo apt-get remove hexchat -y &&
sudo apt-get remove transmission-gtk -y &&
sudo apt-get remove remmina -y &&
sudo apt-get remove vinagre -y &&
echo -----------------------------------------------------------------------------
echo "Remove junk preferences"
sudo apt-get remove anthy -y &&
sudo apt-get remove kasumi -y &&
echo -----------------------------------------------------------------------------
echo "Remove junk system"
killall -9 uim
sudo apt-get remove uim -y &&
sudo apt-get remove uim-data -y &&
sudo apt-get remove uim-mozc -y &&
sudo apt-get remove uim-xim -y &&
sudo apt-get remove im-config -y &&
sudo apt-get remove mozc-data -y &&
sudo apt-get remove mozc-utils-gui -y &&
# sudo apt-get remove ibus -y &&		# problem in terminal
# sudo apt-get remove ibus-clutter -y &&
# sudo apt-get remove fcitx-config-common -y &&
sudo apt-get remove blueman -y &&
sudo apt-get remove hunspell -y &&
sudo apt-get remove aspell -y &&
sudo apt-get remove eject -y &&
sudo apt-get remove vino -y &&
echo -----------------------------------------------------------------------------
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
echo "Finish... wait 1 sec"
echo -----------------------------------------------------------------------------
sleep 1
exit
