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