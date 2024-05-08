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



## 2. docker run --help : 

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
-d 后台运行 detached mode : 分离模式
-p 端口映射 --publish
-v 数据卷挂载
-e 环境配置
--name 别名
--allocate 分配
--interactive 互动的
```



- **-a stdin:** 指定标准输入输出内容类型，可选 STDIN/STDOUT/STDERR 三项；
- **-d:** 后台运行容器，并返回容器ID；detached mode : 分离模式
- **-i:** 以交互模式运行容器，通常与 -t 同时使用；
- **-P:** (大写的P)随机端口映射，容器内部端口**随机**映射到主机的端口  
- **-p:** 指定端口映射，格式为：**主机(宿主)端口:容器端口**  --publish
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



## command

| command                                                      | description                                                  | example                                                      |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| docker run [参数] images                                     | 启动镜像, 新建容器                                           |                                                              |
| docker run -it centos /bin/bash                              | 新建容器并进入容器                                           |                                                              |
| docker ps                                                    | 查询当前正在运行的容器                                       |                                                              |
| docker ps -a                                                 | 查询所有容器                                                 |                                                              |
| exit                                                         | 退出容器, 容器停止                                           |                                                              |
| ctrl + P + q                                                 | 退出容器,但容器不停止                                        |                                                              |
| docker start 容器id<br />docker container start 容器         |                                                              |                                                              |
| docker stop 容器id                                           |                                                              |                                                              |
| docker restart 容器id                                        |                                                              |                                                              |
| docker kill 容器id                                           | 强制停止容器                                                 |                                                              |
| docker run -d --name 容器 /bin/bash                          | 后台启动                                                     | 没有任务时, 会自动结束<br />docker run -d centos /bin/bash -c 'while true; do echo 999 ; sleep 2; done; ' |
| docker run -d --name 别名                                    | 启动容器                                                     | docker run -d --name nginx01 -p 3344:80 nginx:1.21.4         |
| docker inspect --help                                        | 容器详情                                                     |                                                              |
| docker exec -it 容器id /bin/bash                             | 容器启动后, 容器后台运行后, 进入容器, 开启一个新的终端       |                                                              |
| docker logs -tf --tail 10 容器id                             | 查看容器日志                                                 |                                                              |
| docker attach 容器id                                         | 进入容器后, 不会启动新的进程                                 |                                                              |
| docker cp 容器id:文件绝对路径  本地文件夹路径                | 拷贝容器里的文件到本地                                       | docker cp 722c5e605ecd:/home/test.java /home                 |
| docker pull 容器:版本号                                      | 从dockerhub 上拉取                                           | docker pull nginx:1.21.4                                     |
| docker search hello-world                                    | 在 docker hub 上 搜索 hello-world 镜像                       |                                                              |
| docker images                                                | 查看本机的 所有 镜像                                         |                                                              |
| docker rm 容器id[或者 names]                                 | 删除容器                                                     |                                                              |
| docker rmi 镜像名(或者id)                                    | 删除镜像                                                     |                                                              |
| docker inspect --format '{{.LogPath}}' 容器id                | 获取指定容器的日志路径                                       |                                                              |
| docker logs --since 30m 容器名                               | 查看容器日志                                                 |                                                              |
| docker volume ls                                             | 查询 docker 卷                                               |                                                              |
| docker volume rm 卷                                          | 删除 docker 卷                                               |                                                              |
| docker container update --restart=always  容器名             | 更改容器启动选项                                             |                                                              |
| docker rmi -f $(docker images -a &#124; grep "<none>" &#124; awk '{print $3}') | 删除 Docker 中的虚悬镜像，也就是那些缺少标记和仓库名称的无用镜像。这些标记为 `<none>` 的镜像通常是由于构建过程中出现错误导致的未命名临时镜像 |                                                              |
| docker system prune -a                                       | 删除所有未使用的资源, 谨慎使用                               |                                                              |
| docker network create 网络名                                 | 创建网络                                                     |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |
|                                                              |                                                              |                                                              |



`docker inspect` 命令是用来显示 Docker 对象的详细信息，包括容器、网络、卷等对象。`--format` 参数用来指定输出格式。在这里，我们指定输出容器的日志路径。`{{.LogPath}}` 是模板变量，用来表示容器的日志路径。该命令会输出给定容器 ID 的日志路径。



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



## 3. docker build --help

```
Options:
      --add-host list           Add a custom host-to-IP mapping (host:ip)
      --build-arg list          Set build-time variables
      --cache-from strings      Images to consider as cache sources
      --cgroup-parent string    Optional parent cgroup for the container
      --compress                Compress the build context using gzip
      --cpu-period int          Limit the CPU CFS (Completely Fair Scheduler) period
      --cpu-quota int           Limit the CPU CFS (Completely Fair Scheduler) quota
  -c, --cpu-shares int          CPU shares (relative weight)
      --cpuset-cpus string      CPUs in which to allow execution (0-3, 0,1)
      --cpuset-mems string      MEMs in which to allow execution (0-3, 0,1)
      --disable-content-trust   Skip image verification (default true)
  -f, --file string             Name of the Dockerfile (Default is 'PATH/Dockerfile')
      --force-rm                Always remove intermediate containers
      --iidfile string          Write the image ID to the file
      --isolation string        Container isolation technology
      --label list              Set metadata for an image
  -m, --memory bytes            Memory limit
      --memory-swap bytes       Swap limit equal to memory plus swap: '-1' to enable unlimited swap
      --network string          Set the networking mode for the RUN instructions during build (default "default")
      --no-cache                Do not use cache when building the image
      --pull                    Always attempt to pull a newer version of the image
  -q, --quiet                   Suppress the build output and print image ID on success
      --rm                      Remove intermediate containers after a successful build (default true)
      --security-opt strings    Security options
      --shm-size bytes          Size of /dev/shm
      --squash                  Squash newly built layers into a single new layer
  -t, --tag list                Name and optionally a tag in the 'name:tag' format
      --target string           Set the target build stage to build.
      --ulimit ulimit           Ulimit options (default [])
