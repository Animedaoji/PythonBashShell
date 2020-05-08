#!/bin/bash
yum update -y && yum install -y screen vim htop && yum install wget zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gcc make libffi-devel -y

wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz

# 解压压缩包
tar -zxvf Python-3.8.1.tgz  

# 进入文件夹
cd Python-3.8.1

# 配置安装位置
./configure prefix=/usr/local/python3 #--enable-optimizations

# 安装
make && make install

#添加python3的软链接 
ln -s /usr/local/python3/bin/python3.8 /usr/bin/python3 

#添加 pip3 的软链接 
ln -s /usr/local/python3/bin/pip3.8 /usr/bin/pip3
py_version = $(python3 -V 2>&1)
if [ $py_version == "Python 3.8."* ];then
	pip3 install scrapy scrapyd scrapy-redis
fi
#wget https://bootstrap.pypa.io/get-pip.py
#python get-pip.py -i https://pypi.tuna.tsinghua.edu.cn/simple/

install_nginx(){
	yum install -y nginx
	cp 
	echo 'daoji:VpnzwX4W0vynI' > /etc/nginx/conf.d/.htpasswd
}