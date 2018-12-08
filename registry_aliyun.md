# registry
### 将本地镜像push到阿里云镜像registry
## 登录registry
### docker login --username=json_hc@163.com registry.cn-beijing.aliyuncs.com
### docker tag mysql:5.7v1 registry.cn-beijing.aliyuncs.com/jsonhc/jsonhc:mysql5.7v1
### docker push registry.cn-beijing.aliyuncs.com/jsonhc/jsonhc:mysql5.7v1

### 镜像地址查看
### https://cr.console.aliyun.com/repository/cn-beijing/jsonhc/jsonhc/images

### 本地pull阿里云镜像registry
### docker login --username=json_hc@163.com registry.cn-beijing.aliyuncs.com
### docker tag  registry.cn-beijing.aliyuncs.com/jsonhc/jsonhc:mysql5.7v1 mysql:5.7v1
### docker images
## docker run一个mysql5.7的容器:
### mkdir -p /data/mysql5.7
### docker run -d --name=mysql5.7 -p3306:3306 -v /data/mysql5.7:/var/lib/mysql mysql:5.7v1
### docker ps
