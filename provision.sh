#!/bin/bash

echo "Checking for operating system updates..."
sudo apt-get -qq update

echo "Installing available operating system updates..."
sudo apt-get -qq upgrade && sudo apt-get -qq dist-upgrade

echo "Cleaning up old pacakges..."
sudo apt-get -qq autoremove

echo "Installing git..."
sudo apt-get -qq install git

echo "Cloning the plexupdate script to /opt..."
sudo git clone https://github.com/mrworf/plexupdate.git /opt/plexupdate

echo "Symlinking the plexupdate script to the PATH..."
sudo ln -s /opt/plexupdate/plexupdate.sh /usr/local/bin/plexupdate

echo "Installing Plex..."
sudo plexupdate -p -a
