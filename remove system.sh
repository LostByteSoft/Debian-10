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
sudo apt-get remove ibus-clutter -y &&
sudo apt-get remove fcitx-config-common -y &&
sudo apt-get remove blueman -y &&
sudo apt-get remove hunspell -y &&
sudo apt-get remove aspell -y &&
sudo apt-get remove eject -y &&
sudo apt-get remove vino -y &&
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
echo "Finish... wait 1 sec"
sleep 1
exit
