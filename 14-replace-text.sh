#!/bin/bash
DIRECTORY=/home/centos/replace.txt
#REPLACE_WORD=$(sed -e 's/sbin/devi/g')
Y="\e[33m"
N="\e[0m"
while read line
do 
    echo "replacing text globally"
   # echo -e "$Y $REPLACE_WORD $line $N"
   $(sed -i 's/sbin/devi') $line
done <<< $DIRECTORY