```



# 2. 原理图



 ![](\docker-study\img\v2-820aee2a33654099d87cdd2b7a1ce741_r.jpg)



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

 ```
在Dockerfile中，常见的关键字包括：

FROM：指定基础镜像。

RUN：在容器内执行特定的命令行指令。

COPY / ADD：将文件从主机复制到容器内。

WORKDIR：容器启动后的工作目录。 如果在 Dockerfile 中使用了 WORKDIR /wg，表示容器启动后的工作目录就是 /wg，此时如果执行 pwd 命令，命令行工具会打印出 /wg

ENV：设置环境变量。

ARG：声明构建参数。

EXPOSE：声明容器监听的网络端口号。

CMD：容器启动时执行的命令。如果用户指定了其他命令，则会覆盖这个CMD。

ENTRYPOINT：容器启动时默认执行的命令。如果用户指定了其他命令，则会以ENTRYPOINT命令为前缀。

VOLUME：声明一个挂载点，用于持久化存储数据。

其中，FROM、RUN、COPY / ADD等是编写Dockerfile必备且最常使用的关键字，它们使得在Docker容器中部署应用程序变得简单、可重复和高效。同时，Dockerfile还可以通过ENV、ARG、EXPOSE等关键字定义各种配置参数，以适应不同的应用场景和开发需求。
 ```





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

## 2. ADD 和 COPY 区别

```
在 Dockerfile 中，ADD 和 COPY 命令都用于将文件或目录添加到 Docker 镜像中。但它们之间有几个主要区别：

ADD 命令允许在添加本地 tar 文件的同时进行自动解压缩。而 COPY 命令则不会解压。

ADD 命令还允许从远程 URL 下载资源并将其添加到镜像中，但这可能会导致安全风险。COPY 命令不支持从远程 URL 复制资源。

