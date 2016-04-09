#!/bin/bash
echo 'Stop crysadm on'  $(date) >> /tmp/crysadm.txt

service stop redis-server
pkill python3.4

