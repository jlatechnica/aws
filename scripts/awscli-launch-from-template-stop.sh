#!/bin/bash

# stops all instances in fleet

FILE=./ref/fleet

while read LINE; do
    aws ec2 stop-instances --instance-ids $LINE     
done < $FILE


exit 0
