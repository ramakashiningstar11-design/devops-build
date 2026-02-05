#!/bin/bash

# Variables
IMAGE="akashshining/myapp"
CONTAINER_NAME="myapp_container"
HOST_PORT=9090
CONTAINER_PORT=80

# Pull the latest image
docker pull $IMAGE

# Stop and remove old container if exists
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

# Run new container (correct port syntax)
docker run -d --name $CONTAINER_NAME -p $HOST_PORT:$CONTAINER_PORT $IMAGE

echo "✅ Deployment complete! Visit http://localhost:$HOST_PORT"

