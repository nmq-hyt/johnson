#!/bin/bash
#
# johnson cron daily

if test -e /home/nmq-hyt/Backups/nmq-hyt_backup_$(date +%d%b%y)
then
	echo "Backup already exists"
else
	tar -cf nmq-hyt_backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents  
	mv nmq-hyt_backup_$(date +%d%b%y).tar ~/Backups 
fi
# add rudimentary redundancy checking
# e.g. go to Backups, scan directory for .tarfile matching todays date,
# exit failure if backup has already been made
