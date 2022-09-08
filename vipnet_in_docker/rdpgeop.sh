#!/bin/bash

set +x

if [ $(systemctl is-active vipnet.service | wc -c) -ne "7" ]; then
  systemctl start vipnet.service
  sleep 15
fi

ip route add 172.17.193.232 via 172.19.0.2
rdesktop -d GCLOUD-RTK -u k.v.zuykov -p pass 172.17.193.232  -r disk:tmp=/home/kzuykov/Downloads -g 1920x1080
