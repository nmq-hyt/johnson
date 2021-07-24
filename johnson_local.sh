#!/bin/bash
#
# johnson cron daily
# replace /home/nmq-hyt/ with your /home/name directory
# to do
# script input accepts
# various directory names
FILE=/home/nmq-hyt/Backups/backup_$(date +%d%b%y).tar
MEDIADIR=/media/nmq-hyt/"XUBUNTU 18_"

if test -f "$FILE"; then
		echo "Backup exists"
    # this is my flash drive mount, and it'll always be a
		if test -d "$MEDIADIR";then
        rm /media/nmq-hyt/"XUBUNTU 18_"/Backup/*
        cp ~/Backups/* /media/nmq-hyt/"XUBUNTU 18_"/Backup
        umount /dev/sdb1
        fi
else
		rm  ~/Backups/*
		tar -cf backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents
		mv backup_$(date +%d%b%y).tar ~/Backups
    if test -d "$MEDIADIR";then
        rm /media/nmq-hyt/"XUBUNTU 18_"/Backup/*
        cp ~/Backups/* /media/nmq-hyt/"XUBUNTU 18_"/Backup
        umount /dev/sdb1
        fi
	  fi
