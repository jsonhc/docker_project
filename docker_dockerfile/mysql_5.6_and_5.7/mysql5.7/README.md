# for mysql5.7
## docker pull mysql:5.7    这是拉取的官方镜像mysql5.7
## mkdir -p /data/mysql5.7
## docker build -t mysql:5.7-myself .
## docker run -d --name=mysql5.7 -p3307:3306 -v /data/mysql5.7:/var/lib/mysql mysql:5.7-myself
## 查看mysqld启动的日志
### docker exec -it containerid tail -f /var/log/mysql/error.log
