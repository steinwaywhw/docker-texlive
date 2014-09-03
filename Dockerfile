FROM phusion/baseimage:latest
MAINTAINER Steinway Wu "http://steinwaywu.com/"

RUN apt-get update
RUN apt-get install -y build-essential wget

RUN mkdir /tmp/texlive 
WORKDIR /tmp/texlive
RUN wget https://github.com/scottkosty/install-tl-ubuntu/raw/master/install-tl-ubuntu
RUN chmod +x ./install-tl-ubuntu
RUN ./install-tl-ubuntu --more-tex

ENV PATH $PATH:/usr/local/texlive/2014/bin/i386-linux
ENV PATH $PATH:/usr/local/texlive/2014/bin/x86_64-linux
