echo --- Start of file ---
#!/bin/bash
echo -----------------------------------------------------------------------------
echo "WIPE SDE"
echo "By LostByteSoft"
echo "https://github.com/LostByteSoft"
echo "Version 2021-03-03"
echo -----------------------------------------------------------------------------
sleep 1
echo Press ENTER key to wipe mbr! You can quit after this process.
read name
echo -----------------------------------------------------------------------------
echo "SDE, wipe mbr"
sudo dd if=/dev/zero of=/dev/sde bs=446 count=1 #*replace X with the target drive letter.
echo -----------------------------------------------------------------------------
sleep 1
echo Press ENTER key to wipe ALL surface disk, TAKES very long!
read name
echo -----------------------------------------------------------------------------
echo "wipe part with 0"
sudo dd if=/dev/zero of=/dev/sde bs=1M
echo -----------------------------------------------------------------------------
sleep 10		#A little wait here to wait the writing process
echo Writing process finish without errors... Ready to eject !
echo Press ENTER key to exit !
read name
exit
echo --- End of file ---
