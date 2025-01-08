#!bin/bash
#Author:Samyog Ghimire
#Date:08/01/2025

#Debugging setup using set -x
set -x

#Function to stimulate breakpoint using 'read'
function breakpoint () {
    echo "DEBUG: Reached breakpoint Press Enter to continue..."
    read -p "Press Enter to continue:" continue
}

#Example function to perform calculations
function calculate(){

    local x=5
    local y=10
    local sum=0

    echo "Debug: Before calculation: x=$x, y=$y"
    breakpoint

    sum=$(($x+$y))

    echo "Debug: After calculation: sum =$sum"
    breakpoint

    echo "Final result: $sum"
}

echo "Starting script...."

calculate

#Disable debugging trace after function execution
set +x

echo "Script completed."
