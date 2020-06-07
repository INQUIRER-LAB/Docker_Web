#!/bin/sh
read -p "container_name:" container_name  
read -p "PORT1:" port
read -p "PORT2:" port2
docker container run -itd --tmpfs /tmp --tmpfs /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro --stop-signal SIGRTMIN+3  --name $container_name -h $container_name -p $port -p $port2 centos:centos7 /sbin/init
