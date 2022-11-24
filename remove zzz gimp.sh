#!/bin/bash
echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends gimp-data
sudo dpkg -r --force-depends gimp-help-common
sudo dpkg -r --force-depends gimp-help-sv
sudo dpkg -r --force-depends libgimp2.0
sudo dpkg -r --force-depends gimp
	echo Press ENTER key to exit !
	read name
	exit
