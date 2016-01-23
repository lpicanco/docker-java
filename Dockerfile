FROM ubuntu:trusty
MAINTAINER Luiz Picanço "lpicanci@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y software-properties-common && \
  add-apt-repository ppa:webupd8team/java -y && \
  apt-get update && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
  apt-get install -y oracle-java8-installer && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
