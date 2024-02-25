
docker network create redis-app
docker pull redis
docker run --name redis-node --network redis-app -d redis
#git clone https://github.com/arthurescriou/redis-node.git
docker build -t redis-node .

docker run -dp 127.0.0.1:3000:3000 redis-node
docker ps
docker build -t redis-node .
docker run -dp 127.0.0.1:3000:3000 redis-node 

docker ps
docker stop <the-container-id>
docker rm <the-container-id>
docker run -dp 127.0.0.1:3000:3000 redis-node 
