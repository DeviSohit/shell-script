#!/bin/bash
echo "Enter string"
read STRING
REV=$(echo $STRING | rev)
echo "$REV"