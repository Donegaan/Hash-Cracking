#!/bin/bash

echo "Running SHA256 hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 7400 -a 3 -O ./hashes/sha256.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 7400 -a 3 -O ./hashes/sha256.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 7400 -a 1 -O ./hashes/sha256.txt ./wordlists/four.txt ./wordlists/four.txt