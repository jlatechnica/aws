#!/bin/bash

FILE=./ref/names.txt

while read f; do
aws iam create-user --user-name $f;
done < $FILE 


exit 0
