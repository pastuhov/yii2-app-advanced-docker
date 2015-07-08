FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

ADD https://github.com/kreuzwerker/envplate/releases/download/v0.0.7/ep-linux /usr/local/bin/ep
RUN chmod +x /usr/local/bin/ep

COPY docker/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN cp /usr/share/zoneinfo/Asia/Yekaterinburg /etc/localtime

ADD docker/bashrc /root/.bashrc

CMD true
