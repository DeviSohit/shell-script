#!/bin/bash
#!/bin/bash
#writing script to install packages and storing random output into logfile and applying colors to it
DATE=$(date +%F)
SCRIPT_NAME=$0
#ARGS=$@
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
INSTALLED_FILES=$ (yum list installed | grep $@)
VALIDATE(){

if [ $1 -ne 0 ] ; then
    echo -e "$2.......$R FAILURE $N"
    exit 1
else 
    echo -e "$2.......$G SUCCESS $N"
fi
}

if [ $INSTALLED_FILES -ne 0 ] ; then
    echo -e "$@ already installed"
    exit 1
else 
    for i in $@
do
    yum install $i -y &>> $LOGFILE
    VALIDATE $? "Installing "
done
fi

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then
    echo "Please take root access to run this script"
    exit 1
fi
for i in $@
do
    yum install $i -y &>> $LOGFILE
    VALIDATE $? "Installing "
done

 


