#!/bin/bash
#writing script to install packages and storing random output into logfile and applying colors to it
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log
INSTALLED=$(yum list installed)
INSTALLED_FILE=$(echo $INSTALLED | grep mysql)

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ] ; then
    echo -e "$2.......$R FAILURE $N"
    exit 1
else 
    echo -e "$2.......$G SUCCESS $N"
fi
}
USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "Please take root access to run this script"
    exit 1
fi
if [ $INSTALLED_FILE --installed ] ; then
    echo -e "$INSTALLED_FILE.......already installed"
    exit 1
fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "Installing mysql"

yum install postfix -y &>> $LOGFILE
VALIDATE $? "Installing postfix"
