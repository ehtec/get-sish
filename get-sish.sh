#!/bin/bash

git clone https://github.com/antoniomika/sish
cd sish
echo "Trying to stop docker, no problem if it throws an error here"
sudo docker stop sish
sudo docker rm sish
echo "Building docker"
sudo docker build -t sish .
echo "Testing docker"
sudo docker run -it --rm sish -h
