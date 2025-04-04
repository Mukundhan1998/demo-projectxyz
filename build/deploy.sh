#!/bin/bash

# Variables
IMAGE_NAME="mukundhan20/react-app"
TAG="latest"
CONTAINER_NAME="react-app-container"

# Stop and remove the existing container (if running)
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

# Pull the latest image
docker pull $IMAGE_NAME:$TAG

# Run the container
docker run -d -p 3000:80 --name $CONTAINER_NAME $IMAGE_NAME:$TAG

echo "Deployment completed successfully!"
