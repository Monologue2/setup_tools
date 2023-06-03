#!/bin/bash

add-apt-repository ppa:graphics-drivers/ppa
apt-get update

ubuntu-drivers devices

echo "Enter the Your version(Ex. 525-server / 525) : "
read VERSION

apt-get -y install nvidia-driver-$VERSION
echo "Done, Please Reboot now"