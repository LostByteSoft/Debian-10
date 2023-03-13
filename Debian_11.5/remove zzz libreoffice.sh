#!/bin/bash
echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends libreoffice-core -y
sudo apt-get remove libreoffice-common -y

	echo Press ENTER key to exit !
	read name
	exit
