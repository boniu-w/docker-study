# 1. 命令



| command                                       | description                                | example                                                      |
| --------------------------------------------- | ------------------------------------------ | ------------------------------------------------------------ |
| docker run [参数] images                      |                                            |                                                              |
| docker run -it centos /bin/bash               | 启动容器并进入容器                         |                                                              |
| docker ps                                     | 当前正在运行的容器                         |                                                              |
| docker ps -a                                  | 所有运行                                   |                                                              |
| exit                                          | 退出容器, 容器停止                         |                                                              |
| ctrl + P + q                                  | 退出容器,但容器不停止                      | 不管用                                                       |
| docker start 容器id                           |                                            |                                                              |
| docker stop 容器id                            |                                            |                                                              |
| docker restart 容器id                         |                                            |                                                              |
| docker kill 容器id                            | 强制停止容器                               |                                                              |
| docker run -d 容器 /bin/bash                  | 后台启动                                   | 没有任务时, 会自动结束<br />docker run -d centos /bin/bash -c 'while true; do echo 999 ; sleep 2; done; ' |
| docker inspect --help                         | 容器详情                                   |                                                              |
| docker exec -it 容器id /bin/bash              | 容器后台运行后, 进入容器, 开启一个新的终端 |                                                              |
| docker logs -tf --tail 10 容器id              | 查看容器日志                               |                                                              |
| docker attach 容器id                          | 进入容器后, 不会启动新的进程               |                                                              |
| docker cp 容器id:文件绝对路径  本地文件夹路径 | 拷贝容器里的文件到本地                     | docker cp 722c5e605ecd:/home/test.java /home                 |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |
|                                               |                                            |                                                              |



# 2. 原理图



 ![](H:\docker-study\img\v2-820aee2a33654099d87cdd2b7a1ce741_r.jpg)