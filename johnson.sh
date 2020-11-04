#!/bin/bash

cp -ri --target-directory=/home/nmq-hyt/Backups /home/nmq-hyt/Projects /home/nmq-hyt/Documents
cd /home/nmq-hyt/Backups
tar -cf nmq-hyt_backup_$(date +%d%b%y).tar Projects  Documents 
cd 
