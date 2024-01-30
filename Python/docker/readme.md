# ![Generic badge](https://badgen.net/docker/stars/library/mongo?icon=docker&label=XiangYun)

### 跳到另一個主題  🐇
* [初步認識](#初步認識)  
* [小技巧](#技巧)
* [終端指令](#終端指令)

> 未來:[選擇 Podman 而不是 Docker](https://ithelp.ithome.com.tw/articles/10238749)  
> 參考:  
> [Docker 基本教學 - 從無到有 Docker-Beginners-Guide](https://github.com/twtrubiks/docker-tutorial?tab=readme-ov-file)  
> [Docker新手教学](https://github.com/komavideo/LearnDocker/tree/master)  
> [Docker 基本指令操作](https://ithelp.ithome.com.tw/articles/10186431)  
> [Docker入門-2](https://ithelp.ithome.com.tw/articles/10225104)
> 
----
### Docker 基本指令操作
* ![Generic badge](https://badgen.net/badge/_/_?style=flat&logo=#7A1FA2.svg) `基本指令操作`

```cmd
# 顯示 docker 的版本
$ docker version
# 取得一個指定版本的 image 
# 如果不指定 image 版本該版本則為 latest
$ docker pull [Image 名稱]:[Image 版本]
# ex: 
$ docker pull hello-world
$ docker pull ubuntu
$ docker pull ubuntu:14.04
```

* 查看正在執行:

```cmd
# 查看正在執行的 containers
$ docker ps

# 查看所有的 containers
$ docker ps -a

# 對正在執行的 container 下執指令

# [OPTIONS]:
# -i, --interactive (互動模式)
# -t, --tty         (配置一個終端機)

# docker exec [OPTIONS] [Container ID] [執行指令]

# ex:
# 產生一個 container 在背景執行
$ docker run -i -t -d ubuntu:14.04 bash

# 查詢正在執行的 container
$ docker ps
$ docker exec -i -t [Container ID] bash
$ exit
```

* 查看正在執行:
```cmd
# 啟動 docker container
$ docker start [Container ID]

# 停止 docker container
$ docker stop [Container ID]

# 重新啟動 docker container
$ docker restart [Container ID]

# ex:
# 產生一個 container 在背景執行
$ docker run -i -t -d ubuntu bash

$ docker ps
$ docker stop [Container ID]

$ docker ps
$ docker start [Container ID]

$ docker ps
$ docker restart [Container ID]

# 刪除 container
$ docker rm [Container ID]

# ex:
$ docker ps
$ docker stop [Container ID]

$ docker rm [Container ID]
$ docker ps -a

# 刪除 image
# 刪除 image 前必需將透過該 image 所產生的 container 移除
$ docker rmi [Image ID]

# ex:
# 移除 hello-world image 所產生的 container
$ docker ps -a
$ docker rm [Container ID]
$ docker ps -a

# 移除 hello-world image
$ docker images
$ docker rmi [Image ID]
$ docker images
```

* 列清單:
```cmd
# 透過 iamge 執行並產生一個新的 container
$ docker run [Image 名稱]:[Image 版本] [執行指令]

# ex:
$ docker run hello-world
$ docker run ubuntu /bin/echo "example 1 - ubuntu"
$ docker run ubuntu:14.04 /bin/echo "example 2 - ubuntu:14.04"

########### 我是分隔線 ########### 

# [OPTIONS]:
# -i, --interactive (互動模式)
# -t, --tty         (配置一個終端機)
# -d, --detach      (在背景執行)

$ docker run [OPTIONS] [Image 名稱]:[Image 版本] [執行指令]

# ex: 
$ docker run -i -t ubuntu:14.04 bash
$ exit 
```
### 技巧
```cmd
####################################
## 小技巧 ##########################
####################################

# 停止所有的 containers
$ docker stop $(docker ps -a -q) 

# 刪除所有的 containers
$ docker rm $(docker ps -a -q)

# 刪除所有的 images
$ docker rmi $(docker images -a -q)
```
### 終端指令

```
cd
dir
mirk
rename Dockerfile.dockerfile Dockerfile
```