在构建过程中，如果您使用的是 COPY 命令复制的源文件或目录，则 Docker 构建缓存可以有效地利用这些文件的缓存。这意味着更改这些文件时，只有该指令及其后面的指令将重新构建。而对于 ADD 命令，即使源文件没有更改，也会禁用缓存，因为每次都需要检查源文件中是否存在新文件。这可能会导致构建速度变慢。

最后，ADD 命令还可以在添加文件或目录时自动处理 tar 文件 / URL 的 Content-Type，并在需要时执行相应的解压缩操作。但 COPY 指令不会执行此类操作并且比 ADD 更加直观和可控。

总的来说，如果您只是简单地复制本地文件，则最好使用 COPY 命令。但是，如果您需要将远程 URL 中的文件添加到镜像中或自动解压缩 tar 文件，则应考虑使用 ADD 命令。
```

## 3. CMD 

如果您有多条命令需要执行，可以考虑使用 shell 脚本或者 entrypoint 命令来实现。这里介绍两种方式：

```

使用 shell 脚本
在 Dockerfile 中，首先将需要执行的命令写入一个 shell 脚本中，例如 run.sh：

#!/bin/bash
echo "Hello"
echo "World"
exec "$@"
其中 echo "Hello" 和 echo "World" 是两条要执行的命令，exec "$@" 则是执行容器启动后的指令。然后，在 Dockerfile 最后指定 CMD 命令来运行这个脚本：

CMD ["./run.sh"]
在构建并运行镜像时，Docker 将会执行 run.sh 脚本，并依次执行 shell 脚本中的每一条命令。

使用 entrypoint 命令
如果您需要在运行容器时传递参数，可以使用 entrypoint 命令。Dockerfile 类似于上述方法，创建一个 bash 文件并添加权限:

#!/bin/bash
echo "Hello"
echo "World"
exec "$@"
设置 ENTRYPOINT 为该文件:

ENTRYPOINT ["/path/to/script.sh"]
在运行容器时，可以通过添加命令行参数来覆盖 ENTRYPOINT 的默认值：

docker run my-image -c whatev#er/command/you/prefer
使用 ENTRYPOINT 允许您更好地控制命令行参数，并以声明性的方式指定默认命令。
```



"CMD tail -f /dev/null"   含义:

```
CMD tail -f /dev/null
这个命令在 Dockerfile 中被称为“容器启动命令”。它告诉 Docker 在容器启动时要运行的命令，类似于在主机上开启一个终端窗口然后输入的命令。

在这个命令中，tail 是 Linux 系统中一种常用的文本查看工具， -f 参数表示在文件结尾处等待新数据，并将其输出到标准输出（即终端）。/dev/null 是一个特殊文件，可以视作无限长的黑洞，它会吞噬所有被送入的数据，并且不保存任何东西。因此，运行这个命令相当于让容器从 /dev/null 中读取数据并输出，但实际上并没有任何输出。

通过运行这个命令使得容器能够持续地运行，避免容器因为没有可执行命令而停止运行。
```



## 4. RUN

```
在 Dockerfile 中使用 RUN 指令执行 shell 命令时，每个命令都会在新的临时容器中执行，因此环境变量也只存在于该临时容器中。当后续指令开始在其基础上构建新镜像时，之前在 RUN 中定义的变量将不再存在。

RUN export FULL_APP_NAME="$APP_NAME-$APP_VERSION-pom.xml"
由于 export FULL_APP_NAME 语句是在一个新临时容器中执行的，其生命周期限定在运行期间，而在新的容器开始时，该环境变量就到达了生命末期，并未真正地保存在Docker中。这可能是为什么这段代码在您试图使用它并没有生效的原因。
```





# 4. docker 部署 项目

1. 在 jar 包所在目录下 创建 Dockerfile 文件

2. 创建镜像

   > docker build -f Dockerfile -t 自定义一个镜像名 .
   >
   > // 注意 最后有个 点

3. 启动镜像

   > docker run --name 镜像名(repository) -p 本机端口号:容器端口号 -d  镜像id



# 5. docker-compose

| 命令                                                         | 解释                                                | 例子                                                     |
| ------------------------------------------------------------ | --------------------------------------------------- | -------------------------------------------------------- |
| docker-compose  down                                         | 停止容器, 并 删除容器                               |                                                          |
| docker-compose up                                            | 根据 docker-compose.yml文件 启动                    |                                                          |
| docker-compose -p 指定stack名字 -f  指定的dockercompose文件  up --build -d | 指定docker-compose 文件 启动, 注意顺序, -f 在up之前 | docker-compose  -f ./docker-compose-it.yml up --build -d |

```shell
docker-compose --help

