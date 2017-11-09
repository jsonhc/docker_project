# registry
将本地镜像push到阿里云镜像registry

[root@docker docker_project]# docker login --username=jsonhc registry.cn-hangzhou.aliyuncs.com
Password: 

    docker tag [ImageId] registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:[镜像版本号]  
       image_id或者image_name  
     [root@docker docker_project]# docker tag mysql:v1 registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:v1  

docker push registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:[镜像版本号]  
     [root@docker docker_project]# docker push registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:v1


上面push到aliyun镜像名称都是v1，使用下面可以增加image_name：
[root@docker docker_project]# docker tag mysql:v1 registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:mysql_auto
[root@docker docker_project]# docker push registry.cn-hangzhou.aliyuncs.com/wadeson/jsonhc:mysql_auto
