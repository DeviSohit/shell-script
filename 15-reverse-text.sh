#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
DIRECTORY=home/centos/tmp/reverse.txt
while read line
do
   echo "reversing text $line"
   
done <<< $DIRECTORY