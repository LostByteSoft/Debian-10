echo "Remove junk graphics"
sudo apt remove eog -y &&
sudo apt remove shotwell -y &&
sudo apt remove inkscape -y &&
sudo apt remove imagemagick -y &&
sudo apt remove imagemagick-6-common -y &&
sudo apt remove imagemagick-6.q16 -y &&
sudo apt remove libmagickcore-6.q16-6 -y &&
sudo apt remove libmagickwand-6.q16-6 -y &&
sudo apt remove gimp -y &&
exit
