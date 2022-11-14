#!/bin/bash
#!/usr/bin/ffmpeg
echo "https://techpiezo.com/linux/remove-a-package-without-removing-its-dependencies-in-ubuntu/"
sudo dpkg -r --force-depends rhythmbox-plugins
sudo dpkg -r --force-depends rhythmbox
echo sleep 30
sleep 30
exit
