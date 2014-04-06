#!/bin/sh

apt-get -y install mysql-server

sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

/usr/bin/mysqld_safe & \
    sleep 10s && \
    mysql -e "GRANT ALL ON *.* to 'root'@'%'; FLUSH PRIVILEGES" 
