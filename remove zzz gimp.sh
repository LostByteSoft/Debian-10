echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends gimp-data
sudo dpkg -r --force-depends gimp-help-common
sudo dpkg -r --force-depends gimp-help-sv
sudo dpkg -r --force-depends gimp
sudo dpkg -r --force-depends libgimp2.0
echo sleep 30
sleep 30
exit
