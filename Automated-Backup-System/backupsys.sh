#!/bin/bash
# Author: Samyog Ghimire
# Date: 10/01/2025

#Creating an automated backup system.

SOURCE_FILE=/home/samyog-ghimire/Desktop/source
DESTINATION_FILE=/home/samyog-ghimire/Desktop/backup

#Timestamp for Backup
TIMESTAMP=$(date + "%Y%m%d_%H%M%S")

#Creating a backup sub folder for current backup
BACKUP_FOLDER="$BACKUP_FILE/backup_$TIMESTAMP
mkdir -p BACKUP_FOLDER

#Copying the contents from the sourde to the backup directory
cp -r "$SOURCE_FILE"/* "BACKUP_FOLDER"

echo "Backup completed on $TIMESTAMP" >> /home/samyog-ghimire/Desktop/backup