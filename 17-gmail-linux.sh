#!/bin/bash
#Follow the Gmail.MD document in siva anna repository in Github
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
        echo -e "$2.....$R FAILURE $N"
        exit 1
    else
        echo -e "$2.....$G SUCCESS $N"
    fi
 }

 USERID=$(id -u)
 if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR:Please run this script with root access $N"
    exit 1
fi

 yum update -y --exclude=kernel* &>> $LOGFILE
 VALIDATE $? "Updating yum repo"

 yum -y install postfix cyrus-sasl-plain mailx &>> $LOGFILE
 VALIDATE $? "Installing postfix & cyrus-sasl-plain & mailx"

 systemctl restart postfix &>> $LOGFILE
 VALIDATE $? "Restarting postfix"

 systemctl enable postfix &>> $LOGFILE
 VALIDATE $? "Enabling postfix"

 cat main.cf >> /etc/postfix/main.cf &>> $LOGFILE
 VALIDATE $? "appending text into main.cf"

 touch /etc/postfix/sasl_passwd  &>> $LOGFILE
 VALIDATE $? "Creating file for giving gmail credentials"

 echo "Enter email address:"
 read -s EMAIL
 echo "Enter App Password:"
 read -s PASSWORD
 #echo -e "Just printing Email & Password****Email: $Y $EMAIL $N & App_Password: $Y $PASSWORD $N"

echo "[smtp.gmail.com]:587 $EMAIL:$PASSWORD" >> /etc/postfix/sasl_passwd
VALIDATE $? "Giving Gmail credentials for authentication"

postmap /etc/postfix/sasl_passwd &>> $LOGFILE
VALIDATE $? "Informing postfix about credentials"

echo "This is a test mail & Date $(date)" | mail -s "First mail from linux server" $EMAIL