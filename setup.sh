#!/bin/bash
#安装云监工环境脚本
#sanzuwu@gamil.com
#脚本适用centos7

#更新源

yum update 

#安装python3.4,可以和python2共存

#编译需要的一些包，酌情安装
yum groupinstall "Development tools"
yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-deve
 
#下载解压并编译
# 国内源http://mirrors.sohu.com/python/3.4.3/Python-3.4.3.tgz
wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz
tar xf Python-3.4.3.tgz
cd Python-3.4.3
./configure --prefix=/usr/local --enable-shared
make
#请勿使用make install
make altinstall

#链接库文件
echo /usr/local/lib >> /etc/ld.so.conf.d/local.conf
ldconfig

#重启后生效





#安装pip，确保本脚本和get-pip.py 文件在一个文件夹
BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"
sudo chmod +x ${BASE_DIR}/get-pip.py
sudo python3.4 ${BASE_DIR}/get-pip.py

sudo pip3.4 install redis && sudo pip3.4 install requests && sudo pip3.4 install flask

#安装redis-server
sudo apt-get install -y redis-server 


#运行云监工

sudo chmod +x ${BASE_DIR}/run.sh && sudo chmod +x ${BASE_DIR}/down.sh && chmod +x ${BASE_DIR}/cron.sh 
sudo sh ${BASE_DIR}/run.sh && sh ${BASE_DIR}/cron.sh

#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm_hlper.py &
#sudo python3.4 ${BASE_DIR}/crysadm/crysadm/crydadm.py &

