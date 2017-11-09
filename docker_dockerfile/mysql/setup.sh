#!/bin/sh
chown -R mysql:mysql /var/lib/mysql

#mysql_install_db --user=mysql --datadir=/var/lib/mysql > /dev/null
mysqld --initialize-insecure --user=mysql > /dev/null

mysqld --user=mysql &

sleep 5

mysql < /root/business.sql

sleep 5

ps -wef | grep mysql | grep -v grep | awk '{print $2}' | xargs kill -9

mysqld --user=mysql
