FROM mysql:5.6

MAINTAINER json_hc@163.com

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
COPY business.sql /root/business.sql
COPY setup.sh /root/setup.sh

RUN chmod +x /root/setup.sh
EXPOSE 3306

ENTRYPOINT ["/root/setup.sh"]
