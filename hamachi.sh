#!/bin/bash
echo "installing requirements"
sudo apt-get update
sudo apt-get -y install --fix-missing lsb lsb-core
echo "Downloading Hamachi"
sudo wget https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_armhf.deb
echo "Install Hamachi"
dpkg -i logmein-hamachi_2.1.0.203-1_armhf.deb
/etc/init.d/logmein-hamachi start
echo "installing chkconfig"
sudo apt-get -y install chkconfig
sudo  chkconfig -s logmein-hamachi 2
echo "starting hamachi"
sudo hamachi login
echo "please enter your logmein account email address"
read email
sudo hamachi attach $email
echo "please enter your raspberry pi nickname "
read nick
sudo hamachi set-nick $nick
echo "your pi should now be on your hamachi network"
