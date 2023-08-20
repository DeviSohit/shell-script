#!/bin/bash
DIRECTORY=/home/centos/replace.txt
REPLACE_WORD=$(echo $DIRECTORY/sed -e 's/sbin/devi/g')
Y="\e[33m"
N="\e[0m"
while read line
do 
    echo "replacing text globally"
    echo -e "$Y $REPLACE_WORD $line $N"
done <<< $DIRECTORY