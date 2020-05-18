#! /bin/bash


conid=$(docker ps -aqf 'name=container_name') #通过container_name获取容器id 需要换成具体的容器名
echo $conid
docker stop ${conid}
docker rm ${conid}
`cd /root/lihong/sqltest`  # 进入到docker-compose.yml所在的位置
docker-compose up -d --build
nginx -s reload

