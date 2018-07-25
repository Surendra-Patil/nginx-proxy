#!/bin/bash
y=$(eval docker inspect -f '{{.State.Running}}' nginx-proxy)
if [ "$y" = "false" ]; then
#    echo waiting for 30 seconds
    sleep 30
    z=$(eval docker inspect -f '{{.State.Running}}' nginx-proxy)
    if [ "$z" = "false" ]; then
#    echo starting Proxy
    docker start nginx-proxy
    fi
fi
