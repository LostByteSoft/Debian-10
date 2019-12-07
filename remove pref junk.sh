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
exit
