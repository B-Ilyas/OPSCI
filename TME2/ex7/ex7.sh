export image_name='ssh_container:latest'
export container1_name='c1'
export container2_name='c2'
export network_name='reseau'

#Construire les 2 conteneurs avec un des deux ayant son port ssh ouvert
docker build . -t ${image_name}
docker run -itd -p 22:22 --name ${container1_name} ${image_name}

docker build . -t ${image_name}
docker run -itd --name ${container2_name} ${image_name}
#Ajouter les conteneur dans un réseau
docker network create --driver bridge ${network_name}
docker network connect ${network_name} ${container1_name}
docker network connect ${network_name} ${container2_name}

#Executer l'un de 2 conteneur puis utiliser ssh sur l'autre
docker exec -it c1 bash
#docker exec -it c2 bash



#docker stop ${container1_name}
#docker stop ${container2_name}

#docker rm ${container1_name}
#docker rm ${container2_name}

#docker network rm ${network_name}
