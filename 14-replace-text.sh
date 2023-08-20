#!/bin/bash
DIRECTORY=/home/centos/replace.txt
WORD1=$1
WORD2=$2
Y="\e[33m"
N="\e[0m"
#echo -e "$Y $WORD2 $N"
REPLACE_WORD=$(sed -i 's/devi/sbin/g' $DIRECTORY)
echo "replacing text $(cat $DIRECTORY)"