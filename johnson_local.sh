#!/bin/bash
#
# johnson cron daily
FILE=/home/nmq-hyt/Backups/backup_$(date +%d%b%y).tar
FILEDATE=$(date +%a)
if test -e "$FILE"
then
echo "Backup already exists"
elif test "$FILEDATE" = "Sun"
then
rw * ~/Backups
else
tar -cf backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents
mv backup_$(date +%d%b%y).tar ~/Backups
fi
