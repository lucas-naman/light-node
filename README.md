# Light Node

The lightest lightning node.

# Run locally

docker build -t light-node-image . &&
docker rm light-node &&
docker run -p 8080:8080/tcp -d --name light-node light-node-image

# Run on cloud run

docker build -t light-node-image . &&
docker tag <id-image> gcr.io/lightnode-331313/light-node &&
docker push gcr.io/lightnode-331313/light-node