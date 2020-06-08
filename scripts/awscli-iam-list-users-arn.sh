#!/bin/bash

# get Arn for all usrs

aws iam list-users --query 'Users[].[UserName, UserId, Arn]' --output table

#Arn number is field 5
# | cut -d ':' -f 5


exit 0
