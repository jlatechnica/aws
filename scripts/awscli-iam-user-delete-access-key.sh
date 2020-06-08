#!/bin/bash

# list users | delete from input

aws iam list-users --query Users[*].UserName --output table
read -p "enter name of user to delete: " user

cred_key=$(aws iam list-access-keys --user-name $user --query 'AccessKeyMetadata[*].AccessKeyId' --output text)

aws iam delete-access-key --user-name $user --access-key-id $cred_key
aws iam delete-user --user-name $user
#aws configure set profile.test.aws_access_key_id "$access_key_id"
#aws configure set profile.test.secret_access_key "$secret_access_key"


exit 0
