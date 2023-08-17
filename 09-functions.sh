#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){

if [ $1 -ne 0 ] ; then
    echo -e "$2.......$R FAILURE"
    exit 1
else 
    echo "$2.......$G SUCCESS"
fi

}

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "Please take root access to run this script"
    exit 1
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing mysql"

yum install postfix -y &>> $LOGFILE
VALIDATE $? "Installing postfix"
