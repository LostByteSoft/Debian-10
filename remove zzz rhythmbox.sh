#!/bin/bash
echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends rhythmbox-plugins
sudo dpkg -r --force-depends rhythmbox
	echo Press ENTER key to exit !
	read name
	exit
