#!/bin/bash

repo=mtinny/nginx-toolbox
tag=${tag:-v0.0.1}

image="${repo}:${tag}"
latest="${repo}:latest"
docker build -t ${image} .
docker push ${image}

docker tag ${image} ${latest}
docker push ${latest}
