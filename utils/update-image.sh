#!/bin/bash

#Updates the Fedora 22 image 

USER="imcsk8"
CONTAINER="fedora-22-server-x86_64"
IMAGE="imcsk8/fedora-22-server-x86_64:22"

docker rm $CONTAINER
docker run --name=$CONTAINER -a STDOUT -a STDERR $IMAGE dnf update -y > /var/log/docker/$CONTAINER-update.log
docker commit -m 'Daily Update' $CONTAINER $IMAGE
#Nedd the credentials stored in .dockercfg
docker login -u $USER
docker push $IMAGE


