#!bin/bash
#Author:Samyog Ghimire
#Date:07/01/2025

#This shell scripting code defines , passes arguments and returns values using a FUNCTION

#Defining a Function and passing arguments

my_function(){
    local arg1=$1
    local arg2=$2

    local sum=$((arg1+arg2))
    return $sum
}
my_function 5 10 #calling the function with arguments
result=$? #Capturing the return value

echo "The sum of the numbers is: $result"
