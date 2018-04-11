FROM ubuntu:trusty
MAINTAINER Daniel Wilson
RUN apt-get update -yqq
RUN apt-get install -yqq libgsl0-dev libatlas-base-dev make g++
RUN mkdir /tmp/gemma
COPY . /tmp/gemma
RUN cd /tmp/gemma && make
RUN mv /tmp/gemma/bin/gemma /usr/bin/
WORKDIR /home/ubuntu
ENTRYPOINT ["/usr/bin/gemma"]

