#!/bin/bash
chmod +x ./test.sh

#change to the home dir
cd ~

#Get needed libraries for install
sudo apt-get install git cmake libusb-1.0-0.dev build-essential

#Download the rtl-sdr stack from github
git clone git://git.osmocom.org/rtl-sdr.git

#Change directory to pulled github repo
cd rtl-sdr/

#Make a buld directory
mkdir build

#Go into the buld directory
cd build

#Start cmake configuration
cmake ../ -DINSTALL_UDEV_RULES=ON

#Start the compile process
make

#Install it globally
sudo make install

#Update shared library linking
sudo ldconfig

#restart udev
sudo service udev restart

#Add the module to the blacklist
echo "blacklist dvb_usb_rtl28xxu" | sudo tee -a /etc/modprobe.d/blacklist.conf

#Test the module if wanted
while true; do
    read -p "Ready to reboot,  enter y to reboot, n to exit (y or n)" yn
    case $yn in
        [Yy]* ) sudo reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer y or n.";;
    esac
done

