#!/bin/bash

repo=mtinny/nginx-toolbox
tag=${tag:-v0.0.1}

image="${repo}:${tag}"
docker build -t ${image} .
docker push ${image}

