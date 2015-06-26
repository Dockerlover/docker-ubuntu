# 基础镜像
FROM ubuntu:14.04
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID ubuntu
# 添加阿里云镜像源
RUN echo "deb http://mirrors.aliyun.com/ubuntu trusty main restricted" > /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted" >> /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted" >> /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ trusty universe" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty universe" >> /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted" >> /etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ trusty-security universe" >> /etc/apt/sources.list && echo "deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security universe" >> /etc/apt/sources.list
# 安装curl supervisor openssh-server
RUN apt-get update && apt-get install -y curl supervisor openssh-server
# 复制supervisord.conf到容器/etc/supervisor/conf.d目录下
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# 创建supervisor日志目录
RUN mkdir -p /var/log/supervisor
# 支持supervisor日志目录挂载
VOLUME ["/var/log/supervisor"]
# 配置sshd
RUN mkdir -p /var/run/sshd
RUN echo 'root:testpass' | chpasswd
# 暴露sshd端口
EXPOSE 22
# 运行supervisord
CMD ["/usr/bin/supervisord"]

