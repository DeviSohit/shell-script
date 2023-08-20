#!/bin/bash
DIRECTORY=/home/centos/replace.txt

Y="\e[33m"
N="\e[0m"
REPLACE_WORD=$(sed -i 's/sbin/$Y devi $N/g' $DIRECTORY)
echo "replacing text"