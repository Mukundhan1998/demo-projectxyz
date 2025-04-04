#!/bin/bash

# Exit script on any error
set -e  

# Docker Hub credentials should be stored securely in Jenkins
DOCKER_USERNAME="mukundhan20"
IMAGE_NAME="react-app"
TAG="latest"

echo "🔨 Building Docker Image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG -f build/dockerfile build/

echo "🔑 Logging into Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "📤 Pushing Docker Image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "✅ Docker Image pushed successfully!"
