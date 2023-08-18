#!/bin/bash
DIRECTORY=/home/centos/devi.txt
REPLACE=$(echo $DIRECTORY | sed -e 's/sbin/sohit')
echo "the output file is $REPLACE"