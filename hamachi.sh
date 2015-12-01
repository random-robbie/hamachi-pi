#!/bin/bash
echo "installing requirements"
sudo apt-get update
sudo apt-get -y install --fix-missing lsb lsb-core
echo "Downloading Hamachi"
sudo wget https://secure.logmein.com/labs/logmein-hamachi_2.1.0.139-1_amd64.deb
echo "Install Hamachi"
dpkg -i logmein-hamachi_2.1.0.139-1_amd64.deb
echo "starting hamachi"
sudo hamachi login
echo "please enter your logmein account email address"
read email
sudo hamachi attach $email
echo "please enter your raspberry pi nickname "
read nick
sudo hamachi set-nick $nick
echo "your pi should now be on your hamachi network"
