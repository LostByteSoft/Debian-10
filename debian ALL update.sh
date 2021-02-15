echo -------------------------
echo "LostBytesSoft"
echo "Auto updater for Debian 10"
echo "Version 2021-01-18"
echo -------------------------
sudo apt update -y
echo -------------------------
sudo apt upgrade -y
echo -------------------------
echo "Autoremove no longer used files"
sudo apt-get autoremove -y
echo -------------------------
sleep 2
exit
