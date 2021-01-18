#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=abhaycl/mlmapp:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlmapi20210117\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=mlmapi20210117

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlmapi20210117 8000:80

# Log container outputs
kubectl logs --follow mlmapi20210117