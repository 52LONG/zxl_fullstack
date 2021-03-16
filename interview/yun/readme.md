# 当你再浏览器输入一个URL 后，看到页面前发生了什么？
# 当你有一台服务器后，可以干什么？
docker 一台物理主机 虚拟出来很多服务器
- IP 
    124.71.189.8 ？ 提供什么服务？可以看到网页呢？
    浏览器域名访问或IP访问 https  www.baidu.com -> ip
    centos 7.6 ? web 服务器， 
    Nginx 是一个高性能的HTTP 和反向代理的web服务器

- putty 远程 SSH 链接华为云的服务器
    root  password
- web服务 Nginx
    安装ngnix的依赖
     yum -y install gcc  gcc-c++ autoconf pcre-devel make automake
     yum -y install wget httpd-tools vim
     yum list
     yum list | grep nginx
     yum install nginx
     nginx -v
     nginx 启动服务器
     ps aux | grep nginx 
     nginx -s stop 停止服务器
     vi /etc/nginx/nginx.conf
     cd /usr/share/nginx/html
     ls
     vi index.html
     cd /
     ls 
     mkdir www
     ls
     cd www
     mkdir blog
     cd blog
     vi index.html
    vi /etc/nginx/nginx.conf





