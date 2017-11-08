FROM centos

MAINTAINER json_hc@163.com

COPY MariaDB-10.0.33-centos7-x86_64-client.rpm /root/MariaDB-10.0.33-centos7-x86_64-client.rpm
COPY MariaDB-10.0.33-centos7-x86_64-common.rpm /root/MariaDB-10.0.33-centos7-x86_64-common.rpm 
COPY MariaDB-10.0.33-centos7-x86_64-compat.rpm  /root/MariaDB-10.0.33-centos7-x86_64-compat.rpm
COPY MariaDB-10.0.33-centos7-x86_64-server.rpm  /root/MariaDB-10.0.33-centos7-x86_64-server.rpm
WORKDIR /root
RUN yum remove mysql-libs -y
RUN yum -y install *.rpm
ADD business.sql /root/business.sql
ADD server.cnf /etc/my.cnf.d/server.cnf
ADD setup.sh /root/setup.sh

RUN yum clean all
RUN chmod +x /root/setup.sh
EXPOSE 3306

CMD ["/root/setup.sh"]
