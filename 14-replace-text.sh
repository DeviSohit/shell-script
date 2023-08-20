#!/bin/bash
DIRECTORY=/home/centos/replace.txt
WORD1=$1
WORD2=$2
Y="\e[33m"
N="\e[0m"
C=echo -e "$Y"
D=echo -e "$N"
REPLACE_WORD=$(sed -i s/$WORD1/$C $WORD2 $D/g $DIRECTORY)
echo "replacing text $(cat $DIRECTORY)"