Options:
  -f, --file FILE             Specify an alternate compose file
                              (default: docker-compose.yml)
  -p, --project-name NAME     Specify an alternate project name
                              (default: directory name)
  --verbose                   Show more output
  --log-level LEVEL           Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --no-ansi                   Do not print ANSI control characters
  -v, --version               Print version and exit
  -H, --host HOST             Daemon socket to connect to

  --tls                       Use TLS; implied by --tlsverify
  --tlscacert CA_PATH         Trust certs signed only by this CA
  --tlscert CLIENT_CERT_PATH  Path to TLS certificate file
  --tlskey TLS_KEY_PATH       Path to TLS key file
  --tlsverify                 Use TLS and verify the remote
  --skip-hostname-check       Don't check the daemon's hostname against the
                              name specified in the client certificate
  --project-directory PATH    Specify an alternate working directory
                              (default: the path of the Compose file)
  --compatibility             If set, Compose will attempt to convert keys
                              in v3 files to their non-Swarm equivalent
  --env-file PATH             Specify an alternate environment file

Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information

```



## 1. 启动 docker-compose.yml 文件

```
docker-compose up -d
```

## 2. 假如 docker-compose.yml 文件中 有 build 参数, 

```shell
docker-compose up --build
```

执行 `docker-compose up --build` 命令时，Docker Compose 会检查当前所在的目录下是否已经存在构建镜像所依赖的全部镜像。当依赖的镜像不存在或者其版本与 `docker-compose.yml` 文件中所定义的不一致时，Compose 会重新构建所有服务的镜像（包括缓存、打标签等操作），并通过这些构建出来的镜像来启动服务。

如果已经存在符合要求的本地镜像，则不需要重新构建，Compose 也不会对现有镜像进行任何修改。

综上所述，只有在本地不存在满足要求的镜像时才会重新构建，否则将使用本地已有的镜像。

## 3. 命令分析

```
docker-compose --project-directory ./config --file ./config/docker-compose.yml --project-name oo-ci-kfsc-ciefim down

这是一个使用 Docker Compose 工具的命令，用于停止并删除指定项目目录下的 Docker 容器和服务。

--project-directory ./config：指定项目的根目录为 ./config
-f ./config/docker-compose.yml：指定使用 ./config/docker-compose.yml 文件定义 Docker Compose 服务。-f 表示后面接要使用的 YAML 文件路径。
-p oo-ci-kfsc-ciefim：自定义项目名称为 oo-ci-kfsc-ciefim，默认情况下会使用所在目录名作为项目名。-p 表示要创建的 project 名称，也可以理解为对多个服务的隔离分组。这个名称可以用来在之后的构建、启动等操作中引用此项目实例。
down：通过此命令停止并删除所有相关联的容器、网络以及为该项目创建的数据卷等资源。
综上所述，该命令的含义是停止并删除指定配置文件 ./config/docker-compose.yml 中定义的 Docker 容器和服务，并将它们资源释放。其中 -f 指定 YAML 配置文件的路径，-p 指定项目名称，并不是运行容器时需要暴露端口或挂载数据卷的参数。
```



## 4. docker-compose help

```shell
Options:
  -f, --file FILE             Specify an alternate compose file
                              (default: docker-compose.yml)
  -p, --project-name NAME     Specify an alternate project name
                              (default: directory name)
  --verbose                   Show more output
  --log-level LEVEL           Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --no-ansi                   Do not print ANSI control characters
  -v, --version               Print version and exit
  -H, --host HOST             Daemon socket to connect to

  --tls                       Use TLS; implied by --tlsverify
  --tlscacert CA_PATH         Trust certs signed only by this CA
  --tlscert CLIENT_CERT_PATH  Path to TLS certificate file
  --tlskey TLS_KEY_PATH       Path to TLS key file
  --tlsverify                 Use TLS and verify the remote
  --skip-hostname-check       Don't check the daemon's hostname against the
                              name specified in the client certificate
  --project-directory PATH    Specify an alternate working directory
                              (default: the path of the Compose file)
  --compatibility             If set, Compose will attempt to convert keys
                              in v3 files to their non-Swarm equivalent
  --env-file PATH             Specify an alternate environment file

Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information

