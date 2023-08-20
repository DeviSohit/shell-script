#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
DIRECTORY=/home/centos/reversetext.txt
EXISTED_TEXT=$(cat $DIRECTORY)
echo -e "Already existed text is: $G $EXISTED_TEXT $N"
while read line
do
    echo "Revesring the text $line"
    rev $line
 done <<< $DIRECTORY
