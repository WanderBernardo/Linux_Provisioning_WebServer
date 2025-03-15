#!/bin/bash

echo "updating system..."

apt-get install update
apt-get install upgrade -y

echo "installing necessary tools..."

apt-get install apache2 -y
apt-get install unzip -y
aot-get install wget -y

echo "downloading template site and unzip file"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

echo ""

cd linux-site-dio-main
cp -R * /var/www/html/

echo "finish process!"
