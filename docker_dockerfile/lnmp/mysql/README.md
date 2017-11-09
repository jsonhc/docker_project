自定义构建mysql（mariadb）
  1、基础镜像centos（官方镜像，latest）
  2、构建container时，请挂载配置文件和数据目录（如果配置文件有更改，请重新构建）
  3、business.sql是关于执行的sql（赋予root密码，创建数据库等等）
  4、setup.sh是执行了重新初始化mysql（mariadb），最后重启了服务（使用了--user=mysql，避免出现使用root用户启动mariadb）
  
setup.sh脚本原理：
  Dockerfile用来安装数据库服务，安装完成后，通过setup.sh脚本重新将mysql进行初始化
  初始化后，开启MySQL服务执行setup.sh中的sql
  关闭mysql数据库
  重新以前台的方式启动MySQL数据库服务
  


构建过程：
  # docker build -t mysql_auto .
  # docker run -d --name=mysql -v /root/mysql/server.cnf:/etc/my.cnf.d/server.cnf -v /data/mysql:/var/lib/mysql -p3306:3306 mysql_auto
  # docker exec -it mysql /bin/bash
  
  [root@docker mysql]# docker ps -a
  CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
  cd6aefca456c        mysql_auto          "/root/setup.sh"    About an hour ago   Up About an hour    0.0.0.0:3306->3306/tcp   mysql
