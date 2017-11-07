# base image
FROM centos

# MAINTAINER
MAINTAINER json_hc@163.com

# backup CentOS-Base.repo to CentOS-Base.repo.bak
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak

# add epel and aliyun repo to /etc/yum.repos.d
COPY CentOS7-Base-163.repo /etc/yum.repos.d/CentOS7-Base-163.repo
COPY epel-release-latest-7.noarch.rpm /etc/yum.repos.d/

# install epel.repo
WORKDIR /etc/yum.repos.d/
RUN yum install -y epel-release-latest-7.noarch.rpm 
RUN yum clean all
 
# running required command
RUN yum install -y gcc gcc-c++ glibc make autoconf openssl openssl-devel ntpdate crontabs

# change timzone to Asia/Shanghai
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
