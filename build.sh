#!/bin/bash
<<<<<<< HEAD
echo "Building Docker image..."
docker build -t devops-build:latest .
echo "Build complete!"
=======

docker build -t myapp .
docker tag myapp akashshining/myapp
docker push akashshining/myapp
>>>>>>> efa2199 (Add project files with gitignore & dockerignore)
