# vagrant_centos7

## インストール手順
* 環境  
windows10
### 必要なもの
* virtual box (ver6.0)  
https://www.virtualbox.org/wiki/Download_Old_Builds_6_0

* vagrant (最新版)  
https://eng-entrance.com/linux-vagrant-install

## OS
centos7

## local network
192.168.33.10

## Python version
3.71

## command
* 実行する場所  
`./vagrant/`

* コマンド  
`vagrant up`  
最初のコマンドが実行出来て、環境にSSH接続が出来たら、もう一度同じコマンドを実行する。  
2回目の実行で作成したVM環境にPython3.7の環境が作成される。  
※ SSH接続は`vagrant ssh`で作成した環境にSSH接続が出来る。  
※ SSH環境から抜ける際は`Ctrl + d`で抜けられる。

3.75を使う場合は以下の記述に修正する。
```
    wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz
    mkdir -p /usr/local/src/Python-3.7.5
    tar xzf Python-3.7.5.tgz -C /usr/local/src/Python-3.7.5
    cd /usr/local/src/Python-3.7.5
    mkdir -p /usr/local/Python3.7/Python-3.7.5
    ln -s /usr/local/Python3.7/Python-3.7.5 /usr/local/Python3.7/latest
    ln -s /usr/local/Python3.7/latest /usr/local/Python3.7/default
    cd /usr/local/src/Python-3.7.5/Python-3.7.5
    ./configure --enable-optimizations --prefix=/usr/local/Python3.7/default
    make
    make altinstall
    echo "export PATH="/usr/local/Python3.7/default/bin:$PATH"" >> /etc/profile
    ln -s /usr/local/Python3.7/default/bin/pip3.7 /usr/local/Python3.7/default/bin/pip
    ln -s /usr/local/Python3.7/default/bin/python3.7 /usr/local/Python3.7/default/bin/python
    ln -s /usr/local/Python3.7/default/bin/python /usr/local/bin/python
    ln -s /usr/local/Python3.7/default/bin/python /usr/local/bin/python3
```
