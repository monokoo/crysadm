#!/bin/bash
#安装云监工环境脚本
#sanzuwu@gamil.com
#脚本适用centos7

#安装pip，确保本脚本和get-pip.py 文件在一个文件夹
BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"
chmod +x ${BASE_DIR}/get-pip.py
python3.4 ${BASE_DIR}/get-pip.py

pip3.4 install redis && pip3.4 install requests && pip3.4 install flask

#安装redis
yum install -y redis 


#运行云监工

chmod +x ${BASE_DIR}/run.sh && chmod +x ${BASE_DIR}/down.sh && chmod +x ${BASE_DIR}/cron.sh 
sh ${BASE_DIR}/run.sh && sh ${BASE_DIR}/cron.sh

#python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm_hlper.py &
#python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm.py &

