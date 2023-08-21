#!/bin/bash

LOGFILE_DIR=/tmp
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=$LOGFILE_DIR/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2.....$R FAILURE $N"
        exit 1
    else
        echo "$2.....$G SUCCESS $N"
    fi
 }

 USERID=$(id -u)
 if [ $USERID -ne 0 ]; then
    echo "$R ERROR:Please run this script with root access $N"
    exit 1
fi

 yum update -y --exclude=kernel* &>> $LOGFILE
 VALIDATE $? "Updating yum repo"