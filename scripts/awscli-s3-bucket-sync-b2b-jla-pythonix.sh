#!/bin/bash

# clones first folder to second folder 
# TODO: (add option for user input |distplay buckets table)

log=/home/jeff/...
logname=bucket-cloned.log

aws s3 sync s3://jla-technica s3://pythonix >> $log/$logname

exit 0
