#!/bin/bash
#Author:Samyog Ghimire
#Date:07/01/2025

#This scripts is used to securely create a user.

set -e
set -u
set -o pipefail

#Check if the script is run as root
if [[ "$(id -u)" -ne 0 ]]; then
echo "ERROR: This script must run as a root"
exit 1
fi

#Func to log messages
log_message() {
    local message=$1
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> /var/log/user_creating.log

}

#Prompt for username and password
read -p "Enter the new username:" username
if [[ -z "$username" || "$username" =~ [^a-zA-Z0-9_] ]]; then
    echo "ERROR: Invalid username. Only letters, numbers, and underscores are allowed."
    exit 1
fi

#Check if the user already exists
if id "$username" &>/dev/null; then
echo "ERROR: User $username already exists."
exit 1
fi

#Prompt for password
read -sp "Enter the password for $username:" password
echo 

#Creating the user and setting the password securely
log_message "Creating user $username"
useradd -m "$username"
echo "$username: $(openssl passwd -1 "$password")" | chpasswd

log_message "User $username created successfully."

echo "User $username has been created successfully. "