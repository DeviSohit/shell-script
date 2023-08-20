#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
DIRECTORY=/home/centos/reversetext.txt
while read line
do
    echo "Revesring the text $line"
    rev $line
 done <<< $DIRECTORY
