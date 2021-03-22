#!/bin/bash
#
# johnson cron daily
# replace /home/nmq-hyt/ with your /home/name directory
FILE=/home/nmq-hyt/Backups/backup_$(date +%d%b%y).tar
DIRTEST=/home/nmq-hyt/Backups
MEDIADIR=/media/nmq-hyt/"XUBUNTU 18_"/Backup
if test -d "$DIRTEST"
then
	echo "Backup directory exists"
	if test -f "$FILE"
	then
		echo "Backup exists"
	else
		rm  ~/Backups/*
		tar -cf backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents
		mv backup_$(date +%d%b%y).tar ~/Backups
		cp ~/Backups/backup_$(date +%d%b%y).tar  "$MEDIADIR";
	fi
else
	mkdir ~/Backups
	tar -cf backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents
	mv backup_$(date +%d%b%y).tar ~/Backups
fi
