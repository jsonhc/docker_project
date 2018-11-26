# for mysql5.6
## docker pull mysql:5.6
## mkdir -p /data/mysql5.6
## docker build -t mysql:5.6-myself .
## docker run -d --name=mysql5.6 -p3306:3306 -v /data/mysql5.6:/var/lib/mysql mysql:5.6-myself
## 查看mysqld启动的日志
### docker exec -it containerid tail -f /var/log/mysql/error.log
