#!/bin/bash
DIRECTORY=/home/centos/replace.txt
WORD1=$1
WORD2=$2
Y="\e[33m"
N="\e[0m"
G="\e[32m"
EXISTED_TEXT=$(cat $DIRECTORY)
echo "Already existed text is : $EXISTED_TEXT"
echo -e "I AM REPLACING THIS $G $WORD1 $N TO $Y $WORD2 $N IN FILE"
REPLACE_WORD=$(sed -i s/$WORD1/$WORD2/g $DIRECTORY)
echo "replacing text $(cat $DIRECTORY)"