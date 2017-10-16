# by: rnold182
#
# Firefox x-11 továbbítással 
#
#

FROM ubuntu:17.04

RUN   apt-get update && \ 
      apt-get install -y firefox && \ 
      apt-get clean

RUN useradd rnold -m -b /home -G sudo

USER rnold

ENV HOME /home/rnold

CMD /usr/bin/firefox
