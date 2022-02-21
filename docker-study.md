# 1. 命令

docker --help : 

```shell
PS C:\Users\wg> docker --help

Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default
                           "C:\\Users\\wg\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level
                           ("debug"|"info"|"warn"|"error"|"fatal")
                           (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\wg\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\wg\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\wg\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.7.1)
  compose*    Docker Compose (Docker Inc., v2.2.1)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  scan*       Docker Scan (Docker Inc., v0.11.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.

```



docker build --help : 

```shell
PS C:\Users\wg> docker build --help

Usage:  docker build [OPTIONS] PATH | URL | -

Build an image from a Dockerfile

Options:
      --add-host list           Add a custom host-to-IP mapping (host:ip)
      --build-arg list          Set build-time variables
      --cache-from strings      Images to consider as cache sources
      --cgroup-parent string    Optional parent cgroup for the container
      --compress                Compress the build context using gzip
      --cpu-period int          Limit the CPU CFS (Completely Fair
                                Scheduler) period
      --cpu-quota int           Limit the CPU CFS (Completely Fair
                                Scheduler) quota
  -c, --cpu-shares int          CPU shares (relative weight)
      --cpuset-cpus string      CPUs in which to allow execution (0-3, 0,1)
      --cpuset-mems string      MEMs in which to allow execution (0-3, 0,1)
      --disable-content-trust   Skip image verification (default true)
  -f, --file string             Name of the Dockerfile (Default is
                                'PATH/Dockerfile')
      --force-rm                Always remove intermediate containers
      --iidfile string          Write the image ID to the file
      --isolation string        Container isolation technology
      --label list              Set metadata for an image
  -m, --memory bytes            Memory limit
      --memory-swap bytes       Swap limit equal to memory plus swap:
                                '-1' to enable unlimited swap
      --network string          Set the networking mode for the RUN
                                instructions during build (default "default")
      --no-cache                Do not use cache when building the image
      --pull                    Always attempt to pull a newer version of
                                the image
  -q, --quiet                   Suppress the build output and print image
                                ID on success
      --rm                      Remove intermediate containers after a
                                successful build (default true)
      --security-opt strings    Security options
      --shm-size bytes          Size of /dev/shm
      --squash                  Squash newly built layers into a single
                                new layer
  -t, --tag list                Name and optionally a tag in the
                                'name:tag' format
      --target string           Set the target build stage to build.
      --ulimit ulimit           Ulimit options (default [])
```



docker run --help : 

