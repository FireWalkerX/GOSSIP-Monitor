#!/bin/bash

echo -e "Installation in progress. Wait a minute..."
apt-get update >/dev/null 2>&1
apt-get install -y apache2 libapache2-mod-php php php-curl unzip >/dev/null 2>&1
service apache2 restart >/dev/null 2>&1
ufw allow http >/dev/null 2>&1
cd /var/www/html/ >/dev/null 2>&1
git clone https://github.com/GOSSIP-DEV/GOSSIP-Monitor . >/dev/null 2>&1
rm index.html >/dev/null 2>&1
rm install.sh >/dev/null 2>&1
rm -r .git >/dev/null 2>&1
rm LICENSE >/dev/null 2>&1
rm README.md >/dev/null 2>&1
rm _config.yml >/dev/null 2>&1
rm /root/install.sh >/dev/null 2>&1
echo -e "Finished. Please edit the configuration file under /var/www/html/config.php"
exit 0
