#!/bin/bash

chmod +x autoScript.sh
chmod +x update
chmod +x depnd
./depnd

mkdir ~/Programs
cd ..
mv autoScript ~/Programs
cd ~/Programs

git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxdumptool
make
make install
cd ..

git clone https://github.com/ZerBea/hcxtools.git
cd hcxtools
make
make install
cd ~/Programs/autoScript

chmod +x autoScript
sudo mv autoScript /bin/

mkdir Handshake
mkdir PMKID

sudo apt-get update
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo dpkg --configure -a
sudo apt-get update --fix-missing
sudo apt-get install -f
sudo apt-get update
apt-get install figlet -y
apt-get install libpcap -y
sudo apt-get install libssl-dev -y
sudo apt install zlib1g-dev -y
apt-get install libcurl4-openssl-dev -y
apt install hashcat -y
apt-get install aircrack-ng -y
apt-get install bc -y

rm install.sh
