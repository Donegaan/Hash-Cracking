#!/bin/bash

echo "Running DES hashcat"

#DES cracking

# dictionary attack
hashcat -m 1500 -a 3 -O ./des.txt rockyou.txt

# mask attack for 5 lowercase letters
hashcat -m 1500 -a 3 -O ./des.txt ?l?l?l?l?l

# concatentation attack
hashcat -m 1500 -a 1 -O ./des.txt four.txt four.txt