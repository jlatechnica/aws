#!/bin/bash

# makes users from list

FILE=~/wrk/aws/ref/team-dev-roster
GRP=dev

while read f; do
aws iam create-user --user-name $f
aws iam add-user-to-group --user-name $f --group-name $GRP
done < $FILE 


exit 0
