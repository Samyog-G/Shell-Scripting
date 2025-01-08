#!bin/bash
#Author:Samyog Ghimire
#Date:08/01/2025

#This scripts handles errors using different methods

#Checking the exit status using $?
mkdir /some/new/directory
if [$? -ne 0];then
echo "Failed to create directory"
exit 1
else
echo "Directory created successfully"
fi
