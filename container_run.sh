#!/bin/sh
read -p "container_name:" container_name  
read -p "PORT:" port
docker container run -itd --tmpfs /tmp --tmpfs /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro --stop-signal SIGRTMIN+3  --name $container_name -h $container_name -p $port
