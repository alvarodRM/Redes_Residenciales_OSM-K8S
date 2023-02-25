FROM ubuntu:20.04
# variables to automatically install tzdata 
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Madrid
# install required packages
RUN apt-get clean
RUN apt-get update \
    && apt-get install -y \
    git \
    net-tools \
    traceroute \
    curl \
    iptables \
    inetutils-ping \
    nano \
    build-essential \
    bridge-utils \
    isc-dhcp-server \
    tcpdump \
    openvswitch-switch \
    openvswitch-common \
    iperf3 \
    iproute2 \
    vim \
    arpwatch \
    ryu-bin 

COPY vnx_config_nat /usr/bin/
COPY isc-dhcp-server /etc/default/isc-dhcp-server
COPY dhcpd.conf /etc/dhcp/dhcpd.conf 
COPY README.txt /home
COPY simple_switch_13.py /home

RUN sed '/OFPFlowMod(/,/)/s/)/, table_id=1)/' /home/simple_switch_13.py > /home/qos_simple_switch_13.py