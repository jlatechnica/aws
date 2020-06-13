#!/bin/bash

# deletes users on list

FILE=./ref/team-test-roster

while read f; do
aws iam delete-user --user-name $f;
done < $FILE 


exit 0
