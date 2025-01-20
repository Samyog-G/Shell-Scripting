#!/bin/bash
# Author: Samyog Ghimire
# Date: 20/01/2025

# This script deletes the user account automatically as per the input of the user.
###############################################################################################

# Check if the record.txt file exists
if [ ! -f "record.txt" ]; then
    echo "record.txt not found. Exiting."
    exit 1
fi

# Ask for the username and email
echo "Please enter the username of the user"
read -r USERNAME
echo
echo "Please enter the email of the user"
read -r EMAIL
echo 

# Validate email format (basic validation)
if [[ ! "$EMAIL" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "Invalid email format. Exiting."
    exit 1
fi

user_account="$USERNAME"
user_account_record=$(grep -w "$user_account" record.txt)

# Check if user account exists in the record.txt
if [ -z "$user_account_record" ]; then
    echo
    echo "Account, $user_account not found in the records."
    echo "Exiting the process."
    echo
    exit 1
else
    echo "Do you want to delete this account with username $USERNAME [y/n]?"
    read -r bool

    if [ "$bool" == "y" ]; then
        # Attempt to delete the user account
        if ! userdel "$user_account"; then
            echo "Failed to delete user $user_account. Please check the system logs for more details."
            exit 1
        fi

        echo
        echo "User account, $user_account, has been removed."
        echo
        exit 0
    else
        echo "Account deletion cancelled."
        echo
        exit 0
    fi
fi
