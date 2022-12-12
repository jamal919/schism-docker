#!/bin/bash

# docker login
docker login
docker run --privileged --rm docker/binfmt:a7996909642ee92942dcd6cff44b9b95f08dad64

# Latest 
ln -sf Dockerfile.latest Dockerfile
docker buildx build --platform linux/amd64,linux/arm64 --push -t jamal919/schism:latest .
docker buildx build --load -t jamal919/schism:latest .

# v5.10.0
ln -sf Dockerfile.v5.10.0 Dockerfile

# v5.9.0
# v5.8.0
# v5.7.0
# v5.6.1
# v5.3.1