```



## 5. docker-compose up --help

```shell
Options:
    -d, --detach               Detached mode: Run containers in the background,
                               print new container names. Incompatible with
                               --abort-on-container-exit.
    --no-color                 Produce monochrome output.
    --quiet-pull               Pull without printing progress information
    --no-deps                  Don't start linked services.
    --force-recreate           Recreate containers even if their configuration
                               and image haven't changed.
    --always-recreate-deps     Recreate dependent containers.
                               Incompatible with --no-recreate.
    --no-recreate              If containers already exist, don't recreate
                               them. Incompatible with --force-recreate and -V.
    --no-build                 Don't build an image, even if it's missing.
    --no-start                 Don't start the services after creating them.
    --build                    Build images before starting containers.
    --abort-on-container-exit  Stops all containers if any container was
                               stopped. Incompatible with -d.
    -t, --timeout TIMEOUT      Use this timeout in seconds for container
                               shutdown when attached or when containers are
                               already running. (default: 10)
    -V, --renew-anon-volumes   Recreate anonymous volumes instead of retrieving
                               data from the previous containers.
    --remove-orphans           Remove containers for services not defined
                               in the Compose file.
    --exit-code-from SERVICE   Return the exit code of the selected service
                               container. Implies --abort-on-container-exit.
    --scale SERVICE=NUM        Scale SERVICE to NUM instances. Overrides the
                               `scale` setting in the Compose file if present.

```



# 6. docker-mysql8

#安装MySQL8  

```
docker pull mysql:8.0.16
```



#创建数据存储目录

```
mkdir -p /home/mysql/mysql8/conf
mkdir -p /home/mysql/mysql8/data
mkdir -p /home/mysql/mysql8/mysql-files
```



#启动

```
docker run -p 3306:3306 --name=mysql8 \
-v /home/mysql/mysql8/conf:/etc/mysql/ \
-v /home/mysql/mysql8/data:/var/lib/mysql \
-v /home/mysql/mysql8/mysql-files:/var/lib/mysql-files \
-e MYSQL_ROOT_PASSWORD=root \
-d mysql:8.0.16 \
--privileged=true --restart=unless-stopped mysql:8.0.16 --lower-case-table-names=2
```



```
这段代码是基于 Docker 容器运行 MySQL 8.0.16 的命令行参数。

-p 3306:3306: 将主机端口 3306 映射到容器中的 3306 端口，使得通过主机和这个端口访问 MySQL 可以映射到容器内部的 MySQL 服务。

--name=mysql: 指定创建 Docker 容器的名称为 mysql。

-v /home/mysql/mysql8/conf:/etc/mysql/：将本机的 /home/mysql/mysql8/conf 目录挂载到容器中 /etc/mysql 目录下，这样可以在本机上对 MySQL 进行配置。

-v /home/mysql/mysql8/data:/var/lib/mysql: 将本机的 /home/mysql/mysql8/data 目录挂载到容器中 /var/lib/mysql 目录下，这样 MySQL 数据库文件可以在本地持久化保存，并且不会随着容器被删除而消失。

