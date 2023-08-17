#!/bin/bash

VALIDATE(){

if [ $1 -ne 0 ] ; then
    echo "$2.......FAILURE"
    exit 1
else 
    echo "$2.......SUCCESS"
fi

}

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "Please take root access to run this script"
    exit 1
fi

yum install mysql -y
VALIDATE $? "Installing mysql"

yum install postfix -y
VALIDATE $? "Installing postfix"
