#!/bin/bash
#Author:Samyog Ghimire
#Date:07/01/2025

#Setting environmental variables
export LOG_DIR="/home/samyog-ghimire/Desktop/LogFile/logile.txt"
export USERNAME=Samyog-Ghimire

echo "The log directory is set to: $LOG_DIR"
echo "The current user is: $USERNAME"

#Check if the log directory exists
if ["$LOG_DIR"]; then
echo "Log directory '$LOG_DIR' exists."
else
echo "Log directory '$LOG_DIR' does not exist."
fi