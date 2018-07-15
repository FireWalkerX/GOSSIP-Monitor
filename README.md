# GOSSIP Masternode Monitor

An application to monitor your masternode(s).

# Requirements

- Have a GOSSIP node running
- Install dependencies (as root):
<pre>
apt-get install apache2 libapache2-mod-php php php-curl unzip
service apache2 restart
</pre>
- Open your firewall http port
<pre>
ufw allow http
</pre>

# Install

wget https://github.com/GOSSIP-DEV/GOSSIP-Monitor/raw/master/install.sh && bash install.sh

- Unzip files in <b>/var/www/html/</b> (default apache2 path) :
<pre>
cd /var/www/html/ # Default apache2 server path
wget https://github.com/GOSSIP-DEV/GOSSIP-Monitor/archive/1.0.zip
unzip master.zip
rm master.zip
</pre>
- Edit configuration (<b>rpc_user</b> and <b>rpc_password</b>)
<pre>
- Delete index.html
rm index.html

- Customize config file
nano /var/www/hmtl/config.php

</pre>

# Features
- Masterode status
- Last Paid
- Balance
- Auto-refresh
- Check <b>Status</b> and <b>Last Paid</b> of several Nodes
- Explorer links

# Important
- Edit config.php (rpc_user & rpc_password)

# Example
- You can see it running: http://80.211.230.185/
