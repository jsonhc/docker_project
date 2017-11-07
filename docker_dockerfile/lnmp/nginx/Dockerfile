FROM centos_init:v2

MAINTAINER json_hc@163.com

RUN useradd -M -s /sbin/nologin www
ADD nginx-1.8.1.tar.gz /usr/local/src

RUN yum install libxslt-devel -y gd gd-devel GeoIP GeoIP-devel pcre pcre-devel

WORKDIR /usr/local/src/nginx-1.8.1
RUN ./configure --user=www --group=www --prefix=/usr/local/nginx --with-file-aio --with-ipv6 --with-http_ssl_module  --with-http_spdy_module --with-http_realip_module    --with-http_addition_module    --with-http_xslt_module   --with-http_image_filter_module    --with-http_geoip_module  --with-http_sub_module  --with-http_dav_module --with-http_flv_module    --with-http_mp4_module --with-http_gunzip_module  --with-http_gzip_static_module  --with-http_auth_request_module  --with-http_random_index_module   --with-http_secure_link_module   --with-http_degradation_module   --with-http_stub_status_module && make && make install

COPY nginx.conf /usr/local/nginx/conf/nginx.conf
COPY fastcgi_params /usr/local/nginx/conf/fastcgi_params
RUN mkdir /usr/local/nginx/conf/vhost
COPY www.conf /usr/local/nginx/conf/vhost/www.conf

EXPOSE 80

CMD ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]
