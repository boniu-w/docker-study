# 1. 命令

```shell
-d 后台运行
-p 端口映射
-v 数据卷挂载
-e 环境配置
--name 别名
--allocate 分配
--interactive 互动的
```



- **-a stdin:** 指定标准输入输出内容类型，可选 STDIN/STDOUT/STDERR 三项；
- **-d:** 后台运行容器，并返回容器ID；
- **-i:** 以交互模式运行容器，通常与 -t 同时使用；
- **-P:** (大写的P)随机端口映射，容器内部端口**随机**映射到主机的端口
- **-p:** 指定端口映射，格式为：**主机(宿主)端口:容器端口**
- **-t:** 为容器重新分配一个伪输入终端，通常与 -i 同时使用；
- **--name="nginx-lb":** 为容器指定一个名称；
- **--dns 8.8.8.8:** 指定容器使用的DNS服务器，默认和宿主一致；
- **--dns-search example.com:** 指定容器DNS搜索域名，默认和宿主一致；
- **-h "mars":** 指定容器的hostname；
- **-e username="ritchie":** 设置环境变量；
- **--env-file=[]:** 从指定文件读入环境变量；
- **--cpuset="0-2" or --cpuset="0,1,2":** 绑定容器到指定CPU运行；
- **-m :**设置容器使用内存最大值；
- **--net="bridge":** 指定容器的网络连接类型，支持 bridge/host/none/container: 四种类型；
- **--link=[]:** 添加链接到另一个容器；
- **--expose=[]:** 开放一个端口或一组端口；
- **--volume , -v:** 绑定一个卷



| command                                              | description                                            | example                                                      |
| ---------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------------------------ |
| docker run [参数] images                             | 启动镜像, 新建容器                                     |                                                              |
| docker run -it centos /bin/bash                      | 新建容器并进入容器                                     |                                                              |
| docker ps                                            | 查询当前正在运行的容器                                 |                                                              |
| docker ps -a                                         | 查询所有容器                                           |                                                              |
| exit                                                 | 退出容器, 容器停止                                     |                                                              |
| ctrl + P + q                                         | 退出容器,但容器不停止                                  |                                                              |
| docker start 容器id<br />docker container start 容器 |                                                        |                                                              |
| docker stop 容器id                                   |                                                        |                                                              |
| docker restart 容器id                                |                                                        |                                                              |
| docker kill 容器id                                   | 强制停止容器                                           |                                                              |
| docker run -d --name 容器 /bin/bash                  | 后台启动                                               | 没有任务时, 会自动结束<br />docker run -d centos /bin/bash -c 'while true; do echo 999 ; sleep 2; done; ' |
| docker run -d --name 别名                            | 启动容器                                               | docker run -d --name nginx01 -p 3344:80 nginx:1.21.4         |
| docker inspect --help                                | 容器详情                                               |                                                              |
| docker exec -it 容器id /bin/bash                     | 容器启动后, 容器后台运行后, 进入容器, 开启一个新的终端 |                                                              |
| docker logs -tf --tail 10 容器id                     | 查看容器日志                                           |                                                              |
| docker attach 容器id                                 | 进入容器后, 不会启动新的进程                           |                                                              |
| docker cp 容器id:文件绝对路径  本地文件夹路径        | 拷贝容器里的文件到本地                                 | docker cp 722c5e605ecd:/home/test.java /home                 |
| docker pull 容器:版本号                              | 从dockerhub 上拉取                                     | docker pull nginx:1.21.4                                     |
| docker search hello-world                            | 在 docker hub 上 搜索 hello-world 镜像                 |                                                              |
| docker images                                        | 查看本机的 所有 镜像                                   |                                                              |
| docker rm 容器id[或者 names]                         | 删除容器                                               |                                                              |
| docker rmi 镜像名(或者id)                            | 删除镜像                                               |                                                              |
| docker inspect --format '{{.LogPath}}' 容器id        | 查询 容器的日志                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |
|                                                      |                                                        |                                                              |





整理后的: 

