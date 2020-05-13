

function destory_docker_service()
{
	# 停止容器
	for i in [ `docker ps ` ]; do
		if [[ "$i" == "rtvsweb-publish" ]]; then
			echo "尝试停止$DOCKER_RTVSWEB_CONTAINER_NAME容器..."
		    docker stop $DOCKER_RTVSWEB_CONTAINER_NAME
		fi
	done
    # 删除容器
	for i in [ `docker ps -a` ]; do
		if [[ "$i" == "rtvsweb-publish" ]]; then
			echo "尝试删除$DOCKER_RTVSWEB_CONTAINER_NAME容器..."
		docker rm $DOCKER_RTVSWEB_CONTAINER_NAME
		fi
	done
}


