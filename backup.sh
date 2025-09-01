#!/bin/bash


<<note
This script is used for backup of any folder path passed as an argument
/backup.zip /home/ubuntu/devops/scripts
note

timestamp=$(date  '+%Y-%m-%d_%H-%M-%S')
backup_dir="/home/ubuntu/backups/${timestamp}_backup.zip"
zip -r $backup_dir $1
echo "backup completed"
