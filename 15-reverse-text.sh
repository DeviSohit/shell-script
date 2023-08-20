#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
FILE_DIRECTORY=/home/centos/reverse.txt
while read line
do
    echo "reversing text $line"
    $(echo $line | rev)
done <<< $FILE_DIRECTORY