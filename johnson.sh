#!/bin/bash

cd /home/nmq-hyt/Backups
tar -cf nmq-hyt_backup_$(date +%d%b%y).tar /home/nmq-hyt/Projects /home/nmq-hyt/Documents  
mv  nmq-hyt_backup_$(date +%d%b%y).tar GitPort
cd GitPort
git add nmq-hyt_backup_$(date +%d%b%y).tar 
git commit -m "Another one"
git push origin master
# obviously git asks me for my github password here, so I'm not going to just write it out and upload it to The Internet
cd
