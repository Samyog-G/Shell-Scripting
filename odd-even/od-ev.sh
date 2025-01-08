#!/bin/bash
#Date:07/01/2025
#Author:Samyog Ghimire

#This is the cript to find if the input number is odd or even.

read -p "Enter a number:" number
if [$((number%2)) -eq 0]; then
    echo "$number is an even number"
else 
    echo "$number is a odd number"
fi