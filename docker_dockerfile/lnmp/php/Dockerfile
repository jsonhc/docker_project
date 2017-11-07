FROM centos_init:v2

MAINTAINER json_hc@163.com

ADD libmcrypt-2.5.7.tar.gz /usr/local/src

WORKDIR /usr/local/src/libmcrypt-2.5.7
RUN ./configure && make && make install

ADD php-5.6.30.tar.bz2 /usr/local/src

RUN yum -y install libxml2 libxml2-devel bzip2 bzip2-devel libjpeg-turbo libjpeg-turbo-devel libpng libpng-devel freetype freetype-devel zlib zlib-devel libcurl libcurl-devel

WORKDIR /usr/local/src/php-5.6.30
RUN ./configure --prefix=/usr/local/php --with-pdo-mysql=mysqlnd --with-mysqli=mysqlnd --with-mysql=mysqlnd --with-openssl --enable-mbstring --with-freetype-dir --with-jpeg-dir --with-png-dir --with-mcrypt --with-zlib --with-libxml-dir=/usr --enable-xml  --enable-sockets --enable-fpm --with-config-file-path=/usr/local/php/etc --with-bz2 --with-gd && make && make install


COPY php.ini-production /usr/local/php/etc/php.ini
COPY php-fpm.conf.default /usr/local/php/etc/php-fpm.conf

RUN useradd -M -s /sbin/nologin php
RUN sed -i -e 's@;pid = run/php-fpm.pid@pid = run/php-fpm.pid@g' -e 's@nobody@php@g' -e 's@listen = 127.0.0.1:9000@listen = 0.0.0.0:9000@g' /usr/local/php/etc/php-fpm.conf
RUN sed -i 's@;daemonize = yes@daemonize = no@g' /usr/local/php/etc/php-fpm.conf


EXPOSE 9000

CMD ["/usr/local/php/sbin/php-fpm"]
