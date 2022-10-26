echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends rhythmbox-plugins -y
sudo dpkg -r --force-depends rhythmbox -y
echo sleep 30
sleep 30
exit
