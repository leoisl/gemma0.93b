FROM ubuntu:trusty
MAINTAINER Daniel Wilson
RUN apt-get -yqq update
RUN apt-get -yqq install dialog apt-utils
RUN apt-get -yqq install libgsl0-dev libatlas-base-dev make g++
RUN mkdir /tmp/gemma
COPY . /tmp/gemma
RUN mkdir /tmp/gemma/bin
RUN cd /tmp/gemma && make
RUN mv /tmp/gemma/bin/gemma /usr/bin/
WORKDIR /home/ubuntu
ENTRYPOINT ["/usr/bin/gemma"]
