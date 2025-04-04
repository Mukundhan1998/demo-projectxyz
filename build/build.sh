#!/bin/bash

# Exit script on any error
set -e  

# Replace these with your actual Docker Hub credentials
DOCKER_USERNAME="mukundhan20"
DOCKER_PASSWORD="Mukundhan*+12"
IMAGE_NAME="react-app"
TAG="latest"

echo "🔨 Building Docker Image..."
docker build -t $IMAGE_NAME:$TAG .

echo "🔑 Logging into Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "📤 Pushing Docker Image to Docker Hub..."
docker push $IMAGE_NAME:$TAG

echo "✅ Docker Image pushed successfully!"
