FROM debian:buster
MAINTAINER abarrier
#ARG
#ENV
LABEL maintainer="abarrier@student.42.fr"
LABEL version="1.0"
LABEL description="mariadb images for 42_inception"
#VOLUME /var/www
RUN	apt update -y && apt upgrade -y && apt install -y vim \
	mariadb-server \
	expect \
	&& rm -rf /var/lib/apt/lists/*
COPY ["./conf/config.sh", "./"]
#ADD
#WORKDIR
EXPOSE 3306
#STOPSIGNAL SIGQUIT
#USER
#ONBUILD
#CMD ["ping", "localhost"]
ENTRYPOINT ["./config.sh"]
