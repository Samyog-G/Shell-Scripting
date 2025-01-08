#!bin/bash
#Date:07/01/2025
#Author:Samyog Ghimire

#Using Arithmetic operators like +, -, *, /

echo -e "Enter a value:\c"
read -r a
echo -e "Enter a value:\c"
read -r b

echo "a+b value is $(($a+$b))"
echo "a-b value is $(($a-$b))"
echo "a*b value is $(($a*$b))"
echo "a/b value is $(($a/$b))"

echo "Completed successfully"

