# docker-ubuntu
Docker化Ubuntu

## 镜像特点

- 2015/6/20 使用Ubuntu14.04作为基础镜像
- 2015/6/20 添加阿里云镜像源
- 2015/6/20 添加curl、supervisor等工具

## 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-ubuntu.git
        cd docker-ubuntu
        docker build -t docker-ubuntu .

- 运行容器

        docker run -it -d --name ubuntu1 docker-ubuntu

- 进入容器

        docker exec -it ubuntu1 /bin/bash

## 注意事项

- 当国内镜像挂掉，请使用\#号注释掉添加阿里云镜像源命令的所在行。

