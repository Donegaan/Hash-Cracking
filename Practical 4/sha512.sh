#!/bin/bash

echo "Running SHA512 hashcat"

#sha512 cracking

# dictionary attack
echo "Rockyou"
hashcat -m 1800 -a 0 -O -w 4 --potfile-path=mypot.potfile ./hashes/sha512.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 1800 -a 3 -O -w 4 --potfile-path=mypot.potfile ./hashes/sha512.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 1800 -O -w 4 --potfile-path=mypot.potfile ./hashes/sha512.txt ./wordlists/concatWords.txt