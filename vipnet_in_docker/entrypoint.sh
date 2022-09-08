#!/bin/bash
set -x

KEYFILE_PASS="${KEYFILE_PASS}"
DNS_SERVER="${DNS_SERVER}"
sed -i "s/;config_dir=/config_dir=\/vipnet/" /etc/vipnet.conf
sed -i "s/trusted=.*/trusted=${DNS_SERVER}/" /etc/vipnet.conf
echo -e "delete key"
yes | vipnetclient deletekeys || \
echo -e "add file key" && \
vipnetclient installkeys /vipnet/abn_00f3.dst --psw ${KEYFILE_PASS}
vipnetclient info
echo -e "check connect"
sleep 5
sysctl -w net.ipv4.conf.tun0.rp_filter=0
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables-save
tail -f /dev/null
exec "$@"