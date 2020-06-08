#!/bin/bash

# !!!CAUTION: recursively empties ALL in bucket

log=/home/jeff/...
logname=bucket-empty.log

aws s3 ls
read -p "enter name of bucket to empty: " name

aws s3 rm --recursive s3://$name >> $log/$logname


exit 0
