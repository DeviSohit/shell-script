#!/bin/bash
#for i in {1..100}
#do
  #  echo $i
#done
VALIDATE(){

if [ $1 -ne 0 ] ; then
    echo -e "$@.......$R FAILURE $N"
    exit 1
else 
    echo -e "$@.......$G SUCCESS $N"
fi
}
for i in $@
do
  yum install $i -y
done
VALIDATE $? "Installing $@"
