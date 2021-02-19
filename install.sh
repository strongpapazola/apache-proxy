#!/bin/bash
apt install libapache2-mod-proxy-*
a2enmod proxy proxy_ajp proxy_http rewrite deflate headers proxy_balancer proxy_connect proxy_html
echo 'Example'
echo "<VirtualHost *:*>"
echo "    ProxyPreserveHost On"
echo "    ServerName www.example.id"
echo "    ErrorLog ${APACHE_LOG_DIR}/error.log"
echo "    CustomLog ${APACHE_LOG_DIR}/access.log combined"
echo "    SSLEngine on"
echo "    SSLCertificateFile /etc/letsencrypt/live/www.example.id/cert.pem"
echo "    SSLCertificateKeyFile /etc/letsencrypt/live/www.example.id/privkey.pem"
echo "    SSLCertificateChainFile /etc/letsencrypt/live/www.example.id/chain.pem"
echo "    ProxyPass / http://103.41.206.251:30010/"
echo "    ProxyPassReverse / http://103.41.206.251:30010/"
echo "</VirtualHost>"

