#!/bin/bash

./john --wordlist=rockyou.txt --format=PBKDF2-HMAC-SHA256-opencl pbk.txt --pot=pbkCracked.txt --stdout=16

./john --mask=?l?l?l?l?l argon2.txt --pot=argonCracked.txt

./john --wordlist=concatWords.txt argon2.txt --pot=argonCracked.txt

./john --wordlist=rockyou.txt argon2.txt --pot=argonCracked.txt --stdout=16
