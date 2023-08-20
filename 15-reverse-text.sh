#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
DIRECTORY=/home/centos/reverse.txt
while read line
do
    echo "reversing text $line"
    $line | rev
done <<< $DIRECTORY