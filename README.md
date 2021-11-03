# Light Node

The lightest lightning node.

docker build -t light-node-image . &&
docker rm light-node &&
docker run -p 8080:8080/tcp -d --name light-node light-node-image
