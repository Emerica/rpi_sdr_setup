# rpi_sdr_setup

How to use:


Boot your raspberry pi to the shell or the desktop, connect it to the internet
If using  the desktop, open a terminal window from the applications menu,

copy&paste/type the following into the terminal and hit enter:
-------------------------

sudo apt-get install git

-------------------------

Now it's time to download these RTL-SDR install  scripts from Github:

copy&paste/type the following into the terminal and hit enter:
-------------------------

git clone https://github.com/Emerica/rpi_sdr_setup.git

-------------------------



Git should download the scripts to a folder called rpi_sdr_setup
now we can change directory to rpi_sdr_setup
copy&paste/type the following into the terminal and hit enter:
-------------------------

cd rpi_sdr_setup

-------------------------



Now it's time to run the setup script, at the end of the script it will as you to reboot,
Please reboot and re-open a new terminal.

copy&paste/type the following into the terminal and hit enter:
-------------------------

./setup.sh

-------------------------



Once you have rebooted, you can open a new terminal and change back into the rpi_sdr_setup directory
copy&paste/type the following into the terminal and hit enter:
-------------------------

cd rpi_sdr_setup

-------------------------




Now it's time to test the setup:

copy&paste/type the following into the terminal and hit enter:
-------------------------

./test.sh

-------------------------




You should be greeted with a prompt to insert the dongle, and you will get a test PASS or FAIL, with information in either case.


