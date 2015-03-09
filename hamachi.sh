#!/bin/bash
echo "installing requirements"
sudo apt-get update
sudo apt-get -y install --fix-missing lsb lsb-core
echo "Downloading Hamachi"
sudo wget https://secure.logmein.com/labs/logmein-hamachi-2.1.0.139-armel.tgz
echo "extracting Hamachi"
tar xzvf logmein-hamachi-2.1.0.139-armel.tgz
cd log*
echo "installing hamachi"
sudo ./install.sh
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
