FROM ubuntu:16.04

MAINTAINER rnold182

WORKDIR /root

RUN apt-get -y update \
&& apt-get -y upgrade \
&& apt-get install -y x11vnc xvfb firefox \
&& apt-get clean \
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd 0000 ~/.vnc/passwd

CMD /usr/bin/firefox
