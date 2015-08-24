FROM imhu/baseimage-cn-repo:latest

MAINTAINER imhu <huwei13045@gmail.com>

RUN apt-get update \
 && apt-get install -y mysql-server \
 && rm -rf /var/lib/mysql/mysql \
 && rm -rf /var/lib/apt/lists/*

VOLUME ["/var/lib/mysql"]

EXPOSE 3306
