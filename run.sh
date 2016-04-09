#!/bin/bash
echo 'Start crysadm on'  $(date) >> /tmp/crysadm.txt

service redis restart
pkill python3.4

BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"                                                             
ls ${BASE_DIR}/ >> /tmp/error 2>&1
                                     
echo $PATH >> /tmp/error           
echo $LD_LIBRARY_PATH >> /tmp/error                                            
python3.4 ${BASE_DIR}/crysadm/crysadm_helper.py >> /tmp/error 2>&1 &
python3.4 ${BASE_DIR}/crysadm/crysadm.py >> /tmp/error 2>&1 & 
