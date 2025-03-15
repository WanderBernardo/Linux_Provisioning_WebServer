# Provisioning Web Server: Apache
The goal this repository is show a file IaC provisioning a Web Server Apache.

**Infrastructure as Code (IaC)** is the management and provisioning of infrastructure through code, rather than manual processes.

With IaC, you create configuration files that include the specifications of your infrastructure, making it easy to edit and distribute configurations. It also ensures that the same environment is provisioned every time. (Fonte: Red Hat - https://www.redhat.com/)

```
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


```
