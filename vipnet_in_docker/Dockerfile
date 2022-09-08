FROM ubuntu:20.04
ARG INSTALL_DEB_PACKAGE

ENV INSTALL_DEB_PACKAGE=${INSTALL_DEB_PACKAGE}
ENV DNS_SERVER=${DNS_SERVER:-77.88.8.8}
ENV KEYFILE_PASS=${KEYFILE_PASS}

RUN apt-get update -y
RUN apt-get install apt-utils -y
RUN apt-get install curl dnsutils -y
RUN apt-get install vim -y
RUN apt-get install libcap2-bin -y
RUN apt-get install iproute2 -y
RUN apt-get install iptables -y
RUN apt-get install telnet -y
RUN apt-get install systemd -y
RUN apt-get install iputils-ping

WORKDIR /vipnet
COPY ./app/${INSTALL_DEB_PACKAGE} .
COPY ./entrypoint.sh .
COPY ./app/abn_00f3.dst .


RUN mkdir -p /vipnet && \
    dpkg -i ${INSTALL_DEB_PACKAGE} && \
    rm -f ${INSTALL_DEB_PACKAGE}

COPY entrypoint.sh /vipnet/

RUN chmod 0777 /vipnet/entrypoint.sh 
RUN setcap -r /usr/bin/vipnetclient

RUN sysctl -w net.ipv4.conf.eth0.rp_filter=0 
RUN sysctl -w net.ipv4.conf.default.rp_filter=0

CMD bash /vipnet/entrypoint.sh
