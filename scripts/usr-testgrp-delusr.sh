#!/bin/bash

# deletes users on list

FILE=~/wrk/aws/assets/team-test-roster
GRP=test

while read f; do
    aws iam remove-user-from-group --user-name $f --group-name $GRP
    aws iam delete-user --user-name $f;
done < $FILE 


exit 0
