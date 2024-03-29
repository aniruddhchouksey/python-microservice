#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag prediction:latest $(pwd)
# Step 2:
# List docker images
docker images | grep prediction
# Step 3:
# Run flask app
docker run -p 8080:80 prediction