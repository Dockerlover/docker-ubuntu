# docker-ubuntu
Docker化Ubuntu

## 镜像特点

- 划分为生产部署镜像和开发环境镜像，tag分别为pro和dev，lastest则是最新pro镜像。
- 使用Ubuntu14.04作为基础镜像，pro镜像仅包含supervisor进程管理工具，dev镜像另包含curl、sshd、git-core、unzip等。


## 直接pull镜像

    docker pull liuhong1happy/docker-ubuntu
    docker tag liuhong1happy/docker-ubuntu docker-ubuntu

## 获取源代码并构建

    git clone https://github.com/Dockerlover/docker-ubuntu.git
    cd docker-ubuntu
    # sh build-pro.sh
    sh build-dev.sh

## 运行容器[dev/pro]

    # docker run -it -d --name ubuntu1  docker-ubuntu:pro
    docker run -it -d --name ubuntu1 -p 10022:22 docker-ubuntu:dev

## 进入容器[dev]

    docker exec -it ubuntu1 /bin/bash

## ssh登录容器[dev]
        
    ssh root@localhost -p 10022

ssh登录密码`testpass`



