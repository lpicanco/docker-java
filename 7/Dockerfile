FROM ubuntu:trusty
MAINTAINER Luiz Picanço "lpicanco@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN add-apt-repository ppa:webupd8team/java -y && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
  apt-get install -y oracle-java7-installer && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/
