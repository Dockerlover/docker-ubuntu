# docker-ubuntu
Docker化Ubuntu

## 镜像特点

- 2015/6/20 使用Ubuntu14.04作为基础镜像
- 2015/6/20 添加阿里云镜像源
- 2015/6/20 添加curl、supervisor等工具
- 2015/6/23 添加sshd工具暴露22端口实现SSH登录
- 2015/8/10 添加build-essential编译工具，依赖docker-ubuntu的镜像不用再安装

## 直接pull镜像

        docker pull liuhong1happy/docker-ubuntu

## 通过代码构建镜像

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-ubuntu.git
        cd docker-ubuntu
        docker build -t docker-ubuntu .

## 运行容器[run.sh]

        docker run -it -d --name ubuntu1 -p 10022:22 docker-ubuntu

## 进入容器

        docker exec -it ubuntu1 /bin/bash

## ssh登录容器
        
        ssh root@localhost -p 10022

    ssh登录密码`testpass`



