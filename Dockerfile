# Docker image for springboot file run
# VERSION 0.0.1
# Author: jorian

# 基础镜像使用java
FROM java:8

# 作者
MAINTAINER jorianye@163.com

# VOLUME 指定了临时文件目录为/tmp。
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
#VOLUME /tmp 

# 将要部署的jar包添加到容器中并更名为app.jar
#hello-word-0.0.1.jar是Dockerfile所在的当前路径
#app.jar也是容器进入后的路径
ADD hello-word-0.0.1.jar app.jar 

# 运行jar包，就是定义jar运行命令，隔开
RUN bash -c 'touch /app.jar';

#容器启动后真正执行的体,焊死，启动时无法被其他命令覆盖
ENTRYPOINT ["java","-jar","/app.jar","> /log/app.log"]