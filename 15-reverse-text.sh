#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
DIRECTORY=/home/centos/reversetext.txt
EXISTED_TEXT=$(cat $DIRECTORY)
echo $EXISTED_TEXT
while read line
do
    echo "Revesring the text $line"
    rev $line
 done <<< $DIRECTORY