-v /home/mysql/mysql8/mysql-files:/var/lib/mysql-files: 将本机的 /home/mysql/mysql8/mysql-files 目录挂载到容器中 /var/lib/mysql-files 目录下，此目录是专门用于存放 MySQL 中的外部数据文件（例如 CSV 、JSON 文件）和其它导入和导出操作的文件。

-e MYSQL_ROOT_PASSWORD=root: 使用环境变量指定 MySQL 的 root 用户密码为 root，这也是使用该 MySQL 数据库时必须要记住的密码。

-d: 在后台以守护进程的方式运行 MySQL 容器。

--privileged=true：启用特权模式，让容器内部具有与主机操作系统相当的系统权限

--restart=unless-stopped：表示除非手动停止或删除容器，否则在 Docker 引擎被重启或宿主机操作系统重新启动后，Docker 会自动重启该容器

mysql:8.0.16: 指定在 Docker Hub 上下载并使用 MySQL 8.0.16 镜像来创建一个新的容器。

--lower-case-table-names=2：强制 MySQL 按照指定方式处理表名，这里设置为强制将所有表名转换为小写。
```





# 7. docker-redis:bullseye

```
docker pull redis:bullseye
```

```shell
mkdir -p /home/redis/redis-bullseye/conf
mkdir -p /home/redis/redis-bullseye/data

touch /home/redis/redis-bullseye/conf/redis.conf
```

```shell
docker run --restart=always \
--log-opt max-size=100m \
-p 6379:6379 \
--name redis-bullseye \
-v /home/redis/redis-bullseye/conf/redis.conf:/etc/redis/redis.conf \
-v /home/redis/redis-bullseye/data:/data \
-d redis:bullseye \
redis-server /etc/redis/redis.conf  \
--appendonly yes  \
--requirepass redisbullseye
```

命令解析: 

```
这是用 Docker 运行 Redis 服务的命令，下面对该命令进行详细解析：

docker run 是 Docker 命令之一，用于创建并启动一个新的容器。
--restart=always 意味着无论在任何情况下该容器都应该被重启。如果您希望避免这种行为，则可以将值设置为“never”，或者使用其他启动策略。
--log-opt max-size=100m 表示日志文件大小限制为 100MB。当超过此限制时，Docker 将自动滚动日志。
-p 6379:6379 将主机的端口 6379 映射到容器的端口 6379，以便外部应用程序可以访问 redis-bullseye 容器中运行的 Redis 服务。
--name redis-bullseye 为将要创建的容器指定一个名称为 redis-bullseye。
-v /home/redis/redis-bullseye/conf/redis.conf:/etc/redis/redis.conf 将本地主机上 /home/redis/redis-bullseye/conf/redis.conf 文件映射到容器内的 /etc/redis/redis.conf 文件。这样就可以覆盖默认的 Redis 配置文件，并保留 Redis 实例的持久化存储。
-v /home/redis/redis-bullseye/data:/data 将本地主机上 /home/redis/redis-bullseye/data 目录映射到容器内的 /data 目录。这将用于持久化存储 Redis 所有数据。
-d redis:bullseye 指定了要使用的 Docker 镜像名称及其标签，以启动 Docker 容器方式运行 Redis 服务。
redis-server /etc/redis/redis.conf --appendonly yes --requirepass redisbullseye 是要在容器中运行的命令，它将通过将修改后的 Redis 配置文件传递给 redis-server 来启动 Redis 服务。并设置开启AOF日志功能增加数据落地安全性，同时使用名为"redisbullseye"的口令进行身份验证。
因此，运行该命令将创建名为 redis-bullseye 的 Docker 容器，并用 Redis 镜像 redis:bullseye 运行 Redis 服务，将容器内部和主机 6379 端口绑定，同时指定了自定义配置文件和持久化目录，并打开 AOF 日志落地功能并且使用 "redisbullseye" 口令作为访问 Redis 的密码。
```





redis.conf 重要配置

```
protected-mode no : 关闭保护模式，在非本地环境下仍然允许连接 Redis 服务。
bind <ip_address>: 设置 Redis 监听的网络地址，默认值为 127.0.0.1；
port <port_number>：设置 Redis 监听的网络端口，默认值为 6379；
save <seconds> <changes>：设置 Redis 在多少秒后持久化当前数据集，以及当至少有多少个写操作时执行持久化操作；
appendonly yes：设置是否开启 Redis AOF 持久化，默认为关闭；
requirepass <password>：设置 Redis 访问密码，为空表示不需要密码保护；
maxmemory <bytes>：设置 Redis 数据库最大内存限制；
daemonize yes：将 Redis 以守护进程方式运行。
```





# 8. docker-test:0.0.1

1. Dockerfile

```dockerfile
FROM openjdk:11
LABEL maintainer=wg

