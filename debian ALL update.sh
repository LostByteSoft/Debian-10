echo -------------------------
echo "LostBytesSoft"
echo "Auto updater for Debian 10"
echo "Version 2020-02-26"
sudo apt update -y
sudo apt upgrade -y
echo -------------------------
sleep 2
echo "LostBytesSoft"
echo "Version 2020-02-26"
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
echo -------------------------
sleep 2
exit
