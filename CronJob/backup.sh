#!bin/bash
#Author:Samyog Ghimire
#Date:08/01/2025

BACKUP_DIR="/home/samyog-ghimire/Desktop/backup"
SOURCE_DIR="/home/samyog-ghimire/Desktop/LogFile/logile.txt"
DATE=$(date +%Y-%m-%d)

mkdir -p "$BACKUP_DIR/$DATE"

cp -r "$SOURCE_DIR" /* "BACKUP_DIR/$DATE/"