```shell
PS C:\Users\wg> docker run --help

Usage:  docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container

Options:
      --add-host list                  Add a custom host-to-IP mapping
                                       (host:ip)
  -a, --attach list                    Attach to STDIN, STDOUT or STDERR
      --blkio-weight uint16            Block IO (relative weight),
                                       between 10 and 1000, or 0 to
                                       disable (default 0)
      --blkio-weight-device list       Block IO weight (relative device
                                       weight) (default [])
      --cap-add list                   Add Linux capabilities
      --cap-drop list                  Drop Linux capabilities
      --cgroup-parent string           Optional parent cgroup for the
                                       container
      --cgroupns string                Cgroup namespace to use
                                       (host|private)
                                       'host':    Run the container in
                                       the Docker host's cgroup namespace
                                       'private': Run the container in
                                       its own private cgroup namespace
                                       '':        Use the cgroup
                                       namespace as configured by the
                                                  default-cgroupns-mode
                                       option on the daemon (default)
      --cidfile string                 Write the container ID to the file
      --cpu-period int                 Limit CPU CFS (Completely Fair
                                       Scheduler) period
      --cpu-quota int                  Limit CPU CFS (Completely Fair
                                       Scheduler) quota
      --cpu-rt-period int              Limit CPU real-time period in
                                       microseconds
      --cpu-rt-runtime int             Limit CPU real-time runtime in
                                       microseconds
  -c, --cpu-shares int                 CPU shares (relative weight)
      --cpus decimal                   Number of CPUs
      --cpuset-cpus string             CPUs in which to allow execution
                                       (0-3, 0,1)
      --cpuset-mems string             MEMs in which to allow execution
                                       (0-3, 0,1)
  -d, --detach                         Run container in background and
                                       print container ID
      --detach-keys string             Override the key sequence for
                                       detaching a container
      --device list                    Add a host device to the container
      --device-cgroup-rule list        Add a rule to the cgroup allowed
                                       devices list
      --device-read-bps list           Limit read rate (bytes per second)
                                       from a device (default [])
      --device-read-iops list          Limit read rate (IO per second)
                                       from a device (default [])
      --device-write-bps list          Limit write rate (bytes per
                                       second) to a device (default [])
      --device-write-iops list         Limit write rate (IO per second)
                                       to a device (default [])
      --disable-content-trust          Skip image verification (default true)
      --dns list                       Set custom DNS servers
      --dns-option list                Set DNS options
      --dns-search list                Set custom DNS search domains
      --domainname string              Container NIS domain name
      --entrypoint string              Overwrite the default ENTRYPOINT
                                       of the image
  -e, --env list                       Set environment variables
      --env-file list                  Read in a file of environment variables
      --expose list                    Expose a port or a range of ports
      --gpus gpu-request               GPU devices to add to the
                                       container ('all' to pass all GPUs)
      --group-add list                 Add additional groups to join
      --health-cmd string              Command to run to check health
      --health-interval duration       Time between running the check
                                       (ms|s|m|h) (default 0s)
      --health-retries int             Consecutive failures needed to
                                       report unhealthy
      --health-start-period duration   Start period for the container to
                                       initialize before starting
                                       health-retries countdown
                                       (ms|s|m|h) (default 0s)
      --health-timeout duration        Maximum time to allow one check to
                                       run (ms|s|m|h) (default 0s)
      --help                           Print usage
  -h, --hostname string                Container host name
      --init                           Run an init inside the container
                                       that forwards signals and reaps
                                       processes
  -i, --interactive                    Keep STDIN open even if not attached
      --ip string                      IPv4 address (e.g., 172.30.100.104)
      --ip6 string                     IPv6 address (e.g., 2001:db8::33)
      --ipc string                     IPC mode to use
      --isolation string               Container isolation technology
      --kernel-memory bytes            Kernel memory limit
  -l, --label list                     Set meta data on a container
      --label-file list                Read in a line delimited file of labels
      --link list                      Add link to another container
      --link-local-ip list             Container IPv4/IPv6 link-local
                                       addresses
      --log-driver string              Logging driver for the container
      --log-opt list                   Log driver options
      --mac-address string             Container MAC address (e.g.,
                                       92:d0:c6:0a:29:33)
  -m, --memory bytes                   Memory limit
      --memory-reservation bytes       Memory soft limit
      --memory-swap bytes              Swap limit equal to memory plus
                                       swap: '-1' to enable unlimited swap
      --memory-swappiness int          Tune container memory swappiness
                                       (0 to 100) (default -1)
      --mount mount                    Attach a filesystem mount to the
                                       container
      --name string                    Assign a name to the container
      --network network                Connect a container to a network
      --network-alias list             Add network-scoped alias for the
                                       container
      --no-healthcheck                 Disable any container-specified
                                       HEALTHCHECK
      --oom-kill-disable               Disable OOM Killer
      --oom-score-adj int              Tune host's OOM preferences (-1000
                                       to 1000)
      --pid string                     PID namespace to use
      --pids-limit int                 Tune container pids limit (set -1
                                       for unlimited)
      --platform string                Set platform if server is
                                       multi-platform capable
      --privileged                     Give extended privileges to this
                                       container
  -p, --publish list                   Publish a container's port(s) to
                                       the host
  -P, --publish-all                    Publish all exposed ports to
                                       random ports
      --pull string                    Pull image before running
                                       ("always"|"missing"|"never")
                                       (default "missing")
      --read-only                      Mount the container's root
                                       filesystem as read only
      --restart string                 Restart policy to apply when a
                                       container exits (default "no")
      --rm                             Automatically remove the container
                                       when it exits
      --runtime string                 Runtime to use for this container
      --security-opt list              Security Options
      --shm-size bytes                 Size of /dev/shm
      --sig-proxy                      Proxy received signals to the
                                       process (default true)
      --stop-signal string             Signal to stop a container
                                       (default "15")
      --stop-timeout int               Timeout (in seconds) to stop a
                                       container
      --storage-opt list               Storage driver options for the
                                       container
      --sysctl map                     Sysctl options (default map[])
      --tmpfs list                     Mount a tmpfs directory
  -t, --tty                            Allocate a pseudo-TTY
      --ulimit ulimit                  Ulimit options (default [])
  -u, --user string                    Username or UID (format:
                                       <name|uid>[:<group|gid>])
      --userns string                  User namespace to use
      --uts string                     UTS namespace to use
  -v, --volume list                    Bind mount a volume
      --volume-driver string           Optional volume driver for the
                                       container
      --volumes-from list              Mount volumes from the specified
                                       container(s)
  -w, --workdir string                 Working directory inside the container
```



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