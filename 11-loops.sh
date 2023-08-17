#!/bin/bash
#for i in {1..100}
#do
  #  echo $i
#done
VALIDATE(){

if [ $1 -ne 0 ] ; then
    echo -e "$2.......$R FAILURE $N"
    exit 1
else 
    echo -e "$2.......$G SUCCESS $N"
fi
}
for i in $@
do
  yum install $i -y
done
VALIDATE $? "Installing $@"
