#!/bin/bash
#echo "Enter string"
#read STRING
#REV=$(echo $STRING | rev)
#echo "$REV"
DIRECTORY=/home/centos/reversetext.txt
while read line
do
 $line | rev
 done <<< $DIRECTORY
