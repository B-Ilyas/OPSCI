export image_name='hello-world:latest'
export container1_name='hw1'
export container2_name='hw2'

docker run -itd -e COUCOU=COUCOU --name ${container1_name} ${image_name}

echo "COUCOU=COUCOU">env
docker run -itd --env-file ./env --name ${container2_name} ${image_name}
