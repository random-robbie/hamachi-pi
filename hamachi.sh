#!/bin/bash
set -euo pipefail

echo "Updating package lists..."
sudo apt-get update

echo "Installing required packages (LSB)..."
sudo apt-get install -y --fix-missing lsb lsb-core

echo "Downloading Hamachi (ARM HF beta v2.1.0.203‑1)..."
wget https://www.vpn.net/installers/logmein-hamachi_2.1.0.203-1_armhf.deb

echo "Installing Hamachi package..."
sudo dpkg -i logmein-hamachi_2.1.0.203-1_armhf.deb || sudo apt-get install -f -y

echo "Starting Hamachi daemon..."
sudo /etc/init.d/logmein-hamachi start

echo "Ensuring Hamachi starts on boot..."
sudo update-rc.d logmein-hamachi defaults

echo "Logging into Hamachi..."
sudo hamachi login

echo "Enter your LogMeIn account email address:"
read -r email
sudo hamachi attach "$email"

echo "Enter your Raspberry Pi nickname:"
read -r nick
sudo hamachi set-nick "$nick"

echo "Installation complete — your Pi should now appear on your Hamachi network."
