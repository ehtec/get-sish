#!/bin/bash

sudo docker rm sish
sudo service apache2 stop
sudo docker run -itd --name sish \
        -v ~/sish/ssl:/ssl \
        -v ~/sish/keys:/keys \
        -v ~/sish/pubkeys:/pubkeys \
        --net=host sish \
        -sish.addr=:2222 \
        -sish.https=:443 \
        -sish.http=:80 \
        -sish.httpsenabled=false \
        -sish.httpspems=/ssl \
        -sish.keysdir=/pubkeys \
        -sish.pkloc=/keys/ssh_key \
        -sish.bindrandom=false
