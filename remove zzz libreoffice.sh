start=$SECONDS
echo "remove libre office"
sudo apt-get remove evince -y
sudo apt-get remove libreoffice-core -y
sudo apt-get remove libreoffice-common -y
sudo apt-get remove libreoffice-nogui -y
sudo apt-get remove libreoffice-core-nogui -y
sleep 1
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
sudo apt-get remove hunspell-fr -y
sudo apt-get remove hunspell-fr-classical -y
sudo apt-get remove hunspell-gl -y
sudo apt-get remove hunspell-gl-es -y
sudo apt-get remove hunspell-gu -y
sudo apt-get remove hunspell-hi -y
sudo apt-get remove hunspell-hr -y
sudo apt-get remove hunspell-hu -y
sudo apt-get remove hunspell-id -y
sudo apt-get remove hunspell-is -y
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
sudo apt-get remove hunspell-sv -y
sudo apt-get remove hunspell-sv-se -y
sudo apt-get remove hunspell-te -y
sudo apt-get remove hunspell-th -y
sudo apt-get remove hunspell-vi -y
sudo apt-get remove hunspell-kmr -y
sudo apt-get remove hunspell-ko -y
sleep 1
sudo apt-get autoremove -y
echo -----------------------------------------------------------------------------
echo "Finish... This script take $(( SECONDS - start )) seconds to complete"
sleep 30
exit
# --- End of file ---

