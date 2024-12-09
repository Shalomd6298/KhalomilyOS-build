#!/bin/sh


# This script has all necessary commands needed to run the OS 
# Ubuntu 24.04 LTS VM was used for the development and testing of the OS

sudo apt update
apt install unzip
sudo apt-get install build-essential
sudo apt install nasm
sudo apt install qemu-system

# script to build the image
sh build-linux.sh

# using the -nographic flag to circumvent the 'GTK initalization failed' error
qemu-system-i386 -drive format=raw,file=disk_images/mikeos.flp,index=0,if=floppy -nographic
