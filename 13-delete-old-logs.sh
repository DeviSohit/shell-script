#!/bin/bash
APP_LOG_DIR=/home/centos/app-logs

DATE=$(date +%F)
LOGFILE=/home/centos/shellscript-logs/$SCRIPT_NAME-$DATE.log
FILE_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)

echo "$FILE_TO_DELETE"