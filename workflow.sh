#!/usr/bin/env bash

blue(){ echo -e "\033[0;96m$@\033[0m";}

docker build -t rms1000watt/multi-gb-docker-image:latest .

for i in {1..10}; do 
  blue "Docker Image Save"
  docker save -o multi-gb-docker-image.tar rms1000watt/multi-gb-docker-image:latest
  blue "Docker Image Remove"
  docker image rm rms1000watt/multi-gb-docker-image:latest
  blue "Docker Image Load"
  docker load -i multi-gb-docker-image.tar
done