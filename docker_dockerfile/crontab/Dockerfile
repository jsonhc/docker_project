# base image
FROM centos

# MAINTAINER
MAINTAINER json_hc@163.com

# install ntpdate
RUN yum -y install crontabs 

# change timzone to Asia/Shanghai
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# comment out PAM
RUN sed -i -e '/pam_loginuid.so/s/^/#/' /etc/pam.d/crond

# install crontab and launch crontab
RUN echo '*/1 * * * * /usr/sbin/ntpdate ntp1.aliyun.com > /dev/null' >> /etc/crontab

# running crontab
CMD crond && tail -f /dev/null 
