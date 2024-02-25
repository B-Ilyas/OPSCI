export container_name='ubuntu'
docker run -itd --name ${container_name} ubuntu
docker exec -it ${container_name} bash
