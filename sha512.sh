#!/bin/bash

echo "Running SHA512 hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 1800 -a 3 -O ./hashes/des.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 1800 -a 3 -O ./hashes/des.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 1800 -a 1 -O ./hashes/des.txt ./wordlists/four.txt ./wordlists/four.txt