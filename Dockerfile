#Version: 0.0.1
FROM centos:latest
MAINTAINER Wri gl "wgl@163.com"
RUN yum install -y wget
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum makecache
RUN yum install -y pcp-pmda-nginx
EXPOSE 80
