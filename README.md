# 42_inception

## Content
- [Historic :clock7:](#historic-clock7)

## Historic :clock7:
[Go to content](#content)

|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2022-12-15|Init|

## Main
[Go to content](#content)

## Docker
[Go To "Survivor Note - Docker"](https://github.com/BarrierAntho/Survivor_Note/tree/main/Docker)

## ToDo
[Go to content](#content)

- [x] Create Debian VM (graphical view)
- [x] Install package
	- [x] 'apt' and 'aptitude'
	- [x] sudo
	- [x] vim
	- [x] make
	- [ ] ssh
	- [x] docker
- [x] Add the VM user to sudo permission
- [x] Give VM user docker access
	- [x] Create new group 'docker'
	- [x] Add VM user to the newly created group
- [x] Install Docker
- [ ] Create and define Makefile with 'deocker-compose'
	- [ ] Rule all
	- [ ] Rule build
	- [ ] Rule run
	- [ ] Rule Stop

## Installation
[Go to content](#content)

### Docker
[Go To "Survivor Note - Docker"](https://github.com/BarrierAntho/Survivor_Note/tree/main/Docker)

### NGinx

#### Dockerfile
```
FROM debian:buster
MAINTAINER abarrier
#ARG
#ENV
LABEL maintainer="abarrier@student.42.fr"
#VOLUME /var/www
RUN apt update -y && apt upgrade -y && apt install -y vim \
	curl \
	wget \
	nginx \
	openssl \
	&& rm -rf /var/lib/apt/lists/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/inception_selfsigned.key -out /etc/ssl/certs/inception_selfsigned.crt -subj "/C=FR/ST=PARIS/L=PARIS/O=42.PARIS/OU=42.STUD/CN=42.PARIS/emailAddress=abarrier@student.42.fr"
RUN mkdir -p /data/ && mkdir -p /data/www /data/images
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
#WORKDIR
EXPOSE 443
STOPSIGNAL SIGQUIT
#USER
#ONBUILD
CMD ["nginx","-g","daemon off;"]
#ENTRYPOINT
```

#### nginx.conf
...
server {
	listen       443 ssl;
	server_name  localhost;

	####################
	# SSL Settings
	####################
	ssl_protocols TLSv1.2 TLSv1.3; # Dropping SSLv3, ref: POODLE
	ssl_certificate    /etc/ssl/certs/inception_selfsigned.crt;
	ssl_certificate_key /etc/ssl/certs/inception_selfsigned.key;
	ssl_prefer_server_ciphers on;

	access_log  /var/log/nginx/host.access.log;

	location / {
		root   /usr/share/nginx/html;
		index  index.html index.htm;
	}

	error_page  404              /404.html;

	# redirect server error pages to the static page /50x.html
	#
	error_page   500 502 503 504  /50x.html;
	location = /50x.html {
		root   /usr/share/nginx/html;
	}

	# proxy the PHP scripts to Apache listening on 127.0.0.1:80
	#
	#location ~ \.php$ {
	#    proxy_pass   http://127.0.0.1;
	#}

	# pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
	#
	#location ~ \.php$ {
	#    root           html;
	#    fastcgi_pass   127.0.0.1:9000;
	#    fastcgi_index  index.php;
	#    fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;
	#    include        fastcgi_params;
	#}

	# deny access to .htaccess files, if Apache's document root
	# concurs with nginx's one
	#
	#location ~ /\.ht {
	#    deny  all;
	#}
	}
```

## Souces :link:
[Go to content](#content)

### Docker
[Go To "Survivor Note - Docker"](https://github.com/BarrierAntho/Survivor_Note/tree/main/Docker)

### Nginx
- https://www.nginx.com/resources/wiki/start/
- https://www.nginx.com/resources/wiki/start/topics/tutorials/config_pitfalls/
- https://wiki.debian.org/Nginx/DirectoryStructure


### OpenSSL
- https://www.openssl.org/docs/man1.0.2/man1/openssl-req.html
- https://hub.docker.com/_/mariadb
- https://www.php.net/manual/fr/install.unix.nginx.php
- https://gist.github.com/Mins/4602864
- https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-debian-10

### Mariadb
- https://mariadb.com/kb/en/configuring-mariadb-for-remote-client-access/

### Wordpress
- https://raw.githubusercontent.com/WordPress/WordPress/master/wp-config-sample.php
- https://fr.wordpress.org/support/article/editing-wp-config-php/
- https://developer.wordpress.org/cli/commands/core/
- https://developer.wordpress.org/cli/commands/core/download/
- https://developer.wordpress.org/cli/commands/core/install/
- https://developer.wordpress.org/cli/commands/config/create/
- https://developer.wordpress.org/cli/commands/config/set/
- https://developer.wordpress.org/cli/commands/user/create/
- https://developer.wordpress.org/cli/commands/user/
