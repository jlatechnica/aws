#!/bin/bash

# input creates new user & new profile creds

rgn=us-east-2

read -p "enter name for new user: " name

# same as above(verbose)
echo 'enter new profile name: '
read profile


aws iam create-user --user-name $name

cred=$(aws iam create-access-key --user-name $name --query 'AccessKey.[AccessKeyId,SecretAccessKey]' --output text)
access_key_id=$(echo $cred | cut -d ' ' -f 1)
secret_access_key=$(echo $cred | cut -d ' ' -f 2)

aws configure set profile.$profile.region $rgn
aws configure set profile.$profile.aws_access_key_id $access_key_id
aws configure set profile.$profile.aws_secret_access_key $secret_access_key


exit 0
