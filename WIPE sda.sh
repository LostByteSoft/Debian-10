echo "SDA, wipe mbr"
sudo dd if=/dev/zero of=/dev/sda bs=446 count=1 #*replace X with the target drive letter.
sleep 1
echo "wipe part with 0"
sudo dd if=/dev/zero of=/dev/sda bs=1M
sleep 30
exit
