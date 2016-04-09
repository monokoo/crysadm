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

#使用随机生成的secret_key替换默认的key
python3.4 gen_random_secret_key.py > secret
secret_key=$(cat secret|awk 'NR==2 {print}')
sed -i "s/SECRET_KEY = 'YTHnYgk0-M9Hu-wDmg-tvgT-4DPKQBjxYDA2'/SECRET_KEY = '${secret_key}'/" ${BASE_DIR}/crysadm/config.py
rm -f secret

#运行云监工
cp ${BASE_DIR}/crysadm/crysadm /etc/init.d/crysadm
chmod +x /etc/init.d/crysadm
chkconfig --add crysadm && chkconfig crysadm on
service crysadm start

#python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm_hlper.py &
#python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm.py &

