#!/bin/bash
#Author:Samyog Ghimire
#Date:12/01/2025

#This script is used to generate a password according to the length provided by the user.
#openssl is used for generating private keys, certificates etc.
#rand is used for generating psudo random bytes.
###############################################################################################

echo "Insert the length of the password"
read $PASS_LENGTH
for p in $(seq 1 5)
do 
openssl rand -base64  24 | cut -c1-$PASS_LENGTH
done

