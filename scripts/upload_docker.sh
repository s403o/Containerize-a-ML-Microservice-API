#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=s403o/aws-proj4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username s403o
docker tag aws-proj4 s403o/aws-proj4:latest
# Step 3:
# Push image to a docker repository
docker push s403o/aws-proj4:latest