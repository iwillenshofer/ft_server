cd /root

#install wordpress
mkdir /var/www/html/wordpress
cd /var/www/html/
tar --strip-components=1 -xvf /root/wordpress.tar -C /var/www/html/wordpress/
rm -f /root/wordpress.tar
chown www-data:www-data  -R *
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;

#dependencies for mysql
mv /root/mysql_my.cnf /etc/mysql/my.cnf
chown -R mysql.mysql /var/lib/mysql
/etc/init.d/mysql start

#install phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
mkdir /var/www/html/phpmyadmin
tar --strip-components=1 -xvzf phpMyAdmin-4.9.0.1-all-languages.tar.gz -C /var/www/html/phpmyadmin
mv /root/phpmyadmin_config.inc.php /var/www/html/phpmyadmin

#config mysql
mysql -u root < /root/sql_config.sql
rm /root/sql_config.sql
/etc/init.d/mysql restart

#nginx & ssl
mv /root/nginx_localhost.conf /etc/nginx/sites-available/default
mkdir -p /usr/local/nginx/ssl/
openssl req -x509 -nodes -newkey rsa:2048 -keyout /usr/local/nginx/ssl/cert.key -out /usr/local/nginx/ssl/cert.crt -days 365 -subj '/CN=localhost'
rm -f /var/www/html/index.nginx-debian.html
rm -f /var/www/html/phpMyAdmin-4.9.0.1-all-languages.tar.gz

#nginx & php start
service php7.3-fpm start
service nginx start	

#nginx autoindex-switcher
chmod 755 /root/autoindex_switch.sh
tail -f /dev/null

#remove this file
rm -f install.sh

