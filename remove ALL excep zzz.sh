echo "Remove junk accessoires"
sudo apt-get remove goldendict -y &&
sudo apt-get remove gnote -y &&
sudo apt-get remove yelp -y &&
sudo apt-get remove khmerconverter -y &&
sudo apt-get remove debian-reference-common -y &&
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
echo "Remove junk audio"
sudo apt remove totem -y &&
sudo apt remove brasero -y &&
sudo apt remove cheese -y &&
sudo apt remove sound-juicer -y &&
sudo apt remove gnome-sound-recorder -y &&
echo "Remove junk games"
sudo apt remove gnome-robots -y &&
sudo apt remove gnome-chess -y &&
sudo apt remove aisleriot -y &&
sudo apt remove five-or-more -y &&
sudo apt remove gnome-mahjongg -y &&
sudo apt remove tali -y &&
sudo apt remove four-in-a-row -y &&
sudo apt remove gnome-klotski -y &&
sudo apt remove gnome-mines -y &&
sudo apt remove gnome-nibbles -y &&
sudo apt remove gnome-sudoku -y &&
sudo apt remove gnome-taquin -y &&
sudo apt remove gnome-tetravex -y &&
sudo apt remove hitori -y &&
sudo apt remove lightsoff -y &&
sudo apt remove quadrapassel -y &&
sudo apt remove swell-foop -y &&
sudo apt remove iagno -y &&
echo "Remove junk graphics"
sudo apt remove eog -y &&
sudo apt remove simple-scan -y &&
sudo apt remove shotwell -y &&
sudo apt remove inkscape -y &&
sudo apt remove imagemagick -y &&
sudo apt remove imagemagick-6-common -y &&
sudo apt remove imagemagick-6.q16 -y &&
sudo apt remove libmagickcore-6.q16-6 -y &&
sudo apt remove libmagickwand-6.q16-6 -y &&
sudo apt remove gimp -y &&
echo "Remove junk internet"
sudo apt-get remove pidgin -y &&
sudo apt-get remove thunderbird -y &&
sudo apt-get remove hexchat -y &&
sudo apt-get remove transmission-gtk -y &&
sudo apt-get remove vinagre -y &&
echo "Remove junk preferences"
killall -9 uim
sudo apt-get remove anthy -y &&
sudo apt-get remove kasumi -y &&
sudo apt-get remove uim -y &&
sudo apt-get remove uim-data -y &&
sudo apt-get remove uim-mozc -y &&
sudo apt-get remove uim-xim -y &&
sudo apt-get remove im-config -y &&
sudo apt-get remove mozc-data -y &&
sudo apt-get remove mozc-utils-gui -y &&
sudo apt-get remove ibus -y &&
sudo apt-get remove ibus-clutter -y &&
sudo apt-get remove fcitx-config-common -y &&
sudo apt-get remove blueman -y &&
# apt-cache depends ?????
sudo apt-get remove hunspell -y &&
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
echo "Finish... wait 10 sec"
sleep 10
exit
