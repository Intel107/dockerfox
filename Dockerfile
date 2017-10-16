FROM ubuntu:16.04

MAINTAINER rnold182

RUN apt-get -y update \
&& apt-get -y upgrade \
&& apt-get install -y firefox \
&& apt-get clean \

ENV HOME /home/ffox

CMD /usr/bin/firefox
