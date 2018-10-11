#!bin/bash

git clone https://github.com/Donegaan/prac4-hashes.git
#DES cracking
./hashcat.64 -m 1500 -a 3 -O ./descrypt.hashes ./wordlists