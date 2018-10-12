#!/bin/bash

echo "Running MD5crypt hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 500 -a 0 -O -w 4 ./hashes/md5.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 500 -a 3 -O -w 4 ./hashes/md5.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 500 -a 1 -O -w 4 ./hashes/md5.txt ./wordlists/four.txt ./wordlists/four.txt