#!/bin/bash

git clone https://github.com/antoniomika/sish
cd sish
sudo docker rm sish
sudo docker build -t sish .
sudo docker run -it --rm sish -h