WORKDIR /opt

COPY ./test-0.0.1-SNAPSHOT.jar /opt
# COPY /usr/local/keystore/https-wg.keystore /opt

ENTRYPOINT ["nohup", "java","-jar","./test-0.0.1-SNAPSHOT.jar", "> test-001.log","2>&1 &"]
```

2. 创建镜像

   ```shell
   docker build -t test:0.0.1 .
   ```

   

3. 启动容器

   ```shell
   docker run --name=test-001 \
   -p 33335:33335 \
   -d test:0.0.1
   ```

   

4. 删除容器

   ```shell
   docker rm 容器id
   ```

5. 删除镜像

   ```shell
   docker rmi 镜像id
   ```

   

6. 进入一个运行中的容器

   ```sh
   docker exec -it 030157fb3849 /bin/bash
   ```

7. 退出容器

   ```shell
   exit
   ```

   





# 9. 项目demo

1. oo-ci-kfsc-register

   ```
   docker build -t oo-ci-kfsc-register:4.6.0 .
   ```

   ```
   docker run --restart=always --name=register-4.6 -d -p 8848:8848 -p 9848:9848 -p 9849:9849  -v /etc/hosts:/etc/hosts 镜像名
   ```

2. oo-ci-kfsc-gateway

   ```
   docker build -t oo-ci-kfsc-gateway:4.6.0 .
   ```

   ```
   docker run -d -p 9999:9999 \
   -v /etc/hosts:/etc/hosts \
   --name gateway-4.6 \
   --restart=always \
   镜像名
   ```

3. oo-ci-kfsc-admin-biz

   ```
   docker build --no-cache -t oo-ci-kfsc-admin-biz:4.6 .
   ```

   ```
   docker run --name=admin-biz-4.6 -d -p 4000:4000 -v /etc/hosts:/etc/hosts 镜像名
   ```

4. oo-ci-kfsc-auth

   ```
   docker build --no-cache -t oo-ci-kfsc-auth:4.6 .
   ```

   ```
   docker run --name=auth-4.6 -d -p 3000:3000 -v /etc/hosts:/etc/hosts 镜像名
   ```

5. gitlab

   ```
    docker pull gitlab/gitlab-ee
   ```

   ```
   docker run --detach \
     --hostname gitlab.sevenme.com \
     --publish 443:443 --publish 80:80 --publish 23:22 \
     --name gitlab \
     --restart always \
     --volume $GITLAB_HOME/config:/etc/gitlab \
     --volume $GITLAB_HOME/logs:/var/log/gitlab \
     --volume $GITLAB_HOME/data:/var/opt/gitlab \
     --shm-size 256m \
     gitlab/gitlab-ee:latest
   ```

   默认 用户名 : root

   默认密码: 会在24小时后 自动删除, 尽快更改

   ```
   docker exec -it gitlab /bin/bash
   cat /etc/gitlab/initial_root_password
   ```

   

   问题:

   1. 无法解析` http://gitlab.sevenme.com` 的问题,

      ```
      --hostname gitlab.sevenme.com
      解决办法: 配置 hosts 文件
      ```

6. ciefim

   ```
   docker build --no-cache -t oo-ci-kfsc-ciefim:4.6.0
   ```

   ```
   docker run --name=ciefim-4.6 -d -p 9970:9970 -v /etc/hosts:/etc/hosts 镜像名
   ```

   

