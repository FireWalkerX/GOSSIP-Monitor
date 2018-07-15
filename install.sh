#!/bin/bash

apt-get install apache2 libapache2-mod-php php php-curl unzip
service apache2 restart
ufw allow http
cd /var/www/html/
git clone https://github.com/GOSSIP-DEV/GOSSIP-Monitor .
rm index.html