| command                                      | description                                            | example                                              |
| -------------------------------------------- | ------------------------------------------------------ | ---------------------------------------------------- |
| docker pull 容器:版本号                      | 从dockerhub 上拉取                                     | docker pull nginx:1.21.4                             |
| docker run -d --name 别名                    | 启动容器                                               | docker run -d --name nginx01 -p 3344:80 nginx:1.21.4 |
| docker exec -it 容器id或者容器别名 /bin/bash | 容器启动后, 容器后台运行后, 进入容器, 开启一个新的终端 | docker exec -it nginx01 /bin/bash                    |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |
|                                              |                                                        |                                                      |



# 2. 原理图



 ![](H:\docker-study\img\v2-820aee2a33654099d87cdd2b7a1ce741_r.jpg)



# 3. dockerfile

```shell
FROM centos:8
# 设置工作目录
WORKDIR /opt
# 把当前文件夹的内容copy到镜像中的pwd下
COPY . .
# 替换yum源
RUN rm -f /etc/yum.repos.d/*
RUN cp ./Centos-8.repo /etc/yum.repos.d/Centos-ali.repo
# RUN curl -o /etc/yum.repos.d/Centos-ali.repo https://mirrors.aliyun.com/repo/Centos-8.repo
RUN yum clean all
RUN yum makecache
# 安装JDK11并配置JAVA_HOME
RUN tar -zxf openjdk-11.0.1_linux-x64_bin.tar.gz
RUN rm -f openjdk-11.0.1_linux-x64_bin.tar.gz
ENV JAVA_HOME=/opt/jdk-11.0.1
ENV PATH $JAVA_HOME/bin:$PATH
# 安装Python
RUN yum install gcc gcc-c++ python38 python3-devel -y

# 安装python依赖及编译环境
RUN python3 -m pip install --no-cache-dir -i https://pypi.douban.com/simple/ --upgrade pip
RUN pip install --no-cache-dir -i https://pypi.douban.com/simple/ -r requirements.txt
RUN python3 setup.py install
ENV LD_LIBRARY_PATH=/usr/local/lib64/python3.6/site-packages/jep

CMD java -jar pipeline-integrity-assessment-system-1.0-SNAPSHOT.jar --spring.profiles.active=dev
```



dockerfile 常用命令

| 命令       | 描述                                                         |
| ---------- | ------------------------------------------------------------ |
| FROM       | 基础镜像                                                     |
| MAINTAINER | 维护者信息                                                   |
| ADD        | 添加文件到镜像（自动解压), 将主机构建环境（上下文）目录中的文件和目录、以及一个URL标记的文件 拷贝到镜像中 |
| COPY       | 添加文件到镜像（不解压）                                     |
| USER       | 设置运行RUN指令的用户                                        |
| ENV        | 设置环境变量                                                 |
| RUN        | 镜像制作时执行的命令                                         |
| ENTRYPOINT | 容器启动时执行的命令（无法被覆盖）                           |
| CMD        | 容器启动时执行的命令（多条CMD只执行最后一条）                |
| EXPOSE     | 声明要打开的端口(实际还是要docker run -p port1:port2 才行) ,EXPOSE命令只是声明了容器应该打开的端口并没有实际上将它打开! |
| VOLUME     | 目录映射,通常翻译为**数据卷**，用于保存持久化数据。          |
| ONBUILD    | 构建时自动执行的命令                                         |

 



|                                 |      |      |
| ------------------------------- | ---- | ---- |
| # 时间<br/>ENV TZ=Asia/Shanghai |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |
|                                 |      |      |



## 1. volume 意义是什么

通常翻译为**数据卷**，用于保存持久化数据。当我们将数据库例如MySQL运行在Docker容器中时，一般将数据通过**Docker Volume**保存在主机上，这样即使删除MySQL容器，数据依然保存在主机上，有效保证了数据的安全性。

```shell
# 挂载主机的数据到 容器的目录下
--volume /usr/local:/tmp/usrlocaltemp 
--volume /usr/java-project/test/log:/tmp/java-project/test/log
```







# 4. docker 部署 项目

1. 在 jar 包所在目录下 创建 Dockerfile 文件

2. 创建镜像

   > docker build -f Dockerfile -t 自定义一个镜像名 .
   >
   > // 注意 最后有个 点

3. 启动镜像

   > docker run --name 镜像名(repository) -p 本机端口号:容器端口号 -d  镜像id



# 5. dockerfile-compose