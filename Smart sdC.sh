echo "e2fsck -c /dev/sdc"
sudo unmount sdc
sudo e2fsck -c /dev/sdc
echo "FInish..."
echo Press ENTER key to exit !
read name
exit
