#!/bin/bash

# syncs 'main' to 'dest'

dir=/home/jeff/.aws/index
log=/home/jeff/wrk/400-log


#echo 'enter bucket name'
read -p "enter name of destination bucket(to sync): " name

aws s3 sync $dir s3://$name >> $log/log.txt


exit 0
