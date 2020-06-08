#!/bin/bash

# syncs 'master' bucket to 'slave' bucket | test to prod, etc

log=/home/jeff/...
logname=bucket-copy.log

read -p "enter name of destination bucket(to sync): " name

aws s3 sync $dir/jla-technica s3://$name >> $log/$logname


exit 0
