#!/bin/bash
APP_LOG_DIR=/home/centos/app-logs

DATE=$(date +%F)
LOGFILE=/home/centos/shellscript-logs/$SCRIPT_NAME-$DATE.log
FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)

echo "2 weeks older files are $FILES_TO_DELETE"

while read line
do 
    echo "Deleting $line"
    rm -rf $line &>> $LOGFILE
done <<< $FILES_TO_DELETE