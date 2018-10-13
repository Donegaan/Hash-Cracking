#!/bin/bash

echo "Running DES hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 1500 -a 0 -O -w 4 --potfile-path=mypot.potfile ./hashes/des.txt ./wordlists
# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 1500 -a 3 -O -w 4 --potfile-path=mypot.potfile ./hashes/des.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 1500 -O -w 4 --potfile-path=mypot.potfile ./hashes/des.txt ./wordlists/concatWords.txt
