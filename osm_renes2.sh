#!/bin/bash
export OSMNS  # needs to be defined in calling shell

# service instance name
export SINAME="renes2"

# HOMETUNIP: the ip address for the home side of the tunnel
export HOMETUNIP="10.255.0.4"

# VNFTUNIP: the ip address for the vnf side of the tunnel
export VNFTUNIP="10.255.0.3"

# VCPEPUBIP: the public ip address for the vcpe
export VCPEPUBIP="10.100.1.2"

# VCPEGW: the default gateway for the vcpe
export VCPEGW="10.100.1.254"

# Exportamos las direcciones MAC
export MACHX1=02:fd:00:04:03:01
export MACHX2=02:fd:00:04:04:01

./osm_renes_start.sh
