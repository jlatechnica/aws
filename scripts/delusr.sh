#!/bin/bash

# deletes users on list

FILE=./ref/names.txt

while read f; do
aws iam delete-user --user-name $f;
done < $FILE 


exit 0
