grant all privileges on *.* to 'root'@'localhost' identified by 'root';

create database wordpress DEFAULT CHARACTER SET utf8;

USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

UPDATE user SET password=PASSWORD("root") WHERE user='root';
FLUSH PRIVILEGES;



或者：
grant all privileges on *.* to 'root'@'localhost' identified by 'redhat';

USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' identified by 'redhat';
FLUSH PRIVILEGES;

UPDATE user SET password=PASSWORD("redhat") WHERE user='root';
FLUSH PRIVILEGES;
