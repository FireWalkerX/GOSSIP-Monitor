#!/bin/bash

echo -e "Install needed tools"
apt-get update >/dev/null 2>&1
apt-get install -y apache2 libapache2-mod-php php php-curl unzip
service apache2 restart
ufw allow http
cd /var/www/html/
git clone https://github.com/GOSSIP-DEV/GOSSIP-Monitor .
rm index.html
rm /root/install.sh
echo -e "Finished. Please edit the configuration file under /var/www/html/config.php"
exit 0
