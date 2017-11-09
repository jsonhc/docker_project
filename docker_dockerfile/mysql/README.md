该Dockerfile基于官方MySQL5.7版本的镜像
  在此基础上自定义构建执行sql和配置MySQL配置文件
  在setup.sh这个shell脚本中MySQL5.7的初始化与MySQL5.6的初始化不一样
  
  
[root@docker mysql]# docker build -t mysql:v1 

[root@docker mysql]# docker run -d --name=mysql -p3306:3306 -v /data/mysql:/var/lib/mysql mysql:v1
9a7509d3f48eba1a67ec690db652c5b73cbcc88c96ff871701c0ef7becc3ecc4


[root@docker mysql]# docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
9a7509d3f48e        mysql:v1            "/root/setup.sh"    3 seconds ago       Up 2 seconds        0.0.0.0:3306->3306/tcp   mysql

[root@docker mysql]# docker exec -it mysql /bin/bash
root@9a7509d3f48e:/# mysql -uroot -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.20 MySQL Community Server (GPL)

Copyright (c) 2000, 2017, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| wordpress          |
+--------------------+
5 rows in set (0.00 sec)

mysql> exit
Bye
root@9a7509d3f48e:/# exit
