FROM ubuntu:20.04

RUN apt-get update
RUN apt-get -y install sudo
RUN apt-get -y install git

RUN git clone https://github.com/felixbouazza/computer_init.git

RUN useradd -m test && echo "test:test" | chpasswd && adduser test sudo

USER test