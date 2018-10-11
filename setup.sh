#!/bin/bash

echo "Running setup"

sudo apt update
sudo apt upgrade
sudo apt-get install build-essential
sudo apt-get install linux-image-extra-virtual

echo "Installing NVIDIA driver"
sudo /bin/bash NVIDIA-g3.run

echo "Installing hashcat"
sudo apt install hashcat

hashcat -I

#get rockyou
ehco "getting rockyou"
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
echo "cloning hash repo"
git clone https://github.com/Donegaan/prac4-hashes.git

chmod +x descrypt.sh
chmod +x sha256.sh
chmod +x md5.sh
chmod +x sha512.sh
chmod +x pbk.sh