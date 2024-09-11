#!/bin/bash 
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 vizaa/item-app:v1
echo $PASSWORD | docker login -u vizaa --password-stdin
docker push vizaa/item-app:v1