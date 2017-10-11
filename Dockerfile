FROM ubuntu:16.04

MAINTAINER rnold182

RUN apt-get -y update \
&& apt-get -y upgrade \
&& apt-get install -y firefox \
&& apt-get clean \

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/ffox && \
    echo "ffox:x:${uid}:${gid}:Ffox,,,:/home/ffox:/bin/bash" >> /etc/passwd && \
    echo "ffox:x:${uid}:" >> /etc/group && \
    echo "ffox ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ffox && \
    chmod 0440 /etc/sudoers.d/ffox && \
    chown ${uid}:${gid} -R /home/ffox

USER ffox

ENV HOME /home/ffox

CMD /usr/bin/firefox
