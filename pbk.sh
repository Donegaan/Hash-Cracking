#!/bin/bash

echo "Running pbk hashcat"

#DES cracking

# dictionary attack
echo "Rockyou"
hashcat -m 13753 -a 0 -O -w 4 --potfile-path=mypot.potfile ./hashes/pbk.txt ./wordlists/rockyou.txt

# mask attack for 5 lowercase letters
echo "Mask"
hashcat -m 13753 -a 3 -O -w 4 --potfile-path=mypot.potfile ./hashes/pbk.txt ?l?l?l?l?l

# concatentation attack
echo "Concat"
hashcat -m 13753 -O -w 4 --potfile-path=mypot.potfile ./hashes/pbk.txt ./wordlists/concatWords.txt
