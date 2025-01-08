#!/bin/bash
#Author:Samyog Ghimire
#Date:07/01/2025

#This is the script for finding the greater among the three numbers

read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c

if [ $a -gt $b ] && [ $a -gt $c ]; then
echo "$a is the greatest number"
elif [ $b -gt $a ] && [ $b -gt $c ];then
echo "$b is the greatest number"
else
echo "$c is the greatest number"
fi