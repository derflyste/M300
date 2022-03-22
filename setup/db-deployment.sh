#!/bin/bash

echo "---UPDATING MASHINE---"
sudo apt-get update

echo "---Mysql installieren---"
sudo apt install mysql-server -y

echo "---secure_installation---"
sudo mysql_secure_installation<<EOF
y
0
secret
secret
y
n
n
y
EOF


sudo apt install php libapache2-mod-php php-mysql

sudo nano /etc/apache2/mods-enabled/dir.conf <<EOF
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
EOF  



