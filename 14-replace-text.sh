#!/bin/bash
DIRECTORY=/home/centos/replace.txt
WORD1=$1
WORD2=$2
Y="\e[33m"
N="\e[0m"
#echo -e "$Y $WORD2"
REPLACE_WORD=echo -e "$(sed -i s/$WORD1/$Y $WORD2 $N/g $DIRECTORY)"
echo "replacing text $(cat $DIRECTORY)"