#!/bin/bash
#
# TODO:
# OVPN_DATA="ovpn-data"
#
# docker volume create --name $OVPN_DATA
# docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://VPN.CHANGEME
# docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki
# 
# docker run -v $OVPN_DATA:/etc/openvpn -d -p 1194:1194/udp --name openvpn --restart always --cap-add=NET_ADMIN kylemanna/openvpn
#
# Create and envoke certificate file
# docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full CLIENTNAME nopass
# docker run -v $OVPN_DATA:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient CLIENTNAME > CLIENTNAME.ovpn

exit 0
