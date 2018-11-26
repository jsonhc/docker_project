#!/bin/sh
chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user=mysql --datadir=/var/lib/mysql > /dev/null
mysqld --user=mysql &
sleep 5
mysql < /root/business.sql
sleep 5
killall mysqld
sleep 5
mysqld --user=mysql
