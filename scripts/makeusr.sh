#!/bin/bash

FILE=./ref/team-test-roster

while read f; do
aws iam create-user --user-name $f;
done < $FILE 


exit 0
