#!/bin/bash
set -e

echo "Logging in to ECR"
aws ecr get-login-password --region us-east-1 \
| docker login --username AWS --password-stdin 991940085316.dkr.ecr.us-east-1.amazonaws.com

echo "Stopping old container (if exists)"
docker stop frontend || true
docker rm frontend || true

echo "Pulling new image"
docker pull 991940085316.dkr.ecr.us-east-1.amazonaws.com/frontend:latest

echo "Starting container"
docker run -d -p 80:6000 --name frontend 991940085316.dkr.ecr.us-east-1.amazonaws.com/frontend:latest
