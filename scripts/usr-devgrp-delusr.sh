#!/bin/bash

# deletes users on list

FILE=~/wrk/aws/ref/team-dev-roster
GRP=dev

while read f; do
aws iam remove-user-from-group --user-name $f --group-name $GRP
aws iam delete-user --user-name $f;
done < $FILE 


exit 0
