#!/bin/bash
#Test the module if wanted
while true; do
    read -p "Please connect a dongle,  enter y to test, n to exit (y or n)" yn
    case $yn in
        [Yy]* ) R=$(rtl_test -t 2>&1|grep gain); break;;
        [Nn]* ) exit;;
        * ) echo "Please answer y or n.";;
    esac
done

if [ -z "$R" ]
then
echo -e '\E[1;32m'"\033[1mTest FAIL\033[0m"
echo -e '\E[1;31m'"\033[1mThere was a problem with the dongle, low power? wierd stick pids? bad permissions? no reboot?\nMake a github report with this info:\033[0m"
#Run lsusb to show dongle information
lsusb
rtl_test -t
else
echo -e '\E[1;32m'"\033[1mTest PASS\033[0m"
echo -e '\E[1;32m'"\033[1mCongratulations, the dongle is working as a normal user, you are ready to Rock!\033[0m"
echo -e '\E[1;32m'"\033[1mBelow is information about the dongle:\033[0m"
rtl_test -t
fi