# 10. portainer



## 1. 版本对应

| Portainer Version         | Release Date       | Docker Version            | Kubernetes Version           | Architectures                                                |
| ------------------------- | ------------------ | ------------------------- | ---------------------------- | ------------------------------------------------------------ |
| Community 2.18.2 (latest) | May 1, 2023        | 20.10.9 20.10.13 20.10.17 | 1.22 1.23 1.24               | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.18.1          | April 18, 2023     | 20.10.9 20.10.13 20.10.17 | 1.22 1.23 1.24               | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.17.1          | February 22, 2023  | 20.10.9 20.10.13 20.10.17 | 1.22 1.23 1.24               | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.17.0          | February 7, 2023   | 20.10.9 20.10.13 20.10.17 | 1.22 1.23 1.24               | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.16.2          | November 21, 2022  | 20.10.9 20.10.13 20.10.17 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.16.1          | November 9, 2022   | 20.10.9 20.10.13 20.10.17 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.16.0          | October 31, 2022   | 20.10.9 20.10.13 20.10.17 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.15.1          | September 16, 2022 | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.15.0          | September 6, 2022  | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.14.2          | July 26, 2022      | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.14.1          | July 12, 2022      | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.14.0          | June 28, 2022      | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.13.1          | May 12, 2022       | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.13.0          | May 9, 2022        | 20.10.9 20.10.12 20.10.13 | 1.21.7 1.22 1.23             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.11.1          | February 8, 2022   | 20.10.8 20.10.11 20.10.12 | 1.20.13 1.21.7 1.22.4        | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.11.0          | December 9, 2021   | 20.10.6 20.10.8 20.10.11  | 1.19.11 1.20.7 1.21 1.22     | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.9.3           | November 22, 2021  | 20.10.5 20.10.6           | 1.19.11 1.20.7 1.21 1.22     | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.9.2           | October 26, 2021   | 20.10.5 20.10.6           | 1.19 1.20 1.21 1.22          | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.9.1           | October 11, 2021   | 20.10.5 20.10.6           | 1.19 1.20 1.21 1.22          | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.9.0           | September 23, 2021 | 20.10.5 20.10.6           | 1.19 1.20 1.21 1.22          | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.6.3           | August 27, 2021    | 20.10.5 20.10.6           | 1.19 1.20 1.21 1.22          | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.6.2           | August 2, 2021     | 20.10.5 20.10.6           | 1.19 1.20.2 1.21             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.6.1           | July 12, 2021      | 20.10.5 20.10.6           | 1.19 1.20.2 1.21             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.6.0           | June 25, 2021      | 20.10.5 20.10.6           | 1.19 1.20.2 1.21             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.5.1           | May 18, 2021       | 20.10.5 20.10.6           | 1.19 1.20.2 1.21             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.5.0           | May 18, 2021       | 20.10.5                   | 1.19 1.20.2 1.21             | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.1.x           | February 2, 2021   | 20.10.2                   | 1.20.0                       | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.0.1           | January 7, 2021    | 20.10.0                   | 1.17.13 1.18.9 1.19.3 1.20.0 | [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| Community 2.0             | August 31, 2020    | 19.03.12                  | 1.17.13 1.18.6 1.18.9 1.19.3 | [ARM32](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| 1.24.1                    | July 23, 2020      | 19.03.12                  | N/A                          | [ARM32](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| 1.24.0                    | June 2, 2020       | 19.03.10                  | N/A                          | [ARM32](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |
| 1.23.2                    | March 25, 2020     | 19.03.6                   | N/A                          | [ARM32](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), [ARM64](https://portal.portainer.io/knowledge/which-arm-architectures-does-portainer-support), x86_64 |



## 2. docker portainer

```
docker pull portainer/portainer-ce:2.9.3
```

```
docker volume create portainer_data
```

```
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data 镜像名
```



```
https://192.168.12.65:9443/#!/2/docker/dashboard
我的acer笔记本电脑 {userName: admin, password: offshore123}
```

