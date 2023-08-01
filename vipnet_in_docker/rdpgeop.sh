#!/bin/bash

set +x

if [ $(systemctl is-active vipnet.service | wc -c) -ne "7" ]; then
  systemctl start vipnet.service
  sleep 15
fi

ip route add <ip dest> via <ip via>
rdesktop -d GCLOUD-RTK -u <user> -p pass <ip dest>  -r disk:tmp=/home/user/Downloads -g 1920x1080
