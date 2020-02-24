#!/usr/bin/bash

sudo yum install -y gcc openssl-devel bzip2-devel libffi-devel
sudo yum install -y wget
sudo wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz
sudo mkdir -p /usr/local/src/Python-3.7.1
sudo tar xzf Python-3.7.1.tgz -C /usr/local/src/Python-3.7.1
cd /usr/local/src/Python-3.7.1
sudo mkdir -p /usr/local/Python3.7/Python-3.7.2rc1
sudo ln -s /usr/local/Python3.7/Python-3.7.2rc1 /usr/local/Python3.7/latest
sudo ln -s /usr/local/Python3.7/latest /usr/local/Python3.7/default
cd /usr/local/src/Python-3.7.1/Python-3.7.1
./configure --enable-optimizations --prefix=/usr/local/Python3.7/default
make
make altinstall
sudo echo "export PATH="/usr/local/Python3.7/default/bin:$PATH"" >> /etc/profile
ln -s /usr/local/Python3.7/default/bin/pip3.7 /usr/local/Python3.7/default/bin/pip
ln -s /usr/local/Python3.7/default/bin/python3.7 /usr/local/Python3.7/default/bin/python
ln -s /usr/local/Python3.7/default/bin/python /usr/local/bin/python
ln -s /usr/local/Python3.7/default/bin/python /usr/local/bin/python3