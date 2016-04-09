#!/bin/bash
echo 'Stop crysadm on'  $(date) >> /tmp/crysadm.txt

service redis stop
pkill python3.4

