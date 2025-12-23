#!/bin/bash
# install.sh
# general installation script

echo "Downloading dump1090";

cd ../
git clone https://github.com/flightaware/dump1090 dump1090
cd dump1090
make

echo "Installing python requirements";
pip3 install virtualenv
sudo /usr/bin/easy_install virtualenv

virtualenv env && . env/bin/activate

cd src
pip3 install -r requirements.txt


echo "Installation complete";
