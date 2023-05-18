#!/bin/bash

# Script: Ops 301 Class 05 Ops Challenge Solution
# Author: Ashley Bryce
# Date of latest revision: 05/17/23
# Print to the screen the file size of the log files before compression
# Compress the contents of log files to a backup directory
# Clear the contents of the log file
# Print to screen the file size of the compressed file
# Compare the size of the compressed files to the size of the original log files

# Main

a=/home/ashley/cybersecurity/dir1/file.txt
b=/home/ashley/cybersecurity/dir2/file.txt
c=/home/ashley/Documents
now=$(date "+%Y-%m-%d-%H-%M-%S")

echo filesize1=$(stat -c %s $a) 
echo filesize2=$(stat -c %s $b)

zip $a_$now.zip $a
zip $b_$now.zip $b

echo filesize3=$(stat -c %s $a_$now.zip)
echo filesize4=$(stat -c %s $b_$now.zip)

zip /var/log/backup/wtmp_$now.zip /var/log/wtmp
zip /var/log/backup/syslog_$now.zip /var/log/syslog
syszip=$(stat -c %s /var/log/backup/syslog_$now.zip)
wtmpzip=$(stat -c %s /var/log/backup/wtmp_$now.zip )
echo Syslog original vs Compressed: $sysorg / $syszip
echo WMPT original vs Compressed: $wtmporg / $wtmpzip
cat /dev/null > /var/log/syslog
cat /dev/null > /var/log/wtmp

# End
