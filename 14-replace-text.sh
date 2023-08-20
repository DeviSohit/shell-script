#!/bin/bash
DIRECTORY=/home/centos/replace.txt
WORD1=$1
WORD2=$2
Y="\e[33m"
N="\e[0m"
W=echo -e "$Y $WORD2 $N"
REPLACE_WORD=$(sed -i s/$WORD1/$W/g $DIRECTORY)
echo "replacing text $(cat $DIRECTORY)"