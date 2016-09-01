FROM ubuntu:xenial

RUN apt-get update \
 && apt-get install -y wget

RUN echo "deb    http://ag-projects.com/ubuntu xenial main " >> /etc/apt/sources.list \
 && echo "deb-src    http://ag-projects.com/ubuntu xenial main " >> /etc/apt/sources.list

RUN wget http://download.ag-projects.com/agp-debian-gpg.key \
  && apt-key add agp-debian-gpg.key \
  &&  apt-key add agp-debian-gpg.key

RUN apt-get update \
 && apt-get install -y sylkserver-webrtc-gateway \
 && apt-get autoclean \
 && apt-get autoremove \
 && rm -rf /var/lib/apt/lists/*

RUN sed -i s/RUN_SYLKSERVER\=no/RUN_SYLKSERVER\=yes/g /etc/default/sylkserver

CMD service sylkserver start \
&& sleep 1m \ 
&& tail -f /var/log/sylkserver/*
