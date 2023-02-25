#!/bin/bash
export OSMNS  # needs to be defined in calling shell

# service instance name
export SINAME="renes1"

# HOMETUNIP: the ip address for the home side of the tunnel
export HOMETUNIP="10.255.0.2"

# VNFTUNIP: the ip address for the vnf side of the tunnel
export VNFTUNIP="10.255.0.1"

# VCPEPUBIP: the public ip address for the vcpe
export VCPEPUBIP="10.100.1.1"

# VCPEGW: the default gateway for the vcpe
export VCPEGW="10.100.1.254"

# Exportamos las direcciones MAC
export MACHX1=02:fd:00:04:00:01
export MACHX2=02:fd:00:04:01:01

./osm_renes_start.sh
