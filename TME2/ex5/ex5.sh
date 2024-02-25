export image_name='ssh_container:latest'
export container_name='debian'

docker build . -t ${image_name}
docker run -itd -p 22:22 --name ${container_name} ${image_name}

ssh root@localhost
#docker stop ${container_name}
#docker rm ${container_name}

