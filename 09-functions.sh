#!/bin/bash

VALIDATE(){

if [ $? -ne 0 ] ; then
    echo "Installation is failure"
    exit 1
else 
    echo "Installation is success"
fi

}

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "Please take root access to run this script"
    exit 1
fi

yum install mysqll -y
VALIDATE

yum install postfix -y
VALIDATE
