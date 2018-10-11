#!/bin/bash

echo "Running pbk hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 500 -a 3 -O ./hashes/pbk.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 500 -a 3 -O ./hashes/pbk.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 500 -a 1 -O ./hashes/pbk.txt ./wordlists/four.txt ./wordlists/four.txt