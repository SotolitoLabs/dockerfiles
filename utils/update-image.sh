#!/bin/bash

#Updates the Fedora 22 image 

docker rm fedora-22-base-x86_64
docker run --name=fedora-22-server-x86_64 -a STDOUT -a STDERR imcsk8/fedora-22-server-x86_64:22 dnf update -y
docker commit -m 'Daily Update' fedora-22-server-x86_64 sotolitolabs/fedora-22-server-x86_64:22
#Nedd the credentials stored in .dockercfg
docker login -u imcsk8
docker push imcsk8/fedora-22-server-x86_64


