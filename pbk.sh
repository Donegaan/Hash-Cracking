#!/bin/bash

./john --wordlist=pbkWordlist.txt --format=PBKDF2-HMAC-SHA256-opencl pbk.txt --pot=mypot.potfile --stdout=5

ehco "getting rockyou"
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

./john --wordlist=rockyou.txt --format=PBKDF2-HMAC-SHA256-opencl pbk.txt --pot=mypot.potfile --stdout=16
